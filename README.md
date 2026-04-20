# FitVerse Lens 👗👟
> AR Try-On Experience for Snap Spectacles
> XRCC Hackathon — Zalando & Puma Challenge

![Lens Studio](https://img.shields.io/badge/Lens%20Studio-5.15.4-yellow)
![TypeScript](https://img.shields.io/badge/TypeScript-5.0-blue)
![Platform](https://img.shields.io/badge/Platform-Snap%20Spectacles-red)
![Status](https://img.shields.io/badge/Status-Prototype-orange)

---

## 🎯 Concept

**"Try → Move → Decide"**

FitVerse Lens permet d'essayer virtuellement des vêtements 
et sneakers en réalité augmentée via les lunettes Snap Spectacles.

### Sponsors ciblés
- **Zalando** → Try-on vêtements (t-shirts, hoodies)
- **Puma** → Try-on sneakers avec simulation de mouvement

---

## 🛠️ Stack technique
Lens Studio 5.15.4    — IDE AR pour Spectacles
TypeScript            — Langage de scripting
Garment Transfer      — Try-on vêtements 2D → AR
Body Mesh Tracking    — Déformation 3D temps réel
Snap Spectacles       — Hardware cible

---

## 🚀 Installation

### Prérequis
- [Lens Studio 5.15.4](https://ar.snap.com/spectacles)
- Snap Spectacles (2024)

### Setup

**1. Clone le repo**
```bash
git clone git@github.com:yantheo/ProjetXRCC.git
cd FitVerseLens
```

**2. Ouvre dans Lens Studio**
File → Open Project → sélectionne le dossier FitVerseLens

**3. Vérifie la compilation TypeScript**
Logger en bas → "TypeScript compilation succeeded!"

**4. Connecte tes Spectacles**
Preview Lens → Connect Spectacles

---

## 🧪 Guide de test

### Test 1 — Garment Transfer (Zalando)

Mets-toi debout face aux Spectacles
Mains sur les côtés
Le vêtement s'applique automatiquement
Vérifie que ça suit tes mouvements


### Test 2 — Navigation Carousel

Swipe gauche → vêtement suivant
Swipe droit  → vêtement précédent
Le changement doit être fluide


### Test 3 — Score de confiance

Attends 2 secondes après un changement
Le score apparaît en overlay AR
ex: "92% ⭐ Perfect Match"
Il disparaît après 4 secondes


### Logs attendus dans la Logger
✅ [FitVerseController] Démarrage FitVerse Lens...
✅ [GarmentSwitcher] Garment Transfer prêt
✅ [GarmentSwitcher] Garment appliqué: index 0
✅ [CarouselManager] Initialisé avec X items
✅ [FitVerseController] Prêt ✓

---

## 🖼️ Ajouter des produits

### Format des photos
✓ Personne face caméra
✓ Mains sur les côtés
✓ Vêtement entièrement visible
✓ Format : JPEG ou PNG
✓ Résolution : 512x512 ou 1024x1024
✓ Poids : < 2MB

### Ajouter dans Lens Studio

Asset Browser → + → Import Files
Clique sur "Garment Transfer" dans la Hierarchy
Inspector → GarmentSwitcher → Garments
"+ Add Value" → glisse la texture

---

## ⚠️ Limitations connues

Garment Transfer : 1 personne max dans le champ
Supporte uniquement les hauts du corps
Photos produits actuelles : provisoires

---

## 🗺️ Roadmap
✅ Architecture projet
✅ Scripts TypeScript (4 composants)
✅ Scène Lens Studio configurée
✅ Garment Transfer intégré
⬜ Vraies photos produits Zalando/Puma
⬜ Items visuels Carousel UI
⬜ Mode Body Mesh Puma sneakers
⬜ Tests sur Spectacles physiques
⬜ Score de confiance IA réel
⬜ Partage social (recording)

---

## 👥 Équipe XRCC Hackathon

---

## 📄 Licence

MIT — Projet hackathon, usage éducatif
