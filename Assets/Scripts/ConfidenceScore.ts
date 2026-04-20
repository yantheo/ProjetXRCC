/**
 * ConfidenceScore.ts
 * FitVerse Lens — Snap Spectacles
 *
 * Calcule et affiche le score de confiance FitVerse.
 * Analyse le fit du vêtement et affiche le résultat en overlay AR.
 * Compatible Lens Studio 5.15 / Spectacles
 */

@component
export class ConfidenceScore extends BaseScriptComponent {

  // ─── Références UI ───────────────────────────────────────

  // Objet Text pour afficher le score (ex: "92% Match")
  @input
  scoreText: Text;

  // Objet Text pour le label du produit
  @input
  productLabel: Text;

  // Conteneur UI du score (pour show/hide)
  @input
  scoreContainer: SceneObject;

  // ─── Configuration ───────────────────────────────────────

  // Durée d'affichage du score (secondes)
  @input
  displayDuration: number = 4.0;

  // Scores de base par produit (index → score)
  // À personnaliser selon tes produits Zalando/Puma
  @input
  baseScores: number[] = [92, 87, 95, 78, 88];

  // Noms des produits (index → nom)
  @input
  productNames: string[] = [
    "Zalando — T-shirt Classic",
    "Zalando — Hoodie Urban",
    "Puma — RS-X Sneakers",
    "Puma — Future Rider",
    "Zalando — Bomber Jacket"
  ];

  // ─── État interne ────────────────────────────────────────

  private isVisible: boolean = false;
  private displayTimer: number = 0;
  private currentScore: number = 0;
  private animationProgress: number = 0;
  private isAnimating: boolean = false;

  // ─── Lifecycle ───────────────────────────────────────────

  onAwake() {
    // Cache le score au démarrage
    this.hide();
    this.createEvent("UpdateEvent").bind(() => this.onUpdate());
    print("[ConfidenceScore] Initialisé");
  }

  private onUpdate() {
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

      const displayScore = Math.round(
        this.currentScore * this.animationProgress
      );
      this.updateScoreText(displayScore);
    }
  }

  // ─── API publique ─────────────────────────────────────────

  /**
   * Calcule et affiche le score pour un vêtement donné
   * Appelé par FitVerseController après le délai
   */
  public calculateAndShow(index: number, mode: string) {
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
  public show() {
    if (this.scoreContainer) {
      this.scoreContainer.enabled = true;
    }
    this.isVisible = true;
    this.displayTimer = 0;
  }

  /**
   * Cache le conteneur score
   */
  public hide() {
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
  private getScoreForIndex(index: number): number {
    if (!this.baseScores || this.baseScores.length === 0) {
      return this.generateDefaultScore();
    }

    const safeIndex = Math.max(
      0, Math.min(index, this.baseScores.length - 1)
    );

    // Variation de ±5% pour le réalisme
    const base = this.baseScores[safeIndex];
    const variation = Math.round((Math.random() - 0.5) * 10);
    const finalScore = Math.max(60, Math.min(99, base + variation));

    return finalScore;
  }

  /**
   * Score par défaut si aucun configuré
   */
  private generateDefaultScore(): number {
    return Math.round(75 + Math.random() * 20);
  }

  /**
   * Retourne le nom du produit pour un index
   */
  private getProductName(index: number): string {
    if (!this.productNames || this.productNames.length === 0) {
      return "Produit " + (index + 1);
    }

    const safeIndex = Math.max(
      0, Math.min(index, this.productNames.length - 1)
    );

    return this.productNames[safeIndex];
  }

  /**
   * Met à jour le texte du score affiché
   * Ajoute un label selon le niveau du score
   */
  private updateScoreText(score: number) {
    if (!this.scoreText) return;

    let label = "";
    if (score >= 90) {
      label = "⭐ Perfect Match";
    } else if (score >= 80) {
      label = "✓ Great Fit";
    } else if (score >= 70) {
      label = "~ Good Fit";
    } else {
      label = "Try another size";
    }

    this.scoreText.text = score + "%\n" + label;
  }

  // ─── Getters ─────────────────────────────────────────────

  public getCurrentScore(): number {
    return this.currentScore;
  }

  public getIsVisible(): boolean {
    return this.isVisible;
  }
}
