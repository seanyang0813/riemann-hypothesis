module

import Development.EtaleCohomology.TateTwists.acycIffPf
public import Development.EtaleCohomology.TateTwists.EtaleSheafShortComplexExactIffLocallyLifts
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
public import Mathlib.CategoryTheory.Sites.EpiMono
import Mathlib.Tactic.Linter.Style

@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.EtaleFoundations.ExactIffPf

variable {R : Type} [CommRing R]

theorem exact_iff (S : ShortComplex (Shv R)) : S.Exact ↔ ∀ U (b : Sec S.X₂ U), Sec.map S.g b = 0 →
    Loc U fun V g => ∃ a : Sec S.X₁ V, Sec.map S.f a = Sec.res g b := by
  apply LateralTheory.EtaleFoundations.acycIffPf.exact_iff

end LateralTheory.EtaleFoundations.ExactIffPf

theorem LateralTheory.EtaleFoundations.etale_sheaf_short_complex_exact_iff_local_lifts_holds : LateralTheory.EtaleFoundations.EtaleSheafShortComplexExactIffLocallyLifts := by
  intro R _ S
  exact LateralTheory.EtaleFoundations.ExactIffPf.exact_iff S
