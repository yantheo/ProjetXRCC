/**
 * CarouselManager.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Gère la navigation du carousel de sélection des vêtements.
 * Communique avec GarmentSwitcher pour changer le vêtement affiché.
 * Supporte : swipe tactile + navigation hands-free Spectacles
 * Compatible Lens Studio 5.15 / Spectacles
 */

import { GarmentSwitcher } from "./GarmentSwitcher";

@component
export class CarouselManager extends BaseScriptComponent {

  // Référence au GarmentSwitcher
  @input
  garmentSwitcherObject: SceneObject;

  // Objets UI du carousel (les cartes visuelles)
  @input
  carouselItems: SceneObject[] = [];

  // Sensibilité du swipe (distance minimale en pixels)
  @input
  swipeThreshold: number = 50;

  // Echelle de l'item sélectionné vs non sélectionné
  @input
  selectedScale: number = 1.2;

  @input
  defaultScale: number = 1.0;

  // Index actuel
  private currentIndex: number = 0;

  // Référence au GarmentSwitcher component
  private switcher: GarmentSwitcher;

  // Touch tracking pour le swipe
  private touchStartX: number = 0;
  private isTouching: boolean = false;

  onAwake() {
    this.initSwitcher();
    this.initTouchEvents();
    this.updateCarouselVisuals(this.currentIndex);
    print("[CarouselManager] Initialisé avec " 
      + this.carouselItems.length + " items");
  }

  // ─── Initialisation ───────────────────────────────────────

  private initSwitcher() {
    if (!this.garmentSwitcherObject) {
      print("[CarouselManager] ERREUR: GarmentSwitcher object non assigné");
      return;
    }

    this.switcher = this.garmentSwitcherObject.getComponent(
      GarmentSwitcher.getTypeName()
    ) as GarmentSwitcher;

    if (!this.switcher) {
      print("[CarouselManager] ERREUR: Composant GarmentSwitcher introuvable");
      return;
    }

    print("[CarouselManager] GarmentSwitcher connecté");
  }

  private initTouchEvents() {
    // Touch start — mémorise la position de départ
    const touchStart = this.createEvent("TouchStartEvent");
    touchStart.bind((e) => {
      this.touchStartX = e.getTouchPosition().x;
      this.isTouching = true;
    });

    // Touch end — calcule la direction du swipe
    const touchEnd = this.createEvent("TouchEndEvent");
    touchEnd.bind((e) => {
      if (!this.isTouching) return;

      const touchEndX = e.getTouchPosition().x;
      const delta = touchEndX - this.touchStartX;

      if (Math.abs(delta) >= this.swipeThreshold) {
        if (delta < 0) {
          // Swipe gauche → item suivant
          this.goToNext();
        } else {
          // Swipe droit → item précédent
          this.goToPrevious();
        }
      }

      this.isTouching = false;
    });

    print("[CarouselManager] Touch events initialisés");
  }

  // ─── Navigation ───────────────────────────────────────────

  public goToNext() {
    if (!this.switcher) return;

    this.currentIndex = (this.currentIndex + 1) 
      % this.getTotalItems();

    this.switcher.applyGarment(this.currentIndex);
    this.updateCarouselVisuals(this.currentIndex);

    print("[CarouselManager] → Suivant: index " + this.currentIndex);
  }

  public goToPrevious() {
    if (!this.switcher) return;

    this.currentIndex = (this.currentIndex - 1 + this.getTotalItems()) 
      % this.getTotalItems();

    this.switcher.applyGarment(this.currentIndex);
    this.updateCarouselVisuals(this.currentIndex);

    print("[CarouselManager] ← Précédent: index " + this.currentIndex);
  }

  public goToIndex(index: number) {
    if (!this.switcher) return;

    const safeIndex = Math.max(
      0, Math.min(index, this.getTotalItems() - 1)
    );

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
  private updateCarouselVisuals(selectedIndex: number) {
    if (!this.carouselItems || this.carouselItems.length === 0) return;

    this.carouselItems.forEach((item, index) => {
      if (!item) return;

      const isSelected = index === selectedIndex;
      const targetScale = isSelected 
        ? this.selectedScale 
        : this.defaultScale;

      item.getTransform().setLocalScale(
        new vec3(targetScale, targetScale, targetScale)
      );

      // Active/désactive visuellement l'item
      item.enabled = true;
    });
  }

  // ─── Hands-free Spectacles ────────────────────────────────

  /**
   * Navigation hands-free pour Spectacles
   * Appelé par Body UI Button via Behavior trigger
   */
  public onHandsFreePrevious() {
    print("[CarouselManager] Hands-free: précédent");
    this.goToPrevious();
  }

  public onHandsFreeNext() {
    print("[CarouselManager] Hands-free: suivant");
    this.goToNext();
  }

  // ─── Utilitaires ──────────────────────────────────────────

  private getTotalItems(): number {
    if (this.switcher) {
      return this.switcher.getGarmentCount();
    }
    return this.carouselItems ? this.carouselItems.length : 0;
  }

  public getCurrentIndex(): number {
    return this.currentIndex;
  }
}
