/**
 * FitVerseController.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Orchestration générale de la Lens FitVerse.
 * Point d'entrée principal — connecte tous les composants.
 * Gère les deux modes : Garment Transfer (Zalando) et Body Mesh (Puma)
 * Compatible Lens Studio 5.15 / Spectacles
 */

import { GarmentSwitcher } from "./GarmentSwitcher";
import { CarouselManager } from "./CarouselManager";
import { ConfidenceScore } from "./ConfidenceScore";

// Modes de try-on disponibles
enum TryOnMode {
  GARMENT_TRANSFER = "garment_transfer", // Zalando — photo 2D
  BODY_MESH = "body_mesh"                // Puma — mesh 3D
}

@component
export class FitVerseController extends BaseScriptComponent {

  // ─── Références aux composants ──────────────────────────

  @input
  garmentSwitcherObject: SceneObject;

  @input
  carouselObject: SceneObject;

  @input
  confidenceScoreObject: SceneObject;

  // ─── Objets de scène par mode ───────────────────────────

  // Conteneur Garment Transfer (mode Zalando)
  @input
  garmentTransferContainer: SceneObject;

  // Conteneur Body Mesh (mode Puma)
  @input
  bodyMeshContainer: SceneObject;

  // ─── Configuration ──────────────────────────────────────

  // Mode actif au démarrage
  @input
  startMode: string = "garment_transfer";

  // Délai avant affichage du score (en secondes)
  @input
  scoreDelay: number = 2.0;

  // ─── État interne ────────────────────────────────────────

  private currentMode: TryOnMode = TryOnMode.GARMENT_TRANSFER;
  private switcher: GarmentSwitcher;
  private carousel: CarouselManager;
  private score: ConfidenceScore;
  private isInitialized: boolean = false;
  private scoreTimer: number = 0;
  private showingScore: boolean = false;

  // ─── Lifecycle ───────────────────────────────────────────

  onAwake() {
    print("[FitVerseController] Démarrage FitVerse Lens...");
    this.initComponents();
    this.setMode(this.startMode as TryOnMode);
    this.createEvent("UpdateEvent").bind(() => this.onUpdate());
    print("[FitVerseController] Prêt ✓");
  }

  private onUpdate() {
    if (!this.isInitialized) return;

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

  private initComponents() {
    // GarmentSwitcher
    if (this.garmentSwitcherObject) {
      this.switcher = this.garmentSwitcherObject.getComponent(
        GarmentSwitcher.getTypeName()
      ) as GarmentSwitcher;
      print("[FitVerseController] GarmentSwitcher: " 
        + (this.switcher ? "✓" : "✗ MANQUANT"));
    }

    // CarouselManager
    if (this.carouselObject) {
      this.carousel = this.carouselObject.getComponent(
        CarouselManager.getTypeName()
      ) as CarouselManager;
      print("[FitVerseController] CarouselManager: " 
        + (this.carousel ? "✓" : "✗ MANQUANT"));
    }

    // ConfidenceScore
    if (this.confidenceScoreObject) {
      this.score = this.confidenceScoreObject.getComponent(
        ConfidenceScore.getTypeName()
      ) as ConfidenceScore;
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
  public setMode(mode: TryOnMode) {
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

  private activateGarmentTransferMode() {
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

  private activateBodyMeshMode() {
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
  public onGarmentChanged(index: number) {
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
  private triggerConfidenceScore() {
    if (!this.score) return;

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
  public toggleMode() {
    if (this.currentMode === TryOnMode.GARMENT_TRANSFER) {
      this.setMode(TryOnMode.BODY_MESH);
    } else {
      this.setMode(TryOnMode.GARMENT_TRANSFER);
    }
  }

  public getCurrentMode(): TryOnMode {
    return this.currentMode;
  }

  public getIsInitialized(): boolean {
    return this.isInitialized;
  }
}
