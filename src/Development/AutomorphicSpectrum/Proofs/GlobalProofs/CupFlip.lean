module

public import Formalism.WeaklyAdmissibleFiltrations.StatementTor
public import Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine
public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousFixingSubgroupEquiv
public import Mathlib.Topology.LocallyConstant.Basic
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CardCocyclesMulInvariantsDiscrete
public import Mathlib.Algebra.Module.Torsion.Basic
public import Mathlib.NumberTheory.Padics.RingHoms
public import Mathlib.RingTheory.Ideal.Quotient.Index
public import Mathlib.Algebra.Module.CharacterModule
public import Mathlib.LinearAlgebra.FiniteDimensional.Defs
public import Mathlib.RingTheory.Localization.FractionRing
public import Mathlib.Topology.Algebra.Module.ModuleTopology
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisOfFullLattice
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralOfNormLeOne
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralCyclotomicChar
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsOpenOfFgOfSpanEqTop
public import Mathlib.NumberTheory.Padics.PadicIntegers
public import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.GoodOAdicCompleteCompactBasis
import Mathlib.Tactic.ReduceModChar
import Formalism.ConjugateSelfDual.Statement
import Formalism.SharpRestriction.CuspSpanNormBounds.Point
import Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicCharacterPadicBasicProperties
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingSubgroupEquivBicontinuous
import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCycCycChar
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.RingTheory.TotallySplit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ActQIsLocallyConstant, Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CupFlipContinuousCocycle, Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CyclotomicCupTwoCochainLocallyConstant, Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ExistsTorRange, Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.LatticeOpenCompactNhdsBasis, Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ActQIsLocallyConstant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ActQIsLocallyConstant", "h": "module\n\npublic import Formalism.WeaklyAdmissibleFiltrations.StatementTor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\nimport Formalism.ConjugateSelfDual.Statement\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

namespace GlobalTheory.CompanionTheory.FinCoc

section Generic

variable {G LL O V : Type} [Group G] [Field LL] [CommRing O] [Algebra O LL] [AddCommGroup V] [Module LL V]
  [Module O V] [IsScalarTower O LL V] {ρ : Representation LL G V}

theorem actQ_one' (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (hI : StableSub L I) (m : ↥L.T ⧸ I) :
    actQ L I hI 1 m = m := by
  obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ m
  change Submodule.Quotient.mk (actT L 1 t) = Submodule.Quotient.mk t
  congr 1
  exact Subtype.ext (by simp [actT])

theorem actQ_mul' (L : Lattice (O := O) ρ) (I : Submodule O ↥L.T) (hI : StableSub L I) (g h : G)
    (m : ↥L.T ⧸ I) : actQ L I hI (g * h) m = actQ L I hI g (actQ L I hI h m) := by
  obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ m
  change Submodule.Quotient.mk (actT L (g * h) t) = Submodule.Quotient.mk (actT L g (actT L h t))
  congr 1
  refine Subtype.ext ?_
  change ρ (g * h) (t : V) = ρ g (ρ h (t : V))
  simp

theorem pow_nsmul_quot (L : Lattice (O := O) ρ) {ϖ : O} {n : ℕ} (hn : (n : O) ∈ Ideal.span {ϖ}) (r : ℕ)
    (m : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) : n ^ r • m = 0 := by
  obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ m
  obtain ⟨u, hu⟩ := Ideal.mem_span_singleton'.1 hn
  rw [← Nat.cast_smul_eq_nsmul O, ← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero]
  have hc : ((n ^ r : ℕ) : O) = ϖ ^ r * u ^ r := by
    rw [Nat.cast_pow, ← hu, mul_pow, mul_comm]
  rw [hc, mul_smul]
  exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) Submodule.mem_top

variable [TopologicalSpace V] [ContinuousAdd V]

theorem mk_isLocallyConstant (L : Lattice (O := O) ρ) {ϖ : O} {r : ℕ}
    (hW : (fun x => ϖ ^ r • x) '' (L.T : Set V) ∈ nhds (0 : V)) :
    IsLocallyConstant (fun x : ↥L.T =>
      (Submodule.Quotient.mk x : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T))) := by
  rw [IsLocallyConstant.iff_eventually_eq]
  intro x
  have hc : Continuous fun y : ↥L.T => (y : V) + -(x : V) :=
    continuous_subtype_val.add continuous_const
  have hev := hc.continuousAt.eventually_mem (x := x)
    (s := (fun x => ϖ ^ r • x) '' (L.T : Set V)) (by simpa using hW)
  filter_upwards [hev] with y hy
  obtain ⟨t, ht, h⟩ := hy
  rw [Submodule.Quotient.eq]
  have hxy : y - x = ϖ ^ r • (⟨t, ht⟩ : ↥L.T) :=
    Subtype.ext (by simpa [sub_eq_add_neg] using h.symm)
  rw [hxy]
  exact Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) Submodule.mem_top

theorem finite_quot (L : Lattice (O := O) ρ) {ϖ : O} {r : ℕ} (hC : IsCompact (L.T : Set V))
    (hW : (fun x => ϖ ^ r • x) '' (L.T : Set V) ∈ nhds (0 : V)) :
    Finite (↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) := by
  have hcs : CompactSpace ↥L.T := isCompact_iff_compactSpace.1 hC
  refine Set.finite_univ_iff.1 ?_
  rw [← (Submodule.Quotient.mk_surjective _).range_eq]
  exact (mk_isLocallyConstant L hW).range_finite

theorem actQ_isLocallyConstant [TopologicalSpace G] (L : Lattice (O := O) ρ) {ϖ : O} {r : ℕ}
    (hW : (fun x => ϖ ^ r • x) '' (L.T : Set V) ∈ nhds (0 : V))
    (hcont : ∀ x, Continuous fun g => ρ g x)
    (hI : StableSub L (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T))
    (m : ↥L.T ⧸ (Ideal.span {ϖ ^ r} • ⊤ : Submodule O ↥L.T)) :
    IsLocallyConstant fun g => actQ L _ hI g m := by
  obtain ⟨t, rfl⟩ := Submodule.Quotient.mk_surjective _ m
  have hc : Continuous fun g : G => actT L g t := (hcont (t : V)).subtype_mk _
  exact (mk_isLocallyConstant L hW).comp_continuous hc

end Generic

end GlobalTheory.CompanionTheory.FinCoc
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ActQIsLocallyConstant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CupFlipContinuousCocycle =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CupFlipContinuousCocycle", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\nimport Formalism.ConjugateSelfDual.Statement\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.CupFlip

section Top

variable {G : Type} [Group G] [TopologicalSpace G] {Qp LL O : Type} [Field Qp] [Field LL]
    [Algebra Qp LL] [CommRing O] [Algebra O LL] [TopologicalSpace LL] [IsTopologicalRing LL]

theorem continuous_act (A : GRep G Qp LL O) : Continuous fun p : G × A.V => A.ρ p.1 p.2 := by
  have := IsModuleTopology.toContinuousSMul LL A.V
  let b := Module.finBasis LL A.V
  have e : (fun p : G × A.V => A.ρ p.1 p.2) =
      fun p => ∑ i, (b.repr p.2 i) • A.ρ p.1 (b i) := by
    funext p
    have h := congrArg (A.ρ p.1) (b.sum_repr p.2)

    rw [map_sum] at h
    simp only [map_smul] at h
    exact h.symm
  rw [e]
  refine continuous_finsetSum _ fun i _ => ?_
  have h1 : Continuous fun v : A.V => b.coord i v :=
    IsModuleTopology.continuous_of_linearMap (b.coord i)
  exact (h1.comp continuous_snd).smul ((A.cont (b i)).comp continuous_fst)

theorem continuous_pair (A A' : GRep G Qp LL O) (P : A.V →ₗ[LL] A'.V →ₗ[LL] LL) :
    Continuous fun p : A.V × A'.V => P p.1 p.2 := by
  have := IsModuleTopology.toContinuousSMul LL A'.V
  exact IsModuleTopology.continuous_bilinear_of_finite_left P

theorem continuous_cup (A A' : GRep G Qp LL O) (P : A.V →ₗ[LL] A'.V →ₗ[LL] LL) {a : G → A.V}
    {b : G → A'.V} (ha : Continuous a) (hb : Continuous b) : Continuous (cupL A'.ρ P a b) :=
  (continuous_pair A A' P).comp ((ha.comp continuous_fst).prodMk
    ((continuous_act A').comp (continuous_fst.prodMk (hb.comp continuous_snd))))

end Top

section Cup

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL]
    {V V' : Type} [AddCommGroup V] [Module LL V] [AddCommGroup V'] [Module LL V']
    {ρ : Representation LL G V} {ρ' : Representation LL G V'} {P : V →ₗ[LL] V' →ₗ[LL] LL}

omit [TopologicalSpace G] in
theorem char_pair (hd : ∀ g x y, P (ρ g x) (ρ' g y) = ((cycLL PD LL g : LLˣ) : LL) * P x y)
    (g : G) (x : V) (y : V') : charRep (cycLL PD LL) g (P x y) = P (ρ g x) (ρ' g y) := by
  rw [hd]
  rfl

theorem d2_cup (hd : ∀ g x y, P (ρ g x) (ρ' g y) = ((cycLL PD LL g : LLˣ) : LL) * P x y)
    {a : G → V} {b : G → V'} (ha : ∀ g h, a (g * h) = a g + ρ g (a h))
    (hb : ∀ g h, b (g * h) = b g + ρ' g (b h)) :
    ReciprocityTheory.Def.d2 (charRep (cycLL PD LL)) (cupL ρ' P a b) = 0 := by
  funext ⟨g, h, k⟩
  show charRep (cycLL PD LL) g (P (a h) (ρ' h (b k))) - P (a (g * h)) (ρ' (g * h) (b k)) +
    P (a g) (ρ' g (b (h * k))) - P (a g) (ρ' g (b h)) = 0
  rw [char_pair PD hd, ha, hb, map_mul, Module.End.mul_apply]
  simp only [map_add (f := _), LinearMap.add_apply]
  ring

theorem d1_pair (hd : ∀ g x y, P (ρ g x) (ρ' g y) = ((cycLL PD LL g : LLˣ) : LL) * P x y)
    {a : G → V} {b : G → V'} (ha : ∀ g h, a (g * h) = a g + ρ g (a h))
    (hb : ∀ g h, b (g * h) = b g + ρ' g (b h)) :
    ReciprocityTheory.Def.d1 (charRep (cycLL PD LL)) (fun g => P (a g) (b g)) =
      -cupL ρ' P a b - cupL ρ P.flip b a := by
  funext ⟨g, h⟩
  show charRep (cycLL PD LL) g (P (a h) (b h)) - P (a (g * h)) (b (g * h)) + P (a g) (b g) =
    -P (a g) (ρ' g (b h)) - P (ρ g (a h)) (b g)
  rw [char_pair PD hd, ha, hb]
  simp only [map_add (f := _), LinearMap.add_apply]
  ring

variable [TopologicalSpace LL]

theorem cob_of_flip [IsTopologicalRing LL]
    (hd : ∀ g x y, P (ρ g x) (ρ' g y) = ((cycLL PD LL g : LLˣ) : LL) * P x y)
    {a : G → V} {b : G → V'} (ha : ∀ g h, a (g * h) = a g + ρ g (a h))
    (hb : ∀ g h, b (g * h) = b g + ρ' g (b h)) (hc : Continuous fun g => P (a g) (b g))
    (h : CobL PD (cupL ρ P.flip b a)) : CobL PD (cupL ρ' P a b) := by
  obtain ⟨u, hu, e⟩ := h
  refine ⟨-u - fun g => P (a g) (b g), hu.neg.sub hc, ?_⟩
  rw [map_sub, map_neg, e, d1_pair PD hd ha hb]
  abel

theorem cob_of_left (hd : ∀ g x y, P (ρ g x) (ρ' g y) = ((cycLL PD LL g : LLˣ) : LL) * P x y)
    {a : G → V} {b : G → V'} {x : V} (ha : ∀ g, a g = ρ g x - x)
    (hb : ∀ g h, b (g * h) = b g + ρ' g (b h)) (hc : Continuous fun g => P x (b g)) :
    CobL PD (cupL ρ' P a b) := by
  refine ⟨fun g => P x (b g), hc, ?_⟩
  funext ⟨g, h⟩
  show charRep (cycLL PD LL) g (P x (b h)) - P x (b (g * h)) + P x (b g) =
    P (a g) (ρ' g (b h))
  rw [char_pair PD hd, ha, hb]
  simp only [map_add (f := _), map_sub, LinearMap.sub_apply]
  ring

end Cup

end GlobalTheory.CompanionTheory.CupFlip
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CupFlipContinuousCocycle =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CyclotomicCupTwoCochainLocallyConstant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CyclotomicCupTwoCochainLocallyConstant", "h": "module\n\npublic import Formalism.GaloisCohomology.LocalTateDualityK\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousFixingSubgroupEquiv\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.LocDual.TopCoh

open ReciprocityTheory.Gal Formalism.GaloisCohomology GlobalTheory.Cyc GlobalTheory.Cyc.TwistLift

theorem coboundary_of_characters (hT : LocalTateDualityK) (l : ℕ) [Fact l.Prime]
    (K : IntermediateField ℚ_[l] (PadicAlgCl l)) (hK : FiniteDimensional ℚ_[l] K) (n : ℕ) (hn : 0 < n)
    (hχ : Continuous fun g => ((cycK l K n g : (ZMod (l ^ n))ˣ) : ZMod (l ^ n)))
    (M : Type) [AddCommGroup M] [Module (ZMod (l ^ n)) M] [Finite M] [TopologicalSpace M]
    [DiscreteTopology M] (z : Formalism.GaloisCohomology.GK l K × Formalism.GaloisCohomology.GK l K → M) (hz : Continuous z)
    (hcoc : ∀ g h k, ((cycK l K n g : (ZMod (l ^ n))ˣ) : ZMod (l ^ n)) • z (h, k) - z (g * h, k) +
      z (g, h * k) - z (g, h) = 0)
    (hchar : ∀ ψ : M →+ ZMod (l ^ n), ∃ f : Formalism.GaloisCohomology.GK l K → ZMod (l ^ n), Continuous f ∧
      ∀ g h, ((cycK l K n g : (ZMod (l ^ n))ˣ) : ZMod (l ^ n)) * f h - f (g * h) + f g = ψ (z (g, h))) :
    ∃ f : Formalism.GaloisCohomology.GK l K → M, Continuous f ∧
      ∀ g h, ((cycK l K n g : (ZMod (l ^ n))ˣ) : ZMod (l ^ n)) • f h - f (g * h) + f g = z (g, h) := by
  let rho : Representation (ZMod (l ^ n)) (Formalism.GaloisCohomology.GK l K) M := scalRep M (cycK l K n)
  have hrho : ContAction rho :=
    (continuous_of_discreteTopology (f := fun q : ZMod (l ^ n) × M => q.1 • q.2)).comp
      ((hχ.comp continuous_fst).prodMk continuous_snd)
  have hz2 : z ∈ Z2 (rho.comp (MonoidHom.id _)) := ⟨hz, hcoc⟩
  have hb := (hT l K hK n M rho hn hrho).2.2.2.2
  have hzero : cup20 (cycK l K n) rho (MonoidHom.id _) (Submodule.Quotient.mk ⟨z, hz2⟩) = 0 := by
    refine LinearMap.ext fun φ => ?_
    refine (Submodule.Quotient.mk_eq_zero _).2 ?_
    let φ' : M →ₗ[ZMod (l ^ n)] ZMod (l ^ n) := φ.1
    obtain ⟨f, hf, hd⟩ := hchar φ'.toAddMonoidHom
    exact ⟨f, hf, funext fun p => hd p.1 p.2⟩
  have h0 := hb.1 (hzero.trans (map_zero _).symm)
  obtain ⟨c, hc, hd⟩ := (Submodule.Quotient.mk_eq_zero _).1 h0
  exact ⟨c, hc, fun g h => congrFun hd (g, h)⟩

end GlobalTheory.CompanionTheory.LocDual.TopCoh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CyclotomicCupTwoCochainLocallyConstant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ExistsTorRange =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ExistsTorRange", "h": "module\n\npublic import Mathlib.Algebra.Module.Torsion.Basic\npublic import Mathlib.NumberTheory.Padics.RingHoms\npublic import Mathlib.Topology.LocallyConstant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.Ideal.Quotient.Index\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\nimport Formalism.ConjugateSelfDual.Statement\nimport Formalism.SharpRestriction.CuspSpanNormBounds.Point\nimport Formalism.SharpRestriction.LevelLetterCocycles.DataNLoc\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Mathlib.Algebra.Module.CharacterModule\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.LocDual.TI

theorem exists_ext_zmod {N : ℕ} [NeZero N] {A B : Type} [AddCommGroup A] [AddCommGroup B] (j : A →+ B)
    (hj : Function.Injective j) (hB : ∀ b : B, N • b = 0) (ψ : A →+ ZMod N) :
    ∃ ψ' : B →+ ZMod N, ∀ a, ψ' (j a) = ψ a := by
  have hN : (N : ℚ) ≠ 0 := by exact_mod_cast NeZero.ne N
  let e : ℤ →+ AddCircle (1 : ℚ) := zmultiplesHom _ (((1 / N : ℚ)) : AddCircle (1 : ℚ))
  have he : ∀ k : ℤ, e k = (((k : ℚ) / N : ℚ) : AddCircle (1 : ℚ)) := fun k => by
    change k • (((1 / N : ℚ)) : AddCircle (1 : ℚ)) = _
    rw [← QuotientAddGroup.mk_zsmul]
    congr 1
    simp [div_eq_mul_inv]
  have heN : e (N : ℤ) = 0 := by
    rw [he]
    have : (((N : ℤ) : ℚ) / N : ℚ) = 1 := by push_cast; field_simp
    rw [this]
    exact AddCircle.coe_period 1
  let ι : ZMod N →+ AddCircle (1 : ℚ) := ZMod.lift N ⟨e, heN⟩
  have hι : ∀ k : ℤ, ι (k : ZMod N) = e k := fun k => ZMod.lift_coe N ⟨e, heN⟩ k
  have hinj : Function.Injective ι := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro c hc
    obtain ⟨k, rfl⟩ := ZMod.intCast_surjective c
    rw [hι, he, AddCircle.coe_eq_zero_iff] at hc
    obtain ⟨m, hm⟩ := hc
    have h1 : (k : ℚ) = m * N := by
      have : (m : ℚ) = (k : ℚ) / N := by simpa using hm
      rw [this]; field_simp
    have h2 : k = m * N := by exact_mod_cast h1
    rw [h2]
    simp
  have hsurj : ∀ x : AddCircle (1 : ℚ), N • x = 0 → ∃ c, ι c = x := by
    intro x hx
    obtain ⟨q, rfl⟩ := QuotientAddGroup.mk_surjective x
    change N • ((q : ℚ) : AddCircle (1 : ℚ)) = 0 at hx
    rw [← QuotientAddGroup.mk_nsmul] at hx
    change (((N • q : ℚ)) : AddCircle (1 : ℚ)) = 0 at hx
    rw [AddCircle.coe_eq_zero_iff] at hx
    obtain ⟨m, hm⟩ := hx
    refine ⟨(m : ZMod N), ?_⟩
    rw [hι, he]
    have : (m : ℚ) / N = q := by
      have : (m : ℚ) = N * q := by simpa using hm
      rw [this]; field_simp
    rw [this]
  let φ : CharacterModule A := ι.comp ψ
  obtain ⟨Φ, hΦ⟩ := CharacterModule.dual_surjective_of_injective (R := ℤ) j.toIntLinearMap hj φ
  have hΦ' : ∀ a, Φ (j a) = ι (ψ a) := fun a => DFunLike.congr_fun hΦ a
  have hs : ∀ b, ∃ c, ι c = Φ b := fun b => hsurj _ (by rw [← map_nsmul, hB, map_zero])
  choose f hf using hs
  refine ⟨AddMonoidHom.mk' f fun x y => hinj (by rw [map_add (f := _), hf, hf, hf, map_add (f := _)]), fun a => hinj ?_⟩
  change ι (f (j a)) = _
  rw [hf, hΦ']

theorem descent {G : Type} [Group G] [TopologicalSpace G] [IsTopologicalGroup G] {Q : Type} [AddCommGroup Q]
    (ρ : G → Q →+ Q) (hmul : ∀ g h q, ρ (g * h) q = ρ g (ρ h q)) {N : ℕ} [NeZero N]
    (χ : G →* (ZMod N)ˣ) (hχ : IsLocallyConstant fun g => (χ g : ZMod N)) (M S : AddSubgroup Q) (hMS : M ≤ S)
    (hS : ∀ q ∈ S, N • q = 0) (hact : ∀ g, ∀ q ∈ S, ρ g q = (χ g : ZMod N).val • q)
    (F : G → Q) (hF : IsLocallyConstant F) (hFS : ∀ g, F g ∈ S) (z : G × G → Q)
    (hz : ∀ g h, ρ g (F h) - F (g * h) + F g = z (g, h)) (hzM : ∀ p, z p ∈ M)
    [Module (ZMod N) ↥M]
    (hTop : ∀ zz : G × G → ↥M, IsLocallyConstant zz →
      (∀ g h k, (χ g : ZMod N) • zz (h, k) - zz (g * h, k) + zz (g, h * k) - zz (g, h) = 0) →
      (∀ ψ : ↥M →+ ZMod N, ∃ f : G → ZMod N, IsLocallyConstant f ∧
        ∀ g h, (χ g : ZMod N) * f h - f (g * h) + f g = ψ (zz (g, h))) →
      ∃ f : G → ↥M, IsLocallyConstant f ∧ ∀ g h, (χ g : ZMod N) • f h - f (g * h) + f g = zz (g, h)) :
    ∃ f : G → Q, IsLocallyConstant f ∧ (∀ g, f g ∈ M) ∧ ∀ g h, ρ g (f h) - f (g * h) + f g = z (g, h) := by
  have hsm : ∀ (g : G) (m : ↥M), (((χ g : ZMod N) • m : ↥M) : Q) = ρ g m := fun g m => by
    rw [hact g _ (hMS m.2), ← AddSubgroup.coe_nsmul, ← Nat.cast_smul_eq_nsmul (ZMod N), ZMod.natCast_zmod_val]
  have hzlc : IsLocallyConstant z := by
    have h1 : z = fun p : G × G => (χ p.1 : ZMod N).val • F p.2 - F (p.1 * p.2) + F p.1 := funext fun p => by
      rw [← hact _ _ (hFS _), hz]
    rw [h1]
    exact (((hχ.comp_continuous continuous_fst).comp₂ (hF.comp_continuous continuous_snd)
      (fun c q => c.val • q)).sub (hF.comp_continuous continuous_mul)).add
        (hF.comp_continuous continuous_fst)
  obtain ⟨f, hf, hfe⟩ := hTop (fun p => ⟨z p, hzM p⟩)
    (IsLocallyConstant.desc _ Subtype.val hzlc Subtype.val_injective)
    (fun g h k => Subtype.ext (by
      simp only [AddSubgroup.coe_add, AddSubgroup.coe_sub, AddSubgroup.coe_zero, hsm]
      rw [← hz h k, ← hz (g * h) k, ← hz g (h * k), ← hz g h]
      simp only [map_add (f := _), map_sub, hmul, mul_assoc]
      abel))
    (fun ψ => by
      obtain ⟨ψ', hψ'⟩ := exists_ext_zmod (N := N) (AddSubgroup.inclusion hMS)
        (AddSubgroup.inclusion_injective hMS) (fun b => Subtype.ext (hS _ b.2)) ψ
      refine ⟨fun g => ψ' ⟨F g, hFS g⟩, (IsLocallyConstant.desc (fun g => (⟨F g, hFS g⟩ : ↥S)) Subtype.val hF
        Subtype.val_injective).comp _, fun g h => ?_⟩
      have h1 : (χ g : ZMod N).val • (⟨F h, hFS h⟩ : ↥S) - ⟨F (g * h), hFS _⟩ + ⟨F g, hFS g⟩ =
          AddSubgroup.inclusion hMS ⟨z (g, h), hzM _⟩ := Subtype.ext (by
        change _ = z (g, h)
        rw [← hz]
        simp [hact g _ (hFS h)])
      have h2 := congrArg ψ' h1
      rw [hψ', map_add (f := _), map_sub, map_nsmul, nsmul_eq_mul, ZMod.natCast_zmod_val] at h2
      exact h2)
  refine ⟨fun g => (f g : Q), hf.comp _, fun g => (f g).2, fun g h => ?_⟩
  have h1 := congrArg (Subtype.val) (hfe g h)
  simpa only [AddSubgroup.coe_add, AddSubgroup.coe_sub, hsm] using h1

section Coeff

variable {LL O : Type} [Field LL] [CommRing O] [Algebra O LL] (T : Submodule O LL)

theorem smul_mk (a : O) (x : LL) :
    a • (Submodule.Quotient.mk x : LL ⧸ T) = Submodule.Quotient.mk (algebraMap O LL a * x) := by
  rw [← Submodule.Quotient.mk_smul, Algebra.smul_def]

def tor (ϖ : O) (s : ℕ) : AddSubgroup (LL ⧸ T) := (Submodule.torsionBy O (LL ⧸ T) (ϖ ^ s)).toAddSubgroup

theorem mem_tor {ϖ : O} {s : ℕ} {q : LL ⧸ T} : q ∈ tor T ϖ s ↔ ϖ ^ s • q = 0 :=
  Submodule.mem_torsionBy_iff _ _

theorem mk_mem_tor {ϖ : O} {s : ℕ} {x : LL} :
    (Submodule.Quotient.mk x : LL ⧸ T) ∈ tor T ϖ s ↔ algebraMap O LL ϖ ^ s * x ∈ T := by
  rw [mem_tor, smul_mk, map_pow, Submodule.Quotient.mk_eq_zero]

theorem tor_mono {ϖ : O} {r s : ℕ} (h : r ≤ s) : tor T ϖ r ≤ tor T ϖ s := fun q hq => by
  rw [mem_tor] at hq ⊢
  obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le h
  rw [add_comm, pow_add, mul_smul, hq, smul_zero]

variable [IsDomain O] [IsDiscreteValuationRing O] [IsFractionRing O LL]

theorem finite_tor (hT : T = LinearMap.range (Algebra.linearMap O LL)) {ϖ : O} (hϖ : Irreducible ϖ)
    (hfin : Finite (O ⧸ Ideal.span {ϖ})) (r : ℕ) : Finite ↥(tor T ϖ r) := by
  have h0 : algebraMap O LL ϖ ≠ 0 := fun h =>
    hϖ.ne_zero (IsFractionRing.injective O LL (by rw [h, map_zero]))
  have hq : Finite (O ⧸ Ideal.span {ϖ ^ r}) := by
    rw [← Ideal.span_singleton_pow]
    exact Ideal.finite_quotient_pow (Submodule.fg_span_singleton _) r
  let x₀ : LL := (algebraMap O LL ϖ ^ r)⁻¹
  have hmem : ∀ a : O, (Submodule.Quotient.mk (algebraMap O LL a * x₀) : LL ⧸ T) ∈ tor T ϖ r := fun a => by
    rw [mk_mem_tor, hT]
    refine ⟨a, ?_⟩
    change algebraMap O LL a = _
    have : algebraMap O LL ϖ ^ r ≠ 0 := pow_ne_zero _ h0
    simp only [x₀]
    field_simp
  refine Finite.of_surjective (α := O ⧸ Ideal.span {ϖ ^ r})
    (fun c => ⟨Submodule.Quotient.mk (algebraMap O LL (Quotient.out c) * x₀), hmem _⟩) ?_
  intro m
  obtain ⟨q, hq'⟩ := m
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective T q
  rw [mk_mem_tor, hT] at hq'
  obtain ⟨a, ha⟩ := hq'
  refine ⟨Ideal.Quotient.mk _ a, Subtype.ext ?_⟩
  change (Submodule.Quotient.mk _ : LL ⧸ T) = Submodule.Quotient.mk x
  rw [Submodule.Quotient.eq, hT]
  obtain ⟨b, hb⟩ := Ideal.mem_span_singleton.1 (Ideal.Quotient.eq.1
    (Ideal.Quotient.mk_out (Ideal.Quotient.mk (Ideal.span {ϖ ^ r}) a)))
  refine ⟨b, ?_⟩
  change algebraMap O LL b = _
  have h1 : algebraMap O LL ϖ ^ r ≠ 0 := pow_ne_zero _ h0
  have h2 : x = algebraMap O LL a * x₀ := by
    simp only [x₀]
    change algebraMap O LL a = _ at ha
    rw [ha]
    field_simp
  have h3 := congrArg (algebraMap O LL) hb
  rw [RingHom.map_sub, map_mul, map_pow] at h3
  rw [h2, ← sub_mul, h3]
  simp only [x₀]
  field_simp

theorem exists_tor {ϖ : O} (hϖ : Irreducible ϖ) (hT : T = LinearMap.range (Algebra.linearMap O LL))
    (q : LL ⧸ T) : ∃ s, ϖ ^ s • q = 0 := by
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective T q
  obtain ⟨a, b, hb, rfl⟩ := IsFractionRing.div_surjective (A := O) x
  have hb0 : b ≠ 0 := nonZeroDivisors.ne_zero hb
  obtain ⟨k, u⟩ := IsDiscreteValuationRing.associated_pow_irreducible hb0 hϖ
  obtain ⟨u, hu⟩ := u
  refine ⟨k, ?_⟩
  rw [smul_mk, Submodule.Quotient.mk_eq_zero, hT]
  refine ⟨(u : O) * a, ?_⟩
  change algebraMap O LL ((u : O) * a) = _
  have h1 : algebraMap O LL b ≠ 0 := fun h =>
    hb0 (IsFractionRing.injective O LL (by rw [h, map_zero]))
  rw [← hu, map_mul, map_mul]
  field_simp

theorem exists_tor_range {X : Type} {F : X → LL ⧸ T} (hF : (Set.range F).Finite) {ϖ : O} (hϖ : Irreducible ϖ)
    (hT : T = LinearMap.range (Algebra.linearMap O LL)) (r : ℕ) : ∃ s, r ≤ s ∧ ∀ g, F g ∈ tor T ϖ s := by
  choose c hc using exists_tor T hϖ hT
  refine ⟨r + hF.toFinset.sup c, Nat.le_add_right _ _, fun g => ?_⟩
  refine tor_mono T ((Finset.le_sup (f := c) (hF.mem_toFinset.2 ⟨g, rfl⟩)).trans (Nat.le_add_left _ _))
    (mem_tor T |>.2 (hc _))

end Coeff

section Int

variable {l : ℕ} [Fact l.Prime]

theorem lc_toZModPow (n : ℕ) : IsLocallyConstant (PadicInt.toZModPow (p := l) n) := by
  rw [IsLocallyConstant.iff_eventually_eq]
  intro x
  have hq : (0 : ℝ) < (l : ℝ) ^ (-(n : ℤ)) := zpow_pos (by exact_mod_cast (Fact.out : l.Prime).pos) _
  filter_upwards [Metric.closedBall_mem_nhds x hq] with y hy
  rw [← sub_eq_zero, ← map_sub, ← RingHom.mem_ker, PadicInt.ker_toZModPow,
    ← PadicInt.norm_le_pow_iff_mem_span_pow]
  simpa [dist_eq_norm] using hy

theorem mk_mul_int {LL O : Type} [Field LL] [Algebra ℚ_[l] LL] [CommRing O] [Algebra O LL]
    (T : Submodule O LL)
    (hZ : ∀ u : ℤ_[l], algebraMap ℚ_[l] LL (u : ℚ_[l]) ∈ Set.range (algebraMap O LL)) (n : ℕ) (u : ℤ_[l])
    (x : LL) (hx : (l ^ n) • (Submodule.Quotient.mk x : LL ⧸ T) = 0) :
    (Submodule.Quotient.mk (algebraMap ℚ_[l] LL (u : ℚ_[l]) * x) : LL ⧸ T) =
      (PadicInt.toZModPow n u).val • (Submodule.Quotient.mk x : LL ⧸ T) := by
  haveI : NeZero (l ^ n) := ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩
  have h : u - (((PadicInt.toZModPow n u).val : ℕ) : ℤ_[l]) ∈ Ideal.span {(l : ℤ_[l]) ^ n} := by
    rw [← PadicInt.ker_toZModPow, RingHom.mem_ker, map_sub, map_natCast, ZMod.natCast_zmod_val, sub_self]
  obtain ⟨w, hw⟩ := Ideal.mem_span_singleton.1 h
  obtain ⟨w', hw'⟩ := hZ w
  generalize (PadicInt.toZModPow n u).val = a at hw ⊢
  have hu : u = a + (l : ℤ_[l]) ^ n * w := by rw [← hw]; ring
  have h2 : algebraMap ℚ_[l] LL (u : ℚ_[l]) = (a : LL) + (l : LL) ^ n * algebraMap O LL w' := by
    rw [hw', hu]
    push_cast
    simp only
  have h3 : algebraMap ℚ_[l] LL (u : ℚ_[l]) * x = a • x + w' • (l ^ n • x) := by
    rw [h2, nsmul_eq_mul, nsmul_eq_mul, Algebra.smul_def]
    push_cast
    ring
  have h4 : T.mkQ (a • x) = a • T.mkQ x := map_nsmul T.mkQ a x
  have h5 : T.mkQ (w' • (l ^ n • x)) = 0 := by
    rw [LinearMap.map_smul, map_nsmul, Submodule.mkQ_apply, hx, smul_zero]
  rw [h3, ← Submodule.mkQ_apply, map_add (f := _), h4, h5, add_zero]
  rfl

end Int

end GlobalTheory.CompanionTheory.LocDual.TI
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ExistsTorRange =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.LatticeOpenCompactNhdsBasis =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.LatticeOpenCompactNhdsBasis", "h": "module\n\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.RingTheory.Localization.FractionRing\npublic import Mathlib.Topology.Algebra.Module.ModuleTopology\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsBasisOfFullLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.LatTop

section General

variable {LL O V : Type} [Field LL] [CommRing O] [IsDomain O] [Algebra O LL] [IsFractionRing O LL]
  [AddCommGroup V] [Module LL V] [Module O V] [IsScalarTower O LL V]

theorem exists_basis (M : Submodule O V) (hfg : M.FG) (hfree : Module.Free O M)
    (hspan : Submodule.span LL (M : Set V) = ⊤) :
    ∃ (ι : Type) (_ : Fintype ι) (b : Module.Basis ι LL V),
      ∀ x, x ∈ M ↔ ∀ i, ∃ a : O, b.repr x i = algebraMap O LL a := by
  haveI : Module.Finite O M := Module.Finite.iff_fg.2 hfg
  have hfull : ∀ v : V, ∃ c : O, c ≠ 0 ∧ ∃ m : M, algebraMap O LL c • v = (m : V) := by
    intro v
    have hv : v ∈ Submodule.span LL (M : Set V) := by rw [hspan]; trivial
    induction hv using Submodule.span_induction with
    | mem x hx => exact ⟨1, one_ne_zero, ⟨x, hx⟩, by simp⟩
    | zero => exact ⟨1, one_ne_zero, 0, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨c, hc, m, hm⟩ := hx
      obtain ⟨d, hd, m', hm'⟩ := hy
      refine ⟨c * d, mul_ne_zero hc hd, d • m + c • m', ?_⟩
      have e1 : ((d • m + c • m' : M) : V) =
          algebraMap O LL d • (m : V) + algebraMap O LL c • (m' : V) := by
        simp [algebraMap_smul]
      rw [e1, ← hm, ← hm', map_mul, smul_add, smul_smul, smul_smul,
        mul_comm (algebraMap O LL d)]
    | smul a x _ hx =>
      obtain ⟨c, hc, m, hm⟩ := hx
      obtain ⟨⟨n, d⟩, hnd⟩ := IsLocalization.surj (nonZeroDivisors O) a
      refine ⟨d * c, mul_ne_zero (nonZeroDivisors.ne_zero d.2) hc, n • m, ?_⟩
      have e1 : ((n • m : M) : V) = algebraMap O LL n • (m : V) := by simp [algebraMap_smul]
      simp only at hnd
      rw [e1, ← hm, ← hnd, map_mul, smul_smul, smul_smul]
      congr 1
      ring
  obtain ⟨b, hb, hr⟩ := GlobalTheory.Cyc.exists_basis_of_fullLattice (R := O) (F := LL) (M := M) (V := V)
    M.subtype.toAddMonoidHom Subtype.val_injective
    (fun c m => by simp [algebraMap_smul]) (by simpa using hfull) (Module.Free.chooseBasis O M)
  refine ⟨_, inferInstance, b, fun x => ⟨fun hx i => ⟨_, hr ⟨x, hx⟩ i⟩, fun h => ?_⟩⟩
  choose a ha using h
  rw [← b.sum_repr x]
  refine M.sum_mem fun i _ => ?_
  rw [ha i, algebraMap_smul]
  refine M.smul_mem _ ?_
  rw [hb i]
  exact (Module.Free.chooseBasis O M i).2

theorem mem_of_dual_dual {V' : Type} [AddCommGroup V'] [Module LL V'] [FiniteDimensional LL V]
    [FiniteDimensional LL V'] (M : Submodule O V) (hfg : M.FG) (hfree : Module.Free O M)
    (hspan : Submodule.span LL (M : Set V) = ⊤) (M' : Set V') (P : V →ₗ[LL] V' →ₗ[LL] LL)
    (hinj : ∀ y, (∀ x, P x y = 0) → y = 0) (hrank : finrank LL V = finrank LL V')
    (hM' : ∀ y, y ∈ M' ↔ ∀ x ∈ M, ∃ a : O, P x y = algebraMap O LL a)
    (x : V) (hx : ∀ y ∈ M', ∃ a : O, P x y = algebraMap O LL a) : x ∈ M := by
  obtain ⟨ι, _, b, hb⟩ := exists_basis M hfg hfree hspan
  have hi : Function.Injective P.flip := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro y hy
    exact hinj y fun x => by simpa using LinearMap.congr_fun hy x
  have hs : Function.Surjective P.flip :=
    (LinearMap.injective_iff_surjective_of_finrank_eq_finrank
      (by rw [Subspace.dual_finrank_eq, hrank])).1 hi
  have hy : ∀ i, ∃ y : V', ∀ v, P v y = b.repr v i := fun i => by
    obtain ⟨y, hy⟩ := hs (b.coord i)
    exact ⟨y, fun v => by simpa using LinearMap.congr_fun hy v⟩
  choose y hy using hy
  rw [hb]
  intro i
  have hyi : y i ∈ M' := (hM' _).2 fun v hv => by
    obtain ⟨a, ha⟩ := (hb v).1 hv i
    exact ⟨a, by rw [hy, ha]⟩
  obtain ⟨a, ha⟩ := hx _ hyi
  exact ⟨a, by rw [← hy, ha]⟩

variable [TopologicalSpace LL] [IsTopologicalRing LL] [TopologicalSpace V] [IsModuleTopology LL V]

theorem isCompact_lattice (hC : IsCompact (Set.range (algebraMap O LL))) (M : Submodule O V)
    (hfg : M.FG) (hfree : Module.Free O M) (hspan : Submodule.span LL (M : Set V) = ⊤) :
    IsCompact (M : Set V) := by
  obtain ⟨ι, _, b, hb⟩ := exists_basis M hfg hfree hspan
  haveI := IsModuleTopology.toContinuousSMul LL V
  haveI := IsModuleTopology.toContinuousAdd LL V
  have hc : Continuous fun c : ι → LL => ∑ i, c i • b i :=
    continuous_finsetSum _ fun i _ => (continuous_apply i).smul continuous_const
  have he : (M : Set V) = (fun c : ι → LL => ∑ i, c i • b i) ''
      Set.pi Set.univ (fun _ => Set.range (algebraMap O LL)) := by
    ext x
    constructor
    · intro hx
      refine ⟨fun i => b.repr x i, fun i _ => ?_, b.sum_repr x⟩
      obtain ⟨a, ha⟩ := (hb x).1 hx i
      exact ⟨a, ha.symm⟩
    · rintro ⟨c, hc', rfl⟩
      rw [SetLike.mem_coe, hb]
      intro i
      obtain ⟨a, ha⟩ := hc' i (Set.mem_univ i)
      exact ⟨a, by rw [b.repr_sum_self, ha]⟩
  rw [he]
  exact (isCompact_univ_pi fun _ => hC).image hc

theorem hasBasis_lattice (M : Submodule O V) (hopen : IsOpen (M : Set V))
    (hcomp : IsCompact (M : Set V)) (ϖ : O) (hϖ : ϖ ≠ 0)
    (hB : (nhds (0 : LL)).HasBasis (fun _ : ℕ => True)
      (fun n => (fun o : O => algebraMap O LL (ϖ ^ n * o)) '' Set.univ)) :
    (nhds (0 : V)).HasBasis (fun _ : ℕ => True) (fun n => (fun x => ϖ ^ n • x) '' (M : Set V)) := by
  haveI := IsModuleTopology.toContinuousSMul LL V
  have hne : ∀ n : ℕ, algebraMap O LL (ϖ ^ n) ≠ 0 := fun n => by
    rw [Ne, map_eq_zero_iff _ (IsFractionRing.injective O LL)]
    exact pow_ne_zero n hϖ
  refine Filter.hasBasis_iff.2 fun t => ⟨fun ht => ?_, ?_⟩
  · have hn : IsOpen ((fun p : LL × V => p.1 • p.2) ⁻¹' interior t) :=
      isOpen_interior.preimage continuous_smul
    obtain ⟨u, v, hu, -, h0, hv, huv⟩ := generalized_tube_lemma (isCompact_singleton (x := (0 : LL)))
      hcomp hn (by
        rintro ⟨a, x⟩ ⟨ha, -⟩
        have ha' : a = 0 := ha
        simpa [ha'] using mem_interior_iff_mem_nhds.2 ht)
    obtain ⟨n, -, hn⟩ := hB.mem_iff.1 (hu.mem_nhds (h0 rfl))
    refine ⟨n, trivial, ?_⟩
    rintro _ ⟨x, hx, rfl⟩
    have h1 : algebraMap O LL (ϖ ^ n) ∈ u := hn ⟨1, trivial, by simp⟩
    have h2 := huv (Set.mk_mem_prod h1 (hv hx))
    have h3 : algebraMap O LL (ϖ ^ n) • x ∈ t := interior_subset h2
    rwa [algebraMap_smul] at h3
  · rintro ⟨n, -, hn⟩
    have hU : IsOpen ((fun y : V => (algebraMap O LL (ϖ ^ n))⁻¹ • y) ⁻¹' (M : Set V)) :=
      hopen.preimage (continuous_const_smul _)
    refine Filter.mem_of_superset (hU.mem_nhds (by simp)) fun y hy => hn ⟨_, hy, ?_⟩
    show ϖ ^ n • (algebraMap O LL (ϖ ^ n))⁻¹ • y = y
    rw [← algebraMap_smul LL (ϖ ^ n), smul_smul, mul_inv_cancel₀ (hne n), one_smul]

theorem exists_pow_smul_mem {G : Type} [TopologicalSpace G] [CompactSpace G] (M : Submodule O V)
    (hopen : IsOpen (M : Set V)) (ϖ : O)
    (hB : (nhds (0 : LL)).HasBasis (fun _ : ℕ => True)
      (fun n => (fun o : O => algebraMap O LL (ϖ ^ n * o)) '' Set.univ))
    (c : G → V) (hc : Continuous c) : ∃ n : ℕ, ∀ g, ϖ ^ n • c g ∈ M := by
  haveI := IsModuleTopology.toContinuousSMul LL V
  have hcov : Set.range c ⊆ ⋃ n : ℕ, {x : V | ϖ ^ n • x ∈ M} := by
    rintro _ ⟨g, rfl⟩
    have hU : IsOpen ((fun a : LL => a • c g) ⁻¹' (M : Set V)) :=
      hopen.preimage (continuous_id.smul continuous_const)
    obtain ⟨n, -, hn⟩ := hB.mem_iff.1 (hU.mem_nhds (by simp))
    have h1 : algebraMap O LL (ϖ ^ n) • c g ∈ M := hn ⟨1, trivial, by simp⟩
    rw [algebraMap_smul] at h1
    exact Set.mem_iUnion.2 ⟨n, h1⟩
  have hop : ∀ n : ℕ, IsOpen {x : V | ϖ ^ n • x ∈ M} := fun n => by
    have : {x : V | ϖ ^ n • x ∈ M} = (fun x : V => algebraMap O LL (ϖ ^ n) • x) ⁻¹' (M : Set V) := by
      ext x
      simp only [Set.mem_setOf_eq, Set.mem_preimage, SetLike.mem_coe, algebraMap_smul]
    rw [this]
    exact hopen.preimage (continuous_const_smul _)
  have hdir : Directed (· ⊆ ·) fun n : ℕ => {x : V | ϖ ^ n • x ∈ M} :=
    Monotone.directed_le (f := fun n : ℕ => {x : V | ϖ ^ n • x ∈ M}) fun m n hmn x hx => by
      obtain ⟨k, rfl⟩ := Nat.exists_eq_add_of_le hmn
      have : ϖ ^ (m + k) • x = ϖ ^ k • ϖ ^ m • x := by rw [smul_smul, pow_add, mul_comm]
      show ϖ ^ (m + k) • x ∈ M
      rw [this]
      exact M.smul_mem _ hx
  obtain ⟨n, hn⟩ := (isCompact_range hc).elim_directed_cover _ hop hcov hdir
  exact ⟨n, fun g => hn ⟨g, rfl⟩⟩

end General

end GlobalTheory.CompanionTheory.LatTop
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.LatticeOpenCompactNhdsBasis =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.NonGaloisLines.TopLine\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsIntegralOfNormLeOne\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CardCocyclesMulInvariantsDiscrete\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousFixingSubgroupEquiv\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsIntegralCyclotomicChar\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsOpenOfFgOfSpanEqTop\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ActQIsLocallyConstant\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CupFlipContinuousCocycle\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.CyclotomicCupTwoCochainLocallyConstant\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.ExistsTorRange\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh\npublic import Mathlib.NumberTheory.Padics.PadicIntegers\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.GoodOAdicCompleteCompactBasis\npublic import Development.AutomorphicSpectrum.Proofs.NonGaloisProofs.LatticeOpenCompactNhdsBasis\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.HTBasis\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.CyclotomicCharacterPadicBasicProperties\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FixingSubgroupEquivBicontinuous\nimport Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsCycCycChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism Formalism.ConjugateSelfDual Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions Formalism.MainNotions.N Formalism.WeaklyAdmissibleFiltrations Module GlobalTheory.CompanionTheory.LocDual

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.BK

open GlobalTheory.CompanionTheory.LatTop in
theorem latTop : ∀ (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l), ∀ (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A : GRep ↥(GK K) ℚ_[l] LL O) (LA : Lattice (O := O) A.ρ) (ϖ : O), Irreducible ϖ → IsOpen (LA.T : Set A.V) ∧ (nhds (0 : A.V)).HasBasis (fun _ : ℕ => True) (fun n => (fun x => ϖ ^ n • x) '' (LA.T : Set A.V)) ∧ IsCompact (LA.T : Set A.V) ∧ (∀ c : ↥(GK K) → A.V, Continuous c → ∃ n : ℕ, ∀ g, ϖ ^ n • c g ∈ LA.T) ∧ ∀ (A' : GRep ↥(GK K) ℚ_[l] LL O) (LA' : Lattice (O := O) A'.ρ) (P : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDualLat1 (Lp.PD K) LA LA' P → IsDualLat1 (Lp.PD K) LA' LA P.flip := by
  intro l _ Lp K LL _ _ _ O _ _ hO A LA ϖ hϖ
  have I := _root_.GlobalTheory.CompanionTheory.GoodCoeff.goodO_structure l LL O hO ϖ hϖ
  obtain ⟨⟨hd, hdvr, hfr⟩, hfd, hmt, htr, hop⟩ := hO
  obtain ⟨-, -, hC, -, hB, -⟩ := I
  haveI := hd
  haveI := hfr
  haveI := htr
  haveI : CompactSpace ↥(GK K) := GlobalTheory.BlochKatoIntegralScalars.compactSpace_GK K
  have hopen : IsOpen (LA.T : Set A.V) :=
    GlobalTheory.Cyc.isOpen_of_fg_of_span_eq_top hop LA.T LA.fg LA.span
  have hcomp : IsCompact (LA.T : Set A.V) := isCompact_lattice hC LA.T LA.fg LA.free LA.span
  refine ⟨hopen, hasBasis_lattice LA.T hopen hcomp ϖ hϖ.ne_zero hB, hcomp,
    fun c hc => exists_pow_smul_mem LA.T hopen ϖ hB c hc, ?_⟩
  rintro A' LA' P ⟨⟨h1, h2, h3, h4⟩, h5⟩
  refine ⟨⟨fun g y x => h1 g x y, h3, h2, h4.symm⟩, fun x => ⟨fun hx y hy => (h5 y).1 hy x hx, fun hx => ?_⟩⟩
  exact mem_of_dual_dual LA.T LA.fg LA.free LA.span (LA'.T : Set A'.V) P h3 h4 h5 x hx

open GlobalTheory.CompanionTheory.CupFlip in
theorem cupFlip : ∀ (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l), ∀ (LL : Type) [Field LL] [Algebra ℚ_[l] LL] [TopologicalSpace LL] (O : Type) [CommRing O] [Algebra O LL], GoodO (Qp := ℚ_[l]) LL O → ∀ (A A' : GRep ↥(GK K) ℚ_[l] LL O) (P : A.V →ₗ[LL] A'.V →ₗ[LL] LL), IsDual1 (Lp.PD K) A.ρ A'.ρ P → IsDual1 (Lp.PD K) A'.ρ A.ρ P.flip ∧ ∀ a ∈ continuousCocycles A.ρ, ∀ b ∈ continuousCocycles A'.ρ, Continuous (cupL A'.ρ P a b) ∧ ReciprocityTheory.Def.d2 (charRep (cycLL (Lp.PD K) LL)) (cupL A'.ρ P a b) = 0 ∧ (CobL (Lp.PD K) (cupL A'.ρ P a b) ↔ CobL (Lp.PD K) (cupL A.ρ P.flip b a)) ∧ ((a ∈ B1 A.ρ ∨ b ∈ B1 A'.ρ) → CobL (Lp.PD K) (cupL A'.ρ P a b)) := by
  intro l _ Lp K LL _ _ _ O _ _ hO A A' P hP
  have : IsTopologicalRing LL := hO.2.2.2.1
  have hd := hP.1
  have hdf : ∀ g y x, P.flip (A'.ρ g y) (A.ρ g x) =
      ((cycLL (Lp.PD K) LL g : LLˣ) : LL) * P.flip y x := fun g y x => hd g x y
  refine ⟨⟨hdf, hP.2.2.1, hP.2.1, hP.2.2.2.symm⟩, fun a ha b hb => ?_⟩
  obtain ⟨hac, hacoc⟩ := ha
  obtain ⟨hbc, hbcoc⟩ := hb
  have hc : Continuous fun g => P (a g) (b g) := (continuous_pair A A' P).comp (hac.prodMk hbc)
  have hflip : CobL (Lp.PD K) (cupL A.ρ P.flip b a) →
      CobL (Lp.PD K) (cupL A'.ρ P a b) := cob_of_flip _ hd hacoc hbcoc hc
  refine ⟨continuous_cup A A' P hac hbc, d2_cup _ hd hacoc hbcoc, ⟨fun h => ?_, hflip⟩, ?_⟩
  · refine cob_of_flip _ (P := P.flip) hdf hbcoc hacoc hc ?_
    rwa [LinearMap.flip_flip]
  · rintro (h | h)
    · obtain ⟨x, hx⟩ := LinearMap.mem_range.1 h
      exact cob_of_left _ hd (x := x) (fun g => by rw [← hx]; rfl) hbcoc
        ((continuous_pair A A' P).comp (continuous_const.prodMk hbc))
    · obtain ⟨y, hy⟩ := LinearMap.mem_range.1 h
      exact hflip (cob_of_left _ (P := P.flip) hdf (x := y) (fun g => by rw [← hy]; rfl) hacoc
        ((continuous_pair A' A P.flip).comp (continuous_const.prodMk hac)))

open GlobalTheory.CompanionTheory.FinCoc in
theorem finZQ : Formalism.GaloisCohomology.LocalTateDualityK → Formalism.GaloisCohomology.LocalEulerCharK →
    ∀ (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l), FinZQ (Lp.PD K) := by
  intro hT hE l _ Lp K LL _ _ _ O _ _ hg A LA ϖ hϖ r hI
  obtain ⟨-, -, -, ⟨-, hl, -⟩, -, -⟩ := _root_.GlobalTheory.CompanionTheory.GoodCoeff.goodO_structure l LL O hg ϖ hϖ
  obtain ⟨-, hB, hC, -, -⟩ := latTop l Lp K LL O hg A LA ϖ hϖ
  have hW : (fun x => ϖ ^ r • x) '' (LA.T : Set A.V) ∈ nhds (0 : A.V) := hB.mem_of_mem trivial
  have hMfin := finite_quot LA hC hW
  have hfin := GlobalTheory.CocycleCount.cocycles_finite_ncard_le hT hE l K r _
    (fun g => (actQ LA _ hI g).toAddMonoidHom) (actQ_one' LA _ hI)
    (fun g h m => actQ_mul' LA _ hI g h m) (pow_nsmul_quot LA hl r)
    (actQ_isLocallyConstant LA hW A.cont hI)
  exact hfin.1.to_subtype

open GlobalTheory.CompanionTheory.LocDual.TopCoh ReciprocityTheory.Gal Formalism.GaloisCohomology GlobalTheory.Cyc GlobalTheory.Cyc.TwistLift in
theorem cobChar : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l), ∀ (n : ℕ) (χ : ↥(GK K) →* (ZMod (l ^ n))ˣ), 0 < n → (∀ g, ∃ u : ℤ_[l], (u : ℚ_[l]) = (((Lp.PD K).χ g : ℚ_[l]ˣ) : ℚ_[l]) ∧ PadicInt.toZModPow n u = (χ g : ZMod (l ^ n))) → ∀ (M : Type) [AddCommGroup M] [Module (ZMod (l ^ n)) M] [Finite M] (z : ↥(GK K) × ↥(GK K) → M), IsLocallyConstant z → (∀ g h k, (χ g : ZMod (l ^ n)) • z (h, k) - z (g * h, k) + z (g, h * k) - z (g, h) = 0) → (∀ ψ : M →+ ZMod (l ^ n), ∃ f : ↥(GK K) → ZMod (l ^ n), IsLocallyConstant f ∧ ∀ g h, (χ g : ZMod (l ^ n)) * f h - f (g * h) + f g = ψ (z (g, h))) → ∃ f : ↥(GK K) → M, IsLocallyConstant f ∧ ∀ g h, (χ g : ZMod (l ^ n)) • f h - f (g * h) + f g = z (g, h) := by
  intro hT l _ Lp K n χ hn hχ M _ _ _ z hz hcoc hchar
  obtain ⟨hΦ1, hΦ2⟩ := GlobalTheory.Cyc.TwistLift.continuous_fixingSubgroupEquiv K.1
  let Ψ : Formalism.GaloisCohomology.GK l K.1 ≃* ↥(GK K) := K.1.fixingSubgroupEquiv.symm
  have hΨ : Continuous Ψ := hΦ1
  have hΨ' : Continuous Ψ.symm := hΦ2
  have hcyc : IsCyc Lp.χQ := Lp.χQ_cyc
  let χZ : Formalism.GaloisCohomology.GK l K.1 →* ℤ_[l]ˣ := (cyclotomicCharacter (PadicAlgCl l) l).comp
      (MulSemiringAction.toRingAut (Formalism.GaloisCohomology.GK l K.1) (PadicAlgCl l))
  have hχZ : ∀ g, ((χZ g : ℤ_[l]) : ℚ_[l]) = (Lp.χQ (Ψ g : GQ l) : ℚ_[l]) := fun g => by
    rw [isCyc_unique hcyc (isCyc_cycChar l)]; rfl
  have hχc : Continuous fun g => (χZ g : ℤ_[l]) := by
    rw [continuous_iff_coe]
    simp only [hχZ]
    exact hcyc.continuous.comp (continuous_subtype_val.comp hΨ)
  have hval : ∀ g : Formalism.GaloisCohomology.GK l K.1,
      (χ (Ψ g) : ZMod (l ^ n)) = (Formalism.GaloisCohomology.cycK l K.1 n g : ZMod (l ^ n)) := fun g => by
    obtain ⟨u, hu, hu'⟩ := hχ (Ψ g)
    rw [Lp.PD_χ K (Ψ g), ← hχZ] at hu
    rw [← hu', show u = (χZ g : ℤ_[l]) from Subtype.ext hu]
    rfl
  letI : TopologicalSpace M := ⊥
  haveI : DiscreteTopology M := ⟨rfl⟩
  obtain ⟨c, hc, hd⟩ := coboundary_of_characters hT l K.1 K.2 n hn
    ((continuous_toZModPow n).comp hχc) M (fun p => z (Ψ p.1, Ψ p.2))
    (hz.continuous.comp (hΨ.prodMap hΨ))
    (fun g h k => by
      have := hcoc (Ψ g) (Ψ h) (Ψ k)
      rw [hval, ← map_mul Ψ, ← map_mul Ψ] at this
      exact this)
    (fun ψ => by
      obtain ⟨f, hf, hd⟩ := hchar ψ
      refine ⟨fun g => f (Ψ g), hf.continuous.comp hΨ, fun g h => ?_⟩
      have := hd (Ψ g) (Ψ h)
      rw [hval, ← map_mul Ψ] at this
      exact this)
  refine ⟨fun g => c (Ψ.symm g), (IsLocallyConstant.iff_continuous _).2 (hc.comp hΨ'), fun g h => ?_⟩
  have := hd (Ψ.symm g) (Ψ.symm h)
  rw [← map_mul Ψ.symm, ← hval] at this
  simpa using this

open GlobalTheory.CompanionTheory.LocDual.TI in
theorem topInj : Formalism.GaloisCohomology.LocalTateDualityK → ∀ (l : ℕ) [Fact l.Prime] (Lp : LocPrime l) (K : FinExt l),
    TopInj (Lp.PD K) := by
  intro hT l _ Lp K LL _ _ _ O _ _ hO L1 hL1 ϖ hϖ r z hz hcob
  obtain ⟨-, hFin, -, ⟨e, hl, -⟩, -, hZ⟩ := _root_.GlobalTheory.CompanionTheory.GoodCoeff.goodO_structure l LL O hO ϖ hϖ
  obtain ⟨⟨hD, hDVR, hFr⟩, -⟩ := hO
  haveI := hD
  haveI := hDVR
  haveI := hFr
  haveI := K.2
  haveI : CompactSpace ↥(GK K) :=
    isCompact_iff_compactSpace.1 (IntermediateField.fixingSubgroup_isClosed K.1).isCompact
  obtain ⟨F, ⟨hF, -⟩, hFz⟩ := hcob
  obtain ⟨s, hrs, hFs⟩ := exists_tor_range L1.T hF.range_finite hϖ hL1 r
  obtain ⟨χZ, hχZ, hχc, -⟩ := GlobalTheory.Cyc.exists_integral_cyclotomicChar l Lp
  have hlpos : l ≠ 0 := (Fact.out : l.Prime).ne_zero
  haveI : NeZero (l ^ (s + 1)) := ⟨pow_ne_zero _ hlpos⟩
  let χ : ↥(GK K) →* (ZMod (l ^ (s + 1)))ˣ :=
    (Units.map (PadicInt.toZModPow (s + 1) : ℤ_[l] →+* ZMod (l ^ (s + 1))).toMonoidHom).comp
      (χZ.comp (GK K).subtype)
  have hχv : ∀ g, (χ g : ZMod (l ^ (s + 1))) = PadicInt.toZModPow (s + 1) ((χZ (g : GQ l) : ℤ_[l]ˣ) : ℤ_[l]) :=
    fun _ => rfl
  have hχlc : IsLocallyConstant fun g => (χ g : ZMod (l ^ (s + 1))) :=
    (lc_toZModPow (s + 1)).comp_continuous
      (Units.continuous_val.comp (hχc.comp continuous_subtype_val))
  have hcyc : ∀ g : ↥(GK K), ((cycLL (Lp.PD K) LL g : LLˣ) : LL) =
      algebraMap ℚ_[l] LL (((χZ (g : GQ l) : ℤ_[l]ˣ) : ℤ_[l]) : ℚ_[l]) := fun g => by
    rw [hχZ, ← Lp.PD_χ K g]
    rfl
  have hS : ∀ q ∈ tor L1.T ϖ s, (l ^ (s + 1)) • q = 0 := fun q hq => by
    obtain ⟨c, hc⟩ := Ideal.mem_span_singleton.1 hl
    rw [mem_tor] at hq
    have h1 : (l : O) ^ (s + 1) = (ϖ * c ^ (s + 1)) * ϖ ^ s := by rw [hc]; ring
    rw [← Nat.cast_smul_eq_nsmul O, Nat.cast_pow, h1, mul_smul, hq, smul_zero]
  have hact : ∀ g, ∀ q ∈ tor L1.T ϖ s, repD L1 g q = (χ g : ZMod (l ^ (s + 1))).val • q := fun g q hq => by
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective L1.T q
    rw [hχv, ← mk_mul_int L1.T hZ (s + 1) _ x (hS _ hq), ← hcyc]
    rfl
  letI : Module (ZMod (l ^ (s + 1))) ↥(tor L1.T ϖ r) :=
    AddCommGroup.zmodModule fun m => Subtype.ext (hS _ (tor_mono L1.T hrs m.2))
  haveI := finite_tor L1.T hL1 hϖ hFin r
  obtain ⟨f, hf, hfM, hfe⟩ := descent (fun g => (repD L1 g).toAddMonoidHom)
    (fun g h q => by
      change repD L1 (g * h) q = repD L1 g (repD L1 h q)
      rw [map_mul, Module.End.mul_apply])
    χ hχlc (tor L1.T ϖ r) (tor L1.T ϖ s) (tor_mono L1.T hrs) hS hact F hF hFs
    (fun p => Submodule.Quotient.mk (z p)) (fun g h => congrFun hFz (g, h))
    (fun p => (mk_mem_tor L1.T).2 (hz p))
    (fun zz h1 h2 h3 => cobChar hT l Lp K (s + 1) χ (Nat.succ_pos s)
      (fun g => ⟨(χZ (g : GQ l) : ℤ_[l]ˣ), by rw [hχZ, ← Lp.PD_χ K g], rfl⟩) ↥(tor L1.T ϖ r) zz h1 h2 h3)
  choose x hx using fun g => Submodule.Quotient.mk_surjective L1.T (f g)
  refine ⟨x, fun g => (mk_mem_tor L1.T).1 (by rw [hx]; exact hfM g), ?_, fun p => ?_⟩
  · simpa only [hx] using hf
  · have h1 : (Submodule.Quotient.mk (ReciprocityTheory.Def.d1 (charRep (cycLL (Lp.PD K) LL)) x p) : LL ⧸ L1.T) =
        repD L1 p.1 (Submodule.Quotient.mk (x p.2)) - Submodule.Quotient.mk (x (p.1 * p.2)) +
          Submodule.Quotient.mk (x p.1) := rfl
    rw [← Submodule.Quotient.mk_eq_zero, Submodule.Quotient.mk_sub, h1, hx, hx, hx, sub_eq_zero]
    exact hfe p.1 p.2

end GlobalTheory.CompanionTheory.Hypotheses₂.BK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GlobalProofs.CupFlip =====
