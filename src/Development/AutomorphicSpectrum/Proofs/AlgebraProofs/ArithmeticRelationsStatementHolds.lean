module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOverOfMem
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullLine
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeBaseChangeLargerRingHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCoherentGens
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_join_model
public import Development.WeilBound.CoreStatements.HodgeTatePoints.HcptgenRing
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenMany
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.KernelLatticeBaseChange
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamConstr
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSummandOfQuot
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteIntegralClosureOfEssFiniteTypeField
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair
public import Development.AutomorphicSpectrum.Statements.AlgebraStatements.RelationsStatement
import Mathlib.Tactic.Linter.Style
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects
import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.FirstLatticeBaseChange
import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange
import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XDotdualBc
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TestFactsBaseChange, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_pull_exists, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamPull, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModel, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenLines, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineLatticeFamilyModel, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelChern, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelBundles, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.SmulMemSpan, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelComparison, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelFacts, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverPrimePermModuleLattice, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_normal_join, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelRefinementExists, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DescentRelationsFromModels, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UniformizerModelPermModuleLattice, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ArithmeticRelationsStatementHolds

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TestFactsBaseChange =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TestFactsBaseChange", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace PositivityTheory.Xgn.TestFactsBaseChange

theorem span_span {o Ω C V W : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C]
    [Algebra Ω C] [AddCommGroup V] [Module Ω V] [AddCommGroup W] [Module C W]
    (R₁ : Subalgebra o Ω) (RC : Subalgebra o C) (h : ∀ a ∈ R₁, algebraMap Ω C a ∈ RC)
    (f : V → W) (hadd : ∀ x y, f (x + y) = f x + f y)
    (hs : ∀ (a : Ω) x, f (a • x) = algebraMap Ω C a • f x)
    (g : V → V) (hg : ∀ x, g x = x) (S : Set V) :
    spanOver RC (f '' (spanOver R₁ (g '' S) : Set V)) = spanOver RC (f '' S) := by
  have h0 : f 0 = 0 := by simpa using hs 0 0
  have hn : ∀ x, f (-x) = -f x := fun x => by simpa using hs (-1) x
  apply le_antisymm
  · refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨c, hc, _, ⟨v, hv, rfl⟩, rfl⟩
    show c • f v ∈ spanOver RC (f '' S)
    induction hv using AddSubgroup.closure_induction with
    | mem x hx =>
      obtain ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩ := hx
      rw [hs, hg, smul_smul]
      exact AddSubgroup.subset_closure ⟨_, RC.mul_mem hc (h a ha), _, ⟨e, he, rfl⟩, rfl⟩
    | zero => rw [h0, smul_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [hadd, smul_add]; exact add_mem hx hy
    | neg x _ hx => rw [hn, smul_neg]; exact neg_mem hx
  · refine AddSubgroup.closure_mono ?_
    rintro _ ⟨c, hc, _, ⟨v, hv, rfl⟩, rfl⟩
    exact ⟨c, hc, _, ⟨v, AddSubgroup.subset_closure
      ⟨1, R₁.one_mem, v, ⟨v, hv, hg v⟩, (one_smul _ _).symm⟩, rfl⟩, rfl⟩

theorem bcMap_smul {Ω C : Type} [Field Ω] [Field C] [Algebra Ω C] (ι : Type) (a : Ω) (x : ι → Ω) :
    bcMap Ω C ι (a • x) = algebraMap Ω C a • bcMap Ω C ι x := by
  rw [map_smul, algebraMap_smul]

theorem span_one {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C]
    [Algebra Ω C] (R₁ : Subalgebra o Ω) (RC : Subalgebra o C)
    (h : ∀ a ∈ R₁, algebraMap Ω C a ∈ RC) (ι : Type) (S : Set (ι → Ω)) :
    spanOver RC (bcMap Ω C ι '' (spanOver R₁ (bcMap Ω Ω ι '' S) : Set (ι → Ω))) =
      spanOver RC (bcMap Ω C ι '' S) :=
  span_span R₁ RC h _ (map_add _) (bcMap_smul ι) _ (fun _ => rfl) S

theorem span_two {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C]
    [Algebra Ω C] (R₁ : Subalgebra o Ω) (RC : Subalgebra o C)
    (h : ∀ a ∈ R₁, algebraMap Ω C a ∈ RC) (ι κ : Type) (S : Set ((ι → Ω) × (κ → Ω))) :
    spanOver RC (Prod.map (bcMap Ω C ι) (bcMap Ω C κ) ''
        (spanOver R₁ (Prod.map (bcMap Ω Ω ι) (bcMap Ω Ω κ) '' S) : Set ((ι → Ω) × (κ → Ω)))) =
      spanOver RC (Prod.map (bcMap Ω C ι) (bcMap Ω C κ) '' S) :=
  span_span R₁ RC h _
    (fun _ _ => Prod.ext (map_add (bcMap Ω C ι) _ _) (map_add (bcMap Ω C κ) _ _))
    (fun a _ => Prod.ext (bcMap_smul ι a _) (bcMap_smul κ a _)) _ (fun _ => rfl) S

theorem bc_bc {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C]
    [Algebra Ω C] {F : Type} {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s)
    (R₁ : Subalgebra o Ω) (RC : Subalgebra o C) (h : ∀ a ∈ R₁, algebraMap Ω C a ∈ RC) :
    (D.bc R₁).bc RC = D.bc RC := by
  simp only [LieLatticeData.bc, span_one R₁ RC h, span_two R₁ RC h]

end PositivityTheory.Xgn.TestFactsBaseChange

theorem PositivityTheory.Xgn.test_facts_base_change : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R R₁ : Subalgebra o Ω), R ≤ R₁ → ∀ (p : ℕ) (w : Ω) (χ : Sg → F → Ω) (φ : Equiv.Perm Sg), D.TestFacts R p w χ φ → (D.bc R₁).TestFacts R₁ p w χ φ := by
  intro o Ω _ _ _ F _ _ n Sg r s D R R₁ hR p w χ φ H C _ _ _ _ RC hT
  obtain ⟨h1, h2, h3, h4⟩ := hT
  rw [PositivityTheory.Xgn.TestFactsBaseChange.bc_bc D R₁ RC h4]
  exact H C RC ⟨h1, h2, h3, fun a ha => h4 a (hR ha)⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TestFactsBaseChange =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_pull_exists =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_pull_exists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOverOfMem\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XBundleOfFamily\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullLine\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)

namespace PositivityTheory.Xgn.A_pull_exists
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (restrictChart)
open ReciprocityTheory.ChartRestriction.G.Geo (div_mem_chartRing)
open PositivityTheory.Xgn.A_pull_line (comb mseg_join map_mem)
open GlobalTheory.CompanionTheory.Ar.Num.LocFreeBC (smul_mem_spanOver mem_spanOver_of_mem locFree_baseChange)

theorem pow_mul_mem {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] {K : Type} [Fintype K]
    {ι : K → Type} (x : (Σ k, ι k) → Ω) (s t : ∀ k, ι k) (hs : mseg x s ≠ 0) (a : Ω)
    (ha : a ∈ chartRing O (mseg x) s) :
    ∃ n : ℕ, (mseg x s / mseg x t) ^ n * a ∈ chartRing O (mseg x) t := by
  have hq := div_mem_chartRing (o := O) (mseg x) t s
  unfold chartRing at ha
  induction ha using Algebra.adjoin_induction with
  | mem y hy =>
    obtain ⟨u, rfl⟩ := hy
    refine ⟨1, ?_⟩
    have h : (mseg x s / mseg x t) ^ 1 * (mseg x u / mseg x s) = mseg x u / mseg x t := by
      rw [pow_one, mul_comm, div_mul_div_cancel₀ hs]
    have h2 := div_mem_chartRing (o := O) (mseg x) t u
    rw [← h] at h2
    exact h2
  | algebraMap r => exact ⟨0, by rw [pow_zero, one_mul]; exact Subalgebra.algebraMap_mem _ r⟩
  | add a b _ _ ha hb =>
    obtain ⟨m, hm⟩ := ha
    obtain ⟨n, hn⟩ := hb
    refine ⟨m + n, ?_⟩
    have h : (mseg x s / mseg x t) ^ (m + n) * (a + b) =
        (mseg x s / mseg x t) ^ n * ((mseg x s / mseg x t) ^ m * a) +
        (mseg x s / mseg x t) ^ m * ((mseg x s / mseg x t) ^ n * b) := by ring
    rw [h]
    exact add_mem (mul_mem (pow_mem hq n) hm) (mul_mem (pow_mem hq m) hn)
  | mul a b _ _ ha hb =>
    obtain ⟨m, hm⟩ := ha
    obtain ⟨n, hn⟩ := hb
    refine ⟨m + n, ?_⟩
    have h : (mseg x s / mseg x t) ^ (m + n) * (a * b) =
        ((mseg x s / mseg x t) ^ m * a) * ((mseg x s / mseg x t) ^ n * b) := by ring
    rw [h]
    exact mul_mem hm hn

theorem closure_eq {O Ω₁ V V₁ : Type} [CommRing O] [Field Ω₁] [Algebra O Ω₁] [AddCommGroup V₁]
    [Module Ω₁ V₁] (R : Subalgebra O Ω₁) (f : V → V₁) (L : Set V) :
    spanOver R (f '' L) = AddSubgroup.closure {v | ∃ a ∈ R, ∃ e ∈ L, v = a • f e} := by
  unfold spanOver
  congr 1
  ext v
  constructor
  · rintro ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩
    exact ⟨a, ha, e, he, rfl⟩
  · rintro ⟨a, ha, e, he, rfl⟩
    exact ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩

theorem main (O : Type) [CommRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K]
    [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (N : ℕ) (V : Type)
    [AddCommGroup V] [Module Ω V] (E : ChartBundle O (mseg x) N V)
    (Ω₁ : Type) [Field Ω₁] [Algebra O Ω₁] [Algebra Ω Ω₁] [IsScalarTower O Ω Ω₁] (K' : Type)
    [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω₁)
    (V₁ : Type) [AddCommGroup V₁] [Module Ω₁ V₁] [Module Ω V₁] [IsScalarTower Ω Ω₁ V₁]
    (bc : V →ₗ[Ω] V₁) (hbc : IsBaseChange Ω₁ bc) :
    ∃ EB : ChartBundle O (mseg (bcCoord x z)) N V₁, ∀ s, mseg (bcCoord x z) s ≠ 0 →
      EB.lat s = AddSubgroup.closure
        {v | ∃ a ∈ chartRing O (mseg (bcCoord x z)) s, ∃ e ∈ E.lat (restrictChart s), v = a • bc e} := by
  let φ : Ω →ₐ[O] Ω₁ := IsScalarTower.toAlgHom O Ω Ω₁
  obtain ⟨hfam, hloc⟩ := (PositivityTheory.Xgn.t_bundle_of_family O Ω K ι x N V).2 E
  have hj : ∀ s : ∀ k : K ⊕ K', Sum.elim ι ι' k, mseg (bcCoord x z) s =
      algebraMap Ω Ω₁ (mseg x (restrictChart s)) * mseg z (fun k => s (.inr k)) :=
    fun s => mseg_join φ x z s
  have hne : ∀ s : ∀ k : K ⊕ K', Sum.elim ι ι' k, mseg (bcCoord x z) s ≠ 0 →
      mseg x (restrictChart s) ≠ 0 := by
    intro s hs h
    rw [hj, h, map_zero, zero_mul] at hs
    exact hs rfl
  suffices hov : IsLatFamily O (bcCoord x z) (fun s =>
      spanOver (chartRing O (mseg (bcCoord x z)) s) (bc '' (E.lat (restrictChart s) : Set V))) by
    obtain ⟨EB, hEB⟩ :=
      (PositivityTheory.Xgn.t_bundle_of_family O Ω₁ (K ⊕ K') (Sum.elim ι ι') (bcCoord x z) N V₁).1 _ hov
        (fun s hs => locFree_baseChange _ _ (fun a ha => map_mem φ x z s hs a ha) bc hbc N _
          (hloc _ (hne s hs)))
    exact ⟨EB, fun s hs => (hEB s hs).trans (closure_eq _ _ _)⟩
  refine ⟨fun s _ a ha v hv => smul_mem_spanOver _ _ ha hv, ?_⟩
  intro s t hs ht v hv
  beta_reduce at hv ⊢
  have hq := div_mem_chartRing (o := O) (mseg (bcCoord x z)) t s
  set q := mseg (bcCoord x z) s / mseg (bcCoord x z) t with hqdef
  rw [spanOver] at hv
  induction hv using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩ := hy
    obtain ⟨n, hn⟩ := pow_mul_mem (bcCoord x z) s t hs a ha
    obtain ⟨m, hm⟩ := hfam.2 _ _ (hne s hs) (hne t ht) e he
    have hw := div_mem_chartRing (o := O) (mseg (bcCoord x z)) t (comb (restrictChart t) s)
    set w := mseg (bcCoord x z) (comb (restrictChart t) s) / mseg (bcCoord x z) t with hwdef
    have ht' : algebraMap Ω Ω₁ (mseg x (restrictChart t)) ≠ 0 := (map_ne_zero _).mpr (hne t ht)
    have hqw : q = w * algebraMap Ω Ω₁ (mseg x (restrictChart s) / mseg x (restrictChart t)) := by
      have h1 : mseg (bcCoord x z) (comb (restrictChart t) s) =
          algebraMap Ω Ω₁ (mseg x (restrictChart t)) * mseg z (fun k => s (.inr k)) := hj _
      rw [hqdef, hwdef, h1, hj s, map_div₀]
      field_simp
    refine ⟨n + m, ?_⟩
    have h : q ^ (n + m) • a • bc e = (q ^ n * a * w ^ m) •
        bc ((mseg x (restrictChart s) / mseg x (restrictChart t)) ^ m • e) := by
      rw [map_smul, ← algebraMap_smul Ω₁ (_ ^ m : Ω), smul_smul, smul_smul, map_pow, pow_add,
        mul_assoc (q ^ n * a), ← mul_pow, ← hqw]
      congr 1
      ring
    rw [h]
    exact smul_mem_spanOver _ _ (mul_mem hn (pow_mem hw m)) (mem_spanOver_of_mem _ ⟨_, hm, rfl⟩)
  | zero => exact ⟨0, by rw [smul_zero]; exact zero_mem _⟩
  | add a b _ _ ha hb =>
    obtain ⟨m, hm⟩ := ha
    obtain ⟨n, hn⟩ := hb
    refine ⟨m + n, ?_⟩
    have h : q ^ (m + n) • (a + b) = q ^ n • q ^ m • a + q ^ m • q ^ n • b := by
      rw [smul_add, smul_smul, smul_smul, ← pow_add, ← pow_add, add_comm n m]
    rw [h]
    exact add_mem (smul_mem_spanOver _ _ (pow_mem hq n) hm) (smul_mem_spanOver _ _ (pow_mem hq m) hn)
  | neg a _ ha =>
    obtain ⟨m, hm⟩ := ha
    exact ⟨m, by rw [smul_neg]; exact neg_mem hm⟩

end PositivityTheory.Xgn.A_pull_exists

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_pull_exists =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamPull =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamPull", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeBaseChangeLargerRingHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.TestFactsBaseChange\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XPullLine\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_pull_exists\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOverOfMem\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.FirstLatticeBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChartBundleBaseExtension\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace PositivityTheory.Xgn.A_fam_pull
open ReciprocityTheory.ChartRestriction.G.Geo (div_mem_chartRing)
open PositivityTheory.Xgn.A_pull_line (comb)
open PositivityTheory.Xgn.A_pull_exists (pow_mul_mem)
open GlobalTheory.CompanionTheory.Ar.Num.LocFreeBC (smul_mem_spanOver mem_spanOver_of_mem)

theorem latFamily_join {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] {K : Type} [Fintype K]
    {ι : K → Type} [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) {K' : Type} [Fintype K'] {ι' : K' → Type}
    [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) {V : Type} [AddCommGroup V] [Module Ω V]
    (L : (∀ k, ι k) → AddSubgroup V) (hfam : IsLatFamily O x L) (f : V → V) (hf : ∀ v, f v = v) :
    IsLatFamily O (joinCoord x z) (fun s =>
      spanOver (chartRing O (mseg (joinCoord x z)) s) (f '' (L (restrictChart s) : Set V))) := by
  have hj : ∀ s : ∀ k : K ⊕ K', Sum.elim ι ι' k, mseg (joinCoord x z) s =
      mseg x (restrictChart s) * mseg z (fun k => s (.inr k)) :=
    fun s => PositivityTheory.Xgn.A_pull_line.mseg_join (AlgHom.id O Ω) x z s
  have hne : ∀ s : ∀ k : K ⊕ K', Sum.elim ι ι' k, mseg (joinCoord x z) s ≠ 0 →
      mseg x (restrictChart s) ≠ 0 := by
    intro s hs
    rw [hj] at hs
    exact left_ne_zero_of_mul hs
  refine ⟨fun s _ a ha v hv => smul_mem_spanOver _ _ ha hv, ?_⟩
  intro s t hs ht v hv
  beta_reduce at hv ⊢
  have hq := div_mem_chartRing (o := O) (mseg (joinCoord x z)) t s
  set q := mseg (joinCoord x z) s / mseg (joinCoord x z) t with hqdef
  rw [spanOver] at hv
  induction hv using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩ := hy
    obtain ⟨n, hn⟩ := pow_mul_mem (joinCoord x z) s t hs a ha
    obtain ⟨m, hm⟩ := hfam.2 _ _ (hne s hs) (hne t ht) e he
    have hw := div_mem_chartRing (o := O) (mseg (joinCoord x z)) t (comb (restrictChart t) s)
    set w := mseg (joinCoord x z) (comb (restrictChart t) s) / mseg (joinCoord x z) t with hwdef
    have ht' := hne t ht
    have hqw : q = w * (mseg x (restrictChart s) / mseg x (restrictChart t)) := by
      have h1 : mseg (joinCoord x z) (comb (restrictChart t) s) =
          mseg x (restrictChart t) * mseg z (fun k => s (.inr k)) := hj _
      rw [hqdef, hwdef, h1, hj s]
      field_simp
    refine ⟨n + m, ?_⟩
    have h : q ^ (n + m) • a • f e = (q ^ n * a * w ^ m) •
        f ((mseg x (restrictChart s) / mseg x (restrictChart t)) ^ m • e) := by
      rw [hf, hf, smul_smul, smul_smul, pow_add, mul_assoc (q ^ n * a), ← mul_pow, ← hqw]
      congr 1
      ring
    rw [h]
    exact smul_mem_spanOver _ _ (mul_mem hn (pow_mem hw m)) (mem_spanOver_of_mem _ ⟨_, hm, rfl⟩)
  | zero => exact ⟨0, by rw [smul_zero]; exact zero_mem _⟩
  | add a b _ _ ha hb =>
    obtain ⟨m, hm⟩ := ha
    obtain ⟨n, hn⟩ := hb
    refine ⟨m + n, ?_⟩
    have h : q ^ (m + n) • (a + b) = q ^ n • q ^ m • a + q ^ m • q ^ n • b := by
      rw [smul_add, smul_smul, smul_smul, ← pow_add, ← pow_add, add_comm n m]
    rw [h]
    exact add_mem (smul_mem_spanOver _ _ (pow_mem hq n) hm) (smul_mem_spanOver _ _ (pow_mem hq m) hn)
  | neg a _ ha =>
    obtain ⟨m, hm⟩ := ha
    exact ⟨m, by rw [smul_neg]; exact neg_mem hm⟩

theorem charData {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω]
    (hinj : Function.Injective (algebraMap O Ω)) {F : Type} [Zero F] [One F] {Sg : Type} (p : ℕ)
    (hp : p.Prime) (w : O) (χ : Sg → F → O)
    (h : (p : O) ≠ 0 ∧ (∃ u : O, IsUnit u ∧ w ^ (p - 1) = u * (p : O)) ∧ ¬ IsUnit (p : O) ∧ (0 : F) ≠ 1 ∧
      ∀ τ, χ τ 0 = 0 ∧ χ τ 1 = 1) (R : Subalgebra O Ω) :
    CharData R p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) := by
  obtain ⟨h0, ⟨u, hu, hw⟩, -, h01, hχ⟩ := h
  obtain ⟨u, rfl⟩ := hu
  refine ⟨?_, R.algebraMap_mem _, ⟨algebraMap O Ω ((u⁻¹ : Oˣ) * w ^ (p - 2)), R.algebraMap_mem _, ?_⟩, h01,
    fun τ => ⟨?_, ?_, fun a => R.algebraMap_mem _⟩⟩
  · rw [← map_natCast (algebraMap O Ω)]
    exact (map_ne_zero_iff _ hinj).2 h0
  · have h2 : p - 1 = p - 2 + 1 := by have := hp.two_le; omega
    rw [← map_mul, mul_assoc, ← pow_succ, ← h2, hw, Units.inv_mul_cancel_left, map_natCast]
  · simp only [(hχ τ).1, map_zero]
  · simp only [(hχ τ).2, map_one]

theorem mul_std_le {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] {n : ℕ} (R R' : Subalgebra O Ω)
    (w : Ω) (A : AddSubgroup (Fin n → Ω)) (h : mulLat w (stdLat R _) ≤ A) :
    mulLat w (stdLat R' _) ≤ spanOver R' (bcMap Ω Ω _ '' (A : Set (Fin n → Ω))) := by
  rintro _ ⟨y, hy, rfl⟩
  have hy' : ∀ i, y i ∈ R' := fun i => hy i (Set.mem_univ i)
  have e : (DistribSMul.toAddMonoidHom (Fin n → Ω) w) y =
      ∑ i, y i • (w • (Pi.single i (1 : Ω) : Fin n → Ω)) := by
    change w • y = _
    conv_lhs => rw [pi_eq_sum_univ' y]
    rw [Finset.smul_sum]
    exact Finset.sum_congr rfl fun i _ => smul_comm _ _ _
  rw [e]
  refine sum_mem fun i _ => smul_mem_spanOver _ _ (hy' i) (mem_spanOver_of_mem _ ⟨_, h ⟨Pi.single i 1, ?_, rfl⟩, rfl⟩)
  intro j _
  change (Pi.single i (1 : Ω) : Fin n → Ω) j ∈ R
  rw [Pi.single_apply]
  split_ifs
  exacts [one_mem _, zero_mem _]

theorem span_eq {O Ω V : Type} [CommRing O] [Field Ω] [Algebra O Ω] [AddCommGroup V] [Module Ω V]
    (R : Subalgebra O Ω) (L L' : AddSubgroup V) (h : L = L') (f : V → V) (hf : ∀ v, f v = v) :
    AddSubgroup.closure {v | ∃ a ∈ R, ∃ e ∈ L, v = a • e} = spanOver R (f '' (L' : Set V)) := by
  obtain rfl : f = id := funext hf
  rw [h, Set.image_id]
  rfl

end PositivityTheory.Xgn.A_fam_pull

theorem PositivityTheory.Xgn.t_fam_pull : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω), Function.Injective (algebraMap O Ω) → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → ∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω), IsLatticeFamily O (joinCoord x z) p w χ φ (pullFamily O x z D) ∧ ((∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg (joinCoord x z) c ≠ 0 → (pullFamily O x z D c).Good₁ (chartRing O (mseg (joinCoord x z)) c) p (fun τ a => algebraMap O Ω (χ τ a))) ∧ ((∀ c, mseg x c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg x) c) _) ≤ (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a))) → (∀ c, mseg (joinCoord x z) c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg (joinCoord x z)) c) _) ≤ (pullFamily O x z D c).af (chartRing O (mseg (joinCoord x z)) c) p (fun a => algebraMap O Ω (χ τ a))) ∧ ((∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg (joinCoord x z) c ≠ 0 → (pullFamily O x z D c).Good₂ (chartRing O (mseg (joinCoord x z)) c) p (fun τ a => algebraMap O Ω (χ τ a))))) ∧ ((∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i) → (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O (joinCoord x z) u a fun c => (pullFamily O x z D c).xId (fun a => algebraMap O Ω (χ τ a)) i))) ∧ ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → ∃ (Lie' W' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (r τ) (Fin (r τ) → Ω)) (Om' OmHT' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (s τ) (Fin (s τ) → Ω)), HasBundles O (joinCoord x z) (pullFamily O x z D) Lie' W' Om' OmHT' ∧ ∀ τ, IsPull O x z (Lie τ) (Lie' τ) ∧ IsPull O x z (W τ) (W' τ) ∧ IsPull O x z (Om τ) (Om' τ) ∧ IsPull O x z (OmHT τ) (OmHT' τ) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x hinj F _ _ _ n Sg _ r s p hp w χ φ D hD K' _ _ ι' _ z
  have hc := ((PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).2
  have hcd := PositivityTheory.Xgn.A_fam_pull.charData hinj p hp w χ hD.char
  refine ⟨⟨?_, fun τ => ?_, hD.char, fun c h => ?_, fun c h => ?_⟩, fun h1 => ⟨fun c h => ?_, fun haf =>
    ⟨fun c h τ => ?_, fun h2 c h => ?_⟩, fun hl τ i => ?_⟩, fun Lie W Om OmHT hB => ?_⟩
  · exact PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ hD.famM _ (fun _ => rfl)
  · obtain ⟨a1, a2, a3, a4, a5, a6, a7⟩ := hD.fam τ
    exact ⟨PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a1 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a2 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a3 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a4 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a5 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a6 _ (fun _ => rfl),
      PositivityTheory.Xgn.A_fam_pull.latFamily_join x z _ a7 _ (fun _ => rfl)⟩
  · exact (_root_.GlobalTheory.CompanionTheory.Ar.Num.lattice_base_change_larger_ring (D (restrictChart c)) _ p _ _ (hcd _) (hD.base _ (hc c h).1) Ω _
      (fun a ha => (hc c h).2 ha)).2
  · exact PositivityTheory.Xgn.test_facts_base_change (D (restrictChart c)) _ _ (hc c h).2 p _ _ φ (hD.test _ (hc c h).1)
  · exact ((PositivityTheory.Xgn.good_lattice_base_change (D (restrictChart c)) _ p _ _ (hcd _) (hD.base _ (hc c h).1)
      (h1 _ (hc c h).1)).2 Ω _ (fun a ha => (hc c h).2 ha)).1
  · have e := ((((PositivityTheory.Xgn.good_lattice_base_change (D (restrictChart c)) _ p _ _ (hcd _) (hD.base _ (hc c h).1)
      (h1 _ (hc c h).1)).2 Ω _ (fun a ha => (hc c h).2 ha)).2 τ).1)
    exact (PositivityTheory.Xgn.A_fam_pull.mul_std_le _ _ _ _ (haf _ (hc c h).1 τ)).trans e.ge
  · exact ((_root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.main (D (restrictChart c)) _ p _ _ (hcd _) (hD.base _ (hc c h).1)
      (h1 _ (hc c h).1) (h2 _ (hc c h).1) (haf _ (hc c h).1)).2 Ω _ (fun a ha => (hc c h).2 ha)).1
  · obtain ⟨u, a, hu, hA⟩ := hl τ i
    refine ⟨u, pullDeg (K' := K') a, hu, fun c h v => ?_⟩
    refine PositivityTheory.Xgn.A_pull_line.main (AlgHom.id O Ω) x z u a _ hA
      (fun c => (pullFamily O x z D c).xId (fun a => algebraMap O Ω (χ τ a)) i) (fun c h => ?_) c h v
    have e := ((((PositivityTheory.Xgn.good_lattice_base_change (D (restrictChart c)) _ p _ _ (hcd _) (hD.base _ (hc c h).1)
      (h1 _ (hc c h).1)).2 Ω _ (fun a ha => (hc c h).2 ha)).2 τ).2.2 i)
    exact e.trans (PositivityTheory.Xgn.A_fam_pull.span_eq _ _ _ rfl _ (fun _ => rfl)).symm
  · choose Lie' hLie using fun τ => (GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x _ _ (Lie τ)).1 K' ι' z
    choose W' hW using fun τ => (GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x _ _ (W τ)).1 K' ι' z
    choose Om' hOm using fun τ => (GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x _ _ (Om τ)).1 K' ι' z
    choose OmHT' hOmHT using fun τ => (GlobalTheory.CompanionTheory.Ar.Num.PullExists.main O Ω K ι x _ _ (OmHT τ)).1 K' ι' z
    refine ⟨Lie', W', Om', OmHT', fun τ c h => ?_, fun τ => ⟨hLie τ, hW τ, hOm τ, hOmHT τ⟩⟩
    obtain ⟨b1, b2, b3, b4⟩ := hB τ _ (hc c h).1
    exact ⟨(hLie τ c h).trans (PositivityTheory.Xgn.A_fam_pull.span_eq _ _ _ b1 _ (fun _ => rfl)),
      (hW τ c h).trans (PositivityTheory.Xgn.A_fam_pull.span_eq _ _ _ b2 _ (fun _ => rfl)),
      (hOm τ c h).trans (PositivityTheory.Xgn.A_fam_pull.span_eq _ _ _ b3 _ (fun _ => rfl)),
      (hOmHT τ c h).trans (PositivityTheory.Xgn.A_fam_pull.span_eq _ _ _ b4 _ (fun _ => rfl))⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamPull =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModel", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamPull\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Objects\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FamPull

alias main := _root_.PositivityTheory.Xgn.t_fam_pull

end GlobalTheory.CompanionTheory.Ar.FamPull
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModel =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenLines =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenLines", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCoherentGens\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_join_model\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace PositivityTheory.Xgn.A_flatten_lines

theorem span_line {O Ω : Type} [CommRing O] [Field Ω] [Algebra O Ω] (R R' : Subalgebra O Ω) (hle : R ≤ R')
    {M : ℕ} (v : Fin M → Ω) (m : Ω) (l₀ : Fin M) (h0 : v l₀ ≠ 0) (hq : ∀ l, v l / v l₀ ∈ R') (w : Ω) :
    w ∈ spanOver R' (spanOver R (Set.range fun l => m • v l) : Set Ω) ↔ ∃ r ∈ R', w = r * (m * v l₀) := by
  let L : AddSubgroup Ω :=
    { carrier := {w | ∃ r ∈ R', w = r * (m * v l₀)}
      add_mem' := by
        rintro _ _ ⟨r, hr, rfl⟩ ⟨s, hs, rfl⟩
        exact ⟨r + s, R'.add_mem hr hs, by ring⟩
      zero_mem' := ⟨0, R'.zero_mem, by simp⟩
      neg_mem' := by
        rintro _ ⟨r, hr, rfl⟩
        exact ⟨-r, R'.neg_mem hr, by ring⟩ }
  have hin : spanOver R (Set.range fun l => m • v l) ≤ L := by
    unfold spanOver
    rw [AddSubgroup.closure_le]
    rintro _ ⟨a, ha, e, ⟨l, rfl⟩, rfl⟩
    refine ⟨a * (v l / v l₀), R'.mul_mem (hle ha) (hq l), ?_⟩
    simp only [smul_eq_mul]
    field_simp
  have hout : spanOver R' (spanOver R (Set.range fun l => m • v l) : Set Ω) ≤ L := by
    unfold spanOver
    rw [AddSubgroup.closure_le]
    rintro _ ⟨a, ha, e, he, rfl⟩
    obtain ⟨r, hr, rfl⟩ := hin he
    exact ⟨a * r, R'.mul_mem ha hr, by simp only [smul_eq_mul]; ring⟩
  constructor
  · intro hw
    exact hout hw
  · rintro ⟨r, hr, rfl⟩
    have hm : m • v l₀ ∈ spanOver R (Set.range fun l => m • v l) :=
      AddSubgroup.subset_closure ⟨1, R.one_mem, m • v l₀, ⟨l₀, rfl⟩, by simp⟩
    exact AddSubgroup.subset_closure ⟨r, hr, m • v l₀, hm, by simp⟩

theorem chartMon_join {Ω : Type} [Field Ω] {K K' : Type} [Fintype K] [Fintype K'] [DecidableEq K']
    {ι : K → Type} {ι' : K' → Type} (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω)
    (c : ∀ k : K ⊕ K', Sum.elim ι ι' k) (a : K → ℤ) (j : K') :
    chartMon (joinCoord x z) c (Sum.elim (-a) (Pi.single j 1)) =
      (chartMon x (restrictChart c) a)⁻¹ * z ⟨j, c (.inr j)⟩ := by
  unfold chartMon restrictChart
  rw [Fintype.prod_sum_type]
  simp only [joinCoord, Sum.elim_inl, Sum.elim_inr, Pi.neg_apply, zpow_neg, Finset.prod_inv_distrib]
  congr 1
  rw [Finset.prod_eq_single j]
  · simp
  · intro b _ hb
    simp [hb]
  · intro h
    exact absurd (Finset.mem_univ j) h

end PositivityTheory.Xgn.A_flatten_lines

theorem PositivityTheory.Xgn.t_flatten_lines : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∀ (I : Type) [Fintype I] (Γ : I → (∀ k, ι k) → AddSubgroup Ω), (∀ j, IsLatFamily O x (Γ j) ∧ ∀ c, mseg x c ≠ 0 → Γ j c ≠ ⊥ ∧ ∃ S : Finset Ω, Γ j c = spanOver (chartRing O (mseg x) c) (S : Set Ω)) → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ ∀ j, ∃ a : K ⊕ K' → ℤ, IsLine O (joinCoord x z) 1 a fun c => spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ j (restrictChart c) : Set Ω) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hmod hfn I _ Γ hΓ
  classical
  obtain ⟨_, hx0, _, _⟩ := (PositivityTheory.Xgn.A_join_model.isModelOver_iff x d).mp hmod
  choose c0 hc0 using hx0
  have hm0 : mseg x c0 ≠ 0 := by
    unfold mseg
    exact Finset.prod_ne_zero_iff.mpr fun k _ => hc0 k
  have key : ∀ j, ∃ (a : K → ℤ) (M : ℕ) (v : Fin M → Ω), ∀ c, mseg x c ≠ 0 →
      Γ j c = spanOver (chartRing O (mseg x) c) (Set.range fun l => (chartMon x c a)⁻¹ • v l) := by
    intro j
    obtain ⟨a₁, ha₁⟩ := PositivityTheory.Xgn.t_coherent_gens O Ω K ι x Ω (Γ j) (hΓ j).1
      (fun c hc => ((hΓ j).2 c hc).2)
    obtain ⟨M, v, hv⟩ := ha₁ a₁ le_rfl
    exact ⟨a₁, M, v, hv⟩
  choose a M v hv using key
  have hnz : ∀ j, ∃ l, v j l ≠ 0 := by
    intro j
    by_contra hall
    push_neg at hall
    apply ((hΓ j).2 c0 hm0).1
    rw [hv j c0 hm0, eq_bot_iff]
    unfold spanOver
    rw [AddSubgroup.closure_le]
    rintro _ ⟨r, _, e, ⟨l, rfl⟩, rfl⟩
    simp [hall l]
  let z : (Σ j : I, Fin (M j)) → Ω := fun p => v p.1 p.2
  have hJ := (PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 I (fun j => Fin (M j)) z
  refine ⟨I, inferInstance, inferInstance, fun j => Fin (M j), fun _ => inferInstance, z, ?_, ?_⟩
  · have hmodJ := PositivityTheory.Xgn.t_join_model O Ω K ι x d 0 hmod I (fun j => Fin (M j)) z hnz
      Fin.elim0 algebraicIndependent_empty_type (fun i => Fin.elim0 i) ?_
    · convert hmodJ
    · intro w _
      have hw : w ∈ fnField O x := by
        rw [hfn]
        exact Subfield.mem_top w
      exact isAlgebraic_algebraMap
        (⟨w, IntermediateField.algebraMap_mem _ (⟨w, hw⟩ : fnField O x)⟩ :
          IntermediateField.adjoin (fnField O x) (Set.range (Fin.elim0 : Fin 0 → Ω)))
  · intro j
    refine ⟨Sum.elim (-a j) (Pi.single j 1), ?_⟩
    intro c hc w
    obtain ⟨hrc, hle⟩ := hJ.2 c hc
    have hmz := PositivityTheory.Xgn.A_chart_noeth_frac.mseg_join x z c
    have hz0 : z ⟨j, c (Sum.inr j)⟩ ≠ 0 := by
      rw [hmz] at hc
      have h2 := right_ne_zero_of_mul hc
      unfold mseg at h2
      exact Finset.prod_ne_zero_iff.mp h2 j (Finset.mem_univ _)
    show w ∈ spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ j (restrictChart c) : Set Ω) ↔ _
    rw [hv j _ hrc, one_mul, PositivityTheory.Xgn.A_flatten_lines.chartMon_join]
    refine PositivityTheory.Xgn.A_flatten_lines.span_line _ _ hle _ _ (c (Sum.inr j)) hz0 ?_ w
    intro l
    have h := PositivityTheory.Xgn.A_chart_noeth_frac.ratio_eq (joinCoord x z) c hc (Sum.inr j) l
    have hmem : mseg (joinCoord x z) (Function.update c (Sum.inr j) l) / mseg (joinCoord x z) c ∈
        chartRing O (mseg (joinCoord x z)) c := Algebra.subset_adjoin ⟨_, rfl⟩
    rw [h] at hmem
    exact hmem
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenLines =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineLatticeFamilyModel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineLatticeFamilyModel", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenLines\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FlattenLines

alias main := _root_.PositivityTheory.Xgn.t_flatten_lines

end GlobalTheory.CompanionTheory.Ar.FlattenLines
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineLatticeFamilyModel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelChern =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelChern", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.HcptgenRing\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LineLatticeFamilyModel\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FamLines

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {V : Type} [AddCommGroup V] [Module Ω V]

theorem exists_finset {R : Subalgebra o Ω} {r : ℕ} {L : AddSubgroup V} (h : LocFree R r L) :
    ∃ S : Finset V, L = spanOver R (S : Set V) := by
  classical
  let L' : Submodule R V := { L with smul_mem' := fun a e he => h.1 a a.2 e he }
  obtain ⟨k, φ, v, hφ, hv⟩ := LocFreeProj.exists_dualBasis (L := L') (r := r) h
  refine ⟨Finset.univ.image fun i => (v i : V), le_antisymm (fun e he => ?_) ?_⟩
  · rw [← hv e]
    · refine sum_mem fun i _ => AddSubgroup.subset_closure ⟨φ i e, hφ i e he, v i, ?_, rfl⟩
      simp
  · refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨a, ha, e, he, rfl⟩
    simp only [Finset.coe_image, Finset.coe_univ, Set.image_univ, Set.mem_range] at he
    obtain ⟨i, rfl⟩ := he
    exact h.1 a ha _ (v i).2

theorem ne_bot {R : Subalgebra o Ω} {L : AddSubgroup V} (h : LocFree R 1 L) : L ≠ ⊥ := by
  obtain ⟨-, k, f, c, -, -, hs, hb⟩ := h
  have hex : ∃ l, f l ≠ 0 := by
    by_contra hn
    push Not at hn
    simp [hn] at hs
  obtain ⟨l, hl⟩ := hex
  obtain ⟨b, hli, -, hb⟩ := hb l
  obtain ⟨m, hm⟩ := (hb (b 0)).2 ⟨fun _ => 1, fun _ => ⟨0, by simp⟩, by simp⟩
  rintro rfl
  exact smul_ne_zero (pow_ne_zero m hl) (hli.ne_zero 0) (AddSubgroup.mem_bot.1 hm)

theorem injective {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O Ω]
    {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)] {x : (Σ k, ι k) → Ω} {d : ℕ}
    (h : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) :
    Function.Injective (algebraMap O Ω) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro a ha
  have h1 : a ∈ (mcIdeal O x).comap (C : O →+* _) := by
    rw [Ideal.mem_comap, mcIdeal, RingHom.mem_ker]
    change GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap O x (algebraMap O _ a) = 0
    rw [AlgHom.commutes, MvPolynomial.algebraMap_apply, ha, map_zero]
  rw [h.2.2.1] at h1
  exact h1

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O (joinCoord x z) u a fun c => (pullFamily O x z D c).xId (fun a => algebraMap O Ω (χ τ a)) i) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hx hfn F _ _ _ n Sg _ r s p hp w χ φ D hD hG
  have hinj := injective hx
  have hchar : ∀ R : Subalgebra O Ω,
      CharData R p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) := by
    intro R
    obtain ⟨hp0, ⟨u, hu, huw⟩, -, h01, hχ⟩ := hD.char
    refine ⟨?_, R.algebraMap_mem _, ?_, h01, fun τ => ⟨?_, ?_, fun a => R.algebraMap_mem _⟩⟩
    · rw [← map_natCast (algebraMap O Ω)]
      exact fun h => hp0 (hinj (h.trans (map_zero _).symm))
    · obtain ⟨u, rfl⟩ := hu
      refine ⟨algebraMap O Ω (↑u⁻¹ * w ^ (p - 2)), R.algebraMap_mem _, ?_⟩
      rw [← map_mul, ← map_natCast (algebraMap O Ω), mul_assoc, ← pow_succ,
        show p - 2 + 1 = p - 1 by have := hp.two_le; omega, huw, Units.inv_mul_cancel_left]
    · simp [(hχ τ).1]
    · simp [(hχ τ).2]
  have hbc := fun c (hc : mseg x c ≠ 0) =>
    _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main (D c) (chartRing O (mseg x) c) p _ _ (hchar _) (hD.base c hc) (hG c hc)
  have hfam := (_root_.GlobalTheory.CompanionTheory.Ar.Num.FamConstr.main O Ω K ι x hinj p hp w χ φ D hD).2
  obtain ⟨K', i1, i2, ι', i3, z, hz, hl⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlattenLines.main O Ω K ι x d hx hfn (Sg × Fin n)
    (fun j c => (D c).xId (fun a => algebraMap O Ω (χ j.1 a)) j.2) fun j =>
      ⟨((hfam j.1).2.1 j.2).1, fun c hc =>
        ⟨ne_bot (((hbc c hc).1 j.1).2.2.2 j.2),
          exists_finset (((hbc c hc).1 j.1).2.2.2 j.2)⟩⟩
  refine ⟨K', i1, i2, ι', i3, z, hz, fun τ i => ?_⟩
  obtain ⟨a, ha⟩ := hl (τ, i)
  refine ⟨1, a, one_ne_zero, fun c hc v => ?_⟩
  obtain ⟨hc', hle⟩ := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).2 c hc
  have h := (((hbc _ hc').2 Ω (chartRing O (mseg (joinCoord x z)) c) fun a ha => hle ha).2 τ).2.2 i
  rw [← ha c hc v]
  simp only [Algebra.algebraMap_self, RingHom.id_apply, Set.image_id'] at h
  simp only [pullFamily, h]

end GlobalTheory.CompanionTheory.Ar.FamLines
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelChern =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelBundles =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelBundles", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenMany\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FlattenMany

alias main := _root_.PositivityTheory.Xgn.t_flatten_many

end GlobalTheory.CompanionTheory.Ar.FlattenMany
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelBundles =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.SmulMemSpan =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.SmulMemSpan", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.TrivFlagMod\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelBundles\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.KernelLatticeBaseChange\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFamConstr\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeFiniteProjectiveBaseChange\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XDotdualBc\nimport Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSummandOfQuot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModelFacts\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace PositivityTheory.Xgn.A_fam_good2

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]
variable {V W : Type} [AddCommGroup V] [Module Ω V] [AddCommGroup W] [Module Ω W]

theorem spanOver_eq (R : Subalgebra o Ω) (S : Set V) :
    spanOver R S = (Submodule.span R S).toAddSubgroup := by
  apply le_antisymm
  · refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨a, ha, e, he, rfl⟩
    exact (Submodule.span R S).smul_mem ⟨a, ha⟩ (Submodule.subset_span he)
  · intro v hv
    change v ∈ Submodule.span R S at hv
    induction hv using Submodule.span_induction with
    | mem y hy => exact AddSubgroup.subset_closure ⟨1, one_mem _, y, hy, (one_smul _ _).symm⟩
    | zero => exact zero_mem _
    | add y w _ _ hy hw => exact add_mem hy hw
    | smul a y _ hy => exact GlobalTheory.CompanionTheory.Ar.Num.FamConstr.smul_mem_span R S a.2 hy

theorem map_spanOver (R : Subalgebra o Ω) (S : Set V) (f : V →ₗ[Ω] W) :
    (spanOver R S).map f.toAddMonoidHom = spanOver R (f '' S) := by
  rw [spanOver, spanOver, AddMonoidHom.map_closure]
  congr 1
  ext v
  constructor
  · rintro ⟨_, ⟨a, ha, e, he, rfl⟩, rfl⟩
    exact ⟨a, ha, _, ⟨e, he, rfl⟩, f.map_smul a e⟩
  · rintro ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩
    exact ⟨_, ⟨a, ha, e, he, rfl⟩, f.map_smul a e⟩

theorem bc_self {J : Type} (S : Set (J → Ω)) : bcMap Ω Ω J '' S = S := Set.image_id S

theorem bc_self_prod {J : Type} (S : Set (Ω × (J → Ω))) :
    Prod.map (algebraMap Ω Ω) (bcMap Ω Ω J) '' S = S := Set.image_id S

theorem gens (R : Subalgebra o Ω) (hR : IsNoetherianRing R) {N : ℕ} {L₀ : AddSubgroup V}
    (h₀ : LocFree R N L₀) (f : V →ₗ[Ω] W) (hf : Function.Surjective f) (L : AddSubgroup W)
    (hst : ∀ a ∈ R, ∀ v ∈ L, a • v ∈ L) (hle : ∀ v ∈ L, ∃ e ∈ L₀, f e = v) {b : Ω} (hb : b ≠ 0)
    (hge : ∀ e ∈ L₀, b • f e ∈ L) :
    ∃ S : Finset W, L = spanOver R (S : Set W) ∧ Submodule.span Ω (S : Set W) = ⊤ := by
  classical
  let L₀' : Submodule R V := { L₀ with smul_mem' := fun a e he => h₀.1 a a.2 e he }
  let L' : Submodule R W := { L with smul_mem' := fun a e he => hst a a.2 e he }
  obtain ⟨k, φ, v, hφ, hv⟩ := LocFreeProj.exists_dualBasis (L := L₀') (r := N) h₀
  have hfg : (Submodule.span R (Set.range fun i => f (v i))).FG :=
    Submodule.fg_span (Set.finite_range _)
  have hL : L' ≤ Submodule.span R (Set.range fun i => f (v i)) := by
    intro y hy
    obtain ⟨e, he, rfl⟩ := hle y hy

    rw [← hv e, map_sum]
    refine sum_mem fun i _ => ?_
    rw [map_smul]
    exact Submodule.smul_mem _ (⟨φ i e, hφ i e he⟩ : R) (Submodule.subset_span ⟨i, rfl⟩)
  obtain ⟨S, hS⟩ : L'.FG := hfg.of_le hL
  refine ⟨S, ?_, ?_⟩
  · rw [spanOver_eq, hS]
  · rw [eq_top_iff]
    intro y _
    obtain ⟨e, rfl⟩ := hf y

    rw [← hv e, map_sum]
    refine sum_mem fun i _ => ?_
    rw [map_smul]
    refine Submodule.smul_mem _ _ ?_
    have h1 : b • f (v i) ∈ L' := hge _ (v i).2
    rw [← hS] at h1
    have h2 := Submodule.smul_mem _ b⁻¹ (Submodule.span_le_restrictScalars R Ω _ h1 :
      b • f (v i) ∈ Submodule.span Ω (S : Set W))
    rwa [inv_smul_smul₀ hb] at h2

theorem annSub_min (n i : ℕ) : annSub Ω n (min i n) = annSub Ω n i := by
  unfold annSub
  congr 1
  ext j
  have := j.2
  simp only [Set.mem_setOf_eq]
  omega

theorem vanSub_min (F : Type) [Zero F] (n i : ℕ) : vanSub Ω F n (min i n) = vanSub Ω F n i := by
  unfold vanSub
  congr 1
  ext x
  refine forall_congr' fun j => ?_
  have := j.2
  have : min i n ≤ (j : ℕ) ↔ i ≤ (j : ℕ) := by omega
  rw [this]

theorem kk_min {F : Type} [Zero F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (τ : Sg)
    (i : ℕ) : D.kk τ (min i n) = D.kk τ i := by
  rw [LieLatticeData.kk, LieLatticeData.kk, vanSub_min]

theorem injective {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [Algebra O Ω]
    {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)] {x : (Σ k, ι k) → Ω} {d : ℕ}
    (h : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) :
    Function.Injective (algebraMap O Ω) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro a ha
  have h1 : a ∈ (mcIdeal O x).comap (C : O →+* _) := by
    rw [Ideal.mem_comap, mcIdeal, RingHom.mem_ker]
    change GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap O x (algebraMap O _ a) = 0
    rw [AlgHom.commutes, MvPolynomial.algebraMap_apply, ha, map_zero]
  rw [h.2.2.1] at h1
  exact h1

theorem charData {O : Type} [CommRing O] [Algebra O Ω]
    (hinj : Function.Injective (algebraMap O Ω)) {F : Type} [Zero F] [One F] {Sg : Type} (p : ℕ)
    (hp : p.Prime) (w : O) (χ : Sg → F → O)
    (h : (p : O) ≠ 0 ∧ (∃ u : O, IsUnit u ∧ w ^ (p - 1) = u * (p : O)) ∧ ¬ IsUnit (p : O) ∧ (0 : F) ≠ 1 ∧
      ∀ τ, χ τ 0 = 0 ∧ χ τ 1 = 1) (R : Subalgebra O Ω) :
    CharData R p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) := by
  obtain ⟨h0, ⟨u, hu, hw⟩, -, h01, hχ⟩ := h
  obtain ⟨u, rfl⟩ := hu
  refine ⟨?_, R.algebraMap_mem _, ⟨algebraMap O Ω ((u⁻¹ : Oˣ) * w ^ (p - 2)), R.algebraMap_mem _, ?_⟩, h01,
    fun τ => ⟨?_, ?_, fun a => R.algebraMap_mem _⟩⟩
  · rw [← map_natCast (algebraMap O Ω)]
    exact (map_ne_zero_iff _ hinj).2 h0
  · have h2 : p - 1 = p - 2 + 1 := by have := hp.two_le; omega
    rw [← map_mul, mul_assoc, ← pow_succ, ← h2, hw, Units.inv_mul_cancel_left, map_natCast]
  · simp only [(hχ τ).1, map_zero]
  · simp only [(hχ τ).2, map_one]

section Point

variable {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ}
  (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (hR : IsNoetherianRing R) (p : ℕ) (w : Ω)
  (χ : Sg → F → Ω) (hχ : CharData R p w χ) (hB : D.Base R p w)

include hR hχ hB

theorem gens_dual (τ : Sg) (L : AddSubgroup (Fin (r τ) → Ω)) (hst : ∀ a ∈ R, ∀ v ∈ L, a • v ∈ L)
    (hle : ∀ m ∈ L, ∃ g, (g, m) ∈ D.Th τ) (hge : ∀ m, (0, m) ∈ D.Th τ → m ∈ L) :
    ∃ S : Finset (Fin (r τ) → Ω), L = spanOver R (S : Set (Fin (r τ) → Ω)) ∧ Submodule.span Ω (S : Set (Fin (r τ) → Ω)) = ⊤ :=
  gens R hR (PositivityTheory.Xgn.t_dotdual_bc R R (fun _ h => h) _ _ (hB.free τ).1).1 LinearMap.id
    Function.surjective_id L hst (fun m hm => ⟨m, ((hB.th τ).2.1 m).1 (hle m hm), rfl⟩) hχ.1
    fun e he => hge _ (((hB.th τ).2.2 _).2 ⟨e, he, rfl⟩)

theorem gens_kk (τ : Sg) (i : ℕ) (hst : ∀ a ∈ R, ∀ v ∈ D.kk τ i, a • v ∈ D.kk τ i) :
    ∃ S : Finset (Fin (r τ) → Ω), D.kk τ i = spanOver R (S : Set (Fin (r τ) → Ω)) ∧ Submodule.span Ω (S : Set (Fin (r τ) → Ω)) = ⊤ := by
  refine gens_dual D R hR p w χ hχ hB τ _ hst ?_ fun m hm => ⟨(0, m), ⟨hm, zero_mem _, trivial⟩, rfl⟩
  rintro _ ⟨v, hv, rfl⟩
  exact ⟨v.1, hv.1⟩

theorem gens_step (τ : Sg) (i : Fin n)
    (hst : ∀ a ∈ R, ∀ v ∈ (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _),
      a • v ∈ (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _)) :
    ∃ S : Finset (Fin (r τ) → Ω), (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _) =
      spanOver R (S : Set (Fin (r τ) → Ω)) ∧ Submodule.span Ω (S : Set (Fin (r τ) → Ω)) = ⊤ := by
  refine gens_dual D R hR p w χ hχ hB τ _ hst ?_ fun m hm => ⟨(0, m), ?_, rfl⟩
  · rintro _ ⟨v, hv, rfl⟩
    obtain ⟨y, hy, z, hz, h⟩ := AddSubgroup.mem_sup.1 (AddSubgroup.mem_comap.1 hv)
    have h2 : y.2 + z.2 = v.2 := congrArg Prod.snd h
    have h3 : z.2 = 0 := hz.2
    rw [h3, add_zero] at h2
    refine ⟨y.1, ?_⟩
    change (y.1, v.2) ∈ _
    rw [← h2]
    exact hy
  · refine AddSubgroup.mem_comap.2 (AddSubgroup.mem_sup_left ?_)
    simpa using hm

theorem gens_im (τ : Sg) (hst : ∀ a ∈ R, ∀ v ∈ D.imH R p τ (χ τ), a • v ∈ D.imH R p τ (χ τ)) :
    ∃ S : Finset (Fin (s τ) → Ω), D.imH R p τ (χ τ) = spanOver R (S : Set (Fin (s τ) → Ω)) ∧
      Submodule.span Ω (S : Set (Fin (s τ) → Ω)) = ⊤ := by
  have hw : w ≠ 0 := by
    obtain ⟨hp, -, ⟨c, -, hc⟩, -⟩ := hχ
    rintro rfl
    exact hp (by simpa using hc)
  refine gens R hR (hB.free τ).2.2.2 (w⁻¹ • LinearMap.id) (fun v => ⟨w • v, inv_smul_smul₀ hw v⟩) _ hst
    ?_ hw fun e he => ?_
  · rintro _ ⟨v, hv, rfl⟩
    exact ⟨w • v.2, ((hB.del τ).2.1 _).1 ⟨v.1, hv.1⟩, inv_smul_smul₀ hw _⟩
  · exact ⟨(0, e), ⟨((hB.del τ).2.2.1 e).2 he, zero_mem _, trivial⟩, (smul_inv_smul₀ hw e).symm⟩

end Point

end PositivityTheory.Xgn.A_fam_good2

open PositivityTheory.Xgn.A_fam_good2 in
theorem PositivityTheory.Xgn.t_fam_good2 : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))) → (∀ c, mseg x c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg x) c) _) ≤ (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a))) → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ (∀ c, mseg (joinCoord x z) c ≠ 0 → (pullFamily O x z D c).Good₂ (chartRing O (mseg (joinCoord x z)) c) p (fun τ a => algebraMap O Ω (χ τ a))) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hx hfn F _ _ _ n Sg _ r s p hp w χ φ D hD hG haf
  classical
  have hinj := injective hx
  obtain ⟨hno, -, hch⟩ := PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x
  have hχ := charData hinj p hp w χ hD.char
  have hfam := (PositivityTheory.Xgn.t_fam_constr O Ω K ι x hinj p hp w χ φ D hD).2
  have hfr := fun c hc τ => ((_root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main (D c) _ p _ _ (hχ _) (hD.base c hc) (hG c hc)).1 τ).1
  let I : Type := Sg ⊕ (Sg × Fin (n + 1)) ⊕ (Sg × Fin (n + 1)) ⊕ (Sg × Fin n) ⊕ Sg
  let M : I → ModuleCat.{0} Ω := fun j => match j with
    | .inl _ => ModuleCat.of Ω (Fin n → Ω)
    | .inr (.inl q) => ModuleCat.of Ω ((Fin n → Ω) ⧸ annSub Ω n q.2)
    | .inr (.inr (.inl q)) => ModuleCat.of Ω (Fin (r q.1) → Ω)
    | .inr (.inr (.inr (.inl q))) => ModuleCat.of Ω (Fin (r q.1) → Ω)
    | .inr (.inr (.inr (.inr τ))) => ModuleCat.of Ω (Fin (s τ) → Ω)
  let Γ : ∀ j, (∀ k, ι k) → AddSubgroup (M j) := fun j => match j with
    | .inl τ => fun c => (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a))
    | .inr (.inl q) => fun c => ((D c).af (chartRing O (mseg x) c) p
        (fun a => algebraMap O Ω (χ q.1 a))).map (annSub Ω n q.2).mkQ.toAddMonoidHom
    | .inr (.inr (.inl q)) => fun c => (D c).kk q.1 q.2
    | .inr (.inr (.inr (.inl q))) => fun c =>
        ((D c).stepGraph q.1 (fun a => algebraMap O Ω (χ q.1 a)) q.2).map (AddMonoidHom.snd _ _)
    | .inr (.inr (.inr (.inr τ))) => fun c =>
        (D c).imH (chartRing O (mseg x) c) p τ (fun a => algebraMap O Ω (χ τ a))
  obtain ⟨K', hK, hK', ι', hι', z, hz, hfree⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FlattenMany.main O Ω K ι x d hx hfn I
    (fun j => Module.finrank Ω (M j)) (fun j => M j) Γ (by
      rintro (τ | q | q | q | τ)
      · exact ⟨rfl, (hfam τ).1, fun c hc => gens _ (hno c) (hfr c hc τ) LinearMap.id Function.surjective_id
          _ (hfr c hc τ).1 (fun v hv => ⟨v, hv, rfl⟩) one_ne_zero fun e he => (one_smul Ω e).symm ▸ he⟩
      · have h := A_fam_constr.fam_map (hfam q.1).1 (annSub Ω n q.2).mkQ.toAddMonoidHom
          fun a v => (annSub Ω n q.2).mkQ.map_smul a v
        exact ⟨rfl, h, fun c hc => gens _ (hno c) (hfr c hc q.1) (annSub Ω n q.2).mkQ
          (Submodule.mkQ_surjective _) _ (h.1 c hc) (fun v hv => hv) one_ne_zero
          fun e he => ⟨e, he, (one_smul Ω _).symm⟩⟩
      · have h := (hfam q.1).2.2.1 q.2
        exact ⟨rfl, h, fun c hc => gens_kk (D c) _ (hno c) p _ _ (hχ _) (hD.base c hc) _ _ (h.1 c hc)⟩
      · have h := A_fam_constr.fam_map ((hfam q.1).2.1 q.2).2 (AddMonoidHom.snd _ _) fun a v => rfl
        exact ⟨rfl, h, fun c hc => gens_step (D c) _ (hno c) p _ _ (hχ _) (hD.base c hc) _ _ (h.1 c hc)⟩
      · have h := ((hfam τ).2.2.2.2 hG).2
        exact ⟨rfl, h, fun c hc => gens_im (D c) _ (hno c) p _ _ (hχ _) (hD.base c hc) _ (h.1 c hc)⟩)
  refine ⟨K', hK, hK', ι', hι', z, hz, fun c hc => ?_⟩
  obtain ⟨hc1, hle⟩ := (hch K' ι' z).2 c hc
  have hB := hD.base _ hc1
  have hG1 := hG _ hc1
  have e1 := fun τ => (((_root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main _ _ p _ _ (hχ _) hB hG1).2 Ω _ hle).2 τ).1
  have e2 := PositivityTheory.Xgn.kernel_lattice_base_change _ _ p _ _ (hχ _) hB hG1 Ω _ hle
  have e3 := PositivityTheory.Xgn.image_lattice_base_change _ _ p _ _ (hχ _) hB hG1 (haf _ hc1) Ω _ hle
  simp only [bc_self, bc_self_prod, Algebra.algebraMap_self_apply] at e1 e2 e3
  unfold pullFamily
  refine ⟨fun τ i => ?_, fun τ i => ?_, fun τ i => ?_, fun τ => ?_⟩
  · rw [e1, ← annSub_min]
    refine (PositivityTheory.Xgn.summand_iff_locFree_quot _ _ _ (Module.finrank Ω ((Fin n → Ω) ⧸ annSub Ω n (min i n))) _
      (hfree (.inl τ) c hc)).1 ?_
    rw [map_spanOver]
    exact hfree (.inr (.inl (τ, ⟨min i n, by omega⟩))) c hc
  · have h := hfree (.inr (.inr (.inl (τ, ⟨min i n, by omega⟩)))) c hc
    change LocFree _ (Module.finrank Ω (Fin (r τ) → Ω)) _ at h
    rw [Module.finrank_fin_fun] at h
    rw [← kk_min, (e2 τ).1]
    exact h
  · rw [(e2 τ).2]
    have h := hfree (.inr (.inr (.inr (.inl (τ, i))))) c hc
    have e := map_spanOver (chartRing O (mseg (joinCoord x z)) c)
      ((D (restrictChart c)).stepGraph τ (fun a => algebraMap O Ω (χ τ a)) i : Set _)
      (LinearMap.snd Ω Ω (Fin (r τ) → Ω))
    change LocFree _ (Module.finrank Ω (Fin (r τ) → Ω)) _ at h
    rw [Module.finrank_fin_fun] at h
    exact e.symm ▸ h
  · have h := hfree (.inr (.inr (.inr (.inr τ)))) c hc
    change LocFree _ (Module.finrank Ω (Fin (s τ) → Ω)) _ at h
    rw [Module.finrank_fin_fun] at h
    rw [e3]
    exact h
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.SmulMemSpan =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelComparison =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelComparison", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.SmulMemSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FamGood2

alias main := _root_.PositivityTheory.Xgn.t_fam_good2

end GlobalTheory.CompanionTheory.Ar.FamGood2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelComparison =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelFacts =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelFacts", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MemSpanOverOfMem\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XFlattenMany\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSummandOfQuot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.FamGood1

open GlobalTheory.CompanionTheory.Ar.Num.LocFreeBC

section Span

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] (R : Subalgebra o Ω)
  {E E' : Type} [AddCommGroup E] [Module Ω E] [AddCommGroup E'] [Module Ω E']

theorem span_le {S : Set E} {L : AddSubgroup E}
    (hL : ∀ a ∈ R, ∀ v ∈ L, a • v ∈ L) (hS : ∀ e ∈ S, e ∈ L) : spanOver R S ≤ L := by
  refine (AddSubgroup.closure_le _).2 ?_
  rintro _ ⟨a, ha, e, he, rfl⟩
  exact hL a ha e (hS e he)

theorem span_stable (S : Set E) : ∀ a ∈ R, ∀ v ∈ spanOver R S, a • v ∈ spanOver R S :=
  fun _ ha _ hv => smul_mem_spanOver R S ha hv

theorem span_self {L : AddSubgroup E} (hL : ∀ a ∈ R, ∀ v ∈ L, a • v ∈ L) :
    spanOver R (L : Set E) = L :=
  le_antisymm (span_le R hL fun _ h => h) fun _ h => mem_spanOver_of_mem R h

theorem map_span (f : E →ₗ[Ω] E') (S : Set E) :
    (spanOver R S).map f.toAddMonoidHom = spanOver R (f '' S) := by
  unfold spanOver
  rw [AddMonoidHom.map_closure]
  congr 1
  ext v
  constructor
  · rintro ⟨_, ⟨a, ha, e, he, rfl⟩, rfl⟩
    exact ⟨a, ha, f e, ⟨e, he, rfl⟩, by simp⟩
  · rintro ⟨a, ha, _, ⟨e, he, rfl⟩, rfl⟩
    exact ⟨a • e, ⟨a, ha, e, he, rfl⟩, by simp⟩

theorem sup_stable {A B : AddSubgroup E} (hA : ∀ a ∈ R, ∀ v ∈ A, a • v ∈ A)
    (hB : ∀ a ∈ R, ∀ v ∈ B, a • v ∈ B) : ∀ a ∈ R, ∀ v ∈ A ⊔ B, a • v ∈ A ⊔ B := by
  intro a ha v hv
  obtain ⟨y, hy, z, hz, rfl⟩ := AddSubgroup.mem_sup.1 hv
  rw [smul_add]
  exact AddSubgroup.add_mem_sup (hA a ha y hy) (hB a ha z hz)

theorem span_union (S T : Set E) : spanOver R (S ∪ T) = spanOver R S ⊔ spanOver R T := by
  apply le_antisymm
  · refine span_le R (sup_stable R (span_stable R S) (span_stable R T)) ?_
    rintro e (he | he)
    · exact AddSubgroup.mem_sup_left (mem_spanOver_of_mem R he)
    · exact AddSubgroup.mem_sup_right (mem_spanOver_of_mem R he)
  · exact sup_le (span_le R (span_stable R _) fun e he => mem_spanOver_of_mem R (Or.inl he))
      (span_le R (span_stable R _) fun e he => mem_spanOver_of_mem R (Or.inr he))

theorem span_span {R' : Subalgebra o Ω} (h : R ≤ R') (S : Set E) :
    spanOver R' (spanOver R S : Set E) = spanOver R' S := by
  apply le_antisymm
  · exact span_le R' (span_stable R' _) fun e he =>
      span_le R (fun a ha => span_stable R' S a (h ha)) (fun _ h => mem_spanOver_of_mem R' h) he
  · exact span_le R' (span_stable R' _) fun e he =>
      mem_spanOver_of_mem R' (mem_spanOver_of_mem R he)

theorem fg_of_locFree {r : ℕ} {L : AddSubgroup E} (h : LocFree R r L) :
    ∃ S : Finset E, L = spanOver R (S : Set E) ∧ Submodule.span Ω (S : Set E) = ⊤ := by
  classical
  obtain ⟨-, k, φ, v, hv, hφ, hs⟩ := PositivityTheory.Xgn.A_summand_of_quot.exists_dual R h
  refine ⟨Finset.univ.image v, le_antisymm (fun e he => ?_) (span_le R h.1 ?_), ?_⟩
  · rw [← hs e]
    exact sum_mem fun i _ => smul_mem_spanOver R _ (hφ i e he) (mem_spanOver_of_mem R (by simp))
  · intro e he
    simp only [Finset.coe_image, Finset.coe_univ, Set.image_univ] at he
    obtain ⟨i, rfl⟩ := he
    exact hv i
  · rw [eq_top_iff]
    intro e _
    rw [← hs e]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span (by simp))

theorem locFree_of_bot {r : ℕ} {L : AddSubgroup E} (hL : ∀ a ∈ R, ∀ v ∈ L, a • v ∈ L)
    (h : LocFree R r (L.map (⊥ : Submodule Ω E).mkQ.toAddMonoidHom)) : LocFree R r L := by
  let e := Submodule.quotEquivOfEqBot (⊥ : Submodule Ω E) rfl
  have := locFree_baseChange R R (fun a ha => ha) e.toLinearMap (IsBaseChange.ofEquiv e) r _ h
  have h2 : (e.toLinearMap '' (L.map (⊥ : Submodule Ω E).mkQ.toAddMonoidHom : Set _)) = (L : Set E) := by
    ext v
    constructor
    · rintro ⟨_, ⟨w, hw, rfl⟩, rfl⟩
      simpa [e] using hw
    · intro hv
      exact ⟨_, ⟨v, hv, rfl⟩, by simp [e]⟩
  rwa [h2, span_self R hL] at this

theorem mulLat_std (c : Ω) (J : Type) [Fintype J] [DecidableEq J] :
    mulLat c (stdLat R J) = spanOver R (Set.range fun j : J => (Pi.single j c : J → Ω)) := by
  apply le_antisymm
  · rintro _ ⟨v, hv, rfl⟩
    have : (DistribSMul.toAddMonoidHom (J → Ω) c) v = ∑ j, v j • (Pi.single j c : J → Ω) := by
      ext j
      simp [Finset.sum_apply, Pi.single_apply, mul_comm]
    rw [this]
    exact sum_mem fun j _ => smul_mem_spanOver R _ (hv j (Set.mem_univ j))
      (mem_spanOver_of_mem R ⟨j, rfl⟩)
  · refine span_le R ?_ ?_
    · rintro a ha _ ⟨v, hv, rfl⟩
      refine ⟨a • v, fun j _ => R.mul_mem ha (hv j (Set.mem_univ j)), ?_⟩
      simp [smul_comm a c]
    · rintro _ ⟨j, rfl⟩
      refine ⟨Pi.single j 1, fun i _ => ?_, ?_⟩
      · by_cases h : i = j
        · subst h; simpa using R.one_mem
        · simpa [h] using R.zero_mem
      · ext i
        simp [Pi.single_apply]

end Span

section Fam

variable (O : Type) [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
  {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω)
  {E E' : Type} [AddCommGroup E] [Module Ω E] [AddCommGroup E'] [Module Ω E']

theorem chart_trans {s t : ∀ k, ι k} (hs : mseg x s ≠ 0) {a : Ω} (ha : a ∈ chartRing O (mseg x) s) :
    ∃ m : ℕ, (mseg x s / mseg x t) ^ m * a ∈ chartRing O (mseg x) t := by
  have hf : mseg x s / mseg x t ∈ chartRing O (mseg x) t :=
    ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _
  unfold chartRing at ha
  induction ha using Algebra.adjoin_induction with
  | mem y hy =>
    obtain ⟨u, rfl⟩ := hy
    refine ⟨1, ?_⟩
    have : (mseg x s / mseg x t) ^ 1 * (mseg x u / mseg x s) = mseg x u / mseg x t := by
      rw [pow_one, mul_comm, div_mul_div_cancel₀ hs]
    beta_reduce
    rw [this]
    exact ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _
  | algebraMap r => exact ⟨0, by simpa using Subalgebra.algebraMap_mem _ r⟩
  | add a b _ _ ha hb => exact frac_add _ hf ha hb
  | mul a b _ _ ha hb =>
    obtain ⟨m, hm⟩ := ha
    obtain ⟨n, hn⟩ := hb
    refine ⟨m + n, ?_⟩
    have := Subalgebra.mul_mem _ hm hn
    convert this using 1
    ring

theorem fam_span (S : Set E) : IsLatFamily O x fun c => spanOver (chartRing O (mseg x) c) S := by
  refine ⟨fun s _ => span_stable _ S, fun s t hs _ v hv => ?_⟩
  have hf : mseg x s / mseg x t ∈ chartRing O (mseg x) t :=
    ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _
  induction hv using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨a, ha, e, he, rfl⟩ := hy
    obtain ⟨m, hm⟩ := chart_trans O x (t := t) hs ha
    exact ⟨m, by rw [smul_smul]; exact smul_mem_spanOver _ _ hm (mem_spanOver_of_mem _ he)⟩
  | zero => exact ⟨0, by simp⟩
  | add a b _ _ ha hb => exact loc_add _ _ (span_stable _ S) hf ha hb
  | neg a _ ha =>
    obtain ⟨m, hm⟩ := ha
    exact ⟨m, by rw [smul_neg]; exact neg_mem hm⟩

theorem fam_sup {A B : (∀ k, ι k) → AddSubgroup E} (hA : IsLatFamily O x A) (hB : IsLatFamily O x B) :
    IsLatFamily O x fun c => A c ⊔ B c := by
  refine ⟨fun s hs => sup_stable _ (hA.1 s hs) (hB.1 s hs), fun s t hs ht v hv => ?_⟩
  have hf : mseg x s / mseg x t ∈ chartRing O (mseg x) t :=
    ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _
  obtain ⟨y, hy, z, hz, rfl⟩ := AddSubgroup.mem_sup.1 hv
  obtain ⟨m, hm⟩ := hA.2 s t hs ht y hy
  obtain ⟨n, hn⟩ := hB.2 s t hs ht z hz
  exact loc_add _ _ (sup_stable _ (hA.1 t ht) (hB.1 t ht)) hf
    ⟨m, AddSubgroup.mem_sup_left hm⟩ ⟨n, AddSubgroup.mem_sup_right hn⟩

theorem fam_map {A : (∀ k, ι k) → AddSubgroup E} (hA : IsLatFamily O x A) (f : E →ₗ[Ω] E') :
    IsLatFamily O x fun c => (A c).map f.toAddMonoidHom := by
  refine ⟨?_, ?_⟩
  · rintro s hs a ha _ ⟨v, hv, rfl⟩
    exact ⟨a • v, hA.1 s hs a ha v hv, by simp⟩
  · rintro s t hs ht _ ⟨v, hv, rfl⟩
    obtain ⟨m, hm⟩ := hA.2 s t hs ht v hv
    exact ⟨m, _, hm, by simp⟩

end Fam

theorem flatten_summand (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω]
    [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
    (x : (Σ k, ι k) → Ω) (d : ℕ)
    (hm : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d)
    (hf : fnField O x = ⊤) (I : Type) [Fintype I] (E : Type) [AddCommGroup E] [Module Ω E]
    (U : I → Submodule Ω E) (Γ : I → (∀ k, ι k) → AddSubgroup E)
    (hΓ : ∀ j, IsLatFamily O x (Γ j) ∧ ∀ c, mseg x c ≠ 0 → ∃ S : Finset E,
      Γ j c = spanOver (chartRing O (mseg x) c) (S : Set E) ∧ Submodule.span Ω (S : Set E) = ⊤) :
    ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k))
      (z : (Σ k, ι' k) → Ω),
      GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧
      ∀ j c, mseg (joinCoord x z) c ≠ 0 →
        LocFree (chartRing O (mseg (joinCoord x z)) c) (Module.finrank Ω E)
          (spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ j (restrictChart c) : Set E)) ∧
        Summand (spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ j (restrictChart c) : Set E)) (U j) := by
  classical
  let W : Bool × I → Submodule Ω E := fun q => if q.1 then U q.2 else ⊥
  obtain ⟨K', i1, i2, ι', i3, z, hz, hfree⟩ := PositivityTheory.Xgn.t_flatten_many O Ω K ι x d hm hf (Bool × I)
    (fun q => Module.finrank Ω (E ⧸ W q)) (fun q => E ⧸ W q)
    (fun q c => (Γ q.2 c).map (W q).mkQ.toAddMonoidHom) (fun q => ⟨rfl, fam_map O x (hΓ q.2).1 _, by
      intro c hc
      obtain ⟨S, hS, hT⟩ := (hΓ q.2).2 c hc
      refine ⟨S.image (W q).mkQ, ?_, ?_⟩
      · rw [hS, map_span, Finset.coe_image]
      · rw [Finset.coe_image, ← Submodule.map_span, hT, Submodule.map_top, Submodule.range_mkQ]⟩)
  refine ⟨K', i1, i2, ι', i3, z, hz, fun j c hc => ?_⟩
  have key : ∀ q : Bool × I, LocFree (chartRing O (mseg (joinCoord x z)) c) (Module.finrank Ω (E ⧸ W q))
      ((spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ q.2 (restrictChart c) : Set E)).map
        (W q).mkQ.toAddMonoidHom) := by
    intro q
    rw [map_span]
    exact hfree q c hc
  have h0 := locFree_of_bot _ (span_stable _ _) (key (false, j))
  have h1 := h0
  rw [← (PositivityTheory.Xgn.A_summand_of_quot.exists_dual _ h0).1] at h1
  exact ⟨h1, (PositivityTheory.Xgn.summand_iff_locFree_quot _ (U j) _ _ _ h1).1 (key (true, j))⟩

theorem bc_image {Ω : Type} [Field Ω] (J : Type) (S : Set (J → Ω)) : bcMap Ω Ω J '' S = S := by
  have : ∀ v, bcMap Ω Ω J v = v := fun v => rfl
  simp [this]

theorem vanSub_min (Ω F : Type) [Field Ω] [Zero F] (n i : ℕ) :
    vanSub Ω F n (min i n) = vanSub Ω F n i := by
  unfold vanSub
  congr 1
  ext y
  refine forall_congr' fun j => imp_congr_left ?_
  have := j.2
  omega

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ (∀ c, mseg (joinCoord x z) c ≠ 0 → (pullFamily O x z D c).Good₁ (chartRing O (mseg (joinCoord x z)) c) p (fun τ a => algebraMap O Ω (χ τ a))) := by
  classical
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hm hf F _ _ _ n Sg _ r s p _ w χ φ D hD
  let E := (Fin n → F) → Ω
  let T : Set E := Set.range fun j : Fin n → F => (Pi.single j (p : Ω) : E)
  have hl1 : ∀ (R : Subalgebra O Ω) (D' : LieLatticeData Ω F n Sg r s), D'.l1 R p = D'.M ⊔ spanOver R T := by
    intro R D'
    rw [LieLatticeData.l1, mulLat_std]
  let U : Option (Sg ⊕ Fin (n + 1) ⊕ Sg × Fin n) → Submodule Ω E
    | none => ⊥
    | some (.inl τ) => LinearMap.range (linMap n fun a => algebraMap O Ω (χ τ a))
    | some (.inr (.inl i)) => vanSub Ω F n i
    | some (.inr (.inr q)) => charSub (fun a => algebraMap O Ω (χ q.1 a)) q.2
  let Γ : Bool → (∀ k, ι k) → AddSubgroup E
    | true => fun c => (D c).M ⊔ spanOver (chartRing O (mseg x) c) T
    | false => fun c => (D c).M
  obtain ⟨K', i1, i2, ι', i3, z, hz, hfree⟩ := flatten_summand O Ω K ι x d hm hf
    (Bool × Option (Sg ⊕ Fin (n + 1) ⊕ Sg × Fin n)) E (fun q => U q.2) (fun q => Γ q.1) (by
      rintro ⟨b, j⟩
      cases b
      · exact ⟨hD.famM, fun c hc => fg_of_locFree _ (hD.base c hc).freeM⟩
      · refine ⟨fam_sup O x hD.famM (fam_span O x T), fun c hc => ?_⟩
        obtain ⟨S, hS, hT⟩ := fg_of_locFree _ (hD.base c hc).freeM
        refine ⟨S ∪ Finset.univ.image fun j : Fin n → F => (Pi.single j (p : Ω) : E), ?_, ?_⟩
        · rw [Finset.coe_union, span_union, ← hS, Finset.coe_image, Finset.coe_univ, Set.image_univ]
        · rw [Finset.coe_union, Submodule.span_union, hT, top_sup_eq])
  refine ⟨K', i1, i2, ι', i3, z, hz, fun c hc => ?_⟩
  obtain ⟨hc0, hle⟩ := ((PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).2 c hc
  have hM : (pullFamily O x z D c).M =
      spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ false (restrictChart c) : Set E) := by
    show spanOver _ (bcMap Ω Ω _ '' _) = _
    rw [bc_image]
  have hL : (pullFamily O x z D c).l1 (chartRing O (mseg (joinCoord x z)) c) p =
      spanOver (chartRing O (mseg (joinCoord x z)) c) (Γ true (restrictChart c) : Set E) := by
    rw [hl1, hM, ← span_union]
    have hst := (hD.base _ hc0).freeM.1
    have : Γ true (restrictChart c) =
        spanOver (chartRing O (mseg x) (restrictChart c)) (((D (restrictChart c)).M : Set E) ∪ T) := by
      rw [span_union, span_self _ hst]
    rw [this, span_span _ hle]
  have hr : Module.finrank Ω E = Fintype.card F ^ n := by simp [E]
  refine ⟨?_, fun τ => ?_, fun i => ?_, fun τ i => ?_⟩
  · rw [hL, ← hr]
    exact (hfree (true, none) c hc).1
  · rw [hL]
    exact (hfree (true, some (.inl τ)) c hc).2
  · rw [hM, ← vanSub_min]
    exact (hfree (false, some (.inr (.inl ⟨min i n, by omega⟩))) c hc).2
  · rw [hM]
    exact (hfree (false, some (.inr (.inr (τ, i)))) c hc).2

end GlobalTheory.CompanionTheory.Ar.FamGood1
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelFacts =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverPrimePermModuleLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverPrimePermModuleLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SameGenericBaseExtension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.BiratJoin

theorem psum_homogeneous_int (σ : Type) [Fintype σ] (n : ℕ) :
    (psum σ ℤ n).IsHomogeneous n := by
  unfold psum
  apply IsHomogeneous.sum
  intro i _
  simpa using (isHomogeneous_X ℤ i).pow n

theorem ckRelations_descend : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {Sg : Type} {r s : Sg → ℕ} (p : ℕ), (p : O) ≠ 0 → ∀ (φ : Equiv.Perm Sg) {VL VO : Sg → Type} [∀ τ, AddCommGroup (VL τ)] [∀ τ, Module Ω (VL τ)] [∀ τ, AddCommGroup (VO τ)] [∀ τ, Module Ω (VO τ)] (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (VL τ)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (VO τ)), (∀ τ, SameGeneric O x (Lie τ) (W τ) ∧ SameGeneric O x (Om τ) (OmHT τ)) → ∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d → fnField O (joinCoord x z) = fnField O x → ∀ (Lie' W' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (r τ) (VL τ)) (Om' OmHT' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (s τ) (VO τ)), (∀ τ, IsPull O x z (Lie τ) (Lie' τ) ∧ IsPull O x z (W τ) (W' τ) ∧ IsPull O x z (Om τ) (Om' τ) ∧ IsPull O x z (OmHT τ) (OmHT' τ)) → CkRelations O (joinCoord x z) d p φ Lie' W' Om' OmHT' → CkRelations O x d p φ Lie W Om OmHT := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x d hx Sg r s p hp φ VL VO _ _ _ _ Lie W Om OmHT hsame K' _ _ ι' _ z hxz hfn
    Lie' W' Om' OmHT' hpull hck
  unfold CkRelations
  intro k hk1 hk2 q L Q hQ
  obtain ⟨h, hA, hB⟩ := hck k hk1 hk2 q (fun j => pullDeg (L j)) Q hQ
  have hc : k - 1 ≤ d := by omega
  have hQ' : Q.IsHomogeneous (d - (k - 1)) := by
    have e : d - (k - 1) = d + 1 - k := by omega
    rw [e]
    exact hQ
  have TL := fun τ => _root_.GlobalTheory.CompanionTheory.Ar.CkPullBirat.main O Ω K ι x d hx (r τ) (VL τ) (Lie τ) (W τ) (hsame τ).1 K' ι' z hxz hfn
    (Lie' τ) (W' τ) (hpull τ).1 (hpull τ).2.1
  have TO := fun τ => _root_.GlobalTheory.CompanionTheory.Ar.CkPullBirat.main O Ω K ι x d hx (s τ) (VO τ) (Om τ) (OmHT τ) (hsame τ).2 K' ι' z hxz hfn
    (Om' τ) (OmHT' τ) (hpull τ).2.2.1 (hpull τ).2.2.2
  have hroot : ∀ τ, rootNum O (joinCoord x z) d (r τ) (Lie' τ) (MvPolynomial.psum (Fin (r τ)) ℤ (k - 1))
      (fun j => pullDeg (L j)) Q (p : O) =
      rootNum O x d (r τ) (Lie τ) (MvPolynomial.psum (Fin (r τ)) ℤ (k - 1)) L Q (p : O) := fun τ =>
    (TL τ).2 (k - 1) _ (MvPolynomial.psum_isSymmetric _ _ _) (psum_homogeneous_int _ _) hc q L Q hQ' _ hp
  refine ⟨h, fun τ => ?_, fun τ => ?_⟩
  · rw [← (TL τ).1 k hk1 hk2 q L Q hQ, ← (TO τ).1 k hk1 hk2 q L Q hQ, ← hroot τ]
    exact hA τ
  · rw [← hroot (φ τ)]
    exact hB τ

end GlobalTheory.CompanionTheory.Ar.Num.BiratJoin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverPrimePermModuleLattice =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_normal_join =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_normal_join", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.FiniteIntegralClosureOfEssFiniteTypeField\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XCoherentGens\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_join_model\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace PositivityTheory.Xgn.A_normal_join

open PositivityTheory.Xgn.A_coherent_gens (mem_spanOver spanOver_le)
open PositivityTheory.Xgn.A_chart_noeth_frac (mseg_join ratio_eq)
open ReciprocityTheory.ChartRestriction.G.Geo (exists_pow_mul_mem_chartRing div_mem_chartRing)

variable {O : Type} [CommRing O] {Ω : Type} [Field Ω] [Algebra O Ω]

def intGrp (R : Subalgebra O Ω) : AddSubgroup Ω :=
  (integralClosure R Ω).toSubring.toAddSubgroup

theorem mem_intGrp {R : Subalgebra O Ω} {v : Ω} : v ∈ intGrp R ↔ IsIntegral R v := Iff.rfl

theorem isIntegral_of_mem {R : Subalgebra O Ω} {a : Ω} (ha : a ∈ R) : IsIntegral R a :=
  isIntegral_algebraMap (R := R) (A := Ω) (x := ⟨a, ha⟩)

theorem exists_pow_mul_isIntegral (R R' : Subalgebra O Ω) {r : Ω} (hr : IsIntegral R r)
    (h : ∀ a ∈ R', ∃ n : ℕ, IsIntegral R (r ^ n * a)) {v : Ω} (hv : IsIntegral R' v) :
    ∃ n : ℕ, IsIntegral R (r ^ n * v) := by
  obtain ⟨p, hp, hpv⟩ := hv
  choose m hm using fun i => h _ (p.coeff i).2
  let N := p.support.sup m
  let q : Polynomial Ω := Polynomial.C (r ^ N) * p.map (algebraMap R' Ω)
  have hq : q ∈ Polynomial.lifts (algebraMap (integralClosure R Ω) Ω) := by
    rw [Polynomial.lifts_iff_coeff_lifts]
    intro i
    refine ⟨⟨q.coeff i, ?_⟩, rfl⟩
    show IsIntegral R (q.coeff i)
    simp only [q, Polynomial.coeff_C_mul, Polynomial.coeff_map]
    by_cases hi : i ∈ p.support
    · have hle : m i ≤ N := Finset.le_sup hi
      have e : r ^ N * algebraMap R' Ω (p.coeff i) = r ^ (N - m i) * (r ^ m i * (p.coeff i : Ω)) := by
        rw [← mul_assoc, ← pow_add, Nat.sub_add_cancel hle]; rfl
      rw [e]
      exact (hr.pow _).mul (hm i)
    · rw [Polynomial.notMem_support_iff.1 hi, map_zero, mul_zero]
      exact isIntegral_zero
  obtain ⟨Q, hQ⟩ := (Polynomial.mem_lifts _).1 hq
  have h0 : Polynomial.aeval v Q = 0 := by
    rw [← Polynomial.aeval_map_algebraMap Ω, hQ]
    simp only [q, map_mul, Polynomial.aeval_map_algebraMap]
    rw [Polynomial.aeval_def (R := R'), hpv, mul_zero]
  have h1 := isIntegral_leadingCoeff_smul Q v h0
  have h2 : algebraMap (integralClosure R Ω) Ω Q.leadingCoeff = r ^ N := by
    have hinj : Function.Injective (algebraMap (integralClosure R Ω) Ω) := Subtype.val_injective
    rw [← Polynomial.leadingCoeff_map_of_injective hinj, hQ]
    simp only [q]
    rw [(hp.map _).leadingCoeff_C_mul]
  rw [Algebra.smul_def, h2] at h1
  set_option synthInstance.maxHeartbeats 200000 in
    exact ⟨N, isIntegral_trans (R := R) (A := integralClosure R Ω) (B := Ω) (r ^ N * v) h1⟩

theorem exists_span (R : Subalgebra O Ω) [h : Module.Finite R (integralClosure R Ω)] :
    ∃ S : Finset Ω, intGrp R = spanOver R (S : Set Ω) := by
  have hfg : (Subalgebra.toSubmodule (integralClosure R Ω)).FG :=
    Module.Finite.iff_fg.1 h
  obtain ⟨S, hS⟩ := hfg
  refine ⟨S, le_antisymm (fun v hv => ?_) (spanOver_le R (fun a ha v hv => ?_) fun e he => ?_)⟩
  · have hv' : v ∈ Submodule.span R (S : Set Ω) := by rw [hS]; exact hv
    obtain ⟨f, hf⟩ := (Submodule.mem_span_finset).1 hv'
    rw [← hf.2]
    exact sum_mem fun e he => AddSubgroup.subset_closure ⟨f e, (f e).2, e, he, rfl⟩
  · exact (isIntegral_of_mem ha).mul hv
  · have he' : e ∈ Submodule.span R (S : Set Ω) := Submodule.subset_span he
    rw [hS] at he'
    exact he'

theorem isIntegrallyClosedIn (R R' : Subalgebra O Ω) {u : Ω} (hu0 : u ≠ 0) (hu : IsIntegral R u)
    (h1 : ∀ a, IsIntegral R a → u⁻¹ * a ∈ R') (h2 : ∀ a ∈ R', ∃ n : ℕ, IsIntegral R (u ^ n * a)) :
    IsIntegrallyClosedIn R' Ω := by
  refine isIntegrallyClosedIn_iff.2 ⟨Subtype.val_injective, fun {v} hv => ?_⟩
  obtain ⟨n, hn⟩ := exists_pow_mul_isIntegral R R' hu h2 hv
  have hi : u⁻¹ ∈ R' := by simpa using h1 1 isIntegral_one
  have ha := mul_mem (pow_mem hi n) (h1 _ (hu.mul hn))
  have e : u⁻¹ ^ n * (u⁻¹ * (u * (u ^ n * v))) = v := by
    rw [inv_mul_cancel_left₀ hu0, inv_pow, inv_mul_cancel_left₀ (pow_ne_zero _ hu0)]
  rw [e] at ha
  exact ⟨⟨v, ha⟩, rfl⟩

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]


omit [∀ k, Fintype (ι k)] in
theorem fam (x : (Σ k, ι k) → Ω) : IsLatFamily O x fun c => intGrp (chartRing O (mseg x) c) := by
  refine ⟨fun s _ a ha v hv => (isIntegral_of_mem ha).mul hv, fun s t hs _ v hv => ?_⟩
  refine exists_pow_mul_isIntegral _ (chartRing O (mseg x) s)
    (isIntegral_of_mem (div_mem_chartRing (mseg x) t s)) (fun a ha => ?_) hv
  obtain ⟨n, hn⟩ := exists_pow_mul_mem_chartRing (mseg x) s t hs ha
  exact ⟨n, isIntegral_of_mem hn⟩

end PositivityTheory.Xgn.A_normal_join

open PositivityTheory.Xgn.A_normal_join PositivityTheory.Xgn.A_coherent_gens PositivityTheory.Xgn.A_chart_noeth_frac in
theorem PositivityTheory.Xgn.t_normal_join : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) [CharZero O] (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∃ (K' : Type) (_ : Fintype K') (_ : DecidableEq K') (ι' : K' → Type) (_ : ∀ k, Fintype (ι' k)) (z : (Σ k, ι' k) → Ω), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d ∧ NormalCharts O (joinCoord x z) := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x _ d hx htop
  obtain ⟨hK, hx0, hinj, hT⟩ := (PositivityTheory.Xgn.A_join_model.isModelOver_iff x d).1 hx
  obtain ⟨-, hfrac, hjoin⟩ := PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x
  have hfg : ∀ c, mseg x c ≠ 0 → ∃ S : Finset Ω, intGrp (chartRing O (mseg x) c) =
      spanOver (chartRing O (mseg x) c) (S : Set Ω) := by
    intro c hc
    have := hfrac htop c hc
    have : Algebra.FiniteType O (chartRing O (mseg x) c) :=
      (Subalgebra.fg_iff_finiteType _).1 (Subalgebra.fg_def.2 ⟨_, Set.finite_range _, rfl⟩)
    have : Algebra.EssFiniteType (chartRing O (mseg x) c) Ω :=
      .of_isLocalization Ω (nonZeroDivisors _)
    have := GlobalTheory.finite_integralClosure_of_injective O (chartRing O (mseg x) c) Ω hinj
    exact exists_span _
  obtain ⟨a, ha⟩ := PositivityTheory.Xgn.t_coherent_gens O Ω K ι x Ω _ (fam x) hfg
  obtain ⟨M, v, hv⟩ := ha a le_rfl
  let z : (Σ _ : Unit, Fin M) → Ω := fun p => v p.2
  obtain ⟨hf, hle⟩ := hjoin Unit (fun _ => Fin M) z
  have hz : ∃ j, v j ≠ 0 := by
    by_contra hn
    push Not at hn
    choose c hc using hx0
    have hc' : mseg x c ≠ 0 := Finset.prod_ne_zero_iff.2 fun k _ => hc k
    have h1 : (1 : Ω) ∈ intGrp (chartRing O (mseg x) c) := isIntegral_one
    rw [hv c hc'] at h1
    have h2 := spanOver_le (L := ⊥) (chartRing O (mseg x) c)
      (S := Set.range fun j => (chartMon x c a)⁻¹ • v j)
      (fun a _ w hw => by rw [AddSubgroup.mem_bot.1 hw, smul_zero]; exact zero_mem _)
      (by rintro _ ⟨j, rfl⟩; simp [hn j]) h1
    exact one_ne_zero (AddSubgroup.mem_bot.1 h2)
  refine ⟨Unit, inferInstance, inferInstance, fun _ => Fin M, inferInstance, z, ?_, fun c' hc' => ?_⟩
  · refine (PositivityTheory.Xgn.A_join_model.isModelOver_iff (joinCoord x z) d).2 ⟨inferInstance, ?_, hinj, ?_⟩
    · rintro (k | k)
      · exact hx0 k
      · exact hz
    · rw [hf htop, ← htop]
      exact hT
  · obtain ⟨hc, hR⟩ := hle c' hc'
    have hj : ∀ t : ∀ k : K ⊕ Unit, Sum.elim ι (fun _ => Fin M) k,
        mseg (joinCoord x z) t = mseg x (restrictChart t) * v (t (.inr ())) := by
      intro t
      rw [mseg_join]
      simp [mseg, z]
    have hl : v (c' (.inr ())) ≠ 0 := by
      rw [hj] at hc'
      exact right_ne_zero_of_mul hc'
    have hm : chartMon x (restrictChart c') a ≠ 0 :=
      Finset.prod_ne_zero_iff.2 fun k _ =>
        zpow_ne_zero _ (Finset.prod_ne_zero_iff.1 hc k (Finset.mem_univ k))
    have hw : ∀ j, IsIntegral (chartRing O (mseg x) (restrictChart c'))
        ((chartMon x (restrictChart c') a)⁻¹ * v j) := by
      intro j
      rw [← mem_intGrp, hv _ hc]
      exact mem_spanOver _ ⟨j, rfl⟩
    refine isIntegrallyClosedIn (chartRing O (mseg x) (restrictChart c')) _
      (mul_ne_zero (inv_ne_zero hm) hl) (hw _) (fun b hb => ?_) (fun b hb => ?_)
    · rw [← mem_intGrp, hv _ hc] at hb
      refine spanOver_le (L := (chartRing O (mseg (joinCoord x z)) c').toSubring.toAddSubgroup.comap
        (AddMonoidHom.mulLeft ((chartMon x (restrictChart c') a)⁻¹ * v (c' (.inr ())))⁻¹)) _
        (fun r hr w hw => ?_) ?_ hb
      · show _ * (r * w) ∈ chartRing O (mseg (joinCoord x z)) c'
        rw [mul_left_comm]
        exact mul_mem (hR hr) hw
      · rintro _ ⟨j, rfl⟩
        show _ * (_ * v j) ∈ chartRing O (mseg (joinCoord x z)) c'
        have e : ((chartMon x (restrictChart c') a)⁻¹ * v (c' (.inr ())))⁻¹ *
            ((chartMon x (restrictChart c') a)⁻¹ * v j) = v j / v (c' (.inr ())) := by
          field_simp
        rw [e]
        have e2 := ratio_eq (joinCoord x z) c' hc' (.inr ()) j
        have e3 : v j / v (c' (.inr ())) =
            mseg (joinCoord x z) (Function.update c' (.inr ()) j) / mseg (joinCoord x z) c' := e2.symm
        rw [e3]
        exact ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _
    · unfold chartRing at hb
      induction hb using Algebra.adjoin_induction with
      | mem b hb =>
        obtain ⟨t, rfl⟩ := hb
        refine ⟨1, ?_⟩
        have e : ((chartMon x (restrictChart c') a)⁻¹ * v (c' (.inr ()))) ^ 1 *
            (mseg (joinCoord x z) t / mseg (joinCoord x z) c') =
            (mseg x (restrictChart t) / mseg x (restrictChart c')) *
              ((chartMon x (restrictChart c') a)⁻¹ * v (t (.inr ()))) := by
          rw [hj, hj]
          field_simp
        simp only
        rw [e]
        exact (isIntegral_of_mem (ReciprocityTheory.ChartRestriction.G.Geo.div_mem_chartRing (o := O) _ _ _)).mul (hw _)
      | algebraMap r =>
        exact ⟨0, isIntegral_of_mem (by rw [pow_zero, one_mul]; exact Subalgebra.algebraMap_mem _ r)⟩
      | add b₁ b₂ _ _ h₁ h₂ =>
        obtain ⟨n₁, h₁⟩ := h₁
        obtain ⟨n₂, h₂⟩ := h₂
        refine ⟨n₁ + n₂, ?_⟩
        have h := (((hw (c' (.inr ()))).pow n₂).mul h₁).add (((hw (c' (.inr ()))).pow n₁).mul h₂)
        have e : ∀ u : Ω, u ^ (n₁ + n₂) * (b₁ + b₂) = u ^ n₂ * (u ^ n₁ * b₁) + u ^ n₁ * (u ^ n₂ * b₂) :=
          fun u => by ring
        rw [e]
        exact h
      | mul b₁ b₂ _ _ h₁ h₂ =>
        obtain ⟨n₁, h₁⟩ := h₁
        obtain ⟨n₂, h₂⟩ := h₂
        refine ⟨n₁ + n₂, ?_⟩
        have e : ∀ u : Ω, u ^ (n₁ + n₂) * (b₁ * b₂) = u ^ n₁ * b₁ * (u ^ n₂ * b₂) := fun u => by ring
        rw [e]
        exact h₁.mul h₂
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_normal_join =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelRefinementExists =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelRefinementExists", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.X_normal_join\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.NormalJoin

alias main := _root_.PositivityTheory.Xgn.t_normal_join

end GlobalTheory.CompanionTheory.Ar.NormalJoin
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelRefinementExists =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DescentRelationsFromModels =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DescentRelationsFromModels", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import Development.WeilBound.CoreStatements.HodgeTatePoints.HcptgenRing\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XChartNoethFrac\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.HodgeAnnihilatorLatticeHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFactsOfNormalHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyInjectiveModel\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelChern\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelComparison\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeFamilyModelFacts\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverModPLatticeEigenSplit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelOverPrimePermModuleLattice\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ModelRefinementExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.Ar.Num.CkTop

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω] [Algebra O Ω]

theorem inj_of_model {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
    {x : (Σ k, ι k) → Ω} {d : ℕ}
    (h : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) :
    Function.Injective (algebraMap O Ω) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro c hc
  have hmem : c ∈ (mcIdeal O x).comap (MvPolynomial.C : O →+* MvPolynomial (Σ k, ι k) O) := by
    rw [Ideal.mem_comap]
    simp only [mcIdeal, GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.mcMap, RingHom.mem_ker]
    simp [hc]
  rw [h.2.2.1] at hmem
  exact (Ideal.mem_bot).1 hmem

variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {x : (Σ k, ι k) → Ω} {d : ℕ}
  {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ}
  {p : ℕ} {w : O} {χ : Sg → F → O} {φ : Equiv.Perm Sg} {D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s}

theorem charData_of (hinj : Function.Injective (algebraMap O Ω)) (hp : p.Prime)
    (hfam : IsLatticeFamily O x p w χ φ D) (c : ∀ k, ι k) :
    CharData (chartRing O (mseg x) c) p (algebraMap O Ω w) (fun τ a => algebraMap O Ω (χ τ a)) := by
  obtain ⟨hp0, ⟨u, hu, hw⟩, -, h01, hχ⟩ := hfam.char
  refine ⟨?_, Subalgebra.algebraMap_mem _ _, ?_, h01, fun τ => ⟨?_, ?_, fun a => Subalgebra.algebraMap_mem _ _⟩⟩
  · rw [← map_natCast (algebraMap O Ω) p]
    exact fun h => hp0 (hinj (h.trans (map_zero _).symm))
  · refine ⟨algebraMap O Ω (↑hu.unit⁻¹ * w ^ (p - 2)), Subalgebra.algebraMap_mem _ _, ?_⟩
    rw [← map_natCast (algebraMap O Ω), ← map_mul]
    congr 1
    have h2 : p - 1 = p - 2 + 1 := by have := hp.two_le; omega
    rw [mul_assoc, ← pow_succ, ← h2, hw, ← mul_assoc, hu.val_inv_mul, one_mul]
  · simp [(hχ τ).1]
  · simp [(hχ τ).2]

theorem sameGeneric_of (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D)
    (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω))
    (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω))
    (hb : HasBundles O x D Lie W Om OmHT) :
    ∀ τ, SameGeneric O x (Lie τ) (W τ) ∧ SameGeneric O x (Om τ) (OmHT τ) := by
  have hw0 : w ≠ 0 := by
    obtain ⟨u, hu, hw⟩ := hfam.char.2.1
    intro h
    rw [h, zero_pow (by have := hp.two_le; omega)] at hw
    rcases mul_eq_zero.1 hw.symm with h' | h'
    · exact hu.ne_zero h'
    · exact hfam.char.1 h'
  intro τ
  constructor
  · intro c hc
    obtain ⟨h1, h2, -, -⟩ := hb τ c hc
    have hB := ((hfam.base c hc).incl τ)
    refine ⟨fun v hv => ⟨1, one_ne_zero, ?_⟩, fun v hv => ⟨w, hw0, ?_⟩⟩
    · rw [map_one, one_smul, h2]; rw [h1] at hv; exact hB.1 hv
    · rw [h1]; rw [h2] at hv; exact hB.2.1 hv
  · intro c hc
    obtain ⟨-, -, h3, h4⟩ := hb τ c hc
    have hB := ((hfam.base c hc).incl τ)
    refine ⟨fun v hv => ⟨w, hw0, ?_⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
    · rw [h4]; rw [h3] at hv; exact hB.2.2.2 hv
    · rw [map_one, one_smul, h3]; rw [h4] at hv; exact hB.2.2.1 hv

theorem descend (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D)
    {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type} [∀ k, Fintype (ι' k)]
    (z : (Σ k, ι' k) → Ω)
    (hmod' : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O (joinCoord x z)) d)
    (h : ∀ (Lie' W' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (r τ) (Fin (r τ) → Ω))
      (Om' OmHT' : ∀ τ, ChartBundle O (mseg (joinCoord x z)) (s τ) (Fin (s τ) → Ω)),
      HasBundles O (joinCoord x z) (pullFamily O x z D) Lie' W' Om' OmHT' →
        CkRelations O (joinCoord x z) d p φ Lie' W' Om' OmHT') :
    ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  intro Lie W Om OmHT hb
  obtain ⟨-, -, hpull⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  obtain ⟨Lie', W', Om', OmHT', hb', hP⟩ := hpull Lie W Om OmHT hb
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  exact _root_.GlobalTheory.CompanionTheory.Ar.Num.BiratJoin.ckRelations_descend O Ω K ι x d hmod p hfam.char.1 φ Lie W Om OmHT
    (sameGeneric_of hp hfam Lie W Om OmHT hb) K' ι' z hmod' (hfn'.trans hfn.symm)
    Lie' W' Om' OmHT' hP (h _ _ _ _ hb')

theorem stage5 (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (hN : NormalCharts O x) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) (h2 : (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))))
    (hl : (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i)) : ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT :=
  _root_.GlobalTheory.CompanionTheory.Ar.Num.GoodModel.relations O Ω K ι x d hmod p hp w χ φ D hfam h1 h2
    (fun c hc => _root_.GlobalTheory.CompanionTheory.Ar.Num.lattice_facts_of_normal (D c) (chartRing O (mseg x) c) p _ _
      (charData_of (inj_of_model hmod) hp hfam c) (hfam.base c hc) hp
      ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).1 c) ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.1 hfn c hc) (hN c hc) φ
      (hfam.test c hc) (h1 c hc) (h2 c hc)) hl

end GlobalTheory.CompanionTheory.Ar.Num.CkTop

namespace GlobalTheory.CompanionTheory.Ar.Num.CkTop

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω] [Algebra O Ω]
variable {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type} [∀ k, Fintype (ι k)]
  {x : (Σ k, ι k) → Ω} {d : ℕ}
  {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ}
  {p : ℕ} {w : O} {χ : Sg → F → O} {φ : Equiv.Perm Sg} {D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s}

theorem stage4 [CharZero O] (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) (haf : (∀ c, mseg x c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg x) c) _) ≤ (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)))) (h2 : (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a))))
    (hl : (∀ τ i, ∃ (u : Ω) (a : _ → ℤ), u ≠ 0 ∧ IsLine O x u a fun c => (D c).xId (fun a => algebraMap O Ω (χ τ a)) i)) : ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  obtain ⟨K', _, _, ι', _, z, hmod', hN⟩ := _root_.GlobalTheory.CompanionTheory.Ar.NormalJoin.main O Ω K ι x d hmod hfn
  obtain ⟨hfam', hg, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  obtain ⟨h1', hg', hln⟩ := hg h1
  obtain ⟨-, hg2⟩ := hg' haf
  exact descend hmod hfn hp hfam z hmod' (stage5 hmod' hfn' hp hfam' hN h1' (hg2 h2) (hln hl))

theorem stage3 [CharZero O] (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) (haf : (∀ c, mseg x c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg x) c) _) ≤ (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)))) (h2 : (∀ c, mseg x c ≠ 0 → (D c).Good₂ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) :
    ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  obtain ⟨K', _, _, ι', _, z, hmod', hl'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamLines.main O Ω K ι x d hmod hfn p hp w χ φ D hfam h1
  obtain ⟨hfam', hg, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  obtain ⟨h1', hg', hln⟩ := hg h1
  obtain ⟨haf', hg2⟩ := hg' haf
  exact descend hmod hfn hp hfam z hmod' (stage4 hmod' hfn' hp hfam' h1' haf' (hg2 h2) hl')

theorem stage2 [CharZero O] (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) (haf : (∀ c, mseg x c ≠ 0 → ∀ τ, mulLat (algebraMap O Ω w) (stdLat (chartRing O (mseg x) c) _) ≤ (D c).af (chartRing O (mseg x) c) p (fun a => algebraMap O Ω (χ τ a)))) : ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  obtain ⟨K', _, _, ι', _, z, hmod', h2'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamGood2.main O Ω K ι x d hmod hfn p hp w χ φ D hfam h1 haf
  obtain ⟨hfam', hg, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  obtain ⟨h1', hg', hln⟩ := hg h1
  obtain ⟨haf', -⟩ := hg' haf
  exact descend hmod hfn hp hfam z hmod' (stage3 hmod' hfn' hp hfam' h1' haf' h2')

theorem stage1b [CharZero O] (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) (hN : NormalCharts O x) : ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT :=
  stage2 hmod hfn hp hfam h1 (fun c hc τ => _root_.GlobalTheory.CompanionTheory.Ar.Num.hodge_annihilator_lattice (D c) (chartRing O (mseg x) c) p _ _
      (charData_of (inj_of_model hmod) hp hfam c) (hfam.base c hc) hp
      ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).1 c) ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.1 hfn c hc) (hN c hc) φ
      (hfam.test c hc) (h1 c hc) τ)

theorem stage1 [CharZero O] (hmod : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d) (hfn : fnField O x = ⊤) (hp : p.Prime) (hfam : IsLatticeFamily O x p w χ φ D) (h1 : (∀ c, mseg x c ≠ 0 → (D c).Good₁ (chartRing O (mseg x) c) p (fun τ a => algebraMap O Ω (χ τ a)))) : ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  obtain ⟨K', _, _, ι', _, z, hmod', hN⟩ := _root_.GlobalTheory.CompanionTheory.Ar.NormalJoin.main O Ω K ι x d hmod hfn
  obtain ⟨hfam', hg, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  obtain ⟨h1', -, -⟩ := hg h1
  exact descend hmod hfn hp hfam z hmod' (stage1b hmod' hfn' hp hfam' h1' hN)

theorem ckRelations_of_model : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) [CharZero O] (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → fnField O x = ⊤ → ∀ {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} [Fintype Sg] {r s : Sg → ℕ} (p : ℕ), p.Prime → ∀ (w : O) (χ : Sg → F → O) (φ : Equiv.Perm Sg) (D : (∀ k, ι k) → LieLatticeData Ω F n Sg r s), IsLatticeFamily O x p w χ φ D → ∀ (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (Fin (r τ) → Ω)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (Fin (s τ) → Ω)), HasBundles O x D Lie W Om OmHT → CkRelations O x d p φ Lie W Om OmHT := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x _ d hmod hfn F _ _ _ n Sg _ r s p hp w χ φ D hfam
  obtain ⟨K', _, _, ι', _, z, hmod', h1'⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamGood1.main O Ω K ι x d hmod hfn p hp w χ φ D hfam
  obtain ⟨hfam', -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.FamPull.main O Ω K ι x (inj_of_model hmod) p hp w χ φ D hfam K' ι' z
  have hfn' := ((_root_.PositivityTheory.Xgn.t_chart_noeth_frac O Ω K ι x).2.2 K' ι' z).1 hfn
  exact descend hmod hfn hp hfam z hmod' (stage1 hmod' hfn' hp hfam' h1')

end GlobalTheory.CompanionTheory.Ar.Num.CkTop
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DescentRelationsFromModels =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UniformizerModelPermModuleLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UniformizerModelPermModuleLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.Inhabit\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ChernClassOnFlagPair\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.ClassListMapDomainPerm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

namespace GlobalTheory.CompanionTheory.CkRelations

noncomputable def allOne (q : ℕ) : Fin q →₀ ℕ := ∑ j, Finsupp.single j 1

theorem toMultiset_allOne (q : ℕ) : (allOne q).toMultiset = Finset.univ.val := by
  ext j
  simp [allOne]

theorem degree_allOne (q : ℕ) : (allOne q).degree = q := by

  simp [allOne, map_sum]

theorem isHomogeneous_allOne (q n : ℕ) (h : q = n) :
    (monomial (allOne q) (1 : ℤ) : MvPolynomial (Fin q) ℤ).IsHomogeneous n :=
  isHomogeneous_monomial _ ((degree_allOne q).trans h)

theorem classList_allOne {K : Type} (Q : List (K → ℤ)) :
    (classList Q.get (allOne Q.length)).Perm Q := by
  rw [← Multiset.coe_eq_coe, classList, Multiset.coe_toList, toMultiset_allOne, Fin.univ_val_map,
    List.ofFn_get]

theorem sum_allOne (q : ℕ) (F : (Fin q →₀ ℕ) → ℤ) :
    ∑ μ ∈ (monomial (allOne q) (1 : ℤ) : MvPolynomial (Fin q) ℤ).support,
      (monomial (allOne q) (1 : ℤ) : MvPolynomial (Fin q) ℤ).coeff μ * F μ = F (allOne q) := by
  classical
  rw [support_monomial, if_neg one_ne_zero, Finset.sum_singleton, coeff_monomial, if_pos rfl, one_mul]

theorem classNum_perm {K : Type} [DecidableEq K] {ι : K → Type} {O : Type} [CommRing O] [IsDomain O]
    [IsDiscreteValuationRing O] {σ : Type} (cls : σ → K → ℤ) (H : MvPolynomial σ ℤ)
    {Q Q' : List (K → ℤ)} (h : Q.Perm Q') (W : Ideal (MRing ι O)) :
    classNum cls H Q W = classNum cls H Q' W := by
  unfold classNum
  refine Finset.sum_congr rfl fun μ _ => ?_
  congr 1
  have : LeftCommutative (diffStep (K := K)) := ⟨fun a b f => by
    funext m
    simp only [diffStep]
    rw [sub_right_comm m a b]
    ring⟩
  simp only [vNumL, vNum, intNum, mixedDiff, List.ofFn_get]
  rw [(h.append_left _).foldr_eq]

theorem key (hC : GroundTheory.Heights₂.Heights.NumbersDVR.ChernClassOnFlagPair.Statement) (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω]
    [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)]
    (x : (Σ k, ι k) → Ω) (ϖ : O) (hϖ : Irreducible ϖ) (d : ℕ)
    (hM : GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d)
    (N : ℕ) (V : Type) [AddCommGroup V] [Module Ω V] (E E' : ChartBundle O (mseg x) N V)
    (hE : SameGeneric O x E E') (T : LocPair ι O (Fin N)) (b b' : Module.Basis (Fin N) Ω V)
    (hT : IsFlagPair ϖ x E E' b b' T.x T.x' T.f T.g) (k : ℕ) (hk : 1 ≤ k) (Q : List (K → ℤ))
    (hQ : Q.length + k = d + 1) :
    ck O x d N E E' k Q.get (monomial (allOne Q.length) 1) = T.ck (pointIdeal O x) k Q ∧
    ∀ a : O, a ≠ 0 →
      (k : ℤ) * rootNum O x d N E (psum (Fin N) ℤ (k - 1)) Q.get (monomial (allOne Q.length) 1) a =
        laNum (pointIdeal O x) a T.x k Q := by
  obtain ⟨hK, hW⟩ := (BundleExamples.isModelOver_iff O _ d).mp hM
  obtain ⟨h1, h2⟩ := hC O ϖ hϖ Ω K ι x d hK hW N V E E'
    ((BundleExamples.sameGeneric_iff hϖ x E E').mp hE) b b' T.x T.x' T.f T.g hT
  refine ⟨?_, fun a ha => ?_⟩
  · refine (h1 k hk (by omega) _ (isPairExpansion_psum N k) _ Q.get _
      (isHomogeneous_allOne _ _ (by omega))).trans ?_
    rw [sum_allOne Q.length
      (fun μ => pairNum (pointIdeal O x) T.x T.x' T.f T.g (psumExpansion N k) (classList Q.get μ))]
    simp only [LocPair.ck, pairNum, classNum_perm _ _ (classList_allOne Q)]
  · have h3 := h2 (k - 1) _ (psum_isSymmetric _ _ (k - 1)) (isHomogeneous_psum N (k - 1)) (by omega)
      _ Q.get _ (isHomogeneous_allOne _ _ (by omega)) a ha
    rw [sum_allOne Q.length
      (fun μ => cycEval (fun W => classNum T.x (psum (Fin N) ℤ (k - 1)) (classList Q.get μ) W)
        (divCycle (pointIdeal O x) (C a)))] at h3
    simp only [classNum_perm _ _ (classList_allOne Q)] at h3
    unfold laNum
    exact congrArg _ h3

theorem main_of (hC : GroundTheory.Heights₂.Heights.NumbersDVR.ChernClassOnFlagPair.Statement) : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O), Irreducible ϖ → ∀ (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {Sg : Type} {r s : Sg → ℕ} (p : ℕ), (p : O) ≠ 0 → ∀ (φ : Equiv.Perm Sg) {VL VO : Sg → Type} [∀ τ, AddCommGroup (VL τ)] [∀ τ, Module Ω (VL τ)] [∀ τ, AddCommGroup (VO τ)] [∀ τ, Module Ω (VO τ)] (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (VL τ)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (VO τ)), (∀ τ, SameGeneric O x (Lie τ) (W τ) ∧ SameGeneric O x (Om τ) (OmHT τ)) → CkRelations O x d p φ Lie W Om OmHT → ∀ (lie : ∀ τ, LocPair ι O (Fin (r τ))) (om : ∀ τ, LocPair ι O (Fin (s τ))), (∀ τ, (∃ b b' : Module.Basis (Fin (r τ)) Ω (VL τ), IsFlagPair ϖ x (Lie τ) (W τ) b b' (lie τ).x (lie τ).x' (lie τ).f (lie τ).g) ∧ ∃ b b' : Module.Basis (Fin (s τ)) Ω (VO τ), IsFlagPair ϖ x (Om τ) (OmHT τ) b b' (om τ).x (om τ).x' (om τ).f (om τ).g) → Relations (pointIdeal O x) d p φ lie om := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x ϖ hϖ d hM Sg r s p hp φ VL VO _ _ _ _ Lie W Om OmHT hS hR lie om hF
    k hk Q hQ
  obtain ⟨h, h1, h2⟩ := hR k hk (by omega) Q.length Q.get _
    (isHomogeneous_allOne _ _ (by omega))
  have hL := fun τ => (hF τ).1.elim fun b hb => hb.elim fun b' hb' =>
    key hC O Ω K ι x ϖ hϖ d hM _ _ _ _ (hS τ).1 (lie τ) b b' hb' k hk Q hQ
  have hO := fun τ => (hF τ).2.elim fun b hb => hb.elim fun b' hb' =>
    key hC O Ω K ι x ϖ hϖ d hM _ _ _ _ (hS τ).2 (om τ) b b' hb' k hk Q hQ
  refine ⟨h, fun τ => ?_, fun τ => ?_⟩
  · rw [← (hL τ).1, ← (hO τ).1, ← (hL τ).2 _ hp, h1 τ]
    push_cast
    ring
  · rw [← (hL (φ τ)).2 _ hp, h2 τ]
    push_cast
    ring

theorem main : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O), Irreducible ϖ → ∀ (d : ℕ), GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles.IsModelOver O (mcIdeal O x) d → ∀ {Sg : Type} {r s : Sg → ℕ} (p : ℕ), (p : O) ≠ 0 → ∀ (φ : Equiv.Perm Sg) {VL VO : Sg → Type} [∀ τ, AddCommGroup (VL τ)] [∀ τ, Module Ω (VL τ)] [∀ τ, AddCommGroup (VO τ)] [∀ τ, Module Ω (VO τ)] (Lie W : ∀ τ, ChartBundle O (mseg x) (r τ) (VL τ)) (Om OmHT : ∀ τ, ChartBundle O (mseg x) (s τ) (VO τ)), (∀ τ, SameGeneric O x (Lie τ) (W τ) ∧ SameGeneric O x (Om τ) (OmHT τ)) → CkRelations O x d p φ Lie W Om OmHT → ∀ (lie : ∀ τ, LocPair ι O (Fin (r τ))) (om : ∀ τ, LocPair ι O (Fin (s τ))), (∀ τ, (∃ b b' : Module.Basis (Fin (r τ)) Ω (VL τ), IsFlagPair ϖ x (Lie τ) (W τ) b b' (lie τ).x (lie τ).x' (lie τ).f (lie τ).g) ∧ ∃ b b' : Module.Basis (Fin (s τ)) Ω (VO τ), IsFlagPair ϖ x (Om τ) (OmHT τ) b b' (om τ).x (om τ).x' (om τ).f (om τ).g) → Relations (pointIdeal O x) d p φ lie om :=
  main_of _root_.GlobalTheory.CompanionTheory.ChernFlagPairRootPolynomial.main

end GlobalTheory.CompanionTheory.CkRelations
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UniformizerModelPermModuleLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ArithmeticRelationsStatementHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ArithmeticRelationsStatementHolds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.AlgebraStatements.RelationsStatement\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsLatticeFamily\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.DescentRelationsFromModels\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.BundleChernComparison\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.UniformizerModelPermModuleLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Num.TopRel

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg restrictChart fnField ck rootNum SameGeneric LatLE IsPull IsPullBC)

theorem relations : GlobalTheory.CompanionTheory.Ar.Num.RelationsStatement := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x _ ϖ hϖ d hmod hfn F _ _ _ n Sg _ r s p hp w χ φ D hD Lie W Om OmHT hB lie om hflag
  have hck := _root_.GlobalTheory.CompanionTheory.Ar.Num.CkTop.ckRelations_of_model O Ω K ι x d hmod hfn p hp w χ φ D hD Lie W Om OmHT hB
  have hp0 : (p : O) ≠ 0 := hD.char.1
  have hw0 : w ≠ 0 := by
    rintro rfl
    obtain ⟨u, hu, he⟩ := hD.char.2.1
    have h1 : p - 1 ≠ 0 := by have := hp.two_le; omega
    rw [zero_pow h1] at he
    exact hp0 (by
      rcases mul_eq_zero.mp he.symm with h | h
      · exact absurd h hu.ne_zero
      · exact h)
  have hsame : ∀ τ, SameGeneric O x (Lie τ) (W τ) ∧ SameGeneric O x (Om τ) (OmHT τ) := by
    intro τ
    constructor
    · intro c hc
      obtain ⟨h1, h2, -, -⟩ := hB τ c hc
      have hinc := ((hD.base c hc).incl τ)
      rw [h1, h2]
      refine ⟨fun v hv => ⟨1, one_ne_zero, ?_⟩, fun v hv => ⟨w, hw0, ?_⟩⟩
      · simpa using hinc.1 hv
      · exact hinc.2.1 hv
    · intro c hc
      obtain ⟨-, -, h3, h4⟩ := hB τ c hc
      have hinc := ((hD.base c hc).incl τ)
      rw [h3, h4]
      refine ⟨fun v hv => ⟨w, hw0, ?_⟩, fun v hv => ⟨1, one_ne_zero, ?_⟩⟩
      · exact hinc.2.2.2 hv
      · simpa using hinc.2.2.1 hv
  exact _root_.GlobalTheory.CompanionTheory.CkRelations.main O Ω K ι x ϖ hϖ d hmod p hp0 φ (VL := fun τ => Fin (r τ) → Ω)
    (VO := fun τ => Fin (s τ) → Ω) Lie W Om OmHT hsame hck lie om hflag

end GlobalTheory.CompanionTheory.Ar.Num.TopRel
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ArithmeticRelationsStatementHolds =====
