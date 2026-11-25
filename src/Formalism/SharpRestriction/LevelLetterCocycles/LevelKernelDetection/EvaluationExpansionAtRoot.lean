module

public import Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod
public import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded
public import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi
import Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates
import Formalism.WeaklyAdmissibleFiltrations.Statement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.TensorSumSingleEval, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.EvaluationExpansionAtRoot

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.TensorSumSingleEval =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.TensorSumSingleEval", "h": "module\n\npublic import Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod\npublic import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcParametersShiftInvariant\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.WachCoordinates\nimport Formalism.WeaklyAdmissibleFiltrations.Statement\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.K8

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct

section Free

variable {LL D ι : Type} [Field LL] [AddCommGroup D] [Module LL D] [Fintype ι] [DecidableEq ι]

def evK (i : ι) : (ι → LL) ⊗[LL] D →ₗ[LL] D :=
  (TensorProduct.lid LL D).toLinearMap ∘ₗ LinearMap.rTensor D (LinearMap.proj i)

theorem evaluation_tmul (i : ι) (b : ι → LL) (d : D) : evK i (b ⊗ₜ[LL] d) = b i • d := by
  simp [evK]

theorem evaluation_smul (i : ι) (a : ι → LL) (z : (ι → LL) ⊗[LL] D) :
    evK i (a • z) = a i • evK i z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul b d =>
    rw [TensorProduct.smul_tmul', evaluation_tmul, evaluation_tmul, smul_eq_mul, Pi.mul_apply,
      mul_smul]
  | add x y hx hy => rw [smul_add, map_add (f := _), map_add (f := _), hx, hy, smul_add]

theorem tensor_sum_single_eval (z : (ι → LL) ⊗[LL] D) :
    z = ∑ i, (Pi.single i (1 : LL) : ι → LL) ⊗ₜ[LL] evK i z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul b d =>
    have hb : ∑ i, b i • (Pi.single i (1 : LL) : ι → LL) = b := by
      ext j
      simp [Finset.sum_apply, Pi.single_apply]
    simp_rw [evaluation_tmul, ← TensorProduct.smul_tmul, ← TensorProduct.sum_tmul, hb]
  | add x y hx hy =>
    conv_lhs => rw [hx, hy]
    simp only [map_add (f := _), TensorProduct.tmul_add, Finset.sum_add_distrib]

theorem mem_baseChange_iff (X : Submodule LL D) (z : (ι → LL) ⊗[LL] D) :
    z ∈ X.baseChange (ι → LL) ↔ ∀ i, evK i z ∈ X := by
  constructor
  · intro h i
    have h' : z ∈ Submodule.span (ι → LL)
        ((X.map (TensorProduct.mk LL (ι → LL) D 1) : Submodule LL _) : Set ((ι → LL) ⊗[LL] D)) := by
      rw [← Submodule.baseChange_eq_span]; exact h
    clear h
    induction h' using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨m, hm, rfl⟩ := hx
      simpa [evaluation_tmul] using hm
    | zero => simp
    | add x y _ _ hx hy => rw [map_add (f := _)]; exact X.add_mem hx hy
    | smul a x _ hx => rw [evaluation_smul]; exact X.smul_mem _ hx
  · intro h
    rw [tensor_sum_single_eval z]
    exact Submodule.sum_mem _ fun i _ => Submodule.tmul_mem_baseChange_of_mem _ (h i)

theorem xi_iff (X : ℤ → Submodule LL D) (f : Amb LL (ι → LL) D) :
    f ∈ Xi (ι → LL) X ↔ ∀ i k, evK i (cf f k) ∈ X k := by
  change (∀ k, cf f k ∈ (X k).baseChange (ι → LL)) ↔ _
  simp only [mem_baseChange_iff]
  exact forall_comm

theorem xi_unit_tp (X : ℤ → Submodule LL D) (hX : Monotone X) (a b : PowerSeries (ι → LL)) (hab : a * b = 1)
    (g : ℤ) (f : Amb LL (ι → LL) D) :
    (HahnSeries.ofPowerSeries ℤ (ι → LL) a * tp (ι → LL) g) • f ∈ Xi (ι → LL) X ↔
      f ∈ Xi (ι → LL) (fun i => X (i + g)) := by
  rw [mul_smul, ← xi_shift_holds LL (ι → LL) D X g f]
  constructor
  · intro h
    have h2 := xi_module_structure LL (ι → LL) D X hX b _ h
    rwa [← mul_smul, ← map_mul, show b * a = 1 by rw [mul_comm]; exact hab, map_one, one_smul] at h2
  · intro h
    exact xi_module_structure LL (ι → LL) D X hX a _ h

end Free

end Formalism.MainNotions.N.Ln03.K8
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.TensorSumSingleEval =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.EvaluationExpansionAtRoot =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.EvaluationExpansionAtRoot", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.TensorSumSingleEval\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.K8

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct

theorem inverse_unit_mul_X_pow {Ks : Type} [CommRing Ks] (w : (PowerSeries Ks)ˣ) (m : ℕ) :
    Ring.inverse (HahnSeries.ofPowerSeries ℤ Ks ((w : PowerSeries Ks) * PowerSeries.X ^ m)) =
      HahnSeries.ofPowerSeries ℤ Ks (↑w⁻¹ : PowerSeries Ks) * tp Ks (-(m : ℤ)) := by
  have h1 : HahnSeries.ofPowerSeries ℤ Ks (↑w : PowerSeries Ks) *
      HahnSeries.ofPowerSeries ℤ Ks (↑w⁻¹ : PowerSeries Ks) = 1 := by
    rw [← map_mul, Units.mul_inv, map_one]
  have ht : tp Ks (m : ℤ) * tp Ks (-(m : ℤ)) = 1 := by
    rw [tp, tp, HahnSeries.single_mul_single, add_neg_cancel, mul_one]
    rfl
  let U : (HahnSeries ℤ Ks)ˣ :=
    { val := HahnSeries.ofPowerSeries ℤ Ks (↑w : PowerSeries Ks) * tp Ks (m : ℤ)
      inv := HahnSeries.ofPowerSeries ℤ Ks (↑w⁻¹ : PowerSeries Ks) * tp Ks (-(m : ℤ))
      val_inv := by linear_combination (tp Ks (m : ℤ) * tp Ks (-(m : ℤ))) * h1 + ht
      inv_val := by linear_combination (tp Ks (m : ℤ) * tp Ks (-(m : ℤ))) * h1 + ht }
  have hU : HahnSeries.ofPowerSeries ℤ Ks ((w : PowerSeries Ks) * PowerSeries.X ^ m) = ↑U := by
    rw [map_mul, HahnSeries.ofPowerSeries_X_pow]
    rfl
  rw [hU, Ring.inverse_unit]
  rfl

theorem evaluation_comm_tensor {LL D ι : Type} [Field LL] [AddCommGroup D] [Module LL D] [Fintype ι]
    [DecidableEq ι] (i : ι) (z : D ⊗[LL] (ι → LL)) :
    evK i (TensorProduct.comm LL D (ι → LL) z) = TensorProduct.piScalarRight LL LL D ι z i := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul d f =>
    rw [TensorProduct.comm_tmul, evaluation_tmul, TensorProduct.piScalarRight_apply,
      TensorProduct.piScalarRightHom_tmul]
  | add z z' hz hz' => rw [map_add (f := _), map_add (f := _), hz, hz', map_add (f := _), Pi.add_apply]

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n}


open Classical in
theorem evaluation_expansion_at_root (s : ℕ) (D : Type) [AddCommGroup D] [Module LL D]
    (g : Rs LL PD.p s → D) (ζ : Rs LL PD.p s) : evK ζ (toKsD W s D g) = g ζ := by
  rw [toKsD, LinearMap.comp_apply, LinearEquiv.coe_coe, LinearEquiv.coe_coe, evaluation_comm_tensor,
    LinearEquiv.apply_symm_apply]

theorem rho_product_unit_mul {ell : ℕ}
    (hk1b : ∀ s < ell, ∃ ε : (PowerSeries (KsW W s))ˣ,
      rhoL hR c s ((baseIdOf hR).Bs.p s) = (ε : PowerSeries (KsW W s)) * PowerSeries.X)
    (hunits : ∀ s < ell, IsUnit (rhoL hR c s PowerSeries.X) ∧
      ∀ s' < ell, s' ≠ s → IsUnit (rhoL hR c s ((baseIdOf hR).Bs.p s')))
    (E : ℕ → ℕ) (s : ℕ) (hs : s < ell) :
    ∃ w : (PowerSeries (KsW W s))ˣ,
      rhoL hR c s (∏ s' ∈ Finset.range ell, (baseIdOf hR).Bs.p s' ^ E s') =
        (w : PowerSeries (KsW W s)) * PowerSeries.X ^ E s := by
  obtain ⟨ε, hε⟩ := hk1b s hs
  have hrest : IsUnit (rhoL hR c s
      (∏ s' ∈ (Finset.range ell).erase s, (baseIdOf hR).Bs.p s' ^ E s')) := by
    rw [map_prod]
    refine Finset.prod_induction _ IsUnit (fun a b ha hb => ha.mul hb) isUnit_one fun s' hs' => ?_
    rw [map_pow]
    obtain ⟨hne, hlt⟩ := Finset.mem_erase.1 hs'
    exact ((hunits s hs).2 s' (Finset.mem_range.1 hlt) hne).pow _
  obtain ⟨u, hu⟩ := hrest
  refine ⟨ε ^ E s * u, ?_⟩
  rw [← Finset.mul_prod_erase _ _ (Finset.mem_range.2 hs), map_mul, ← hu, map_pow, hε]
  push_cast
  ring


open Classical in
theorem levelCond_iff (ell : ℕ)
    (hk1b : ∀ s < ell, ∃ ε : (PowerSeries (KsW W s))ˣ,
      rhoL hR c s ((baseIdOf hR).Bs.p s) = (ε : PowerSeries (KsW W s)) * PowerSeries.X)
    (hunits : ∀ s < ell, IsUnit (rhoL hR c s PowerSeries.X) ∧
      ∀ s' < ell, s' ≠ s → IsUnit (rhoL hR c s ((baseIdOf hR).Bs.p s')))
    (E : ℕ → ℕ) (s : ℕ) (hs : s < ell) (x : C.V) (hx : x ∈ (latOf C).N c)
    (hFil : ∀ s, Antitone (FilD W T c s)) :
    Ring.inverse (HahnSeries.ofPowerSeries ℤ (KsW W s)
        (rhoL hR c s (∏ s' ∈ Finset.range ell, (baseIdOf hR).Bs.p s' ^ E s'))) •
      expN Lb s T c ⟨C.t c x, hx⟩ ∈ Xi (KsW W s) (fun i => FilD W T c s (-i)) ↔
    ∀ (ζ : Rs LL PD.p s) (k : ℤ),
      (⟨Lb.levB T c ζ ⟨C.t c x, hx⟩ k, Lb.mem T c ζ ⟨C.t c x, hx⟩ k⟩ : Dc W T c) ∈
        FilD W T c s ((E s : ℤ) - k) := by
  obtain ⟨w, hw⟩ := rho_product_unit_mul hk1b hunits E s hs
  have hX : Monotone fun i : ℤ => FilD W T c s (-i) := fun i j hij => hFil s (neg_le_neg hij)
  rw [hw, inverse_unit_mul_X_pow, xi_unit_tp _ hX _ _ (Units.inv_mul w), xi_iff]
  refine forall_congr' fun ζ => forall_congr' fun k => ?_
  have hc : cf (expN Lb s T c ⟨C.t c x, hx⟩) k = coefN Lb s T c ⟨C.t c x, hx⟩ k := rfl
  rw [hc, coefN, evaluation_expansion_at_root, show -(k + -(E s : ℤ)) = (E s : ℤ) - k by ring]

end Formalism.MainNotions.N.Ln03.K8
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.EvaluationExpansionAtRoot =====
