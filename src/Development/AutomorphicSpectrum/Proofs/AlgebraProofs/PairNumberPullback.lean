module

public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Statements
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyCN
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSegreFlagCutContraction
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FieldExtensionIntersectionInvariance
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PConeTrdegFnField
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDvrConeDimTrdeg
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinBirationalJoin
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorJoinPullback
import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly
import Mathlib.Tactic.Linter.Style
import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PComponentDim
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDivCycleFiniteSupport
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PMinimalPrimeMultiHomog
import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSupSpanMultiHomog
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiProjectivePrimeIntersection, Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSPullback, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PairNumberPullback

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiProjectivePrimeIntersection =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiProjectivePrimeIntersection", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.AssemblyCN\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.OfSteps\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSegreFlagCutContraction\nimport GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.Assembly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Num GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (ChartBundle chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mseg mcIdeal chartMon joinCoord bcCoord pullDeg liftVar fnField ck rootNum SameGeneric LatLE IsPull IsPullBC IsSubQuot QuotIso IsFrobPres FlagModel modelDeg)
set_option maxSynthPendingDepth 1

namespace GlobalTheory.CompanionTheory.Ar.Num.Contract

noncomputable section

theorem rename_liftVar_mem_pointIdeal {R Ω : Type*} [CommRing R] [Field Ω] [Algebra R Ω]
    {K K' : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)] {ι' : K' → Type}
    (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) {f : MRing ι R} (hf : f ∈ pointIdeal R x) :
    rename (liftVar ι') f ∈ pointIdeal R (joinCoord x z) := by
  have key : ((rename (Sum.inl : K → K ⊕ K') : MvPolynomial K Ω →ₐ[Ω] _).restrictScalars R).comp
      (pointConeMap R x) =
      (pointConeMap R (joinCoord x z)).comp (rename (liftVar ι')) := by
    apply MvPolynomial.algHom_ext
    intro p
    simp [pointConeMap, liftVar, joinCoord]
  have hf0 : pointConeMap R x f = 0 := hf
  have h := congrArg (fun φ => φ f) key
  simp only [AlgHom.comp_apply, hf0, map_zero] at h
  exact h.symm

theorem lowered_lt {a : WithBot ℕ∞} {c d n : ℕ} (h : a < ((d + 1 + c : ℕ) : WithBot ℕ∞)) (hn : d < n) :
    WithBot.map (fun e : ℕ∞ => WithTop.map (fun m : ℕ => (m : ℤ) - c) e) a <
      ((n : ℕ) : WithBot (WithTop ℤ)) := by
  induction a using WithBot.recBotCoe with
  | bot => exact WithBot.bot_lt_coe _
  | coe b =>
    induction b using ENat.recTopCoe with
    | top =>
      exfalso
      have h' : ((⊤ : ℕ∞) : WithBot ℕ∞) < (((d + 1 + c : ℕ) : ℕ∞) : WithBot ℕ∞) := h
      exact absurd (WithBot.coe_lt_coe.mp h') (by simp)
    | coe m =>
      have h' : (((m : ℕ) : ℕ∞) : WithBot ℕ∞) < (((d + 1 + c : ℕ) : ℕ∞) : WithBot ℕ∞) := h
      have hm : m < d + 1 + c := by exact_mod_cast WithBot.coe_lt_coe.mp h'
      show ((((m : ℤ) - c : ℤ) : WithTop ℤ) : WithBot (WithTop ℤ)) <
        (((n : ℤ) : WithTop ℤ) : WithBot (WithTop ℤ))
      exact WithBot.coe_lt_coe.mpr (WithTop.coe_lt_coe.mpr (by omega))

theorem dim_quot_le {A : Type*} [CommRing A] {I J : Ideal A} (h : I ≤ J) :
    ringKrullDim (A ⧸ J) ≤ ringKrullDim (A ⧸ I) :=
  ringKrullDim_le_of_surjective (Ideal.Quotient.factor h) (Ideal.Quotient.factor_surjective h)

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]

theorem vNumL_eq_zero_of_dim_le {ϖ : O} (hϖ : Irreducible ϖ)
    {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type} [∀ o, Fintype (ι' o)]
    {W : Ideal (MRing ι' O)} (hW : IsMultiProjPrime W) (hϖW : (C ϖ : MRing ι' O) ∈ W)
    {K : Type} [Fintype K] [DecidableEq K] (j : K ↪ K') {n : ℕ}
    (hdim : ringKrullDim (MRing ι' O ⧸ W) ≤ ((n + Fintype.card K' : ℕ) : WithBot ℕ∞))
    (hcon : GroundTheory.Heights₂.Heights.FieldNumbers.relDim
      (GroundTheory.Heights₂.Heights.FieldNumbers.contractPrime j (specialIdeal W)) <
        ((n : ℕ) : WithBot (WithTop ℤ)))
    (l : List (K' → ℤ)) (hl : l.length = n) (hlj : ∀ b ∈ l, ∀ o, o ∉ Set.range j → b o = 0) :
    vNumL W l = 0 := by
  subst hl
  obtain ⟨hQp, -, hrelIff, -⟩ :=
    SpecialIdealCorresp.full O ϖ hϖ K' ι' ⊥ W hW.isPrime hϖW
  have hQm := SpecialIdealMultiHomog.full O K' ι' W hW.multiHomog
  have hdimQ := SpecialQuotDim.full O ϖ hϖ K' ι' W hϖW
  change intNum (IsLocalRing.ResidueField O) (specialIdeal W) l.get = 0
  by_cases hcase : ringKrullDim (MRing ι' (IsLocalRing.ResidueField O) ⧸ specialIdeal W) <
      ((l.length + Fintype.card K' : ℕ) : WithBot ℕ∞)
  · exact IntNumVanish.full (IsLocalRing.ResidueField O) K' ι' l.length (specialIdeal W) hQp hQm
      (Or.inr hcase) l.get
  · have hdimEq : ringKrullDim (MRing ι' (IsLocalRing.ResidueField O) ⧸ specialIdeal W) =
        ((l.length + Fintype.card K' : ℕ) : WithBot ℕ∞) :=
      le_antisymm (hdimQ ▸ hdim) (not_lt.mp hcase)
    have hrelQ : GroundTheory.Heights₂.Heights.FieldNumbers.relDim (specialIdeal W) =
        ((l.length : ℕ) : WithBot (WithTop ℤ)) := by
      rw [GroundTheory.Heights₂.Heights.FieldNumbers.relDim, hdimEq]
      have : (((l.length + Fintype.card K' : ℕ) : ℤ) - Fintype.card K') = l.length := by
        push_cast; ring
      exact congrArg (fun z : ℤ => ((z : WithTop ℤ) : WithBot (WithTop ℤ))) this
    have hz := GroundTheory.Heights₂.Heights.FieldNumbers.ProjectionFormulaContracted.full
      (IsLocalRing.ResidueField O) K K' j ι' (specialIdeal W)
      ⟨hQp, hQm, hrelIff.mp hW.relevant⟩ l.length hrelQ hcon (fun i => l.get i ∘ j)
    rw [← hz]
    congr 1
    funext i
    exact (SegreFlagCutContraction.pullDeg_comp_of_eq_zero j _
      (hlj _ (List.get_mem l i))).symm

theorem specialIdeal_le_contract {Ω : Type} [Field Ω] [Algebra O Ω]
    {K K' : Type} [Fintype K] [DecidableEq K] [DecidableEq K'] {ι : K → Type} [∀ k, Fintype (ι k)]
    {ι' : K' → Type} (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω)
    {W : Ideal (ReciprocityTheory.ChartRestriction.G.Geo.MRingOver O (Sum.elim ι ι'))} (hW : pointIdeal O (joinCoord x z) ≤ W) :
    specialIdeal (pointIdeal O x) ≤
      (GroundTheory.Heights₂.Heights.FieldNumbers.contractPrime (Function.Embedding.inl : K ↪ K ⊕ K')
        (specialIdeal W) : Ideal (MRing ι (IsLocalRing.ResidueField O))) := by
  refine Ideal.map_le_iff_le_comap.mpr fun f hf => ?_
  show rename (liftVar ι') (MvPolynomial.map (IsLocalRing.residue O) f) ∈ specialIdeal W
  rw [← MvPolynomial.map_rename]
  exact Ideal.mem_map_of_mem _ (hW (rename_liftVar_mem_pointIdeal x z hf))

theorem relDim_contract_lt {Ω : Type} [Field Ω] [Algebra O Ω] {ϖ : O} (hϖ : Irreducible ϖ)
    {K K' : Type} [Fintype K] [DecidableEq K] [DecidableEq K'] {ι : K → Type} [∀ k, Fintype (ι k)]
    {ι' : K' → Type} (x : (Σ k, ι k) → Ω) (z : (Σ k, ι' k) → Ω) {d n : ℕ} (hdn : d < n)
    (hV : IsModelOver (pointIdeal O x) d)
    {W : Ideal (ReciprocityTheory.ChartRestriction.G.Geo.MRingOver O (Sum.elim ι ι'))} (hW : pointIdeal O (joinCoord x z) ≤ W) :
    GroundTheory.Heights₂.Heights.FieldNumbers.relDim
      (GroundTheory.Heights₂.Heights.FieldNumbers.contractPrime (Function.Embedding.inl : K ↪ K ⊕ K')
        (specialIdeal W)) < ((n : ℕ) : WithBot (WithTop ℤ)) := by
  have hb := SpecialDimBound.full O ϖ hϖ K ι (pointIdeal O x) d hV
  exact lowered_lt (lt_of_le_of_lt (dim_quot_le (specialIdeal_le_contract x z hW)) hb) hdn

end

end GlobalTheory.CompanionTheory.Ar.Num.Contract

namespace GlobalTheory.CompanionTheory.Ar.Num

theorem vNumL_pull_eq_zero_of_contracted : ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (Ω : Type) [Field Ω] [Algebra O Ω] (K : Type) [Fintype K] [DecidableEq K] (ι : K → Type) [∀ k, Fintype (ι k)] (x : (Σ k, ι k) → Ω) (ϖ : O), Irreducible ϖ → ∀ d r : ℕ, 0 < r → IsModelOver (pointIdeal O x) d → ∀ (K' : Type) [Fintype K'] [DecidableEq K'] (ι' : K' → Type) [∀ k, Fintype (ι' k)] (z : (Σ k, ι' k) → Ω) (W : Ideal (MRing (Sum.elim ι ι') O)), IsMultiProjPrime W → pointIdeal O (joinCoord x z) ≤ W → (C ϖ : MRing (Sum.elim ι ι') O) ∈ W → ∀ l : List (K → ℤ), l.length = d + r → ringKrullDim (MRing (Sum.elim ι ι') O ⧸ W) ≤ ((d + r + Fintype.card (K ⊕ K') : ℕ) : WithBot ℕ∞) → vNumL W (l.map (pullDeg (K' := K'))) = 0 := by
  intro O _ _ _ Ω _ _ K _ _ ι _ x ϖ hϖ d r hr hV K' _ _ ι' _ z W hW hPW hϖW l hl hdim
  refine Contract.vNumL_eq_zero_of_dim_le hϖ hW hϖW (Function.Embedding.inl : K ↪ K ⊕ K')
    (n := d + r) hdim (Contract.relDim_contract_lt hϖ x z (by omega) hV hPW)
    (l.map (pullDeg (K' := K'))) (by simpa using hl) ?_
  intro b hb o ho
  obtain ⟨a, -, rfl⟩ := List.mem_map.mp hb
  cases o with
  | inl k => exact absurd ⟨k, rfl⟩ ho
  | inr k => rfl

end GlobalTheory.CompanionTheory.Ar.Num
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiProjectivePrimeIntersection =====

-- ===== clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSPullback =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSPullback", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.InstFintypeSumElim\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.BundleObjects\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.FieldExtensionIntersectionInvariance\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.MultiProjectivePrimeIntersection\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PConeTrdegFnField\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDvrConeDimTrdeg\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PTwinBirationalJoin\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PVerticalDivisorJoinPullback\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PComponentDim\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PDivCycleFiniteSupport\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PMinimalPrimeMultiHomog\nimport GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.PSupSpanMultiHomog\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GroundTheory.Heights₂.Heights.NumbersDVR
open ReciprocityTheory.ChartRestriction.G.Geo (chartRing)
open GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.NumbersDVR.Bundles (mcIdeal joinCoord bcCoord pullDeg liftVar fnField modelDeg)

namespace PositivityTheory.Xgn.A_s_pullback

section Expand

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  {K : Type} [DecidableEq K] {ι : K → Type}

theorem vNumL_perm (W : Ideal (MRing ι O)) {l₁ l₂ : List (K → ℤ)} (h : l₁.Perm l₂) :
    vNumL W l₁ = vNumL W l₂ := by
  have : LeftCommutative (diffStep (K := K)) := ⟨fun a b h => by
    funext m
    simp only [diffStep]
    rw [sub_right_comm m a b]
    ring⟩
  simp only [vNumL, vNum, intNum, mixedDiff, List.ofFn_get]
  rw [h.foldr_eq]


open Classical in
noncomputable def vertEval (ϖ : O) (P : Ideal (MRing ι O)) (f : MRing ι O) (l : List (K → ℤ)) : ℤ :=
  cycEval (fun W => if (C ϖ : MRing ι O) ∈ W then vNumL W l else 0) (divCycle P f)

theorem cycEval_expand [Fintype K] [∀ k, Fintype (ι k)] (ϖ : O) (P : Ideal (MRing ι O))
    (f g : MRing ι O) (hv : ∀ W, ratDiv P f g W ≠ 0 → (C ϖ : MRing ι O) ∈ W)
    {σ : Type} (cls : σ → K → ℤ) (H : MvPolynomial σ ℤ) (Q : List (K → ℤ)) :
    cycEval (fun W => classNum cls H Q W) (ratDiv P f g) =
      ∑ μ ∈ H.support, H.coeff μ *
        (vertEval ϖ P f (classList cls μ ++ Q) - vertEval ϖ P g (classList cls μ ++ Q)) := by
  classical
  have hf := DivCycleFiniteSupport.proof O K ι P f
  have hg := DivCycleFiniteSupport.proof O K ι P g
  set S : Finset (Ideal (MRing ι O)) := hf.toFinset ∪ hg.toFinset with hS
  have hSf : ∀ W, divCycle P f W ≠ 0 → W ∈ S := fun W hW => by
    simp only [hS, Finset.mem_union, Set.Finite.mem_toFinset, Function.mem_support]
    exact Or.inl hW
  have hSg : ∀ W, divCycle P g W ≠ 0 → W ∈ S := fun W hW => by
    simp only [hS, Finset.mem_union, Set.Finite.mem_toFinset, Function.mem_support]
    exact Or.inr hW
  have key : ∀ (n Z : Ideal (MRing ι O) → ℤ), (∀ W, Z W ≠ 0 → W ∈ S) →
      cycEval n Z = ∑ W ∈ S, Z W * n W := by
    intro n Z hZ
    refine finsum_eq_sum_of_support_subset _ fun W hW => ?_
    exact hZ W (left_ne_zero_of_mul hW)
  have hSr : ∀ W, ratDiv P f g W ≠ 0 → W ∈ S := fun W hW => by
    by_contra hn
    apply hW
    have h1 : divCycle P f W = 0 := by
      by_contra h
      exact hn (hSf W h)
    have h2 : divCycle P g W = 0 := by
      by_contra h
      exact hn (hSg W h)
    simp [ratDiv, h1, h2]
  simp only [vertEval]
  rw [key _ _ hSr]
  simp only [key _ _ hSf, key _ _ hSg, ← Finset.sum_sub_distrib, Finset.mul_sum, classNum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun μ _ => Finset.sum_congr rfl fun W _ => ?_
  rw [← sub_mul]
  change ratDiv P f g W * _ = _ * (ratDiv P f g W * _)
  by_cases h0 : ratDiv P f g W = 0
  · simp [h0]
  · rw [if_pos (hv W h0)]
    ring

theorem vertEval_perm (ϖ : O) (P : Ideal (MRing ι O)) (f : MRing ι O) {l₁ l₂ : List (K → ℤ)}
    (h : l₁.Perm l₂) : vertEval ϖ P f l₁ = vertEval ϖ P f l₂ := by
  simp only [vertEval, vNumL_perm _ h]

end Expand

theorem classList_join_perm {K K' : Type} {N : ℕ} (x x' : Fin N → K → ℤ) (μ : (Fin N ⊕ Fin N) →₀ ℕ)
    (Q : List (K → ℤ)) :
    (classList (Sum.elim (fun i => joinDeg (K' := K') (x i)) (fun i => joinDeg (x' i))) μ ++
      Q.map joinDeg).Perm ((classList (Sum.elim x x') μ ++ Q).map (pullDeg (K' := K'))) := by
  rw [List.map_append]
  refine List.Perm.append ?_ (List.Perm.refl _)
  rw [← Multiset.coe_eq_coe, ← Multiset.map_coe]
  simp only [classList, Multiset.coe_toList, Multiset.map_map]
  refine Multiset.map_congr rfl fun s _ => ?_
  rcases s with s | s <;> rfl

theorem length_classList {K σ : Type} (cls : σ → K → ℤ) {H : MvPolynomial σ ℤ} {t : ℕ}
    (hH : H.IsHomogeneous t) {μ : σ →₀ ℕ} (hμ : μ ∈ H.support) :
    (classList cls μ).length = t := by
  have h : μ.degree = t := by
    by_contra hne
    exact (mem_support_iff.mp hμ) (hH.coeff_eq_zero hne)
  rw [← h]
  unfold classList
  rw [Multiset.length_toList, Multiset.card_map, Finsupp.card_toMultiset]
  rfl

theorem expansion_zero {N : ℕ} {G : MvPolynomial (Fin N) ℤ} (hG : G.IsHomogeneous 0)
    {Gs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ} (h : IsPairExpansion 0 G Gs) (i : Fin N) :
    Gs i = 0 := by
  classical
  have hC : ∀ j, Gs j = C ((Gs j).coeff 0) := fun j =>
    totalDegree_eq_zero_iff_eq_C.mp (Nat.le_zero.mp (h.homogeneous j).totalDegree_le)
  have hGC : G = C (G.coeff 0) :=
    totalDegree_eq_zero_iff_eq_C.mp (Nat.le_zero.mp hG.totalDegree_le)
  have e := h.expansion
  rw [hGC, rename_C, rename_C, sub_self] at e
  have e2 := congrArg (eval (fun s : Fin N ⊕ Fin N => if s = Sum.inl i then (1 : ℤ) else 0)) e

  rw [map_zero, map_sum, Finset.sum_eq_single i] at e2
  · rw [hC i] at e2 ⊢
    simp only [map_mul, map_sub, eval_X, eval_C] at e2
    simp only [if_true, reduceCtorEq, if_false, sub_zero, one_mul] at e2
    rw [← e2, map_zero]
  · intro j _ hj
    simp [hj]
  · simp

theorem length_term {K : Type} {N m n : ℕ} {G : MvPolynomial (Fin N) ℤ} (hG : G.IsHomogeneous m)
    {Gs : Fin N → MvPolynomial (Fin N ⊕ Fin N) ℤ} (h : IsPairExpansion m G Gs)
    {Q : List (K → ℤ)} (hQ : Q.length + m = n + 1) (cls : Fin N ⊕ Fin N → K → ℤ) (i : Fin N)
    {μ : (Fin N ⊕ Fin N) →₀ ℕ} (hμ : μ ∈ (Gs i).support) :
    (classList cls μ ++ Q).length = n := by
  rcases Nat.eq_zero_or_pos m with rfl | hm
  · rw [expansion_zero hG h i] at hμ
    simp at hμ
  · rw [List.length_append, length_classList cls (h.homogeneous i) hμ]
    omega

section Fields

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {Ω : Type} [Field Ω]
  [Algebra O Ω] {K : Type} [Fintype K] [DecidableEq K] {ι : K → Type}
  {K' : Type} [Fintype K'] [DecidableEq K'] {ι' : K' → Type}

theorem exists_coord_ne {y : (Σ k, ι k) → Ω} {d : ℕ} (h : IsModelOver (pointIdeal O y) d) (k : K) :
    ∃ i, y ⟨k, i⟩ ≠ 0 := by
  obtain ⟨i, hi⟩ := h.multiProj.relevant k
  refine ⟨i, fun h0 => hi ?_⟩
  simp [pointIdeal, RingHom.mem_ker, pointConeMap, h0]

theorem algebraMap_inj {y : (Σ k, ι k) → Ω} {d : ℕ} (h : IsModelOver (pointIdeal O y) d) :
    Function.Injective (algebraMap O Ω) := by
  refine (injective_iff_map_eq_zero _).mpr fun a ha => ?_
  rw [← Ideal.mem_bot, ← h.noTorsion]
  simp [pointIdeal, RingHom.mem_ker, pointConeMap, ha]

theorem trdeg_fnField [∀ k, Fintype (ι k)] {y : (Σ k, ι k) → Ω} {d : ℕ}
    (h : IsModelOver (pointIdeal O y) d) :
    Cardinal.toENat (Algebra.trdeg O (Algebra.adjoin O (fnField O y : Set Ω))) = d := by
  have h1 := DvrConeDimTrdeg.proof O K ι _ h.multiProj h.noTorsion
  have h2 : Algebra.trdeg O (MRing ι O ⧸ pointIdeal O y) = _ :=
    ConeTrdegFnField.proof O Ω (algebraMap_inj h) K ι y (exists_coord_ne h)
  rw [h.dim, h2, map_add (f := _), map_natCast] at h1
  generalize Cardinal.toENat (Algebra.trdeg O (Algebra.adjoin O (fnField O y : Set Ω))) = t at h1
  have h3 : ((d + 1 + Fintype.card K : ℕ) : ℕ∞) = t + Fintype.card K + 1 := by exact_mod_cast h1
  induction t using ENat.recTopCoe with
  | top => simp at h3
  | coe t =>
    have : d + 1 + Fintype.card K = t + Fintype.card K + 1 := by exact_mod_cast h3
    congr 1
    omega

omit [IsDomain O] [IsDiscreteValuationRing O] [DecidableEq K] in
theorem chartRing_mem (y : (Σ k, ι k) → Ω) (c : ∀ k, ι k) {a : Ω}
    (ha : a ∈ chartRing O (segreVec y) c) : a ∈ fnField O y := by
  induction ha using Algebra.adjoin_induction with
  | mem x hx =>
    obtain ⟨t, rfl⟩ := hx
    simp only [segreVec]
    rw [← Finset.prod_div_distrib]
    exact Subfield.prod_mem _ fun k _ => Subfield.subset_closure (Or.inr ⟨⟨k, t k, c k⟩, rfl⟩)
  | algebraMap r => exact Subfield.subset_closure (Or.inl ⟨r, rfl⟩)
  | add a b _ _ ha hb => exact add_mem ha hb
  | mul a b _ _ ha hb => exact mul_mem ha hb

omit [IsDomain O] [IsDiscreteValuationRing O] [DecidableEq K] in
theorem fnField_join {y : (Σ k, ι k) → Ω} {y' : (Σ k, ι' k) → Ω} (hy : ∀ k, ∃ i, y ⟨k, i⟩ ≠ 0)
    (hy' : ∀ k, ∃ i, y' ⟨k, i⟩ ≠ 0) (hb : IsBirationalJoin O y y') :
    fnField O (joinCoord y y') = fnField O y := by
  choose c hc using hy
  choose c' hc' using hy'
  have hc0 : segreVec y c ≠ 0 := Finset.prod_ne_zero_iff.mpr fun k _ => hc k
  have main : ∀ (k : K') (i j : ι' k), y' ⟨k, i⟩ / y' ⟨k, j⟩ ∈ fnField O y := by
      intro k i j
      by_cases hj : y' ⟨k, j⟩ = 0
      · rw [hj, div_zero]
        exact zero_mem _
      have hR : ∏ l ∈ Finset.univ \ {k}, y' ⟨l, c' l⟩ ≠ 0 :=
        Finset.prod_ne_zero_iff.mpr fun l _ => hc' l
      have h2 : segreVec y' (Function.update c' k j) ≠ 0 := by
        rw [BirationalJoin.segreVec_update]
        exact mul_ne_zero hj hR
      obtain ⟨a, ha, b, hb', hb0, e⟩ := hb c hc0 (Function.update c' k i) _ h2
      rw [BirationalJoin.segreVec_update, BirationalJoin.segreVec_update] at e
      have : y' ⟨k, i⟩ / y' ⟨k, j⟩ = a / b := by
        rw [div_eq_div_iff hj hb0]
        apply mul_right_cancel₀ hR
        linear_combination e
      rw [this]
      exact div_mem (chartRing_mem y c ha) (chartRing_mem y c hb')
  apply le_antisymm
  · refine Subfield.closure_le.mpr ?_
    rintro _ (⟨a, rfl⟩ | ⟨⟨k | k, i, j⟩, rfl⟩)
    · exact Subfield.subset_closure (Or.inl ⟨a, rfl⟩)
    · exact Subfield.subset_closure (Or.inr ⟨⟨k, i, j⟩, rfl⟩)
    · exact main k i j
  · refine Subfield.closure_le.mpr ?_
    rintro _ (⟨a, rfl⟩ | ⟨⟨k, i, j⟩, rfl⟩)
    · exact Subfield.subset_closure (Or.inl ⟨a, rfl⟩)
    · exact Subfield.subset_closure (Or.inr ⟨⟨.inl k, i, j⟩, rfl⟩)

omit [Fintype K] [DecidableEq K] [Fintype K'] [DecidableEq K'] in
theorem joinCoords_eq_joinCoord (y : (Σ k, ι k) → Ω) (y' : (Σ k, ι' k) → Ω) :
    joinCoords y y' = joinCoord y y' := by
  funext p
  obtain ⟨k | k, i⟩ := p <;> rfl

omit [IsDomain O] [IsDiscreteValuationRing O] [Fintype K] [DecidableEq K] [Fintype K']
  [DecidableEq K'] in
theorem modelDeg_eq_one {y : (Σ k, ι k) → Ω} {y' : (Σ k, ι' k) → Ω}
    (h : fnField O (joinCoord y y') = fnField O y) : modelDeg O y y' = 1 := by
  change Module.finrank (fnField O y)
    (IntermediateField.adjoin (fnField O y) (fnField O (joinCoord y y') : Set Ω)) = 1
  rw [h, IntermediateField.finrank_eq_one_iff, IntermediateField.adjoin_eq_bot_iff]
  intro a ha
  exact IntermediateField.mem_bot.mpr ⟨⟨a, ha⟩, rfl⟩

variable [∀ k, Fintype (ι k)] [∀ k, Fintype (ι' k)]

theorem vertEval_contract {ϖ : O} (hϖ : Irreducible ϖ) {y : (Σ k, ι k) → Ω} {y' : (Σ k, ι' k) → Ω}
    {d r : ℕ} (hr : 0 < r) (hy : IsModelOver (pointIdeal O y) d)
    (hj : IsModelOver (pointIdeal O (joinCoords y y')) (d + r)) {f : MRing ι O} {b : K → ℕ}
    (hf : IsMultiHomog f b) (hfP : f ∉ pointIdeal O y) {l : List (K → ℤ)} (hl : l.length = d + r) :
    vertEval ϖ (pointIdeal O (joinCoords y y')) (joinForm f) (l.map pullDeg) = 0 := by
  classical
  unfold vertEval cycEval
  refine finsum_eq_zero_of_forall_eq_zero fun W => ?_
  by_cases h0 : divCycle (pointIdeal O (joinCoords y y')) (joinForm f) W = 0
  · rw [h0, zero_mul]
  refine mul_eq_zero_of_right _ ?_
  beta_reduce
  by_cases hW : (C ϖ : MRing (Sum.elim ι ι') O) ∈ W
  swap
  · exact if_neg hW
  refine (if_pos hW).trans ?_
  have hf' := isMultiHomog_joinForm (ι' := ι') hf
  have hdim := ComponentDim.proof O ϖ hϖ _ _ _ _ hj _ _ hf'
    (fun h => hfP ((joinForm_mem_pointIdeal_iff O y y' f).mp h)) W h0 hW
  have hm : W ∈ (pointIdeal O (joinCoords y y') ⊔ Ideal.span {joinForm f}).minimalPrimes ∧
      IsRelevant W := by
    by_contra hn
    exact h0 (by unfold GroundTheory.Heights₂.Heights.NumbersDVR.divCycle; rw [dite_eq_right hn])
  have hh := MinimalPrimeMultiHomog.proof O _ _ _ W
    (SupSpanMultiHomog.proof O _ _ _ _ _ hj.multiProj.multiHomog hf') hm.1
  refine _root_.GlobalTheory.CompanionTheory.Ar.Num.vNumL_pull_eq_zero_of_contracted O Ω K ι y ϖ hϖ d r hr hy K' ι' y' W ⟨hm.1.1.1, hh, hm.2⟩ ?_ hW l hl hdim.le
  rw [← joinCoords_eq_joinCoord]
  exact le_sup_left.trans hm.1.1.2

theorem vertEval_push {ϖ : O} (hϖ : Irreducible ϖ) {y : (Σ k, ι k) → Ω} {y' : (Σ k, ι' k) → Ω}
    {d : ℕ} (hy : IsModelOver (pointIdeal O y) d)
    (hj : IsModelOver (pointIdeal O (joinCoords y y')) d)
    (hF : fnField O (joinCoord y y') = fnField O y) {f : MRing ι O} {b : K → ℕ}
    (hf : IsMultiHomog f b) (hfP : f ∉ pointIdeal O y) {l : List (K → ℤ)} (hl : l.length = d) :
    vertEval ϖ (pointIdeal O (joinCoords y y')) (joinForm f) (l.map pullDeg) =
      vertEval ϖ (pointIdeal O y) f l := by
  rw [joinCoords_eq_joinCoord] at hj ⊢
  have h := _root_.GlobalTheory.CompanionTheory.Relay.field_extension_intersection_invariance O Ω K ι y ϖ hϖ d hy Ω K' ι' y' hj b f hf hfP l hl
  rw [modelDeg_eq_one hF, Nat.cast_one, one_mul] at h
  exact h

end Fields

end PositivityTheory.Xgn.A_s_pullback

open PositivityTheory.Xgn.A_s_pullback in
theorem PositivityTheory.Xgn.t_s_pullback : GroundTheory.Heights₂.Heights.NumbersDVR.PairNumberPullback.Statement := by
  intro O _ _ _ ϖ hϖ Ω _ _ K _ _ ι _ K' _ _ ι' _ y y' d r hy hj N x x' f g hv m G hG Gs hGs Q hQ
  have hv' := fun i => VerticalDivisorJoinPullback.proof O ϖ Ω K ι K' ι' y y' _ _ _ (hv i)
  have hL : pairNum (pointIdeal O (joinCoords y y')) (fun i => joinDeg (x i))
        (fun i => joinDeg (x' i)) (fun i => joinForm (f i)) (fun i => joinForm (g i)) Gs
        (Q.map joinDeg) = ∑ i, ∑ μ ∈ (Gs i).support, (Gs i).coeff μ *
          (vertEval ϖ (pointIdeal O (joinCoords y y')) (joinForm (f i))
            ((classList (Sum.elim x x') μ ++ Q).map pullDeg) -
          vertEval ϖ (pointIdeal O (joinCoords y y')) (joinForm (g i))
            ((classList (Sum.elim x x') μ ++ Q).map pullDeg)) := by
    unfold pairNum
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [cycEval_expand ϖ _ _ _ (hv' i).vertical]
    refine Finset.sum_congr rfl fun μ _ => ?_
    rw [vertEval_perm ϖ _ _ (classList_join_perm x x' μ Q),
      vertEval_perm ϖ _ _ (classList_join_perm x x' μ Q)]
  rw [hL]
  refine ⟨fun hr => ?_, fun hb => ?_⟩
  · refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun μ hμ => ?_
    obtain ⟨bf, bg, hf, hg, -⟩ := (hv i).degrees
    have hl := length_term hG hGs hQ (Sum.elim x x') i hμ
    rw [vertEval_contract hϖ hr hy hj hf (hv i).num_not_mem hl,
      vertEval_contract hϖ hr hy hj hg (hv i).den_not_mem hl, sub_self, mul_zero]
  · have hF : fnField O (joinCoord y y') = fnField O y :=
      fnField_join (exists_coord_ne hy) (fun k => exists_coord_ne hj (Sum.inr k)) hb
    have hr : r = 0 := by
      have h1 := trdeg_fnField hy
      have h2 := trdeg_fnField hj
      rw [joinCoords_eq_joinCoord, hF, h1] at h2
      have : d = d + r := by exact_mod_cast h2
      omega
    subst hr
    unfold pairNum
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [cycEval_expand ϖ _ _ _ (hv i).vertical]
    refine Finset.sum_congr rfl fun μ hμ => ?_
    obtain ⟨bf, bg, hf, hg, -⟩ := (hv i).degrees
    have hl : (classList (Sum.elim x x') μ ++ Q).length = d :=
      length_term hG hGs hQ (Sum.elim x x') i hμ
    rw [vertEval_push hϖ hy hj hF hf (hv i).num_not_mem hl,
      vertEval_push hϖ hy hj hF hg (hv i).den_not_mem hl]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSPullback =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PairNumberPullback =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PairNumberPullback", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.StatementsBundles\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.XSPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory.CompanionTheory.Ar.Num.PairNumberPullback

alias main := _root_.PositivityTheory.Xgn.t_s_pullback

end GlobalTheory.CompanionTheory.Ar.Num.PairNumberPullback
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.PairNumberPullback =====
