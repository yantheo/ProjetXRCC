"use strict";
var __esDecorate = (this && this.__esDecorate) || function (ctor, descriptorIn, decorators, contextIn, initializers, extraInitializers) {
    function accept(f) { if (f !== void 0 && typeof f !== "function") throw new TypeError("Function expected"); return f; }
    var kind = contextIn.kind, key = kind === "getter" ? "get" : kind === "setter" ? "set" : "value";
    var target = !descriptorIn && ctor ? contextIn["static"] ? ctor : ctor.prototype : null;
    var descriptor = descriptorIn || (target ? Object.getOwnPropertyDescriptor(target, contextIn.name) : {});
    var _, done = false;
    for (var i = decorators.length - 1; i >= 0; i--) {
        var context = {};
        for (var p in contextIn) context[p] = p === "access" ? {} : contextIn[p];
        for (var p in contextIn.access) context.access[p] = contextIn.access[p];
        context.addInitializer = function (f) { if (done) throw new TypeError("Cannot add initializers after decoration has completed"); extraInitializers.push(accept(f || null)); };
        var result = (0, decorators[i])(kind === "accessor" ? { get: descriptor.get, set: descriptor.set } : descriptor[key], context);
        if (kind === "accessor") {
            if (result === void 0) continue;
            if (result === null || typeof result !== "object") throw new TypeError("Object expected");
            if (_ = accept(result.get)) descriptor.get = _;
            if (_ = accept(result.set)) descriptor.set = _;
            if (_ = accept(result.init)) initializers.unshift(_);
        }
        else if (_ = accept(result)) {
            if (kind === "field") initializers.unshift(_);
            else descriptor[key] = _;
        }
    }
    if (target) Object.defineProperty(target, contextIn.name, descriptor);
    done = true;
};
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ConfidenceScore = void 0;
var __selfType = requireType("./ConfidenceScore");
function component(target) {
    target.getTypeName = function () { return __selfType; };
    if (target.prototype.hasOwnProperty("getTypeName"))
        return;
    Object.defineProperty(target.prototype, "getTypeName", {
        value: function () { return __selfType; },
        configurable: true,
        writable: true
    });
}
/**
 * ConfidenceScore.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Calcule et affiche le score de confiance FitVerse.
 * Analyse le fit du vêtement et affiche le résultat en overlay AR.
 * Compatible Lens Studio 5.15 / Spectacles
 */
let ConfidenceScore = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var ConfidenceScore = _classThis = class extends _classSuper {
        constructor() {
            super();
            // ─── Références UI ───────────────────────────────────────
            // Objet Text pour afficher le score (ex: "92% Match")
            this.scoreText = this.scoreText;
            // Objet Text pour le label du produit
            this.productLabel = this.productLabel;
            // Conteneur UI du score (pour show/hide)
            this.scoreContainer = this.scoreContainer;
            // ─── Configuration ───────────────────────────────────────
            // Durée d'affichage du score (secondes)
            this.displayDuration = this.displayDuration;
            // Scores de base par produit (index → score)
            // À personnaliser selon tes produits Zalando/Puma
            this.baseScores = this.baseScores;
            // Noms des produits (index → nom)
            this.productNames = this.productNames;
            // ─── État interne ────────────────────────────────────────
            this.isVisible = false;
            this.displayTimer = 0;
            this.currentScore = 0;
            this.animationProgress = 0;
            this.isAnimating = false;
        }
        __initialize() {
            super.__initialize();
            // ─── Références UI ───────────────────────────────────────
            // Objet Text pour afficher le score (ex: "92% Match")
            this.scoreText = this.scoreText;
            // Objet Text pour le label du produit
            this.productLabel = this.productLabel;
            // Conteneur UI du score (pour show/hide)
            this.scoreContainer = this.scoreContainer;
            // ─── Configuration ───────────────────────────────────────
            // Durée d'affichage du score (secondes)
            this.displayDuration = this.displayDuration;
            // Scores de base par produit (index → score)
            // À personnaliser selon tes produits Zalando/Puma
            this.baseScores = this.baseScores;
            // Noms des produits (index → nom)
            this.productNames = this.productNames;
            // ─── État interne ────────────────────────────────────────
            this.isVisible = false;
            this.displayTimer = 0;
            this.currentScore = 0;
            this.animationProgress = 0;
            this.isAnimating = false;
        }
        // ─── Lifecycle ───────────────────────────────────────────
        onAwake() {
            // Cache le score au démarrage
            this.hide();
            this.createEvent("UpdateEvent").bind(() => this.onUpdate());
            print("[ConfidenceScore] Initialisé");
        }
        onUpdate() {
            // Timer d'affichage — cache le score après displayDuration
            if (this.isVisible) {
                this.displayTimer += getDeltaTime();
                if (this.displayTimer >= this.displayDuration) {
                    this.hide();
                }
            }
            // Animation du score (compte de 0 à currentScore)
            if (this.isAnimating) {
                this.animationProgress += getDeltaTime() * 2.0;
                if (this.animationProgress >= 1.0) {
                    this.animationProgress = 1.0;
                    this.isAnimating = false;
                }
                const displayScore = Math.round(this.currentScore * this.animationProgress);
                this.updateScoreText(displayScore);
            }
        }
        // ─── API publique ─────────────────────────────────────────
        /**
         * Calcule et affiche le score pour un vêtement donné
         * Appelé par FitVerseController après le délai
         */
        calculateAndShow(index, mode) {
            const score = this.getScoreForIndex(index);
            const productName = this.getProductName(index);
            this.currentScore = score;
            this.animationProgress = 0;
            this.isAnimating = true;
            this.displayTimer = 0;
            // Met à jour le label produit
            if (this.productLabel) {
                this.productLabel.text = productName;
            }
            // Affiche le conteneur
            this.show();
            print("[ConfidenceScore] Score: " + score
                + "% pour " + productName
                + " (mode: " + mode + ")");
        }
        /**
         * Affiche le conteneur score
         */
        show() {
            if (this.scoreContainer) {
                this.scoreContainer.enabled = true;
            }
            this.isVisible = true;
            this.displayTimer = 0;
        }
        /**
         * Cache le conteneur score
         */
        hide() {
            if (this.scoreContainer) {
                this.scoreContainer.enabled = false;
            }
            this.isVisible = false;
            this.displayTimer = 0;
            this.isAnimating = false;
            // Reset le texte
            if (this.scoreText) {
                this.scoreText.text = "0%";
            }
        }
        // ─── Calcul du score ─────────────────────────────────────
        /**
         * Retourne le score pour un index de produit
         * Ajoute une légère variation aléatoire pour le réalisme
         */
        getScoreForIndex(index) {
            if (!this.baseScores || this.baseScores.length === 0) {
                return this.generateDefaultScore();
            }
            const safeIndex = Math.max(0, Math.min(index, this.baseScores.length - 1));
            // Variation de ±5% pour le réalisme
            const base = this.baseScores[safeIndex];
            const variation = Math.round((Math.random() - 0.5) * 10);
            const finalScore = Math.max(60, Math.min(99, base + variation));
            return finalScore;
        }
        /**
         * Score par défaut si aucun configuré
         */
        generateDefaultScore() {
            return Math.round(75 + Math.random() * 20);
        }
        /**
         * Retourne le nom du produit pour un index
         */
        getProductName(index) {
            if (!this.productNames || this.productNames.length === 0) {
                return "Produit " + (index + 1);
            }
            const safeIndex = Math.max(0, Math.min(index, this.productNames.length - 1));
            return this.productNames[safeIndex];
        }
        /**
         * Met à jour le texte du score affiché
         * Ajoute un label selon le niveau du score
         */
        updateScoreText(score) {
            if (!this.scoreText)
                return;
            let label = "";
            if (score >= 90) {
                label = "⭐ Perfect Match";
            }
            else if (score >= 80) {
                label = "✓ Great Fit";
            }
            else if (score >= 70) {
                label = "~ Good Fit";
            }
            else {
                label = "Try another size";
            }
            this.scoreText.text = score + "%\n" + label;
        }
        // ─── Getters ─────────────────────────────────────────────
        getCurrentScore() {
            return this.currentScore;
        }
        getIsVisible() {
            return this.isVisible;
        }
    };
    __setFunctionName(_classThis, "ConfidenceScore");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ConfidenceScore = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ConfidenceScore = _classThis;
})();
exports.ConfidenceScore = ConfidenceScore;
//# sourceMappingURL=ConfidenceScore.js.map