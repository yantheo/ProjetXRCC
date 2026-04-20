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
exports.GarmentSwitcher = void 0;
var __selfType = requireType("./GarmentSwitcher");
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
 * GarmentSwitcher.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Gère le switch entre vêtements via Garment Transfer API.
 * Reçoit les commandes de CarouselManager.
 * Compatible Lens Studio 5.15 / Spectacles
 */
let GarmentSwitcher = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var GarmentSwitcher = _classThis = class extends _classSuper {
        constructor() {
            super();
            // Référence au composant Garment Transfer
            this.gt = this.gt;
            // Liste des textures garments (photos produits Zalando/Puma)
            this.garments = this.garments;
            // Index du garment actuellement affiché
            this.currentIndex = 0;
            // État de chargement
            this.isReady = false;
        }
        __initialize() {
            super.__initialize();
            // Référence au composant Garment Transfer
            this.gt = this.gt;
            // Liste des textures garments (photos produits Zalando/Puma)
            this.garments = this.garments;
            // Index du garment actuellement affiché
            this.currentIndex = 0;
            // État de chargement
            this.isReady = false;
        }
        onAwake() {
            this.initGarmentTransfer();
            this.createEvent("UpdateEvent").bind(() => this.onUpdate());
        }
        initGarmentTransfer() {
            if (!this.gt) {
                print("[GarmentSwitcher] ERREUR: Garment Transfer non assigné");
                return;
            }
            // Callback quand les modèles ML sont prêts
            this.gt["onLoadingFinished"] = () => {
                this.isReady = true;
                print("[GarmentSwitcher] Garment Transfer prêt");
                this.applyGarment(this.currentIndex);
            };
            // Configuration initiale
            this.gt["autoRun"] = true;
            this.gt["runMode"] = 0; // Adapt to Device (recommandé)
            this.gt["enabled"] = true;
            print("[GarmentSwitcher] Initialisation en cours...");
        }
        onUpdate() {
            // Vérification continue que GT est actif
            if (this.isReady && !this.gt["enabled"]) {
                this.gt["enabled"] = true;
            }
        }
        /**
         * Applique le garment à l'index donné
         * Appelé par CarouselManager quand l'utilisateur swippe
         */
        applyGarment(index) {
            if (!this.isReady) {
                print("[GarmentSwitcher] Pas encore prêt, index mis en attente: " + index);
                this.currentIndex = index;
                return;
            }
            if (!this.garments || this.garments.length === 0) {
                print("[GarmentSwitcher] ERREUR: Aucun garment configuré");
                return;
            }
            // Clamp de l'index pour éviter les out of bounds
            const safeIndex = Math.max(0, Math.min(index, this.garments.length - 1));
            const garment = this.garments[safeIndex];
            if (!garment) {
                print("[GarmentSwitcher] ERREUR: Garment null à l'index " + safeIndex);
                return;
            }
            // Assignation du nouveau garment
            this.gt["garmentImage"] = garment;
            this.currentIndex = safeIndex;
            // Si autoRun désactivé (appareils faibles) → lancer manuellement
            if (!this.gt["autoRun"]) {
                this.gt["enabled"] = false;
                this.gt["run"]();
                this.gt["enabled"] = true;
            }
            else {
                // Refresh pour forcer le retraitement
                this.gt["refreshGarment"]();
            }
            print("[GarmentSwitcher] Garment appliqué: index " + safeIndex);
        }
        /**
         * Garment suivant — appelé par CarouselManager
         */
        nextGarment() {
            const nextIndex = (this.currentIndex + 1) % this.garments.length;
            this.applyGarment(nextIndex);
        }
        /**
         * Garment précédent — appelé par CarouselManager
         */
        previousGarment() {
            const prevIndex = (this.currentIndex - 1 + this.garments.length)
                % this.garments.length;
            this.applyGarment(prevIndex);
        }
        /**
         * Retourne l'index actuel — utilisé par ConfidenceScore
         */
        getCurrentIndex() {
            return this.currentIndex;
        }
        /**
         * Retourne le nombre total de garments
         */
        getGarmentCount() {
            return this.garments ? this.garments.length : 0;
        }
    };
    __setFunctionName(_classThis, "GarmentSwitcher");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        GarmentSwitcher = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return GarmentSwitcher = _classThis;
})();
exports.GarmentSwitcher = GarmentSwitcher;
//# sourceMappingURL=GarmentSwitcher.js.map