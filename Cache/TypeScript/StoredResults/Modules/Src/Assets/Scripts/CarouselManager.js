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
exports.CarouselManager = void 0;
var __selfType = requireType("./CarouselManager");
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
 * CarouselManager.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Gère la navigation du carousel de sélection des vêtements.
 * Communique avec GarmentSwitcher pour changer le vêtement affiché.
 * Supporte : swipe tactile + navigation hands-free Spectacles
 * Compatible Lens Studio 5.15 / Spectacles
 */
const GarmentSwitcher_1 = require("./GarmentSwitcher");
let CarouselManager = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var CarouselManager = _classThis = class extends _classSuper {
        constructor() {
            super();
            // Référence au GarmentSwitcher
            this.garmentSwitcherObject = this.garmentSwitcherObject;
            // Objets UI du carousel (les cartes visuelles)
            this.carouselItems = this.carouselItems;
            // Sensibilité du swipe (distance minimale en pixels)
            this.swipeThreshold = this.swipeThreshold;
            // Echelle de l'item sélectionné vs non sélectionné
            this.selectedScale = this.selectedScale;
            this.defaultScale = this.defaultScale;
            // Index actuel
            this.currentIndex = 0;
            // Touch tracking pour le swipe
            this.touchStartX = 0;
            this.isTouching = false;
        }
        __initialize() {
            super.__initialize();
            // Référence au GarmentSwitcher
            this.garmentSwitcherObject = this.garmentSwitcherObject;
            // Objets UI du carousel (les cartes visuelles)
            this.carouselItems = this.carouselItems;
            // Sensibilité du swipe (distance minimale en pixels)
            this.swipeThreshold = this.swipeThreshold;
            // Echelle de l'item sélectionné vs non sélectionné
            this.selectedScale = this.selectedScale;
            this.defaultScale = this.defaultScale;
            // Index actuel
            this.currentIndex = 0;
            // Touch tracking pour le swipe
            this.touchStartX = 0;
            this.isTouching = false;
        }
        onAwake() {
            this.initSwitcher();
            this.initTouchEvents();
            this.updateCarouselVisuals(this.currentIndex);
            print("[CarouselManager] Initialisé avec "
                + this.carouselItems.length + " items");
        }
        // ─── Initialisation ───────────────────────────────────────
        initSwitcher() {
            if (!this.garmentSwitcherObject) {
                print("[CarouselManager] ERREUR: GarmentSwitcher object non assigné");
                return;
            }
            this.switcher = this.garmentSwitcherObject.getComponent(GarmentSwitcher_1.GarmentSwitcher.getTypeName());
            if (!this.switcher) {
                print("[CarouselManager] ERREUR: Composant GarmentSwitcher introuvable");
                return;
            }
            print("[CarouselManager] GarmentSwitcher connecté");
        }
        initTouchEvents() {
            // Touch start — mémorise la position de départ
            const touchStart = this.createEvent("TouchStartEvent");
            touchStart.bind((e) => {
                this.touchStartX = e.getTouchPosition().x;
                this.isTouching = true;
            });
            // Touch end — calcule la direction du swipe
            const touchEnd = this.createEvent("TouchEndEvent");
            touchEnd.bind((e) => {
                if (!this.isTouching)
                    return;
                const touchEndX = e.getTouchPosition().x;
                const delta = touchEndX - this.touchStartX;
                if (Math.abs(delta) >= this.swipeThreshold) {
                    if (delta < 0) {
                        // Swipe gauche → item suivant
                        this.goToNext();
                    }
                    else {
                        // Swipe droit → item précédent
                        this.goToPrevious();
                    }
                }
                this.isTouching = false;
            });
            print("[CarouselManager] Touch events initialisés");
        }
        // ─── Navigation ───────────────────────────────────────────
        goToNext() {
            if (!this.switcher)
                return;
            this.currentIndex = (this.currentIndex + 1)
                % this.getTotalItems();
            this.switcher.applyGarment(this.currentIndex);
            this.updateCarouselVisuals(this.currentIndex);
            print("[CarouselManager] → Suivant: index " + this.currentIndex);
        }
        goToPrevious() {
            if (!this.switcher)
                return;
            this.currentIndex = (this.currentIndex - 1 + this.getTotalItems())
                % this.getTotalItems();
            this.switcher.applyGarment(this.currentIndex);
            this.updateCarouselVisuals(this.currentIndex);
            print("[CarouselManager] ← Précédent: index " + this.currentIndex);
        }
        goToIndex(index) {
            if (!this.switcher)
                return;
            const safeIndex = Math.max(0, Math.min(index, this.getTotalItems() - 1));
            this.currentIndex = safeIndex;
            this.switcher.applyGarment(this.currentIndex);
            this.updateCarouselVisuals(this.currentIndex);
            print("[CarouselManager] → Index direct: " + this.currentIndex);
        }
        // ─── Visuals ──────────────────────────────────────────────
        /**
         * Met à jour l'échelle des items du carousel
         * L'item sélectionné est agrandi, les autres réduits
         */
        updateCarouselVisuals(selectedIndex) {
            if (!this.carouselItems || this.carouselItems.length === 0)
                return;
            this.carouselItems.forEach((item, index) => {
                if (!item)
                    return;
                const isSelected = index === selectedIndex;
                const targetScale = isSelected
                    ? this.selectedScale
                    : this.defaultScale;
                item.getTransform().setLocalScale(new vec3(targetScale, targetScale, targetScale));
                // Active/désactive visuellement l'item
                item.enabled = true;
            });
        }
        // ─── Hands-free Spectacles ────────────────────────────────
        /**
         * Navigation hands-free pour Spectacles
         * Appelé par Body UI Button via Behavior trigger
         */
        onHandsFreePrevious() {
            print("[CarouselManager] Hands-free: précédent");
            this.goToPrevious();
        }
        onHandsFreeNext() {
            print("[CarouselManager] Hands-free: suivant");
            this.goToNext();
        }
        // ─── Utilitaires ──────────────────────────────────────────
        getTotalItems() {
            if (this.switcher) {
                return this.switcher.getGarmentCount();
            }
            return this.carouselItems ? this.carouselItems.length : 0;
        }
        getCurrentIndex() {
            return this.currentIndex;
        }
    };
    __setFunctionName(_classThis, "CarouselManager");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        CarouselManager = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return CarouselManager = _classThis;
})();
exports.CarouselManager = CarouselManager;
//# sourceMappingURL=CarouselManager.js.map