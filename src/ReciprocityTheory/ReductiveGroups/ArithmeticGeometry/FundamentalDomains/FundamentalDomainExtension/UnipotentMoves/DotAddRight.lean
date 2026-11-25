module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.FundamentalDomainExtension.UnipotentMoves.BotMulVecExt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.LminorSubmatrixCastSucc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SignTypeCancelIdentity
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.MajXZ

@[expose] public section

namespace UnipMove.MajH

open ReciprocityTheory.ChartRestriction.G.FD ReciprocityTheory.ChartRestriction.G.FD.OrthonormalChartBounds UnipMove.GraphH NumberField Complex
open scoped ComplexConjugate Matrix

noncomputable section

def dot {n : ℕ} (u w : Fin n → ℂ) : ℂ := ∑ i, u i * conj (w i)

lemma norm_dot_le {n : ℕ} (u w : Fin n → ℂ) : ‖dot u w‖ ≤ en u * en w := by
  have h : dot u w = inner ℂ (WithLp.toLp 2 w : EuclideanSpace ℂ (Fin n)) (WithLp.toLp 2 u) := by
    simp only [dot, PiLp.inner_apply, RCLike.inner_apply]
  rw [h, en, en, mul_comm]
  exact norm_inner_le_norm _ _

section Frames

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {r : ℕ} (X : Data E r)

theorem maj_xZ' {x : Frame X.Ψ r} (hx : x ∈ X.dom) (ho : X.IsOrtho x) {ρ : ℝ} (hρ0 : 0 < ρ)
    (hρ : ρ ≤ 1 / 10) {Z : X.Coord} (hZ : X.zN Z ≤ ρ) (τ : X.Ψ) (v : Fin r → ℂ) :
    (1 - ρ) / (1 + ρ) * X.maj x τ v ≤ X.maj (X.xZ x Z) τ v ∧
      X.maj (X.xZ x Z) τ v ≤ (1 + ρ) / (1 - ρ) * X.maj x τ v :=
  OrthonormalChartBounds.maj_xZ X hx ho hρ0 hρ hZ τ v

end Frames

end

end UnipMove.MajH

namespace UnipMove

open ReciprocityTheory.ChartRestriction.G.FD NumberField

theorem sMajXZ {E : Type} [Field E] [NumberField E] [IsCMField E] : SMajXZ E := by
  intro r X x hx ho ρ hρ0 hρ Z hZ τ v
  exact MajH.maj_xZ' X hx ho hρ0 hρ hZ τ v

end UnipMove
