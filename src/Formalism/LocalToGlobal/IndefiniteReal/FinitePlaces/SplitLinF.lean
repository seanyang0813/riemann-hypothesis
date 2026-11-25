module

public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourUniq
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceAt
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceInst
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourModel
public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsThetaFunOPull
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SmulSubMulLe
public import Mathlib.Algebra.Module.LinearMap.End
public import Mathlib.LinearAlgebra.Span.Defs
public import Mathlib.Algebra.BigOperators.GroupWithZero.Action
public import Mathlib.Algebra.Module.BigOperators
public import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset
public import Mathlib.LinearAlgebra.Finsupp.LinearCombination
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceHeis
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.LatLevel
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.LatSelf
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceFinal
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.GrowthNorm
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.EFinSmulEqOfFinPart
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourExist
import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceSum
import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IpTheta
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.AffineProjectionSplitting, Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourVac, Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InvForm, Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLem, Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLin, Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLinF

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.AffineProjectionSplitting =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.AffineProjectionSplitting", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourUniq\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceAt\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceInst\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.GrowthNorm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourModel\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsThetaFunOPull\n\n"}
section -- clump:auto
@[expose] public section



noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Matrix
open scoped TensorProduct

namespace Formalism.IndefR.Fin

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (S T : HSp D)

theorem half_sub_of {e e₁ : AE D} (h : e₁ * e = e₁) {x : WO S T} (hx : IsHalf e₁ x) : IsHalf e x := fun i j => by
  rw [← hx i j, ← mul_assoc, mul_comm e e₁, h]

theorem chalf_sub_of {e e₁ : AE D} (h : e₁ * e = e₁) {y : WO S T} (hy : IsHalf (cA D e₁) y) :
    IsHalf (cA D e) y := fun i j => by
  rw [← hy i j, ← mul_assoc, ← map_mul, mul_comm e e₁, h]

theorem symplO_left_e₁ {e₁ : AE D} {t y : WO S T} (hy : IsHalf (cA D e₁) y) :
    symplO S T t y = symplO S T (t.map (fun a => e₁ * a)) y := by
  have hc : ∀ c b, cA D (y c b) = e₁ * cA D (y c b) := fun c b => by
    conv_lhs => rw [← hy c b]
    rw [map_mul, cA_cA]
  have e1 : hO S T t y = hO S T (t.map (fun a => e₁ * a)) y := by
    unfold hO
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun c _ =>
      Finset.sum_congr rfl fun d _ => ?_
    rw [Matrix.map_apply]
    conv_lhs => rw [hc c b]
    ring
  unfold symplO
  rw [e1]

theorem symplO_right_ce₁ {e₁ : AE D} {x y : WO S T} (hx : IsHalf e₁ x) :
    symplO S T x y = symplO S T x (y.map (fun a => cA D e₁ * a)) := by
  have e1 : hO S T x y = hO S T x (y.map (fun a => cA D e₁ * a)) := by
    unfold hO
    refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => Finset.sum_congr rfl fun c _ =>
      Finset.sum_congr rfl fun d _ => ?_
    rw [Matrix.map_apply, map_mul, cA_cA]
    conv_lhs => rw [← hx d a]
    ring
  unfold symplO
  rw [e1]

theorem symplO_nsmul_right (t y : WO S T) (k : ℕ) : symplO S T t (k • y) = symplO S T (k • t) y := by
  induction k with
  | zero => rw [zero_smul, zero_smul, symplO_zero_right, symplO_zero_left]
  | succ n ih => rw [succ_nsmul, succ_nsmul, symplO_add_right, symplO_add_left, ih]



theorem actO_fix {e e₁ : AE D} (he : e * cA D e = 0) (h1 : e₁ * e = e₁) {g : GA D S} {h : GA D T}
    (hg : SuppAt e₁ S g) (hh : SuppAt e₁ T h) {t : WO S T} (ht : IsHalf e t) (h0 : ∀ i j, e₁ * t i j = 0) :
    actO S T g h t = t := by
  have hce : cA D e₁ * e = 0 := by
    have : cA D e₁ = cA D e₁ * cA D e := by rw [← map_mul, h1]
    rw [this, mul_assoc, mul_comm (cA D e) e, he, mul_zero]
  have hz : ∀ i j, (e₁ + cA D e₁) * t i j = 0 := fun i j => by
    rw [add_mul, h0 i j, zero_add, ← ht i j, ← mul_assoc, hce, zero_mul]
  have hL : HMul.hMul (mt T h) (t : Matrix (Fin T.rank) (Fin S.rank) (AE D)) = t := by
    ext i j
    have h2 : ∀ k, ((mt T h) - 1) i k * t k j = 0 := fun k => by
      rw [← hh i k, mul_comm (e₁ + cA D e₁), mul_assoc, hz k j, mul_zero]
    have h3 : ∑ k, ((mt T h) - 1) i k * t k j = 0 := Finset.sum_eq_zero fun k _ => h2 k
    simp only [Matrix.sub_apply, sub_mul, Finset.sum_sub_distrib, Matrix.one_apply, ite_mul, one_mul, zero_mul,
      Finset.sum_ite_eq, Finset.mem_univ, if_true] at h3
    rw [Matrix.mul_apply]
    exact sub_eq_zero.1 h3
  have hR : HMul.hMul (t : Matrix (Fin T.rank) (Fin S.rank) (AE D)) (mt S g) = t := by
    ext i j
    have h2 : ∀ k, t i k * ((mt S g) - 1) k j = 0 := fun k => by
      rw [← hg k j, ← mul_assoc, mul_comm (t i k), hz i k, zero_mul]
    have h3 : ∑ k, t i k * ((mt S g) - 1) k j = 0 := Finset.sum_eq_zero fun k _ => h2 k
    simp only [Matrix.sub_apply, mul_sub, Finset.sum_sub_distrib, Matrix.one_apply, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, if_true] at h3
    rw [Matrix.mul_apply]
    exact sub_eq_zero.1 h3
  have hinv : HMul.hMul (mt S g) (mt S g⁻¹) = (1 : Matrix (Fin S.rank) (Fin S.rank) (AE D)) := by
    rw [← Formalism.IndefR.Eqv.mt_mul, mul_inv_cancel, Formalism.IndefR.Eqv.mt_one]
  have hR' : HMul.hMul (t : Matrix (Fin T.rank) (Fin S.rank) (AE D)) (mt S g⁻¹) = t := by
    conv_lhs => rw [← hR]
    rw [Matrix.mul_assoc, hinv, Matrix.mul_one]
  unfold actO
  rw [hL, hR']



theorem evalYZero_zero (ψ : AddChar (AF D.host.F) ℂ) {e e₁ : AE D} (he₁ : IsSplitIdem D e₁) (h1 : e₁ * e = e₁)
    (Λ : AddSubgroup (WO S T))
    (hΛe₁ : ∀ u ∈ Λ, u.map (fun a => e₁ * a) ∈ Λ)
    (hLL₁ : ∀ x ∈ Λ, IsHalf e₁ x → ∀ y ∈ Λ, IsHalf (cA D e₁) y → ψ (symplO S T x y) = 1)
    (hdX₁ : ∀ x, IsHalf e₁ x → (∀ y ∈ Λ, IsHalf (cA D e₁) y → ψ (symplO S T x y) = 1) → x ∈ Λ)
    (hfY₁ : ∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ Λ, IsHalf (cA D e₁) u →
      ∃ r ∈ R, ∃ v ∈ Λ, IsHalf (cA D e₁) v ∧ u = r + k • v)
    (Tm : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ))
    (hmo : ∀ Φ, IsSBHalf e Λ Φ → ∀ y, IsHalf (cA D e) y →
      Tm (fun t => ψ (symplO S T t y) * Φ t) = heisO ψ S T y (Tm Φ))
    (hth : ∀ Φ, IsSBHalf e Λ Φ → IsThetaFunO ψ S T (Tm Φ))
    (ℓ : (WO S T → ℂ) →ₗ[ℂ] ℂ)
    (hℓ : ∀ u : WO S T, (∀ i j, cA D e₁ * u i j = u i j) → ∀ f, IsThetaFunO ψ S T f → ℓ (heisO ψ S T u f) = ℓ f)
    {Ψ : WO S T → ℂ} (hΨ : IsSBHalf e Λ Ψ) (hΨ0 : ∀ t, IsHalf e t → (∀ i j, e₁ * t i j = 0) → Ψ t = 0) :
    ℓ (Tm Ψ) = 0 := by
  classical
  have mi := fun {x : WO S T} {H K : AddSubgroup (WO S T)} (h : x ∈ H ⊓ K) => AddSubgroup.mem_inf.1 h
  obtain ⟨hs, k, hk, hi, hl⟩ := hΨ
  have hK : 0 < k * k := Nat.mul_pos hk hk
  have hfinY : ∀ j, 0 < j → Finite (Four.Qt j (Λ ⊓ halfSub S T (cA D e₁))) := fun j hj => by
    obtain ⟨R, hR⟩ := hfY₁ j hj
    exact finite_qt_of S T R fun u hu => by
      obtain ⟨r, hr, v, hv, hve, huv⟩ := hR u (mi hu).1 (mi hu).2
      exact ⟨r, hr, v, AddSubgroup.mem_inf.2 ⟨hv, hve⟩, huv⟩
  have htf : ∀ j : ℕ, 0 < j → ∀ t : WO S T, j • t = 0 → t = 0 := fun j hj t h => nsmul_eq_zero_WO S T hj h
  haveI := Four.Gk_finite hfinY htf hK
  letI := Fintype.ofFinite (Four.Gk Λ (halfSub S T (cA D e₁)) (k * k))
  let G := Four.Gk Λ (halfSub S T (cA D e₁)) (k * k)
  have hgY : ∀ g : G, IsHalf (cA D e₁) (k • ((g : Four.QY Λ (halfSub S T (cA D e₁))).out)) := fun g i j => by
    rw [Matrix.smul_apply, nsmul_eq_mul, mul_left_comm, (Four.Gk_out g).1 i j]
  have he₁e₁ : ∀ a : AE D, e₁ * (e₁ * a) = e₁ * a := fun a => by rw [← mul_assoc, he₁.1]

  have hA : ∀ t, ∑ g : G, ψ (symplO S T t (k • ((g : Four.QY Λ (halfSub S T (cA D e₁))).out))) * Ψ t = 0 := by
    intro t
    by_cases hΨt : Ψ t = 0
    · simp [hΨt]
    have ht := hs t hΨt
    have hkt := hl t hΨt
    set s : WO S T := (k • t).map (fun a => e₁ * a) with hsdef
    have hsΛ : s ∈ Λ := hΛe₁ _ hkt
    have hsh : IsHalf e₁ s := fun i j => by simp only [hsdef, Matrix.map_apply]; exact he₁e₁ _
    have hterm : ∀ g : G, ψ (symplO S T t (k • ((g : Four.QY Λ (halfSub S T (cA D e₁))).out))) =
        ψ (symplO S T s ((g : Four.QY Λ (halfSub S T (cA D e₁))).out)) := by
      intro g
      rw [symplO_left_e₁ S T (hgY g), symplO_nsmul_right]
      congr 2
      ext i j
      simp only [hsdef, Matrix.map_apply, Matrix.smul_apply, nsmul_eq_mul]
      ring
    rw [← Finset.sum_mul, Finset.sum_congr rfl fun g _ => hterm g]
    have hcs := Four.chi_sum (χ := fun t y => ψ (symplO S T t y)) (L := Λ) (X := halfSub S T e₁)
      (Y := halfSub S T (cA D e₁))
      (fun t t' y => by simp only [symplO_add_left, AddChar.map_add_eq_mul])
      (fun t y y' => by simp only [symplO_add_right, AddChar.map_add_eq_mul])
      (fun t y => psi_ne_zero ψ _)
      (fun x hx y hy => hLL₁ x (mi hx).1 (mi hx).2 y (mi hy).1 (mi hy).2)
      (fun x hx h => hdX₁ x hx fun y hy hye => h y (AddSubgroup.mem_inf.2 ⟨hy, hye⟩))
      (fun j hj s' hs' => by obtain ⟨t', ht', h'⟩ := half_div S T hj hs'; exact ⟨t', ht', h'⟩)
      (fun j hj s' hs' => by obtain ⟨t', ht', h'⟩ := half_div S T hj hs'; exact ⟨t', ht', h'⟩)
      hfinY htf hK (AddSubgroup.mem_inf.2 ⟨hsΛ, hsh⟩)
    rw [finsum_eq_sum_of_fintype] at hcs
    rw [hcs]
    split_ifs with hin
    · exfalso
      obtain ⟨u, hu, hus⟩ := Four.mem_smulSub.1 hin
      have hu' := mi hu
      have he1t : t.map (fun a => e₁ * a) = k • u := by
        refine sub_eq_zero.1 (htf k hk _ ?_)
        rw [smul_sub, smul_smul, hus, sub_eq_zero, hsdef]
        ext i j
        simp only [Matrix.map_apply, Matrix.smul_apply, nsmul_eq_mul]
        ring
      have hdec : t = (t - t.map (fun a => e₁ * a)) + k • u := by rw [he1t, sub_add_cancel]
      apply hΨt
      rw [hdec, hi u hu'.1 (half_sub_of S T h1 hu'.2)]
      refine hΨ0 _ (fun i j => ?_) (fun i j => ?_)
      · rw [Matrix.sub_apply, Matrix.map_apply, mul_sub, ht i j, ← mul_assoc, mul_comm e e₁, h1]
      · rw [Matrix.sub_apply, Matrix.map_apply, mul_sub, he₁e₁, sub_self]
    · exact zero_mul _

  have hM : (Fintype.card G : ℂ) ≠ 0 := by exact_mod_cast Fintype.card_ne_zero
  have hfun : Ψ = (Fintype.card G : ℂ)⁻¹ • ∑ g : G,
      (Ψ - fun t => ψ (symplO S T t (k • ((g : Four.QY Λ (halfSub S T (cA D e₁))).out))) * Ψ t) := by
    funext t
    rw [Pi.smul_apply, Finset.sum_apply]
    simp only [Pi.sub_apply]
    rw [Finset.sum_sub_distrib, hA t, sub_zero, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, smul_eq_mul,
      inv_mul_cancel_left₀ hM]
  conv_lhs => rw [hfun]

  rw [map_smul, map_sum, map_smul, map_sum]
  refine (smul_eq_zero.2 (Or.inr (Finset.sum_eq_zero fun g _ => ?_)))
  rw [map_sub, map_sub, hmo Ψ ⟨hs, k, hk, hi, hl⟩ _ (chalf_sub_of S T h1 (hgY g)),
    hℓ _ (hgY g) _ (hth Ψ ⟨hs, k, hk, hi, hl⟩), sub_self]

end Formalism.IndefR.Fin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.AffineProjectionSplitting =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourVac =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourVac", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SmulSubMulLe\npublic import Mathlib.Algebra.Module.LinearMap.End\npublic import Mathlib.LinearAlgebra.Span.Defs\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourModel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.BigOperators.GroupWithZero.Action\npublic import Mathlib.Algebra.Module.BigOperators\npublic import Mathlib.Algebra.Order.BigOperators.GroupWithZero.Finset\npublic import Mathlib.LinearAlgebra.Finsupp.LinearCombination\n\n"}
section -- clump:auto
@[expose] public section

set_option linter.style.haveILetI false

noncomputable section

namespace Formalism.IndefR.Fin.Four

variable {W V : Type*} [AddCommGroup W] [AddCommGroup V] [Module ℂ V]

def Yk (L Y : AddSubgroup W) (k : ℕ) : AddSubgroup W := Y ⊓ L.comap (nsmulAddMonoidHom k)

theorem mem_Yk {L Y : AddSubgroup W} {k : ℕ} {y : W} : y ∈ Yk L Y k ↔ y ∈ Y ∧ k • y ∈ L := by
  simp [Yk, AddSubgroup.mem_inf, AddSubgroup.mem_comap]

abbrev Ik (L Y : AddSubgroup W) (k : ℕ) : Type _ := ↥(Yk L Y k) ⧸ (smulSub k (L ⊓ Y)).addSubgroupOf (Yk L Y k)

theorem Ik_finite {L Y : AddSubgroup W} {k : ℕ} [Finite (Qt (k * k) (L ⊓ Y))]
    (htf : ∀ t : W, k • t = 0 → t = 0) : Finite (Ik L Y k) := by
  let f : Ik L Y k → Qt (k * k) (L ⊓ Y) := fun q => QuotientAddGroup.mk
    ⟨k • ((q.out : ↥(Yk L Y k)) : W), AddSubgroup.mem_inf.2 ⟨(mem_Yk.1 (q.out : ↥(Yk L Y k)).2).2,
      Y.nsmul_mem (mem_Yk.1 (q.out : ↥(Yk L Y k)).2).1 k⟩⟩
  refine Finite.of_injective f fun q q' h => ?_
  have h1 := QuotientAddGroup.eq.1 h
  rw [AddSubgroup.mem_addSubgroupOf] at h1
  obtain ⟨u, hu, hux⟩ := mem_smulSub.1 h1
  have h2 : k • (-((q.out : ↥(Yk L Y k)) : W) + ((q'.out : ↥(Yk L Y k)) : W) - k • u) = 0 := by
    rw [smul_sub, smul_add, smul_neg, smul_smul, hux]
    simp only [AddSubgroup.coe_add, AddSubgroup.coe_neg]
    abel
  have h3 := sub_eq_zero.1 (htf _ h2)
  refine (QuotientAddGroup.out_eq' q).symm.trans ((QuotientAddGroup.eq.2 ?_).trans (QuotientAddGroup.out_eq' q'))
  rw [AddSubgroup.mem_addSubgroupOf]
  simp only [AddSubgroup.coe_add, AddSubgroup.coe_neg]
  rw [h3]
  exact mem_smulSub.2 ⟨u, hu, rfl⟩

def IsLev (ρ : W → Module.End ℂ V) (L X Y : AddSubgroup W) (k : ℕ) (G : V) : Prop :=
  (∀ u ∈ L ⊓ X, ρ (k • u) G = G) ∧ ∀ u ∈ L ⊓ Y, ρ (k • u) G = G

theorem IsLev.mul {ρ : W → Module.End ℂ V} {L X Y : AddSubgroup W} {k : ℕ} {G : V} (h : IsLev ρ L X Y k G) (j : ℕ) :
    IsLev ρ L X Y (k * j) G := by
  refine ⟨fun u hu => ?_, fun u hu => ?_⟩
  · rw [← smul_smul]
    exact h.1 _ (AddSubgroup.nsmul_mem _ hu j)
  · rw [← smul_smul]
    exact h.2 _ (AddSubgroup.nsmul_mem _ hu j)

def piK (ρ : W → Module.End ℂ V) (L X Y : AddSubgroup W) (k : ℕ) (G : V) : V :=
  ∑ᶠ b : Qt k (L ⊓ X), ρ ((b.out : ↥(L ⊓ X)) : W) (∑ᶠ y : Ik L Y k, ρ ((y.out : ↥(Yk L Y k)) : W) G)

theorem Ik_out_mk {L Y : AddSubgroup W} {k : ℕ} (z : Yk L Y k) :
    ∃ v ∈ L ⊓ Y, ((((QuotientAddGroup.mk z : Ik L Y k)).out : ↥(Yk L Y k)) : W) + k • v = (z : W) := by
  have h := QuotientAddGroup.eq.1 (QuotientAddGroup.out_eq' (QuotientAddGroup.mk z : Ik L Y k))
  rw [AddSubgroup.mem_addSubgroupOf] at h
  obtain ⟨v, hv, hvx⟩ := mem_smulSub.1 h
  refine ⟨v, hv, ?_⟩
  rw [hvx]
  push_cast
  abel

section PiK

variable {ρ : W → Module.End ℂ V} {χ : W → W → ℂ} {L X Y : AddSubgroup W}

theorem piK_add {k : ℕ} [Finite (Qt k (L ⊓ X))] [Finite (Ik L Y k)] (G H : V) :
    piK ρ L X Y k (G + H) = piK ρ L X Y k G + piK ρ L X Y k H := by
  haveI := Fintype.ofFinite (Qt k (L ⊓ X))
  haveI := Fintype.ofFinite (Ik L Y k)
  simp only [piK, finsum_eq_sum_of_fintype, map_add (f := _), Finset.sum_add_distrib]

theorem piK_smul {k : ℕ} [Finite (Qt k (L ⊓ X))] [Finite (Ik L Y k)] (c : ℂ) (G : V) :
    piK ρ L X Y k (c • G) = c • piK ρ L X Y k G := by
  haveI := Fintype.ofFinite (Qt k (L ⊓ X))
  haveI := Fintype.ofFinite (Ik L Y k)
  simp only [piK, finsum_eq_sum_of_fintype, map_smul, ← Finset.smul_sum]

theorem piK_sub {k : ℕ} [Finite (Qt k (L ⊓ X))] [Finite (Ik L Y k)] (G H : V) :
    piK ρ L X Y k (G - H) = piK ρ L X Y k G - piK ρ L X Y k H := by
  haveI := Fintype.ofFinite (Qt k (L ⊓ X))
  haveI := Fintype.ofFinite (Ik L Y k)
  simp only [piK, finsum_eq_sum_of_fintype, map_sub, Finset.sum_sub_distrib]

theorem piK_shift (hY : ∀ y ∈ Y, ∀ y' ∈ Y, ρ (y + y') = ρ y * ρ y') {k : ℕ} [Finite (Ik L Y k)]
    {u : W} (hu : u ∈ Yk L Y k) {G : V} (hG : ∀ v ∈ L ⊓ Y, ρ (k • v) G = G) :
    piK ρ L X Y k (ρ u G) = piK ρ L X Y k G := by
  classical
  letI := Fintype.ofFinite (Ik L Y k)
  unfold piK
  congr 1
  funext b
  congr 1
  rw [finsum_eq_sum_of_fintype, finsum_eq_sum_of_fintype]
  let m : Ik L Y k := QuotientAddGroup.mk ⟨u, hu⟩
  have huY : u ∈ Y := (mem_Yk.1 hu).1
  have key : ∀ y : Ik L Y k, ρ ((y.out : ↥(Yk L Y k)) : W) (ρ u G) = ρ (((y + m).out : ↥(Yk L Y k)) : W) G := by
    intro y
    have hyY : ((y.out : ↥(Yk L Y k)) : W) ∈ Y := (mem_Yk.1 (y.out : ↥(Yk L Y k)).2).1
    have h1 : y + m = QuotientAddGroup.mk (y.out + ⟨u, hu⟩) := by
      rw [QuotientAddGroup.mk_add, QuotientAddGroup.out_eq']
    obtain ⟨v, hv, hout⟩ := Ik_out_mk (L := L) (Y := Y) (k := k) (y.out + ⟨u, hu⟩)
    rw [h1]
    have hoY : ((((QuotientAddGroup.mk (y.out + ⟨u, hu⟩) : Ik L Y k)).out : ↥(Yk L Y k)) : W) ∈ Y :=
      (mem_Yk.1 ((QuotientAddGroup.mk (y.out + ⟨u, hu⟩) : Ik L Y k)).out.2).1
    have hkvY : k • v ∈ Y := Y.nsmul_mem (AddSubgroup.mem_inf.1 hv).2 k
    rw [← Module.End.mul_apply, ← hY _ hyY _ huY]
    have h2 : ((y.out : ↥(Yk L Y k)) : W) + u =
        ((((QuotientAddGroup.mk (y.out + ⟨u, hu⟩) : Ik L Y k)).out : ↥(Yk L Y k)) : W) + k • v := by
      rw [hout]
      push_cast
      rfl
    rw [h2, hY _ hoY _ hkvY, Module.End.mul_apply, hG v hv]
  rw [Finset.sum_congr rfl fun y _ => key y]
  exact Fintype.sum_equiv (Equiv.addRight m) _ _ (fun _ => rfl)

end PiK

section Vac

variable {ρ : W → Module.End ℂ V} {χ : W → W → ℂ} {L X Y : AddSubgroup W}
  (hX : ∀ x ∈ X, ∀ x' ∈ X, ρ (x + x') = ρ x * ρ x')
  (hY : ∀ y ∈ Y, ∀ y' ∈ Y, ρ (y + y') = ρ y * ρ y')
  (hXY : ∀ x ∈ X, ∀ y ∈ Y, ρ x * ρ y = χ x y • (ρ y * ρ x))
  (hχl : ∀ t t' y, χ (t + t') y = χ t y * χ t' y)
  (hχr : ∀ t y y', χ t (y + y') = χ t y * χ t y') (hχ0 : ∀ t y, χ t y ≠ 0)
  (hLL : ∀ x ∈ L ⊓ X, ∀ y ∈ L ⊓ Y, χ x y = 1)
  (hdY : ∀ y ∈ Y, (∀ x ∈ L ⊓ X, χ x y = 1) → y ∈ L)
  (hfinX : ∀ k, 0 < k → Finite (Qt k (L ⊓ X))) (hfinY : ∀ k, 0 < k → Finite (Qt k (L ⊓ Y)))
  (htf : ∀ k : ℕ, 0 < k → ∀ t : W, k • t = 0 → t = 0)

include hχl hχr hχ0 hLL hdY in
open Classical in
theorem chi_sum_X {k : ℕ} [Fintype (Qt k (L ⊓ X))] {y : W} (hy : y ∈ Yk L Y k) :
    ∑ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) y =
      if y ∈ L then (Fintype.card (Qt k (L ⊓ X)) : ℂ) else 0 := by
  classical
  have hy' := mem_Yk.1 hy
  split_ifs with hyL
  · have h1 : ∀ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) y = 1 := fun b =>
      hLL _ (b.out : ↥(L ⊓ X)).2 y (AddSubgroup.mem_inf.2 ⟨hyL, hy'.1⟩)
    simp only [h1, Finset.sum_const, Finset.card_univ, nsmul_eq_mul, mul_one]
  · have hne : ¬ ∀ x ∈ L ⊓ X, χ x y = 1 := fun hall => hyL (hdY y hy'.1 hall)
    push_neg at hne
    obtain ⟨u, hu, hχu⟩ := hne
    let m : Qt k (L ⊓ X) := QuotientAddGroup.mk ⟨u, hu⟩
    have hkey : ∀ b : Qt k (L ⊓ X), χ (((b + m).out : ↥(L ⊓ X)) : W) y = χ ((b.out : ↥(L ⊓ X)) : W) y * χ u y := by
      intro b
      have h1 : b + m = QuotientAddGroup.mk (b.out + ⟨u, hu⟩) := by
        rw [QuotientAddGroup.mk_add, QuotientAddGroup.out_eq']
      obtain ⟨v, hv, hout⟩ := out_mk k (L ⊓ X) (b.out + ⟨u, hu⟩)
      rw [h1]
      have h2 : (((QuotientAddGroup.mk (b.out + ⟨u, hu⟩) : Qt k (L ⊓ X)).out : ↥(L ⊓ X)) : W) =
          ((b.out : ↥(L ⊓ X)) : W) + u + -(k • v) := by
        rw [eq_sub_of_add_eq hout]; push_cast; abel
      rw [h2, hχl, hχl, chi_neg_left hχl hχ0, chi_nsmul_left hχl hχ0, ← chi_nsmul_right hχr hχ0,
        hLL v hv _ (AddSubgroup.mem_inf.2 ⟨hy'.2, Y.nsmul_mem hy'.1 k⟩), inv_one, mul_one]
    have hshift : ∑ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) y =
        (∑ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) y) * χ u y := by
      rw [Finset.sum_mul]
      rw [← Fintype.sum_equiv (Equiv.addRight m) (fun b => χ (((b + m).out : ↥(L ⊓ X)) : W) y)
        (fun b => χ ((b.out : ↥(L ⊓ X)) : W) y) (fun b => rfl)]
      exact Finset.sum_congr rfl fun b _ => hkey b
    have hz : (1 - χ u y) * ∑ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) y = 0 := by
      linear_combination hshift
    rcases mul_eq_zero.1 hz with h | h
    · exact absurd (sub_eq_zero.1 h).symm hχu
    · exact h

include hXY hχl hχr hχ0 hLL hdY in
theorem piK_vac {k : ℕ} [Finite (Qt k (L ⊓ X))] [Finite (Ik L Y k)] {w : V} (hwX : ∀ u ∈ L ⊓ X, ρ u w = w)
    (hwY : ∀ u ∈ L ⊓ Y, ρ u w = w) : ∃ c : ℂ, c ≠ 0 ∧ piK ρ L X Y k w = c • w := by
  classical
  letI := Fintype.ofFinite (Qt k (L ⊓ X))
  letI := Fintype.ofFinite (Ik L Y k)
  have hyk : ∀ y : Ik L Y k, ((y.out : ↥(Yk L Y k)) : W) ∈ Yk L Y k := fun y => (y.out : ↥(Yk L Y k)).2
  have hterm : ∀ (b : Qt k (L ⊓ X)) (y : Ik L Y k), ρ ((b.out : ↥(L ⊓ X)) : W) (ρ ((y.out : ↥(Yk L Y k)) : W) w) =
      χ ((b.out : ↥(L ⊓ X)) : W) ((y.out : ↥(Yk L Y k)) : W) • ρ ((y.out : ↥(Yk L Y k)) : W) w := by
    intro b y
    have := congrArg (fun T : Module.End ℂ V => T w)
      (hXY _ (AddSubgroup.mem_inf.1 (b.out : ↥(L ⊓ X)).2).2 _ (mem_Yk.1 (hyk y)).1)
    simp only [Module.End.mul_apply, LinearMap.smul_apply] at this
    rw [this, hwX _ (b.out : ↥(L ⊓ X)).2]
  have e1 : piK ρ L X Y k w = ∑ y : Ik L Y k,
      (∑ b : Qt k (L ⊓ X), χ ((b.out : ↥(L ⊓ X)) : W) ((y.out : ↥(Yk L Y k)) : W)) •
        ρ ((y.out : ↥(Yk L Y k)) : W) w := by
    unfold piK
    rw [finsum_eq_sum_of_fintype, finsum_eq_sum_of_fintype]

    simp only [map_sum, hterm, Finset.sum_smul]
    exact Finset.sum_comm
  rw [e1]
  simp only [chi_sum_X hχl hχr hχ0 hLL hdY (hyk _)]
  have e2 : ∀ y : Ik L Y k, (if ((y.out : ↥(Yk L Y k)) : W) ∈ L then (Fintype.card (Qt k (L ⊓ X)) : ℂ) else 0) •
      ρ ((y.out : ↥(Yk L Y k)) : W) w =
      (if ((y.out : ↥(Yk L Y k)) : W) ∈ L then (Fintype.card (Qt k (L ⊓ X)) : ℂ) else 0) • w := by
    intro y
    split_ifs with h
    · rw [hwY _ (AddSubgroup.mem_inf.2 ⟨h, (mem_Yk.1 (hyk y)).1⟩)]
    · rw [zero_smul, zero_smul]
  simp only [e2, ← Finset.sum_smul]
  refine ⟨_, ?_, rfl⟩
  rw [Finset.sum_ite, Finset.sum_const_zero, add_zero, Finset.sum_const, nsmul_eq_mul]
  refine mul_ne_zero ?_ (by exact_mod_cast Fintype.card_ne_zero)
  have h0 : (0 : Ik L Y k) ∈ Finset.univ.filter (fun y : Ik L Y k => ((y.out : ↥(Yk L Y k)) : W) ∈ L) := by
    rw [Finset.mem_filter]
    refine ⟨Finset.mem_univ _, ?_⟩
    have := (QuotientAddGroup.eq_zero_iff _).1 (QuotientAddGroup.out_eq' (0 : Ik L Y k))
    rw [AddSubgroup.mem_addSubgroupOf] at this
    obtain ⟨v, hv, hvx⟩ := mem_smulSub.1 this
    rw [← hvx]
    exact L.nsmul_mem (AddSubgroup.mem_inf.1 hv).1 k
  exact_mod_cast (Finset.card_pos.2 ⟨_, h0⟩).ne'


include hY hXY hχl hχr hχ0 hLL hdY hfinX hfinY htf in
theorem vac_eq_zero_of_mem_span (hoY : ∀ y ∈ Y, ∃ k : ℕ, 0 < k ∧ k • y ∈ L) (Θ : Set V)
    (hlev : ∀ G ∈ Θ, ∃ k : ℕ, 0 < k ∧ IsLev ρ L X Y k G) {w : V}
    (hwX : ∀ u ∈ L ⊓ X, ρ u w = w) (hwY : ∀ u ∈ L ⊓ Y, ρ u w = w)
    (hw : w ∈ Submodule.span ℂ {v | ∃ u ∈ Y, ∃ G ∈ Θ, v = ρ u G - G}) : w = 0 := by
  classical
  obtain ⟨n, f, g, hsum⟩ := Submodule.mem_span_set'.1 hw
  choose u hu G hG hg using fun i => (g i).2
  choose kf hkf0 hkf using fun i => hlev (G i) (hG i)
  choose mf hmf0 hmf using fun i => hoY (u i) (hu i)
  set K := ∏ i, (kf i * mf i) with hKdef
  have hK0 : 0 < K := Finset.prod_pos fun i _ => Nat.mul_pos (hkf0 i) (hmf0 i)
  have hdiv : ∀ i, kf i * mf i ∣ K := fun i => Finset.dvd_prod_of_mem _ (Finset.mem_univ i)
  haveI := hfinX K hK0
  haveI := hfinY (K * K) (Nat.mul_pos hK0 hK0)
  haveI : Finite (Ik L Y K) := Ik_finite (htf K hK0)
  have hzero : ∀ i, piK ρ L X Y K (ρ (u i) (G i) - G i) = 0 := by
    intro i
    obtain ⟨c, hc⟩ := hdiv i
    have hGK : IsLev ρ L X Y K (G i) := by
      have := (hkf i).mul (mf i * c)
      rwa [← mul_assoc, ← hc] at this
    have huK : u i ∈ Yk L Y K := mem_Yk.2 ⟨hu i, by
      rw [hc, mul_comm (kf i) (mf i), mul_assoc, mul_comm, ← smul_smul]
      exact L.nsmul_mem (hmf i) _⟩
    rw [piK_sub, piK_shift hY huK hGK.2, sub_self]
  have hpw : piK ρ L X Y K w = 0 := by
    rw [← hsum]
    have : ∀ s : Finset (Fin n), piK ρ L X Y K (∑ i ∈ s, f i • ((g i : {v | ∃ u ∈ Y, ∃ G ∈ Θ, v = ρ u G - G}) : V)) = 0 := by
      intro s
      induction s using Finset.induction_on with
      | empty =>
        rw [Finset.sum_empty]
        have := piK_smul (ρ := ρ) (L := L) (X := X) (Y := Y) (k := K) (0 : ℂ) (0 : V)
        rwa [zero_smul, zero_smul] at this
      | insert i s his ih =>
        rw [Finset.sum_insert his, piK_add, ih, add_zero, piK_smul, hg i, hzero i, smul_zero]
    exact this Finset.univ
  obtain ⟨c, hc0, hc⟩ := piK_vac hXY hχl hχr hχ0 hLL hdY (k := K) hwX hwY
  rw [hc] at hpw
  exact (smul_eq_zero.1 hpw).resolve_left hc0

end Vac

end Formalism.IndefR.Fin.Four

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourVac =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InvForm =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InvForm", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.CharLem\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourVac\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceInst\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceHeis\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Matrix
open scoped TensorProduct

namespace Formalism.IndefR.Fin

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D)

theorem exists_invForm (e₁ : AE D) (he : e₁ * cA D e₁ = 0) (Λ : AddSubgroup (WO S T))
    (hLL : ∀ x ∈ Λ, IsHalf e₁ x → ∀ y ∈ Λ, IsHalf (cA D e₁) y → ψ (symplO S T x y) = 1)
    (hdY : ∀ y, IsHalf (cA D e₁) y → (∀ x ∈ Λ, IsHalf e₁ x → ψ (symplO S T x y) = 1) → y ∈ Λ)
    (hfX : ∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ Λ, IsHalf e₁ u →
      ∃ r ∈ R, ∃ v ∈ Λ, IsHalf e₁ v ∧ u = r + k • v)
    (hfY : ∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ Λ, IsHalf (cA D e₁) u →
      ∃ r ∈ R, ∃ v ∈ Λ, IsHalf (cA D e₁) v ∧ u = r + k • v)
    (hoY : ∀ y, IsHalf (cA D e₁) y → ∃ k : ℕ, 0 < k ∧ k • y ∈ Λ)
    (hlev : ∀ f, IsThetaFunO ψ S T f → ∃ k : ℕ, 0 < k ∧
      ∀ u ∈ Λ, (IsHalf e₁ u ∨ IsHalf (cA D e₁) u) → heisO ψ S T (k • u) f = f)
    {w : WO S T → ℂ} (hw : IsThetaFunO ψ S T w) (hwX : ∀ u ∈ Λ, IsHalf e₁ u → heisO ψ S T u w = w)
    (hwY : ∀ u ∈ Λ, IsHalf (cA D e₁) u → heisO ψ S T u w = w) (hw0 : w ≠ 0) :
    ∃ ℓ : (WO S T → ℂ) →ₗ[ℂ] ℂ,
      (∀ u : WO S T, (∀ i j, cA D e₁ * u i j = u i j) → ∀ f, IsThetaFunO ψ S T f →
        ℓ (heisO ψ S T u f) = ℓ f) ∧ ℓ w ≠ 0 := by
  have mi := fun {x : WO S T} {H K : AddSubgroup (WO S T)} (h : x ∈ H ⊓ K) => AddSubgroup.mem_inf.1 h
  let N : Submodule ℂ (WO S T → ℂ) := Submodule.span ℂ
    {v | ∃ u ∈ halfSub S T (cA D e₁), ∃ G ∈ {f : WO S T → ℂ | IsThetaFunO ψ S T f}, v = heisL ψ S T u G - G}
  have hwN : w ∉ N := by
    intro hmem
    refine hw0 (Four.vac_eq_zero_of_mem_span (ρ := heisL ψ S T) (χ := fun t y => ψ (symplO S T t y))
      (L := Λ) (X := halfSub S T e₁) (Y := halfSub S T (cA D e₁))
      (fun y hy y' hy' => heisL_add_half ψ S T (cA_half_orth he) hy hy')
      (fun x _ y _ => heisL_comm ψ S T x y)
      (fun t t' y => by simp only [symplO_add_left, AddChar.map_add_eq_mul])
      (fun t y y' => by simp only [symplO_add_right, AddChar.map_add_eq_mul])
      (fun t y => psi_ne_zero ψ _)
      (fun x hx y hy => hLL x (mi hx).1 (mi hx).2 y (mi hy).1 (mi hy).2)
      (fun y hy h => hdY y hy fun x hx hxe => h x (AddSubgroup.mem_inf.2 ⟨hx, hxe⟩))
      (fun k hk => by
        obtain ⟨R, hR⟩ := hfX k hk
        exact finite_qt_of S T R fun u hu => by
          obtain ⟨r, hr, v, hv, hve, huv⟩ := hR u (mi hu).1 (mi hu).2
          exact ⟨r, hr, v, AddSubgroup.mem_inf.2 ⟨hv, hve⟩, huv⟩)
      (fun k hk => by
        obtain ⟨R, hR⟩ := hfY k hk
        exact finite_qt_of S T R fun u hu => by
          obtain ⟨r, hr, v, hv, hve, huv⟩ := hR u (mi hu).1 (mi hu).2
          exact ⟨r, hr, v, AddSubgroup.mem_inf.2 ⟨hv, hve⟩, huv⟩)
      (fun k hk t h => nsmul_eq_zero_WO S T hk h)
      (fun y hy => hoY y hy) {f | IsThetaFunO ψ S T f}
      (fun G hG => by
        obtain ⟨k, hk, hGk⟩ := hlev G hG
        exact ⟨k, hk, fun u hu => hGk u (mi hu).1 (Or.inl (mi hu).2),
          fun u hu => hGk u (mi hu).1 (Or.inr (mi hu).2)⟩)
      (fun u hu => hwX u (mi hu).1 (mi hu).2) (fun u hu => hwY u (mi hu).1 (mi hu).2) hmem)
  obtain ⟨ℓ, hℓw, hℓN⟩ := Submodule.exists_dual_map_eq_bot_of_notMem hwN inferInstance
  refine ⟨ℓ, fun u hu f hf => ?_, hℓw⟩
  have hmem : heisL ψ S T u f - f ∈ N := Submodule.subset_span ⟨u, hu, f, hf, rfl⟩
  have h0 : ℓ (heisL ψ S T u f - f) = 0 := by
    have : ℓ (heisL ψ S T u f - f) ∈ N.map ℓ := Submodule.mem_map_of_mem hmem
    rw [hℓN] at this
    exact (Submodule.mem_bot ℂ).1 this
  rw [map_sub, sub_eq_zero] at h0
  exact h0

end Formalism.IndefR.Fin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InvForm =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLem =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLem", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.EFinSmulEqOfFinPart\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.GrowthNorm\npublic import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsThetaFunOPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section



noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Matrix
open scoped TensorProduct

namespace Formalism.IndefR.Fin

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (S T : HSp D)

theorem suppAt_inv_fp {e : AE D} {V : HSp D} {g : GA D V} (hg : SuppAt e V g) : SuppAt e V g⁻¹ := by
  have hinv : HMul.hMul (mt V g⁻¹) (mt V g) = (1 : Matrix (Fin V.rank) (Fin V.rank) (AE D)) := by
    rw [← Formalism.IndefR.Eqv.mt_mul, inv_mul_cancel, Formalism.IndefR.Eqv.mt_one]
  have hd : (mt V g⁻¹ : Matrix (Fin V.rank) (Fin V.rank) (AE D)) - 1 =
      -(HMul.hMul (mt V g⁻¹) ((mt V g : Matrix (Fin V.rank) (Fin V.rank) (AE D)) - 1)) := by
    rw [Matrix.mul_sub, hinv, Matrix.mul_one, neg_sub]
  intro i j
  rw [hd, Matrix.neg_apply, mul_neg, Matrix.mul_apply, Finset.mul_sum]
  congr 1
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [mul_left_comm, hg k j]

theorem actO_nsmul (g : GA D S) (h : GA D T) (k : ℕ) (t : WO S T) : actO S T g h (k • t) = k • actO S T g h t := by
  induction k with
  | zero =>
    rw [zero_smul, zero_smul]
    unfold actO
    rw [Matrix.mul_zero, Matrix.zero_mul]
  | succ n ih => rw [succ_nsmul, succ_nsmul, Formalism.IndefR.Eqv.actO_add, ih]

theorem isHalf_actO_fp {e : AE D} (g : GA D S) (h : GA D T) {t : WO S T} (ht : IsHalf e t) :
    IsHalf e (actO S T g h t) := by
  intro i j
  unfold actO
  simp only [Matrix.mul_apply, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => ?_
  conv_rhs => rw [← ht l k]
  ring

theorem isHalf_nsmul_fp {e : AE D} {v : WO S T} (hv : IsHalf e v) (m : ℕ) : IsHalf e (m • v) := fun i j => by
  rw [Matrix.smul_apply, nsmul_eq_mul, mul_left_comm, hv i j]

theorem isHalf_actO_iff {e : AE D} (g : GA D S) (h : GA D T) (t : WO S T) :
    IsHalf e (actO S T g h t) ↔ IsHalf e t := by
  refine ⟨fun h' => ?_, isHalf_actO_fp S T g h⟩
  have := isHalf_actO_fp S T g⁻¹ h⁻¹ h'
  rwa [Formalism.IndefR.Eqv.actO_actO_inv] at this

open Classical in
theorem halfInd_add {e : AE D} {Λ : AddSubgroup (WO S T)} {u : WO S T} (hu : u ∈ Λ) (hue : IsHalf e u)
    (s : WO S T) : halfInd e Λ (s + u) = halfInd e Λ s := by
  unfold halfInd
  have h1 : s + u ∈ Λ ↔ s ∈ Λ := ⟨fun h => by simpa using Λ.sub_mem h hu, fun h => Λ.add_mem h hu⟩
  have h2 : IsHalf e (s + u) ↔ IsHalf e s := by
    constructor
    · intro h i j
      have := h i j
      rw [Matrix.add_apply, mul_add, hue i j] at this
      exact add_right_cancel this
    · intro h i j
      rw [Matrix.add_apply, mul_add, h i j, hue i j]
  simp only [h1, h2]

theorem sb_comp {e : AE D} {Λ : AddSubgroup (WO S T)} (g : GA D S) (h : GA D T)
    {k₁ : ℕ} (hk₁ : 0 < k₁) (h₁ : ∀ t ∈ Λ, k₁ • actO S T g h t ∈ Λ)
    {k₂ : ℕ} (hk₂ : 0 < k₂) (h₂ : ∀ t ∈ Λ, k₂ • actO S T g⁻¹ h⁻¹ t ∈ Λ)
    {Φ : WO S T → ℂ} (hΦ : IsSBHalf e Λ Φ) : IsSBHalf e Λ (fun t => Φ (actO S T g h t)) := by
  obtain ⟨hs, k, hk, hi, hl⟩ := hΦ
  refine ⟨fun t ht => (isHalf_actO_iff S T g h t).1 (hs _ ht), k * k₁ * k₂, by positivity,
    fun u hu hue t => ?_, fun t ht => ?_⟩
  · show Φ (actO S T g h (t + (k * k₁ * k₂) • u)) = Φ (actO S T g h t)
    rw [Formalism.IndefR.Eqv.actO_add, actO_nsmul, show (k * k₁ * k₂) • actO S T g h u =
      k • (k₂ • (k₁ • actO S T g h u)) by rw [smul_smul, smul_smul]; ring_nf]
    exact hi _ (Λ.nsmul_mem (h₁ u hu) k₂)
      (isHalf_nsmul_fp S T (isHalf_nsmul_fp S T (isHalf_actO_fp S T g h hue) k₁) k₂) _
  · have h1 := hl _ ht
    have h2 := h₂ _ h1
    rw [actO_nsmul, Formalism.IndefR.Eqv.actO_actO_inv, smul_smul] at h2
    rw [show k * k₁ * k₂ = k₁ * (k₂ * k) by ring, ← smul_smul]
    exact Λ.nsmul_mem h2 k₁

end Formalism.IndefR.Fin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLem =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLin =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLin", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.LatLevel\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.AffineProjectionSplitting\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.FourExist\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.InvForm\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceAt\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceInst\nimport Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceSum\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLem\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.EFinSmulEqOfFinPart\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IpTheta\nimport Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.IsThetaFunOPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section




noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum Matrix MeasureTheory NumberField
open scoped TensorProduct

namespace Formalism.IndefR.Fin

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem facts_at_e₁ (hPD : PlaceLatDual D) {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) (S T : HSp D)
    {ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E)} {ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E)}
    (hS : IsSelfDualC S ΛS) (hT : IsSelfDualC T ΛT) {P : Finset (Formalism.L2.DIV.Pl D.host.E)} {e e₁ : AE D}
    (he : IsIdemSum e P) (he₁ : IsSplitIdem D e₁) (h1 : e₁ * e = e₁) :
    (∀ u ∈ latAll S T ΛS ΛT, u.map (fun a => e₁ * a) ∈ latAll S T ΛS ΛT) ∧
    (∀ x ∈ latAll S T ΛS ΛT, IsHalf e₁ x → ∀ y ∈ latAll S T ΛS ΛT, IsHalf (cA D e₁) y → ψ (symplO S T x y) = 1) ∧
    (∀ y, IsHalf (cA D e₁) y → (∀ x ∈ latAll S T ΛS ΛT, IsHalf e₁ x → ψ (symplO S T x y) = 1) →
      y ∈ latAll S T ΛS ΛT) ∧
    (∀ x, IsHalf e₁ x → (∀ y ∈ latAll S T ΛS ΛT, IsHalf (cA D e₁) y → ψ (symplO S T x y) = 1) →
      x ∈ latAll S T ΛS ΛT) ∧
    (∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ latAll S T ΛS ΛT, IsHalf e₁ u →
      ∃ r ∈ R, ∃ v ∈ latAll S T ΛS ΛT, IsHalf e₁ v ∧ u = r + k • v) ∧
    (∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ latAll S T ΛS ΛT, IsHalf (cA D e₁) u →
      ∃ r ∈ R, ∃ v ∈ latAll S T ΛS ΛT, IsHalf (cA D e₁) v ∧ u = r + k • v) ∧
    (∀ x, IsHalf e₁ x → ∃ k : ℕ, 0 < k ∧ k • x ∈ latAll S T ΛS ΛT) ∧
    (∀ y, IsHalf (cA D e₁) y → ∃ k : ℕ, 0 < k ∧ k • y ∈ latAll S T ΛS ΛT) := by
  classical
  obtain ⟨hi, -, hP⟩ := hPD ψ hψ S T ΛS ΛT hS hT
  obtain ⟨hd2, hd3, hfin, hop⟩ := hP P e he
  have hc₁ := isSplitIdem_cA he₁
  have hmapH : ∀ (f : AE D), f * f = f → ∀ u : WO S T, IsHalf f (u.map (fun a => f * a)) := fun f hf u i j => by
    simp only [Matrix.map_apply]; rw [← mul_assoc, hf]
  have hmapId : ∀ (f : AE D) (u : WO S T), IsHalf f u → u.map (fun a => f * a) = u := fun f u hu => by
    ext i j; exact hu i j
  have hfinE : ∀ (f f' : AE D), f' * f' = f' → (∀ u : WO S T, IsHalf f' u → IsHalf f u) →
      (∀ u ∈ latAll S T ΛS ΛT, u.map (fun a => f' * a) ∈ latAll S T ΛS ΛT) →
      (∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ latAll S T ΛS ΛT, IsHalf f u →
        ∃ r ∈ R, ∃ v ∈ latAll S T ΛS ΛT, IsHalf f v ∧ u = r + k • v) →
      ∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u ∈ latAll S T ΛS ΛT, IsHalf f' u →
        ∃ r ∈ R, ∃ v ∈ latAll S T ΛS ΛT, IsHalf f' v ∧ u = r + k • v := by
    intro f f' hf' hsub hmul hF k hk
    obtain ⟨R, hR⟩ := hF k hk
    refine ⟨R.image (fun r => r.map (fun a => f' * a)), fun u hu hue => ?_⟩
    obtain ⟨r, hr, v, hv, -, huv⟩ := hR u hu (hsub u hue)
    refine ⟨r.map (fun a => f' * a), Finset.mem_image_of_mem _ hr, v.map (fun a => f' * a), hmul v hv,
      hmapH f' hf' v, ?_⟩
    rw [← hmapId f' u hue, huv]
    ext i j
    simp only [Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, nsmul_eq_mul]
    ring
  refine ⟨fun u hu => hi e₁ he₁ u hu, fun x hx hxe y hy hye => (hd2 y (chalf_sub_of S T h1 hye)).2 hy x hx
    (half_sub_of S T h1 hxe), fun y hye H => (hd2 y (chalf_sub_of S T h1 hye)).1 fun x hx _ => ?_,
    fun x hxe H => (hd3 x (half_sub_of S T h1 hxe)).1 fun y hy _ => ?_,
    hfinE e e₁ he₁.1 (fun u hu => half_sub_of S T h1 hu) (hi e₁ he₁) (fun k hk => hfin k hk e (Or.inl rfl)),
    hfinE (cA D e) (cA D e₁) hc₁.1 (fun u hu => chalf_sub_of S T h1 hu) (hi (cA D e₁) hc₁)
      (fun k hk => hfin k hk (cA D e) (Or.inr rfl)),
    fun x hx => hop e (Or.inl rfl) x (half_sub_of S T h1 hx),
    fun y hy => hop (cA D e) (Or.inr rfl) y (chalf_sub_of S T h1 hy)⟩
  · rw [symplO_left_e₁ S T hye]
    exact H _ (hi e₁ he₁ x hx) (hmapH e₁ he₁.1 x)
  · rw [symplO_right_ce₁ S T hxe]
    exact H _ (hi (cA D e₁) hc₁ y hy) (hmapH (cA D e₁) hc₁.1 y)


open Classical in
theorem splitLin_of (hPD : PlaceLatDual D) (hlev : LatLevel D) : SplitLin D := by
  intro ψ S T χS χT om hω ΛS ΛT hS hT P e he f₀ hf₀ hvac Tm hTm e₁ he₁ h1 g h hg hh x y hx hy
  have hψ := hω.std
  obtain ⟨hΛe₁, hLL₁, hdY₁, hdX₁, hfX₁, hfY₁, -, hoY₁⟩ := facts_at_e₁ hPD hψ S T hS hT he he₁ h1
  obtain ⟨-, hvi, hP⟩ := hPD ψ hψ S T ΛS ΛT hS hT
  obtain ⟨hd2, -, -, -⟩ := hP P e he
  obtain ⟨Tc, -, huniq, htheta, -⟩ :=
    placeModelAt_of hPD ψ hψ S T ΛS ΛT hS hT P e he f₀ hf₀ hvac e (Or.inl rfl)
  have hthm : ∀ Φ, IsSBHalf e (latAll S T ΛS ΛT) Φ → IsThetaFunO ψ S T (Tm Φ) := fun Φ hΦ => by
    rw [huniq Tm hTm Φ hΦ]; exact htheta Φ hΦ
  obtain ⟨r, hr, hsplit⟩ := hω.om_split e₁ he₁ g h hg hh x y hx hy
  set c : ℂ := (r : ℂ) * (splitFacO χS χT x y : ℂ) with hcdef
  have hc0 : c ≠ 0 := mul_ne_zero (by exact_mod_cast hr.ne') (Circle.coe_ne_zero _)
  obtain ⟨k₁, hk₁, h₁⟩ := hvi e₁ he₁ g h hg hh
  obtain ⟨k₂, hk₂, h₂⟩ := hvi e₁ he₁ g⁻¹ h⁻¹ (suppAt_inv_fp hg) (suppAt_inv_fp hh)
  have h₁' : ∀ t ∈ latAll S T ΛS ΛT, k₁ • actO S T g⁻¹⁻¹ h⁻¹⁻¹ t ∈ latAll S T ΛS ΛT := by
    simpa only [inv_inv] using h₁
  have hSBp : ∀ Φ, IsSBHalf e (latAll S T ΛS ΛT) Φ →
      IsSBHalf e (latAll S T ΛS ΛT) (fun t => Φ (actO S T g h t)) :=
    fun Φ hΦ => sb_comp S T g h hk₁ h₁ hk₂ h₂ hΦ
  have hSBq : ∀ Φ, IsSBHalf e (latAll S T ΛS ΛT) Φ →
      IsSBHalf e (latAll S T ΛS ΛT) (fun t => Φ (actO S T g⁻¹ h⁻¹ t)) :=
    fun Φ hΦ => sb_comp S T g⁻¹ h⁻¹ hk₂ h₂ hk₁ h₁' hΦ
  have hindSB : IsSBHalf e (latAll S T ΛS ΛT) (halfInd e (latAll S T ΛS ΛT)) :=
    (isSBHalf_iff S T).2 Four.isSB_ind
  have hf₀T : Tm (halfInd e (latAll S T ΛS ΛT)) = f₀ := by
    have := hTm.vac
    rwa [one_smul] at this

  have hG := hSBp _ hindSB
  have hG₁ := hthm _ hG
  have hw : om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) = c • f₀ := by
    by_contra hne
    have hw0 : om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) - c • f₀ ≠ 0 :=
      sub_ne_zero.2 hne
    have hwθ : IsThetaFunO ψ S T (om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) -
        c • f₀) := by
      rw [sub_eq_add_neg, ← neg_smul]
      exact Formalism.IndefR.Eqv.thetaO_add (hω.om_pres _ _ hG₁) (Formalism.IndefR.Eqv.thetaO_smul _ hf₀)

    have hfixG : ∀ u ∈ latAll S T ΛS ΛT, (IsHalf e₁ u ∨ IsHalf (cA D e₁) u) →
        heisO ψ S T (actO S T g⁻¹ h⁻¹ u) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) =
          Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t)) := by
      intro u hu hue
      rcases hue with hue | hue
      · have hqu : IsHalf e (actO S T g⁻¹ h⁻¹ u) := isHalf_actO_fp S T _ _ (half_sub_of S T h1 hue)
        rw [← hTm.trans _ hG _ hqu]
        congr 1
        funext t
        rw [Formalism.IndefR.Eqv.actO_add, Formalism.IndefR.Eqv.actO_inv_actO, halfInd_add S T hu (half_sub_of S T h1 hue)]
      · have hqu : IsHalf (cA D e) (actO S T g⁻¹ h⁻¹ u) := isHalf_actO_fp S T _ _ (chalf_sub_of S T h1 hue)
        rw [← hTm.modul _ hG _ hqu]
        congr 1
        funext t
        by_cases hc : actO S T g h t ∈ latAll S T ΛS ΛT ∧ IsHalf e (actO S T g h t)
        · have h1' : symplO S T t (actO S T g⁻¹ h⁻¹ u) = symplO S T (actO S T g h t) u := by
            rw [← Formalism.IndefR.Eqv.symplO_actO S T g h t (actO S T g⁻¹ h⁻¹ u), Formalism.IndefR.Eqv.actO_inv_actO]
          rw [h1', (hd2 u (chalf_sub_of S T h1 hue)).2 hu _ hc.1 hc.2, one_mul]
        · have : halfInd e (latAll S T ΛS ΛT) (actO S T g h t) = 0 := by unfold halfInd; rw [if_neg hc]
          rw [this, mul_zero]
    have hfix : ∀ u ∈ latAll S T ΛS ΛT, (IsHalf e₁ u ∨ IsHalf (cA D e₁) u) →
        heisO ψ S T u (om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) - c • f₀) =
          om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) - c • f₀ := by
      intro u hu hue
      have e1 := hω.om_heis g h (actO S T g⁻¹ h⁻¹ u) _ hG₁
      rw [Formalism.IndefR.Eqv.actO_inv_actO, hfixG u hu hue] at e1
      have e2 : heisO ψ S T u f₀ = f₀ := hvac u hu (hue.imp (half_sub_of S T h1) (chalf_sub_of S T h1))
      rw [← heisL_apply, map_sub, map_smul, heisL_apply, heisL_apply, ← e1, e2]
    obtain ⟨ℓ, hℓ, hℓw⟩ := exists_invForm ψ S T e₁ he₁.2.1 (latAll S T ΛS ΛT) hLL₁ hdY₁ hfX₁ hfY₁ hoY₁
      (fun f hf => by
        obtain ⟨k, hk, hk'⟩ := hlev ψ hψ S T ΛS ΛT hS hT f hf
        exact ⟨k, hk, fun u hu _ => hk' u hu⟩)
      hwθ (fun u hu hue => hfix u hu (Or.inl hue)) (fun u hu hue => hfix u hu (Or.inr hue)) hw0
    apply hℓw
    have hΨSB : IsSBHalf e (latAll S T ΛS ΛT)
        ((fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t)) - halfInd e (latAll S T ΛS ΛT)) := by
      rw [sub_eq_add_neg, ← neg_one_smul ℂ (halfInd e (latAll S T ΛS ΛT))]
      exact (isSBHalf_iff S T).2 (((isSBHalf_iff S T).1 hG).add (((isSBHalf_iff S T).1 hindSB).smul (-1)))
    have hev := evalYZero_zero S T ψ he₁ h1 (latAll S T ΛS ΛT) hΛe₁ hLL₁ hdX₁ hfY₁ Tm hTm.modul hthm ℓ hℓ hΨSB
      (fun t ht h0 => by
        show halfInd e (latAll S T ΛS ΛT) (actO S T g h t) - halfInd e (latAll S T ΛS ΛT) t = 0
        rw [actO_fix S T he.2 h1 hg hh ht h0, sub_self])
    rw [map_sub, map_sub, hf₀T] at hev
    rw [map_sub, map_smul, hsplit ℓ hℓ _ hG₁, smul_eq_mul, ← mul_sub, hev, mul_zero]

  let Tm' : (WO S T → ℂ) →ₗ[ℂ] (WO S T → ℂ) :=
    c⁻¹ • ((om (g, h)).comp (Tm.comp (Formalism.IndefR.Eqv.pull S T g h)))
  have hTm'ap : ∀ Φ, Tm' Φ = c⁻¹ • om (g, h) (Tm (fun t => Φ (actO S T g h t))) := fun Φ => rfl
  have hTm' : IsPlaceModel ψ (symplO S T) (heisO ψ S T) e (latAll S T ΛS ΛT) 1 f₀ Tm' := by
    refine ⟨fun Φ hΦ x₀ hx₀ => ?_, fun Φ hΦ y₀ hy₀ => ?_, ?_⟩
    · rw [hTm'ap, hTm'ap]
      have hq : IsHalf e (actO S T g⁻¹ h⁻¹ x₀) := isHalf_actO_fp S T _ _ hx₀
      have e1 : (fun t => Φ (actO S T g h t + x₀)) =
          fun t => Φ (actO S T g h (t + actO S T g⁻¹ h⁻¹ x₀)) := by
        funext t; rw [Formalism.IndefR.Eqv.actO_add, Formalism.IndefR.Eqv.actO_inv_actO]
      show c⁻¹ • om (g, h) (Tm (fun t => Φ (actO S T g h t + x₀))) = _
      rw [e1, hTm.trans _ (hSBp Φ hΦ) _ hq, hω.om_heis g h _ _ (hthm _ (hSBp Φ hΦ)),
        Formalism.IndefR.Eqv.actO_inv_actO, ← heisL_apply, ← heisL_apply, map_smul]
    · rw [hTm'ap, hTm'ap]
      have hq : IsHalf (cA D e) (actO S T g⁻¹ h⁻¹ y₀) := isHalf_actO_fp S T _ _ hy₀
      have e1 : (fun t => ψ (symplO S T (actO S T g h t) y₀) * Φ (actO S T g h t)) =
          fun t => ψ (symplO S T t (actO S T g⁻¹ h⁻¹ y₀)) * Φ (actO S T g h t) := by
        funext t
        rw [← Formalism.IndefR.Eqv.symplO_actO S T g h t (actO S T g⁻¹ h⁻¹ y₀), Formalism.IndefR.Eqv.actO_inv_actO]
      show c⁻¹ • om (g, h) (Tm (fun t => ψ (symplO S T (actO S T g h t) y₀) * Φ (actO S T g h t))) = _
      rw [e1, hTm.modul _ (hSBp Φ hΦ) _ hq, hω.om_heis g h _ _ (hthm _ (hSBp Φ hΦ)),
        Formalism.IndefR.Eqv.actO_inv_actO, ← heisL_apply, ← heisL_apply, map_smul]
    · rw [one_smul, hTm'ap]
      show c⁻¹ • om (g, h) (Tm (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t))) = f₀
      rw [hw, smul_smul, inv_mul_cancel₀ hc0, one_smul]
  refine ⟨r, hr, fun Φ hΦ => ?_, fun hstab hnorm => ?_⟩
  · have e1 := huniq Tm' hTm' _ (hSBq Φ hΦ)
    have e2 := huniq Tm hTm _ (hSBq Φ hΦ)
    rw [← e2, hTm'ap] at e1
    have e3 : (fun t => (fun t => Φ (actO S T g⁻¹ h⁻¹ t)) (actO S T g h t)) = Φ := by
      funext t; exact congrArg Φ (Formalism.IndefR.Eqv.actO_actO_inv S T g h t)
    rw [e3] at e1
    rw [← e1, smul_smul, mul_inv_cancel₀ hc0, one_smul]
  · obtain ⟨μ, 𝓕, ⟨hHaar, hFD, -⟩, hn⟩ := hnorm
    have hindeq : (fun t => halfInd e (latAll S T ΛS ΛT) (actO S T g h t)) = halfInd e (latAll S T ΛS ΛT) := by
      funext t
      unfold halfInd
      by_cases ht : IsHalf e t
      · have h2 := (isHalf_actO_iff S T g h t).2 ht
        simp only [hstab t ht, ht, h2, and_true]
      · have h2 : ¬ IsHalf e (actO S T g h t) := fun h' => ht ((isHalf_actO_iff S T g h t).1 h')
        simp only [ht, h2, and_false, if_false]
    rw [hindeq, hf₀T] at hw
    have hU := hω.om_unit μ 𝓕 hHaar hFD (g, h) f₀ hf₀
    rw [hw] at hU
    have hn' : ∫ w in 𝓕, ‖f₀ w‖ ^ 2 ∂μ = 1 := hn
    have hint : Integrable (fun w => ‖f₀ w‖ ^ 2) (μ.restrict 𝓕) := by
      by_contra hni
      rw [integral_undef hni] at hn'
      exact zero_ne_one hn'
    have hI : ∫⁻ w in 𝓕, ‖f₀ w‖ₑ ^ 2 ∂μ = 1 := by
      have h3 := ofReal_integral_eq_lintegral_ofReal hint
        (Filter.Eventually.of_forall fun w => by simp only [Pi.zero_apply]; positivity)
      rw [hn', ENNReal.ofReal_one] at h3
      rw [h3]
      congr 1
      funext w
      rw [ENNReal.ofReal_pow (norm_nonneg _), ofReal_norm_eq_enorm]
    have hsm : (fun w => ‖(c • f₀) w‖ₑ ^ 2) = fun w => ‖c‖ₑ ^ 2 * ‖f₀ w‖ₑ ^ 2 := by
      funext w
      rw [Pi.smul_apply, smul_eq_mul, enorm_mul, mul_pow]
    rw [hsm, lintegral_const_mul' _ _ (by simp), hI, mul_one] at hU
    rw [← ofReal_norm_eq_enorm, ← ENNReal.ofReal_pow (norm_nonneg _), ENNReal.ofReal_eq_one] at hU
    have hcn : ‖c‖ = 1 := (pow_eq_one_iff_of_nonneg (norm_nonneg c) two_ne_zero).1 hU
    have hsf : ‖(splitFacO χS χT x y : ℂ)‖ = 1 := Circle.norm_coe _
    rw [hcdef, norm_mul, hsf, mul_one, Complex.norm_real, Real.norm_eq_abs, abs_of_pos hr] at hcn
    exact hcn

end Formalism.IndefR.Fin

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLin =====

-- ===== clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLinF =====
-- clump-header: {"m": "Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLinF", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.LatSelf\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceFinal\npublic import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.IndefR.Fin

theorem splitLinF (D : Formalism.BasicNotions.D7) : SplitLin D := splitLin_of (placeLatDual D) (latLevelF D)

end Formalism.IndefR.Fin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.SplitLinF =====
