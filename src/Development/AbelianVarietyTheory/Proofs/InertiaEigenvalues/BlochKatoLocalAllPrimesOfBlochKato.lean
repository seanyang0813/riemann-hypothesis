module

public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties
public import Mathlib.LinearAlgebra.BilinearForm.Properties
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.RingTheory.DedekindDomain.IntegralClosure
public import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoDimOfQlDimensionFormula
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk
public import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateH2PeriodDatum
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum
public import Mathlib.NumberTheory.Padics.PadicNumbers
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfForallAnnihilatorAnnihilatorFieldModInteger
public import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeReductionModPowMemLocConstCocycles
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoRightExact
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
import Mathlib.Tactic.Linter.Style
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoExactAnnihilatorsPeriodDatum

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoboundaryModIffForallTraceFormCoboundary, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualLatticeRestrictScalarsTraceForm, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralDualFunctional, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZlLatticeOfCoefficientLattice, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorOfIntegralLocalDuality, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMem, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPow, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevel, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIff, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAl, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralTatePairingLatticeDual, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomic, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocycles, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReduction, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinPartCOfPartAPartBFiniteLevel, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoboundaryModIffForallTraceFormCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoboundaryModIffForallTraceFormCoboundary", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory


open Submodule in
theorem cobO_iff_forall_lam : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL]
    (O : Type) [CommRing O] [Algebra O LL] (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O),
    (∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l])) →
    (∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l])) →
    (∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i)) →
    ∀ (L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL))),
    L1.T = LinearMap.range (Algebra.linearMap O LL) →
    ∀ (L1Z : Lattice (O := ℤ_[l]) (charRep (cycLL (P.PD K) ℚ_[l]))),
    L1Z.T = LinearMap.range (Algebra.linearMap ℤ_[l] ℚ_[l]) →
    ∀ (z : ↥(GK K) × ↥(GK K) → LL),
    (CobO (P.PD K) L1 z ↔ ∀ o : O, CobO (P.PD K) L1Z (fun x => lam (algebraMap O LL o * z x))) := by
  intro l _ P K LL _ _ O _ _ lam n e f h1 h2 h3 L1 hL1 L1Z hL1Z z
  classical
  have memT : ∀ x : LL, x ∈ L1.T ↔ ∃ o : O, algebraMap O LL o = x := by
    intro x; rw [hL1]; simp [LinearMap.mem_range]
  have memZ : ∀ q : ℚ_[l], q ∈ L1Z.T ↔ ∃ w : ℤ_[l], (w : ℚ_[l]) = q := by
    intro q; rw [hL1Z]; simp [LinearMap.mem_range]
  have actT : ∀ g (a : LL), (repD L1 g) (Submodule.Quotient.mk a) =
      Submodule.Quotient.mk (algebraMap ℚ_[l] LL ((P.PD K).χ g : ℚ_[l]) * a) := by
    intro g a
    simp [repD, Submodule.mapQ_apply, charRep, cycLL, Algebra.smul_def]
  have actZ : ∀ g (q : ℚ_[l]), (repD L1Z g) (Submodule.Quotient.mk q) =
      Submodule.Quotient.mk (((P.PD K).χ g : ℚ_[l]) * q) := by
    intro g q
    simp [repD, Submodule.mapQ_apply, charRep, cycLL]
  have lamc : ∀ (o : O) (c : ℚ_[l]) (y : LL),
      lam (algebraMap O LL o * (algebraMap ℚ_[l] LL c * y)) = c * lam (algebraMap O LL o * y) := by
    intro o c y
    have : algebraMap O LL o * (algebraMap ℚ_[l] LL c * y) = c • (algebraMap O LL o * y) := by
      rw [Algebra.smul_def]; ring
    rw [this, map_smul, smul_eq_mul]
  unfold CobO ReciprocityTheory.Def.B2
  constructor
  · intro H o
    obtain ⟨F, ⟨hFc, -⟩, hF⟩ := Submodule.mem_map.1 H
    choose Ft hFt using fun g => Submodule.Quotient.mk_surjective L1.T (F g)
    have hFeq : F = fun g => Submodule.Quotient.mk (Ft g) := funext fun g => (hFt g).symm
    subst hFeq
    let φ : LL ⧸ L1.T → ℚ_[l] ⧸ L1Z.T := fun q =>
      Submodule.Quotient.mk (lam (algebraMap O LL o * (Submodule.Quotient.mk_surjective L1.T q).choose))
    have hφ : ∀ a, φ (Submodule.Quotient.mk a) = Submodule.Quotient.mk (lam (algebraMap O LL o * a)) := by
      intro a
      have hc := (Submodule.Quotient.mk_surjective L1.T (Submodule.Quotient.mk a)).choose_spec
      rw [Submodule.Quotient.eq] at hc
      obtain ⟨o', ho'⟩ := (memT _).1 hc
      obtain ⟨w, hw⟩ := h2 (o * o')
      show Submodule.Quotient.mk _ = _
      rw [Submodule.Quotient.eq, memZ]
      exact ⟨w, by rw [← hw, map_mul, ho', mul_sub, map_sub]⟩
    refine Submodule.mem_map.2 ⟨φ ∘ (fun g => Submodule.Quotient.mk (Ft g)), ⟨hFc.comp φ, fun _ => trivial⟩, ?_⟩
    funext x
    have hx := congrFun hF x
    simp only [ReciprocityTheory.Def.d1, LinearMap.coe_mk, AddHom.coe_mk, Function.comp_apply] at hx ⊢
    rw [actT, ← Submodule.Quotient.mk_sub, ← Submodule.Quotient.mk_add, Submodule.Quotient.eq] at hx
    obtain ⟨o', ho'⟩ := (memT _).1 hx
    obtain ⟨w, hw⟩ := h2 (o * o')
    rw [hφ, hφ, hφ, actZ, ← Submodule.Quotient.mk_sub, ← Submodule.Quotient.mk_add, Submodule.Quotient.eq, memZ]
    refine ⟨w, ?_⟩
    rw [← hw, map_mul, ho', mul_sub, mul_add, mul_sub, map_sub, map_add (f := _), map_sub, lamc]
  · intro H
    choose Fz hFzc hFz using fun i => Submodule.mem_map.1 (H (f i))
    choose Ft hFt using fun i g => Submodule.Quotient.mk_surjective L1Z.T (Fz i g)
    refine Submodule.mem_map.2 ⟨fun g => Submodule.Quotient.mk
      (∑ i, algebraMap ℚ_[l] LL (Ft i g) * algebraMap O LL (e i)), ⟨?_, fun _ => trivial⟩, ?_⟩
    · rw [IsLocallyConstant.iff_eventually_eq]
      intro x
      have hev : ∀ᶠ y in nhds x, ∀ i, Fz i y = Fz i x :=
        Filter.eventually_all.2 fun i => (IsLocallyConstant.iff_eventually_eq _).1 (hFzc i).1 x
      filter_upwards [hev] with y hy
      rw [Submodule.Quotient.eq, ← Finset.sum_sub_distrib]
      refine Submodule.sum_mem _ fun i _ => ?_
      have hyi := hy i
      rw [← hFt i y, ← hFt i x, Submodule.Quotient.eq, memZ] at hyi
      obtain ⟨w, hw⟩ := hyi
      obtain ⟨o, ho⟩ := h1 w
      rw [memT]
      exact ⟨o * e i, by rw [map_mul, ho, hw, ← sub_mul, map_sub]⟩
    · funext x
      have key : ∀ i, ∃ w : ℤ_[l], (w : ℚ_[l]) = ((P.PD K).χ x.1 : ℚ_[l]) * Ft i x.2 - Ft i (x.1 * x.2)
          + Ft i x.1 - lam (algebraMap O LL (f i) * z x) := by
        intro i
        have hx := congrFun (hFz i) x
        simp only [ReciprocityTheory.Def.d1, LinearMap.coe_mk, AddHom.coe_mk] at hx
        rw [← hFt i x.2, ← hFt i (x.1 * x.2), ← hFt i x.1, actZ, ← Submodule.Quotient.mk_sub,
          ← Submodule.Quotient.mk_add, Submodule.Quotient.eq, memZ] at hx
        exact hx
      choose w hw using key
      choose o ho using fun i => h1 (w i)
      simp only [ReciprocityTheory.Def.d1, LinearMap.coe_mk, AddHom.coe_mk]
      rw [actT, ← Submodule.Quotient.mk_sub, ← Submodule.Quotient.mk_add, Submodule.Quotient.eq, memT]
      refine ⟨∑ i, o i * e i, ?_⟩
      have hl : ∀ i, lam (algebraMap O LL (f i) * z x) = ((P.PD K).χ x.1 : ℚ_[l]) * Ft i x.2
          - Ft i (x.1 * x.2) + Ft i x.1 - (w i : ℚ_[l]) := fun i => by rw [hw i]; ring
      conv_rhs => rw [h3 (z x)]
      simp_rw [hl]

      rw [map_sum, Finset.mul_sum, ← Finset.sum_sub_distrib, ← Finset.sum_add_distrib,
      ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [map_mul, ho, Algebra.smul_def]
      simp only [map_sub, map_add (f := _), map_mul]
      ring

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoboundaryModIffForallTraceFormCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualLatticeRestrictScalarsTraceForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualLatticeRestrictScalarsTraceForm", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.DualLatDescent

theorem dualLat_resQ : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL]
    (O : Type) [CommRing O] [Algebra O LL]
    (V : Type) [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    [Module O V] [IsScalarTower O LL V] [Module ℤ_[l] V] [IsScalarTower ℤ_[l] ℚ_[l] V]
    (V' : Type) [AddCommGroup V'] [Module LL V'] [Module ℚ_[l] V'] [IsScalarTower ℚ_[l] LL V']
    [Module O V'] [IsScalarTower O LL V'] [Module ℤ_[l] V'] [IsScalarTower ℤ_[l] ℚ_[l] V']
    [FiniteDimensional ℚ_[l] LL] [FiniteDimensional LL V] [FiniteDimensional LL V']
    (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O),
    (∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l])) →
    (∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l])) →
    (∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i)) →
    ∀ (ρ : Representation LL ↥(GK K) V) (ρ' : Representation LL ↥(GK K) V')
    (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ')
    (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ)) (LZ' : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ')),
    (∀ v, v ∈ LZ.T ↔ v ∈ L.T) → (∀ v, v ∈ LZ'.T ↔ v ∈ L'.T) →
    ∀ (Pr : V →ₗ[LL] V' →ₗ[LL] LL) (PQ : V →ₗ[ℚ_[l]] V' →ₗ[ℚ_[l]] ℚ_[l]),
    (∀ x y, PQ x y = lam (Pr x y)) → IsDualLat1 (P.PD K) L L' Pr →
    IsDualLat1 (P.PD K) LZ LZ' PQ := by
  intro l _ P K LL _ _ O _ _ V _ _ _ _ _ _ _ _ V' _ _ _ _ _ _ _ _ _ _ _ lam n e f h1 h2 h3 ρ ρ' L L' LZ LZ' hT hT' Pr PQ hPQ hP
  obtain ⟨⟨hg, hl, hr, hrk⟩, hlat⟩ := hP

  have key : ∀ z : LL, (∀ a : LL, lam (a * z) = 0) → z = 0 := by
    intro z hz
    rw [h3 z]
    simp [hz]
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · intro g x y
    rw [hPQ, GlobalTheory.PstCoeff.resQ_apply, GlobalTheory.PstCoeff.resQ_apply, hg, hPQ]
    have : ((cycLL (P.PD K) LL g : LLˣ) : LL) = algebraMap ℚ_[l] LL ((cycLL (P.PD K) ℚ_[l] g : ℚ_[l]ˣ) : ℚ_[l]) := by
      simp [cycLL]
    rw [this, ← Algebra.smul_def, map_smul, smul_eq_mul]
  · intro x hx
    apply hl
    intro y
    apply key
    intro a
    rw [← smul_eq_mul, ← map_smul, ← hPQ]
    exact hx _
  · intro y hy
    apply hr
    intro x
    apply key
    intro a
    rw [← smul_eq_mul, ← LinearMap.smul_apply, ← map_smul, ← hPQ]
    exact hy _
  · rw [← Module.finrank_mul_finrank ℚ_[l] LL V, ← Module.finrank_mul_finrank ℚ_[l] LL V', hrk]
  · intro y
    rw [hT', hlat]
    constructor
    · intro H x hx
      obtain ⟨a, ha⟩ := H x ((hT x).1 hx)
      obtain ⟨z, hz⟩ := h2 a
      exact ⟨z, by rw [hPQ, ha, hz]; rfl⟩
    · intro H x hx
      have hi : ∀ i, ∃ z : ℤ_[l], lam (algebraMap O LL (f i) * Pr x y) = (z : ℚ_[l]) := by
        intro i
        have hm : f i • x ∈ L.T := L.T.smul_mem _ hx
        obtain ⟨z, hz⟩ := H _ ((hT _).2 hm)
        refine ⟨z, ?_⟩
        rw [hPQ, ← algebraMap_smul LL (f i) x, map_smul, LinearMap.smul_apply, smul_eq_mul] at hz
        rw [hz]; rfl
      choose z hz using hi
      have ho : ∀ i, ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z i : ℚ_[l]) := fun i => h1 (z i)
      choose o ho using ho
      refine ⟨∑ i, o i * e i, ?_⟩

      rw [h3 (Pr x y), map_sum]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [hz i, map_mul, ho i, Algebra.smul_def]

end GlobalTheory.DualLatDescent
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualLatticeRestrictScalarsTraceForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralDualFunctional =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralDualFunctional", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoefficientRingIntegersCompactAdicProperties\npublic import Mathlib.LinearAlgebra.BilinearForm.Properties\npublic import Mathlib.LinearAlgebra.FreeModule.PID\npublic import Mathlib.RingTheory.DedekindDomain.IntegralClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section
namespace GlobalTheory.IntDual

theorem lattice_basis (l : ℕ) [Fact l.Prime] (LL : Type) [Field LL] [Algebra ℚ_[l] LL]
    [FiniteDimensional ℚ_[l] LL] :
    ∃ (n : ℕ) (b : Basis (Fin n) ℚ_[l] LL),
      (∀ i, ((algebraMap ℚ_[l] LL).comp (algebraMap ℤ_[l] ℚ_[l])).IsIntegralElem (b i)) ∧
      ∀ x : LL, ((algebraMap ℚ_[l] LL).comp (algebraMap ℤ_[l] ℚ_[l])).IsIntegralElem x →
        ∀ i, ∃ z : ℤ_[l], b.repr x i = (z : ℚ_[l]) := by
  letI : Algebra ℤ_[l] LL := ((algebraMap ℚ_[l] LL).comp (algebraMap ℤ_[l] ℚ_[l])).toAlgebra
  haveI : IsScalarTower ℤ_[l] ℚ_[l] LL := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  let S := integralClosure ℤ_[l] LL
  haveI : IsIntegralClosure S ℤ_[l] LL := integralClosure.isIntegralClosure _ _
  haveI : Module.Finite ℤ_[l] S := IsIntegralClosure.finite ℤ_[l] ℚ_[l] LL S
  have hinj : Function.Injective (algebraMap ℤ_[l] LL) := by
    intro a c h
    exact IsFractionRing.injective ℤ_[l] ℚ_[l] ((algebraMap ℚ_[l] LL).injective h)
  haveI : Module.IsTorsionFree ℤ_[l] S := ⟨fun r hr a c hac => by
    have hr0 : algebraMap ℤ_[l] LL r ≠ 0 := by
      intro h0; exact hr.ne_zero (hinj (h0.trans (map_zero _).symm))
    apply Subtype.ext
    have h1 := congrArg (fun s : S => (s : LL)) hac
    simp only [Algebra.smul_def] at h1
    exact mul_left_cancel₀ hr0 h1⟩
  haveI : Module.Free ℤ_[l] S := Module.free_of_finite_type_torsion_free'
  haveI : IsLocalization (Algebra.algebraMapSubmonoid S (nonZeroDivisors ℤ_[l])) LL :=
    IsIntegralClosure.isLocalization ℤ_[l] ℚ_[l] LL S
  let bO := (Module.Free.chooseBasis ℤ_[l] S).reindex (Fintype.equivFin _)
  let b := bO.localizationLocalization ℚ_[l] (nonZeroDivisors ℤ_[l]) LL
  have hb : ∀ i, b i = (bO i : LL) := fun i => Module.Basis.localizationLocalization_apply _ _ _ _ i
  refine ⟨_, b, fun i => ?_, fun x hx i => ?_⟩
  · rw [hb]; exact (bO i).2
  · have := bO.localizationLocalization_repr_algebraMap ℚ_[l] (nonZeroDivisors ℤ_[l]) LL ⟨x, hx⟩ i
    exact ⟨bO.repr ⟨x, hx⟩ i, this⟩

theorem intDual_coef : ∀ (l : ℕ) [Fact l.Prime] (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL]
    (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O →
    ∃ (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O),
      (∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l])) ∧
      (∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l])) ∧
      (∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i)) := by
  intro l _ LL _ _ _ O _ _ hO
  have H := _root_.GlobalTheory.PowerImageOpen.main l LL O hO
  obtain ⟨⟨hdom, hdvr, hfrac⟩, hfd, -, -, -⟩ := hO
  haveI := hdom
  haveI := hdvr
  haveI := hfrac
  haveI := hfd
  have hmem := H.1
  obtain ⟨n, b, hbint, hcoord⟩ := lattice_basis l LL
  let ι := algebraMap O LL
  have hιinj : Function.Injective ι := IsFractionRing.injective O LL
  let Tr := Algebra.trace ℚ_[l] LL
  let B := Algebra.traceForm ℚ_[l] LL
  have hB : B.Nondegenerate := traceForm_nondegenerate ℚ_[l] LL
  let f' := B.dualBasis hB b
  have hcoef : ∀ x i, Tr (f' i * x) = b.repr x i := by
    intro x i
    conv_lhs => rw [← b.sum_repr x]

    rw [Finset.mul_sum, map_sum]
    have : ∀ j, Tr (f' i * (b.repr x j • b j)) = b.repr x j * (if j = i then 1 else 0) := by
      intro j
      rw [mul_smul_comm, map_smul, smul_eq_mul, ← LinearMap.BilinForm.apply_dualBasis_left hB b i j]
      rfl
    simp_rw [this, mul_ite, mul_one, mul_zero]
    simp

  let Zs : Subring ℚ_[l] := (algebraMap ℤ_[l] ℚ_[l]).range
  have hZ : ∀ q : ℚ_[l], q ∈ Zs ↔ ∃ z : ℤ_[l], q = (z : ℚ_[l]) := by
    intro q; constructor
    · rintro ⟨z, hz⟩; exact ⟨z, hz.symm⟩
    · rintro ⟨z, hz⟩; exact ⟨z, hz.symm⟩
  have hintO : ∀ o : O, ((algebraMap ℚ_[l] LL).comp (algebraMap ℤ_[l] ℚ_[l])).IsIntegralElem (ι o) :=
    fun o => (hmem (ι o)).1 ⟨o, rfl⟩
  have hf'M : ∀ i (s : O), Tr (f' i * ι s) ∈ Zs := by
    intro i s
    obtain ⟨z, hz⟩ := hcoord (ι s) (hintO s) i
    rw [hcoef, hZ]; exact ⟨z, hz⟩
  obtain ⟨⟨c, hc⟩, hcint⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors O)
    (Finset.univ : Finset (Fin n)) f'
  let D := ι c
  have hD : D ≠ 0 := by
    intro h0
    exact nonZeroDivisors.coe_ne_zero ⟨c, hc⟩ (hιinj (h0.trans (map_zero ι).symm))
  have ho : ∀ i, ∃ o : O, ι o = D * f' i := by
    intro i
    obtain ⟨o, ho⟩ := hcint i (Finset.mem_univ i)
    exact ⟨o, by rw [ho, Algebra.smul_def]⟩
  choose o hoD using ho
  let I : Ideal O :=
    { carrier := {a | ∀ s : O, Tr (D⁻¹ * ι a * ι s) ∈ Zs}
      add_mem' := by
        intro a a' ha ha' s
        have e : D⁻¹ * ι (a + a') * ι s = D⁻¹ * ι a * ι s + D⁻¹ * ι a' * ι s := by
          rw [map_add (f := _)]; ring
        rw [e, map_add (f := _)]; exact Zs.add_mem (ha s) (ha' s)
      zero_mem' := by
        intro s; simp only [map_zero, mul_zero, zero_mul]; exact Zs.zero_mem
      smul_mem' := by
        intro r a ha s
        have e : D⁻¹ * ι (r • a) * ι s = D⁻¹ * ι a * ι (r * s) := by
          rw [smul_eq_mul, map_mul, map_mul]; ring
        rw [e]; exact ha (r * s) }
  have hoI : ∀ i, o i ∈ I := by
    intro i s
    show Tr (D⁻¹ * ι (o i) * ι s) ∈ Zs
    rw [hoD i, ← mul_assoc, inv_mul_cancel₀ hD, one_mul]
    exact hf'M i s
  let g := Submodule.IsPrincipal.generator I
  have hgI : g ∈ I := Submodule.IsPrincipal.generator_mem I
  have ha : ∀ i, ∃ a : O, a * g = o i := by
    intro i
    have h := hoI i
    rw [← Submodule.IsPrincipal.span_singleton_generator I] at h
    exact Ideal.mem_span_singleton'.1 h
  choose a hag using ha
  let δ := D⁻¹ * ι g
  let lam : LL →ₗ[ℚ_[l]] ℚ_[l] := Tr.comp (LinearMap.mulLeft ℚ_[l] δ)
  have hlam : ∀ y, lam y = Tr (δ * y) := fun y => rfl
  have hδa : ∀ i, δ * ι (a i) = f' i := by
    intro i
    show D⁻¹ * ι g * ι (a i) = f' i
    rw [mul_assoc, ← map_mul, mul_comm g, hag, hoD, ← mul_assoc, inv_mul_cancel₀ hD, one_mul]
  have he : ∀ i, ∃ e : O, ι e = b i := fun i => (hmem (b i)).2 (hbint i)
  choose e he using he
  refine ⟨lam, n, e, a, fun z => ?_, fun y => ?_, fun x => ?_⟩
  · have hz : ((algebraMap ℚ_[l] LL).comp (algebraMap ℤ_[l] ℚ_[l])).IsIntegralElem
        (algebraMap ℚ_[l] LL (z : ℚ_[l])) := RingHom.isIntegralElem_map _
    exact (hmem _).2 hz
  · have h := hgI y
    rw [hZ] at h
    obtain ⟨z, hz⟩ := h
    exact ⟨z, by rw [hlam]; exact hz⟩
  · conv_lhs => rw [← b.sum_repr x]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [hlam, ← mul_assoc, hδa, hcoef, he]
end GlobalTheory.IntDual
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralDualFunctional =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZlLatticeOfCoefficientLattice =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZlLatticeOfCoefficientLattice", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section
namespace GlobalTheory

theorem latticeZl_of_latticeO : ∀ (l : ℕ) [Fact l.Prime] (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL]
    (O : Type) [CommRing O] [Algebra O LL]
    (V : Type) [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    [Module O V] [IsScalarTower O LL V] [Module ℤ_[l] V] [IsScalarTower ℤ_[l] ℚ_[l] V]
    (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O),
    (∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l])) →
    (∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l])) →
    (∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i)) →
    ∀ (ρ : Representation LL ↥(GK K) V) (L : Lattice (O := O) ρ),
    ∃ LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ), ∀ v, v ∈ LZ.T ↔ v ∈ L.T := by
  intro l _ K LL _ _ O _ _ V _ _ _ _ _ _ _ _ lam n e f h1 h2 h3 ρ L

  have hz : ∀ (z : ℤ_[l]) (v : V), z • v = ((z : ℚ_[l]) : ℚ_[l]) • v := fun z v => by
    rw [← algebraMap_smul ℚ_[l] z v]; rfl

  have hdec : ∀ (a : LL) (t : V), a • t = ∑ i, lam (algebraMap O LL (f i) * a) • (e i • t) := by
    intro a t
    conv_lhs => rw [h3 a]
    rw [Finset.sum_smul]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [smul_assoc, algebraMap_smul]
  let TZ : Submodule ℤ_[l] V :=
    { carrier := (L.T : Set V)
      add_mem' := fun ha hb => L.T.add_mem ha hb
      zero_mem' := L.T.zero_mem
      smul_mem' := by
        intro z v hv
        obtain ⟨o, ho⟩ := h1 z
        show z • v ∈ L.T
        rw [hz, ← algebraMap_smul LL (z : ℚ_[l]) v, ← ho, algebraMap_smul]
        exact L.T.smul_mem o hv }
  have hmem : ∀ v, v ∈ TZ ↔ v ∈ L.T := fun v => Iff.rfl

  have hfg : TZ.FG := by
    obtain ⟨S, hS⟩ := L.fg
    classical
    refine ⟨Finset.image (fun p : Fin n × V => e p.1 • p.2) (Finset.univ ×ˢ S), ?_⟩
    apply le_antisymm
    · rw [Submodule.span_le]
      intro x hx
      simp only [Finset.coe_image, Set.mem_image, Finset.coe_product, Set.mem_prod, Finset.coe_univ,
        Set.mem_univ, true_and, Finset.mem_coe] at hx
      obtain ⟨⟨i, t⟩, ht, rfl⟩ := hx
      have : t ∈ L.T := hS ▸ Submodule.subset_span ht
      exact L.T.smul_mem (e i) this
    · intro x hx
      have hx' : x ∈ Submodule.span O (S : Set V) := by rw [hS]; exact hx
      obtain ⟨c, -, rfl⟩ := (Submodule.mem_span_finset).1 hx'
      refine Submodule.sum_mem _ fun t ht => ?_
      rw [← algebraMap_smul LL (c t) t, hdec]
      refine Submodule.sum_mem _ fun i _ => ?_
      obtain ⟨z, hz'⟩ := h2 (f i * c t)
      rw [← map_mul, hz', ← hz]
      refine Submodule.smul_mem _ z (Submodule.subset_span ?_)
      simp only [Finset.coe_image, Set.mem_image, Finset.coe_product, Set.mem_prod, Finset.coe_univ,
        Set.mem_univ, true_and, Finset.mem_coe]
      exact ⟨(i, t), ht, rfl⟩
  have hfin : Module.Finite ℤ_[l] TZ := Module.Finite.iff_fg.mpr hfg
  have htf : Module.IsTorsionFree ℤ_[l] TZ := by
    rw [Module.isTorsionFree_iff_smul_eq_zero]
    intro z x h
    by_cases hz0 : z = 0
    · exact Or.inl hz0
    right
    have h' : ((z : ℚ_[l]) : ℚ_[l]) • (x : V) = 0 := by
      rw [← hz]; exact congrArg Subtype.val h
    have hq : (z : ℚ_[l]) ≠ 0 := fun h0 => hz0 (PadicInt.coe_eq_zero.1 h0)
    exact Subtype.ext ((smul_eq_zero.1 h').resolve_left hq)
  refine ⟨{ T := TZ, stable := ?_, fg := hfg, free := ?_, span := ?_ }, hmem⟩
  · intro g x hx
    exact L.stable g x hx
  · exact Module.free_of_finite_type_torsion_free'
  · let W : Submodule LL V :=
      { carrier := (Submodule.span ℚ_[l] (TZ : Set V) : Set V)
        add_mem' := fun ha hb => Submodule.add_mem _ ha hb
        zero_mem' := Submodule.zero_mem _
        smul_mem' := by
          intro a x hx
          induction hx using Submodule.span_induction with
          | mem t ht =>
            show a • t ∈ Submodule.span ℚ_[l] (TZ : Set V)
            rw [hdec]
            refine Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ?_)
            exact L.T.smul_mem (e i) ht
          | zero => simp
          | add x y _ _ hx hy =>
            show a • (x + y) ∈ Submodule.span ℚ_[l] (TZ : Set V)
            rw [smul_add]; exact Submodule.add_mem _ hx hy
          | smul q x _ hx =>
            show a • (q • x) ∈ Submodule.span ℚ_[l] (TZ : Set V)
            rw [← algebraMap_smul LL q x, smul_smul, mul_comm, ← smul_smul, algebraMap_smul]
            exact Submodule.smul_mem _ q hx }
    have hW : W = ⊤ := by
      rw [eq_top_iff, ← L.span, Submodule.span_le]
      intro t ht
      exact Submodule.subset_span ht
    rw [eq_top_iff]
    intro v _
    have : v ∈ W := hW ▸ Submodule.mem_top
    exact this
end GlobalTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZlLatticeOfCoefficientLattice =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorOfIntegralLocalDuality =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorOfIntegralLocalDuality", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DeRhamPotSemistable\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CoboundaryModIffForallTraceFormCoboundary\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DualLatticeRestrictScalarsTraceForm\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralDualFunctional\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ZlLatticeOfCoefficientLattice\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.BKIntDescent

theorem modTop_trans {F LL : Type} [Field F] [Field LL] [Algebra F LL] [TopologicalSpace F]
    [TopologicalSpace LL] [IsTopologicalRing LL] [IsModuleTopology F LL] (V : Type)
    [AddCommGroup V] [Module LL V] [Module F V] [IsScalarTower F LL V] [FiniteDimensional LL V]
    [TopologicalSpace V] [IsModuleTopology LL V] : IsModuleTopology F V := by
  haveI : ContinuousAdd V := IsModuleTopology.toContinuousAdd LL V
  let e := (Module.finBasis LL V).equivFun
  let e' : (Fin (finrank LL V) → LL) ≃L[F] V :=
    { e.symm.restrictScalars F with
      continuous_toFun := IsModuleTopology.continuous_of_linearMap e.symm.toLinearMap
      continuous_invFun := IsModuleTopology.continuous_of_linearMap e.toLinearMap }
  exact IsModuleTopology.iso e'

theorem csmul_trans {F LL V : Type} [Field F] [Field LL] [Algebra F LL] [AddCommGroup V] [Module LL V]
    [Module F V] [IsScalarTower F LL V] [TopologicalSpace V] [ContinuousConstSMul LL V] :
    ContinuousConstSMul F V :=
  ⟨fun c => by simpa only [algebraMap_smul] using continuous_const_smul (T := V) (algebraMap F LL c)⟩

variable {l : ℕ} [Fact l.Prime]

theorem actVB_resQ (P : LocPrime l) {K : FinExt l} {LL : Type} [Field LL] [Algebra ℚ_[l] LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    (ρ : Representation LL ↥(GK K) V) (g : ↥(GK K)) (x : V ⊗[ℚ_[l]] P.R.B) :
    actVB (P.PD K) (GlobalTheory.PstCoeff.resQ ρ) g x = actVB (P.PD K) ρ g x := by
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul v b => simp [actVB]
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

section Coch
variable (P : LocPrime l) {K : FinExt l} {LL : Type} [Field LL] [Algebra ℚ_[l] LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V] [ContinuousConstSMul ℚ_[l] V]
    (ρ : Representation LL ↥(GK K) V)

theorem mem_continuousCocycles_restrictScalars_Ql (c : ↥(GK K) → V) : c ∈ continuousCocycles (GlobalTheory.PstCoeff.resQ ρ) ↔ c ∈ continuousCocycles ρ := Iff.rfl

theorem mem_finiteCocycles_restrictScalars_Ql (c : ↥(GK K) → V) :
    c ∈ finiteCocycles (P.PD K) (GlobalTheory.PstCoeff.resQ ρ) ↔ c ∈ finiteCocycles (P.PD K) ρ := by
  change (c ∈ continuousCocycles _ ∧ ∃ x, ∀ g, _ = _) ↔ (c ∈ continuousCocycles _ ∧ ∃ x, ∀ g, _ = _)
  simp only [actVB_resQ, mem_continuousCocycles_restrictScalars_Ql]

end Coch

section Tor
variable {K : FinExt l}

theorem mk_liftD {LL O V G : Type} [Field LL] [CommRing O] [Algebra O LL] [AddCommGroup V] [Module LL V]
    [Module O V] [IsScalarTower O LL V] [Group G] {ρ : Representation LL G V} (L : Lattice (O := O) ρ)
    (y : V ⧸ L.T) : Submodule.Quotient.mk (liftD L y) = y :=
  (Submodule.Quotient.mk_surjective _ y).choose_spec

theorem mem_Z1T_iff {LL O V : Type} [Field LL] [CommRing O] [Algebra O LL] [AddCommGroup V] [Module LL V]
    [Module O V] [IsScalarTower O LL V] {ρ : Representation LL ↥(GK K) V} [TopologicalSpace V]
    [ContinuousAdd V] [ContinuousConstSMul LL V] (L : Lattice (O := O) ρ) (d : ↥(GK K) → V) :
    d ∈ latticeCocycles L ↔ d ∈ continuousCocycles ρ ∧ ∀ g, d g ∈ L.T := by
  simp only [latticeCocycles, Submodule.mem_inf, Submodule.restrictScalars_mem, Submodule.mem_pi, Set.mem_univ,
    true_implies]

theorem exists_quotEquiv {R S V : Type} [CommRing R] [CommRing S] [AddCommGroup V] [Module R V] [Module S V]
    (N : Submodule R V) (M : Submodule S V) (h : ∀ v, v ∈ M ↔ v ∈ N) :
    ∃ q : (V ⧸ N) ≃+ (V ⧸ M), ∀ v, q (Submodule.Quotient.mk v) = Submodule.Quotient.mk v := by
  have e : N.toAddSubgroup = M.toAddSubgroup := by ext v; exact (h v).symm
  exact ⟨QuotientAddGroup.quotientAddEquivOfEq e, fun v => rfl⟩

variable {LL O V : Type} [Field LL] [Algebra ℚ_[l] LL] [CommRing O] [Algebra O LL]
  [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V] [Module O V]
  [IsScalarTower O LL V] [Module ℤ_[l] V] [IsScalarTower ℤ_[l] ℚ_[l] V] {ρ : Representation LL ↥(GK K) V}

theorem q_actD (L : Lattice (O := O) ρ) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ))
    (q : (V ⧸ L.T) ≃+ (V ⧸ LZ.T)) (hq : ∀ v, q (Submodule.Quotient.mk v) = Submodule.Quotient.mk v)
    (g : ↥(GK K)) (y : V ⧸ L.T) : q (actD L g y) = actD LZ g (q y) := by
  obtain ⟨v, rfl⟩ := Submodule.Quotient.mk_surjective _ y
  rw [hq]
  change q (Submodule.Quotient.mk (ρ g v)) = Submodule.Quotient.mk (GlobalTheory.PstCoeff.resQ ρ g v)
  rw [hq]
  rfl

theorem mem_quotientCocycles_iff (L : Lattice (O := O) ρ) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ))
    (q : (V ⧸ L.T) ≃+ (V ⧸ LZ.T)) (hq : ∀ v, q (Submodule.Quotient.mk v) = Submodule.Quotient.mk v)
    (c : ↥(GK K) → V ⧸ L.T) : c ∈ divisibleCocycles L ↔ (fun g => q (c g)) ∈ divisibleCocycles LZ := by
  change (IsLocallyConstant c ∧ ∀ g h, c (g * h) = c g + actD L g (c h)) ↔
    (IsLocallyConstant (fun g => q (c g)) ∧ ∀ g h, q (c (g * h)) = q (c g) + actD LZ g (q (c h)))
  refine and_congr ⟨fun h => h.comp q, fun h => IsLocallyConstant.desc c q h q.injective⟩ ?_
  refine forall₂_congr fun g h => ?_
  rw [← q_actD L LZ q hq, ← map_add (f := _)]
  exact q.injective.eq_iff.symm

variable [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V] [ContinuousConstSMul ℚ_[l] V]

theorem mem_HfD_iff (P : LocPrime l) (L : Lattice (O := O) ρ) (c : ↥(GK K) → V ⧸ L.T) :
    c ∈ HfD (P.PD K) L ↔ ∃ z ∈ finiteCocycles (P.PD K) ρ, ∃ v : V, ∀ g, c g = Submodule.Quotient.mk (z g + (ρ g v - v)) := by
  constructor
  · intro hc
    obtain ⟨_, ⟨z, hz1, rfl⟩, _, ⟨v, rfl⟩, h⟩ := Submodule.mem_sup.1 hc
    obtain ⟨v, rfl⟩ := Submodule.Quotient.mk_surjective _ v
    exact ⟨z, hz1, v, fun g => (congrFun h g).symm⟩
  · rintro ⟨z, hz, v, h⟩
    exact Submodule.mem_sup.2 ⟨_, ⟨z, hz, rfl⟩, _, ⟨Submodule.Quotient.mk v, rfl⟩, funext fun g => (h g).symm⟩

theorem mem_HfD_iffZ (P : LocPrime l) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ)) (c : ↥(GK K) → V ⧸ LZ.T) :
    c ∈ HfD (P.PD K) LZ ↔ ∃ z ∈ finiteCocycles (P.PD K) (GlobalTheory.PstCoeff.resQ ρ), ∃ v : V,
      ∀ g, c g = Submodule.Quotient.mk (z g + (ρ g v - v)) := by
  constructor
  · intro hc
    obtain ⟨_, ⟨z, hz1, rfl⟩, _, ⟨v, rfl⟩, h⟩ := Submodule.mem_sup.1 hc
    obtain ⟨v, rfl⟩ := Submodule.Quotient.mk_surjective _ v
    exact ⟨z, hz1, v, fun g => (congrFun h g).symm⟩
  · rintro ⟨z, hz, v, h⟩
    exact Submodule.mem_sup.2 ⟨_, ⟨z, hz, rfl⟩, _, ⟨Submodule.Quotient.mk v, rfl⟩, funext fun g => (h g).symm⟩

theorem HfD_iff (P : LocPrime l) (L : Lattice (O := O) ρ) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ))
    (q : (V ⧸ L.T) ≃+ (V ⧸ LZ.T)) (hq : ∀ v, q (Submodule.Quotient.mk v) = Submodule.Quotient.mk v)
    (c : ↥(GK K) → V ⧸ L.T) : c ∈ HfD (P.PD K) L ↔ (fun g => q (c g)) ∈ HfD (P.PD K) LZ := by
  rw [mem_HfD_iff, mem_HfD_iffZ]
  refine exists_congr fun z => and_congr (mem_finiteCocycles_restrictScalars_Ql P ρ z).symm
    (exists_congr fun v => forall_congr' fun g => ?_)
  rw [← hq, q.injective.eq_iff]

theorem mem_Z1T_Z (L : Lattice (O := O) ρ) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ))
    (hLZ : ∀ v, v ∈ LZ.T ↔ v ∈ L.T) (d : ↥(GK K) → V) : d ∈ latticeCocycles LZ ↔ d ∈ latticeCocycles L := by
  rw [mem_Z1T_iff, mem_Z1T_iff, mem_continuousCocycles_restrictScalars_Ql]
  simp only [hLZ]

theorem mem_Z1fT_Z (P : LocPrime l) (L : Lattice (O := O) ρ) (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ))
    (hLZ : ∀ v, v ∈ LZ.T ↔ v ∈ L.T) (d : ↥(GK K) → V) : d ∈ latticeFiniteCocycles (P.PD K) LZ ↔ d ∈ latticeFiniteCocycles (P.PD K) L := by
  simp only [latticeFiniteCocycles, Submodule.mem_inf, Submodule.restrictScalars_mem, mem_Z1T_Z L LZ hLZ, mem_finiteCocycles_restrictScalars_Ql]

end Tor

section Cup
variable {K : FinExt l} {LL O V V' : Type} [Field LL] [Algebra ℚ_[l] LL] [CommRing O] [Algebra O LL]
  [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  [AddCommGroup V'] [Module LL V'] [Module ℚ_[l] V'] [IsScalarTower ℚ_[l] LL V'] [Module O V']
  [IsScalarTower O LL V'] [Module ℤ_[l] V'] [IsScalarTower ℤ_[l] ℚ_[l] V']
  {ρ : Representation LL ↥(GK K) V} {ρ' : Representation LL ↥(GK K) V'}

theorem cup_smul_left (L' : Lattice (O := O) ρ') (Pr : V →ₗ[LL] V' →ₗ[LL] LL) (o : O)
    (d : ↥(GK K) → V) (c : ↥(GK K) → V' ⧸ L'.T) (x : ↥(GK K) × ↥(GK K)) :
    cupLD L' Pr (o • d) c x = algebraMap O LL o * cupLD L' Pr d c x := by
  simp only [cupLD, Pi.smul_apply, ← algebraMap_smul LL o (d x.1), map_smul, LinearMap.smul_apply,
    smul_eq_mul]

theorem cup_smul_right (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ') (Pr : V →ₗ[LL] V' →ₗ[LL] LL)
    (hT : ∀ x ∈ L.T, ∀ y ∈ L'.T, ∃ a : O, Pr x y = algebraMap O LL a) (o : O)
    (d : ↥(GK K) → V) (hd : ∀ g, d g ∈ L.T) (c : ↥(GK K) → V' ⧸ L'.T) (x : ↥(GK K) × ↥(GK K)) :
    ∃ a : O, algebraMap O LL o * cupLD L' Pr d c x - cupLD L' Pr d (o • c) x = algebraMap O LL a := by
  have h1 : o • liftD L' (c x.2) - liftD L' ((o • c) x.2) ∈ L'.T := by
    refine (Submodule.Quotient.eq _).1 ?_
    rw [Submodule.Quotient.mk_smul, mk_liftD, mk_liftD]
    rfl
  obtain ⟨a, ha⟩ := hT _ (hd x.1) _ (L'.stable x.1 _ h1)
  refine ⟨a, ?_⟩
  have e1 : ρ' x.1 (o • liftD L' (c x.2)) = algebraMap O LL o • ρ' x.1 (liftD L' (c x.2)) := by
    rw [← algebraMap_smul LL o, map_smul]
  rw [← ha, map_sub, map_sub, e1, map_smul, smul_eq_mul]
  rfl

theorem cup_congr (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ') (Pr : V →ₗ[LL] V' →ₗ[LL] LL)
    (hT : ∀ x ∈ L.T, ∀ y ∈ L'.T, ∃ a : O, Pr x y = algebraMap O LL a)
    [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (hlam : ∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l]))
    (LZ' : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ')) (hLZ' : ∀ v, v ∈ LZ'.T ↔ v ∈ L'.T)
    (q : (V' ⧸ L'.T) ≃+ (V' ⧸ LZ'.T)) (hq : ∀ v, q (Submodule.Quotient.mk v) = Submodule.Quotient.mk v)
    (PQ : V →ₗ[ℚ_[l]] V' →ₗ[ℚ_[l]] ℚ_[l]) (hPQ : ∀ x y, PQ x y = lam (Pr x y))
    (d : ↥(GK K) → V) (hd : ∀ g, d g ∈ L.T) (c : ↥(GK K) → V' ⧸ L'.T) (x : ↥(GK K) × ↥(GK K)) :
    ∃ z : ℤ_[l], lam (cupLD L' Pr d c x) - cupLD LZ' PQ d (fun g => q (c g)) x = (z : ℚ_[l]) := by
  have h1 : liftD L' (c x.2) - liftD LZ' (q (c x.2)) ∈ L'.T := by
    rw [← hLZ']
    refine (Submodule.Quotient.eq _).1 ?_
    rw [mk_liftD, ← hq, mk_liftD]
  obtain ⟨a, ha⟩ := hT _ (hd x.1) _ (L'.stable x.1 _ h1)
  obtain ⟨z, hz⟩ := hlam a
  refine ⟨z, ?_⟩
  rw [← hz, ← ha, map_sub, map_sub, map_sub]
  simp only [cupLD, hPQ, GlobalTheory.PstCoeff.resQ_apply]

end Cup

theorem cobO_congr (P : LocPrime l) (K : FinExt l) (L1Z : Lattice (O := ℤ_[l]) (charRep (cycLL (P.PD K) ℚ_[l])))
    (hL1Z : L1Z.T = LinearMap.range (Algebra.linearMap ℤ_[l] ℚ_[l])) (z z' : ↥(GK K) × ↥(GK K) → ℚ_[l])
    (h : ∀ x, ∃ a : ℤ_[l], z x - z' x = (a : ℚ_[l])) : CobO (P.PD K) L1Z z ↔ CobO (P.PD K) L1Z z' := by
  have e : (fun x => (Submodule.Quotient.mk (z x) : ℚ_[l] ⧸ L1Z.T)) = fun x => Submodule.Quotient.mk (z' x) := by
    funext x
    refine (Submodule.Quotient.eq _).2 ?_
    obtain ⟨a, ha⟩ := h x
    rw [hL1Z, ha]
    exact ⟨a, rfl⟩
  unfold CobO
  rw [e]

theorem coef_data (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL]
    (O : Type) [CommRing O] [Algebra O LL] (hO : GoodO (Qp := ℚ_[l]) LL O) :
    ∃ (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O),
      (∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l])) ∧
      (∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l])) ∧
      (∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i)) :=
  _root_.GlobalTheory.IntDual.intDual_coef l LL O hO

theorem cobO_iff (P : LocPrime l) (K : FinExt l) {LL : Type} [Field LL] [Algebra ℚ_[l] LL]
    {O : Type} [CommRing O] [Algebra O LL] (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O)
    (hZ : ∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l]))
    (hlam : ∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l]))
    (hrec : ∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i))
    (L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)))
    (hL1 : L1.T = LinearMap.range (Algebra.linearMap O LL))
    (L1Z : Lattice (O := ℤ_[l]) (charRep (cycLL (P.PD K) ℚ_[l])))
    (hL1Z : L1Z.T = LinearMap.range (Algebra.linearMap ℤ_[l] ℚ_[l]))
    (z : ↥(GK K) × ↥(GK K) → LL) :
    CobO (P.PD K) L1 z ↔ ∀ o : O, CobO (P.PD K) L1Z (fun x => lam (algebraMap O LL o * z x)) :=
  _root_.GlobalTheory.cobO_iff_forall_lam l P K LL O lam n e f hZ hlam hrec L1 hL1 L1Z hL1Z z

theorem exists_latZ (K : FinExt l) {LL : Type} [Field LL] [Algebra ℚ_[l] LL]
    {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    [Module O V] [IsScalarTower O LL V] [Module ℤ_[l] V] [IsScalarTower ℤ_[l] ℚ_[l] V]
    (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O)
    (hZ : ∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l]))
    (hlam : ∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l]))
    (hrec : ∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i))
    (ρ : Representation LL ↥(GK K) V) (L : Lattice (O := O) ρ) :
    ∃ LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ), ∀ v, v ∈ LZ.T ↔ v ∈ L.T :=
  _root_.GlobalTheory.latticeZl_of_latticeO l K LL O V lam n e f hZ hlam hrec ρ L

theorem dualLatZ (P : LocPrime l) (K : FinExt l) {LL : Type} [Field LL] [Algebra ℚ_[l] LL]
    {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module ℚ_[l] V] [IsScalarTower ℚ_[l] LL V]
    [Module O V] [IsScalarTower O LL V] [Module ℤ_[l] V] [IsScalarTower ℤ_[l] ℚ_[l] V]
    {V' : Type} [AddCommGroup V'] [Module LL V'] [Module ℚ_[l] V'] [IsScalarTower ℚ_[l] LL V']
    [Module O V'] [IsScalarTower O LL V'] [Module ℤ_[l] V'] [IsScalarTower ℤ_[l] ℚ_[l] V']
    [FiniteDimensional ℚ_[l] LL] [FiniteDimensional LL V] [FiniteDimensional LL V']
    (lam : LL →ₗ[ℚ_[l]] ℚ_[l]) (n : ℕ) (e f : Fin n → O)
    (hZ : ∀ z : ℤ_[l], ∃ o : O, algebraMap O LL o = algebraMap ℚ_[l] LL (z : ℚ_[l]))
    (hlam : ∀ o : O, ∃ z : ℤ_[l], lam (algebraMap O LL o) = (z : ℚ_[l]))
    (hrec : ∀ x : LL, x = ∑ i, lam (algebraMap O LL (f i) * x) • algebraMap O LL (e i))
    (ρ : Representation LL ↥(GK K) V) (ρ' : Representation LL ↥(GK K) V')
    (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ')
    (LZ : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ)) (LZ' : Lattice (O := ℤ_[l]) (GlobalTheory.PstCoeff.resQ ρ'))
    (hLZ : ∀ v, v ∈ LZ.T ↔ v ∈ L.T) (hLZ' : ∀ v, v ∈ LZ'.T ↔ v ∈ L'.T)
    (Pr : V →ₗ[LL] V' →ₗ[LL] LL) (PQ : V →ₗ[ℚ_[l]] V' →ₗ[ℚ_[l]] ℚ_[l])
    (hPQ : ∀ x y, PQ x y = lam (Pr x y)) (hP : IsDualLat1 (P.PD K) L L' Pr) :
    IsDualLat1 (P.PD K) LZ LZ' PQ :=
  _root_.GlobalTheory.DualLatDescent.dualLat_resQ l P K LL O V V' lam n e f hZ hlam hrec ρ ρ' L L' LZ LZ' hLZ hLZ' Pr PQ hPQ hP

theorem bkBCore_of_integralDuality : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l),
    GlobalTheory.Published.BlochKato.IntegralDuality (P.PD K) → bkBCore (P.PD K) := by
  intro l _ P K hI LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' Pr hdR hP
  obtain ⟨lam, n, e, f, hZ, hlam, hrec⟩ := coef_data LL O hO
  haveI : FiniteDimensional ℚ_[l] LL := hO.2.1
  haveI : IsModuleTopology ℚ_[l] LL := hO.2.2.1
  haveI : IsTopologicalRing LL := hO.2.2.2.1
  letI : Module ℤ_[l] A.V := Module.compHom A.V (algebraMap ℤ_[l] ℚ_[l])
  letI : Module ℤ_[l] A'.V := Module.compHom A'.V (algebraMap ℤ_[l] ℚ_[l])
  haveI : IsScalarTower ℤ_[l] ℚ_[l] A.V := IsScalarTower.of_algebraMap_smul fun _ _ => rfl
  haveI : IsScalarTower ℤ_[l] ℚ_[l] A'.V := IsScalarTower.of_algebraMap_smul fun _ _ => rfl
  haveI : FiniteDimensional ℚ_[l] A.V := Module.Finite.trans LL A.V
  haveI : FiniteDimensional ℚ_[l] A'.V := Module.Finite.trans LL A'.V
  haveI : IsModuleTopology ℚ_[l] A.V := modTop_trans (LL := LL) A.V
  haveI : IsModuleTopology ℚ_[l] A'.V := modTop_trans (LL := LL) A'.V
  haveI : ContinuousConstSMul ℚ_[l] A.V := csmul_trans (LL := LL)
  haveI : ContinuousConstSMul ℚ_[l] A'.V := csmul_trans (LL := LL)
  obtain ⟨LZ, hLZ⟩ := exists_latZ K lam n e f hZ hlam hrec A.ρ LA
  obtain ⟨LZ', hLZ'⟩ := exists_latZ K lam n e f hZ hlam hrec A'.ρ LA'
  obtain ⟨L1Z, hL1Z⟩ := GlobalTheory.Published.BlochKato.exists_cyclotomicLattice l P K
  obtain ⟨q, hq⟩ := exists_quotEquiv LA'.T LZ'.T hLZ'
  let PQ : A.V →ₗ[ℚ_[l]] A'.V →ₗ[ℚ_[l]] ℚ_[l] := LinearMap.mk₂ ℚ_[l] (fun x y => lam (Pr x y))
    (fun x x' y => by beta_reduce; rw [map_add (f := _), LinearMap.add_apply, map_add (f := _)])
    (fun c x y => by
      rw [← algebraMap_smul LL c x, map_smul, LinearMap.smul_apply, smul_eq_mul, ← Algebra.smul_def, map_smul])
    (fun x y y' => by beta_reduce; rw [map_add (f := _), map_add (f := _)])
    (fun c x y => by
      rw [← algebraMap_smul LL c y, map_smul, smul_eq_mul, ← Algebra.smul_def, map_smul])
  have hPQ : ∀ x y, PQ x y = lam (Pr x y) := fun _ _ => rfl
  have hdRQ : IsDR (P.PD K) (GlobalTheory.PstCoeff.resQ A.ρ) := (GlobalTheory.PstCoeff.isDR_resQ_iff P A.ρ).mpr hdR
  have hPZ := dualLatZ P K lam n e f hZ hlam hrec A.ρ A'.ρ LA LA' LZ LZ' hLZ hLZ' Pr PQ hPQ hP
  obtain ⟨H1, H2⟩ := hI L1Z hL1Z A.V A'.V (GlobalTheory.PstCoeff.resQ A.ρ) (GlobalTheory.PstCoeff.resQ A'.ρ) LZ LZ' PQ
    A.cont A'.cont hdRQ hPZ
  have hT : ∀ x ∈ LA.T, ∀ y ∈ LA'.T, ∃ a : O, Pr x y = algebraMap O LL a :=
    fun x hx y hy => (hP.2 y).1 hy x hx
  have hval : ∀ d, d ∈ latticeCocycles LA → ∀ g, d g ∈ LA.T := fun d hd => ((mem_Z1T_iff LA d).1 hd).2
  have key := cobO_iff P K lam n e f hZ hlam hrec L1 hL1 L1Z hL1Z
  have down : ∀ d : ↥(GK K) → A.V, (∀ g, d g ∈ LA.T) → ∀ c : ↥(GK K) → A'.V ⧸ LA'.T,
      CobO (P.PD K) L1 (cupLD LA' Pr d c) → CobO (P.PD K) L1Z (cupLD LZ' PQ d (fun g => q (c g))) := by
    intro d hd c h
    have h1 := (key _).1 h 1
    simp only [map_one, one_mul] at h1
    exact (cobO_congr P K L1Z hL1Z _ _ (cup_congr LA LA' Pr hT lam hlam LZ' hLZ' q hq PQ hPQ d hd c)).1 h1
  refine ⟨fun c hc => ?_, fun d hd => ?_⟩
  · have hc' := (mem_quotientCocycles_iff LA' LZ' q hq c).1 hc
    rw [HfD_iff P LA' LZ' q hq c, H1 _ hc']
    constructor
    · intro h d hd
      refine (key _).2 fun o => ?_
      have hod : o • d ∈ latticeFiniteCocycles (P.PD K) LA := Submodule.smul_mem _ o hd
      have e1 : (fun x => lam (algebraMap O LL o * cupLD LA' Pr d c x)) =
          fun x => lam (cupLD LA' Pr (o • d) c x) := by
        funext x
        rw [cup_smul_left]
      rw [e1]
      refine (cobO_congr P K L1Z hL1Z _ _ (cup_congr LA LA' Pr hT lam hlam LZ' hLZ' q hq PQ hPQ (o • d)
        (hval _ (Submodule.mem_inf.1 hod).1) c)).2 ?_
      exact h _ ((mem_Z1fT_Z P LA LZ hLZ _).2 hod)
    · intro h d hd
      have hd' := (mem_Z1fT_Z P LA LZ hLZ d).1 hd
      exact down d (hval d (Submodule.mem_inf.1 hd').1) c (h d hd')
  · have hdZ := (mem_Z1T_Z LA LZ hLZ d).2 hd
    rw [← mem_Z1fT_Z P LA LZ hLZ d, H2 d hdZ]
    constructor
    · intro h c hc hcf
      refine (key _).2 fun o => ?_
      have hoc : o • c ∈ divisibleCocycles LA' := Submodule.smul_mem _ o hc
      have hocf : o • c ∈ HfD (P.PD K) LA' := Submodule.smul_mem _ o hcf
      have h3 := h _ ((mem_quotientCocycles_iff LA' LZ' q hq _).1 hoc) ((HfD_iff P LA' LZ' q hq _).1 hocf)
      refine (cobO_congr P K L1Z hL1Z _ _ fun x => ?_).2 h3
      obtain ⟨a, ha⟩ := cup_smul_right LA LA' Pr hT o d (hval d hd) c x
      obtain ⟨z1, hz1⟩ := hlam a
      obtain ⟨z2, hz2⟩ := cup_congr LA LA' Pr hT lam hlam LZ' hLZ' q hq PQ hPQ d (hval d hd) (o • c) x
      refine ⟨z1 + z2, ?_⟩
      rw [PadicInt.coe_add, ← hz1, ← hz2, ← ha, map_sub]
      ring
    · intro h c' hc' hcf'
      obtain ⟨c, rfl⟩ : ∃ c : ↥(GK K) → A'.V ⧸ LA'.T, (fun g => q (c g)) = c' :=
        ⟨fun g => q.symm (c' g), funext fun g => q.apply_symm_apply _⟩
      exact down d (hval d hd) c (h c ((mem_quotientCocycles_iff LA' LZ' q hq c).2 hc') ((HfD_iff P LA' LZ' q hq c).2 hcf'))

end GlobalTheory.BKIntDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorOfIntegralLocalDuality =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.BKFinLevelKer

theorem mk_eq_of_smul {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
    {ρ : Representation LL G V} (L : Lattice (O := O) ρ) (ϖ : O) (r : ℕ) (π : LL) (hπ : π ≠ 0)
    (hpr : ∀ v : V, π ^ r • v = ϖ ^ r • v) (u v w : V) (hu : u ∈ L.T) (hv : v ∈ L.T)
    (hvw : π⁻¹ ^ r • u - w ∈ L.T) (hyw : v = π ^ r • w) :
    (Submodule.Quotient.mk (⟨v, hv⟩ : ↥L.T) : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) =
      Submodule.Quotient.mk ⟨u, hu⟩ := by
  rw [Submodule.Quotient.eq]
  have ht : (⟨v, hv⟩ : ↥L.T) - ⟨u, hu⟩ = ϖ ^ r • (-(⟨_, hvw⟩ : ↥L.T)) := by
    apply Subtype.ext
    simp only [Submodule.coe_sub, Submodule.coe_smul, Submodule.coe_neg]
    rw [← hpr, smul_neg, smul_sub, smul_smul, ← mul_pow, mul_inv_cancel₀ hπ, one_pow, one_smul, hyw]
    abel
  rw [ht]
  exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) Submodule.mem_top

theorem hfQ_of_ioL_mem_HfD : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (ϖ : O), Irreducible ϖ → ∀ (r : ℕ) (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) (c : ↥(GK K) → ↥LA.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)), (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (c g)) ∈ HfD (P.PD K) LA → c ∈ HfQ (P.PD K) LA _ hI := by
  intro l _ P K LL _ _ _ O _ _ hO A LA ϖ hϖ r hI c hc
  obtain ⟨π, hπdef⟩ : ∃ π : LL, π = algebraMap O LL ϖ := ⟨_, rfl⟩
  have hπ : π ≠ 0 := by
    obtain ⟨⟨hDom, hDVR, hFr⟩, -, -, -, -⟩ := hO
    haveI := hDom; haveI := hDVR; haveI := hFr
    intro h
    exact hϖ.ne_zero (IsFractionRing.injective O LL (by rw [← hπdef, h, map_zero]))
  clear hO

  obtain ⟨_, ⟨z, hz, rfl⟩, _, ⟨xq, rfl⟩, hsum⟩ := Submodule.mem_sup.1 hc
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ xq
  obtain ⟨w, hwdef⟩ : ∃ w : ↥(GK K) → A.V, w = z + fun g => A.ρ g x - x := ⟨_, rfl⟩
  have hcob : (fun g => A.ρ g x - x) ∈ finiteCocycles (P.PD K) A.ρ := by
    refine ⟨⟨?_, fun g h => ?_⟩, x ⊗ₜ[ℚ_[l]] (1 : _), fun g => ?_⟩
    · simp_rw [sub_eq_add_neg]
      exact (A.cont x).add continuous_const
    · simp only [map_mul, Module.End.mul_apply, map_sub]
      abel
    · simp [actVB, sub_tmul]
  have hw : w ∈ finiteCocycles (P.PD K) A.ρ := hwdef ▸ (finiteCocycles (P.PD K) A.ρ).add_mem hz hcob

  choose ch hch using fun g => Submodule.Quotient.mk_surjective _ (c g)

  have hpt : ∀ g, (π⁻¹ ^ r • ((ch g : ↥LA.T) : A.V)) - w g ∈ LA.T := by
    intro g
    have key : GlobalTheory.BKFinLevel.ioL LA ϖ r (c g) = Submodule.Quotient.mk (p := LA.T) (w g) :=
      by rw [← congrFun hsum g, hwdef]; rfl
    have h2 : (Submodule.Quotient.mk (π⁻¹ ^ r • ((ch g : ↥LA.T) : A.V)) : A.V ⧸ LA.T) =
        Submodule.Quotient.mk (w g) :=
      hπdef ▸ (GlobalTheory.BKFinLevel.ioL_mk LA ϖ r (ch g)).symm.trans ((congrArg _ (hch g)).trans key)
    exact (Submodule.Quotient.eq _).1 h2
  obtain ⟨y, hydef⟩ : ∃ y : ↥(GK K) → A.V, y = fun g => π ^ r • w g := ⟨_, rfl⟩
  have hyf : y ∈ finiteCocycles (P.PD K) A.ρ := by
    have h := (finiteCocycles (P.PD K) A.ρ).smul_mem (π ^ r) hw
    subst hydef; exact h
  have hpr : ∀ v : A.V, π ^ r • v = ϖ ^ r • v := fun v => by
    rw [hπdef, ← map_pow, algebraMap_smul]
  have hyT : ∀ g, y g ∈ LA.T := by
    intro g
    have : y g = ((ch g : ↥LA.T) : A.V) - ϖ ^ r • ((π⁻¹ ^ r • ((ch g : ↥LA.T) : A.V)) - w g) := by
      rw [← hpr, smul_sub, smul_smul, ← mul_pow, mul_inv_cancel₀ hπ, one_pow, one_smul]
      simp [hydef]
    rw [this]
    exact LA.T.sub_mem (ch g).2 (LA.T.smul_mem _ (hpt g))
  have hyZ : y ∈ latticeCocycles LA := ⟨hyf.1, fun g _ => hyT g⟩
  refine Submodule.mem_sup_left ⟨⟨y, hyZ⟩, ⟨hyZ, hyf⟩, ?_⟩
  funext g
  have e : (redT LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T) ⟨y, hyZ⟩) g =
      Submodule.Quotient.mk (⟨y g, hyT g⟩ : ↥LA.T) := rfl
  rw [e, ← hch g]
  exact mk_eq_of_smul LA ϖ r π hπ hpr _ _ (w g) (ch g).2 (hyT g) (hpt g) (by rw [hydef])

end GlobalTheory.BKFinLevelKer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPow =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPow", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.BKOrthRed

section Gen

variable {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
  {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  {ρ : Representation LL G V}

theorem liftQ_eq (L : Lattice (O := O) ρ) (ϖ : O) (r : ℕ) (v : V) (hv : v ∈ L.T) :
    ∃ t : ↥L.T, Formalism.MainNotions.LocalSituation.liftQ L (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)
      (Submodule.Quotient.mk ⟨v, hv⟩) = v + (algebraMap O LL ϖ) ^ r • (t : V) := by
  have hs := (Submodule.Quotient.mk_surjective (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)
    (Submodule.Quotient.mk ⟨v, hv⟩)).choose_spec
  obtain ⟨t, ht⟩ := (_root_.GlobalTheory.TateOrth.mem_span_smul_top L _ _).1 ((Submodule.Quotient.eq _).1 hs)
  refine ⟨t, ?_⟩
  have h2 := congrArg (fun x : ↥L.T => (x : V)) ht
  simp only [Submodule.coe_sub, Submodule.coe_smul] at h2
  unfold Formalism.MainNotions.LocalSituation.liftQ
  rw [← map_pow, algebraMap_smul, ← h2]
  abel

end Gen

section Gal

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR] [TopologicalSpace Qp]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O LL]
    [IsFractionRing O LL]

theorem hfQ_lift {A : GRep G Qp LL O} (LA : Lattice (O := O) A.ρ) (I : Submodule O ↥LA.T)
    (hI : StableSub LA I) (c : G → ↥LA.T ⧸ I) (hc : c ∈ HfQ PD LA I hI) :
    ∃ a : G → A.V, a ∈ finiteCocycles PD A.ρ ∧ ∀ g, ∃ h : a g ∈ LA.T, c g = Submodule.Quotient.mk ⟨a g, h⟩ := by
  rw [HfQ, Submodule.mem_sup] at hc
  obtain ⟨y, hy, z, hz, rfl⟩ := hc
  obtain ⟨a0, ha0, rfl⟩ := hy
  obtain ⟨x, rfl⟩ := hz
  obtain ⟨xh, rfl⟩ := Submodule.Quotient.mk_surjective I x
  refine ⟨(a0 : G → A.V) + cob A.ρ (xh : A.V), (finiteCocycles PD A.ρ).add_mem ha0.2 (Formalism.MainNotions.BlochKatoDuality.Br.coboundary_mem_finite_cocycles PD A _),
    fun g => ⟨LA.T.add_mem (a0.2.2 g trivial) (LA.T.sub_mem (LA.stable g _ xh.2) xh.2), ?_⟩⟩
  show Submodule.Quotient.mk (evT LA g a0) + (actQ LA I hI g (Submodule.Quotient.mk xh) - Submodule.Quotient.mk xh) = _
  rw [actQ, Submodule.mapQ_apply, ← Submodule.Quotient.mk_sub, ← Submodule.Quotient.mk_add]
  congr 1

end Gal

theorem cupQ_cobO_of_bkA : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l), Formalism.MainNotions.N.bkACore (P.PD K) → ∀ (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)), L1.T = LinearMap.range (Algebra.linearMap O LL) → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDR (P.PD K) A.ρ → IsDualLat1 (P.PD K) LA LA' m → ∀ (ϖ : O) (r : ℕ) (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) (hI' : StableSub LA' (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T)), ∀ c ∈ HfQ (P.PD K) LA _ hI, ∀ c' ∈ HfQ (P.PD K) LA' _ hI', CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c') := by
  intro l _ P K hA LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hDR hd ϖ r hI hI' c hc c' hc'
  have hA' := hA LL O hO
  obtain ⟨⟨hDom, hDVR, hFr⟩, hfd, hmt, htr, hopen⟩ := hO
  haveI := hDom; haveI := hDVR; haveI := hFr; haveI := htr
  obtain ⟨a, ha, hag⟩ := hfQ_lift (P.PD K) LA _ hI c hc
  obtain ⟨b, hb, hbg⟩ := hfQ_lift (P.PD K) LA' _ hI' c' hc'
  obtain ⟨f, hf, hfd1⟩ := ((hA' A A' m hDR hd.1).1 a ha.1).1 ha b hb
  set s : LL := (algebraMap O LL ϖ)⁻¹ ^ r with hs
  have hcob : CobL (P.PD K) (fun x => s * cupL A'.ρ m a b x) := by
    refine ⟨s • f, continuous_const.mul hf, ?_⟩
    rw [map_smul, hfd1]
    rfl
  have hred := Formalism.MainNotions.BlochKatoDuality.Br.red_cob (P.PD K) hopen L1 hL1 _ hcob
  refine (Formalism.MainNotions.BlochKatoDuality.Br.cobO_congr (P.PD K) L1 _ _ ?_).2 hred
  rintro ⟨g, h⟩
  obtain ⟨hag1, hcg⟩ := hag g
  obtain ⟨hbh1, hch⟩ := hbg h
  obtain ⟨t, ht⟩ := liftQ_eq LA ϖ r (a g) hag1
  obtain ⟨t', ht'⟩ := liftQ_eq LA' ϖ r (b h) hbh1
  obtain ⟨u1, hu1⟩ := (hd.2 _).1 (LA'.stable g _ hbh1) t t.2
  obtain ⟨u2, hu2⟩ := (hd.2 _).1 (LA'.stable g _ t'.2) (a g) hag1
  obtain ⟨u3, hu3⟩ := (hd.2 _).1 (LA'.stable g _ t'.2) t t.2
  have ho : ∃ o : O, algebraMap O LL o = s * (algebraMap O LL ϖ) ^ r := by
    rw [hs, ← mul_pow]
    rcases eq_or_ne (algebraMap O LL ϖ) 0 with h0 | h0
    · exact ⟨0 ^ r, by rw [h0, inv_zero, zero_mul, map_pow, map_zero]⟩
    · exact ⟨1, by rw [inv_mul_cancel₀ h0, one_pow, map_one]⟩
  obtain ⟨o, ho⟩ := ho
  rw [Submodule.Quotient.eq, hL1]
  refine ⟨o * (u1 + u2 + ϖ ^ r * u3), ?_⟩
  show _ = s * m (Formalism.MainNotions.LocalSituation.liftQ LA _ (c g)) (A'.ρ g (Formalism.MainNotions.LocalSituation.liftQ LA' _ (c' h))) - s * m (a g) (A'.ρ g (b h))
  rw [hcg, hch, ht, ht']
  simp only [Algebra.linearMap_apply, map_mul, map_add (f := _), map_pow, map_smul, LinearMap.add_apply,
    LinearMap.smul_apply, smul_eq_mul]
  rw [← hu1, ← hu2, ← hu3, ho]
  ring

end GlobalTheory.BKOrthRed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPow =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.BKFinLevel.NatCup

section Lifts

variable {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
  {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  {ρ : Representation LL G V}

theorem liftQ_mem_lat (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (x : ↥L.T ⧸ I) :
    Formalism.MainNotions.LocalSituation.liftQ L I x ∈ L.T :=
  (Submodule.Quotient.mk_surjective I x).choose.2

theorem mk_liftQ_lat (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (x : ↥L.T ⧸ I) :
    (Submodule.Quotient.mk ⟨Formalism.MainNotions.LocalSituation.liftQ L I x, liftQ_mem_lat L I x⟩ : ↥L.T ⧸ I) = x :=
  (Submodule.Quotient.mk_surjective I x).choose_spec

theorem mk_liftD_lat (L : Lattice (O := O) ρ) (c : V ⧸ L.T) :
    (Submodule.Quotient.mk (liftD L c) : V ⧸ L.T) = c :=
  (Submodule.Quotient.mk_surjective L.T c).choose_spec

theorem mem_span_pow_smul_top (L : Lattice (O := O) ρ) (a : O) (x : ↥L.T) :
    x ∈ (Ideal.span {a} • ⊤ : Submodule O ↥L.T) ↔ ∃ y : ↥L.T, x = a • y := by
  rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
  constructor
  · rintro ⟨y, -, rfl⟩; exact ⟨y, rfl⟩
  · rintro ⟨y, rfl⟩; exact ⟨y, Submodule.mem_top, rfl⟩

theorem inv_pow_mul_pow_mem (ϖ : O) (r : ℕ) :
    ∃ e : O, (algebraMap O LL ϖ)⁻¹ ^ r * (algebraMap O LL ϖ) ^ r = algebraMap O LL e := by
  rcases eq_or_ne (algebraMap O LL ϖ) 0 with h0 | h0
  · rcases Nat.eq_zero_or_pos r with hr | hr
    · exact ⟨1, by simp [hr]⟩
    · exact ⟨0, by simp [h0, zero_pow hr.ne']⟩
  · exact ⟨1, by rw [← mul_pow, inv_mul_cancel₀ h0, one_pow, map_one]⟩

theorem pair_shift {V' : Type} [AddCommGroup V'] [Module LL V'] (m : V →ₗ[LL] V' →ₗ[LL] LL)
    (f : V' →ₗ[LL] V') (a t â : V) (w y : V') (c π k u v : LL) (hâ : â = a + π • t)
    (hk : c * π = k) (hu : m a (f (w - c • y)) = u) (hv : m t (f y) = v) :
    u - k * v = m a (f w) - c * m â (f y) := by
  subst hâ hk hu hv
  simp only [map_sub, map_add (f := _), map_smul, LinearMap.add_apply,
    LinearMap.smul_apply, smul_eq_mul]
  ring

end Lifts

end GlobalTheory.BKFinLevel.NatCup

namespace GlobalTheory.BKFinLevel


open GlobalTheory.BKFinLevel.NatCup in
theorem cobO_cupLD_ioL_iff : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)), L1.T = LinearMap.range (Algebra.linearMap O LL) → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (P.PD K) LA LA' m → ∀ (ϖ : O) (r : ℕ) (d : ↥(latticeCocycles LA)) (c' : ↥(GK K) → ↥LA'.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T)), CobO (P.PD K) L1 (cupLD LA' m (d : ↥(GK K) → A.V) (fun g => GlobalTheory.BKFinLevel.ioL LA' ϖ r (c' g))) ↔ CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r (redT LA _ d) c') := by
  intro l _ P K LL _ _ _ O _ _ _ L1 hL1 A A' LA LA' m hd ϖ r d c'
  have key : ∀ x, (Submodule.Quotient.mk (cupLD LA' m (d : ↥(GK K) → A.V)
      (fun g => ioL LA' ϖ r (c' g)) x) : LL ⧸ L1.T) =
      Submodule.Quotient.mk (cupQ LA LA' m ϖ r (redT LA _ d) c' x) := by
    rintro ⟨g, h⟩
    rw [Submodule.Quotient.eq, hL1]
    obtain ⟨e, he⟩ := inv_pow_mul_pow_mem (LL := LL) ϖ r

    have hyT := liftQ_mem_lat LA' _ (c' h)
    have hw : liftD LA' (ioL LA' ϖ r (c' h)) -
        (algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ LA' _ (c' h) ∈ LA'.T := by
      have h2 : ioL LA' ϖ r (c' h) = Submodule.Quotient.mk
          ((algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ LA' _ (c' h)) := by
        conv_lhs => rw [← mk_liftQ_lat LA' _ (c' h)]
        rfl
      exact (Submodule.Quotient.eq _).1 ((mk_liftD_lat LA' _).trans h2)

    have haT : (d : ↥(GK K) → A.V) g ∈ LA.T := d.2.2 g (Set.mem_univ g)
    have hred : (Submodule.Quotient.mk ⟨Formalism.MainNotions.LocalSituation.liftQ LA _ (redT LA _ d g),
        liftQ_mem_lat LA _ _⟩ : ↥LA.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) =
        Submodule.Quotient.mk ⟨(d : ↥(GK K) → A.V) g, haT⟩ := mk_liftQ_lat LA _ _
    obtain ⟨t, ht⟩ := (mem_span_pow_smul_top LA _ _).1 ((Submodule.Quotient.eq _).1 hred)
    have ht' : Formalism.MainNotions.LocalSituation.liftQ LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T) (redT LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T) d g) =
        (d : ↥(GK K) → A.V) g + (algebraMap O LL ϖ) ^ r • (t : A.V) := by
      have := congrArg (fun z : ↥LA.T => (z : A.V)) ht
      simp only [Submodule.coe_sub, Submodule.coe_smul] at this
      have hs : (algebraMap O LL ϖ) ^ r • (t : A.V) = ϖ ^ r • (t : A.V) := by
        rw [← map_pow, algebraMap_smul]
      rw [hs]
      exact (sub_eq_iff_eq_add').1 this
    have hw2 : A'.ρ g (liftD LA' (ioL LA' ϖ r (c' h)) - (algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ LA' (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T) (c' h)) ∈ LA'.T := LA'.stable g _ hw
    have hy2 : A'.ρ g (Formalism.MainNotions.LocalSituation.liftQ LA' (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T) (c' h)) ∈ LA'.T := LA'.stable g _ hyT
    have hb1' : ∃ b : O, m ((d : ↥(GK K) → A.V) g) (A'.ρ g (liftD LA' (ioL LA' ϖ r (c' h)) - (algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ LA' (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T) (c' h))) = algebraMap O LL b := (hd.2 _).1 hw2 _ haT
    have hb2' : ∃ b : O, m (t : A.V) (A'.ρ g (Formalism.MainNotions.LocalSituation.liftQ LA' (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA'.T) (c' h))) = algebraMap O LL b := (hd.2 _).1 hy2 _ t.2
    obtain ⟨b1, hb1⟩ := hb1'
    obtain ⟨b2, hb2⟩ := hb2'
    refine ⟨b1 - e * b2, ?_⟩
    show algebraMap O LL (b1 - e * b2) =
      m ((d : ↥(GK K) → A.V) g) (A'.ρ g (liftD LA' (ioL LA' ϖ r (c' h)))) -
        (algebraMap O LL ϖ)⁻¹ ^ r * m (Formalism.MainNotions.LocalSituation.liftQ LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T) (redT LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T) d g))
          (A'.ρ g (Formalism.MainNotions.LocalSituation.liftQ LA' _ (c' h)))
    have hsplit : algebraMap O LL (b1 - e * b2) =
        algebraMap O LL b1 - algebraMap O LL e * algebraMap O LL b2 := by
      rw [map_sub, map_mul]
    exact hsplit.trans (pair_shift m (A'.ρ g) _ _ _ _ _ _ _ _ _ _ ht' he hb1 hb2)
  unfold CobO
  exact Iff.of_eq (congrArg (fun z => z ∈ ReciprocityTheory.Def.B2 (repD L1) ⊤) (funext key))

end GlobalTheory.BKFinLevel
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIff =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIff", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

noncomputable section

namespace GlobalTheory.BKSwapCup

section Gen
variable {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
  {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  {ρ : Representation LL G V}

theorem liftQ_mem (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (q : ↥L.T ⧸ I) :
    Formalism.MainNotions.LocalSituation.liftQ L I q ∈ L.T :=
  (Submodule.Quotient.mk_surjective I q).choose.2

theorem mk_liftQ (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (q : ↥L.T ⧸ I) :
    (Submodule.Quotient.mk (⟨Formalism.MainNotions.LocalSituation.liftQ L I q, liftQ_mem L I q⟩ : ↥L.T) : ↥L.T ⧸ I) = q :=
  (Submodule.Quotient.mk_surjective I q).choose_spec

theorem liftQ_sub (L : Lattice (O := O) ρ) (ϖ : O) (r : ℕ) (x : ↥L.T)
    (q : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) (hq : Submodule.Quotient.mk x = q) :
    ∃ t ∈ L.T, Formalism.MainNotions.LocalSituation.liftQ L _ q - (x : V) = (algebraMap O LL ϖ) ^ r • t := by
  have h : (⟨Formalism.MainNotions.LocalSituation.liftQ L _ q, liftQ_mem L _ q⟩ : ↥L.T) - x ∈
      (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T) :=
    (Submodule.Quotient.eq _).1 ((mk_liftQ L _ q).trans hq.symm)
  generalize hy : (⟨Formalism.MainNotions.LocalSituation.liftQ L _ q, liftQ_mem L _ q⟩ : ↥L.T) - x = y at h
  rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists] at h
  obtain ⟨t, -, ht⟩ := h
  subst ht
  refine ⟨t, t.2, ?_⟩
  rw [← map_pow, algebraMap_smul, ← Submodule.coe_smul, ← hy]
  rfl

theorem inv_pow_mul_pow_mem (ϖ : O) (r : ℕ) :
    ∃ e : O, (algebraMap O LL ϖ)⁻¹ ^ r * (algebraMap O LL ϖ) ^ r = algebraMap O LL e := by
  rcases eq_or_ne (algebraMap O LL ϖ) 0 with h | h
  · rcases Nat.eq_zero_or_pos r with hr | hr
    · exact ⟨1, by subst hr; simp⟩
    · exact ⟨0, by rw [h, zero_pow hr.ne', mul_zero, map_zero]⟩
  · exact ⟨1, by rw [← mul_pow, inv_mul_cancel₀ h, one_pow, map_one]⟩

end Gen
end GlobalTheory.BKSwapCup

namespace GlobalTheory.BKSwapCup

section Cong
variable {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
  {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
  {ρ : Representation LL G V}
  {V' : Type} [AddCommGroup V'] [Module LL V'] [Module O V'] [IsScalarTower O LL V']
  {ρ' : Representation LL G V'}

def swapF (L : Lattice (O := O) ρ) (P : V →ₗ[LL] V' →ₗ[LL] LL) (ϖ : O) (r : ℕ)
    (s : G → ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) (d : G → V') (g : G) : LL :=
  (algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s g)) (d g)

theorem swap_cong (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ') (P : V →ₗ[LL] V' →ₗ[LL] LL)
    (hint : ∀ x ∈ L.T, ∀ y ∈ L'.T, ∃ e : O, P x y = algebraMap O LL e)
    (χ : G → LL) (hχ : ∀ g x y, P (ρ g x) (ρ' g y) = χ g * P x y) (ϖ : O) (r : ℕ)
    (hI : StableSub L (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T))
    (s : G → ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T))
    (hs : ∀ g h, s (g * h) = s g + actQ L _ hI g (s h))
    (d : G → V') (hdT : ∀ g, d g ∈ L'.T) (hdmul : ∀ g h, d (g * h) = d g + ρ' g (d h))
    (q : G → ↥L'.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L'.T))
    (hq : ∀ h, Submodule.Quotient.mk (⟨d h, hdT h⟩ : ↥L'.T) = q h) (g h : G) :
    ∃ e : O, GlobalTheory.BKFinLevel.cupQ L L' P ϖ r s q (g, h)
      + cupLD L P.flip d (fun g => GlobalTheory.BKFinLevel.ioL L ϖ r (s g)) (g, h)
      + (χ g * swapF L P ϖ r s d h - swapF L P ϖ r s d (g * h) + swapF L P ϖ r s d g)
      = algebraMap O LL e := by
  have huT : ∀ g, Formalism.MainNotions.LocalSituation.liftQ L _ (s g) ∈ L.T := fun g => liftQ_mem L _ (s g)
  have hmk : ∀ g, (Submodule.Quotient.mk (⟨Formalism.MainNotions.LocalSituation.liftQ L _ (s g), huT g⟩ : ↥L.T) :
      ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) = s g :=
    fun g => mk_liftQ L _ (s g)

  have hq3 : (Submodule.Quotient.mk (⟨Formalism.MainNotions.LocalSituation.liftQ L _ (s g), huT g⟩ +
      actT L g ⟨Formalism.MainNotions.LocalSituation.liftQ L _ (s h), huT h⟩ : ↥L.T) :
      ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) = s (g * h) := by
    rw [hs g h]
    exact (Submodule.Quotient.mk_add _).trans
      (congrArg₂ (· + ·) (hmk g) (congrArg (actQ L _ hI g) (hmk h)))
  obtain ⟨t3, ht3, hu3⟩ := liftQ_sub L ϖ r _ _ hq3

  obtain ⟨t1, ht1, hd1⟩ := liftQ_sub L' ϖ r _ _ (hq h)

  have hio : GlobalTheory.BKFinLevel.ioL L ϖ r (s h) =
      Submodule.Quotient.mk ((algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ L _ (s h)) :=
    (congrArg (GlobalTheory.BKFinLevel.ioL L ϖ r) (mk_liftQ L _ (s h))).symm.trans
      (GlobalTheory.BKFinLevel.ioL_mk L ϖ r _)
  have hl : (Submodule.Quotient.mk (liftD L (GlobalTheory.BKFinLevel.ioL L ϖ r (s h))) : V ⧸ L.T) =
      GlobalTheory.BKFinLevel.ioL L ϖ r (s h) :=
    (Submodule.Quotient.mk_surjective L.T _).choose_spec
  have ht2 := (Submodule.Quotient.eq _).1 (hl.trans hio)
  show ∃ e : O, (algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s g)) (ρ' g (Formalism.MainNotions.LocalSituation.liftQ L' _ (q h)))
      + P.flip (d g) (ρ g (liftD L (GlobalTheory.BKFinLevel.ioL L ϖ r (s h))))
      + (χ g * ((algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s h)) (d h))
        - (algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s (g * h))) (d (g * h))
        + (algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s g)) (d g)) = algebraMap O LL e
  generalize liftD L (GlobalTheory.BKFinLevel.ioL L ϖ r (s h)) = w at ht2 ⊢
  obtain ⟨t2, ht2', rfl⟩ : ∃ t2 ∈ L.T,
      w = (algebraMap O LL ϖ)⁻¹ ^ r • Formalism.MainNotions.LocalSituation.liftQ L _ (s h) + t2 :=
    ⟨_, ht2, by abel⟩
  have E1 : Formalism.MainNotions.LocalSituation.liftQ L' _ (q h) = d h + (algebraMap O LL ϖ) ^ r • t1 :=
    sub_eq_iff_eq_add'.1 hd1
  have E3 : Formalism.MainNotions.LocalSituation.liftQ L _ (s (g * h)) = Formalism.MainNotions.LocalSituation.liftQ L _ (s g) +
      ρ g (Formalism.MainNotions.LocalSituation.liftQ L _ (s h)) + (algebraMap O LL ϖ) ^ r • t3 :=
    sub_eq_iff_eq_add'.1 hu3
  obtain ⟨e0, he0⟩ := inv_pow_mul_pow_mem (LL := LL) ϖ r
  obtain ⟨e1, he1⟩ := hint _ (huT g) _ (L'.stable g _ ht1)
  obtain ⟨e2, he2⟩ := hint _ (L.stable g _ ht2') _ (hdT g)
  obtain ⟨e3, he3⟩ := hint t3 ht3 (d g + ρ' g (d h)) (by rw [← hdmul]; exact hdT _)
  refine ⟨e0 * e1 + e2 - e0 * e3, ?_⟩
  have E5 : χ g * ((algebraMap O LL ϖ)⁻¹ ^ r * P (Formalism.MainNotions.LocalSituation.liftQ L _ (s h)) (d h)) =
      (algebraMap O LL ϖ)⁻¹ ^ r * P (ρ g (Formalism.MainNotions.LocalSituation.liftQ L _ (s h))) (ρ' g (d h)) := by
    rw [hχ]; ring
  rw [E1, E3, hdmul, E5]
  simp only [map_add (f := _), map_smul, LinearMap.add_apply, LinearMap.smul_apply, smul_eq_mul,
    LinearMap.flip_apply] at he3 ⊢
  rw [map_sub, map_add (f := _), map_mul, map_mul, ← he0, ← he1, ← he2, ← he3]
  ring

end Cong
end GlobalTheory.BKSwapCup

namespace GlobalTheory.BKSwapCup

section Cob

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [Algebra O LL]

theorem cobO_swap (hopen : IsOpen (Set.range (algebraMap O LL)))
    (L1 : Lattice (O := O) (charRep (cycLL PD LL)))
    (hL1 : L1.T = LinearMap.range (Algebra.linearMap O LL)) {A A' : GRep G Qp LL O}
    (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL)
    (hm : IsDualLat1 PD LA LA' m) (ϖ : O) (r : ℕ)
    (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T))
    (s : G → ↥LA.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) (hs : s ∈ quotientCocycles LA _ hI)
    (d : ↥(latticeCocycles LA')) :
    CobO PD L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r s (redT LA' _ d)) ↔
      CobO PD L1 (cupLD LA m.flip (d : G → A'.V) (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (s g))) := by
  have hdT : ∀ g, (d : G → A'.V) g ∈ LA'.T := fun g => d.2.2 g (Set.mem_univ g)
  have hint : ∀ x ∈ LA.T, ∀ y ∈ LA'.T, ∃ e : O, m x y = algebraMap O LL e :=
    fun x hx y hy => (hm.2 y).1 hy x hx
  have key := swap_cong LA LA' m hint (fun g => ((cycLL PD LL g : LLˣ) : LL)) hm.1.1 ϖ r hI s
    hs.2 (d : G → A'.V) hdT d.2.1.2 (redT LA' _ d) (fun _ => rfl)
  let Fq : G → LL ⧸ L1.T := fun g =>
    Submodule.Quotient.mk (swapF LA m ϖ r s (d : G → A'.V) g)
  have hFq : Fq ∈ ReciprocityTheory.Def.C1 G (⊤ : Submodule O (LL ⧸ L1.T)) := by
    refine ⟨?_, fun _ => Submodule.mem_top⟩
    have hT : IsOpen (L1.T : Set LL) := by rw [hL1]; exact hopen
    have hu : Continuous fun g => Formalism.MainNotions.LocalSituation.liftQ LA _ (s g) :=
      (hs.1.comp (Formalism.MainNotions.LocalSituation.liftQ LA _)).continuous
    have hc : Continuous (swapF LA m ϖ r s (d : G → A'.V)) :=
      continuous_const.mul ((IsModuleTopology.continuous_bilinear_of_finite_left m).comp
        (hu.prodMk d.2.1.1))
    exact Formalism.MainNotions.BlochKatoDuality.Br.locConst_mk L1.T hT _ hc
  have hD : ReciprocityTheory.Def.d1 (repD L1) Fq ∈ ReciprocityTheory.Def.B2 (repD L1) ⊤ := ⟨Fq, hFq, rfl⟩
  have heq : (fun x => (Submodule.Quotient.mk
      (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r s (redT LA' _ d) x) : LL ⧸ L1.T)) =
      -((fun x => (Submodule.Quotient.mk (cupLD LA m.flip (d : G → A'.V)
        (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (s g)) x) : LL ⧸ L1.T)) +
          ReciprocityTheory.Def.d1 (repD L1) Fq) := by
    funext x
    obtain ⟨g, h⟩ := x
    obtain ⟨e, he⟩ := key g h
    show (Submodule.Quotient.mk (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r s (redT LA' _ d) (g, h)) :
        LL ⧸ L1.T) = -(Submodule.Quotient.mk (cupLD LA m.flip (d : G → A'.V)
          (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (s g)) (g, h)) +
        (Submodule.Quotient.mk (((cycLL PD LL g : LLˣ) : LL) * swapF LA m ϖ r s (d : G → A'.V) h)
          - Submodule.Quotient.mk (swapF LA m ϖ r s (d : G → A'.V) (g * h))
          + Submodule.Quotient.mk (swapF LA m ϖ r s (d : G → A'.V) g)))
    rw [eq_neg_iff_add_eq_zero, ← Submodule.Quotient.mk_sub, ← Submodule.Quotient.mk_add,
      ← Submodule.Quotient.mk_add, ← Submodule.Quotient.mk_add, ← add_assoc, he,
      Submodule.Quotient.mk_eq_zero, hL1]
    exact ⟨e, rfl⟩
  unfold CobO
  rw [heq, neg_mem_iff, Submodule.add_mem_iff_left _ hD]

end Cob

theorem cobO_cupQ_iff : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)), L1.T = LinearMap.range (Algebra.linearMap O LL) → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (P.PD K) LA LA' m → ∀ (ϖ : O) (r : ℕ) (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)), ∀ s ∈ quotientCocycles LA _ hI, ∀ d : ↥(latticeCocycles LA'), CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r s (redT LA' _ d)) ↔ CobO (P.PD K) L1 (cupLD LA m.flip (d : ↥(GK K) → A'.V) (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (s g))) := by
  intro l _ P K LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hm ϖ r hI s hs d
  obtain ⟨-, -, -, htr, hopen⟩ := hO
  haveI := htr
  exact cobO_swap (P.PD K) hopen L1 hL1 LA LA' m hm ϖ r hI s hs d

end GlobalTheory.BKSwapCup
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIff =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAl =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAl", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BDLocConst

theorem lattice_divisible_coboundaries_le_locConst_cocycles : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ), BD LA ≤ divisibleCocycles LA := by
  intro l _ P K LL _ _ _ O _ _ hO A LA c hc
  obtain ⟨⟨hDom, hDVR, hFr⟩, hfd, hmt, htr, hopen⟩ := hO
  haveI := hDom; haveI := hDVR; haveI := hFr; haveI := htr
  haveI : IsTopologicalAddGroup A.V := IsModuleTopology.topologicalAddGroup LL A.V
  obtain ⟨y, rfl⟩ := hc
  induction y using Submodule.Quotient.induction_on with
  | H x =>
  have hval : ∀ g, (LinearMap.pi (fun g => actD LA g - LinearMap.id) (Submodule.Quotient.mk x : A.V ⧸ LA.T)) g
      = Submodule.Quotient.mk (A.ρ g x - x) := by
    intro g
    rfl
  refine ⟨?_, ?_⟩
  · have hT : IsOpen (LA.T : Set A.V) := Formalism.MainNotions.BlochKatoDuality.Br.lat_open hopen LA.T LA.fg LA.span
    have := Formalism.MainNotions.BlochKatoDuality.Br.locConst_mk LA.T hT (fun g => A.ρ g x - x) ((A.cont x).sub continuous_const)
    convert this using 1
    funext g
    exact hval g
  · intro g h
    rw [hval, hval, hval]
    show _ = Submodule.Quotient.mk (A.ρ g x - x) + Submodule.Quotient.mk (A.ρ g (A.ρ h x - x))
    rw [← Submodule.Quotient.mk_add, map_mul]
    congr 1
    simp only [Module.End.mul_apply, map_sub]
    abel

end GlobalTheory.BDLocConst
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAl =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralTatePairingLatticeDual =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralTatePairingLatticeDual", "h": "module\n\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TateH2PeriodDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module
open Formalism.MainNotions.BlochKatoDuality.Br

namespace GlobalTheory.TatePair

section Gen

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR] [TopologicalSpace Qp]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O LL]
    [IsFractionRing O LL]
    {A A' : GRep G Qp LL O} {LA : Lattice (O := O) A.ρ} {LA' : Lattice (O := O) A'.ρ}
    {P : A.V →ₗ[LL] A'.V →ₗ[LL] LL} (hd : IsDualLat1 PD LA LA' P)
    (L1 : Lattice (O := O) (charRep (cycLL PD LL))) (hL1 : L1.T = OL O LL)

theorem cup_coboundary_right (hopen : IsOpen (Set.range (algebraMap O LL))) (c : ↥(divisibleCocycles LA'))
    (d : ↥(latticeCocycles LA)) (hc : (c : G → A'.V ⧸ LA'.T) ∈ BD LA') :
    cupModuloIntegers PD hd L1 hL1 c d ∈ ReciprocityTheory.Def.B2 (repD L1) ⊤ := by
  obtain ⟨w, hw⟩ := hc
  obtain ⟨v, rfl⟩ := Submodule.Quotient.mk_surjective _ w
  have hcg : ∀ h, (c : G → A'.V ⧸ LA'.T) h =
      repD LA' h (Submodule.Quotient.mk v) - Submodule.Quotient.mk v := fun h =>
    (congrFun hw h).symm
  have hT : IsOpen (L1.T : Set LL) := integers_isOpen PD L1 hL1 hopen
  have hcont : Continuous fun g : G => P ((d : G → A.V) g) (A'.ρ g v) :=
    (IsModuleTopology.continuous_bilinear_of_finite_left P).comp
      (d.2.1.1.prodMk (A'.cont v))
  have hlc : IsLocallyConstant fun g : G =>
      -(Submodule.Quotient.mk (P ((d : G → A.V) g) (A'.ρ g v)) : LL ⧸ L1.T) :=
    (locConst_mk L1.T hT _ hcont).neg
  refine ⟨fun g => -torsionPairing PD hd L1 hL1 (repD LA' g (Submodule.Quotient.mk v)) (evT LA g d),
    ⟨hlc, fun _ => Submodule.mem_top⟩, ?_⟩
  funext x
  obtain ⟨g, h⟩ := x
  show repD L1 g (-torsionPairing PD hd L1 hL1 (repD LA' h (Submodule.Quotient.mk v)) (evT LA h d))
      - -torsionPairing PD hd L1 hL1 (repD LA' (g * h) (Submodule.Quotient.mk v)) (evT LA (g * h) d)
      + -torsionPairing PD hd L1 hL1 (repD LA' g (Submodule.Quotient.mk v)) (evT LA g d) =
    cupModuloIntegers PD hd L1 hL1 c d (g, h)
  rw [cup_apply_alt]
  simp only [hcg, map_neg, ← torsionPairing_equivariant, lattice_cocycle_mul, map_mul, Module.End.mul_apply, map_add (f := _),
    map_sub, LinearMap.sub_apply]
  abel

end Gen

theorem integral_pairing : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l)
    (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type)
    [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O →
    ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)),
    L1.T = LinearMap.range (Algebra.linearMap O LL) →
    ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ)
      (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (P.PD K) LA LA' m →
    ∃ β : ↥(latticeCocycles LA) →ₗ[O] ↥(divisibleCocycles LA') →ₗ[O] (LL ⧸ L1.T),
      (∀ d c, β d c = 0 ↔ CobO (P.PD K) L1 (cupLD LA' m d.1 c.1)) ∧
      (∀ d c, d.1 ∈ latticeCoboundaries LA → β d c = 0) ∧ ∀ d c, c.1 ∈ BD LA' → β d c = 0 := by
  intro hT l _ P K LL _ _ _ O _ _ hG L1 hL1 A A' LA LA' m hd
  obtain ⟨e⟩ := _root_.GlobalTheory.TateTop.tateH2_of_duality_loc hT l P K LL O hG L1 hL1
  obtain ⟨⟨hO, hDVR, hFr⟩, -, -, htr, hopen⟩ := hG
  haveI := hO
  haveI := hDVR
  haveI := hFr
  haveI := htr
  obtain ⟨pr, hpr⟩ := exists_pr (P.PD K) hopen hd L1 hL1
  refine ⟨(pr.compr₂ e.toLinearMap).flip ∘ₗ Submodule.mkQ _, ?_, ?_, ?_⟩
  · intro d c
    show e (pr c (Submodule.Quotient.mk d)) = 0 ↔ _
    rw [LinearEquiv.map_eq_zero_iff]
    exact hpr c d
  · intro d c hdB
    show e (pr c (Submodule.Quotient.mk d)) = 0
    rw [LinearEquiv.map_eq_zero_iff, hpr c d]
    unfold CobO
    rw [← cup_eq_pairing (P.PD K) hd L1 hL1 c d]
    exact cup_mem_coboundaries (P.PD K) hd L1 hL1 c d hdB
  · intro d c hc
    show e (pr c (Submodule.Quotient.mk d)) = 0
    rw [LinearEquiv.map_eq_zero_iff, hpr c d]
    unfold CobO
    rw [← cup_eq_pairing (P.PD K) hd L1 hL1 c d]
    exact cup_coboundary_right (P.PD K) hd L1 hL1 hopen c d hc

end GlobalTheory.TatePair
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralTatePairingLatticeDual =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomic =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomic", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteH1PeriodDatum\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IntegralTatePairingLatticeDual\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualPairingCyclotomic\npublic import Mathlib.NumberTheory.Padics.PadicNumbers\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemOfForallAnnihilatorAnnihilatorFieldModInteger\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory

theorem tate_double_annihilator : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l), ∀ (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ L1 : Lattice (O := O) (charRep (cycLL (P.PD K) LL)), L1.T = LinearMap.range (Algebra.linearMap O LL) → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (LA' : Lattice (O := O) A'.ρ) (m : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (P.PD K) LA LA' m → ∀ S : Submodule O (↥(GK K) → A'.V ⧸ LA'.T), BD LA' ≤ S → S ≤ divisibleCocycles LA' → ∀ c ∈ divisibleCocycles LA', (∀ d ∈ latticeCocycles LA, (∀ s ∈ S, CobO (P.PD K) L1 (cupLD LA' m d s)) → CobO (P.PD K) L1 (cupLD LA' m d c)) → c ∈ S := by
  intro hT l _ P K LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hdual S hBS hSZ c hc hann
  obtain ⟨β, hβ0, hβB, -⟩ := _root_.GlobalTheory.TatePair.integral_pairing hT l P K LL O hO L1 hL1 A A' LA LA' m hdual
  haveI : Module.Finite O (LatticeCohomology LA) := _root_.GlobalTheory.TateFiniteH1.tate_finH1 hT l P K LL O hO A LA
  let e : (LL ⧸ L1.T) ≃ₗ[O] (LL ⧸ LinearMap.range (Algebra.linearMap O LL)) :=
    Submodule.quotEquivOfEq _ _ hL1
  let β₁ : ↥(latticeCocycles LA) →ₗ[O] ↥(divisibleCocycles LA') →ₗ[O] (LL ⧸ LinearMap.range (Algebra.linearMap O LL)) :=
    β.compr₂ e.toLinearMap
  have hβ₁ : ∀ d c, β₁ d c = 0 ↔ β d c = 0 := fun d c => by
    simp only [β₁, LinearMap.compr₂_apply, LinearEquiv.coe_coe]
    exact e.map_eq_zero_iff
  have hker : (latticeCoboundaries LA).comap (latticeCocycles LA).subtype ≤ LinearMap.ker β₁ := by
    intro d hd
    rw [LinearMap.mem_ker]
    ext c
    exact (hβ₁ d c).2 (hβB d c hd)
  let β₂ : LatticeCohomology LA →ₗ[O] ↥(divisibleCocycles LA') →ₗ[O] (LL ⧸ LinearMap.range (Algebra.linearMap O LL)) :=
    ((latticeCoboundaries LA).comap (latticeCocycles LA).subtype).liftQ β₁ hker
  have hβ₂ : ∀ d c, β₂ (Submodule.Quotient.mk d) c = β₁ d c := fun d c => rfl
  have key := _root_.GlobalTheory.mem_of_forall_annihilator_annihilator l LL O hO (LatticeCohomology LA) ↥(divisibleCocycles LA') β₂ (S.comap (divisibleCocycles LA').subtype) ?_
    ⟨c, hc⟩ ?_
  · exact key
  · intro c' hc'
    show c'.1 ∈ S
    apply hBS
    apply _root_.GlobalTheory.TateOrth.mem_BD_of_orthogonal hT l P K LL O hO L1 hL1 A A' LA LA' m hdual c'.1 c'.2
    intro d hd
    have h := hc' (Submodule.Quotient.mk ⟨d, hd⟩)
    rw [hβ₂, hβ₁] at h
    exact (hβ0 ⟨d, hd⟩ c').1 h
  · intro d hd
    induction d using Submodule.Quotient.induction_on with
    | _ d0 =>
    rw [hβ₂, hβ₁]
    apply (hβ0 d0 ⟨c, hc⟩).2
    apply hann d0.1 d0.2
    intro s hs
    have h := hd ⟨s, hSZ hs⟩ hs
    rw [hβ₂, hβ₁] at h
    exact (hβ0 d0 ⟨s, hSZ hs⟩).1 h

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomic =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocycles =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocycles", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BKFinLevelCocycle

theorem ioL_actQ {G : Type} [Group G] {LL : Type} [Field LL] {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]
    {ρ : Representation LL G V} (L : Lattice (O := O) ρ) (ϖ : O) (r : ℕ)
    (hI : StableSub L (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) (g : G)
    (x : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) :
    GlobalTheory.BKFinLevel.ioL L ϖ r (actQ L _ hI g x) = actD L g (GlobalTheory.BKFinLevel.ioL L ϖ r x) := by
  induction x using Submodule.Quotient.induction_on with
  | H y =>
    simp only [actQ, Submodule.mapQ_apply, GlobalTheory.BKFinLevel.ioL_mk, actD, actT]
    congr 1
    simp only [LinearMap.coe_restrictScalars, map_smul]
    rfl

theorem ioL_mem_Z1D : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (ϖ : O) (r : ℕ) (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) (c : ↥(GK K) → ↥LA.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)), c ∈ quotientCocycles LA _ hI → (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r (c g)) ∈ divisibleCocycles LA := by
  intro l _ P K LL _ _ _ O _ _ hO A LA ϖ r hI c hc
  refine ⟨hc.1.comp _, fun g h => ?_⟩
  simp only [hc.2 g h, map_add (f := _), ioL_actQ]

end GlobalTheory.BKFinLevelCocycle
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocycles =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReduction =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReduction", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BKTorsionRed

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [Module O V] [IsScalarTower O LL V]
    [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V]
    {ρ : Representation LL G V}

theorem coboundary_mem_blochKato_cocycles (m : V) (hm : Continuous fun g => ρ g m) : (fun g => ρ g m - m) ∈ finiteCocycles PD ρ := by
  refine ⟨⟨?_, fun g h => ?_⟩, m ⊗ₜ[Qp] (1 : B), fun g => ?_⟩
  · simp_rw [sub_eq_add_neg]
    exact hm.add continuous_const
  · simp only [map_mul, Module.End.mul_apply, map_sub]
    abel
  · simp [actVB, sub_tmul]

def latticeCoboundaryCocycle (L : Lattice (O := O) ρ) (hρ : ∀ m, Continuous fun g => ρ g m) (x : ↥L.T) : ↥(latticeCocycles L) :=
  ⟨fun g => ρ g x - x, Submodule.mem_inf.2 ⟨(coboundary_mem_blochKato_cocycles PD (x : V) (hρ x)).1,
    Submodule.mem_pi.2 fun g _ => L.T.sub_mem (L.stable g x x.2) x.2⟩⟩

theorem lattice_reduction_coboundary_mem_cocycles (L : Lattice (O := O) ρ) (hρ : ∀ m, Continuous fun g => ρ g m) (I : Submodule O ↥L.T)
    (hI : StableSub L I) (x : ↥L.T) :
    redT L I (latticeCoboundaryCocycle PD L hρ x) = LinearMap.pi (fun g => actQ L I hI g - LinearMap.id) (I.mkQ x) := by
  funext g
  simp only [LinearMap.pi_apply, LinearMap.sub_apply, LinearMap.id_apply, Submodule.mkQ_apply, actQ,
    Submodule.mapQ_apply, ← Submodule.Quotient.mk_sub]
  rfl

theorem mem_HfQ_iff (L : Lattice (O := O) ρ) (hρ : ∀ m, Continuous fun g => ρ g m) (I : Submodule O ↥L.T)
    (hI : StableSub L I) (c : G → ↥L.T ⧸ I) :
    c ∈ HfQ PD L I hI ↔ ∃ a : ↥(latticeCocycles L), (a : G → V) ∈ finiteCocycles PD ρ ∧ c = redT L I a := by
  constructor
  · intro h
    obtain ⟨_, ⟨a0, ha0, rfl⟩, _, ⟨xb, rfl⟩, rfl⟩ := Submodule.mem_sup.1 h
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ xb
    refine ⟨a0 + latticeCoboundaryCocycle PD L hρ x, (finiteCocycles PD ρ).add_mem ha0.2 (coboundary_mem_blochKato_cocycles PD (x : V) (hρ x)), ?_⟩
    rw [map_add (f := _), lattice_reduction_coboundary_mem_cocycles PD L hρ I hI x]
    rfl
  · rintro ⟨a, ha, rfl⟩
    exact Submodule.mem_sup_left ⟨a, ⟨a.2, ha⟩, rfl⟩

theorem mem_HfQ_iff_red : ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (K : FinExt l) (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (ϖ : O) (r : ℕ) (hI : StableSub LA (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)) (c : ↥(GK K) → ↥LA.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥LA.T)), c ∈ HfQ (P.PD K) LA _ hI ↔ ∃ a : ↥(latticeCocycles LA), (a : ↥(GK K) → A.V) ∈ finiteCocycles (P.PD K) A.ρ ∧ c = redT LA _ a := by
  intro l _ P K LL _ _ _ O _ _ _hO A LA ϖ r hI c
  exact mem_HfQ_iff (P.PD K) LA A.cont _ hI c

end GlobalTheory.BKTorsionRed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReduction =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinPartCOfPartAPartBFiniteLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinPartCOfPartAPartBFiniteLevel", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IoLMk\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoQuotientOfDivisibleImageMem\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoReductionsOrthogonalModPow\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CupDivisibleImageCoboundaryIffFiniteLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FiniteLevelCupSwapCoboundaryIff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDivisibleCoboundariesLeLocConstCocyclesAl\npublic import Formalism.GaloisCohomology.LocalTateDualityK\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeDualCyclotomic\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeQuotientToDivisibleQuotientMemCocycles\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LatticeReductionModPowMemLocConstCocycles\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemBlochKatoQuotientPowIffReduction\nimport Formalism.SharpRestriction.LevelLetterCocycles.RamificationTwoAndConjugationAtQAndD\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BKFinLevel

theorem bkC_of_bkA_bkB : Formalism.GaloisCohomology.LocalTateDualityK → Formalism.GaloisCohomology.LocalEulerCharK → ∀ (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P), LocTied l P AI → ∀ K : FinExt l, bkACore (P.PD K) → bkBCore (P.PD K) → Formalism.MainNotions.LocalSituation.bkC (P.PD K) := by
  intro hT _ l _ P _ _ K hA hB LL _ _ _ O _ _ hO L1 hL1 A A' LA LA' m hDR hd ϖ hϖ r hI hI'
  show (∀ c ∈ quotientCocycles LA _ hI, (c ∈ HfQ (P.PD K) LA _ hI ↔ ∀ c' ∈ HfQ (P.PD K) LA' _ hI',
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c'))) ∧
    (∀ c' ∈ quotientCocycles LA' _ hI', (c' ∈ HfQ (P.PD K) LA' _ hI' ↔ ∀ c ∈ HfQ (P.PD K) LA _ hI,
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c')))
  have orth := _root_.GlobalTheory.BKOrthRed.cupQ_cobO_of_bkA l P K hA LL O hO L1 hL1 A A' LA LA' m hDR hd ϖ r hI hI'

  have hfz : ∀ s ∈ HfQ (P.PD K) LA _ hI, s ∈ quotientCocycles LA _ hI := by
    intro s hs
    obtain ⟨a, -, has⟩ := (_root_.GlobalTheory.BKTorsionRed.mem_HfQ_iff_red l P K LL O hO A LA ϖ r hI s).1 hs
    rw [has]
    exact _root_.GlobalTheory.RedLocConst.redT_mem_Z1Q l P K LL O hO A LA ϖ hϖ r hI a

  have clause2 : ∀ c' ∈ quotientCocycles LA' _ hI', (∀ c ∈ HfQ (P.PD K) LA _ hI,
      CobO (P.PD K) L1 (GlobalTheory.BKFinLevel.cupQ LA LA' m ϖ r c c')) → c' ∈ HfQ (P.PD K) LA' _ hI' := by
    intro c' hc' horth
    apply _root_.GlobalTheory.BKFinLevelKer.hfQ_of_ioL_mem_HfD l P K LL O hO A' LA' ϖ hϖ r hI' c'
    have hZ := _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A' LA' ϖ r hI' c' hc'
    refine ((hB LL O hO L1 hL1 A A' LA LA' m hDR hd).1 _ hZ).2 ?_
    intro d hdf
    have hdT : d ∈ latticeCocycles LA := hdf.1
    rw [_root_.GlobalTheory.BKFinLevel.cobO_cupLD_ioL_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r ⟨d, hdT⟩ c']
    exact horth _ ((_root_.GlobalTheory.BKTorsionRed.mem_HfQ_iff_red l P K LL O hO A LA ϖ r hI _).2 ⟨⟨d, hdT⟩, hdf.2, rfl⟩)
  refine ⟨fun c hc => ⟨fun h c' hc' => orth c h c' hc', fun h => ?_⟩,
    fun c' hc' => ⟨fun h c hc => orth c hc c' h, clause2 c' hc'⟩⟩

  let S : Submodule O (↥(GK K) → A.V ⧸ LA.T) :=
    (HfQ (P.PD K) LA _ hI).map ((GlobalTheory.BKFinLevel.ioL LA ϖ r).compLeft ↥(GK K)) ⊔ BD LA
  have hS1 : BD LA ≤ S := le_sup_right
  have hS2 : S ≤ divisibleCocycles LA := by
    refine sup_le ?_ (_root_.GlobalTheory.BDLocConst.lattice_divisible_coboundaries_le_locConst_cocycles l P K LL O hO A LA)
    rintro _ ⟨s, hs, rfl⟩
    exact _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A LA ϖ r hI s (hfz s hs)
  have hflip : IsDualLat1 (P.PD K) LA' LA m.flip := by
    obtain ⟨⟨hDom, hDVR, hFr⟩, -, -, htr, -⟩ := id hO
    exact Formalism.MainNotions.BlochKatoDuality.Br.isDualLat1_flip (P.PD K) hd
  have hC := _root_.GlobalTheory.BKFinLevelCocycle.ioL_mem_Z1D l P K LL O hO A LA ϖ r hI c hc
  have key := _root_.GlobalTheory.tate_double_annihilator hT l P K LL O hO L1 hL1 A' A LA' LA m.flip hflip S hS1 hS2 _ hC (by
    intro d hdZ hdS
    rw [← _root_.GlobalTheory.BKSwapCup.cobO_cupQ_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r hI c hc ⟨d, hdZ⟩]
    apply h
    apply clause2 _ (_root_.GlobalTheory.RedLocConst.redT_mem_Z1Q l P K LL O hO A' LA' ϖ hϖ r hI' ⟨d, hdZ⟩)
    intro s hs
    rw [_root_.GlobalTheory.BKSwapCup.cobO_cupQ_iff l P K LL O hO L1 hL1 A A' LA LA' m hd ϖ r hI s (hfz s hs) ⟨d, hdZ⟩]
    exact hdS _ (Submodule.mem_sup_left ⟨s, hs, rfl⟩))
  obtain ⟨y, ⟨a, ha, rfl⟩, z, hz, hyz⟩ := Submodule.mem_sup.1 key
  have hdiff : (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r ((c - a) g)) ∈ HfD (P.PD K) LA := by
    have : (fun g => GlobalTheory.BKFinLevel.ioL LA ϖ r ((c - a) g)) = z := by
      funext g
      have := congrFun hyz g
      simp only [Pi.sub_apply, map_sub, LinearMap.compLeft_apply, Function.comp_apply,
        Pi.add_apply] at this ⊢
      rw [← this]; abel
    rw [this]
    exact Submodule.mem_sup_right hz
  have := _root_.GlobalTheory.BKFinLevelKer.hfQ_of_ioL_mem_HfD l P K LL O hO A LA ϖ hϖ r hI _ hdiff
  simpa using (HfQ (P.PD K) LA _ hI).add_mem this ha

end GlobalTheory.BKFinLevel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinPartCOfPartAPartBFiniteLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocalSituation\npublic import Development.AbelianVarietyTheory.PublishedTheorems.GaloisCohomology₂.RationalDualityOfAllCoefficients\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoAnnihilatorOfIntegralLocalDuality\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoDimOfQlDimensionFormula\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoRightExact\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BreuilKisinPartCOfPartAPartBFiniteLevel\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoExactAnnihilatorsPeriodDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.WeaklyAdmissibleFiltrations Formalism.MainNotions.N TensorProduct Module

namespace GlobalTheory.BlochKatoLocalOfHyp

theorem bkAll_of_blochKatoLocal (hBK : GlobalTheory.Published.BlochKatoLocal) (hTD : Formalism.GaloisCohomology.LocalTateDualityK)
    (hEC : Formalism.GaloisCohomology.LocalEulerCharK) (l : ℕ) [Fact l.Prime] (P : LocPrime l) (AI : LocAinf l P)
    (hT : LocTied l P AI) (K : FinExt l) : Formalism.MainNotions.LocalSituation.bkAll (P.PD K) := by
  obtain ⟨hDim, -, hInt⟩ := hBK l P AI hT K
  have hA : bkACore (P.PD K) := _root_.GlobalTheory.BlochKatoAnn.bkA_exact_annihilators hTD hEC l P AI hT K
  have hB : bkBCore (P.PD K) := _root_.GlobalTheory.BKIntDescent.bkBCore_of_integralDuality l P K hInt
  exact ⟨hA, _root_.GlobalTheory.bkADim_of_dimFormula l P K hDim, GlobalTheory.BKRightExact.bkARightExact_of_tied l P AI hT K, hB,
    _root_.GlobalTheory.BKFinLevel.bkC_of_bkA_bkB hTD hEC l P AI hT K hA hB⟩

theorem blochKatoLocal_allPrimes_of_blochKato : GlobalTheory.Published.BlochKatoLocal → Formalism.GaloisCohomology.LocalTateDualityK →
    Formalism.GaloisCohomology.LocalEulerCharK → ∀ D : Formalism.BasicNotions.D7, Formalism.MainNotions.LocalSituation.Conclusion5 D := by
  intro hBK hTD hEC D l _ K
  exact bkAll_of_blochKatoLocal hBK hTD hEC l (D.loc l) (D.locA l) (D.locT l) K

end GlobalTheory.BlochKatoLocalOfHyp
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.BlochKatoLocalAllPrimesOfBlochKato =====
