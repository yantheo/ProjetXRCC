/**
 * GarmentSwitcher.ts
 * FitVerse Lens — Snap Spectacles
 * 
 * Gère le switch entre vêtements via Garment Transfer API.
 * Reçoit les commandes de CarouselManager.
 * Compatible Lens Studio 5.15 / Spectacles
 */

@component
export class GarmentSwitcher extends BaseScriptComponent {

  // Référence au composant Garment Transfer
  @input
  gt: ScriptComponent;

  // Liste des textures garments (photos produits Zalando/Puma)
  @input
  garments: Texture[] = [];

  // Index du garment actuellement affiché
  private currentIndex: number = 0;

  // État de chargement
  private isReady: boolean = false;

  onAwake() {
    this.initGarmentTransfer();
    this.createEvent("UpdateEvent").bind(() => this.onUpdate());
  }

  private initGarmentTransfer() {
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

  private onUpdate() {
    // Vérification continue que GT est actif
    if (this.isReady && !this.gt["enabled"]) {
      this.gt["enabled"] = true;
    }
  }

  /**
   * Applique le garment à l'index donné
   * Appelé par CarouselManager quand l'utilisateur swippe
   */
  public applyGarment(index: number) {
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
    } else {
      // Refresh pour forcer le retraitement
      this.gt["refreshGarment"]();
    }

    print("[GarmentSwitcher] Garment appliqué: index " + safeIndex);
  }

  /**
   * Garment suivant — appelé par CarouselManager
   */
  public nextGarment() {
    const nextIndex = (this.currentIndex + 1) % this.garments.length;
    this.applyGarment(nextIndex);
  }

  /**
   * Garment précédent — appelé par CarouselManager
   */
  public previousGarment() {
    const prevIndex = (this.currentIndex - 1 + this.garments.length) 
                      % this.garments.length;
    this.applyGarment(prevIndex);
  }

  /**
   * Retourne l'index actuel — utilisé par ConfidenceScore
   */
  public getCurrentIndex(): number {
    return this.currentIndex;
  }

  /**
   * Retourne le nombre total de garments
   */
  public getGarmentCount(): number {
    return this.garments ? this.garments.length : 0;
  }
}
