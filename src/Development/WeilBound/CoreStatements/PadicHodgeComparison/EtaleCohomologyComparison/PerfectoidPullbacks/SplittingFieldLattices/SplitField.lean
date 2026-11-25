module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCohomologyRestrictionBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZKApply
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarMultiplicationShiftsFiltration
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenOfThickeningMorphism
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartDividedPowersGradedConstant
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartIsGoodStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsChartFromCoordinatesStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteModulesSerreClass
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty
public import Mathlib.RingTheory.Flat.TorsionFree
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftPOfBounds
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PdPBotPos
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp
import Std.Tactic.BVDecide.Normalize.Prop
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MemBoundariesZeroIff
import Mathlib.Tactic.Linter.HaveILetI
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientFiltrationBijectiveOfCover, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothPullBasisFiltration, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasisBOfBcOn, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableFamilyProperties, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapOAffine, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverLatticeBase, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsFgPullSqC, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensTransportSymm, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.SplitField

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientFiltrationBijectiveOfCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientFiltrationBijectiveOfCover", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FilteredCohomologyRestrictionBijective\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.QuoK

section Abstract
variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem toSq_bijective_of_bot (a₀ b : IdF A) (h0 : ∀ T, a₀.S T = ⊤) (hb : ∀ T, b.S T = ⊥) (j : ℕ) :
    Function.Bijective ((toSq a₀ b h0).pull j) := by
  refine CrystallineSemistableComparison.P.mapH_bij (toSq a₀ b h0).hom (fun n => ⟨fun f f' h => ?_, fun y => ?_⟩) j
  · funext s
    have h1 := congrArg Subtype.val (congrFun h s)
    have h2 := Ideal.Quotient.eq.1 h1
    rw [hb] at h2
    exact sub_eq_zero.1 h2
  · have hm : ∀ s : ComposableArrows C n, ∃ t : A.obj (s.obj (Fin.last n)),
        Ideal.Quotient.mk _ t = (show sqM a₀ b _ from y s).1 :=
      fun s => Ideal.Quotient.mk_surjective _
    choose t ht using hm
    exact ⟨t, funext fun s => Subtype.ext (ht s)⟩

end Abstract

section Concrete
variable {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

theorem ks_le_of_le {u s : ℕ} (hus : u ≤ s) (𝒱 : Set X.Opens) : KS q u 𝒱 ≤ KS q s 𝒱 := by
  rintro T ⟨⟨h1, h2⟩, hV⟩
  exact ⟨⟨le_bot_iff.1 (h1 ▸ T.pdPow_anti hus), h2⟩, hV⟩

theorem quoK_comm {u s : ℕ} (hus : u ≤ s) (𝒱 : Set X.Opens) (r : ℤ) (j : ℕ) (x : HdR q j) :
    ((incl (ks_le_of_le q hus 𝒱)).sq (incl_fil _ 0) (incl_fil _ r)).pull j (quoK q (KS q s 𝒱) r j x) =
      quoK q (KS q u 𝒱) r j x := by
  obtain ⟨z, hz, hx⟩ := (CrystallineSemistableComparison.P.cls_surj (CH.cx (CH.modF (thA (smFun X q)))) j).1 x
  subst hx
  rfl

theorem quoK_bij_self {u : ℕ} (𝒱 : Set X.Opens) (j : ℕ) (h : Function.Bijective (resK q (KS q u 𝒱) j)) :
    Function.Bijective (quoK q (KS q u 𝒱) (u : ℤ) j) := by
  have hB := toSq_bijective_of_bot (sFil (KS q u 𝒱) 0) (sFil (KS q u 𝒱) (u : ℤ)) (fun T => T.obj.pdPow_zero)
    (fun T => by
      have h := T.property.1.1
      change T.obj.pdPow ((u : ℤ).toNat) = ⊥
      rw [Int.toNat_natCast]
      exact h) j
  exact hB.comp h

end Concrete

theorem quoK_bijective : KH.KIso → ∀ {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    (U : Cov q) (s u : ℕ), (∀ α, U.d α < u) → u ≤ s → ∀ (𝒱 : Set X.Opens), sSup 𝒱 = ⊤ → ∀ (j : ℕ),
    Function.Bijective (quoK q (KS q s 𝒱) (u : ℤ) j) := by
  intro hK K _ _ X q U s u hd hus 𝒱 h𝒱 j
  have h1 := quoK_bij_self q 𝒱 j (hK q U u hd 𝒱 h𝒱 j).1
  have h2 := _root_.GlobalTheory.CompanionTheory.PDTrunc.pull_incl_bijective (TF 1 s) 1 u (Or.inr ⟨s, hus, rfl⟩) 𝒱 (ks_le_of_le q hus 𝒱) 0 (u : ℤ) le_rfl j
  refine (Function.Bijective.of_comp_iff' h2 _).1 ?_
  have e : (((incl (ks_le_of_le q hus 𝒱)).sq (incl_fil _ 0) (incl_fil _ (u : ℤ))).pull j) ∘ (quoK q (KS q s 𝒱) (u : ℤ) j) =
      quoK q (KS q u 𝒱) (u : ℤ) j := funext (quoK_comm q hus 𝒱 (u : ℤ) j)
  exact (congrArg Function.Bijective e).mpr h1

end GlobalTheory.CompanionTheory.QuoK
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientFiltrationBijectiveOfCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothPullBasisFiltration =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothPullBasisFiltration", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZKApply\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.BasisBase

theorem sqC_zK : ∀ {O A : Type} [CommRing O] [CommRing A] [Algebra O A] {I : Ideal A} (γ : DividedPowers I) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) (l s : ℕ) (𝒱 : Set X.Opens) (a : A) (t u r : ℤ) (ht : t ≤ 0)
    (ha : (smO γ q l s 𝒱).LeC a (sFil _ t) (sFil _ 0)) (hb : (smO γ q l s 𝒱).LeC a (sFil _ u) (sFil _ r)) (j : ℕ)
    (x : HdR q j),
    ((smO γ q l s 𝒱).sqC a ha hb).pull j (GlobalTheory.CompanionTheory.BasisBase.zK q (TO q l s 𝒱) t u ht j x) =
      quoM (TS γ q l s 𝒱) r j (a • muB γ q l s 𝒱 j x) := by
  intro O A _ _ _ I γ X q l s 𝒱 a t u r ht ha hb j x
  obtain ⟨⟨f, hf⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  rw [map_smul]
  change Submodule.Quotient.mk _ = a • Submodule.Quotient.mk _
  rw [← Submodule.Quotient.mk_smul]
  refine congrArg _ (Subtype.ext (funext fun c => ?_))
  refine Subtype.ext ?_
  exact congrArg (Ideal.Quotient.mk _) (Algebra.smul_def _ _).symm

end GlobalTheory.CompanionTheory.BasisBase
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothPullBasisFiltration =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasisBOfBcOn =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasisBOfBcOn", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ZKApply\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.QuotientFiltrationBijectiveOfCover\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarMultiplicationShiftsFiltration\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SmoothPullBasisFiltration\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.Interval.Finset.Box\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.BasisBase
universe w w'

theorem gr_decomp {K B : Type} [CommRing K] [CommRing B] [Algebra K B] {I : Ideal B} (γ : DividedPowers I) (m : ℕ)
    (S : GrSplit K γ m) :
    (∀ b : B, ∃ n : ∀ i, S.N i, b = ∑ i, S.ν i (n i)) ∧ ∀ n : ∀ i, S.N i, ∑ i, S.ν i (n i) = 0 → n = 0 := by
  have anti : ∀ {a b : ℕ}, a ≤ b → pdP γ b ≤ pdP γ a := fun h =>
    Ideal.span_mono fun _ ⟨l, hl, hr, hz⟩ => ⟨l, hl, h.trans hr, hz⟩
  constructor
  · have key : ∀ d, d ≤ m → ∀ x ∈ pdP γ (m - d), ∃ n : ∀ i, S.N i, x = ∑ i, S.ν i (n i) := by
      intro d
      induction d with
      | zero =>
        intro _ x hx
        rw [Nat.sub_zero, S.nil] at hx
        exact ⟨0, by simpa using Ideal.mem_bot.1 hx⟩
      | succ d ih =>
        intro hd x hx
        let i0 : Fin m := ⟨m - (d + 1), by omega⟩
        obtain ⟨n0, hn0⟩ := S.surj i0 x hx
        have e : (i0 : ℕ) + 1 = m - d := by simp only [i0]; omega
        rw [e] at hn0
        obtain ⟨n, hn⟩ := ih (by omega) _ hn0
        refine ⟨n + Pi.single i0 n0, ?_⟩
        have h1 : ∑ i, S.ν i ((Pi.single i0 n0 : ∀ i, S.N i) i) = S.ν i0 n0 := by
          rw [Finset.sum_eq_single i0]
          · simp
          · intro b _ hb
            simp [Pi.single_eq_of_ne hb]
          · simp
        simp only [Pi.add_apply, map_add (f := _), Finset.sum_add_distrib, h1, ← hn]
        ring
    intro b
    refine key m le_rfl b ?_
    have : pdP γ (m - m) = ⊤ := by
      rw [Nat.sub_self, Ideal.eq_top_iff_one]
      exact Ideal.subset_span ⟨[], by simp, by simp, by simp⟩
    rw [this]; trivial
  · intro n hn
    have key : ∀ k, ∀ i : Fin m, (i : ℕ) < k → n i = 0 := by
      intro k
      induction k with
      | zero => intro i hi; omega
      | succ k ih =>
        intro i hi
        rcases Nat.lt_succ_iff_lt_or_eq.1 hi with h | h
        · exact ih i h
        · have h2 : S.ν i (n i) = - ∑ b ∈ Finset.univ.erase i, S.ν b (n b) := by
            rw [eq_neg_iff_add_eq_zero, add_comm, Finset.sum_erase_add _ _ (Finset.mem_univ i)]
            exact hn
          refine S.inj i _ ?_
          rw [h2]
          refine Ideal.neg_mem_iff _ |>.2 (Ideal.sum_mem _ fun b hb => ?_)
          have hbi : b ≠ i := Finset.ne_of_mem_erase hb
          rcases lt_or_gt_of_ne (Fin.val_ne_of_ne hbi) with h3 | h3
          · rw [ih b (by omega), map_zero]
            exact Ideal.zero_mem _
          · exact anti (by omega) (S.mem b _)
    funext i
    exact key _ i (Nat.lt_succ_self _)

theorem tens_dual {K N V : Type*} {M : Type w} [Field K] [AddCommGroup N] [Module K N] [AddCommGroup V] [Module K V]
    [AddCommGroup M] [Module K M] (e : V →ₗ[K] M) (φ : V →ₗ[K] K) (h : ∀ x, e x = 0 → φ x = 0) {a : ℕ}
    (n : Fin a → N) (b : Fin a → V) (hz : ∑ t, n t ⊗ₜ[K] e (b t) = 0) : ∑ t, φ (b t) • n t = 0 := by
  obtain ⟨ψ, hψ⟩ := LinearMap.exists_extend
    (((LinearMap.ker e).liftQ φ fun x hx => h x hx).comp e.quotKerEquivRange.symm.toLinearMap)
  have h1 : ∀ x, ψ (e x) = φ x := by
    intro x
    have := LinearMap.congr_fun hψ ⟨e x, LinearMap.mem_range_self e x⟩
    simp only [LinearMap.comp_apply, Submodule.subtype_apply] at this
    rw [this]
    have h2 : e.quotKerEquivRange.symm ⟨e x, LinearMap.mem_range_self e x⟩ = Submodule.Quotient.mk x := by
      rw [LinearEquiv.symm_apply_eq]; rfl
    simp [h2]
  have := congrArg (fun z => TensorProduct.rid K N (LinearMap.lTensor N ψ z)) hz

  simpa [map_sum, h1] using this

theorem tens_span {K N V : Type*} {M : Type w} [Field K] [AddCommGroup N] [Module K N] [AddCommGroup V] [Module K V]
    [AddCommGroup M] [Module K M] (e : V →ₗ[K] M) (he : Function.Surjective e) {a : ℕ} (bs : Module.Basis (Fin a) K V)
    (z : N ⊗[K] M) : ∃ n : Fin a → N, z = ∑ t, n t ⊗ₜ[K] e (bs t) := by
  induction z using TensorProduct.induction_on with
  | zero => exact ⟨0, by simp⟩
  | tmul x y =>
    obtain ⟨v, rfl⟩ := he y
    refine ⟨fun t => bs.repr v t • x, ?_⟩
    conv_lhs => rw [← bs.sum_repr v]

    rw [map_sum, TensorProduct.tmul_sum]
    refine Finset.sum_congr rfl fun t _ => ?_
    rw [map_smul, TensorProduct.tmul_smul, TensorProduct.smul_tmul']
  | add x y hx hy =>
    obtain ⟨n, rfl⟩ := hx
    obtain ⟨n', rfl⟩ := hy
    exact ⟨n + n', by simp [TensorProduct.add_tmul, Finset.sum_add_distrib]⟩

theorem core_expand {K B : Type} [Field K] [CommRing B] [Algebra K B] {I : Ideal B} {γ : DividedPowers I} {m : ℕ}
    (S : GrSplit K γ m) {V : Type w'} [AddCommGroup V] [Module K V] {W : Type w'} {Y : Type w'} [AddCommGroup W] [Module B W]
    [AddCommGroup Y] {M : Fin m → Type w} [∀ i, AddCommGroup (M i)] [∀ i, Module K (M i)]
    (e : ∀ i, V →ₗ[K] M i) (μ : V → W) (qo : W →+ Y) {f : ∀ i, S.N i → M i → Y}
    (G : (∀ i, S.N i ⊗[K] M i) ≃+ Y) (hG : ∀ i n x, G (Pi.single i (n ⊗ₜ x)) = f i n x)
    (hf : ∀ i n x, f i n (e i x) = qo (S.ν i n • μ x)) {a : ℕ} (b : Fin a → V) (n : ∀ i, Fin a → S.N i) :
    qo (∑ t, (∑ i, S.ν i (n i t)) • μ (b t)) = G fun i => ∑ t, n i t ⊗ₜ[K] e i (b t) := by
  have h1 : (fun i => ∑ t, n i t ⊗ₜ[K] e i (b t)) =
      ∑ t, ∑ i, (Pi.single i (n i t ⊗ₜ[K] e i (b t)) : ∀ i, S.N i ⊗[K] M i) := by
    funext i
    simp only [Finset.sum_apply]
    simp

  rw [h1, map_sum]

  simp only [map_sum, hG, hf, Finset.sum_smul]

theorem dividedPowerFiltration_anti' {B : Type} [CommRing B] {I : Ideal B} (γ : DividedPowers I) {a b : ℕ} (h : a ≤ b) :
    pdP γ b ≤ pdP γ a :=
  Ideal.span_mono fun _ ⟨l, hl, hr, hz⟩ => ⟨l, hl, h.trans hr, hz⟩

theorem core_basis {K B : Type} [Field K] [CommRing B] [Algebra K B] {I : Ideal B} {γ : DividedPowers I} {m : ℕ}
    (S : GrSplit K γ m) {V : Type w'} [AddCommGroup V] [Module K V] {W : Type w'} {Y : Type w'} [AddCommGroup W] [Module B W]
    [AddCommGroup Y] {M : Fin m → Type w} [∀ i, AddCommGroup (M i)] [∀ i, Module K (M i)]
    (e : ∀ i, V →ₗ[K] M i) (μ : V → W) (qo : W →+ Y) {f : ∀ i, S.N i → M i → Y}
    (hT : Tens K f) (hf : ∀ i n x, f i n (e i x) = qo (S.ν i n • μ x)) {a : ℕ} (bs : Module.Basis (Fin a) K V)
    (he : ∀ i, Function.Bijective (e i)) (hq : Function.Bijective qo) (w : W) :
    ∃! g : Fin a → B, w = ∑ t, g t • μ (bs t) := by
  obtain ⟨G, hG⟩ := hT
  have uniq : ∀ g : Fin a → B, ∑ t, g t • μ (bs t) = 0 → g = 0 := by
    intro g hg0
    choose n hn using fun t => (gr_decomp γ m S).1 (g t)
    have h1 := core_expand S e μ qo G hG hf (⇑bs) (fun i t => n t i)
    have hsum : (∑ t, (∑ i, S.ν i (n t i)) • μ (bs t)) = 0 := by
      rw [← hg0]; exact Finset.sum_congr rfl fun t _ => by rw [← hn t]
    rw [hsum, map_zero] at h1
    have h2 : (fun i => ∑ t, n t i ⊗ₜ[K] e i (bs t)) = 0 := G.injective (by rw [← h1, map_zero])
    have h3 : ∀ i t', n t' i = 0 := by
      intro i t'
      have hz := congrFun h2 i
      have := tens_dual (e i) (bs.coord t') (fun x hx => by
        rw [(he i).1 (hx.trans (map_zero _).symm)]; simp) (fun t => n t i) (⇑bs) hz
      simpa [Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply] using this
    funext t
    rw [hn t]
    simp [h3]
  have ex : ∃ g : Fin a → B, w = ∑ t, g t • μ (bs t) := by
    have hz : ∀ i, ∃ n : Fin a → S.N i, G.symm (qo w) i = ∑ t, n t ⊗ₜ[K] e i (bs t) :=
      fun i => tens_span (e i) (he i).2 bs _
    choose n hn using hz
    refine ⟨fun t => ∑ i, S.ν i (n i t), hq.1 ?_⟩
    rw [core_expand S e μ qo G hG hf (⇑bs) n]
    have : (fun i => ∑ t, n i t ⊗ₜ[K] e i (bs t)) = G.symm (qo w) := funext fun i => (hn i).symm
    rw [this, G.apply_symm_apply]
  obtain ⟨g, hg⟩ := ex
  refine ⟨g, hg, fun g' hg' => ?_⟩
  have := uniq (g' - g) (by
    simp only [Pi.sub_apply, sub_smul, Finset.sum_sub_distrib, ← hg, ← hg', sub_self])
  exact sub_eq_zero.1 this

theorem core_filt {K B : Type} [Field K] [CommRing B] [Algebra K B] {I : Ideal B} {γ : DividedPowers I} {m : ℕ}
    (S : GrSplit K γ m) {V : Type w'} [AddCommGroup V] [Module K V] {W : Type w'} {Y : Type w'} [AddCommGroup W] [Module B W]
    [AddCommGroup Y] {M : Fin m → Type w} [∀ i, AddCommGroup (M i)] [∀ i, Module K (M i)]
    (e : ∀ i, V →ₗ[K] M i) (μ : V → W) (qo : W →+ Y) {f : ∀ i, S.N i → M i → Y}
    (hT : Tens K f) (hf : ∀ i n x, f i n (e i x) = qo (S.ν i n • μ x)) {a : ℕ} (bs : Fin a → V)
    (φ : V →ₗ[K] K) (k : ℕ) (hk : ∀ i : Fin m, k ≤ (i : ℕ) ∨ ∀ x, e i x = 0 → φ x = 0)
    (g : Fin a → B) (hg : qo (∑ t, g t • μ (bs t)) = 0) :
    ∑ t, g t * algebraMap K B (φ (bs t)) ∈ pdP γ k := by
  obtain ⟨G, hG⟩ := hT
  choose n hn using fun t => (gr_decomp γ m S).1 (g t)
  have h1 := core_expand S e μ qo G hG hf bs (fun i t => n t i)
  have hsum : (∑ t, (∑ i, S.ν i (n t i)) • μ (bs t)) = ∑ t, g t • μ (bs t) :=
    Finset.sum_congr rfl fun t _ => by rw [← hn t]
  rw [hsum, hg] at h1
  have h2 : (fun i => ∑ t, n t i ⊗ₜ[K] e i (bs t)) = 0 := G.injective (by rw [← h1, map_zero])
  have key : ∑ t, g t * algebraMap K B (φ (bs t)) =
      ∑ i, ∑ t, S.ν i (n t i) * algebraMap K B (φ (bs t)) := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun t _ => ?_
    rw [hn t, Finset.sum_mul]
  rw [key]
  refine Ideal.sum_mem _ fun i _ => ?_
  rcases hk i with hki | hki
  · exact Ideal.sum_mem _ fun t _ => Ideal.mul_mem_right _ _ (dividedPowerFiltration_anti' γ hki (S.mem i _))
  · have h4 := tens_dual (e i) φ hki (fun t => n t i) bs (congrFun h2 i)
    have h3 := congrArg (S.ν i) h4

    rw [map_sum, map_zero] at h3
    have h5 : ∑ t, S.ν i (n t i) * algebraMap K B (φ (bs t)) = 0 := by
      rw [← h3]
      refine Finset.sum_congr rfl fun t _ => ?_
      rw [map_smul, Algebra.smul_def, mul_comm]
    rw [h5]
    exact Ideal.zero_mem _

theorem transport_gen {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}
    (a a' b : IdF A) (e : a = a') (ha : ∀ T, a.S T = ⊤) (ha' : ∀ T, a'.S T = ⊤) (j : ℕ) :
    ∃ E : CH.H (sq a b) j ≃+ CH.H (sq a' b) j, ∀ y, E ((toSq a b ha).pull j y) = (toSq a' b ha').pull j y := by
  subst e
  exact ⟨AddEquiv.refl _, fun _ => rfl⟩

theorem zK_transport {K : Type} [CommRing K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    (Q : ObjectProperty (Thick (smFun X q))) (t u : ℤ) (ht : t ≤ 0) (j : ℕ) :
    ∃ E : HQ Q t u j ≃+ HQ Q 0 u j, ∀ x, E (zK q Q t u ht j x) = quoK q Q u j x := by
  have e : sFil Q t = sFil Q 0 := by
    have : thFil (smFun X q) t = thFil (smFun X q) 0 := by
      unfold thFil
      congr 1
      funext T
      rw [Int.toNat_of_nonpos ht]
      rfl
    simp only [sFil, this]
  obtain ⟨E, hE⟩ := transport_gen (sFil Q t) (sFil Q 0) (sFil Q u) e _ (fun T => T.obj.pdPow_zero) j
  exact ⟨E, fun x => hE _⟩

theorem quoM_bij {b : Base} {L : b.Fun} (Q : ObjectProperty (Thick L)) (s : ℕ) (h : ∀ T, Q T → T.pdPow s = ⊥) (j : ℕ) :
    Function.Bijective (quoM Q s j) := by
  refine _root_.GlobalTheory.CompanionTheory.QuoK.toSq_bijective_of_bot _ _ _ (fun T => ?_) j
  change T.obj.pdPow ((s : ℤ).toNat) = ⊥
  simpa using h _ T.property

theorem dividedPowerFiltration_dividedPowersBot_of_one_le' {K : Type} [Field K] {r : ℕ} (hr : 1 ≤ r) : pdP (dividedPowersBot K) r = ⊥ := by
  refine Ideal.span_eq_bot.2 ?_
  rintro _ ⟨l, hl, hs, rfl⟩
  have h : ∃ p ∈ l, p.1 ≠ 0 := by
    by_contra h
    push Not at h
    have : (l.map Prod.fst).sum = 0 := List.sum_eq_zero (by simpa using h)
    omega
  obtain ⟨p, hp, h0⟩ := h
  refine List.prod_eq_zero (List.mem_map.2 ⟨p, hp, ?_⟩)
  have e : p.2 = 0 := hl p hp
  rw [e]
  exact (dividedPowersBot K).dpow_eval_zero h0

theorem tfbase_K {K : Type} [Field K] [CharZero K] {s : ℕ} (hs : 1 ≤ s) : TFBase (dividedPowersBot K) 1 s := by
  refine { nil := dividedPowerFiltration_dividedPowersBot_of_one_le' hs, tf := ?_, dv := ?_ }
  · intro r x h
    simpa using h
  · intro n hn
    exact ⟨0, (n : K)⁻¹, by
      have : (n : K) ≠ 0 := Nat.cast_ne_zero.2 hn
      simp [this]⟩

theorem tfbase_B {K B : Type} [Field K] [CharZero K] [CommRing B] [Algebra K B] {I : Ideal B} (γ : DividedPowers I) {s : ℕ}
    (h : pdP γ s = ⊥) : TFBase γ 1 s := by
  refine { nil := h, tf := ?_, dv := ?_ }
  · intro r x hx
    simpa using hx
  · intro n hn
    exact ⟨0, algebraMap K B (n : K)⁻¹, by
      have : (n : K) ≠ 0 := Nat.cast_ne_zero.2 hn
      rw [pow_zero, ← map_natCast (algebraMap K B) n, ← map_mul, mul_inv_cancel₀ this, map_one]⟩

theorem main : BcOn False → KH.KIso → BasisB := by
  intro hB hK K B _ _ _ _ I γ s m hm hms X q U hU 𝒱 h𝒱 j a bs
  rcases Nat.eq_zero_or_pos m with rfl | hm0
  · have hone : (1 : B) ∈ pdP γ 0 := Ideal.subset_span ⟨[], by simp, by simp, by simp⟩
    rw [hm] at hone
    have hsub : Subsingleton B := subsingleton_of_zero_eq_one ((Ideal.mem_bot.1 hone).symm)
    have hW : ∀ w : HO (TS γ q 1 s 𝒱) j, w = 0 := fun w => by
      have : (1 : B) • w = (0 : B) • w := by rw [Subsingleton.elim (1 : B) 0]
      rwa [one_smul, zero_smul] at this
    refine ⟨fun w => ⟨fun _ => 0, ?_, fun y _ => Subsingleton.elim _ _⟩, fun r hr g hg c φ hφ => ?_⟩
    · exact (hW _).trans (hW _).symm
    · rw [Subsingleton.elim (∑ t, g t * algebraMap K B (φ (bs t))) 0]
      exact Ideal.zero_mem _
  obtain ⟨S⟩ := _root_.GlobalTheory.CompanionTheory.GrSplitField.nonempty_grSplit (K := K) γ m hm
  have hs : 1 ≤ s := hm0.trans_le hms
  have hsB : pdP γ s = ⊥ := le_bot_iff.1 (hm ▸ Ideal.span_mono fun _ ⟨l, hl, hr, hz⟩ => ⟨l, hl, hms.trans hr, hz⟩)
  have hO : TFBase (dividedPowersBot K) 1 s := tfbase_K hs
  have hA : TFBase γ 1 s := tfbase_B (K := K) γ hsB
  have hd : ∀ α, U.d α < s := fun α => by have := hU α; omega
  have LC := fun (i : Fin m) n r => _root_.GlobalTheory.CompanionTheory.LecShift.leC_shift (O := K) γ q 1 s 𝒱 i (S.ν i n) (S.mem i n) r
  have T := fun (r : ℕ) (hr : r ≤ s) => hB γ 1 s m hO hA S q 𝒱 (Or.inr ⟨not_false, ⟨U⟩, h𝒱⟩) 0 r (by positivity)
    (by exact_mod_cast hr) (fun i n => LC i n 0) (fun i n => LC i n r) j
  have hne : ∀ i : Fin m, (0 : ℤ) - (i : ℕ) ≤ 0 := fun i => by omega
  refine ⟨fun w => ?_, ?_⟩
  · refine core_basis S (fun i => zK q (TO q 1 s 𝒱) (0 - (i : ℕ)) (s - (i : ℕ)) (hne i) j) (muB γ q 1 s 𝒱 j)
      (quoM (TS γ q 1 s 𝒱) s j).toAddMonoidHom (T s le_rfl) (fun i n x => _root_.GlobalTheory.CompanionTheory.BasisBase.sqC_zK γ q 1 s 𝒱 _ _ _ _ _ _ _ j x) bs
      (fun i => ?_) (quoM_bij _ s (fun T hT => hT.1.1) j) w
    obtain ⟨E, hE⟩ := zK_transport q (TO q 1 s 𝒱) (0 - (i : ℕ)) (s - (i : ℕ)) (hne i) j
    have hb : Function.Bijective (quoK q (KS q s 𝒱) ((s - (i : ℕ) : ℕ) : ℤ) j) :=
      _root_.GlobalTheory.CompanionTheory.QuoK.quoK_bijective hK q U s (s - i) (fun α => by have := hU α; have := i.2; omega) (by omega) 𝒱 h𝒱 j
    have e1 : (((s - (i : ℕ) : ℕ) : ℤ)) = (s : ℤ) - (i : ℕ) := by have := i.2; omega
    rw [e1] at hb
    have : E ∘ (zK q (TO q 1 s 𝒱) (0 - (i : ℕ)) (s - (i : ℕ)) (hne i) j) = quoK q (KS q s 𝒱) ((s : ℤ) - (i : ℕ)) j :=
      funext hE
    exact (Function.Bijective.of_comp_iff' E.bijective _).1 (this ▸ hb)
  · intro r hr g hg c φ hφ
    refine core_filt S (fun i => zK q (TO q 1 s 𝒱) (0 - (i : ℕ)) (r - (i : ℕ)) (hne i) j) (muB γ q 1 s 𝒱 j)
      (quoM (TS γ q 1 s 𝒱) r j).toAddMonoidHom (T r hr) (fun i n x => _root_.GlobalTheory.CompanionTheory.BasisBase.sqC_zK γ q 1 s 𝒱 _ _ _ _ _ _ _ j x) bs φ (r - c)
      (fun i => ?_) g hg
    by_cases hi : r - c ≤ (i : ℕ)
    · exact Or.inl hi
    refine Or.inr fun x hx => hφ x ?_
    obtain ⟨E, hE⟩ := zK_transport q (TO q 1 s 𝒱) (0 - (i : ℕ)) (r - (i : ℕ)) (hne i) j
    have h0 : quoK q (KS q s 𝒱) ((r - (i : ℕ) : ℕ) : ℤ) j x = 0 := by
      have e1 : (((r - (i : ℕ) : ℕ) : ℤ)) = (r : ℤ) - (i : ℕ) := by omega
      rw [e1, ← hE x, hx]
      exact E.toAddMonoidHom.map_zero
    have h1 := ((hK q U s hd 𝒱 h𝒱 j).2 (r - i) (by omega) x).2 h0
    exact GlobalTheory.LogCris.fil_anti _ _ (by omega) h1

end GlobalTheory.CompanionTheory.BasisBase
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasisBOfBcOn =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableFamilyProperties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableFamilyProperties", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenFiniteInfIff\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.InOpenOfThickeningMorphism\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.StFam

theorem st_all :
    (∀ {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (Q : ObjectProperty (Thick (nlFun γ p X q κ))) {ι : Type} (U : ι → X.Opens) (α : ι) ⦃T T' : Thick (nlFun γ p X q κ)⦄ (φ : T ⟶ T'), St Q {U α} T → (∃ β, St Q {U β} T') → St Q {U α} T') ∧ (∀ {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (Q : ObjectProperty (Thick (nlFun γ p X q κ))) {ι : Type} (U : ι → X.Opens), (fun T => ∃ α, St Q {U α} T) = St Q (Set.range U)) ∧ (∀ {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (Q : ObjectProperty (Thick (nlFun γ p X q κ))) {ι : Type} (U : ι → X.Opens) (S : Finset ι), S.Nonempty → capS (fun α => St Q {U α}) S = St Q {⨅ α ∈ S, U α}) ∧ (∀ {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (Q : ObjectProperty (Thick (nlFun γ p X q κ))) {ι : Type} (U : ι → X.Opens) {n : ℕ} (i : Fin (n + 1) → ι), capT (fun α => St Q {U α}) i = St Q {capO U i}) := by
  have one : ∀ {O : Type} [CommRing O] {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ}
      {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I}
      (Q : ObjectProperty (Thick (nlFun γ p X q κ))) (V : X.Opens) (T : Thick (nlFun γ p X q κ)),
      St Q {V} T ↔ Q T ∧ InU V T := by
    intro O _ R _ I γ p X q κ Q V T
    constructor
    · rintro ⟨hQ, W, hW, hT⟩
      rw [Set.mem_singleton_iff] at hW
      subst hW
      exact ⟨hQ, hT⟩
    · rintro ⟨hQ, hT⟩
      exact ⟨hQ, V, rfl, hT⟩
  refine ⟨?_, ?_, ?_, ?_⟩
  · intro O _ R _ I γ p X q κ Q ι U α T T' φ h h'
    obtain ⟨β, hβ⟩ := h'
    exact (one Q _ T').2 ⟨((one Q _ T').1 hβ).1, GlobalTheory.CompanionTheory.ThickPt.inU_map (U α) φ ((one Q _ T).1 h).2⟩
  · intro O _ R _ I γ p X q κ Q ι U
    funext T
    refine propext ⟨?_, ?_⟩
    · rintro ⟨α, hα⟩
      obtain ⟨hQ, hT⟩ := (one Q _ T).1 hα
      exact ⟨hQ, U α, ⟨α, rfl⟩, hT⟩
    · rintro ⟨hQ, V, ⟨α, rfl⟩, hT⟩
      exact ⟨α, (one Q _ T).2 ⟨hQ, hT⟩⟩
  · intro O _ R _ I γ p X q κ Q ι U S hS
    funext T
    refine propext ⟨?_, ?_⟩
    · intro h
      obtain ⟨a, ha⟩ := hS
      exact (one Q _ T).2 ⟨((one Q _ T).1 (h a ha)).1,
        (GlobalTheory.CompanionTheory.Thick.inU_iInf_finset U S T).2 fun α hα => ((one Q _ T).1 (h α hα)).2⟩
    · intro h α hα
      obtain ⟨hQ, hT⟩ := (one Q _ T).1 h
      exact (one Q _ T).2 ⟨hQ, (GlobalTheory.CompanionTheory.Thick.inU_iInf_finset U S T).1 hT α hα⟩
  · intro O _ R _ I γ p X q κ Q ι U n i
    have key : ∀ T : Thick (nlFun γ p X q κ), InU (capO U i) T ↔ ∀ a, InU (U (i a)) T := by
      intro T
      have h := GlobalTheory.CompanionTheory.Thick.inU_iInf_finset (fun a => U (i a)) (Finset.univ : Finset (Fin (n + 1))) T
      have e : (⨅ a ∈ (Finset.univ : Finset (Fin (n + 1))), U (i a)) = capO U i := by
        simp [capO]
      rw [e] at h
      simpa using h
    funext T
    refine propext ⟨?_, ?_⟩
    · intro h
      exact (one Q _ T).2 ⟨((one Q _ T).1 (h 0)).1, (key T).2 fun a => ((one Q _ T).1 (h a)).2⟩
    · intro h a
      obtain ⟨hQ, hT⟩ := (one Q _ T).1 h
      exact (one Q _ T).2 ⟨hQ, (key T).1 hT a⟩

end GlobalTheory.CompanionTheory.StFam
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableFamilyProperties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapOAffine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapOAffine", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartDividedPowersGradedConstant\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChartIsGoodStatement\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsChartFromCoordinatesStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FiniteModulesSerreClass\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StableFamilyProperties\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLocalFrameOfCoords\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MemBoundariesZeroIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.FinOverO

section Les

variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {A : C ⥤ CommAlgCat.{0} R}

theorem sub_H {R : Type} [CommRing R] (K : Cx.{1} R) (n : ℕ) (h : Subsingleton (K.X n)) : Subsingleton (K.H n) :=
  ⟨fun x y => by
    obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ x
    obtain ⟨b, rfl⟩ := Submodule.Quotient.mk_surjective _ y
    exact congrArg _ (Subtype.ext (Subsingleton.elim _ _))⟩

theorem sub_CH (F : C ⥤ ModuleCat.{0} R) (h : ∀ T, Subsingleton (F.obj T)) (n : ℕ) : Subsingleton (CH.H F n) :=
  sub_H (CH.cx F) n ⟨fun x y => funext fun s => (h _).elim _ _⟩

theorem sq_sub (a b : IdF A) (h : ∀ T, a.S T ≤ b.S T) (T : C) : Subsingleton ((sq a b).obj T) :=
  ⟨fun x y => by
    have key : ∀ z : sqM a b T, z = 0 := fun z => by
      obtain ⟨z, hz⟩ := z
      obtain ⟨w, hw, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 hz
      exact Subtype.ext (Ideal.Quotient.eq_zero_iff_mem.2 (h T hw))
    exact (key x).trans (key y).symm⟩

variable (a c b : IdF A) (hbc : ∀ T, b.S T ≤ c.S T) (hca : ∀ T, c.S T ≤ a.S T)

theorem tau_inj (T : C) (x y : (sq c b).obj T)
    (h : (sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).τ T x =
      (sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).τ T y) : x = y := by
  obtain ⟨x, hx⟩ := x
  obtain ⟨y, hy⟩ := y
  obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective y
  have h1 : Ideal.Quotient.mk (b.S T) x = Ideal.Quotient.mk (b.S T) y :=
    congrArg (fun z => (show sqM a b T from z).1) h
  exact Subtype.ext h1

theorem tau_surj (T : C) (z : (sq a c).obj T) :
    ∃ y : (sq a b).obj T, (sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).τ T y = z := by
  obtain ⟨x, hx⟩ := z
  obtain ⟨w, hw, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 hx
  exact ⟨sqMk a b w hw, rfl⟩

theorem tau_ex (T : C) (z : (sq a b).obj T)
    (h : (sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).τ T z = 0) :
    ∃ y : (sq c b).obj T, (sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).τ T y = z := by
  obtain ⟨x, hx⟩ := z
  obtain ⟨w, hw, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 hx
  have h2 : w ∈ c.S T := Ideal.Quotient.eq_zero_iff_mem.1 (congrArg Subtype.val h)
  exact ⟨sqMk c b w h2, rfl⟩

theorem tau_comp (T : C) (y : (sq c b).obj T) :
    (sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).τ T
      ((sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).τ T y) = 0 := by
  obtain ⟨x, hx⟩ := y
  obtain ⟨w, hw, rfl⟩ := (Ideal.mem_map_iff_of_surjective _ Ideal.Quotient.mk_surjective).1 hx
  exact Subtype.ext (Ideal.Quotient.eq_zero_iff_mem.2 hw)

theorem sq_exact (j : ℕ) :
    Function.Exact ((sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).pull j)
      ((sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).pull j) := by
  have inj : ∀ n, Function.Injective ((sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).hom.f n) :=
    fun n f g h => funext fun s => tau_inj a c b hca _ _ _ (congrFun h s)
  have surj : ∀ n, Function.Surjective ((sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).hom.f n) := by
    intro n f
    choose y hy using fun s : ComposableArrows C n => tau_surj a c b hbc _ (f s)
    exact ⟨y, funext hy⟩
  have ex : ∀ n, Function.Exact ((sqLe (a := c) (b := b) (a' := a) (b' := b) hca (fun _ => le_rfl)).hom.f n)
      ((sqLe (a := a) (b := b) (a' := a) (b' := c) (fun _ => le_rfl) hbc).hom.f n) := by
    intro n f
    constructor
    · intro h
      choose y hy using fun s : ComposableArrows C n => tau_ex a c b hbc hca _ (f s) (congrFun h s)
      exact ⟨y, funext hy⟩
    · rintro ⟨g, rfl⟩
      exact funext fun s => tau_comp a c b hbc hca _ (g s)
  obtain ⟨δ, -, -, e1, -, -⟩ := CrystallineSemistableComparison.P.les _ _ inj ex surj
  exact e1 j

end Les

section Chart

theorem dividedPowerFiltration_bot (O : Type) [CommRing O] {k : ℕ} (hk : 1 ≤ k) : pdP (dividedPowersBot O) k = ⊥ := by
  apply GlobalTheory.CompanionTheory.ConeLocal.dividedPowerFiltration_dividedPowersBot_of_one_le <;> assumption

variable {O : Type} [CommRing O]

theorem van_coord (hLoc : KH.LocGr) (hPoly : KH.PolyTf) (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}}
    (q : X ⟶ Spec (CommRingCat.of O)) {W : X.Opens} {d : ℕ} (c : Coord q W d) (r : ℕ) (hr : r < s) (b : ℕ) (hne : b ≠ r) :
    Subsingleton (HU (sq (thFil (smFun X q) r) (thFil (smFun X q) ((r : ℤ) + 1)))
      (St (γ := dividedPowersBot O) (p := 0) (q := q) (κ := Ideal.Quotient.mk ⊥) (TF l s) {W}) b) := by
  obtain ⟨c', e, hTF, -, -, -⟩ := _root_.GlobalTheory.CompanionTheory.ChartAlg.chart_exists (dividedPowersBot O) l s hb q (Ideal.Quotient.mk ⊥) (fun _ => rfl) c
  have hg := _root_.GlobalTheory.CompanionTheory.ChartMaps.good c'
  let Q : ObjectProperty (Thick (nlFun (dividedPowersBot O) 0 X q (Ideal.Quotient.mk ⊥))) := St (TF l s) {W}
  have hQ : ∀ T, Q T → InU W T := fun T hT => by
    obtain ⟨_, V, hV, h⟩ := hT
    rw [Set.mem_singleton_iff.1 hV] at h
    exact h
  have hD : Q c'.D := ⟨hTF, W, rfl, c'.inV⟩
  obtain ⟨hpd, hgc⟩ := _root_.GlobalTheory.CompanionTheory.ChartFil.chart_grConst c' hg Q hQ hD
  obtain ⟨P, hP⟩ := hPoly (dividedPowersBot O) q (Ideal.Quotient.mk ⊥) l s {W}
  let E := c'.frame hg Q hQ hD
  let σ : ∀ T, E.D ⟶ T := fun T => (E.ne T).some
  have main := hLoc P (_root_.GlobalTheory.CompanionTheory.DPFil.isFil_sFil Q) E σ hgc (r : ℤ) (fun r' hr' => (hP r' (by omega)).1) b
  rcases lt_or_gt_of_ne hne with hlt | hgt
  · obtain ⟨k, hk⟩ : ∃ k : ℕ, r = b + k := ⟨r - b, by omega⟩
    have hk1 : 1 ≤ k := by omega
    have hall : ∀ z : CH.H (gr (sFil Q) (r : ℤ)) b, z = 0 := by
      intro z
      obtain ⟨x, hx, f, hf, rfl, hfs⟩ := (main.2 k (by push_cast; omega)).1 z
      have hx0 : ∀ I, x I = 0 := fun I => by
        have h2 : x I ∈ c'.D.pdPow ((k : ℤ).toNat) := hx I
        rw [Int.toNat_natCast] at h2
        rw [hpd k, dividedPowerFiltration_bot O hk1, Ideal.map_bot] at h2
        exact h2
      have f0 : f = 0 := funext fun s => Subtype.ext (by
        rw [hfs s]
        simp [hx0, Frame.form])
      subst f0
      exact Submodule.Quotient.mk_zero _
    exact ⟨fun y z => (hall y).trans (hall z).symm⟩
  · exact main.1 (by exact_mod_cast hgt)

end Chart

section Glob

variable {O : Type} [CommRing O]

theorem capO_affine {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of O)} (U : Cov q) {n : ℕ} (i : Fin (n + 1) → U.ι) :
    IsAffineOpen (capO U.U i) := by
  classical
  have h := U.inter (Finset.univ.image i) ⟨i 0, Finset.mem_image_of_mem _ (Finset.mem_univ _)⟩
  have e : (⨅ α ∈ Finset.univ.image i, U.U α) = capO U.U i := by
    refine le_antisymm (le_iInf fun a => ?_) (le_iInf₂ fun α hα => ?_)
    · exact iInf₂_le (i a) (Finset.mem_image_of_mem _ (Finset.mem_univ _))
    · obtain ⟨a, -, rfl⟩ := Finset.mem_image.1 hα
      exact capO_le U.U i a
  rwa [e] at h


theorem gr_range [IsNoetherianRing O] (hLoc : KH.LocGr) (hPoly : KH.PolyTf) (hSer : KH.GlobSerreSt) (hCech : KH.GrCechFin)
    (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) [IsProper q]
    (U : Cov q) (r : ℤ) (hr : r < s) (j : ℕ) : Module.Finite O (HQ (TO q l s (Set.range U.U)) r (r + 1) j) := by
  obtain ⟨𝒮, h𝒮⟩ := _root_.GlobalTheory.CompanionTheory.SerreFin.exists_serre_finite O
  rcases lt_or_ge r 0 with h0 | h0
  · refine (h𝒮 _).1 (𝒮.zero _ (sub_CH _ (sq_sub _ _ fun T => ?_) j))
    have e1 : r.toNat = 0 := by omega
    have e2 : (r + 1).toNat = 0 := by omega
    change T.obj.pdPow r.toNat ≤ T.obj.pdPow (r + 1).toNat
    rw [e1, e2]
  · obtain ⟨n, rfl⟩ := Int.eq_ofNat_of_zero_le h0
    have hn : n < s := by exact_mod_cast hr
    refine (h𝒮 _).1 (hSer (sq (thFil (smFun X q) n) (thFil (smFun X q) ((n : ℤ) + 1))) (TF l s) U.U 𝒮 j ?_)
    intro a b hab
    by_cases hbn : b = n
    · subst hbn
      exact (h𝒮 _).2 (hCech l s hb q U b hn a)
    · refine 𝒮.zero _ (sub_H _ a ⟨fun x y => funext fun i => ?_⟩)
      have e := (_root_.GlobalTheory.CompanionTheory.StFam.st_all).2.2.2 (TF l s : ObjectProperty (Thick (nlFun (dividedPowersBot O) 0 X q (Ideal.Quotient.mk ⊥)))) U.U i
      obtain ⟨c', -⟩ := _root_.GlobalTheory.CompanionTheory.CoordRes.main (U.c (i 0)) (capO_le U.U i 0) (capO_affine U i)
      have hv := van_coord hLoc hPoly l s hb q c' n hn b hbn
      rw [← e] at hv
      exact hv.elim _ _

theorem range_fin [IsNoetherianRing O] (hLoc : KH.LocGr) (hPoly : KH.PolyTf) (hSer : KH.GlobSerreSt) (hCech : KH.GrCechFin)
    (l s : ℕ) (hb : TFBase (dividedPowersBot O) l s) {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) [IsProper q]
    (U : Cov q) (n : ℕ) (r r' : ℤ) (hn : r' = r + n) (hs : r' ≤ s) (j : ℕ) :
    Module.Finite O (HQ (TO q l s (Set.range U.U)) r r' j) := by
  obtain ⟨𝒮, h𝒮⟩ := _root_.GlobalTheory.CompanionTheory.SerreFin.exists_serre_finite O
  have hF := _root_.GlobalTheory.CompanionTheory.DPFil.isFil_sFil (TO q l s (Set.range U.U))
  induction n generalizing r with
  | zero =>
    have e : r' = r := by simpa using hn
    subst e
    exact (h𝒮 _).1 (𝒮.zero _ (sub_CH _ (sq_sub _ _ fun T => le_rfl) j))
  | succ n ih =>
    have h1 := ih (r + 1) (by rw [hn]; push_cast; ring)
    have h3 := gr_range hLoc hPoly hSer hCech l s hb q U r (by push_cast at hn; omega) j
    exact (h𝒮 _).1 (𝒮.mid _ _ _ _ _ (sq_exact (sFil _ r) (sFil _ (r + 1)) (sFil _ r')
      (fun T => hF.anti (by push_cast at hn; omega) T) (fun T => hF.anti (by omega) T) j) ((h𝒮 _).2 h1) ((h𝒮 _).2 h3))

theorem fin_surj {M N : Type 1} [AddCommGroup M] [Module O M] [AddCommGroup N] [Module O N] (f : M →ₗ[O] N)
    (hf : Function.Surjective f) (h : Module.Finite O M) : Module.Finite O N :=
  Module.Finite.of_surjective f hf

theorem fin_bij {M N : Type 1} [AddCommGroup M] [Module O M] [AddCommGroup N] [Module O N] (f : M →ₗ[O] N)
    (hf : Function.Bijective f) (h : Module.Finite O N) : Module.Finite O M :=
  Module.Finite.of_surjective (LinearEquiv.ofBijective f hf).symm.toLinearMap (LinearEquiv.surjective _)

theorem inU_top {R : Type} [CommRing R] {I : Ideal R} {γ : DividedPowers I} {p : ℕ} {X : Scheme.{0}}
    {q : X ⟶ Spec (CommRingCat.of O)} {κ : O →+* R ⧸ I} (T : Thick (nlFun γ p X q κ)) : InU ⊤ T :=
  fun _ _ => trivial

end Glob

theorem finO : KH.LocGr → KH.PolyTf → KH.GlobSerreSt → KH.GrCechFin → FinO := by
  intro hLoc hPoly hSer hCech O _ _ l s hb X q _ U 𝒱 h𝒱 r r' hr hr' j
  have hU : Used (TF l s : ObjectProperty (Thick (nlFun (dividedPowersBot O) 0 X q (Ideal.Quotient.mk ⊥)))) :=
    Or.inl ⟨rfl, l, s, rfl⟩
  have h1 : TO q l s (Set.range U.U) ≤ TO q l s {⊤} :=
    fun T hT => ⟨hT.1, ⊤, rfl, inU_top T⟩
  have h2 : TO q l s 𝒱 ≤ TO q l s {⊤} :=
    fun T hT => ⟨hT.1, ⊤, rfl, inU_top T⟩
  have c1 : ∀ W ∈ ({⊤} : Set X.Opens), W ≤ sSup (Set.range U.U) := by
    rintro W rfl
    rw [sSup_range, U.cover]
  have c2 : ∀ W ∈ ({⊤} : Set X.Opens), W ≤ sSup 𝒱 := by
    rintro W rfl
    rw [h𝒱]
  have B1 := (_root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent _ hU _ _ h1 c1 j).1 r r'
  have B2 := (_root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent _ hU _ _ h2 c2 j).1 r r'
  obtain ⟨n, hn⟩ : ∃ n : ℕ, r' = r + n := ⟨(r' - r).toNat, by omega⟩
  have hR := range_fin hLoc hPoly hSer hCech l s hb q U n r r' hn hr' j
  exact fin_surj _ B2.2 (fin_bij _ B1 hR)

end GlobalTheory.CompanionTheory.FinOverO
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapOAffine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverLatticeBase =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverLatticeBase", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.RingTheory.Flat.TorsionFree\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.LatSplit

section Ext

variable {O M M' : Type} [CommRing O] [AddCommGroup M] [Module O M] [AddCommGroup M'] [Module O M']

theorem mem_of_pow_smul_mem (c : O) (W : Submodule O M) (h2 : ∀ x : M, c • x ∈ W → x ∈ W) (k : ℕ) (x : M)
    (h : c ^ k • x ∈ W) : x ∈ W := by
  induction k with
  | zero => simpa using h
  | succ k ih =>
    refine ih (h2 _ ?_)
    rw [smul_smul, ← pow_succ']
    exact h

theorem exists_ext (c : O) (W : Submodule O M) (ρ₀ : W →ₗ[O] M')
    (h1 : ∀ x : M, ∃ w ∈ W, ∃ z, x = w + c • z) (h2 : ∀ x : M, c • x ∈ W → x ∈ W)
    (hS : ∀ y : M', (∀ k : ℕ, ∃ z, y = c ^ k • z) → y = 0)
    (hC : ∀ y : ℕ → M', (∀ k, ∃ z, y (k + 1) - y k = c ^ k • z) → ∃ L, ∀ k, ∃ z, L - y k = c ^ k • z) :
    ∃ ρ : M →ₗ[O] M', ∀ w : W, ρ w = ρ₀ w := by
  have hD : ∀ (k : ℕ) (w w' : W) (t : M), (w : M) - w' = c ^ k • t → ∃ z, ρ₀ w - ρ₀ w' = c ^ k • z := by
    intro k w w' t h
    have ht : t ∈ W := mem_of_pow_smul_mem c W h2 k t (h ▸ W.sub_mem w.2 w'.2)
    refine ⟨ρ₀ ⟨t, ht⟩, ?_⟩
    rw [← map_sub, ← map_smul]
    congr 1
    exact Subtype.ext (by simpa using h)
  have hA : ∀ (k : ℕ) (x : M), ∃ (w : W) (z : M), x = w + c ^ k • z := by
    intro k
    induction k with
    | zero => exact fun x => ⟨0, x, by simp⟩
    | succ k ih =>
      intro x
      obtain ⟨w, z, e⟩ := ih x
      obtain ⟨w', hw', z', e'⟩ := h1 z
      refine ⟨w + c ^ k • ⟨w', hw'⟩, z', ?_⟩
      rw [e]
      nth_rw 1 [e']
      simp only [Submodule.coe_add, Submodule.coe_smul]
      module
  let Rel : M → M' → Prop := fun x y =>
    ∀ (k : ℕ) (w : W) (z : M), x = w + c ^ k • z → ∃ z', y - ρ₀ w = c ^ k • z'
  have hE : ∀ x, ∃ y, Rel x y := by
    intro x
    choose w z hwz using fun k => hA k x
    obtain ⟨L, hL⟩ := hC (fun k => ρ₀ (w k)) (fun k => hD k _ _ (z k - c • z (k + 1)) (by
      have e : (w (k + 1) : M) + c ^ (k + 1) • z (k + 1) = w k + c ^ k • z k := (hwz (k + 1)).symm.trans (hwz k)
      linear_combination (norm := module) e))
    refine ⟨L, fun k v t e => ?_⟩
    obtain ⟨a, ha⟩ := hL k
    obtain ⟨b, hb⟩ := hD k (w k) v (t - z k) (by
      have e' : (w k : M) + c ^ k • z k = v + c ^ k • t := (hwz k).symm.trans e
      linear_combination (norm := module) e')
    refine ⟨a + b, ?_⟩
    rw [smul_add, ← ha, ← hb]
    abel
  have hU : ∀ x y y', Rel x y → Rel x y' → y = y' := by
    intro x y y' h h'
    refine sub_eq_zero.1 (hS _ fun k => ?_)
    obtain ⟨w, z, e⟩ := hA k x
    obtain ⟨a, ha⟩ := h k w z e
    obtain ⟨b, hb⟩ := h' k w z e
    refine ⟨a - b, ?_⟩
    rw [smul_sub, ← ha, ← hb]
    abel
  have hW : ∀ w : W, Rel w (ρ₀ w) := by
    intro w k v t e
    exact hD k w v t (by rw [e]; abel)
  have hL : ∀ (a : O) x x' y y', Rel x y → Rel x' y' → Rel (a • x + x') (a • y + y') := by
    intro a x x' y y' h h' k v t e
    obtain ⟨w, z, e1⟩ := hA k x
    obtain ⟨w', z', e2⟩ := hA k x'
    obtain ⟨p, hp⟩ := h k w z e1
    obtain ⟨p', hp'⟩ := h' k w' z' e2
    obtain ⟨b, hb⟩ := hD k (a • w + w') v (t - a • z - z') (by
      rw [e1, e2] at e
      simp only [Submodule.coe_add, Submodule.coe_smul]
      linear_combination (norm := module) e)
    refine ⟨a • p + p' + b, ?_⟩
    rw [map_add (f := _), map_smul] at hb
    rw [smul_add, smul_add, ← hb, smul_comm, ← hp, ← hp', smul_sub]
    abel
  choose ρ hρ using hE
  have h0 : ρ 0 = 0 := by
    have e : Rel 0 0 := by simpa using hW 0
    exact hU _ _ _ (hρ 0) e
  refine ⟨{ toFun := ρ, map_add' := ?_, map_smul' := ?_ }, fun w => hU _ _ _ (hρ w) (hW w)⟩
  · intro x x'
    have := hL 1 x x' _ _ (hρ x) (hρ x')
    simp only [one_smul] at this
    exact hU _ _ _ (hρ _) this
  · intro a x
    have := hL a x 0 _ _ (hρ x) (hρ 0)
    simp only [add_zero, h0] at this
    exact hU _ _ _ (hρ _) this

end Ext

end GlobalTheory.CompanionTheory.LatSplit

namespace GlobalTheory.CompanionTheory.LatSplit

section Basic

variable {O N : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [AddCommGroup N] [Module O N]

theorem exists_basic_irreducible (ϖ : O) (hϖ : Irreducible ϖ)
    (ht : ∀ (a : O) (n : N), a ≠ 0 → a • n = 0 → n = 0) :
    ∃ P : Submodule O N, Module.Free O P ∧ (∀ n, ∃ p ∈ P, ∃ z, n = p + ϖ • z) ∧
      ∀ n, ϖ • n ∈ P → n ∈ P := by
  classical
  let I : Ideal O := Ideal.span {ϖ}
  haveI hI : I.IsMaximal := PrincipalIdealRing.isMaximal_of_irreducible hϖ
  letI : Field (O ⧸ I) := Ideal.Quotient.field I
  let B := Module.Basis.ofVectorSpace (O ⧸ I) (N ⧸ (I • ⊤ : Submodule O N))
  let q : N →ₗ[O] N ⧸ (I • ⊤ : Submodule O N) := Submodule.mkQ _
  have hq : Function.Surjective q := Submodule.mkQ_surjective _
  have hmem : ∀ x : N, x ∈ (I • ⊤ : Submodule O N) ↔ ∃ z, x = ϖ • z := by
    intro x
    rw [Submodule.ideal_span_singleton_smul, Submodule.mem_smul_pointwise_iff_exists]
    constructor
    · rintro ⟨z, -, rfl⟩
      exact ⟨z, rfl⟩
    · rintro ⟨z, rfl⟩
      exact ⟨z, trivial, rfl⟩
  choose e he using fun j => hq (B j)
  have hstar : ∀ (s : Finset _) (g : _ → O), (∑ i ∈ s, g i • e i) ∈ (I • ⊤ : Submodule O N) →
      ∀ i ∈ s, ϖ ∣ g i := by
    intro s g h i hi
    have h0 : q (∑ i ∈ s, g i • e i) = 0 := (Submodule.Quotient.mk_eq_zero _).2 h

    rw [map_sum] at h0
    have h1 : ∑ i ∈ s, (Ideal.Quotient.mk I (g i)) • B i = 0 := by
      rw [← h0]
      refine Finset.sum_congr rfl fun i _ => ?_
      rw [map_smul, he]
      rfl
    have h2 := linearIndependent_iff'.1 B.linearIndependent s _ h1 i hi
    exact Ideal.mem_span_singleton.1 (Ideal.Quotient.eq_zero_iff_mem.1 h2)
  have hall : ∀ (s : Finset _) (t : ℕ) (g : _ → O), (∑ i ∈ s, g i • e i) = 0 → ∀ i ∈ s, ϖ ^ t ∣ g i := by
    intro s t
    induction t with
    | zero => simp
    | succ t ih =>
      intro g h i hi
      have h1 := hstar s g (by rw [h]; exact Submodule.zero_mem _)
      have h2 : ∀ i, ∃ g', i ∈ s → g i = ϖ * g' := fun i => by
        by_cases hi : i ∈ s
        · obtain ⟨g', hg'⟩ := h1 i hi
          exact ⟨g', fun _ => hg'⟩
        · exact ⟨0, fun h => absurd h hi⟩
      choose g' hg' using h2
      have h3 : ∑ i ∈ s, g' i • e i = 0 := by
        refine ht ϖ _ hϖ.ne_zero ?_
        rw [Finset.smul_sum, ← h]
        refine Finset.sum_congr rfl fun i hi => ?_
        rw [hg' i hi, mul_smul]
      rw [hg' i hi, pow_succ']
      exact mul_dvd_mul_left _ (ih g' h3 i hi)
  have hli : LinearIndependent O e := by
    refine linearIndependent_iff'.2 fun s g h i hi => ?_
    by_contra hne
    obtain ⟨n, u, hu⟩ := IsDiscreteValuationRing.associated_pow_irreducible hne hϖ
    have h1 := hall s (n + 1) g h i hi
    have h2 : ϖ ^ n * ϖ ∣ ϖ ^ n * 1 := by
      rw [← pow_succ, mul_one, ← hu]
      exact Dvd.dvd.mul_right h1 _
    exact hϖ.not_isUnit (isUnit_of_dvd_one ((mul_dvd_mul_iff_left (pow_ne_zero _ hϖ.ne_zero)).1 h2))
  refine ⟨Submodule.span O (Set.range e), Module.Free.of_basis (Module.Basis.span hli), ?_, ?_⟩
  · intro n
    have h1 : q n ∈ Submodule.span O (Set.range B) := by
      rw [← Submodule.restrictScalars_span O (O ⧸ I) Ideal.Quotient.mk_surjective, Submodule.restrictScalars_mem,
        B.span_eq]
      trivial
    have h2 : Set.range B = q '' Set.range e := by
      rw [← Set.range_comp]
      exact congrArg Set.range (funext fun j => (he j).symm)
    rw [h2, ← Submodule.map_span] at h1
    obtain ⟨p, hp, hpq⟩ := h1
    have h3 : n - p ∈ (I • ⊤ : Submodule O N) := (Submodule.Quotient.eq _).1 hpq.symm
    obtain ⟨z, hz⟩ := (hmem _).1 h3
    exact ⟨p, hp, z, by rw [← hz]; abel⟩
  · intro n hn
    obtain ⟨f, hf⟩ := (Finsupp.mem_span_range_iff_exists_finsupp).1 hn
    have h1 := hstar f.support f (by
      have : (∑ i ∈ f.support, f i • e i) = ϖ • n := hf
      rw [this]
      exact (hmem _).2 ⟨n, rfl⟩)
    have h2 : ∀ i, ∃ g', i ∈ f.support → f i = ϖ * g' := fun i => by
      by_cases hi : i ∈ f.support
      · obtain ⟨g', hg'⟩ := h1 i hi
        exact ⟨g', fun _ => hg'⟩
      · exact ⟨0, fun h => absurd h hi⟩
    choose g' hg' using h2
    have h3 : n - ∑ i ∈ f.support, g' i • e i = 0 := by
      refine ht ϖ _ hϖ.ne_zero ?_
      have : ϖ • ∑ i ∈ f.support, g' i • e i = ϖ • n := by
        rw [Finset.smul_sum]
        refine Eq.trans (Finset.sum_congr rfl fun i hi => ?_) hf
        change ϖ • g' i • e i = f i • e i
        rw [hg' i hi, mul_smul]
      rw [smul_sub, this, sub_self]
    rw [sub_eq_zero.1 h3]
    exact Submodule.sum_mem _ fun i _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨i, rfl⟩)

theorem exists_basic (ht : ∀ (a : O) (n : N), a ≠ 0 → a • n = 0 → n = 0) (c : O) (hc : c ≠ 0) :
    ∃ P : Submodule O N, Module.Free O P ∧ (∀ n, ∃ p ∈ P, ∃ z, n = p + c • z) ∧
      ∀ n, c • n ∈ P → n ∈ P := by
  obtain ⟨ϖ, hϖ⟩ := IsDiscreteValuationRing.exists_irreducible O
  obtain ⟨P, hF, h1, h2⟩ := exists_basic_irreducible ϖ hϖ ht
  obtain ⟨k, u, hu⟩ := IsDiscreteValuationRing.associated_pow_irreducible hc hϖ
  have hA : ∀ (k : ℕ) (n : N), ∃ p ∈ P, ∃ z, n = p + ϖ ^ k • z := by
    intro k
    induction k with
    | zero => exact fun n => ⟨0, P.zero_mem, n, by simp⟩
    | succ k ih =>
      intro n
      obtain ⟨p, hp, z, e⟩ := ih n
      obtain ⟨p', hp', z', e'⟩ := h1 z
      refine ⟨p + ϖ ^ k • p', P.add_mem hp (P.smul_mem _ hp'), z', ?_⟩
      rw [e]
      nth_rw 1 [e']
      module
  refine ⟨P, hF, fun n => ?_, fun n hn => ?_⟩
  · obtain ⟨p, hp, z, e⟩ := hA k n
    refine ⟨p, hp, (u : O) • z, ?_⟩
    rw [e, ← hu, smul_smul]
  · refine mem_of_pow_smul_mem ϖ P h2 k n ?_
    rw [← hu, mul_comm, mul_smul]
    exact P.smul_mem _ hn

end Basic

end GlobalTheory.CompanionTheory.LatSplit

namespace GlobalTheory.CompanionTheory.LatSplit

section Sec

variable {O M : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [AddCommGroup M] [Module O M]

theorem exists_section (M' : Submodule O M) (c : O) (hc : c ≠ 0)
    (ht : ∀ (a : O) (x : M), a ≠ 0 → a • x ∈ M' → x ∈ M')
    (hS : ∀ y : M', (∀ k : ℕ, ∃ z : M', y = c ^ k • z) → y = 0)
    (hC : ∀ y : ℕ → M', (∀ k, ∃ z : M', y (k + 1) - y k = c ^ k • z) → ∃ L : M', ∀ k, ∃ z : M', L - y k = c ^ k • z) :
    ∃ s : (M ⧸ M') →ₗ[O] M, ∀ n, M'.mkQ (s n) = n := by
  obtain ⟨P, hF, h1, h2⟩ := exists_basic (N := M ⧸ M') (fun a n ha h => by
    obtain ⟨x, rfl⟩ := M'.mkQ_surjective n
    refine (Submodule.Quotient.mk_eq_zero _).2 (ht a x ha ((Submodule.Quotient.mk_eq_zero _).1 ?_))
    simpa using h) c hc
  obtain ⟨σ, hσ⟩ := Module.projective_lifting_property M'.mkQ P.subtype (Submodule.mkQ_surjective _)
  have hσ' : ∀ p : P, M'.mkQ (σ p) = p := fun p => LinearMap.congr_fun hσ p
  let W : Submodule O M := P.comap M'.mkQ
  let π : W →ₗ[O] P := M'.mkQ.restrict fun x hx => hx
  have hπ : ∀ w : W, (π w : M ⧸ M') = M'.mkQ w := fun w => rfl
  let ρ₀ : W →ₗ[O] M' := (W.subtype - σ ∘ₗ π).codRestrict M' fun w => by
    have : M'.mkQ ((w : M) - σ (π w)) = 0 := by rw [map_sub, hσ', hπ, sub_self]
    exact (Submodule.Quotient.mk_eq_zero _).1 this
  have hρ₀ : ∀ w : W, (ρ₀ w : M) = w - σ (π w) := fun w => rfl
  obtain ⟨ρ, hρ⟩ := exists_ext c W ρ₀ (fun x => by
      obtain ⟨p, hp, z, e⟩ := h1 (M'.mkQ x)
      obtain ⟨z', rfl⟩ := M'.mkQ_surjective z
      refine ⟨x - c • z', ?_, z', by abel⟩
      change M'.mkQ (x - c • z') ∈ P
      rw [map_sub, map_smul, e, add_sub_cancel_right]
      exact hp)
    (fun x hx => h2 _ (by
      have : M'.mkQ (c • x) ∈ P := hx
      rwa [map_smul] at this)) hS hC
  have hker : ∀ x ∈ M', ((ρ x : M') : M) = x := by
    intro x hx
    have hxW : x ∈ W := by
      change M'.mkQ x ∈ P
      rw [show M'.mkQ x = 0 from (Submodule.Quotient.mk_eq_zero _).2 hx]
      exact P.zero_mem
    have h0 : π ⟨x, hxW⟩ = 0 := Subtype.ext ((Submodule.Quotient.mk_eq_zero _).2 hx)
    have h3 := hρ ⟨x, hxW⟩
    change ρ x = _ at h3
    rw [h3, hρ₀, h0]
    simp
  refine ⟨M'.liftQ (LinearMap.id - M'.subtype ∘ₗ ρ) ?_, fun n => ?_⟩
  · intro x hx
    simp [LinearMap.mem_ker, hker x hx]
  · obtain ⟨x, rfl⟩ := M'.mkQ_surjective n
    have h4 : M'.mkQ ((ρ x : M') : M) = 0 := (Submodule.Quotient.mk_eq_zero _).2 (ρ x).2
    simp only [Submodule.mkQ_apply, Submodule.liftQ_apply, LinearMap.sub_apply, LinearMap.id_apply,
      LinearMap.comp_apply, Submodule.subtype_apply, map_sub]
    simpa using h4

end Sec

end GlobalTheory.CompanionTheory.LatSplit

namespace GlobalTheory.CompanionTheory.LatSplit

theorem nonempty_grSplit : ∀ {O A : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [CommRing A] [Algebra O A] {I : Ideal A}
    (γ : DividedPowers I) (l m : ℕ), (∀ a : O, a ≠ 0 → ∃ k : ℕ, a ∣ (l : O) ^ k) → LatBase γ l m → Nonempty (GrSplit O γ m) := by
  intro O A _ _ _ _ _ I γ l m hdiv h
  have hc : (l : O) ≠ 0 := by
    intro h0
    have hl : (l : A) = 0 := by rw [← map_natCast (algebraMap O A), h0, map_zero]
    have h1 : (1 : A) ∈ pdP γ m := h.tf.tf m 1 (by rw [hl, zero_mul]; exact Ideal.zero_mem _)
    rw [h.tf.nil] at h1
    have h2 : (1 : A) = 0 := h1
    exact h.prime.ne_top (by rw [Ideal.eq_top_iff_one, h2]; exact I.zero_mem)
  have hsm : ∀ (k : ℕ) (x : A), ((l : O) ^ k) • x = (l : A) ^ k * x := by
    intro k x
    rw [Algebra.smul_def, map_pow, map_natCast]
  have htf : ∀ (r k : ℕ) (x : A), (l : A) ^ k * x ∈ pdP γ r → x ∈ pdP γ r := by
    intro r k
    induction k with
    | zero => intro x hx; simpa using hx
    | succ k ih =>
      intro x hx
      exact h.tf.tf r x (ih _ (by rw [← mul_assoc, ← pow_succ]; exact hx))
  let L : ℕ → Submodule O A := fun r => (pdP γ r).restrictScalars O
  have hv : ∀ (r k : ℕ) (z : L r), (((l : O) ^ k • z : L r) : A) = (l : A) ^ k * z := fun r k z => hsm k z
  have hI : ∀ (n : ℕ) (x : A), x ∈ (Ideal.span {(l : A)} ^ n • ⊤ : Submodule A A) ↔ ∃ t, x = (l : A) ^ n * t := by
    intro n x
    rw [smul_eq_mul, Ideal.mul_top, Ideal.span_singleton_pow, Ideal.mem_span_singleton']
    constructor
    · rintro ⟨a, rfl⟩
      exact ⟨a, mul_comm _ _⟩
    · rintro ⟨a, rfl⟩
      exact ⟨a, mul_comm _ _⟩
  have ht : ∀ (r : ℕ) (a : O) (x : A), a ≠ 0 → a • x ∈ L r → x ∈ L r := by
    intro r a x ha hx
    obtain ⟨k, b, hb⟩ := hdiv a ha
    refine htf r k x ?_
    rw [← hsm, hb, mul_comm, mul_smul]
    exact (L r).smul_mem _ hx
  have hsec : ∀ r, ∃ s : (A ⧸ L r) →ₗ[O] A, ∀ n, (L r).mkQ (s n) = n := by
    intro r
    refine exists_section (L r) (l : O) hc (ht r) ?_ ?_
    · intro y hy
      refine Subtype.ext (h.cpl.toIsHausdorff.haus _ fun n => ?_)
      obtain ⟨z, hz⟩ := hy n
      rw [SModEq.zero, hI]
      exact ⟨z, by rw [← hv, ← hz]⟩
    · intro y hy
      have hz' : ∀ b, ∃ z : L r, (y (b + 1) : A) - y b = (l : A) ^ b * z := fun b => by
        obtain ⟨z, hz⟩ := hy b
        exact ⟨z, by rw [← hv]; exact congrArg Subtype.val hz⟩
      have hcau : ∀ {a b : ℕ}, a ≤ b → (y a : A) ≡ y b [SMOD (Ideal.span {(l : A)} ^ a • ⊤ : Submodule A A)] := by
        intro a b hab
        induction b, hab using Nat.le_induction with
        | base => rfl
        | succ b hab ih =>
          refine ih.trans ?_
          rw [SModEq.sub_mem, hI]
          obtain ⟨z, hz⟩ := hz' b
          obtain ⟨d, rfl⟩ := Nat.exists_eq_add_of_le hab
          refine ⟨-((l : A) ^ d * z), ?_⟩
          rw [← neg_sub, hz, pow_add]
          ring
      obtain ⟨Lim, hLim⟩ := h.cpl.toIsPrecomplete.prec hcau
      have hl : ∀ n, ∃ t, Lim - y n = (l : A) ^ n * t := fun n => by
        obtain ⟨t, ht'⟩ := (hI _ _).1 ((SModEq.sub_mem).1 (hLim n))
        exact ⟨-t, by rw [← neg_sub, ht']; ring⟩
      have hLm : Lim ∈ pdP γ r := h.closed r Lim fun n => by
        obtain ⟨t, ht'⟩ := hl n
        refine Submodule.mem_sup.2 ⟨(l : A) ^ n * t, Ideal.mem_span_singleton.2 (Dvd.intro _ rfl), y n, (y n).2, ?_⟩
        rw [← ht']
        abel
      refine ⟨⟨Lim, hLm⟩, fun k => ?_⟩
      obtain ⟨t, ht'⟩ := hl k
      have htm : t ∈ pdP γ r := htf r k t (by rw [← ht']; exact (pdP γ r).sub_mem hLm (y k).2)
      exact ⟨⟨t, htm⟩, Subtype.ext (by rw [hv]; exact ht')⟩
  choose s hs using hsec
  have hmk : ∀ (r : ℕ) (x : A), (L r).mkQ x = 0 ↔ x ∈ L r := fun r x => Submodule.Quotient.mk_eq_zero _
  have hanti : ∀ r, pdP γ (r + 1) ≤ pdP γ r := fun r =>
    Ideal.span_mono fun z ⟨q, h1, h2, h3⟩ => ⟨q, h1, by omega, h3⟩
  have hflat : ∀ r, Module.Flat O ((L r).map (L (r + 1)).mkQ) := by
    intro r
    rw [Module.Flat.flat_iff_torsion_eq_bot_of_isBezout, eq_bot_iff]
    intro x hx
    obtain ⟨⟨a, ha⟩, hax⟩ := (Submodule.mem_torsion_iff _).1 hx
    obtain ⟨y, -, hy⟩ := x.2
    have h0 : a • (x : A ⧸ L (r + 1)) = 0 := congrArg Subtype.val hax
    rw [← hy, ← map_smul, hmk] at h0
    have h1 := ht _ a y (nonZeroDivisors.ne_zero ha) h0
    exact (Submodule.mem_bot _).2 (Subtype.ext (by rw [← hy]; exact (hmk _ _).2 h1))
  have hν : ∀ (r : ℕ) (n : (L r).map (L (r + 1)).mkQ), s (r + 1) n ∈ pdP γ r := by
    rintro r ⟨_, y, hy, rfl⟩
    have h1 : s (r + 1) ((L (r + 1)).mkQ y) - y ∈ pdP γ (r + 1) := (hmk _ _).1 (by rw [map_sub, hs, sub_self])
    have h2 := (pdP γ r).add_mem (hanti r h1) hy
    simpa using h2
  exact ⟨{ N := fun i => ↥((L i).map (L (i + 1)).mkQ)
           flat := fun i => hflat i
           ν := fun i => s (i + 1) ∘ₗ Submodule.subtype _
           mem := fun i n => hν i n
           inj := fun i n hn => Subtype.ext (by rw [← hs (i + 1) n]; exact (hmk _ _).2 hn)
           surj := fun i x hx => ⟨⟨(L (i + 1)).mkQ x, Submodule.mem_map_of_mem hx⟩,
             (hmk _ _).1 (by
               change (L (i + 1)).mkQ (x - s (i + 1) ((L (i + 1)).mkQ x)) = 0
               rw [map_sub, hs, sub_self])⟩
           nil := h.tf.nil }⟩

end GlobalTheory.CompanionTheory.LatSplit
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverLatticeBase =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsFgPullSqC =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsFgPullSqC", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.GrSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverLatticeBase\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarMultiplicationShiftsFiltration\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.LatticeFinite

universe u v u' v'

section General

variable {R : Type} [CommRing R] {C : Type u} [Category.{v} C] {R' : Type} [CommRing R'] {C' : Type u'} [Category.{v'} C']
  {Φ : PDF R C} {Φ' : PDF R' C'} {σ : R →+* R'}

theorem pull_sqC_comb (m : SMor Φ Φ' σ) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} {c c₁ c₂ e e' : R'}
    (hc : c = e * c₁ + e' * c₂) (ha : m.LeC c a a') (hb : m.LeC c b b') (ha₁ : m.LeC c₁ a a') (hb₁ : m.LeC c₁ b b')
    (ha₂ : m.LeC c₂ a a') (hb₂ : m.LeC c₂ b b') (j : ℕ) (x : CH.H (sq a b) j) :
    (m.sqC c ha hb).pull j x =
      e • (m.sqC c₁ ha₁ hb₁).pull j x + e' • (m.sqC c₂ ha₂ hb₂).pull j x := by
  obtain ⟨⟨f, hf⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x
  change Submodule.Quotient.mk _ = e • Submodule.Quotient.mk _ + e' • Submodule.Quotient.mk _
  rw [← Submodule.Quotient.mk_smul, ← Submodule.Quotient.mk_smul, ← Submodule.Quotient.mk_add]
  refine congrArg _ (Subtype.ext (funext fun s => ?_))
  change (m.sqC c ha hb).τ _ (f (s ⋙ m.G)) =
    e • (m.sqC c₁ ha₁ hb₁).τ _ (f (s ⋙ m.G)) + e' • (m.sqC c₂ ha₂ hb₂).τ _ (f (s ⋙ m.G))
  generalize f (s ⋙ m.G) = w
  obtain ⟨z, hz⟩ := w
  obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
  refine Subtype.ext ?_
  have key : algebraMap R' (Φ'.A.obj (s.obj (Fin.last j))) c * m.ρ (s.obj (Fin.last j)) y =
      e • (algebraMap R' (Φ'.A.obj (s.obj (Fin.last j))) c₁ * m.ρ (s.obj (Fin.last j)) y) +
      e' • (algebraMap R' (Φ'.A.obj (s.obj (Fin.last j))) c₂ * m.ρ (s.obj (Fin.last j)) y) := by
    rw [hc, map_add (f := _), map_mul, map_mul, Algebra.smul_def, Algebra.smul_def]
    ring
  exact congrArg (Ideal.Quotient.mk (b'.S (s.obj (Fin.last j)))) key

theorem exists_fg_pull_sqC (m : SMor Φ Φ' σ) {a b : IdF Φ.A} {a' b' : IdF Φ'.A} (P : Ideal R') (hP : P.FG)
    (h₁ : ∀ c ∈ P, m.LeC c a a') (h₂ : ∀ c ∈ P, m.LeC c b b') (j : ℕ) (hfin : Module.Finite R (CH.H (sq a b) j)) :
    ∃ N : Submodule R' (CH.H (sq a' b') j), N.FG ∧ ∀ (c : R') (ha : m.LeC c a a') (hb : m.LeC c b b'), c ∈ P →
      ∀ x, (m.sqC c ha hb).pull j x ∈ N := by
  classical
  obtain ⟨G, rfl⟩ := hP
  obtain ⟨X, hX⟩ := (Module.Finite.fg_top : (⊤ : Submodule R (CH.H (sq a b) j)).FG)
  let φ : G × X → CH.H (sq a' b') j := fun p =>
    (m.sqC p.1.1 (h₁ _ (Ideal.subset_span p.1.2)) (h₂ _ (Ideal.subset_span p.1.2))).pull j p.2.1
  refine ⟨Submodule.span R' (Set.range φ), Submodule.fg_span (Set.finite_range φ), ?_⟩
  have hgen : ∀ (g : R') (hg : g ∈ G) (ha : m.LeC g a a') (hb : m.LeC g b b') (x : CH.H (sq a b) j),
      (m.sqC g ha hb).pull j x ∈ Submodule.span R' (Set.range φ) := by
    intro g hg ha hb x
    have hx : x ∈ Submodule.span R (X : Set (CH.H (sq a b) j)) := hX ▸ Submodule.mem_top
    induction hx using Submodule.span_induction with
    | mem x hx => exact Submodule.subset_span ⟨(⟨g, hg⟩, ⟨x, hx⟩), rfl⟩
    | zero => rw [map_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | smul r x _ hx => rw [LinearMap.map_smulₛₗ]; exact Submodule.smul_mem _ _ hx
  intro c ha hb hc x
  refine Submodule.span_induction
    (p := fun c _ => ∀ (ha : m.LeC c a a') (hb : m.LeC c b b'), (m.sqC c ha hb).pull j x ∈ Submodule.span R' (Set.range φ))
    ?_ ?_ ?_ ?_ hc ha hb
  · intro g hg ha hb
    exact hgen g hg ha hb x
  · intro ha hb
    rw [pull_sqC_comb m (c₁ := 0) (c₂ := 0) (e := 0) (e' := 0) (by simp) ha hb ha hb ha hb j x]
    simp
  · intro c₁ c₂ m₁ m₂ i₁ i₂ ha hb
    rw [pull_sqC_comb m (c₁ := c₁) (c₂ := c₂) (e := 1) (e' := 1) (by simp) ha hb (h₁ _ m₁) (h₂ _ m₁) (h₁ _ m₂) (h₂ _ m₂) j x]
    simpa using add_mem (i₁ (h₁ _ m₁) (h₂ _ m₁)) (i₂ (h₁ _ m₂) (h₂ _ m₂))
  · intro e c₁ m₁ i₁ ha hb
    rw [pull_sqC_comb m (c₁ := c₁) (c₂ := c₁) (e := e) (e' := 0) (by simp) ha hb (h₁ _ m₁) (h₂ _ m₁) (h₁ _ m₁) (h₂ _ m₁) j x]
    simpa using Submodule.smul_mem _ e (i₁ (h₁ _ m₁) (h₂ _ m₁))

end General

theorem dividedPowerFiltration_anti {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) {r r' : ℕ} (h : r ≤ r') :
    pdP δ r' ≤ pdP δ r :=
  Ideal.span_mono fun _ ⟨l, h₁, h₂, h₃⟩ => ⟨l, h₁, h.trans h₂, h₃⟩

theorem tfBase_mono {B : Type} [CommRing B] {J : Ideal B} {δ : DividedPowers J} {l m s : ℕ} (h : TFBase δ l m)
    (hms : m ≤ s) : TFBase δ l s :=
  ⟨le_bot_iff.1 (h.nil ▸ dividedPowerFiltration_anti δ hms), h.tf, h.dv⟩

theorem afgA_of_bcOn_finO : BcOn False → FinO → AfgA := by
  intro hB hF O A _ _ _ _ _ I γ l s m hl hO hL hms X q _ U 𝒱 h𝒱 r r' hr hr' j
  obtain ⟨S⟩ := _root_.GlobalTheory.CompanionTheory.LatSplit.nonempty_grSplit γ l m hl hL
  have hA : TFBase γ l s := tfBase_mono hL.tf hms
  have hC : ∀ (i : Fin m) (t : ℤ) (c : A), c ∈ pdP γ i →
      (smO γ q l s 𝒱).LeC c (sFil _ (t - i)) (sFil _ t) :=
    fun i t c hc => _root_.GlobalTheory.CompanionTheory.LecShift.leC_shift γ q l s 𝒱 i c hc t
  have ha : ∀ (i : Fin m) n, (smO γ q l s 𝒱).LeC (S.ν i n) (sFil _ (r - i)) (sFil _ r) :=
    fun i n => hC i r _ (S.mem i n)
  have hb : ∀ (i : Fin m) n, (smO γ q l s 𝒱).LeC (S.ν i n) (sFil _ (r' - i)) (sFil _ r') :=
    fun i n => hC i r' _ (S.mem i n)
  obtain ⟨g, hg⟩ := hB γ l s m hO hA S q 𝒱 (Or.inr ⟨not_false, ⟨U⟩, h𝒱⟩) r r' hr hr' ha hb j
  have hN : ∀ i : Fin m, ∃ N : Submodule A (HQ (TS γ q l s 𝒱) r r' j), N.FG ∧
      ∀ n x, ((smO γ q l s 𝒱).sqC (S.ν i n) (ha i n) (hb i n)).pull j x ∈ N := by
    intro i
    have hi : (0 : ℤ) ≤ (i : ℕ) := Int.natCast_nonneg _
    obtain ⟨N, h₁, h₂⟩ := exists_fg_pull_sqC (smO γ q l s 𝒱) (pdP γ i) (hL.fg i) (fun c hc => hC i r c hc)
      (fun c hc => hC i r' c hc) j (hF l s hO q U 𝒱 h𝒱 (r - i) (r' - i) (by omega) (by omega) j)
    exact ⟨N, h₁, fun n x => h₂ _ _ _ (S.mem i n) x⟩
  choose N hNfg hNmem using hN
  refine ⟨0, ⨆ i, N i, Submodule.fg_iSup _ hNfg, fun y => ?_⟩
  rw [pow_zero, one_smul]
  have hsingle : ∀ (i : Fin m) (t : S.N i ⊗[O] HQ (TO q l s 𝒱) (r - i) (r' - i) j),
      g (Pi.single i t) ∈ ⨆ i, N i := by
    intro i t
    induction t using TensorProduct.inductionOn with
    | tmul n x => rw [hg]; exact Submodule.mem_iSup_of_mem i (hNmem i n x)
    | add t t' ht ht' => rw [Pi.single_add, map_add (f := _)]; exact add_mem ht ht'
  have hy : y = ∑ i, g (Pi.single i (g.symm y i)) := by

    rw [← map_sum, Finset.univ_sum_single, g.apply_symm_apply]
  rw [hy]
  exact sum_mem fun i _ => hsingle i _

end GlobalTheory.CompanionTheory.LatticeFinite
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsFgPullSqC =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensTransportSymm =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensTransportSymm", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechRefinementCohomologyBijective\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.CapOComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordinatesRestrictAffineOpen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SheafFiltrationProperty\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers CrystallineSemistableComparison CrystallineSemistableComparison.Pb

noncomputable section

namespace GlobalTheory.CompanionTheory.GlobBc

universe w w'

theorem tens_transport {R : Type} [CommRing R] {ι : Type} [DecidableEq ι] {N : ι → Type} [∀ i, AddCommGroup (N i)]
    [∀ i, Module R (N i)] {M M₁ : ι → Type w} [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)]
    [∀ i, AddCommGroup (M₁ i)] [∀ i, Module R (M₁ i)] {M' M₁' : Type w'} [AddCommGroup M'] [AddCommGroup M₁']
    {f : ∀ i, N i → M i → M'} {f₁ : ∀ i, N i → M₁ i → M₁'}
    (e : ∀ i, M i ≃ₗ[R] M₁ i) (e' : M' ≃+ M₁') (h : ∀ i n x, e' (f i n x) = f₁ i n (e i x))
    (hT : Tens R f) : Tens R f₁ := by
  obtain ⟨g, hg⟩ := hT
  let c : (∀ i, N i ⊗[R] M₁ i) ≃+ (∀ i, N i ⊗[R] M i) :=
    AddEquiv.piCongrRight fun i => (TensorProduct.congr (LinearEquiv.refl R (N i)) (e i).symm).toAddEquiv
  refine ⟨c.trans (g.trans e'), fun i n x => ?_⟩
  have hc : c (Pi.single i (n ⊗ₜ x)) = Pi.single i (n ⊗ₜ (e i).symm x) := by
    funext k
    by_cases hk : k = i
    · subst hk
      simp [c]
    · simp [c, Pi.single_eq_of_ne hk]
  simp only [AddEquiv.trans_apply]
  rw [hc, hg, h, LinearEquiv.apply_symm_apply]

theorem tens_transport_symm {R : Type} [CommRing R] {ι : Type} [DecidableEq ι] {N : ι → Type} [∀ i, AddCommGroup (N i)]
    [∀ i, Module R (N i)] {M M₁ : ι → Type w} [∀ i, AddCommGroup (M i)] [∀ i, Module R (M i)]
    [∀ i, AddCommGroup (M₁ i)] [∀ i, Module R (M₁ i)] {M' M₁' : Type w'} [AddCommGroup M'] [AddCommGroup M₁']
    {f : ∀ i, N i → M i → M'} {f₁ : ∀ i, N i → M₁ i → M₁'}
    (e : ∀ i, M i ≃ₗ[R] M₁ i) (e' : M' ≃+ M₁') (h : ∀ i n x, e' (f i n x) = f₁ i n (e i x))
    (hT : Tens R f₁) : Tens R f :=
  tens_transport (fun i => (e i).symm) e'.symm
    (fun i n x => by rw [AddEquiv.symm_apply_eq, h, LinearEquiv.apply_symm_apply]) hT

section
variable {O A : Type} [CommRing O] [CommRing A] [Algebra O A] {I : Ideal A} (γ : DividedPowers I)
  {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O))

def thM : SMor (thP (nlFun (dividedPowersBot O) 0 X q (Ideal.Quotient.mk ⊥))) (thP (nlFun γ 0 X q (κA O I)))
    (algebraMap O A) where
  G := ((nmO γ q).mor 0).functor
  ρ T := RingHom.id _
  comm _ _ := rfl
  nat _ _ := rfl
  mem _ _ hx := hx
  dp _ _ _ _ := rfl

theorem leC {c : A} {i : ℕ} (hc : c ∈ pdP γ i) (r : ℤ) :
    (thM γ q).LeC c (thFil _ (r - i)) (thFil _ r) := by
  intro T x hx
  have h1 : T.i c ∈ pdP T.δ i := dividedPowerFiltration_map T.compat i hc
  have h2 : x ∈ pdP T.δ (r - i).toNat := hx
  have h3 := GlobalTheory.CompanionTheory.DPFil.dividedPowerFiltration_mul_le T.δ _ _ (Ideal.mul_mem_mul h1 h2)
  exact T.pdPow_anti (by omega) h3

end

abbrev rq {b : Base} {L : b.Fun} {Q Q' : ObjectProperty (Thick L)} (h : Q' ≤ Q) (r r' : ℤ) :
    CH.Mor (sq (sFil Q r) (sFil Q r')) (sq (sFil Q' r) (sFil Q' r')) (RingHom.id _) :=
  (incl h).sq (incl_fil h r) (incl_fil h r')

section
variable {O A : Type} [CommRing O] [CommRing A] [Algebra O A] {I : Ideal A} (γ : DividedPowers I)
  {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) (l s : ℕ) {m : ℕ} (S : GrSplit O γ m)

theorem leS (𝒱 : Set X.Opens) (i : Fin m) (n : S.N i) (r : ℤ) :
    (smO γ q l s 𝒱).LeC (S.ν i n) (sFil _ (r - i)) (sFil _ r) :=
  fun T x hx => leC γ q (S.mem i n) r T.obj x hx

abbrev mC (𝒱 : Set X.Opens) (r r' : ℤ) (i : Fin m) (n : S.N i) :=
  (smO γ q l s 𝒱).sqC (S.ν i n) (leS γ q l s S 𝒱 i n r) (leS γ q l s S 𝒱 i n r')

def BcAt (𝒱 : Set X.Opens) (r r' : ℤ) (j : ℕ) : Prop :=
  Tens O (N := S.N) (M := fun i => HQ (TO q l s 𝒱) (r - i) (r' - i) j) (M' := HQ (TS γ q l s 𝒱) r r' j)
    fun i n x => (mC γ q l s S 𝒱 r r' i n).pull j x

variable {γ q l s}

theorem st_top {R : Type} [CommRing R] {J : Ideal R} {δ : DividedPowers J} {p : ℕ} {κ : O →+* R ⧸ J}
    (Q : ObjectProperty (Thick (nlFun δ p X q κ))) (𝒱 : Set X.Opens) : St Q 𝒱 ≤ St Q {⊤} := by
  rintro T ⟨h, V, -, -⟩
  exact ⟨h, ⊤, rfl, fun _ _ => trivial⟩

theorem comm_top (𝒱 : Set X.Opens) (r r' : ℤ) (j : ℕ) (i : Fin m) (n : S.N i) (x) :
    (rq (st_top (TF l s) 𝒱) r r').pull j ((mC γ q l s S {⊤} r r' i n).pull j x) =
    (mC γ q l s S 𝒱 r r' i n).pull j ((rq (st_top (TF l s) 𝒱) (r - i) (r' - i)).pull j x) := by
  refine ((CrystallineSemistableComparison.P.pull_comp (σ'' := algebraMap O A) (mC γ q l s S {⊤} r r' i n) (rq (st_top (TF l s) 𝒱) r r') j x).1).symm.trans
    (Eq.trans ?_ ((CrystallineSemistableComparison.P.pull_comp (σ'' := algebraMap O A) (rq (st_top (TF l s) 𝒱) (r - i) (r' - i)) (mC γ q l s S 𝒱 r r' i n) j x).1))
  refine CrystallineSemistableComparison.P.prism (σ := algebraMap O A) ((mC γ q l s S {⊤} r r' i n).comp (rq (st_top (TF l s) 𝒱) r r'))
    ((rq (st_top (TF l s) 𝒱) (r - i) (r' - i)).comp (mC γ q l s S 𝒱 r r' i n)) (𝟙 _) (fun T y => ?_) j x
  obtain ⟨y, hy⟩ := y
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
  first
    | rfl

theorem used_TF {R : Type} [CommRing R] {J : Ideal R} {δ : DividedPowers J} {κ : O →+* R ⧸ J} (l s : ℕ) :
    Used (TF l s : ObjectProperty (Thick (nlFun δ 0 X q κ))) :=
  Or.inl ⟨rfl, l, s, rfl⟩

theorem bcAt_iff (𝒱 : Set X.Opens) (h𝒱 : sSup 𝒱 = ⊤) (r r' : ℤ) (j : ℕ) :
    BcAt γ q l s S {⊤} r r' j ↔ BcAt γ q l s S 𝒱 r r' j := by
  have hc : ∀ W ∈ ({⊤} : Set X.Opens), W ≤ sSup 𝒱 := fun W hW => by rw [h𝒱]; exact le_top
  have bO := (_root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent (γ := dividedPowersBot O) (p := 0) (q := q) (κ := Ideal.Quotient.mk (⊥ : Ideal O)) (TF l s) (used_TF l s) 𝒱 {⊤} (st_top _ _) hc j).1
  have bA := (_root_.GlobalTheory.CompanionTheory.NlZar.zariski_descent (γ := γ) (p := 0) (q := q) (κ := κA O I) (TF l s) (used_TF l s) 𝒱 {⊤} (st_top _ _) hc j).1
  let eO : ∀ i : Fin m, HQ (TO q l s {⊤}) (r - i) (r' - i) j ≃ₗ[O] HQ (TO q l s 𝒱) (r - i) (r' - i) j := fun i =>
    LinearEquiv.ofBijective ((rq (st_top (TF l s) 𝒱) (r - i) (r' - i)).pull j) (bO _ _)
  let eA : HQ (TS γ q l s {⊤}) r r' j ≃+ HQ (TS γ q l s 𝒱) r r' j :=
    (LinearEquiv.ofBijective ((rq (st_top (TF l s) 𝒱) r r').pull j) (bA _ _)).toAddEquiv
  have hcomm : ∀ i n x, eA ((mC γ q l s S {⊤} r r' i n).pull j x) = (mC γ q l s S 𝒱 r r' i n).pull j (eO i x) :=
    fun i n x => comm_top S 𝒱 r r' j i n x
  exact ⟨tens_transport eO eA hcomm, tens_transport_symm eO eA hcomm⟩

end

section
variable {O A : Type} [CommRing O] [CommRing A] [Algebra O A] {I : Ideal A} (γ : DividedPowers I)
  {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of O)) {m : ℕ} (S : GrSplit O γ m)

abbrev thO (q : X ⟶ Spec (CommRingCat.of O)) (r r' : ℤ) :
    Thick (nlFun (dividedPowersBot O) 0 X q (Ideal.Quotient.mk ⊥)) ⥤ ModuleCat.{0} O :=
  sq (thFil _ r) (thFil _ r')

abbrev thS (r r' : ℤ) : Thick (nlFun γ 0 X q (κA O I)) ⥤ ModuleCat.{0} A :=
  sq (thFil _ r) (thFil _ r')

abbrev tM (r r' : ℤ) (i : Fin m) (n : S.N i) : CH.Mor (thO q (r - i) (r' - i)) (thS γ q r r') (algebraMap O A) :=
  (thM γ q).sqC (S.ν i n) (leC γ q (S.mem i n) r) (leC γ q (S.mem i n) r')

theorem tM_add (r r' : ℤ) (i : Fin m) (n n' : S.N i) (T) (x) :
    (tM γ q S r r' i (n + n')).τ T x = (tM γ q S r r' i n).τ T x + (tM γ q S r r' i n').τ T x := by
  obtain ⟨y, hy⟩ := x
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
  refine Subtype.ext ?_
  let B := (thA (nlFun γ 0 X q (κA O I))).obj T
  let z' : B := z
  have e : algebraMap A B (S.ν i (n + n')) * z' = algebraMap A B (S.ν i n) * z' + algebraMap A B (S.ν i n') * z' := by
    rw [map_add (f := _), map_add (f := _), add_mul]
  exact congrArg (Ideal.Quotient.mk ((thFil (nlFun γ 0 X q (κA O I)) r').S T)) e

theorem tM_smul (r r' : ℤ) (i : Fin m) (c : O) (n : S.N i) (T) (x) :
    (tM γ q S r r' i (c • n)).τ T x = algebraMap O A c • (tM γ q S r r' i n).τ T x := by
  obtain ⟨y, hy⟩ := x
  obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective y
  refine Subtype.ext ?_
  let B := (thA (nlFun γ 0 X q (κA O I))).obj T
  let z' : B := z
  have e : algebraMap A B (S.ν i (c • n)) * z' = algebraMap O A c • (algebraMap A B (S.ν i n) * z') := by
    rw [map_smul, Algebra.smul_def c, map_mul, mul_assoc, Algebra.smul_def (algebraMap O A c)]
  exact congrArg (Ideal.Quotient.mk ((thFil (nlFun γ 0 X q (κA O I)) r').S T)) e

end

theorem main : KH.GlobBcSt → BcOn True → BcOn False := by
  intro hG hT O A _ _ _ I γ l s m hO hA S X q 𝒱 hc r r' hrr hr's ha hb j
  obtain ⟨U, h𝒱⟩ : Nonempty (Cov q) ∧ sSup 𝒱 = ⊤ := by
    rcases hc with ⟨h, -⟩ | ⟨-, h⟩
    · exact h.elim
    · exact h
  obtain ⟨U⟩ := U
  have hU : sSup (Set.range U.U) = ⊤ := by rw [sSup_range]; exact U.cover
  have hmem : ∀ (𝒲 : Set X.Opens) (T), St (TF l s) 𝒲 T → St (TF l s) 𝒲 ((((nmO γ q).mor 0).functor).obj T) :=
    fun 𝒲 T h => nmO_mem γ q l s 𝒲 T h
  have key : ∀ j, BcAt γ q l s S (Set.range U.U) r r' j := fun j =>
    hG (O := O) (R := O) (I := ⊥) (γ := dividedPowersBot O) (p := 0) (X := X) (q := q) (κ := Ideal.Quotient.mk ⊥)
      (O' := O) (R' := A) (I' := I) (γ' := γ) (p' := 0) (X' := X) (q' := q) (κ' := κA O I)
      (Λ := O) (Λ' := A) (σ := algebraMap O A) ((nmO γ q).mor 0).functor S.N
      (fun i => thO q (r - i) (r' - i)) (thS γ q r r')
      (fun i n T => (tM γ q S r r' i n).τ T) (fun i n {T T'} φ x => (tM γ q S r r' i n).nat φ x)
      (fun i n n' T x => tM_add γ q S r r' i n n' T x) (fun i c n T x => tM_smul γ q S r r' i c n T x)
      (TF l s) (TF l s) U.U U.U (fun α T h => hmem _ T h) (fun S' T h => hmem _ T h) (fun T h => hmem _ T h)
      (fun S' hS' j => by
        obtain ⟨α, hα⟩ := hS'
        obtain ⟨c', -⟩ := _root_.GlobalTheory.CompanionTheory.CoordRes.main (U.c α) (iInf₂_le α hα : (⨅ α ∈ S', U.U α) ≤ U.U α) (U.inter S' ⟨α, hα⟩)
        exact hT γ l s m hO hA S q {⨅ α ∈ S', U.U α} (Or.inl ⟨trivial, _, _, rfl, ⟨c'⟩⟩) r r' hrr hr's
          (fun i n => leS γ q l s S _ i n r) (fun i n => leS γ q l s S _ i n r') j) j
  exact (bcAt_iff S 𝒱 h𝒱 r r' j).1 ((bcAt_iff S (Set.range U.U) hU r r' j).2 (key j))

end GlobalTheory.CompanionTheory.GlobBc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensTransportSymm =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.SplitField =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.SplitField", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.BasisB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GlobalSerreRelations.GlobSerreSt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasisBOfBcOn\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CapOAffine\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsFgPullSqC\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GradedSplittingOverField\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftPOfBounds\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PdPBotPos\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ScalarMultiplicationShiftsFiltration\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TensTransportSymm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry TensorProduct GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

alias split_field := _root_.GlobalTheory.CompanionTheory.GrSplitField.nonempty_grSplit

alias leC_shift := _root_.GlobalTheory.CompanionTheory.LecShift.leC_shift

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SplittingFieldLattices.SplitField =====
