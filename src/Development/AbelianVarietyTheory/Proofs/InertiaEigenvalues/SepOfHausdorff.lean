module

public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisDD
public import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.CrystallineSubrepresentation
public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAlgClosedTiltFieldAndValuationRing
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemRangeOfFrobeniusEquationCyclotomicFixed
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemEurOfTeichmullerSeries
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltWittEqZeroOfPrimeMulEqZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.UnitDualParts
import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.WachLettersFree
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroEqZeroIff
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqTopOfSpanImage

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisMul, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBaseChangeSpan, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitSumTensorDualOfCrys, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SepOfHausdorff

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisMul", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisDD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.CrystallineSubrepresentation\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.UnitDualParts\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.WachLettersFree\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.WachTensor

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.UnitDualParts GlobalTheory.EtaleExact
open GlobalTheory.IndefiniteRowSideFullHecke.CrystallineSubrepresentation (QuotCrys TensorCrys DualCrys)
open GlobalTheory.IndefiniteRowSideFullHecke.WachLettersFreeness

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n} {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA}
    (E : EtTie W RA RW inclR φR gR πA)

theorem exists_frob_mat (hm : ∀ m : Ideal W.EE, m.IsMaximal → m.map E.ioE.toRingHom ≠ ⊤)
    (hφ : Function.Surjective φR) (T : LocLat G Qp LL O) {ι : Type} [Fintype ι]
    (e : Module.Basis ι W.EE (W.DD T)) : ∃ U : ι → ι → W.EE, ∀ a,
      E.jD T (e a) = ∑ b, E.ioE (U a b) • TWmap φR T (E.jD T (e b)) := by
  choose U hU using fun a => (Submodule.mem_span_range_iff_exists_fun W.EE).1
    ((exists_frob_inv E hm hφ T e).ge (Submodule.mem_top (x := e a)))
  refine ⟨U, fun a => ?_⟩

  conv_lhs => rw [← hU a, map_sum]
  exact Finset.sum_congr rfl fun b _ => by rw [E.jD_smul, E.jD_φ]

end GlobalTheory.WachTensor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBaseChangeSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBaseChangeSpan", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisDD\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\npublic import Mathlib.RingTheory.TensorProduct.IsBaseChangeFree\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices GlobalTheory.WachTensor

noncomputable section

namespace GlobalTheory.NL.BaseField

theorem range_of_approx {E E' R : Type} [CommRing E] [CommRing E'] [CommRing R] (f : E →+* R) (f' : E' →+* R)
    (p : ℕ) (hc : IsPrecomplete (Ideal.span {(p : E')}) E') (hsep : ∀ x : R, (∀ k : ℕ, (p : R) ^ k ∣ x) → x = 0)
    (h : ∀ x, ∃ y z, f x = f' y + p * f z) (x : E) : ∃ y, f' y = f x := by
  choose y z hyz using h
  let S : ℕ → E' := fun k => ∑ j ∈ Finset.range k, (p : E') ^ j * y (z^[j] x)
  have hS : ∀ k, f x = f' (S k) + (p : R) ^ k * f (z^[k] x) := by
    intro k
    induction k with
    | zero => simp [S]
    | succ k ih =>
      rw [ih, hyz (z^[k] x), Function.iterate_succ_apply']
      simp only [S, Finset.sum_range_succ, map_add (f := _), map_mul, map_pow, map_natCast]
      ring
  have hmem : ∀ (k : ℕ) (a : E'), a ∈ (Ideal.span {(p : E')} ^ k • ⊤ : Submodule E' E') ↔ (p : E') ^ k ∣ a := by
    intro k a
    rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
  obtain ⟨L, hL⟩ := hc.prec (f := S) (fun {m n} hmn => by
    rw [SModEq.sub_mem, hmem]
    induction n, hmn using Nat.le_induction with
    | base => simp
    | succ n hn ih =>
      have : S m - S (n + 1) = S m - S n - (p : E') ^ n * y (z^[n] x) := by
        simp only [S, Finset.sum_range_succ]; ring
      rw [this]
      exact dvd_sub ih ((pow_dvd_pow _ hn).mul_right _))
  refine ⟨L, (sub_eq_zero.1 (hsep _ fun k => ?_)).symm⟩
  obtain ⟨c, hc⟩ := (hmem k _).1 (SModEq.sub_mem.1 (hL k))
  refine ⟨f' c + f (z^[k] x), ?_⟩
  have h2 := congrArg f' hc
  rw [map_sub, map_mul, map_pow, map_natCast] at h2
  rw [hS k]
  linear_combination h2

theorem series_ext {O R : Type} [CommRing O] [CommRing R] [Algebra O R] (f g : PowerSeries O →ₐ[O] R) (π : R)
    (hf : f PowerSeries.X = π) (hg : g PowerSeries.X = π) (hsep : ∀ x : R, (∀ k : ℕ, π ^ k ∣ x) → x = 0)
    (a : PowerSeries O) : f a = g a := by
  refine sub_eq_zero.1 (hsep _ fun k => ?_)
  induction k generalizing a with
  | zero => simp
  | succ k ih =>
    have hC : ∀ (u : PowerSeries O →ₐ[O] R) c, u (PowerSeries.C c) = algebraMap O R c := fun u c => u.commutes c
    rw [PowerSeries.eq_X_mul_shift_add_const a, map_add (f := _), map_add (f := _), map_mul, map_mul, hf, hg, hC, hC,
      add_sub_add_right_eq_sub, ← mul_sub, pow_succ']
    exact mul_dvd_mul_left _ (ih _)

theorem isBaseChange_span {A E M ι : Type} [CommRing A] [CommRing E] [Algebra A E] [AddCommGroup M] [Module A M]
    [Module E M] [IsScalarTower A E M] (c : Module.Basis ι E M) (hl : LinearIndependent A c) :
    IsBaseChange E (Submodule.span A (Set.range c)).subtype := by
  let b := Module.Basis.span hl
  refine IsBaseChange.of_equiv ((b.baseChange E).equiv c (Equiv.refl _)) fun x => ?_
  have : (((b.baseChange E).equiv c (Equiv.refl _)).toLinearMap.restrictScalars A) ∘ₗ
      (TensorProduct.mk A E _ 1) = (Submodule.span A (Set.range c)).subtype := b.ext fun i => by
    have h := (b.baseChange E).equiv_apply i c (Equiv.refl _)
    rw [Module.Basis.baseChange_apply] at h
    simpa [b, Module.Basis.span_apply] using h
  exact LinearMap.congr_fun this x

theorem map_id_smul {O R M M' : Type} [CommRing O] [CommRing R] [Algebra O R] [AddCommGroup M] [Module O M]
    [AddCommGroup M'] [Module O M'] (e : M →ₗ[O] M') (r : R) (x : R ⊗[O] M) :
    TensorProduct.map (LinearMap.id : R →ₗ[O] R) e (r • x) = r • TensorProduct.map LinearMap.id e x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | add x x' hx hx' => simp only [smul_add, map_add (f := _), hx, hx']
  | tmul r' u => simp [TensorProduct.smul_tmul']

theorem map_id_comm {O R M M' : Type} [CommRing O] [CommRing R] [Algebra O R] [AddCommGroup M] [Module O M]
    [AddCommGroup M'] [Module O M'] (e : M →ₗ[O] M') (f : R →ₗ[O] R) (a : M →ₗ[O] M) (a' : M' →ₗ[O] M')
    (h : ∀ t, e (a t) = a' (e t)) (x : R ⊗[O] M) :
    TensorProduct.map (LinearMap.id : R →ₗ[O] R) e (TensorProduct.map f a x) =
      TensorProduct.map f a' (TensorProduct.map LinearMap.id e x) := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | add x x' hx hx' => simp only [map_add (f := _), hx, hx']
  | tmul r' u => simp [h]

theorem map_id_symm {O R M M' : Type} [CommRing O] [CommRing R] [Algebra O R] [AddCommGroup M] [Module O M]
    [AddCommGroup M'] [Module O M'] (e : M ≃ₗ[O] M') (x : R ⊗[O] M) :
    TensorProduct.map (LinearMap.id : R →ₗ[O] R) e.symm.toLinearMap
      (TensorProduct.map LinearMap.id e.toLinearMap x) = x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | add x x' hx hx' => simp only [map_add (f := _), hx, hx']
  | tmul r' u => simp

theorem mem_GK_of_chi {l : ℕ} [Fact l.Prime] (P : LocPrime l) {K K' : FinExt l} {s : ℕ} (h' : K'.1 ≤ Ks K' s)
    (h0 : K0 K' = K0 K) {g : GQ l} (hg : g ∈ GK K) (hχ : P.χQ g = 1) : g ∈ GK K' := by
  have h1 : Ks K' s ≤ IntermediateField.fixedField (Subgroup.zpowers g) := by
    have hm : ∀ x, g x = x → x ∈ IntermediateField.fixedField (Subgroup.zpowers g) := by
      intro x hx
      rw [IntermediateField.mem_fixedField_iff]
      intro f hf
      have : Subgroup.zpowers g ≤ MulAction.stabilizer (GQ l) x := by
        rw [Subgroup.zpowers_le]; exact hx
      exact this hf
    refine sup_le ?_ ?_
    · rw [h0]
      intro x hx
      exact hm x (hg ⟨x, hx.1⟩)
    · rw [IntermediateField.adjoin_le_iff]
      intro x hx
      obtain ⟨a, ha, hga⟩ := P.χQ_cyc g s x hx
      refine hm x ?_
      rw [hχ] at ha
      have h2 : ((l : ℤ) ^ s) ∣ (1 - a : ℤ) := by
        rw [← Padic.norm_int_le_pow_iff_dvd]
        simpa using ha
      have h3 : a ≡ 1 [MOD l ^ s] := (Nat.modEq_iff_dvd).2 (by simpa using h2)
      rw [hga, pow_eq_pow_mod a hx, h3, ← pow_eq_pow_mod 1 hx, pow_one]
  intro x
  exact (IntermediateField.mem_fixedField_iff _ _).1 (h1 (h' x.2)) g (Subgroup.mem_zpowers g)

section Generic

variable {G G' : Type} [Group G] [TopologicalSpace G] [Group G'] [TopologicalSpace G']
    {Qp K₀ K K₀' K' : Type} [Field Qp] [Field K₀] [Field K] [Field K₀'] [Field K']
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    [Algebra Qp K₀'] [Algebra Qp K'] [Algebra K₀' K'] [IsScalarTower Qp K₀' K']
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    [Algebra K₀' B] [IsScalarTower Qp K₀' B] [Algebra K₀' BdR] [Algebra K' BdR] [IsScalarTower Qp K' BdR]
    [IsScalarTower K₀' K' BdR] [IsScalarTower Qp K₀' BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {PD' : PeriodData G' Qp K₀' K' B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n n' : ℕ}
    {W : LocWach PD LL O v n} {W' : LocWach PD' LL O v n'} {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {gR' : G' → (RW →ₐ[O] RW)}
    {πA : RA} (E : EtTie W RA RW inclR φR gR πA) (E' : EtTie W' RA RW inclR φR gR' πA)

theorem n_ne_zero (W : LocWach PD LL O v n) : n ≠ 0 := by
  haveI := PD.finK₀
  rw [W.n_eq]
  exact Module.finrank_pos.ne'

theorem φA_letE (W : LocWach PD LL O v n) (i : ZMod n) : W.φA (letE (i - 1)) = letE i := by
  funext k
  change W.φ₀ ((Pi.single (i - 1) 1 : LetA O n) (k - 1)) = (Pi.single i 1 : LetA O n) k
  by_cases h : k = i
  · subst h; simp
  · rw [Pi.single_eq_of_ne h, Pi.single_eq_of_ne (fun e => h (sub_left_injective e)), map_zero]

theorem io_mem (hO : Function.Injective (algebraMap O LL)) (hd : Descends E') (hi : Function.Injective inclR)
    (hint : ∀ x : W'.EE, (∃ y, inclR y = E'.ioE x) → ∃ a : LetA O n', algebraMap _ W'.EE a = x)
    (hH : ∀ g' : G', W'.resΓ g' = 1 → ∃ g : G, W.resΓ g = 1 ∧ gR g = gR' g')
    (hsep : ∀ x : RA, (∀ k : ℕ, πA ^ k ∣ x) → x = 0) (a : LetA O n) : ∃ a', E'.io a' = E.io a := by
  classical
  haveI : NeZero n := ⟨n_ne_zero W⟩
  have h1 := hd (ZMod n) (fun i j => if j = i - 1 then 1 else 0)
    (fun i => E.ioE (algebraMap (LetA O n) W.EE (letE i))) ?_ ?_
  · have h2 : ∀ i, ∃ a', E'.io a' = E.io (letE i) := by
      intro i
      obtain ⟨e, he⟩ := h1 i
      rw [E.ioE_ext] at he
      obtain ⟨a', rfl⟩ := hint e ⟨_, he.symm⟩
      rw [E'.ioE_ext] at he
      exact ⟨a', hi he⟩
    choose u hu using h2
    have h3 : ∀ f : PowerSeries O, E'.io (fun _ => f) = E.io (fun _ => f) := fun f =>
      series_ext (E'.io.comp (AlgHom.pi fun _ => AlgHom.id O _)) (E.io.comp (AlgHom.pi fun _ => AlgHom.id O _)) πA
        E'.io_π E.io_π hsep f
    refine ⟨∑ i, u i * fun _ => a i, ?_⟩

    simp only [map_sum, map_mul, hu, h3]

    simp only [← map_mul, ← map_sum]
    congr 1
    funext k
    simp [letE, Finset.sum_apply, Pi.single_apply]
  · intro g' hg' i
    obtain ⟨g, hg, e⟩ := hH g' hg'
    rw [← e, ← ioE_γE E hO, hg, map_one]
    rfl
  · intro i
    rw [Finset.sum_eq_single (i - 1) (fun j _ hj => by simp [hj]) (by simp), if_pos rfl, map_one, one_mul,
      ← ioE_φE E hO, W.φE_ext]
    exact congrArg _ (congrArg _ (φA_letE W i).symm)

theorem ioE_mem (hp : PD'.p = PD.p) (hA : ∀ a, ∃ a', E'.io a' = E.io a)
    (hsep : ∀ x : RW, (∀ k : ℕ, (PD.p : RW) ^ k ∣ x) → x = 0) (x : W.EE) : ∃ x', E'.ioE x' = E.ioE x := by
  refine range_of_approx E.ioE.toRingHom E'.ioE.toRingHom PD.p (hp ▸ W'.EE_complete.toIsPrecomplete) hsep ?_ x
  intro x
  obtain ⟨a, m, h⟩ := W.EE_dense x 1
  obtain ⟨z, hz⟩ := Ideal.mem_span_singleton.1 h
  obtain ⟨a', ha'⟩ := hA a
  obtain ⟨u, hu⟩ := (W.EE_π.pow m).exists_right_inv
  obtain ⟨u', hu'⟩ := (W'.EE_π.pow m).exists_right_inv
  refine ⟨algebraMap _ W'.EE a' * u', z * u, ?_⟩
  have h1 := congrArg E.ioE hu
  have h2 := congrArg E'.ioE hu'
  have h3 := congrArg E.ioE hz
  simp only [map_mul, map_pow, map_sub, map_one, map_natCast, E.ioE_ext, E'.ioE_ext, E.io_π, E'.io_π,
    pow_one] at h1 h2 h3
  change E.ioE x = E'.ioE _ + _ * E.ioE _
  rw [map_mul, map_mul, E'.ioE_ext, ha']
  linear_combination (E.ioE u) * h3 - (E.ioE x) * h1 + inclR (E.io a) * E'.ioE u' * h1
    - inclR (E.io a) * E.ioE u * h2

theorem jD_mem (hd : Descends E') (hm : ∀ m : Ideal W.EE, m.IsMaximal → m.map E.ioE.toRingHom ≠ ⊤)
    (hφ : Function.Surjective φR) (hE : ∀ x, ∃ x', E'.ioE x' = E.ioE x)
    (T : LocLat G Qp LL O) (T' : LocLat G' Qp LL O) (e : ↥T.L.T →ₗ[O] ↥T'.L.T)
    (hH : ∀ g' : G', W'.resΓ g' = 1 → ∃ g : G, W.resΓ g = 1 ∧ gR g = gR' g' ∧
      ∀ t, e (T.actT g t) = T'.actT g' (e t)) (x : W.DD T) :
    ∃ x', E'.jD T' x' = TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e (E.jD T x) := by
  obtain ⟨b⟩ := exists_basis_DD E T
  obtain ⟨U, hU⟩ := exists_frob_mat E hm hφ T b
  choose θ hθ using hE
  have h1 := mem_range_jD E' hd T' (fun a c => θ (U a c))
    (fun a => TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e (E.jD T (b a))) ?_ ?_
  · choose y hy using h1
    refine ⟨∑ a, θ (b.repr x a) • y a, ?_⟩
    conv_rhs => rw [← b.sum_repr x]

    simp only [map_sum, E.jD_smul, E'.jD_smul, hθ, hy, map_id_smul]
  · intro g' hg' a
    obtain ⟨g, hg, e1, e2⟩ := hH g' hg'
    rw [TWact, ← map_id_comm e _ (T.actT g) _ e2, ← e1]
    exact congrArg _ (jD_fixed E T g hg _)
  · intro a

    conv_lhs => rw [hU a, map_sum]
    refine Finset.sum_congr rfl fun c _ => ?_
    rw [map_id_smul, hθ, TWmap, TWmap, map_id_comm e _ LinearMap.id LinearMap.id (fun _ => rfl)]

theorem jD_smulA (T : LocLat G Qp LL O) (a : LetA O n) (x : W.DD T) :
    E.jD T (a • x) = inclR (E.io a) • E.jD T x := by
  rw [← E.ioE_ext, ← E.jD_smul, algebraMap_smul]

theorem N_eq (T : LocLat G Qp LL O) (T' : LocLat G' Qp LL O) (e : ↥T'.L.T ≃ₗ[O] ↥T.L.T)
    (hT : IsCrys PD T.ρ) (h10 : p10 W' T') {r : ℕ} (b : Module.Basis (Fin r) (LetA O n) ↥(W.N T))
    (hinj : Function.Injective E'.ioE)
    (hA : ∀ a, ∃ a', E'.io a' = E.io a) (hA' : ∀ a', ∃ a, E.io a = E'.io a')
    (hE : ∀ x, ∃ x', E'.ioE x' = E.ioE x) (hQ : E'.io W'.Q = E.io W.Q)
    (hD : ∀ x, ∃ x', TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e.toLinearMap (E'.jD T' x') = E.jD T x)
    (hD' : ∀ x', ∃ x, E.jD T x = TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e.toLinearMap (E'.jD T' x'))
    (hG : ∀ g' : G', ∃ g : G, gR g = gR' g' ∧ ∀ t, e (T'.actT g' t) = T.actT g (e t)) :
    TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e.toLinearMap '' (E'.jD T' '' (W'.N T' : Set (W'.DD T'))) =
      E.jD T '' (W.N T : Set (W.DD T)) := by
  let J : W'.DD T' →ₗ[O] TW RW T :=
    (TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e.toLinearMap) ∘ₗ E'.jD T'
  have hJ : ∀ x, TensorProduct.map (LinearMap.id : RW →ₗ[O] RW) e.toLinearMap (E'.jD T' x) = J x := fun _ => rfl
  simp only [hJ] at hD hD'
  have Jinj : Function.Injective J := fun x y h => E'.jD_inj T' (by
    rw [← map_id_symm e (E'.jD T' x), hJ, h, ← hJ, map_id_symm])
  have JE : ∀ (c : W'.EE) x, J (c • x) = E'.ioE c • J x := fun c x => by
    rw [← hJ, E'.jD_smul, map_id_smul, hJ]
  have JA : ∀ (c : LetA O n') x, J (c • x) = inclR (E'.io c) • J x := fun c x => by
    rw [← hJ, jD_smulA, map_id_smul, hJ]
  have Jφ : ∀ x, J (W'.φD T' x) = TWmap φR T (J x) := fun x => by
    rw [← hJ, E'.jD_φ, TWmap, map_id_comm e.toLinearMap _ LinearMap.id LinearMap.id (fun _ => rfl), hJ, TWmap]
  choose ψ hψ using hD
  choose θ hθ using hA
  choose θ' hθ' using hA'
  choose θE hθE using hE
  obtain ⟨C, hC⟩ := exists_basis_jD E T ((W.N_base T hT).basis b)
  have hb : ∀ j, (W.N_base T hT).basis b j = (b j : W.DD T) := fun j => by
    rw [IsBaseChange.basis_apply b (W.N_base T hT) j]; rfl
  have hli : LinearIndependent W'.EE fun j => ψ (b j : W.DD T) := by
    rw [Fintype.linearIndependent_iff]
    intro c hc j
    have h1 := congrArg J hc

    simp only [map_sum, JE, hψ, map_zero, ← hb, ← hC] at h1
    exact hinj ((Fintype.linearIndependent_iff.1 C.linearIndependent _ h1 j).trans (map_zero _).symm)
  have hsp : ⊤ ≤ Submodule.span W'.EE (Set.range fun j => ψ (b j : W.DD T)) := by
    intro y _
    obtain ⟨x, hx⟩ := hD' y
    refine (Submodule.mem_span_range_iff_exists_fun _).2
      ⟨fun j => θE (((W.N_base T hT).basis b).repr x j), Jinj ?_⟩
    rw [← hx]
    conv_rhs => rw [← ((W.N_base T hT).basis b).sum_repr x]

    simp only [map_sum, JE, E.jD_smul, hθE, hψ, hb]
  let c := Module.Basis.mk hli hsp
  have hc : ∀ j, J (c j) = E.jD T (b j : W.DD T) := fun j => by rw [Module.Basis.mk_apply, hψ]
  have hliA : LinearIndependent (LetA O n') c := by
    refine c.linearIndependent.restrict_scalars fun x y h => W'.EE_inj ?_
    simpa [Algebra.smul_def] using h
  have hmem : ∀ y, y ∈ Submodule.span (LetA O n') (Set.range c) ↔ ∃ x ∈ W.N T, E.jD T x = J y := by
    intro y
    rw [Submodule.mem_span_range_iff_exists_fun]
    constructor
    · rintro ⟨a, rfl⟩
      refine ⟨∑ j, θ' (a j) • (b j : W.DD T), Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (b j).2, ?_⟩

      simp only [map_sum, JA, jD_smulA, hθ', hc]
    · rintro ⟨x, hx, hy⟩
      refine ⟨fun j => θ (b.repr ⟨x, hx⟩ j), Jinj ?_⟩
      have h1 := congrArg Subtype.val (b.sum_repr ⟨x, hx⟩)
      rw [← hy]
      conv_rhs => rw [show x = _ from h1.symm]

      simp only [map_sum, JA, hθ, hc, AddSubmonoidClass.coe_finsetSum, SetLike.val_smul, jD_smulA]
  have hψN : ∀ x ∈ W.N T, ψ x ∈ Submodule.span (LetA O n') (Set.range c) :=
    fun x hx => (hmem _).2 ⟨x, hx, (hψ x).symm⟩
  obtain ⟨g', hg'⟩ := W'.resΓ_onto W'.gam
  obtain ⟨g, hg, hge⟩ := hG g'
  have Jγ : ∀ x y, E.jD T x = J y → E.jD T (W.γD T (W.resΓ g) x) = J (W'.γ T' y) := fun x y h => by
    rw [LocWach.γ, ← hg', ← hJ, E'.jD_act, TWact, map_id_comm _ _ _ (T.actT g) hge, hJ, ← h, E.jD_act, hg, TWact]
  have key := h10 (Submodule.span (LetA O n') (Set.range c)) ?_ (isBaseChange_span c hliA) ?_ ?_ ?_ ?_
  · rw [← key]
    ext z
    constructor
    · rintro ⟨_, ⟨y, hy, rfl⟩, rfl⟩
      exact (hmem y).1 hy
    · rintro ⟨x, hx, rfl⟩
      exact ⟨_, ⟨ψ x, hψN x hx, rfl⟩, hψ x⟩
  · refine ⟨r, c, fun j => Submodule.subset_span ⟨j, rfl⟩, fun x hx => ?_⟩
    obtain ⟨a, ha⟩ := (Submodule.mem_span_range_iff_exists_fun _).1 hx
    refine ⟨a, ha.symm, fun a' ha' => funext ?_⟩
    exact Fintype.linearIndependent_iffₛ.1 hliA a' a (ha'.symm.trans ha.symm)
  · intro y hy
    obtain ⟨x, hx, h⟩ := (hmem y).1 hy
    exact (hmem _).2 ⟨_, W.N_Γ T _ x hx, Jγ x y h⟩
  · intro y hy
    obtain ⟨x, hx, h⟩ := (hmem y).1 hy
    obtain ⟨w, hw, h2⟩ := W.N_π T (W.resΓ g) x hx
    refine ⟨ψ w, hψN w hw, Jinj ?_⟩
    change J ((letπ : LetA O n') • ψ w) = _
    rw [JA, hψ, map_sub, ← h, ← Jγ x y h, ← map_sub, h2, jD_smulA, E.io_π, E'.io_π]
  · intro y hy
    obtain ⟨x, hx, h⟩ := (hmem y).1 hy
    obtain ⟨k, hk⟩ := W.N_φ T x hx
    refine ⟨k, (hmem _).2 ⟨W.Q ^ k • W.φD T x, hk, ?_⟩⟩
    rw [JA, jD_smulA, map_pow, map_pow E'.io, hQ, Jφ, E.jD_φ, h]
  · intro y hy
    obtain ⟨x, hx, h⟩ := (hmem y).1 hy
    obtain ⟨k, hk⟩ := W.N_φinv T x hx
    have h1 : ∀ z ∈ Submodule.span (LetA O n) (W.φD T '' (W.N T : Set (W.DD T))),
        ∃ w ∈ φspan W' T' (Submodule.span (LetA O n') (Set.range c)), J w = E.jD T z := by
      intro z hz
      induction hz using Submodule.span_induction with
      | mem z hz =>
        obtain ⟨u, hu, rfl⟩ := hz
        exact ⟨_, Submodule.subset_span ⟨ψ u, hψN u hu, rfl⟩, by rw [Jφ, hψ, E.jD_φ]⟩
      | zero => exact ⟨0, zero_mem _, by rw [map_zero, map_zero]⟩
      | add z z' _ _ h1 h2 =>
        obtain ⟨w, hw, e1⟩ := h1
        obtain ⟨w', hw', e2⟩ := h2
        exact ⟨w + w', add_mem hw hw', by rw [map_add (f := _), map_add (f := _), e1, e2]⟩
      | smul a z _ h1 =>
        obtain ⟨w, hw, e1⟩ := h1
        exact ⟨θ a • w, Submodule.smul_mem _ _ hw, by rw [JA, jD_smulA, hθ, e1]⟩
    obtain ⟨w, hw, e1⟩ := h1 (W.Q ^ k • x) hk
    refine ⟨k, (show w = W'.Q ^ k • y from Jinj ?_) ▸ hw⟩
    rw [e1, JA, jD_smulA, map_pow, map_pow E'.io, hQ, h]

end Generic

end GlobalTheory.NL.BaseField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBaseChangeSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitSumTensorDualOfCrys =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitSumTensorDualOfCrys", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisDD\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsAlgClosedTiltFieldAndValuationRing\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemRangeOfFrobeniusEquationCyclotomicFixed\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.CrystallineSubrepresentation\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoeffZeroEqZeroIff\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.EqTopOfSpanImage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.UnitDualParts\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.WachTensor

open Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.UnitDualParts GlobalTheory.EtaleExact
open GlobalTheory.IndefiniteRowSideFullHecke.CrystallineSubrepresentation (LocQuotCrys LocTensorCrys LocDualCrys)

set_option synthInstance.maxHeartbeats 400000

variable {l : ℕ} [Fact l.Prime]

private theorem frobW_surjective_lemma : Function.Surjective (frobW l) := by
  have hC : IsAlgClosed (Cb l) := (GlobalTheory.TiltAlgClosed.isAlgClosed_tilt_and_valuationRing l).1
  have hf : Function.Surjective (frobenius (Cb l) l) := by
    first
      | exact surjective_frobenius (Cb l) l
  intro y
  obtain ⟨x, hx⟩ := WittVector.map_surjective (p := l) _ hf y
  unfold frobW
  exact ⟨x, hx⟩

theorem φRW_surjective (LL : FinExt l) : Function.Surjective (φRW LL) := by
  have hg : Function.Surjective (frobW l).toLinearMap := frobW_surjective_lemma
  intro y
  obtain ⟨x, rfl⟩ := LinearMap.lTensor_surjective (↥(OL LL)) hg y
  refine ⟨x, ?_⟩
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul a b => simp [φRW]
  | add a b ha hb => rw [map_add (f := _), map_add (f := _), ha, hb]

theorem map_ne_top {P : LocPrime l} {AI : LocAinf l P} {K : FinExt l} {s : ℕ} {LL : FinExt l}
    {h : Good K s LL}
    {W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K))}
    (E : EtSit P AI K s LL h W) (m : Ideal W.EE) (hm : m.IsMaximal) :
    m.map E.tie.ioE.toRingHom ≠ ⊤ := by
  have : Module.Finite ℤ_[l] ↥(OL LL) := GlobalTheory.EtaleExact.finite_OL LL
  have : IsNoetherianRing ↥(OL LL) := by
    first
      | exact isNoetherian_of_tower ℤ_[l] inferInstance
  refine GlobalTheory.EtaleExact.map_ne_top_of_tie E.tie (fun c => ?_) (fun x hx => ?_) m hm
  · rw [P.PD_p K]
    exact GlobalTheory.EtaleExact.isUnit_or_dvd_pow P LL c
  · exact GlobalTheory.EtaleExact.sep_RW LL x (by simpa [P.PD_p K] using hx)

theorem descends {P : LocPrime l} {AI : LocAinf l P} {K : FinExt l} {s : ℕ} {LL : FinExt l}
    {h : Good K s LL}
    {W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K))}
    (E : EtSit P AI K s LL h W) : Descends E.tie := by
  intro ι _ M w hg hw i
  exact _root_.GlobalTheory.FrobDescent.mem_range_of_fixed l P AI K s LL h W E ι M 0 w hg (fun i => by simpa using hw i) i

end GlobalTheory.WachTensor
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitSumTensorDualOfCrys =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SepOfHausdorff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SepOfHausdorff", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MemEurOfTeichmullerSeries\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsBaseChangeSpan\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.NBasisLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TiltWittEqZeroOfPrimeMulEqZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.UnitSumTensorDualOfCrys\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachModuleUniquenessCharacterisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL Formalism.MainNotions.DeltaInvariantLattices GlobalTheory.WachTensor

noncomputable section

namespace GlobalTheory.NL.BaseField

section Concrete

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {K : FinExt l} {s : ℕ} {LL : FinExt l}

theorem res_eq_one_iff (W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K)))
    (g : ↥(GK K)) : W.resΓ g = 1 ↔ P.χQ (g : GQ l) = 1 := by
  have h1 := W.χΓ_res g
  rw [P.PD_χ] at h1
  constructor
  · intro h
    rw [h, map_one, Units.val_one, map_one] at h1
    exact Units.ext ((algebraMap ℚ_[l] ↥LL.1).injective (h1.symm.trans (map_one _).symm))
  · intro h
    rw [h, Units.val_one, map_one] at h1
    apply W.χΓ_inj
    rw [map_one]
    exact Units.ext (Subtype.ext h1)

theorem ker_transfer {K' : FinExt l}
    (W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K)))
    (W' : LocWach (P.PD K') ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K')))
    (h : Good K s LL) (h0 : K0 K = K0 K') (g' : ↥(GK K')) (hg : W'.resΓ g' = 1) :
    ∃ g : ↥(GK K), W.resΓ g = 1 ∧ (g : GQ l) = g' :=
  have h1 := (res_eq_one_iff W' g').1 hg
  ⟨⟨g', mem_GK_of_chi P h.2.2.1 h0 g'.2 h1⟩, (res_eq_one_iff W _).2 h1, rfl⟩

theorem sep_of_hausdorff {R : Type} [CommRing R] (a : R) (h : IsHausdorff (Ideal.span {a}) R) (x : R)
    (hx : ∀ k : ℕ, a ^ k ∣ x) : x = 0 :=
  h.haus x fun k => by
    rw [SModEq.zero, smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton]
    exact hx k

end Concrete



theorem rings_mem (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (l : ℕ) [Fact l.Prime]
    (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL) (K' : FinExt l) (h' : Good K' s LL)
    (h0 : K0 K = K0 K') :
    (∀ a, ∃ a', ((F l).E K' s LL h').tie.io a' = ((F l).E K s LL h).tie.io a) ∧
      ∀ a, ∃ a', ((F l).E K' s LL h').tie.ioE a' = ((F l).E K s LL h).tie.ioE a := by
  obtain ⟨c1, -, c3, -, c5⟩ := GlobalTheory.HWL.TensorWitt.main l LL
  have h1 : ∀ a, ∃ a', ((F l).E K' s LL h').tie.io a' = ((F l).E K s LL h).tie.io a :=
    io_mem _ _ Subtype.val_injective (descends _) c3 (GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K' s LL h').2.2.2.2.2.1
      (fun g' hg' => by
        obtain ⟨g, hg, e⟩ := ker_transfer _ _ h h0 g' hg'
        exact ⟨g, hg, congrArg ((D.locA l).gRW LL) e⟩)
      (sep_of_hausdorff _ (c5 _ (GlobalTheory.Cyc.εroot_sub_one_not_unit (D.locA l) s)).toIsHausdorff)
  refine ⟨h1, ioE_mem _ _ (((D.loc l).PD_p K').trans ((D.loc l).PD_p K).symm) h1 ?_⟩
  rw [(D.loc l).PD_p K]
  exact sep_of_hausdorff _ c1.toIsHausdorff

section Two

variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} {K K' : FinExt l} {s : ℕ} {LL : FinExt l}
  {h : Good K s LL} {h' : Good K' s LL}
  {W : LocWach (P.PD K) ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K))}
  {W' : LocWach (P.PD K') ↥LL.1 ↥(OL LL) (P.v LL) (Module.finrank ℚ_[l] ↥(K0 K'))}
  (E : EtSit P AI K s LL h W) (E' : EtSit P AI K' s LL h' W') (T : Lt K LL) (T' : Lt K' LL)



theorem jD_mem_sit (h0 : K0 K = K0 K') (hE : ∀ x, ∃ x', E'.tie.ioE x' = E.tie.ioE x)
    (e : ↥T.L.T →ₗ[↥(OL LL)] ↥T'.L.T)
    (he : ∀ (g : ↥(GK K)) (g' : ↥(GK K')), (g : GQ l) = g' → ∀ t, e (T.actT g t) = T'.actT g' (e t))
    (x : W.DD T) : ∃ x', E'.tie.jD T' x' =
      TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) e (E.tie.jD T x) :=
  jD_mem E.tie E'.tie (descends E') (map_ne_top E) (φRW_surjective LL) hE T T' e (fun g' hg' =>
    (ker_transfer W W' h h0 g' hg').imp fun g hg => ⟨hg.1, congrArg (AI.gRW LL) hg.2, he g g' hg.2⟩) x

variable (hle : K.1 ≤ K'.1) (eT : ↥T'.L.T ≃ₗ[↥(OL LL)] ↥T.L.T)
  (hact : ∀ (g : ↥(GK K')) (t : ↥T'.L.T), eT (T'.actT g t) = T.actT ⟨(g : GQ l), GK_le hle g.2⟩ (eT t))

include hact in
theorem act_fwd (g' : ↥(GK K')) (g : ↥(GK K)) (e : (g' : GQ l) = g) (t : ↥T'.L.T) :
    eT.toLinearMap (T'.actT g' t) = T.actT g (eT.toLinearMap t) :=
  (hact g' t).trans (congrArg (fun u : ↥(GK K) => T.actT u (eT t)) (Subtype.ext e))

include hact in
theorem act_bwd (g : ↥(GK K)) (g' : ↥(GK K')) (e : (g : GQ l) = g') (t : ↥T.L.T) :
    eT.symm.toLinearMap (T.actT g t) = T'.actT g' (eT.symm.toLinearMap t) := by
  apply eT.injective
  have h1 := act_fwd T T' hle eT hact g' g e.symm (eT.symm t)
  simp only [LinearEquiv.coe_coe, LinearEquiv.apply_symm_apply] at h1 ⊢
  exact h1.symm


include hact in
theorem jD_bwd (h0 : K0 K = K0 K') (hE : ∀ x, ∃ x', E'.tie.ioE x' = E.tie.ioE x) (x : W.DD T) :
    ∃ x', TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap
      (E'.tie.jD T' x') = E.tie.jD T x :=
  (jD_mem_sit E E' T T' h0 hE eT.symm.toLinearMap (act_bwd T T' hle eT hact) x).imp fun _ hx' =>
    (congrArg (TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap) hx').trans
      (map_id_symm eT.symm (E.tie.jD T x))


include hact in
theorem modules_eq (h0 : K0 K' = K0 K) (a1 : ∀ x, ∃ x', E'.tie.io x' = E.tie.io x)
    (a2 : ∀ x, ∃ x', E.tie.io x' = E'.tie.io x) (e1 : ∀ x, ∃ x', E'.tie.ioE x' = E.tie.ioE x)
    (e2 : ∀ x, ∃ x', E.tie.ioE x' = E'.tie.ioE x) (hQ : E'.tie.io W'.Q = E.tie.io W.Q)
    (hinj : Function.Injective E'.tie.ioE)
    (hb : IsCrys (P.PD K) T.ρ → Nonempty (Module.Basis (Fin (Module.finrank ↥(OL LL) ↥T.L.T)) (AA K LL) ↥(W.N T)))
    (h10 : IsCrys (P.PD K') T'.ρ → p10 W' T') :
    (TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap) '' Set.range (E'.tie.jD T') =
      Set.range (E.tie.jD T) ∧ (IsCrys (P.PD K) T.ρ → IsCrys (P.PD K') T'.ρ →
      (TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap) ''
        (E'.tie.jD T' '' (W'.N T' : Set (W'.DD T'))) = E.tie.jD T '' (W.N T : Set (W.DD T))) := by
  have d1 := jD_mem_sit E' E T' T h0 e2 eT.toLinearMap (act_fwd T T' hle eT hact)
  have d2 := jD_bwd E E' T T' hle eT hact h0.symm e1
  refine ⟨Set.Subset.antisymm ?_ ?_, fun hT hT' => ?_⟩
  · rintro _ ⟨_, ⟨x', rfl⟩, rfl⟩
    exact d1 x'
  · rintro _ ⟨x, rfl⟩
    obtain ⟨x', hx'⟩ := d2 x
    exact ⟨_, ⟨x', rfl⟩, hx'⟩
  · exact (hb hT).elim fun b => N_eq E.tie E'.tie T T' eT hT (h10 hT') b hinj a1 a2 e1 hQ d2 d1
      fun g' => ⟨⟨(g' : GQ l), GK_le hle g'.2⟩, rfl, hact g'⟩

end Two



theorem base_indep : ∀ (D : Formalism.BasicNotions.D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; ∀ (K' : FinExt l) (h' : Good K' s LL) (hle : K.1 ≤ K'.1), K0 K' = K0 K → let W' := (HW l).W K' s LL h'; let E' := ((F l).E K' s LL h').tie; Set.range E.io = Set.range E'.io ∧ Set.range E.ioE = Set.range E'.ioE ∧ ∀ (T : Lt K LL) (T' : Lt K' LL) (eT : ↥T'.L.T ≃ₗ[↥(OL LL)] ↥T.L.T), (∀ (g : ↥(GK K')) (t : ↥T'.L.T), eT (T'.actT g t) = T.actT ⟨(g : GQ l), GK_le hle g.2⟩ (eT t)) → (TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap) '' Set.range (E'.jD T') = Set.range (E.jD T) ∧ (IsCrys ((D.loc l).PD K) T.ρ → IsCrys ((D.loc l).PD K') T'.ρ → (TensorProduct.map (LinearMap.id : RW LL →ₗ[↥(OL LL)] RW LL) eT.toLinearMap) '' (E'.jD T' '' (W'.N T' : Set (W'.DD T'))) = E.jD T '' (W.N T : Set (W.DD T))) := by
  intro D HW F l _ K s LL h W E K' h' hle h0 W' E'
  have a1 := (rings_mem D HW F l K s LL h K' h' h0.symm).1
  have e1 := (rings_mem D HW F l K s LL h K' h' h0.symm).2
  have a2 := (rings_mem D HW F l K' s LL h' K h h0).1
  have e2 := (rings_mem D HW F l K' s LL h' K h h0).2
  have q := (GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K s LL h).2.1
  have q1 := (GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K' s LL h').2.1
  have q2 := (GlobalTheory.NL.IoXQ.main D.loc D.locA HW F l K' s LL h').2.2.2.1
  refine ⟨?_, ?_, fun T T' eT hact => ?_⟩
  · exact Set.Subset.antisymm (Set.range_subset_iff.2 a1) (Set.range_subset_iff.2 a2)
  · exact Set.Subset.antisymm (Set.range_subset_iff.2 e1) (Set.range_subset_iff.2 e2)
  have hb := N_basis D.loc D.locA HW F l K s LL h T
  have h10 : IsCrys ((D.loc l).PD K') T'.ρ → p10 ((HW l).W K' s LL h') T' := GlobalTheory.NL.FrobeniusMatrixUniqueness.main D HW F l K' s LL h' T'
  exact modules_eq ((F l).E K s LL h) ((F l).E K' s LL h') T T' hle eT hact h0 a1 a2 e1 e2 (q1.trans q.symm)
    q2 hb h10

end GlobalTheory.NL.BaseField
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SepOfHausdorff =====
