module

import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.MaximalCuspKernels.LinOfPoly
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.FunDef
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.Divisibility.WeightAlgebra
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.BasisChangeSt

@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.QAt

open NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions ReciprocityTheory.ChartRestriction.G.FreeQuotientRank
open scoped TensorProduct

namespace FinPf

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H}

theorem arcDet_ne_zero (Dw : Datum H) (K₁ : Type) [Field K₁] : arcDet Dw K₁ ≠ 0 := by
  apply Formalism.L2.Pj.QAt.LinOfPoly.arcDet_ne_zero

theorem algebraMap_arcS_injective (Dw : Datum H) (K₁ : Type) [Field K₁] :
    Function.Injective (algebraMap (MvPolynomial (ArcLt Dw) (LaurentSeries K₁)) (ArcS Dw K₁)) :=
  IsLocalization.injective (M := Submonoid.powers (arcDet Dw K₁)) (S := ArcS Dw K₁)
    (powers_le_nonZeroDivisors_of_noZeroDivisors (arcDet_ne_zero Dw K₁))

theorem arcNum_algebraMap {K₁ : Type} [Field K₁] (P : MvPolynomial (ArcLt Dw) (LaurentSeries K₁)) :
    arcNum (algebraMap _ (ArcS Dw K₁) P) = P := by
  unfold arcNum
  split
  · rename_i h
    first
      | exact algebraMap_arcS_injective Dw K₁ h.choose_spec
  · rename_i h
    exact absurd ⟨P, rfl⟩ h

theorem zpow_bound {α : Type} (r : ℝ) (hr0 : 0 < r) (hr1 : r < 1) (o vth : ℤ) (N d m : ℕ) (s : Finset α)
    (e : α → ℕ) (v : α → ℤ)
    (h : r ^ o ≤ (r ^ vth) ^ N * (∏ x ∈ s, (r ^ v x) ^ e x) * (r ^ (-(m : ℤ))) ^ d) :
    (N : ℝ) * vth + ∑ x ∈ s, (e x : ℝ) * v x - m * d ≤ o := by
  have hL : Real.log r < 0 := Real.log_neg hr0 hr1
  have hA : ∀ z : ℤ, 0 < r ^ z := fun z => zpow_pos hr0 z
  have hP : 0 < ∏ x ∈ s, (r ^ v x) ^ e x := Finset.prod_pos fun x _ => pow_pos (hA _) _
  have hlog := Real.log_le_log (hA o) h
  rw [Real.log_mul (mul_pos (pow_pos (hA _) _) hP).ne' (pow_pos (hA _) _).ne',
    Real.log_mul (pow_pos (hA _) _).ne' hP.ne',
    Real.log_prod (fun x _ => (pow_pos (hA _) _).ne')] at hlog
  simp only [Real.log_pow, Real.log_zpow] at hlog
  have hsum : ∑ x ∈ s, (e x : ℝ) * ((v x : ℝ) * Real.log r) =
      (∑ x ∈ s, (e x : ℝ) * v x) * Real.log r := by
    rw [Finset.sum_mul]
    exact Finset.sum_congr rfl fun _ _ => by ring
  push_cast at hlog
  by_contra hc
  push_neg at hc
  have hm := mul_lt_mul_of_neg_right hc hL
  linarith

end FinPf

end Formalism.L2.Pj.QAt
