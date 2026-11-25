module

public import Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod
public import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvBasisCmp
public import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi
public import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Partners
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.FrobeniusCoeffSupportBddBelow
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.GaloisActionFrobeniusComm
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvEquiv
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvRhoC
import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded
import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.ConstantCoeffPi0EqZeroOfP9ring, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.RhoFfEqUnitMul, Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.ConstantCoeffPi0EqZeroOfP9ring =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.ConstantCoeffPi0EqZeroOfP9ring", "h": "module\n\npublic import Formalism.DistinguishedUnitIdeals.ExistsConstOfInvariantMod\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvBasisCmp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

theorem cf_sub_level_kernel_detection {Ks D : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
    (f g : Amb LL Ks D) (i : ℤ) : cf (f - g) i = cf f i - cf g i := by
  simp [cf]

theorem constSeries_add {Ks D : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
    (d d' : D) : cstD (LL := LL) Ks (d + d') = cstD Ks d + cstD Ks d' := by
  simp [cstD, TensorProduct.tmul_add]

theorem constSeries_sum {Ks D : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
    {q : ℕ} (d : Fin q → D) : cstD (LL := LL) Ks (∑ k, d k) = ∑ k, cstD Ks (d k) := by
  classical
  induction (Finset.univ : Finset (Fin q)) using Finset.induction_on with
  | empty => simp [cstD]
  | insert a t ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, constSeries_add, ih]

theorem constSeries_C_smul {Ks D : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
    (r : LL) (d : D) :
    HahnSeries.ofPowerSeries ℤ Ks (PowerSeries.C (algebraMap LL Ks r)) • cstD (LL := LL) Ks d =
      cstD Ks (r • d) := by
  rw [HahnSeries.ofPowerSeries_C, HahnSeries.C_apply, HahnModule.single_zero_smul_eq_smul]
  simp only [cstD]
  rw [← HahnModule.of_smul]
  congr 1
  ext j
  rw [HahnSeries.coeff_smul, HahnSeries.coeff_single, HahnSeries.coeff_single]
  split_ifs
  · rw [algebraMap_smul, TensorProduct.tmul_smul]
  · rw [smul_zero]

theorem coeff_constSeries {Ks D : Type} [CommRing Ks] [Algebra LL Ks] [AddCommGroup D] [Module LL D]
    (d : D) (i : ℤ) : cf (cstD (LL := LL) Ks d) i = if i = 0 then (1 : Ks) ⊗ₜ[LL] d else 0 := by
  simp [cf, cstD, HahnSeries.coeff_single]

theorem Q_eq_unit_mul_qP (hs1 : W.s = 1)
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O))) :
    ∃ u : (LetA O n)ˣ, W.Q = (u : LetA O n) * qP W := by
  obtain ⟨u, hu⟩ := hp9.2.2.2.2.1
  refine ⟨u, ?_⟩
  have hQq : W.Q = W.q := by
    show (W.φA ^ (W.s - 1)) W.q = W.q
    rw [hs1, Nat.sub_self, pow_zero]
    rfl
  rw [hQq, hu]
  congr 1
  funext i
  simp [Formalism.MainNotions.DeltaInvariantLattices.Eat, qP]

theorem constantCoeff_pi0_eq_zero_of_p9ring
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
    (j : ZMod n) : PowerSeries.constantCoeff (W.π₀ j) = 0 := by
  obtain ⟨w, hw⟩ := hp9.2.2.1
  have hp1 : PD.p - 1 ≠ 0 := by have := PD.hp.two_le; omega
  rw [hw]
  simp [letπ, zero_pow hp1]

def comparisonOnLetter {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (i : ZMod n) :
    ↥((latOf C).N i) →+ T.V ⊗[Qp] B where
  toFun y := W.cmp T ⟨C.t i y, y.2⟩
  map_zero' := by
    rw [← map_zero (W.cmp T)]
    exact lvBasis_cmp_congr _ _ (C.t_zero i)
  map_add' y y' := by
    rw [← lvBasis_cmp_add y.2 y'.2 ((W.N T).add_mem y.2 y'.2)]
    exact lvBasis_cmp_congr _ _ (C.t_add i _ _)

theorem comparison_of_reduction {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (i : ZMod n)
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
    {r : ℕ} (e : Fin r → C.V) (he : ∀ k, e k ∈ (latOf C).N i) (x : C.V) (hx : x ∈ (latOf C).N i)
    (a : Fin r → O) (hred : x - ∑ k, PowerSeries.C (a k) • e k ∈ E.sm (PowerSeries.X : PowerSeries O) ((latOf C).N i)) :
    W.cmp T ⟨C.t i x, hx⟩ = ∑ k, algebraMap O LL (a k) • W.cmp T ⟨C.t i (e k), he k⟩ := by
  obtain ⟨z, hz, hzeq⟩ := Submodule.mem_map.1 hred
  rw [LinearMap.lsmul_apply] at hzeq
  have key : (⟨x, hx⟩ : ↥((latOf C).N i)) =
      ∑ k, PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i)) + (PowerSeries.X : PowerSeries O) • ⟨z, hz⟩ := by
    apply Subtype.ext
    simp only [Submodule.coe_add, Submodule.coe_sum, Submodule.coe_smul]
    rw [hzeq]
    abel
  have hF := congrArg (comparisonOnLetter C i) key

  rw [map_add (f := _), map_sum] at hF
  have hC : ∀ k, comparisonOnLetter C i (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))) =
      algebraMap O LL (a k) • W.cmp T ⟨C.t i (e k), he k⟩ := by
    intro k
    have hm : (baseIdOf hR).d (PowerSeries.C (a k)) • C.t i (e k) ∈ W.N T := by
      rw [← C.t_smul]
      exact (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))).2
    have h0 : comparisonOnLetter C i (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))) =
        W.cmp T ⟨(baseIdOf hR).d (PowerSeries.C (a k)) • C.t i (e k), hm⟩ :=
      lvBasis_cmp_congr (a := C.t i (PowerSeries.C (a k) • e k))
        (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))).2 hm (C.t_smul i _ _)
    rw [h0]
    refine lvBasis_cmp_smul_const (he k) _ (a k) (fun j => ?_) hm
    rw [BaseId.d_apply]
    have h1 : (baseIdOf hR).ι (PowerSeries.C (a k)) = PowerSeries.C (a k) :=
      (baseIdOf hR).ι.commutes (a k)
    rw [h1, PowerSeries.constantCoeff_C]
  have hX : comparisonOnLetter C i ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))) = 0 := by
    have hm : W.π₀ • C.t i z ∈ W.N T := by
      rw [← BaseId.d_X, ← C.t_smul]
      exact ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))).2
    have h0 : comparisonOnLetter C i ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))) =
        W.cmp T ⟨W.π₀ • C.t i z, hm⟩ :=
      lvBasis_cmp_congr (a := C.t i ((PowerSeries.X : PowerSeries O) • z))
        ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))).2 hm
        (by rw [C.t_smul, BaseId.d_X])
    rw [h0, lvBasis_cmp_smul_const hz W.π₀ 0 (constantCoeff_pi0_eq_zero_of_p9ring hp9) hm, map_zero, zero_smul]
  rw [hX, add_zero, Finset.sum_congr rfl (fun k _ => hC k)] at hF
  exact hF

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.ConstantCoeffPi0EqZeroOfP9ring =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.RhoFfEqUnitMul =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.RhoFfEqUnitMul", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.MapEvalPsPi\nimport Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Graded\npublic import Formalism.DistinguishedUnitIdeals.DistinguishedOrderProofs.Partners\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G Formalism.MainNotions.N.Ln03 TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}
    {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ}
    {Λ κ : PowerSeries O} {r : ℕ} {lam : Fin r → Dc W T c}

theorem rho_ff_eq_unit_mul [IsDomain O] (Hy : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) {j M g η : ℕ} {kind : ℕ → Kind} {b : ℕ → ℕ}
    (hk1b : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b)
    (hU : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt) (hj : j ≤ ell)
    (s : ℕ) (hs : s < ell) :
    ∃ ε : (PowerSeries (KsW W s))ˣ, rhoL hR c s ((baseIdOf hR).Bs.ff' ell j M g) =
      (ε : PowerSeries (KsW W s)) * PowerSeries.X ^ ordF ell j (baseIdOf hR).Bs.ℓ M g s := by
  obtain ⟨u, hu⟩ := filtration_shape_holds O (baseIdOf hR).Bs ell j M g hj (frobenius_uniformizer_identity hR)
  obtain ⟨ε, hε⟩ := hk1b s hs
  have hε' : rhoL hR c s ((baseIdOf hR).Bs.p s) = (ε : PowerSeries (KsW W s)) * PowerSeries.X := hε
  have hX : IsUnit (rhoL hR c s PowerSeries.X) := (hU s hs).1
  have hp : ∀ s' < ell, s' ≠ s → IsUnit (rhoL hR c s ((baseIdOf hR).Bs.p s')) := (hU s hs).2
  have hV : IsUnit (rhoL hR c s (u : PowerSeries O) * rhoL hR c s PowerSeries.X ^ M *
      ∏ s' ∈ (Finset.range ell).erase s,
        rhoL hR c s ((baseIdOf hR).Bs.p s' ^ ordF ell j (baseIdOf hR).Bs.ℓ M g s')) := by
    refine ((u.isUnit.map (rhoL hR c s)).mul (hX.pow M)).mul
      (Finset.prod_induction _ IsUnit (fun a b ha hb => ha.mul hb) isUnit_one fun s' hs' => ?_)
    rw [map_pow]
    exact (hp s' (Finset.mem_range.1 (Finset.mem_of_mem_erase hs')) (Finset.ne_of_mem_erase hs')).pow _
  refine ⟨hV.unit * ε ^ ordF ell j (baseIdOf hR).Bs.ℓ M g s, ?_⟩
  rw [hu, map_mul, map_mul, map_pow, map_prod, ← Finset.mul_prod_erase _ _ (Finset.mem_range.2 hs), map_pow,
    hε', Units.val_mul, IsUnit.unit_spec, Units.val_pow_eq_pow_val]
  ring

theorem rho_sub_mem [IsDomain O] (Hy : LvHyp Lb hR uZ ιZ C c ell Λ κ lam) {j M g η : ℕ} {kind : ℕ → Kind} {b : ℕ → ℕ}
    (hk1b : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b)
    (hU : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt) (hj : j ≤ ell)
    (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M) (s : ℕ) (hs : s < ell) :
    ∀ z ∈ Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ)),
      ∃ y ∈ Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) 0),
        z = HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s ((baseIdOf hR).Bs.ff' ell j M g)) • y := by
  intro z hz
  obtain ⟨ε, hε⟩ := rho_ff_eq_unit_mul Hy hk1b hU hj s hs
  have hle : ordF ell j (baseIdOf hR).Bs.ℓ M g s ≤ ((baseIdOf hR).Bs.ℓ - 1) * M := by
    unfold ordF
    split_ifs <;> omega
  have hTw : (fun i : ℤ => Tw (LL := LL) (D := Dc W T c) 0 (i + -((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ))) =
      Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) := by
    funext i
    unfold Tw
    by_cases h : ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) ≤ i
    · rw [if_pos h, if_pos (by omega)]
    · rw [if_neg h, if_neg (by omega)]
  have hz' : tp (KsW W s) (-((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ)) • z ∈
      Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) 0) :=
    (xi_shift_holds LL (KsW W s) (Dc W T c) _ _ z).2 (by rw [hTw]; exact hz)
  refine ⟨HahnSeries.ofPowerSeries ℤ (KsW W s) ((↑ε⁻¹ : PowerSeries (KsW W s)) *
      PowerSeries.X ^ (((baseIdOf hR).Bs.ℓ - 1) * M - ordF ell j (baseIdOf hR).Bs.ℓ M g s)) •
      (tp (KsW W s) (-((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ)) • z),
    xi_module_structure LL (KsW W s) (Dc W T c) _ (tw_mono 0) _ _ hz', ?_⟩
  have hmul : (ε : PowerSeries (KsW W s)) * PowerSeries.X ^ ordF ell j (baseIdOf hR).Bs.ℓ M g s *
      ((↑ε⁻¹ : PowerSeries (KsW W s)) *
        PowerSeries.X ^ (((baseIdOf hR).Bs.ℓ - 1) * M - ordF ell j (baseIdOf hR).Bs.ℓ M g s)) =
      PowerSeries.X ^ (((baseIdOf hR).Bs.ℓ - 1) * M) := by
    rw [mul_mul_mul_comm, Units.mul_inv, one_mul, ← pow_add, Nat.add_sub_cancel' hle]
  rw [hε, ← mul_smul, ← map_mul, hmul, ← mul_smul, HahnSeries.ofPowerSeries_X_pow, tp,
    HahnSeries.single_mul_single, add_neg_cancel, one_mul, HahnSeries.single_zero_one, one_smul]

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.RhoFfEqUnitMul =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.FrobeniusCoeffSupportBddBelow\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.ConstantCoeffPi0EqZeroOfP9ring\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.CrystallineToDeRhamInjective\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.GaloisActionFrobeniusComm\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvBasisCmp\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvEquiv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.PfLvRhoC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.RhoFfEqUnitMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln03.Pf

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.MainNotions.WachCoordinates Formalism.MainNotions.WachCoordinates.Br Formalism.ExponentWindows Formalism.ExponentWindows.G TensorProduct Formalism.MainNotions.N.Ln03
open Formalism.MainNotions.N.Ln03.Pf.ConvolutionAlt

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL] [TopologicalSpace LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} [NeZero n] {W : LocWach PD LL O v n}
    {Lb : LevB W} {hR : Ring9 W} {uZ : ℤ_[PD.p]ˣ} {ιZ : ℤ_[PD.p] →+* O}

theorem lvData_localizesConst_of_crystalline [IsDomain O] {T : LocLat G Qp LL O} {C : Coord W (baseIdOf hR) T} {c : ZMod n} {ell : ℕ}
    {H : ℕ → ℕ} {κ : PowerSeries O} {r : ℕ} {lam : Fin r → Dc W T c}
    (Hy : LvHyp Lb hR uZ ιZ C c ell (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell) κ lam) (j M g η : ℕ)
    (kind : ℕ → Kind) (b : ℕ → ℕ) (m : ℕ) (e : Fin r → C.V)
    (hκ : κ = Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell * ∏ s ∈ Finset.range ell, (baseIdOf hR).Bs.p s ^ m)
    (he : ∀ k, e k ∈ (latOf C).N (c - (ell : ZMod n))) (hlam : lam = lamOf C c ell e)
    (k1b : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).K1b)
    (unitsAt : (lvModel Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).UnitsAt)
    (hP5 : ∀ i, (latOf C).P5M i m)
    (levN_eq : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      W.levN T i ζ x k = ιV PD (LL := LL) (V := T.V) (Lb.levB T i ζ x k))
    (levB_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ (x : ↥(W.N T)) (m : ℕ)
      (hx : W.Q ^ m • W.φD T (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.Q ^ m • W.φD T (x : W.DD T), hx⟩ k =
        ∑ᶠ j : ℕ, PowerSeries.coeff j (W.lev i ζ (W.Q ^ m)) •
          (((PD.p : LL) ^ (k - (j : ℤ))) •
            φVB PD (LL := LL) (V := T.V) (Lb.levB T (i - 1) (ζ ^ PD.p) x (k - (j : ℤ)))))
    (lev_φ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (levB_Γ : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → ∀ (g : W.Gam) (i : ZMod n) (ζ ζ' : LL) (j a : ℕ),
      IsPrimitiveRoot ζ (PD.p ^ j) → (j : WithTop ℚ) ≤ v (algebraMap O LL (W.χΓ g : O) - (a : LL)) →
      ζ' = ζ ^ a → ∀ (x : ↥(W.N T)) (hx : W.γD T g (x : W.DD T) ∈ W.N T) (k : ℤ),
      Lb.levB T i ζ ⟨W.γD T g (x : W.DD T), hx⟩ k = (algebraMap O LL (W.χΓ g : O)) ^ k • Lb.levB T i ζ' x k)
    (cmp_eq : ∀ (i : ZMod n) (x : ↥(W.N T)), W.cmp T ((letE i : LetA O n) • x) = Lb.levB T i 1 x 0)
    (hT : IsCrys PD T.ρ) (hs1 : W.s = 1) (hp2 : PD.p ≠ 2) {Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop}
    (hP4 : Formalism.MainNotions.DeltaInvariantLattices.p4 W Pt T)
    (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
    (hj : j ≤ ell) (h3g : 3 * g ≤ ((baseIdOf hR).Bs.ℓ - 1) * M) :
    (lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).LocalizesConst M e := by
  have hp0 : (PD.p : LL) ≠ 0 := by
    intro h0
    have h := W.v_l
    rw [h0, v.map_zero] at h
    exact absurd h (by simp)
  have hQ := Q_eq_unit_mul_qP hs1 hp9
  have hℓ : (baseIdOf hR).Bs.ℓ = PD.p := rfl
  intro x a w hx hγ hred hw s hs
  have hgamma : ∃ (y : ↥(W.N T)) (_ : W.γD T W.gam (C.t (c - (ell : ZMod n)) x) ∈ W.N T),
      W.γD T W.gam (C.t (c - (ell : ZMod n)) x) - C.t (c - (ell : ZMod n)) x = W.π₀ ^ M • (y : W.DD T) := by
    obtain ⟨z, hz, hzeq⟩ := Submodule.mem_map.1 hγ
    rw [LinearMap.lsmul_apply] at hzeq
    have hg : W.gamK = W.gam := W.gamK_eq_one hs1 hp2
    have h1 : C.t (c - (ell : ZMod n)) ((latOf C).γ (c - (ell : ZMod n)) x) =
        W.γD T W.gam (C.t (c - (ell : ZMod n)) x) := by rw [t_γ, hg]
    have h2 : W.γD T W.gam (C.t (c - (ell : ZMod n)) x) - C.t (c - (ell : ZMod n)) x = W.π₀ ^ M • C.t (c - (ell : ZMod n)) z := by
      rw [← h1, ← C.t_sub, ← hzeq, C.t_smul, map_pow, BaseId.d_X]
    refine ⟨⟨C.t (c - (ell : ZMod n)) z, hz⟩, ?_, h2⟩
    have h3 : W.γD T W.gam (C.t (c - (ell : ZMod n)) x) = W.π₀ ^ M • C.t (c - (ell : ZMod n)) z + C.t (c - (ell : ZMod n)) x := by rw [← h2]; abel
    rw [h3]
    exact (W.N T).add_mem ((W.N T).smul_mem _ hz) hx
  obtain ⟨y, hxg, hxy⟩ := hgamma
  have hcoef : ∀ i : ℤ, i < (((PD.p - 1) * M : ℕ) : ℤ) → i ≠ 0 →
      frobeniusCoeff Lb T c ell ⟨C.t (c - (ell : ZMod n)) x, hx⟩ i = 0 := by
    intro i hi hi0
    have hb : Lb.levB T (c - (ell : ZMod n)) 1 ⟨C.t (c - (ell : ZMod n)) x, hx⟩ i = 0 := by
      rcases lt_or_gt_of_ne hi0 with h | h
      · exact levelExpansion_neg_eq_zero levN_eq hs1 T hP4 _ _ i h
      · exact expansion_at_one levN_eq levB_Γ hs1 hp2 T hT hP4 hp9 _ _ y M hxg hxy i h hi
    apply Subtype.ext
    show ((PD.p : LL) ^ ((ell : ℤ) * i)) • (φVB PD (LL := LL) (V := T.V))^[ell]
      (Lb.levB T (c - (ell : ZMod n)) 1 ⟨C.t (c - (ell : ZMod n)) x, hx⟩ i) = 0
    rw [hb, Function.iterate_fixed (map_zero _), smul_zero]
  let comparisonOnLetter {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (i : ZMod n) :
      ↥((latOf C).N i) →+ T.V ⊗[Qp] B := {
    toFun y := W.cmp T ⟨C.t i y, y.2⟩
    map_zero' := by
      rw [← map_zero (W.cmp T)]
      exact lvBasis_cmp_congr _ _ (C.t_zero i)
    map_add' y y' := by
      rw [← lvBasis_cmp_add y.2 y'.2 ((W.N T).add_mem y.2 y'.2)]
      exact lvBasis_cmp_congr _ _ (C.t_add i _ _)
  
    }
  have comparison_of_reduction {T : LocLat G Qp LL O} (C : Coord W (baseIdOf hR) T) (i : ZMod n)
      (hp9 : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations W 1 (PD.p - 1) W.π₀ (fun _ => Polynomial.X + Polynomial.C ((PD.p : ℕ) : O)))
      {r : ℕ} (e : Fin r → C.V) (he : ∀ k, e k ∈ (latOf C).N i) (x : C.V) (hx : x ∈ (latOf C).N i)
      (a : Fin r → O) (hred : x - ∑ k, PowerSeries.C (a k) • e k ∈ E.sm (PowerSeries.X : PowerSeries O) ((latOf C).N i)) :
      W.cmp T ⟨C.t i x, hx⟩ = ∑ k, algebraMap O LL (a k) • W.cmp T ⟨C.t i (e k), he k⟩ := by
    obtain ⟨z, hz, hzeq⟩ := Submodule.mem_map.1 hred
    rw [LinearMap.lsmul_apply] at hzeq
    have key : (⟨x, hx⟩ : ↥((latOf C).N i)) =
        ∑ k, PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i)) + (PowerSeries.X : PowerSeries O) • ⟨z, hz⟩ := by
      apply Subtype.ext
      simp only [Submodule.coe_add, Submodule.coe_sum, Submodule.coe_smul]
      rw [hzeq]
      abel
    have hF := congrArg (comparisonOnLetter C i) key

    rw [map_add (f := _), map_sum] at hF
    have hC : ∀ k, comparisonOnLetter C i (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))) =
        algebraMap O LL (a k) • W.cmp T ⟨C.t i (e k), he k⟩ := by
      intro k
      have hm : (baseIdOf hR).d (PowerSeries.C (a k)) • C.t i (e k) ∈ W.N T := by
        rw [← C.t_smul]
        exact (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))).2
      have h0 : comparisonOnLetter C i (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))) =
          W.cmp T ⟨(baseIdOf hR).d (PowerSeries.C (a k)) • C.t i (e k), hm⟩ :=
        lvBasis_cmp_congr (a := C.t i (PowerSeries.C (a k) • e k))
          (PowerSeries.C (a k) • (⟨e k, he k⟩ : ↥((latOf C).N i))).2 hm (C.t_smul i _ _)
      rw [h0]
      refine lvBasis_cmp_smul_const (he k) _ (a k) (fun j => ?_) hm
      rw [BaseId.d_apply]
      have h1 : (baseIdOf hR).ι (PowerSeries.C (a k)) = PowerSeries.C (a k) :=
        (baseIdOf hR).ι.commutes (a k)
      rw [h1, PowerSeries.constantCoeff_C]
    have hX : comparisonOnLetter C i ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))) = 0 := by
      have hm : W.π₀ • C.t i z ∈ W.N T := by
        rw [← BaseId.d_X, ← C.t_smul]
        exact ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))).2
      have h0 : comparisonOnLetter C i ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))) =
          W.cmp T ⟨W.π₀ • C.t i z, hm⟩ :=
        lvBasis_cmp_congr (a := C.t i ((PowerSeries.X : PowerSeries O) • z))
          ((PowerSeries.X : PowerSeries O) • (⟨z, hz⟩ : ↥((latOf C).N i))).2 hm
          (by rw [C.t_smul, BaseId.d_X])
      rw [h0, lvBasis_cmp_smul_const hz W.π₀ 0 (constantCoeff_pi0_eq_zero_of_p9ring hp9) hm, map_zero, zero_smul]
    rw [hX, add_zero, Finset.sum_congr rfl (fun k _ => hC k)] at hF
    exact hF
  have hcoef0 : frobeniusCoeff Lb T c ell ⟨C.t (c - (ell : ZMod n)) x, hx⟩ 0 =
      ∑ k, algebraMap O LL (a k) • lam k := by
    apply Subtype.ext
    rw [Submodule.coe_sum]
    show ((PD.p : LL) ^ ((ell : ℤ) * 0)) • (φVB PD (LL := LL) (V := T.V))^[ell]
      (Lb.levB T (c - (ell : ZMod n)) 1 ⟨C.t (c - (ell : ZMod n)) x, hx⟩ 0) = _
    have hlet : ((letE (c - (ell : ZMod n)) : LetA O n) • (⟨C.t (c - (ell : ZMod n)) x, hx⟩ : ↥(W.N T))) =
        ⟨C.t (c - (ell : ZMod n)) x, hx⟩ := Subtype.ext (C.t_letter _ x)

    rw [mul_zero, zpow_zero, one_smul, ← cmp_eq, hlet,
    comparison_of_reduction C (c - (ell : ZMod n)) hp9 e he x hx a hred, ← Module.End.coe_pow, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_smul, Submodule.coe_smul, hlam, lambda_coe_eq_frobenius_pow C c ell e k (he k)]
  have aux : ∀ A Bv : LvT hR uZ ιZ T c Hy.delta ell,
      (∀ i, cf (prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • A)) i - cf (prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • Bv)) i ∈
        (Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) i).baseChange (KsW W s)) →
      prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • (A - Bv)) ∈
        Xi (KsW W s) (Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ)) := by
    intro A Bv h i
    rw [smul_sub, map_sub, cf_sub_level_kernel_detection]
    exact h i
  refine rho_sub_mem Hy k1b unitsAt hj h3g s hs _
    (aux (@id (LvT hR uZ ιZ T c Hy.delta ell) ((lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s w)) (@id (LvT hR uZ ιZ T c Hy.delta ell) ((lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s (cst a))) fun i => ?_)
  have hK : cf (prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • @id (LvT hR uZ ιZ T c Hy.delta ell) ((lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).loc s w))) i =
      (1 : KsW W s) ⊗ₜ[LL] frobeniusCoeff Lb T c ell ⟨C.t (c - (ell : ZMod n)) x, hx⟩ i :=
    level_expansion_d Hy j M g η kind b m hκ k1b unitsAt hP5 hQ levN_eq levB_φ lev_φ hp0 x hx w hw s hs i
  have hL : prL s (Formalism.ExponentWindows.abelian₂ (baseIdOf hR).Bs.p H ell • @id (LvT hR uZ ιZ T c Hy.delta ell) ((lvData Hy ((baseIdOf hR).Bs.ff' ell j M g) kind b η).locL s (cst a))) =
      ∑ k, HahnSeries.ofPowerSeries ℤ (KsW W s) (rhoL hR c s (cst a k)) • cstD (KsW W s) (lam k) :=
    locLIs_holds Hy j M g η kind b H rfl k1b unitsAt s hs (cst a)
  rw [hK, hL]
  simp only [cst, rhoC_holds, constSeries_C_smul]
  rw [← constSeries_sum, coeff_constSeries]
  by_cases hm : ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) ≤ i
  · have htop : Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) i = ⊤ := by
      unfold Tw
      rw [if_pos hm]
    rw [htop, Submodule.baseChange_top]
    exact Submodule.mem_top
  · have hbot : Tw (LL := LL) (D := Dc W T c) ((((baseIdOf hR).Bs.ℓ - 1) * M : ℕ) : ℤ) i = ⊥ := by
      unfold Tw
      rw [if_neg hm]
    rw [hbot, Submodule.baseChange_bot, Submodule.mem_bot]
    rw [hℓ] at hm
    push_neg at hm
    by_cases h0 : i = 0
    · subst h0
      rw [if_pos rfl, hcoef0, sub_self]
    · rw [if_neg h0, hcoef i hm h0, TensorProduct.tmul_zero, sub_zero]

end Formalism.MainNotions.N.Ln03.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelKernelDetection.LvDataLocalizesConstOfCrystalline =====
