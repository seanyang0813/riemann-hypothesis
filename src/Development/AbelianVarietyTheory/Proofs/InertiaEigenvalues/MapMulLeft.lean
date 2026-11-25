module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnity
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SandZero
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeAinfSandwichInvertPi
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCrysLatOfTrivial
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachEtaleMapFrobeniusGaloisEquivariant, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnityStatement, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFunctorThreeLayerPropertiesEveryPlace, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachEtaleMapFrobeniusGaloisEquivariant =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachEtaleMapFrobeniusGaloisEquivariant", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.NL

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n} {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA}

theorem tmul_basis_inj {O R M : Type} [CommRing O] [AddCommGroup R] [Module O R] [AddCommGroup M]
    [Module O M] (e₀ : M) (hs : Submodule.span O {e₀} = ⊤) (hi : ∀ c : O, c • e₀ = 0 → c = 0)
    {r r' : R} (h : r ⊗ₜ[O] e₀ = r' ⊗ₜ[O] e₀) : r = r' := by
  have hb : Function.Bijective (LinearMap.toSpanSingleton O M e₀) := by
    refine ⟨(injective_iff_map_eq_zero _).2 fun c hc => hi c (by simpa using hc), fun x => ?_⟩
    have hx : x ∈ Submodule.span O {e₀} := hs ▸ Submodule.mem_top
    obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.1 hx
    exact ⟨c, by simpa using hc⟩
  let f := LinearEquiv.ofBijective _ hb
  have h1 : f.symm e₀ = 1 := by
    rw [LinearEquiv.symm_apply_eq]
    simp [f]
  have := congrArg (fun z => TensorProduct.rid O R (LinearMap.lTensor R f.symm.toLinearMap z)) h
  simpa [h1] using this

theorem ioLaws_of_injective (E : EtTie W RA RW inclR φR gR πA)
    (hO : Function.Injective (algebraMap O LL)) : IoLaws E := by
  obtain ⟨e, e₀, hs, hj, -⟩ := E.one_e
  have h0 : (e₀ : W.one.V) ≠ 0 := by
    intro h0
    obtain ⟨u, hu, hT⟩ := W.one_line
    have hm : u ∈ W.one.L.T := hT ▸ Submodule.mem_span_singleton_self u
    have hx : (⟨u, hm⟩ : ↥W.one.L.T) ∈ Submodule.span O {e₀} := hs ▸ Submodule.mem_top
    obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.1 hx
    have := congrArg Subtype.val hc
    simp only [Submodule.coe_smul, h0, smul_zero] at this
    exact hu this.symm
  have hi : ∀ c : O, c • e₀ = 0 → c = 0 := by
    intro c hc
    have h1 : algebraMap O LL c • (e₀ : W.one.V) = 0 := by
      rw [algebraMap_smul]
      exact congrArg Subtype.val hc
    rcases smul_eq_zero.1 h1 with h2 | h2
    · exact hO (by rw [h2, map_zero])
    · exact absurd h2 h0
  have hx : ∀ x : W.EE, E.jD W.one (x • e) = E.ioE x ⊗ₜ[O] e₀ := by
    intro x
    rw [E.jD_smul, hj, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
  have hact : ∀ g : G, W.one.actT g e₀ = e₀ := fun g => Subtype.ext (W.one_triv g _)
  have hφ : W.φD W.one e = e := by
    apply E.jD_inj
    rw [E.jD_φ, hj]
    simp [TWmap]
  have hγ : ∀ g : G, W.γD W.one (W.resΓ g) e = e := by
    intro g
    apply E.jD_inj
    rw [E.jD_act, hj]
    simp [TWact, hact]
  refine ⟨fun x => ?_, fun g x => ?_⟩
  · apply tmul_basis_inj e₀ hs hi
    have := E.jD_φ W.one (x • e)
    rw [W.φD_smul, hφ, hx, hx] at this
    simpa [TWmap] using this
  · apply tmul_basis_inj e₀ hs hi
    have := E.jD_act W.one g (x • e)
    rw [W.γD_smul, hγ, hx, hx] at this
    simpa [TWact, hact] using this

end Generic

theorem ioLaws : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (HW : HWOf loc) (F : FonOf loc locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; IoLaws E := by
  intro loc locA HW F l _ K s LL h
  exact ioLaws_of_injective _ Subtype.val_injective

end GlobalTheory.NL
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachEtaleMapFrobeniusGaloisEquivariant =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnityStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnityStatement", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnityStatement =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFunctorThreeLayerPropertiesEveryPlace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFunctorThreeLayerPropertiesEveryPlace", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachEtaleMapFrobeniusGaloisEquivariant\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLevelExpansionLawsOfRootsOfUnityStatement\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCrysLatOfTrivial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.AllLaws

theorem laws : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (HW : HWOf loc) (F : FonOf loc locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; Laws (HW l) (F l) h := by
  intro loc locA HW F l _ K s LL h W E
  haveI : FiniteDimensional ℚ_[l] ↥LL.1 := LL.2
  exact ⟨_root_.GlobalTheory.NL.Expansion.levLaws loc HW l K s LL h, _root_.GlobalTheory.NL.ioLaws loc locA HW F l K s LL h,
    GlobalTheory.TrivCrys.isCrys_lat_of_trivial W.one W.one_triv⟩

end GlobalTheory.NL.AllLaws
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFunctorThreeLayerPropertiesEveryPlace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.NotFullBot\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ApplyLayers\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.SandZero\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachFunctorThreeLayerPropertiesEveryPlace\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachInclusionXQFrobenius\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.WachLatticeAinfSandwichInvertPi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct GlobalTheory.NL

namespace GlobalTheory.NL.SandArb

theorem map_mulLeft {O R M : Type} [CommRing O] [CommRing R] [Algebra O R] [AddCommGroup M] [Module O M]
    (a : R) (z : R ⊗[O] M) :
    TensorProduct.map (LinearMap.mulLeft O a) LinearMap.id z = a • z := by
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul x y => simp [TensorProduct.smul_tmul']
  | add x y hx hy => rw [map_add (f := _), smul_add, hx, hy]

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL]
    [CommRing O] [Algebra O LL] [TopologicalSpace LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA}
    {W : LocWach PD LL O v n} (E : EtTie W RA RW inclR φR gR πA) {s : ℕ} (hs : W.s = s)
    (hp : PD.p.Prime) (hL : LevLaws W) (hI : IoLaws E)



theorem of_layers {Zl : Type} [CommRing Zl] (zl : PowerSeries Zl →+* LetA O n) (h1 : IsCrys PD W.one.ρ)
    (hP : ∀ T, @Module.Projective (PowerSeries Zl) _ ↥(W.N T) _ (Module.compHom _ zl))
    (T : LocLat G Qp LL O) (hT : IsCrys PD T.ρ) (w : RA) (c : RW) (hc : c = inclR w)
    (hS : GlobalTheory.HWL.Sand (latOf E hs hp hL hI zl h1 hP) T w) :
    (∀ x ∈ W.N T, ∃ y : TW RA T, TWincl inclR T y =
        TensorProduct.map (LinearMap.mulLeft O c) LinearMap.id (E.jD T x)) ∧
      ∀ t : ↥T.L.T, (c ⊗ₜ[O] t : TW RW T) ∈ Submodule.span O {z : TW RW T | ∃ a : RA, ∃ y ∈ W.N T,
        z = TensorProduct.map (LinearMap.mulLeft O (inclR a)) LinearMap.id (E.jD T y)} := by
  subst hc
  have hN : nOf W T = W.N T := nOf_crys W hT
  have h1' : ∀ x ∈ nOf W T, ∃ y : TW RA T, TWincl inclR T y = inclR w • E.jD T x := hS.1
  have h2' : ∀ t : ↥T.L.T, inclR w • ((1 : RW) ⊗ₜ[O] t : TW RW T) ∈
      Submodule.span O {z : TW RW T | ∃ (a : RA), ∃ y ∈ nOf W T, z = inclR a • E.jD T y} := hS.2
  rw [hN] at h1' h2'
  refine ⟨fun x hx => ?_, fun t => ?_⟩
  · rw [map_mulLeft]; exact h1' x hx
  · have := h2' t
    rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one] at this
    simp only [map_mulLeft]
    exact this

end Generic

section
variable {l : ℕ} [Fact l.Prime] {P : LocPrime l} {AI : LocAinf l P} (H : LocHW l P) (F : LocFon l P AI H)
  {K : FinExt l} {s : ℕ} {LL : FinExt l} (h : Good K s LL) (hL : Laws H F h)



theorem sand_layers (T : Lt K LL) (hT : IsCrys (P.PD K) T.ρ) :
    ∃ m : ℕ, GlobalTheory.HWL.Sand (LatL H F h hL) T ((1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] (AI.π₁ ^ m) : RA LL) :=
  apply_layers H F h hL
    (fun _ _ _ _ Mo => ∃ m : ℕ, GlobalTheory.HWL.Sand Mo T ((1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] (AI.π₁ ^ m) : RA LL))
    (fun Γ R I hI E Mo => GlobalTheory.HWL.SandProof.sandwich l P AI K s LL h Γ R I hI E Mo T hT)

theorem incl_pow (a : RA LL) (w : Ainf l) (ha : a = (1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] w) (m : ℕ) :
    inclR LL a ^ m = inclR LL ((1 : ↥(OL LL)) ⊗ₜ[ℤ_[l]] (w ^ m)) := by
  rw [ha, ← map_pow, Algebra.TensorProduct.tmul_pow, one_pow]

end


set_option maxHeartbeats 1000000 in
set_option synthInstance.maxHeartbeats 200000 in
theorem sandwich : ∀ (loc : LocTheory) (locA : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (loc l)) (HW : HWOf loc) (F : FonOf loc locA HW) (l : ℕ) [Fact l.Prime] (K : FinExt l) (s : ℕ) (LL : FinExt l) (h : Good K s LL), let W := (HW l).W K s LL h; let E := ((F l).E K s LL h).tie; ∀ T : Lt K LL, IsCrys ((loc l).PD K) T.ρ → ∃ m : ℕ, (∀ x ∈ W.N T, ∃ y : TW (RA LL) T, TWincl (inclR LL) T y = TensorProduct.map (LinearMap.mulLeft ↥(OL LL) (inclR LL (E.io W.X) ^ m)) LinearMap.id (E.jD T x)) ∧ ∀ t : ↥T.L.T, ((inclR LL (E.io W.X) ^ m) ⊗ₜ[↥(OL LL)] t : TW (RW LL) T) ∈ Submodule.span ↥(OL LL) {z : TW (RW LL) T | ∃ a : RA LL, ∃ y ∈ W.N T, z = TensorProduct.map (LinearMap.mulLeft ↥(OL LL) (inclR LL a)) LinearMap.id (E.jD T y)} := by
  intro loc locA HW F l _ K s LL h
  have hL : Laws (HW l) (F l) h := _root_.GlobalTheory.NL.AllLaws.laws loc locA HW F l K s LL h
  have hX := (_root_.GlobalTheory.NL.IoXQ.main loc locA HW F l K s LL h).1
  refine fun T hT => (sand_layers (HW l) (F l) h hL T hT).imp fun m hm => ?_
  exact of_layers ((F l).E K s LL h).tie ((HW l).W_s K s LL h) (p_prime (loc l) K) hL.lev hL.io _ hL.one
    ((HW l).W_proj K s LL h) T hT _ _ (incl_pow _ _ hX m) hm

end GlobalTheory.NL.SandArb
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MapMulLeft =====
