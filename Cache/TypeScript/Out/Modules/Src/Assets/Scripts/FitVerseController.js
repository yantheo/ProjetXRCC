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
exports.FitVerseController = void 0;
var __selfType = requireType("./FitVerseController");
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
 * FitVerseController.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Orchestration générale de la Lens FitVerse.
 * Point d'entrée principal — connecte tous les composants.
 * Gère les deux modes : Garment Transfer (Zalando) et Body Mesh (Puma)
 * Compatible Lens Studio 5.15 / Spectacles
 */
const GarmentSwitcher_1 = require("./GarmentSwitcher");
const CarouselManager_1 = require("./CarouselManager");
const ConfidenceScore_1 = require("./ConfidenceScore");
// Modes de try-on disponibles
var TryOnMode;
(function (TryOnMode) {
    TryOnMode["GARMENT_TRANSFER"] = "garment_transfer";
    TryOnMode["BODY_MESH"] = "body_mesh"; // Puma — mesh 3D
})(TryOnMode || (TryOnMode = {}));
let FitVerseController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var FitVerseController = _classThis = class extends _classSuper {
        constructor() {
            super();
            // ─── Références aux composants ──────────────────────────
            this.garmentSwitcherObject = this.garmentSwitcherObject;
            this.carouselObject = this.carouselObject;
            this.confidenceScoreObject = this.confidenceScoreObject;
            // ─── Objets de scène par mode ───────────────────────────
            // Conteneur Garment Transfer (mode Zalando)
            this.garmentTransferContainer = this.garmentTransferContainer;
            // Conteneur Body Mesh (mode Puma)
            this.bodyMeshContainer = this.bodyMeshContainer;
            // ─── Configuration ──────────────────────────────────────
            // Mode actif au démarrage
            this.startMode = this.startMode;
            // Délai avant affichage du score (en secondes)
            this.scoreDelay = this.scoreDelay;
            // ─── État interne ────────────────────────────────────────
            this.currentMode = TryOnMode.GARMENT_TRANSFER;
            this.isInitialized = false;
            this.scoreTimer = 0;
            this.showingScore = false;
        }
        __initialize() {
            super.__initialize();
            // ─── Références aux composants ──────────────────────────
            this.garmentSwitcherObject = this.garmentSwitcherObject;
            this.carouselObject = this.carouselObject;
            this.confidenceScoreObject = this.confidenceScoreObject;
            // ─── Objets de scène par mode ───────────────────────────
            // Conteneur Garment Transfer (mode Zalando)
            this.garmentTransferContainer = this.garmentTransferContainer;
            // Conteneur Body Mesh (mode Puma)
            this.bodyMeshContainer = this.bodyMeshContainer;
            // ─── Configuration ──────────────────────────────────────
            // Mode actif au démarrage
            this.startMode = this.startMode;
            // Délai avant affichage du score (en secondes)
            this.scoreDelay = this.scoreDelay;
            // ─── État interne ────────────────────────────────────────
            this.currentMode = TryOnMode.GARMENT_TRANSFER;
            this.isInitialized = false;
            this.scoreTimer = 0;
            this.showingScore = false;
        }
        // ─── Lifecycle ───────────────────────────────────────────
        onAwake() {
            print("[FitVerseController] Démarrage FitVerse Lens...");
            this.initComponents();
            this.setMode(this.startMode);
            this.createEvent("UpdateEvent").bind(() => this.onUpdate());
            print("[FitVerseController] Prêt ✓");
        }
        onUpdate() {
            if (!this.isInitialized)
                return;
            // Timer pour afficher le score après changement de vêtement
            if (this.showingScore) {
                this.scoreTimer += getDeltaTime();
                if (this.scoreTimer >= this.scoreDelay) {
                    this.triggerConfidenceScore();
                    this.showingScore = false;
                    this.scoreTimer = 0;
                }
            }
        }
        // ─── Initialisation ──────────────────────────────────────
        initComponents() {
            // GarmentSwitcher
            if (this.garmentSwitcherObject) {
                this.switcher = this.garmentSwitcherObject.getComponent(GarmentSwitcher_1.GarmentSwitcher.getTypeName());
                print("[FitVerseController] GarmentSwitcher: "
                    + (this.switcher ? "✓" : "✗ MANQUANT"));
            }
            // CarouselManager
            if (this.carouselObject) {
                this.carousel = this.carouselObject.getComponent(CarouselManager_1.CarouselManager.getTypeName());
                print("[FitVerseController] CarouselManager: "
                    + (this.carousel ? "✓" : "✗ MANQUANT"));
            }
            // ConfidenceScore
            if (this.confidenceScoreObject) {
                this.score = this.confidenceScoreObject.getComponent(ConfidenceScore_1.ConfidenceScore.getTypeName());
                print("[FitVerseController] ConfidenceScore: "
                    + (this.score ? "✓" : "✗ MANQUANT"));
            }
            this.isInitialized = true;
            print("[FitVerseController] Composants initialisés");
        }
        // ─── Gestion des modes ───────────────────────────────────
        /**
         * Switch entre mode Zalando (Garment Transfer)
         * et mode Puma (Body Mesh)
         */
        setMode(mode) {
            this.currentMode = mode;
            switch (mode) {
                case TryOnMode.GARMENT_TRANSFER:
                    this.activateGarmentTransferMode();
                    break;
                case TryOnMode.BODY_MESH:
                    this.activateBodyMeshMode();
                    break;
                default:
                    print("[FitVerseController] Mode inconnu: " + mode);
            }
            print("[FitVerseController] Mode actif: " + mode);
        }
        activateGarmentTransferMode() {
            // Active le conteneur Garment Transfer
            if (this.garmentTransferContainer) {
                this.garmentTransferContainer.enabled = true;
            }
            // Désactive le conteneur Body Mesh
            if (this.bodyMeshContainer) {
                this.bodyMeshContainer.enabled = false;
            }
            print("[FitVerseController] Mode Zalando (Garment Transfer) activé");
        }
        activateBodyMeshMode() {
            // Désactive le conteneur Garment Transfer
            if (this.garmentTransferContainer) {
                this.garmentTransferContainer.enabled = false;
            }
            // Active le conteneur Body Mesh
            if (this.bodyMeshContainer) {
                this.bodyMeshContainer.enabled = true;
            }
            print("[FitVerseController] Mode Puma (Body Mesh) activé");
        }
        // ─── Gestion des vêtements ───────────────────────────────
        /**
         * Appelé quand l'utilisateur change de vêtement
         * Déclenche le timer pour afficher le score
         */
        onGarmentChanged(index) {
            print("[FitVerseController] Vêtement changé: index " + index);
            // Reset et démarre le timer du score
            this.scoreTimer = 0;
            this.showingScore = true;
            // Cache le score pendant le chargement
            if (this.score) {
                this.score.hide();
            }
        }
        /**
         * Déclenche le calcul et affichage du score de confiance
         */
        triggerConfidenceScore() {
            if (!this.score)
                return;
            const currentIndex = this.switcher
                ? this.switcher.getCurrentIndex()
                : 0;
            this.score.calculateAndShow(currentIndex, this.currentMode);
            print("[FitVerseController] Score de confiance affiché");
        }
        // ─── API publique ─────────────────────────────────────────
        /**
         * Toggle entre les deux modes
         * Peut être appelé depuis un bouton UI
         */
        toggleMode() {
            if (this.currentMode === TryOnMode.GARMENT_TRANSFER) {
                this.setMode(TryOnMode.BODY_MESH);
            }
            else {
                this.setMode(TryOnMode.GARMENT_TRANSFER);
            }
        }
        getCurrentMode() {
            return this.currentMode;
        }
        getIsInitialized() {
            return this.isInitialized;
        }
    };
    __setFunctionName(_classThis, "FitVerseController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        FitVerseController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return FitVerseController = _classThis;
})();
exports.FitVerseController = FitVerseController;
//# sourceMappingURL=FitVerseController.js.map