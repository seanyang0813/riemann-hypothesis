module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.Skeleton
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.ModLatticeAbsoluteValue
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.PositiveWeightHolds
public import Formalism.PeriodIntegrals.ScalPairs
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.IotaSurjectiveHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.Lemmas
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.Development
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.LastRowMul
public import Mathlib.NumberTheory.LegendreSymbol.AddCharacter
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.FourParts
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FlagClassConstancy.FlagOfInSFRight
public import Formalism.PeriodIntegrals.ScalarPairDr
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.ExistsNeZeroMem
public import Formalism.PeriodIntegrals.WhitFunctDual
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.CardUNeZero
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.SuperdiagSgnConj
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.AveragingOperatorIdempotent
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.Reindex
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.IrreducibleOfMinimal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GamOneReal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TraceOneHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.IdentityCellTrace.TermIdIffInSOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelevantCarrierNonempty.InSCarrierNonempty
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds
public import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Corank
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Saturated
public import Formalism.PeriodIntegrals.PairCorankPos
public import Formalism.PadicSubsetSums.StableGradedCounts.MemBesselSetZeroIffUpperTriangular
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PairCorankPos
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitRow
public import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermAttrConst
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalRelRepFree

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.LatticeSubOrthogonalHolds, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.BetaModXOfIota, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BetaModX, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaIndependence.YliftLeOrth, Formalism.PeriodIntegrals.ExplicitFormulaCounts.BetaIndep, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DCRelEquiv, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CardNonzero, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CharSumOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.RowExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.MirabolicBound, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalarPairDr, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WhittakerFunctionalDual.StableOfIrreducible, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentCardinality.UniMatUpper, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.ConvScalarOfLitOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.IntertwinerRankLeOne, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.RepresentationDimensionPos, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGConvScalar, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGGenRatio, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GgMatrixBoundOfLitOf, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.JointEigenvectorExists, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GammaMatrixInverse, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.MatrixCoefficientEquation, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.ProdFormula, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.SpectrumPositiveSemidefinite, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGMatBound, Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermCarrierStable, Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.LatticeSubOrthogonalHolds =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.LatticeSubOrthogonalHolds", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.Skeleton\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.TermDef IsDedekindDomain

namespace PI.UnitaryGroupMassFormula.BetaModX

section Loc

variable {E : Type} [Field E] [NumberField E] {V : Type} [AddCommGroup V] [Module (𝓞 E) V]

theorem le_locP (p : Ideal (𝓞 E)) [p.IsPrime] (L : Submodule (𝓞 E) V) : L ≤ Formalism.HermitianLatticesTheory.localization₂ p L := by
  intro x hx
  show ∃ s ∈ p.primeCompl, s • x ∈ L
  exact ⟨1, p.primeCompl.one_mem, by rw [one_smul]; exact hx⟩

theorem localization_mono (p : Ideal (𝓞 E)) [p.IsPrime] {L L' : Submodule (𝓞 E) V} (h : L ≤ L') :
    Formalism.HermitianLatticesTheory.localization₂ p L ≤ Formalism.HermitianLatticesTheory.localization₂ p L' := by
  intro x hx
  obtain ⟨s, hs, hsx⟩ : ∃ s ∈ p.primeCompl, s • x ∈ L := hx
  show ∃ s ∈ p.primeCompl, s • x ∈ L'
  exact ⟨s, hs, h hsx⟩

theorem mem_localization_of_smul_mem' (p : Ideal (𝓞 E)) [p.IsPrime] (L : Submodule (𝓞 E) V) (x : V) (s : 𝓞 E) (hs : s ∉ p)
    (h : s • x ∈ Formalism.HermitianLatticesTheory.localization₂ p L) : x ∈ Formalism.HermitianLatticesTheory.localization₂ p L := by
  obtain ⟨t, ht, htx⟩ : ∃ t ∈ p.primeCompl, t • s • x ∈ L := h
  have hs' : s ∈ p.primeCompl := hs
  show ∃ s ∈ p.primeCompl, s • x ∈ L
  exact ⟨t * s, p.primeCompl.mul_mem ht hs', by rw [mul_smul]; exact htx⟩

theorem mem_of_locP (N : Submodule (𝓞 E) V) (x : V)
    (h : ∀ P : HeightOneSpectrum (𝓞 E), x ∈ (haveI := P.isPrime; Formalism.HermitianLatticesTheory.localization₂ P.asIdeal N)) : x ∈ N := by

  let I : Ideal (𝓞 E) := Submodule.comap (LinearMap.toSpanSingleton (𝓞 E) V x) N
  have hmem : ∀ r : 𝓞 E, r ∈ I ↔ r • x ∈ N := fun r => by
    show (LinearMap.toSpanSingleton (𝓞 E) V x) r ∈ N ↔ r • x ∈ N
    rw [LinearMap.toSpanSingleton_apply]
  by_contra hx
  have hIt : I ≠ ⊤ := by
    intro hI
    apply hx
    have h1 : (1 : 𝓞 E) ∈ I := by rw [hI]; exact Submodule.mem_top
    have h2 := (hmem 1).1 h1
    rwa [one_smul] at h2
  obtain ⟨M, hM, hIM⟩ := Ideal.exists_le_maximal I hIt
  have hMb : M ≠ ⊥ := by
    intro hb
    rw [hb] at hM
    exact NumberField.RingOfIntegers.not_isField E (Ring.isField_iff_maximal_bot.mpr hM)
  obtain ⟨s, hs, hsx⟩ : ∃ s ∈ M.primeCompl, s • x ∈ N :=
    h ⟨M, hM.isPrime, hMb⟩
  exact hs (hIM ((hmem s).2 hsx))

end Loc

section D7

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem lattice_sub_orthogonal_holds : XLamSub := by
  intro D u u' F0 Λ hΛ y x hx
  obtain ⟨-, ⟨-, -, -, hlc⟩, -⟩ := hΛ
  obtain ⟨-, ⟨ξ, hξl, hξd, hξm⟩, hyc, -⟩ := y.2
  have hxΛ : x ∈ Λ := (Submodule.mem_inf.1 hx).1
  refine mem_of_locP _ x (fun P => ?_)
  haveI := P.isPrime
  by_cases hgP : ((gS D : ℕ) : 𝓞 D.host.E) ∈ P.asIdeal
  swap
  · apply mem_localization_of_smul_mem' P.asIdeal _ x ((gS D : ℕ) : 𝓞 D.host.E) hgP
    apply le_locP
    exact Submodule.mem_sup_left (Submodule.smul_mem_smul (Ideal.mem_span_singleton_self _) hxΛ)

  have hsm : ∀ (o : 𝓞 D.host.E) (v : (VS D).V), v ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) → ((o : D.host.E)) • v ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
    intro o v hv
    have h1 := (Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1)).smul_mem o hv
    rwa [← algebraMap_smul D.host.E o v] at h1

  have hye : ∀ b, y.1.fl.e b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
    intro b
    obtain ⟨cy, -, hcy1, hcyeq⟩ := hyc.1 P
    have hmem : cy b • y.1.fl.e b ∈ Submodule.span (𝓞 D.host.E) (Set.range fun a => cy a • y.1.fl.e a) :=
      Submodule.subset_span ⟨b, rfl⟩
    rw [hcy1 hgP b, one_smul] at hmem
    have h1 : y.1.fl.e b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (XLam Λ y.1) := by
      rw [hcyeq]
      exact le_locP _ _ hmem
    exact localization_mono P.asIdeal le_sup_right h1

  have key : ∀ n : ℕ, ∀ b : Fin D.R.rS, (b : ℕ) = n → (lf D F0).fl.e b ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
    intro n
    refine Nat.strong_induction_on n ?_
    intro n ih b hbn
    have hm := hξm (Fin.castSucc b)
    unfold ModG frameAct frame at hm
    have hdiff := localization_mono P.asIdeal (le_sup_left : Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ≤ Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) (hm P hgP)
    have hY : y.1.fl.fvec (Fin.castSucc b) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
      simpa [Formalism.MainNotions.S.FlagG.fvec] using hye b
    have hS : (∑ a, ((ξ a (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec a) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
      have h1 := Submodule.sub_mem _ hY hdiff
      rwa [sub_sub_cancel] at h1
    have hR : (∑ a ∈ Finset.univ.erase (Fin.castSucc b), ((ξ a (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec a) ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Ideal.span {((gS D : ℕ) : 𝓞 D.host.E)} • Λ ⊔ XLam Λ y.1) := by
      refine Submodule.sum_mem _ (fun a ha => ?_)
      have hab : a ≠ Fin.castSucc b := Finset.ne_of_mem_erase ha
      rcases lt_or_gt_of_ne hab with h | h
      · obtain ⟨a', rfl⟩ : ∃ a' : Fin D.R.rS, Fin.castSucc a' = a := ⟨⟨a.val, lt_trans h b.isLt⟩, Fin.ext rfl⟩
        have h' : (a' : ℕ) < (b : ℕ) := h
        simp only [Formalism.MainNotions.S.FlagG.fvec, Fin.snoc_castSucc]
        exact hsm _ _ (ih a' (by omega) a' rfl)
      · rw [hξl a (Fin.castSucc b) h]
        simp
    have hsum := Finset.add_sum_erase Finset.univ (fun a => ((ξ a (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec a) (Finset.mem_univ (Fin.castSucc b))
    have h2 : ((ξ (Fin.castSucc b) (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec (Fin.castSucc b) =
        (∑ a, ((ξ a (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec a) -
          ∑ a ∈ Finset.univ.erase (Fin.castSucc b), ((ξ a (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec a :=
      eq_sub_of_add_eq hsum
    have hfb : ((ξ (Fin.castSucc b) (Fin.castSucc b) : 𝓞 D.host.E) : D.host.E) • (lf D F0).fl.fvec (Fin.castSucc b) =
        (lf D F0).fl.e b := by
      rw [hξd]
      simp [Formalism.MainNotions.S.FlagG.fvec]
    rw [← hfb, h2]
    exact Submodule.sub_mem _ hS hR

  obtain ⟨cl, -, hcl1, hcleq⟩ := hlc.1 P
  have hxl : x ∈ Formalism.HermitianLatticesTheory.localization₂ P.asIdeal (Submodule.span (𝓞 D.host.E) (Set.range fun a => cl a • (lf D F0).fl.e a)) := by
    rw [← hcleq]
    exact le_locP _ _ hx
  obtain ⟨s, hs, hsx⟩ : ∃ s ∈ P.asIdeal.primeCompl, s • x ∈ Submodule.span (𝓞 D.host.E) (Set.range fun a => cl a • (lf D F0).fl.e a) := hxl
  apply mem_localization_of_smul_mem' P.asIdeal _ x s hs
  refine Submodule.span_le.2 ?_ hsx
  rintro _ ⟨a, rfl⟩
  simp only [hcl1 hgP a, one_smul]
  exact key _ a rfl

end D7

end PI.UnitaryGroupMassFormula.BetaModX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.LatticeSubOrthogonalHolds =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.BetaModXOfIota =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.BetaModXOfIota", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.Skeleton\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.LatticeSubOrthogonalHolds\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.ModLatticeAbsoluteValue\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.PositiveWeightHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.UnitaryGroupMassFormula.BetaModX

theorem betaModX_of_iota (h1 : IotaSurj) (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) :
    PI.ScalPairs.BetaL D u u' :=
  betaModX_of h1 lattice_sub_orthogonal_holds positive_weight_holds mod_lattice_absolute_value D u u'

end PI.UnitaryGroupMassFormula.BetaModX
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.BetaModXOfIota =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BetaModX =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BetaModX", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScalPairs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.BetaModXOfIota\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaModuloX.IotaSurjectiveHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem beta_mod_iota_surjective (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) : PI.ScalPairs.BetaL D u u' :=
  PI.UnitaryGroupMassFormula.BetaModX.betaModX_of_iota PI.UnitaryGroupMassFormula.BetaModX.Iota.iota_surjective_holds D u u'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BetaModX =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaIndependence.YliftLeOrth =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaIndependence.YliftLeOrth", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScalPairs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaUniqueness.Lemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open scoped Classical

open NumberField Module Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat

namespace PI.UnitaryGroupMassFormula.BetaIndep

section Gen

variable {E : Type} [Field E] [NumberField E] [StarRing E] {S : HSpace E} {r : ℕ}

theorem orth_anti {U W : Submodule E S.V} (h : U ≤ W) : orth S W ≤ orth S U := by
  intro v hv
  rw [PI.UnitaryGroupMassFormula.BetaLUniq.mem_orth] at hv ⊢
  exact fun x hx => hv x (h hx)

theorem Hp_le_orth (Λ : Submodule (𝓞 E) S.V) (hΛ : Submodule.IsFullLattice E Λ) {T T' : E}
    (F : LFlag S r T) (F' : LFlag S r T') : Hp Λ F F' ≤ orth S (Xsp F') :=
  orth_anti (PI.UnitaryGroupMassFormula.BetaLUniq.Xsp_le_UUE' S Λ hΛ F F')

theorem Ylift'_le_orth (Λ : Submodule (𝓞 E) S.V) {T T' : E}
    (F : LFlag S r T) (F' : LFlag S r T') : Ylift' Λ F F' ≤ orth S (Xsp F') := by
  intro v hv
  exact orth_anti (le_sup_left : F'.fl.X ≤ F'.fl.X ⊔ Submodule.span E {F'.fl.z}) hv.2

theorem mem_ThPairs (Λ : Submodule (𝓞 E) S.V) {T T' : E} (F : LFlag S r T) (F' F'' : LFlag S r T')
    (β : S.V ≃ₗ[E] S.V) (p : S.V × S.V) :
    p ∈ ThPairs Λ F F' F'' β ↔
      ((p.1 ∈ Hp Λ F F' ∧ p.2 ∈ Hp Λ F F'') ∧ p.1 - p.2 ∈ Xsp F) ∧ β p.1 - p.2 ∈ Xsp F'' :=
  Iff.rfl

variable (Λ : Submodule (𝓞 E) S.V) {T T' : E} (F : LFlag S r T) (F' F'' : LFlag S r T')
  (β₁ β₂ : S.V ≃ₗ[E] S.V)

theorem ThPairs_eq (hΛ : Submodule.IsFullLattice E Λ)
    (H : ∀ v ∈ orth S (Xsp F'), β₁ v - β₂ v ∈ Xsp F'') :
    ThPairs Λ F F' F'' β₁ = ThPairs Λ F F' F'' β₂ := by
  ext p
  rw [mem_ThPairs, mem_ThPairs]
  have hd : p.1 ∈ Hp Λ F F' → β₁ p.1 - β₂ p.1 ∈ Xsp F'' := fun h1 => H p.1 (Hp_le_orth Λ hΛ F F' h1)
  constructor
  · rintro ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩
    refine ⟨⟨⟨h1, h2⟩, h3⟩, ?_⟩
    have e : β₂ p.1 - p.2 = (β₁ p.1 - p.2) - (β₁ p.1 - β₂ p.1) := by abel
    rw [e]
    exact sub_mem h4 (hd h1)
  · rintro ⟨⟨⟨h1, h2⟩, h3⟩, h4⟩
    refine ⟨⟨⟨h1, h2⟩, h3⟩, ?_⟩
    have e : β₁ p.1 - p.2 = (β₂ p.1 - p.2) + (β₁ p.1 - β₂ p.1) := by abel
    rw [e]
    exact add_mem h4 (hd h1)

theorem Th_eq (hΛ : Submodule.IsFullLattice E Λ)
    (H : ∀ v ∈ orth S (Xsp F'), β₁ v - β₂ v ∈ Xsp F'') :
    Th Λ F F' F'' β₁ = Th Λ F F' F'' β₂ := by
  unfold Th
  rw [ThPairs_eq Λ F F' F'' β₁ β₂ hΛ H]

theorem s0_eq (hΛ : Submodule.IsFullLattice E Λ)
    (H : ∀ v ∈ orth S (Xsp F'), β₁ v - β₂ v ∈ Xsp F'') (k : ℕ) :
    s0 Λ F F' F'' β₁ k = s0 Λ F F' F'' β₂ k := by
  unfold s0
  rw [Th_eq Λ F F' F'' β₁ β₂ hΛ H]

theorem isScalar_iff (H : ∀ v ∈ orth S (Xsp F'), β₁ v - β₂ v ∈ Xsp F'') :
    IsScalar Λ F F' F'' β₁ ↔ IsScalar Λ F F' F'' β₂ := by
  have key : ∀ y1' ∈ Ylift' Λ F F', ∀ y2'' : S.V,
      (y2'' - β₁ y1' ∈ Xsp F'' ↔ y2'' - β₂ y1' ∈ Xsp F'') := by
    intro y1' hy y2''
    have hd := H y1' (Ylift'_le_orth Λ F F' hy)
    constructor
    · intro h
      have e : y2'' - β₂ y1' = (y2'' - β₁ y1') + (β₁ y1' - β₂ y1') := by abel
      rw [e]
      exact add_mem h hd
    · intro h
      have e : y2'' - β₁ y1' = (y2'' - β₂ y1') - (β₁ y1' - β₂ y1') := by abel
      rw [e]
      exact sub_mem h hd
  unfold IsScalar
  constructor
  · intro h y1 hy1 y2 hy2 y1' hy1' y2'' hy2'' hx hb
    exact h y1 hy1 y2 hy2 y1' hy1' y2'' hy2'' hx ((key y1' hy1' y2'').2 hb)
  · intro h y1 hy1 y2 hy2 y1' hy1' y2'' hy2'' hx hb
    exact h y1 hy1 y2 hy2 y1' hy1' y2'' hy2'' hx ((key y1' hy1' y2'').1 hb)

end Gen

section D7

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem betaIndep_of (D : D7) (u u' : D.what₂.Word) (h : PI.ScalPairs.BetaL D u u') :
    PI.ScalPairs.BetaFree D u u' := by
  intro hg F0 Λ hR x y hx hy β₁ β₂ h1 h2
  have hΛ : Submodule.IsFullLattice D.host.E Λ := hR.1.1
  have H := h hg F0 Λ hR x y hx hy β₁ β₂ h1 h2
  exact ⟨s0_eq Λ _ _ _ β₁ β₂ hΛ H _, isScalar_iff Λ _ _ _ β₁ β₂ H⟩

end D7

end PI.UnitaryGroupMassFormula.BetaIndep
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaIndependence.YliftLeOrth =====

-- ===== clump member: Formalism.PeriodIntegrals.ExplicitFormulaCounts.BetaIndep =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.ExplicitFormulaCounts.BetaIndep", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScalPairs\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.BetaModX\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.BetaIndependence.YliftLeOrth\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem scalPairs_betaFree (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) : PI.ScalPairs.BetaFree D u u' :=
  PI.UnitaryGroupMassFormula.BetaIndep.betaIndep_of D u u' (beta_mod_iota_surjective D u u')
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.ExplicitFormulaCounts.BetaIndep =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DCRelEquiv =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DCRelEquiv", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RelativeEquivalence.DCRelEquivAllHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem term_eq_iff_relation (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) : Formalism.L2.SG.TermDef.TermEqIff D u u' := by
  intro F0 Λ _
  exact PI.DCRelEquiv.UnitaryGroupMassFormula.eqIffAll_holds _ _ _ _ _ _ _ _
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DCRelEquiv =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CardNonzero =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CardNonzero", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.Development\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.LastRowMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GGMirBoundW

open Finset Matrix Formalism.L2.SG.GGMirabolic

noncomputable section

open Classical

theorem card_nonzero (F : Type) [Field F] [Fintype F] (m : ℕ) :
    Fintype.card {r : Fin m → F // r ≠ 0} = Fintype.card F ^ m - 1 := by
  rw [Fintype.card_subtype_compl, Fintype.card_subtype_eq, Fintype.card_fun, Fintype.card_fin]

theorem stepOf : StepOf := by
  intro hB hC hJ hR hO hS F _ _ n IH ψ₀ hψ V _ _ π ℓ hℓ hW

  let π' : Representation ℂ (GL (Fin (n + 1)) F) V := π.comp (E F (n + 1))
  have hW' : IsWhit ψ₀ π' ℓ := by
    intro u hu v
    have h := hW (E F (n + 1) u) (hB F (n + 1) u hu).1 v
    simp only [psiU] at h ⊢
    rw [(hB F (n + 1) u hu).2] at h
    exact h
  obtain ⟨p, hpL, hpI⟩ := IH ψ₀ hψ V π' ℓ hℓ hW'
  let R := {r : Fin (n + 1) → F // r ≠ 0}
  choose g hg using fun r : R => hR F n r.1 r.2
  let A : R × Fin (D F (n + 1)) → GL (Fin (n + 1)) F := fun q => p q.2 * g q.1
  have hArow : ∀ q j, (A q : Matrix (Fin (n + 1)) (Fin (n + 1)) F) (Fin.last n) j = q.1.1 j := by
    intro q j
    show ((p q.2 * g q.1 : GL (Fin (n + 1)) F) : Matrix (Fin (n + 1)) (Fin (n + 1)) F) (Fin.last n) j = q.1.1 j
    rw [lastRow_mul (hpL q.2), hg]
  let f : R × Fin (D F (n + 1)) → Module.Dual ℂ V := fun q => ℓ ∘ₗ π (E F (n + 1) (A q))

  have hf : ∀ (x : Fin (n + 1) → F) (r : R) (i : Fin (D F (n + 1))),
      (π (col x)).dualMap (f (r, i)) = (fun (r : R) x => ψ₀ (r.1 ⬝ᵥ x)) r x • f (r, i) := by
    intro x r i
    ext v
    show ℓ (π (E F (n + 1) (A (r, i))) (π (col x) v)) = ψ₀ (r.1 ⬝ᵥ x) * ℓ (π (E F (n + 1) (A (r, i))) v)
    rw [← Module.End.mul_apply, ← map_mul, hJ F (n + 1) (A (r, i)) x, map_mul, Module.End.mul_apply,
      hW _ (hC F n _).1, psiU, (hC F n _).2]
    congr 2
    simp only [Matrix.mulVec, dotProduct]
    exact Finset.sum_congr rfl fun j _ => by rw [hArow]

  have hblock : ∀ r : R, LinearIndependent ℂ (fun i => f (r, i)) := by
    intro r
    have he : (fun i => f (r, i)) = (π (E F (n + 1) (g r))).dualMap ∘ (fun i => ℓ ∘ₗ π' (p i)) := by
      funext i
      ext v
      show ℓ (π (E F (n + 1) (p i * g r)) v) = ℓ (π (E F (n + 1) (p i)) (π (E F (n + 1) (g r)) v))
      rw [map_mul, map_mul, Module.End.mul_apply]
    rw [he]
    refine hpI.map' _ (LinearMap.ker_eq_bot.mpr (LinearMap.dualMap_injective_of_surjective ?_))
    intro v
    refine ⟨π (E F (n + 1) (g r))⁻¹ v, ?_⟩
    rw [← Module.End.mul_apply, ← map_mul, mul_inv_cancel, map_one]
    rfl
  have hN : ((Fintype.card F : ℂ) ^ (n + 1)) ≠ 0 :=
    pow_ne_zero _ (by exact_mod_cast Fintype.card_ne_zero)
  have horth : ∀ r s : R, ∑ x : Fin (n + 1) → F, (fun (r : R) x => ψ₀ (r.1 ⬝ᵥ x)) r x *
      (fun (s : R) x => ψ₀ (-(s.1 ⬝ᵥ x))) s x = if r = s then (Fintype.card F : ℂ) ^ (n + 1) else 0 := by
    intro r s
    rw [hO F (n + 1) ψ₀ hψ r.1 s.1]
    exact if_congr Subtype.val_inj rfl rfl
  have hind := hS (Module.Dual ℂ V) (Fin (n + 1) → F) R (Fin (D F (n + 1)))
    (fun x => (π (col x)).dualMap) (fun (r : R) x => ψ₀ (r.1 ⬝ᵥ x)) (fun (s : R) x => ψ₀ (-(s.1 ⬝ᵥ x)))
    _ hN (fun r s => by convert horth r s) f hf hblock
  have hcard : Fintype.card (Fin (D F (n + 1 + 1))) = Fintype.card (R × Fin (D F (n + 1))) := by
    rw [Fintype.card_fin, Fintype.card_prod, card_nonzero, Fintype.card_fin, D, D,
      Finset.prod_Ico_succ_top (by omega : 1 ≤ n + 1), mul_comm]
  let e : Fin (D F (n + 1 + 1)) ≃ R × Fin (D F (n + 1)) := Fintype.equivOfCardEq hcard
  refine ⟨fun k => E F (n + 1) (A (e k)), fun k => lastRowE_E _, ?_⟩
  exact hind.comp e e.injective

end

end PI.GGMirBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CardNonzero =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CharSumOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CharSumOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.LegendreSymbol.AddCharacter\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GGMirBoundW

open Finset Matrix

noncomputable section

open Classical

theorem addChar_sum {F : Type} [Field F] (ψ₀ : AddChar F ℂ) {m : ℕ} (g : Fin m → F) :
    ψ₀ (∑ i, g i) = ∏ i, ψ₀ (g i) := by
  have h : ∀ s : Finset (Fin m), ψ₀ (∑ i ∈ s, g i) = ∏ i ∈ s, ψ₀ (g i) := by
    intro s
    induction s using Finset.induction_on with
    | empty => simp [AddChar.map_zero_eq_one]
    | @insert a s ha ih =>
      rw [Finset.sum_insert ha, Finset.prod_insert ha, AddChar.map_add_eq_mul, ih]
  exact h _

theorem charSum_one {F : Type} [Field F] [Fintype F] (ψ₀ : AddChar F ℂ) (hψ : ψ₀ ≠ 1) (a : F) :
    ∑ t : F, ψ₀ (a * t) = if a = 0 then (Fintype.card F : ℂ) else 0 := by
  split_ifs with ha
  · subst ha
    simp [AddChar.map_zero_eq_one]
  · rw [show (∑ t : F, ψ₀ (a * t)) = ∑ t : F, ψ₀ t from
        Fintype.sum_equiv (Equiv.mulLeft₀ a ha) _ _ (fun t => rfl)]
    exact AddChar.sum_eq_zero_of_ne_one hψ

theorem charSum {F : Type} [Field F] [Fintype F] (ψ₀ : AddChar F ℂ) (hψ : ψ₀ ≠ 1) {m : ℕ} (ν : Fin m → F) :
    ∑ c : Fin m → F, ψ₀ (∑ i, ν i * c i) = if ν = 0 then (Fintype.card F : ℂ) ^ m else 0 := by
  have hps : ∑ c : Fin m → F, ∏ i, ψ₀ (ν i * c i) = ∏ i, ∑ t : F, ψ₀ (ν i * t) := by
    first
      | exact (Fintype.prod_sum (fun i t => ψ₀ (ν i * t))).symm
  simp_rw [addChar_sum ψ₀]
  rw [hps]
  simp_rw [charSum_one ψ₀ hψ]
  split_ifs with hν
  · subst hν
    simp
  · obtain ⟨i, hi⟩ : ∃ i, ν i ≠ 0 := by
      by_contra h
      push_neg at h
      exact hν (funext h)
    exact Finset.prod_eq_zero (Finset.mem_univ i) (if_neg hi)

theorem charOrth : CharOrth := by
  intro F _ _ m ψ₀ hψ r s
  have h : ∀ x : Fin m → F, ψ₀ (r ⬝ᵥ x) * ψ₀ (-(s ⬝ᵥ x)) = ψ₀ (∑ i, (r - s) i * x i) := by
    intro x
    rw [← AddChar.map_add_eq_mul, ← sub_eq_add_neg, ← sub_dotProduct]
    rfl
  simp_rw [h]
  rw [charSum ψ₀ hψ (r - s)]
  simp only [sub_eq_zero]

theorem sepLemma : SepLemma := by
  intro W _ _ X R ι _ _ _ T χ χ' N hN horth f hf hind
  have hf' : ∀ x (q : R × ι), T x (f q) = χ q.1 x • f q := fun x q => hf x q.1 q.2
  rw [Fintype.linearIndependent_iff]
  intro g hg p
  obtain ⟨s, i⟩ := p
  have h1 : ∑ x, χ' s x • T x (∑ q, g q • f q) = 0 := by
    rw [hg]
    simp
  have h2 : ∑ x, χ' s x • T x (∑ q, g q • f q) =
      ∑ q, (if q.1 = s then N * g q else 0) • f q := by

    simp_rw [map_sum, map_smul, hf', Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun q _ => ?_
    rw [← Finset.sum_smul]
    congr 1
    have ho := horth q.1 s
    calc ∑ x, χ' s x * (g q * χ q.1 x) = g q * ∑ x, χ q.1 x * χ' s x := by
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun x _ => ?_
          ring
      _ = _ := by
          rw [ho]
          split_ifs <;> ring
  have h3 : ∑ q : R × ι, (if q.1 = s then N * g q else 0) • f q = N • ∑ j, g (s, j) • f (s, j) := by
    rw [Fintype.sum_prod_type, Finset.sum_eq_single s]
    · simp [Finset.smul_sum, smul_smul]
    · intro r _ hr
      simp [hr]
    · intro h
      exact absurd (Finset.mem_univ s) h
  rw [h2, h3] at h1
  have key : ∑ j, g (s, j) • f (s, j) = 0 := (smul_eq_zero.mp h1).resolve_left hN
  exact (Fintype.linearIndependent_iff.mp (hind s)) (fun j => g (s, j)) key i

end

end PI.GGMirBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CharSumOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.RowExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.RowExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.Development\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GGMirBoundW

open Finset Matrix

noncomputable section

open Classical

theorem rowExists : RowExists := by
  intro F _ _ n r hr
  obtain ⟨k, hk⟩ : ∃ k, r k ≠ 0 := by
    by_contra h
    push_neg at h
    exact hr (funext h)
  set σ : Equiv.Perm (Fin (n + 1)) := Equiv.swap k (Fin.last n) with hσ
  set A : Matrix (Fin (n + 1)) (Fin (n + 1)) F :=
    Matrix.updateRow 1 (Fin.last n) (fun j => r (σ j)) with hA
  have hAtri : A.BlockTriangular OrderDual.toDual := by
    intro i j hij
    have hij' : i < j := hij
    have hi : i ≠ Fin.last n := fun h => by
      subst h
      exact absurd hij' (not_lt.mpr (Fin.le_last j))
    rw [hA, Matrix.updateRow_ne hi, Matrix.one_apply_ne (ne_of_lt hij')]
  have hdetA : A.det = r k := by
    rw [Matrix.det_of_lowerTriangular A hAtri, Finset.prod_eq_single (Fin.last n)]
    · rw [hA, Matrix.updateRow_self]
      simp [hσ]
    · intro i _ hi
      rw [hA, Matrix.updateRow_ne hi, Matrix.one_apply_eq]
    · intro h
      exact absurd (Finset.mem_univ _) h
  set B := A.submatrix id σ with hB
  have hdetB : B.det ≠ 0 := by
    rw [hB, Matrix.det_permute', hdetA]
    refine mul_ne_zero ?_ hk
    rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with h | h <;> simp [h]
  have hunit : IsUnit B := (Matrix.isUnit_iff_isUnit_det B).mpr (isUnit_iff_ne_zero.mpr hdetB)
  refine ⟨hunit.unit, fun j => ?_⟩
  rw [IsUnit.unit_spec]
  simp [hB, hA, hσ, Matrix.updateRow_self, Equiv.swap_apply_self]

end

end PI.GGMirBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.RowExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.MirabolicBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.MirabolicBound", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CardNonzero\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.CharSumOne\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.LastRowMul\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.RowExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GGMirBoundW

theorem mirabolicBound : Formalism.L2.SG.GGMirabolic.MirabolicBound :=
  mirabolicBound_of_steps baseProp stepOf blkFacts colFacts conjCol rowExists charOrth sepLemma

end PI.GGMirBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.MirabolicBound =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalarPairDr =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalarPairDr", "h": "module\n\npublic import Formalism.PeriodIntegrals.ScalarPairDr\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarPairOrthogonal.ExistsNeZeroMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem scalar_pair_dr (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) : PI.ScalarPairDr.ScalarDr D u u' :=
  PI.ScalarPairDr.W.scalarDr D u u'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalarPairDr =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WhittakerFunctionalDual.StableOfIrreducible =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WhittakerFunctionalDual.StableOfIrreducible", "h": "module\n\npublic import Formalism.PeriodIntegrals.WhitFunctDual\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.WhitFunctDualWork

open Formalism.L2.SG.GGMirabolic

theorem stable_of_irreducible {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V]
    (π : Representation ℂ G V) (h : π.IsIrreducible) :
    Nontrivial V ∧ ∀ W : Submodule ℂ V, (∀ g, ∀ x ∈ W, π g x ∈ W) → W = ⊥ ∨ W = ⊤ := by
  have := h
  refine ⟨?_, fun W hW => ?_⟩
  · by_contra hnt
    rw [not_nontrivial_iff_subsingleton] at hnt
    apply (bot_ne_top : (⊥ : Subrepresentation π) ≠ ⊤)
    apply Subrepresentation.toSubmodule_injective
    show (⊥ : Submodule ℂ V) = ⊤
    ext x
    simp [Subsingleton.elim x 0]
  · rcases IsSimpleOrder.eq_bot_or_eq_top
        (⟨W, fun g v hv => hW g v hv⟩ : Subrepresentation π) with h1 | h1
    · exact Or.inl (congrArg Subrepresentation.toSubmodule h1)
    · exact Or.inr (congrArg Subrepresentation.toSubmodule h1)

theorem isIrr_dual {G V : Type} [Group G] [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]
    (π : Representation ℂ G V) (h : π.IsIrreducible) :
    Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.IsIrr (Representation.dual π) := by
  obtain ⟨hnt, hst⟩ := stable_of_irreducible π h
  refine ⟨Module.nontrivial_of_finrank_pos (by rw [Subspace.dual_finrank_eq]; exact Module.finrank_pos),
    fun W hW => ?_⟩
  have hU : ∀ g, ∀ v ∈ W.dualCoannihilator, π g v ∈ W.dualCoannihilator := by
    intro g v hv
    rw [Submodule.mem_dualCoannihilator] at hv ⊢
    intro f hf
    simpa [Representation.dual_apply, Module.Dual.transpose_apply] using hv _ (hW g⁻¹ f hf)
  have hW' : W = W.dualCoannihilator.dualAnnihilator :=
    Subspace.dualCoannihilator_dualAnnihilator_eq.symm
  rcases hst _ hU with h0 | h0
  · right
    rw [hW', h0, Submodule.dualAnnihilator_bot]
  · left
    rw [hW', h0, Submodule.dualAnnihilator_top]

theorem besselEdge_zero (i j : ℕ) : Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselEdge 0 0 i j ↔ j = i + 1 := by
  unfold Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselEdge
  constructor <;> intro h <;> omega

theorem whit_mem {F : Type} [Field F] [Fintype F] {k : ℕ} (ψ₀ : AddChar F ℂ) {V : Type}
    [AddCommGroup V] [Module ℂ V] (π : Representation ℂ (GL (Fin k) F) V)
    (ℓ : Module.Dual ℂ V) (hℓ : IsWhit ψ₀ π ℓ) :
    ℓ ∈ Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselSpace (Representation.dual π) ψ₀⁻¹ 0 0 := by
  intro u
  beta_reduce
  obtain ⟨hdiag, hlow, -⟩ := u.2
  have huni : IsUni k (u : GL (Fin k) F) := ⟨hdiag, hlow⟩
  have hp : psiU ψ₀ (u : GL (Fin k) F) ≠ 0 := by
    intro h0
    have h3 := AddChar.map_add_eq_mul ψ₀ (superdiag k ((u : GL (Fin k) F) : Matrix (Fin k) (Fin k) F))
      (-superdiag k ((u : GL (Fin k) F) : Matrix (Fin k) (Fin k) F))
    rw [add_neg_cancel, AddChar.map_zero_eq_one] at h3
    unfold psiU at h0
    rw [h0, zero_mul] at h3
    exact one_ne_zero h3
  have hchar : Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselChar ψ₀⁻¹ 0 0 k (u : GL (Fin k) F) =
      (psiU ψ₀ (u : GL (Fin k) F))⁻¹ := by
    unfold Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselChar psiU superdiag
    rw [AddChar.inv_apply, AddChar.map_neg_eq_inv]
    congr 2
    refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
    by_cases hij : (j : ℕ) = (i : ℕ) + 1 <;> simp [hij, besselEdge_zero]
  ext v
  have hinv : π (u : GL (Fin k) F) (π ((u : GL (Fin k) F)⁻¹) v) = v := by
    rw [← Module.End.mul_apply, ← map_mul, mul_inv_cancel, map_one, Module.End.one_apply]
  have hw := hℓ (u : GL (Fin k) F) huni (π ((u : GL (Fin k) F)⁻¹) v)
  rw [hinv] at hw
  rw [Representation.dual_apply, LinearMap.smul_apply, hchar, smul_eq_mul,
    Module.Dual.transpose_apply, LinearMap.comp_apply, hw, ← mul_assoc, inv_mul_cancel₀ hp, one_mul]

theorem whitFunctDual_main : PI.WhitFunctDual := by
  intro hGG F _ _ k ψ₀ hψ V _ _ _ π hπ ℓ₁ ℓ₂ h1 h2 hne
  let B : Submodule ℂ (Module.Dual ℂ V) := Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.besselSpace (Representation.dual π) ψ₀⁻¹ 0 0
  have hdim : Module.finrank ℂ B ≤ 1 := hGG F (Module.Dual ℂ V) k ψ₀⁻¹ (Representation.dual π) (inv_ne_one.mpr hψ) (isIrr_dual π hπ)
  have m1 : ℓ₁ ∈ B := whit_mem ψ₀ π ℓ₁ h1
  have m2 : ℓ₂ ∈ B := whit_mem ψ₀ π ℓ₂ h2
  have hne' : (⟨ℓ₁, m1⟩ : B) ≠ 0 := fun h0 => hne (congrArg Subtype.val h0)
  have hpos : 0 < Module.finrank ℂ B := Module.finrank_pos_iff_exists_ne_zero.mpr ⟨_, hne'⟩
  obtain ⟨c, hc⟩ := (finrank_eq_one_iff_of_nonzero' _ hne').mp (le_antisymm hdim hpos) ⟨ℓ₂, m2⟩
  exact ⟨c, (congrArg Subtype.val hc).symm⟩

end PI.WhitFunctDualWork
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WhittakerFunctionalDual.StableOfIrreducible =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentCardinality.UniMatUpper =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentCardinality.UniMatUpper", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace PI.GGCardUniWork

open Finset Matrix Formalism.L2.SG.GGMirabolic

variable {F : Type} [Field F] [Fintype F] {k : ℕ}

abbrev Pairs (k : ℕ) := {p : Fin k × Fin k // p.1 < p.2}

def uniMat (f : Pairs k → F) : Matrix (Fin k) (Fin k) F :=
  fun i j => if i = j then 1 else if h : i < j then f ⟨(i, j), h⟩ else 0

theorem uniMat_upper (f : Pairs k → F) : (uniMat f).IsUpperTriangular := by
  intro i j hji
  change j < i at hji
  simp [uniMat, ne_of_gt hji, not_lt.mpr hji.le]

theorem uniMat_det (f : Pairs k → F) : (uniMat f).det = 1 := by
  simpa [uniMat] using Matrix.det_of_upperTriangular (uniMat_upper f)

noncomputable def uniGL (f : Pairs k → F) : GL (Fin k) F :=
  GeneralLinearGroup.mkOfDetNeZero (uniMat f) (by rw [uniMat_det]; exact one_ne_zero)

theorem uniGL_coe (f : Pairs k → F) : ((uniGL f : GL (Fin k) F) : Matrix (Fin k) (Fin k) F) = uniMat f := rfl

theorem isUni_uniGL (f : Pairs k → F) : IsUni k (uniGL f) := by
  unfold IsUni
  exact ⟨fun i => by simp [uniGL_coe, uniMat],
    fun i j h => by simp [uniGL_coe, uniMat, ne_of_gt h, not_lt.mpr h.le]⟩

noncomputable def uniEquiv : {x : GL (Fin k) F // IsUni k x} ≃ (Pairs k → F) where
  toFun x p := (x.1 : Matrix (Fin k) (Fin k) F) p.1.1 p.1.2
  invFun f := ⟨uniGL f, isUni_uniGL f⟩
  left_inv x := by
    obtain ⟨x, hd, hl⟩ := x
    apply Subtype.ext
    apply GeneralLinearGroup.ext
    intro i j
    simp only [uniGL_coe, uniMat]
    by_cases h : i = j
    · subst h; simp [hd i]
    · by_cases h' : i < j
      · simp [h, h']
      · have : j < i := lt_of_le_of_ne (not_lt.mp h') (Ne.symm h)
        simp [h, h', hl i j this]
  right_inv f := by
    funext p
    obtain ⟨⟨i, j⟩, h⟩ := p
    have h1 : i ≠ j := ne_of_lt h
    simp [uniGL_coe, uniMat, h1, h]

theorem card_pairs (k : ℕ) : Fintype.card (Pairs k) = k * (k - 1) / 2 := by
  have hI : ∀ j : Fin k, (∑ i : Fin k, if i < j then 1 else 0) = (j : ℕ) := fun j => by
    rw [← Finset.card_filter]
    rw [show (Finset.univ.filter fun i : Fin k => i < j) = Finset.Iio j by ext i; simp]
    exact Fin.card_Iio j
  rw [Fintype.card_subtype, Finset.card_filter, Fintype.sum_prod_type_right]
  simp only [hI]
  rw [Fin.sum_univ_eq_sum_range (fun i => i) k, Finset.sum_range_id]

theorem cardUni : CardUni := by
  intro F _ _ k
  unfold cardU
  rw [Nat.card_congr (uniEquiv (F := F) (k := k)), Nat.card_eq_fintype_card, Fintype.card_fun,
    card_pairs]

end PI.GGCardUniWork
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentCardinality.UniMatUpper =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.ConvScalarOfLitOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.ConvScalarOfLitOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.CardUNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

open Classical

namespace PI.GGConvScalarW

open Formalism.L2.SG.GGMirabolic

theorem convScalar_of (h1 : RepGamConj) (h2 : RepGamComm) (h3 : QIdem) (h4 : GenericIff) (h5 : RankLeOne)
    (h6 : SchurC) (h7 : TraceRepGam) (h8 : IdemTrace) (h9 : DimPos) (hm : GelfandGraevMultOne) :
    ConvScalar := by
  intro F _ _ k ψ₀ hψ V _ _ _ π hπ
  have hu : IsUni k (1 : GL (Fin k) F) :=
    ⟨fun i => by simp, fun i j hij => by simp [Matrix.one_apply_ne (ne_of_gt hij)]⟩
  have hpsi1 : psiNat ψ₀ (1 : GL (Fin k) F) = 1 := by
    simp only [psiNat, if_pos hu, psiU]
    have hs : superdiag k ((1 : GL (Fin k) F) : Matrix (Fin k) (Fin k) F) = 0 := by
      unfold superdiag
      refine Finset.sum_eq_zero fun i _ => Finset.sum_eq_zero fun j _ => ?_
      split_ifs with h
      · have hij : i ≠ j := by
          intro e
          rw [e] at h
          omega
        simp [Matrix.one_apply_ne hij]
      · rfl
    rw [hs, AddChar.map_zero_eq_one]
  have hgam : gam ψ₀ (1 : GL (Fin k) F) =
      (cardU F k : ℂ)⁻¹ * (Fintype.card (GL (Fin k) F) : ℂ) := by
    unfold gam
    simp [hpsi1]
  have hG0 : (Fintype.card (GL (Fin k) F) : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr Fintype.card_ne_zero
  have hU0 : (cardU F k : ℂ) ≠ 0 := by
    haveI : Nonempty {x : GL (Fin k) F // IsUni k x} := ⟨⟨1, hu⟩⟩
    exact Nat.cast_ne_zero.mpr Nat.card_pos.ne'
  have hdim := h9 F k V π hπ
  have hd0 : (Module.finrank ℂ V : ℂ) ≠ 0 := Nat.cast_ne_zero.mpr hdim.ne'
  obtain ⟨c, hc⟩ := h6 F k V π hπ (repGam ψ₀ π) fun g => h2 F k ψ₀ V π g
  have htr := h7 F k ψ₀ V π
  rw [hc, h8 V (projQ ψ₀ π) (h3 F k ψ₀ V π), map_smul, LinearMap.trace_id, smul_eq_mul] at htr
  rw [hc, hgam]
  split_ifs with hgen
  · have hne := (h4 F k ψ₀ V π).mp hgen
    have hr1 : Module.finrank ℂ (LinearMap.range (projQ ψ₀ π)) = 1 := by
      have hle := h5 hm F k ψ₀ hψ V π hπ
      have hpos : Module.finrank ℂ (LinearMap.range (projQ ψ₀ π)) ≠ 0 := fun h0 =>
        hne (LinearMap.range_eq_bot.mp (Submodule.finrank_eq_zero.mp h0))
      omega
    rw [hr1, Nat.cast_one, mul_one] at htr
    have hcv : c = (Fintype.card (GL (Fin k) F) : ℂ) / (Module.finrank ℂ V : ℂ) := by
      rw [eq_div_iff hd0]
      exact htr
    rw [smul_smul, hcv]
    congr 1
    field_simp
  · have hz : projQ ψ₀ π = 0 := by
      by_contra h
      exact hgen ((h4 F k ψ₀ V π).mpr h)
    rw [hz, LinearMap.range_zero, finrank_bot, Nat.cast_zero, mul_zero] at htr
    have hc0 : c = 0 := by
      rcases mul_eq_zero.mp htr with h | h
      · exact h
      · exact absurd h hd0
    rw [hc0, zero_smul, smul_zero]

theorem convScalarOfLit_of (h1 : RepGamConj) (h2 : RepGamComm) (h3 : QIdem) (h4 : GenericIff)
    (h5 : RankLeOne) (h6 : SchurC) (h7 : TraceRepGam) (h8 : IdemTrace) (h9 : DimPos) :
    ConvScalarOfLit := by
  exact fun hm => convScalar_of h1 h2 h3 h4 h5 h6 h7 h8 h9 hm

end PI.GGConvScalarW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.ConvScalarOfLitOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.IntertwinerRankLeOne =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.IntertwinerRankLeOne", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.CardUNeZero\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.SuperdiagSgnConj\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.AveragingOperatorIdempotent\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset

noncomputable section

open Classical

namespace PI.GGConvScalarW

open Formalism.L2.SG.GGMirabolic

variable {F : Type} [Field F] [Fintype F] {k : ℕ} {V : Type} [AddCommGroup V] [Module ℂ V]

theorem pi_sgn_mul (π : Representation ℂ (GL (Fin k) F) V) (x : GL (Fin k) F) (v : V) :
    π (sgn k) (π x v) = π (sgn k * x * sgn k) (π (sgn k) v) := by
  rw [← Module.End.mul_apply, ← map_mul, ← Module.End.mul_apply, ← map_mul, mul_assoc (sgn k * x),
    sgn_mul_self, mul_one]

theorem pi_sgn_sgn (π : Representation ℂ (GL (Fin k) F) V) (v : V) : π (sgn k) (π (sgn k) v) = v := by
  rw [← Module.End.mul_apply, ← map_mul, sgn_mul_self, map_one, Module.End.one_apply]

theorem whit_sgn_projQ (ψ₀ : AddChar F ℂ) (π : Representation ℂ (GL (Fin k) F) V) (ℓ : Module.Dual ℂ V)
    (hℓ : IsWhit ψ₀ π ℓ) (v : V) : ℓ (π (sgn k) (projQ ψ₀ π v)) = ℓ (π (sgn k) v) := by
  have hterm : ∀ x : GL (Fin k) F, psiNat ψ₀ x * ℓ (π (sgn k) (π x v)) =
      (if IsUni k x then (1 : ℂ) else 0) * ℓ (π (sgn k) v) := by
    intro x
    rw [pi_sgn_mul]
    by_cases hx : IsUni k x
    · rw [hℓ _ (isUni_sgn_conj hx), ← mul_assoc, if_pos hx]
      unfold psiNat
      rw [if_pos hx, mul_comm (psiU ψ₀ x), psiU_sgn_conj]
    · unfold psiNat; rw [if_neg hx, if_neg hx, zero_mul, zero_mul]
  unfold projQ

  simp only [LinearMap.smul_apply, LinearMap.sum_apply, map_smul, map_sum, smul_eq_mul]
  simp_rw [hterm]
  rw [← Finset.sum_mul, sum_boole_uni, ← mul_assoc, inv_mul_cancel₀ (cardU_ne_zero F k), one_mul]

theorem isWhit_of_dual (ψ₀ : AddChar F ℂ) (π : Representation ℂ (GL (Fin k) F) V) (f : Module.Dual ℂ V) :
    IsWhit ψ₀ π (f ∘ₗ (projQ ψ₀ π ∘ₗ π (sgn k))) := by
  intro u hu v
  have hq := LinearMap.congr_fun (projQ_comp_pi ψ₀ π (isUni_sgn_conj hu)) (π (sgn k) v)
  simp only [LinearMap.comp_apply] at hq ⊢
  rw [pi_sgn_mul, hq, LinearMap.smul_apply, map_smul, smul_eq_mul,
    inv_eq_of_mul_eq_one_right (psiU_sgn_conj ψ₀ u)]

theorem generic_iff_criterion : GenericIff := by
  intro F _ _ k ψ₀ V _ _ π
  constructor
  · rintro ⟨ℓ, hne, hw⟩ hQ
    apply hne
    ext v
    have := whit_sgn_projQ ψ₀ π ℓ hw (π (sgn k) v)
    rw [hQ, LinearMap.zero_apply, map_zero, map_zero, pi_sgn_sgn] at this
    rw [← this, LinearMap.zero_apply]
  · intro hQ
    obtain ⟨v, hv⟩ : ∃ v, projQ ψ₀ π v ≠ 0 := by
      by_contra h
      push_neg at h
      exact hQ (LinearMap.ext h)
    obtain ⟨f, hf⟩ : ∃ f : Module.Dual ℂ V, f (projQ ψ₀ π v) ≠ 0 := by
      by_contra h
      push_neg at h
      exact hv ((Module.forall_dual_apply_eq_zero_iff ℂ _).1 h)
    refine ⟨f ∘ₗ (projQ ψ₀ π ∘ₗ π (sgn k)), ?_, isWhit_of_dual ψ₀ π f⟩
    intro h0
    apply hf
    have := LinearMap.congr_fun h0 (π (sgn k) v)
    simp only [LinearMap.comp_apply, LinearMap.zero_apply, pi_sgn_sgn] at this
    exact this

theorem intertwiner_rank_le_one : RankLeOne := by
  intro hm F _ _ k ψ₀ hψ V _ _ _ π hirr
  set T : V →ₗ[ℂ] V := projQ ψ₀ π ∘ₗ π (sgn k) with hTdef
  have hsurj : LinearMap.range (π (sgn k)) = ⊤ :=
    LinearMap.range_eq_top.2 fun v => ⟨π (sgn k) v, pi_sgn_sgn π v⟩
  have hrT : LinearMap.range T = LinearMap.range (projQ ψ₀ π) :=
    LinearMap.range_comp_of_range_eq_top _ hsurj
  rw [← hrT, ← LinearMap.finrank_range_dualMap_eq_finrank_range T]
  by_cases h : ∃ ℓ₁ ∈ LinearMap.range T.dualMap, ℓ₁ ≠ 0
  · obtain ⟨ℓ₁, ⟨f₁, rfl⟩, hne⟩ := h
    have hle : LinearMap.range T.dualMap ≤ Submodule.span ℂ {T.dualMap f₁} := by
      rintro _ ⟨f₂, rfl⟩
      obtain ⟨c, hc⟩ := hm F k ψ₀ hψ V π hirr _ _ (isWhit_of_dual ψ₀ π f₁) (isWhit_of_dual ψ₀ π f₂) hne
      rw [Submodule.mem_span_singleton]
      exact ⟨c, hc.symm⟩
    exact (Submodule.finrank_mono hle).trans (finrank_span_singleton hne).le
  · push_neg at h
    rw [(Submodule.eq_bot_iff _).2 h, finrank_bot]
    omega

end PI.GGConvScalarW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.IntertwinerRankLeOne =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.RepresentationDimensionPos =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.RepresentationDimensionPos", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.CardUNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace PI.GGConvScalarW

open Formalism.L2.SG.GGMirabolic

theorem nontrivial_of_irreducible {G : Type} [Monoid G] {V : Type} [AddCommGroup V] [Module ℂ V]
    (π : Representation ℂ G V) (hπ : π.IsIrreducible) : Nontrivial V := by
  by_contra h
  rw [not_nontrivial_iff_subsingleton] at h
  have hs : IsSimpleOrder (Subrepresentation π) := hπ
  obtain ⟨a, b, hab⟩ := hs.toNontrivial.exists_pair_ne
  apply hab
  rcases a with ⟨a, ha⟩
  rcases b with ⟨b, hb⟩
  congr 1
  exact Subsingleton.elim a b

theorem representation_dimension_pos : DimPos := by
  intro F _ _ k V _ _ _ π hπ
  haveI := nontrivial_of_irreducible π hπ
  exact Module.finrank_pos

theorem schur_lemma_complex : SchurC := by
  intro F _ _ k V _ _ _ π hπ f hf
  haveI := nontrivial_of_irreducible π hπ
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue f
  refine ⟨c, ?_⟩
  have hinv : ∀ (g : GL (Fin k) F) ⦃v : V⦄, v ∈ LinearMap.ker (f - c • LinearMap.id) →
      π g v ∈ LinearMap.ker (f - c • LinearMap.id) := by
    intro g v hv
    simp only [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply] at hv ⊢
    have h1 := congrArg (fun φ : V →ₗ[ℂ] V => φ v) (hf g)
    simp only [LinearMap.comp_apply] at h1
    rw [← h1, ← map_smul, ← map_sub, hv, map_zero]
  let W : Subrepresentation π := ⟨LinearMap.ker (f - c • LinearMap.id), hinv⟩
  have hs : IsSimpleOrder (Subrepresentation π) := hπ
  obtain ⟨v, hv⟩ := hc.exists_hasEigenvector
  rcases hs.eq_bot_or_eq_top W with hW | hW
  · exfalso
    apply hv.2
    have hvW : v ∈ LinearMap.ker (f - c • LinearMap.id) := by
      simp only [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply]
      rw [hv.apply_eq_smul, sub_self]
    have h2 := congrArg Subrepresentation.toSubmodule hW
    change LinearMap.ker (f - c • LinearMap.id) = _ at h2
    rw [h2] at hvW
    have h3 : v ∈ (⊥ : Submodule ℂ V) := hvW
    simpa using h3
  · apply LinearMap.ext
    intro x
    have h2 := congrArg Subrepresentation.toSubmodule hW
    change LinearMap.ker (f - c • LinearMap.id) = _ at h2
    have hx : x ∈ LinearMap.ker (f - c • LinearMap.id) := by
      rw [h2]
      exact (show x ∈ (⊤ : Submodule ℂ V) from Submodule.mem_top)
    simp only [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, LinearMap.id_apply] at hx
    simpa [sub_eq_zero] using hx

end PI.GGConvScalarW
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.RepresentationDimensionPos =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGConvScalar =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGConvScalar", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.AveragingOperatorIdempotent\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.ConvScalarOfLitOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.IntertwinerRankLeOne\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.Reindex\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.RepresentationDimensionPos\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem convolution_scalar : Formalism.L2.SG.GGMirabolic.ConvScalarOfLit :=
  PI.GGConvScalarW.convScalarOfLit_of PI.GGConvScalarW.representation_conjugate_gamma PI.GGConvScalarW.representation_commutes_gamma
    PI.GGConvScalarW.averaging_operator_idempotent PI.GGConvScalarW.generic_iff_criterion PI.GGConvScalarW.intertwiner_rank_le_one
    PI.GGConvScalarW.schur_lemma_complex PI.GGConvScalarW.trace_representation_gamma PI.GGConvScalarW.idempotent_trace_formula
    PI.GGConvScalarW.representation_dimension_pos
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGConvScalar =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGGenRatio =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGGenRatio", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem generic_ratio_bound : Formalism.L2.SG.GGMirabolic.GenericRatioOfBound := by
  unfold Formalism.L2.SG.GGMirabolic.GenericRatioOfBound
  intro hMir hCard
  unfold Formalism.L2.SG.GGMirabolic.GenericRatio
  intro F _ _ k ψ₀ hψ V _ _ _ π hirr hgen
  have hb := hMir F k ψ₀ hψ V π hirr hgen
  rw [hCard F k]
  have hq : 1 < Fintype.card F := Fintype.one_lt_card
  have hqR : (1 : ℝ) < (Fintype.card F : ℝ) := by exact_mod_cast hq
  have hx : ∀ i ∈ Finset.Ico 1 k, (1 : ℝ) < (Fintype.card F : ℝ) ^ i := by
    intro i hi
    have hi1 : i ≠ 0 := by
      simp only [Finset.mem_Ico] at hi
      omega
    exact one_lt_pow₀ hqR hi1
  have hsum : ∑ i ∈ Finset.Ico 1 k, i = k * (k - 1) / 2 := by
    rw [← Finset.sum_range_id]
    rcases Nat.eq_zero_or_pos k with hk | hk
    · subst hk
      simp
    · rw [Finset.range_eq_Ico, Finset.sum_eq_sum_Ico_succ_bot hk]
      simp
  have hP : 0 < ∏ i ∈ Finset.Ico 1 k, ((Fintype.card F : ℝ) ^ i - 1) :=
    Finset.prod_pos fun i hi => sub_pos.mpr (hx i hi)
  have hcast : ((∏ i ∈ Finset.Ico 1 k, (Fintype.card F ^ i - 1) : ℕ) : ℝ)
      = ∏ i ∈ Finset.Ico 1 k, ((Fintype.card F : ℝ) ^ i - 1) := by
    rw [Nat.cast_prod]
    apply Finset.prod_congr rfl
    intro i _
    rw [Nat.cast_sub (Nat.one_le_pow _ _ (by omega)), Nat.cast_pow, Nat.cast_one]
  have hPD : ∏ i ∈ Finset.Ico 1 k, ((Fintype.card F : ℝ) ^ i - 1) ≤ (Module.finrank ℂ V : ℝ) := by
    rw [← hcast]
    exact_mod_cast hb
  have hR : ∏ i ∈ Finset.Ico 1 k, (1 - ((Fintype.card F : ℝ) ^ i)⁻¹)⁻¹
      = (Fintype.card F : ℝ) ^ (k * (k - 1) / 2) / ∏ i ∈ Finset.Ico 1 k, ((Fintype.card F : ℝ) ^ i - 1) := by
    rw [← hsum, ← Finset.prod_pow_eq_pow_sum, ← Finset.prod_div_distrib]
    apply Finset.prod_congr rfl
    intro i hi
    have h1 := hx i hi
    have h0 : (Fintype.card F : ℝ) ^ i ≠ 0 := (lt_trans one_pos h1).ne'
    have h2 : (Fintype.card F : ℝ) ^ i - 1 ≠ 0 := (sub_pos.mpr h1).ne'
    field_simp
  rw [hR, Nat.cast_pow]
  gcongr
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGGenRatio =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GgMatrixBoundOfLitOf =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GgMatrixBoundOfLitOf", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Classical Formalism.L2.SG.GGMirabolic
open scoped ComplexOrder

namespace PI.GGMatBoundW

theorem ggMatrixBoundOfLit_of (hM : MatrixEq) (hH : TotHerm) (hE : EigBound) (hS : SpecPSD)
    (hCL : ConvScalarOfLit) (hRB : GenericRatioOfBound) (hCU : CardUni) : GGMatrixBoundOfLit := by
  intro hGG hMB ι _ Fq _ _ k ψ hψ hq X _ _ hfree d hd
  obtain ⟨hA, hAt⟩ := hM ι Fq k ψ X hfree d hd
  have hspec := hS X _ _ (hH ι Fq k ψ X) fun w μ hw hAw =>
    hE (hCL hGG) (hRB hMB hCU) ι Fq k ψ hψ hq (X → ℂ) (permRep _ X) w μ hw
      (by rw [← hAw, ← toLin'_apply, toLin'_toMatrix'])
  rw [hAt, hA]
  exact ⟨hspec.1.transpose, hspec.2⟩

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GgMatrixBoundOfLitOf =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.JointEigenvectorExists =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.JointEigenvectorExists", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.Reindex\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.IrreducibleOfMinimal\n\n"}
section -- clump:auto
@[expose] public section

open Classical Formalism.L2.SG.GGMirabolic

namespace PI.GGMatBoundW

variable {ι : Type} {Fq : ι → Type} [∀ v, Field (Fq v)] [∀ v, Fintype (Fq v)] {k : ℕ}
  (ψ : ∀ v, AddChar (Fq v) ℂ) {V : Type} [AddCommGroup V] [Module ℂ V]
  (π : Representation ℂ (∀ v, GL (Fin k) (Fq v)) V)

theorem sum_conj_comm {H G : Type} [Group H] [Fintype H] [Group G] (ρ : Representation ℂ G V)
    (φ : H →* G) (f : H → ℂ) (hf : ∀ a x, f (a * x * a⁻¹) = f x) (g : G) (a : H)
    (hg : ∀ x, g * φ x * g⁻¹ = φ (a * x * a⁻¹)) :
    ρ g ∘ₗ ∑ x, f x • ρ (φ x) = (∑ x, f x • ρ (φ x)) ∘ₗ ρ g := by
  show ρ g * _ = _ * ρ g
  rw [Finset.mul_sum, Finset.sum_mul]
  refine Fintype.sum_equiv (MulAut.conj a).toEquiv _ _ fun x => ?_
  simp only [MulEquiv.toEquiv_eq_coe, MulEquiv.coe_toEquiv, MulAut.conj_apply, hf, ← hg,
    mul_smul_comm, smul_mul_assoc, ← map_mul, inv_mul_cancel_right]

theorem totOp_comm [Fintype ι] (g : ∀ v, GL (Fin k) (Fq v)) :
    π g ∘ₗ totOp ψ π = totOp ψ π ∘ₗ π g :=
  sum_conj_comm π (MonoidHom.id _) (gamProd ψ)
    (fun a x => Finset.prod_congr rfl fun v _ => PI.GGConvScalarW.gam_conj (ψ v) (a v) (x v))
    g g fun _ => rfl

theorem placeOp_comm (v : ι) (g : ∀ v, GL (Fin k) (Fq v)) :
    π g ∘ₗ placeOp ψ π v = placeOp ψ π v ∘ₗ π g := by
  refine sum_conj_comm π (MonoidHom.mulSingle _ v) (gam (ψ v))
    (PI.GGConvScalarW.gam_conj (ψ v)) g (g v) fun y => funext fun w => ?_
  rcases eq_or_ne w v with rfl | h <;> simp [Pi.mulSingle_eq_of_ne, *]

theorem joint_eigenvector_exists : JointEig := by
  intro ι _ Fq _ _ k ψ V _ _ _ π w μ hw hμ
  obtain ⟨W, hWE, hW0, hmin⟩ := exists_minimal_le (eigenSubrep _ (totOp_comm ψ π) μ)
    (ne_bot_of_mem (mem_eigenSubrep.2 hμ) hw)
  have hW0' := toSubmodule_ne_bot.2 hW0
  refine ⟨W.toSubmodule, hW0', W.apply_mem_toSubmodule, fun x hx => mem_eigenSubrep.1 (hWE hx),
    fun v => ?_⟩
  have hmaps : ∀ x ∈ W.toSubmodule, placeOp ψ π v x ∈ W.toSubmodule := fun x hx => by
    rw [placeOp, LinearMap.sum_apply]
    exact Submodule.sum_mem _ fun y _ => Submodule.smul_mem _ _ (W.apply_mem_toSubmodule _ hx)
  have := Submodule.nontrivial_iff_ne_bot.2 hW0'
  obtain ⟨c, hc⟩ := Module.End.exists_eigenvalue ((placeOp ψ π v).restrict hmaps)
  obtain ⟨u, hev⟩ := hc.exists_hasEigenvector
  have hu : (u : V) ∈ (W ⊓ eigenSubrep _ (placeOp_comm ψ π v) c).toSubmodule :=
    Submodule.mem_inf.2 ⟨u.2, mem_eigenSubrep.2 (congrArg Subtype.val hev.apply_eq_smul)⟩
  have hle := hmin _ (ne_bot_of_mem hu fun h0 => hev.2 (Subtype.ext h0)) inf_le_left
  exact ⟨c, fun x hx => mem_eigenSubrep.1 (inf_eq_left.1 hle hx)⟩

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.JointEigenvectorExists =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GammaMatrixInverse =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GammaMatrixInverse", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarConvolutionTrace.SuperdiagSgnConj\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Classical Formalism.L2.SG.GGMirabolic PI.GGConvScalarW
open scoped ComplexConjugate

namespace PI.GGMatBoundW

variable {F : Type} [Field F] [Fintype F] {k : ℕ} (ψ₀ : AddChar F ℂ)

theorem psiNat_inv (u : GL (Fin k) F) : psiNat ψ₀ u⁻¹ = conj (psiNat ψ₀ u) := by
  unfold psiNat
  by_cases hu : IsUni k u
  · rw [ite_eq_left (isUni_inv hu), ite_eq_left hu,
      eq_inv_of_mul_eq_one_left (psiU_inv_mul ψ₀ hu), psiU, ← AddChar.map_neg_eq_inv,
      AddChar.map_neg_eq_conj]
  · rw [ite_eq_right fun h => hu (by simpa using isUni_inv h), ite_eq_right hu, map_zero]

theorem gam_inv (x : GL (Fin k) F) : gam ψ₀ x⁻¹ = conj (gam ψ₀ x) := by
  simp only [gam, map_mul, map_inv₀, map_natCast, map_sum, ← psiNat_inv, mul_inv_rev, inv_inv,
    mul_assoc]

theorem gamProd_inv {ι : Type} [Fintype ι] {Fq : ι → Type} [∀ v, Field (Fq v)]
    [∀ v, Fintype (Fq v)] (ψ : ∀ v, AddChar (Fq v) ℂ) (x : ∀ v, GL (Fin k) (Fq v)) :
    gamProd ψ x⁻¹ = conj (gamProd ψ x) := by
  simp only [gamProd, map_prod, Pi.inv_apply, gam_inv]

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GammaMatrixInverse =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.MatrixCoefficientEquation =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.MatrixCoefficientEquation", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GammaMatrixInverse\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Classical Formalism.L2.SG.GGMirabolic

namespace PI.GGMatBoundW

theorem sum_orbit {G X : Type} [Group G] [Fintype G] [MulAction Gᵐᵒᵖ X]
    (hfree : ∀ (x : Gᵐᵒᵖ) (j : X), x • j = j → x = 1) (d : X → X → G)
    (hd : ∀ i j, (∃ x : Gᵐᵒᵖ, x • j = i) → MulOpposite.op (d i j) • j = i) (f : G → ℂ) (i j : X) :
    (∑ x : G, if MulOpposite.op x • j = i then f x else 0) =
      if ∃ x : Gᵐᵒᵖ, x • j = i then f (d i j) else 0 := by
  split_ifs with h
  · rw [Finset.sum_eq_single (d i j), ite_eq_left (hd i j h)]
    · refine fun b _ hb => ite_eq_right fun hbj => hb (MulOpposite.op_injective ?_).symm
      refine inv_mul_eq_one.1 (hfree _ j ?_)
      rw [mul_smul, inv_smul_eq_iff, hbj, hd i j h]
    · simp
  · exact Finset.sum_eq_zero fun x _ => ite_eq_right fun hx => h ⟨_, hx⟩

theorem toMatrix'_totOp_apply {ι : Type} [Fintype ι] {Fq : ι → Type} [∀ v, Field (Fq v)]
    [∀ v, Fintype (Fq v)] {k : ℕ} (ψ : ∀ v, AddChar (Fq v) ℂ) (X : Type) [Fintype X]
    [MulAction (∀ v, GL (Fin k) (Fq v))ᵐᵒᵖ X] (i j : X) :
    LinearMap.toMatrix' (totOp ψ (permRep (∀ v, GL (Fin k) (Fq v)) X)) i j =
      ∑ x : (∀ v, GL (Fin k) (Fq v)), if MulOpposite.op x • i = j then gamProd ψ x else 0 := by
  rw [LinearMap.toMatrix'_apply]
  simp [totOp, permRep, LinearMap.funLeft, Finset.sum_apply, Pi.single_apply, mul_ite]

theorem totally_hermitian_form : TotHerm := by
  intro ι _ Fq _ _ k ψ X _ _
  refine IsHermitian.ext fun i j => ?_
  rw [toMatrix'_totOp_apply, toMatrix'_totOp_apply, star_sum]
  refine Fintype.sum_equiv (Equiv.inv _) _ _ fun x => ?_
  have hiff : MulOpposite.op x • j = i ↔ MulOpposite.op x⁻¹ • i = j := by
    rw [MulOpposite.op_inv, inv_smul_eq_iff, eq_comm]
  simp only [hiff, Equiv.inv_apply, gamProd_inv]
  split_ifs <;> simp

theorem matrix_coefficient_equation : MatrixEq := by
  intro ι _ Fq _ _ k ψ X _ _ hfree d hd
  have hT : (of fun i j => if ∃ x : (∀ v, GL (Fin k) (Fq v))ᵐᵒᵖ, x • j = i then gamProd ψ (d i j)
      else 0) = (LinearMap.toMatrix' (totOp ψ (permRep (∀ v, GL (Fin k) (Fq v)) X)))ᵀ := by
    ext i j
    rw [of_apply, transpose_apply, toMatrix'_totOp_apply, sum_orbit hfree d hd]
  refine ⟨?_, hT⟩
  ext i j
  have h := congrFun (congrFun hT i) j
  rw [of_apply, transpose_apply] at h
  rw [of_apply, ← (totally_hermitian_form ι Fq k ψ X).apply i j, ← h]
  split_ifs <;> simp

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.MatrixCoefficientEquation =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.ProdFormula =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.ProdFormula", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Classical Formalism.L2.SG.GGMirabolic

namespace PI.GGMatBoundW

variable {ι : Type} [Fintype ι] {Fq : ι → Type} [∀ v, Field (Fq v)] [∀ v, Fintype (Fq v)] {k : ℕ}
  (ψ : ∀ v, AddChar (Fq v) ℂ) {V : Type} [AddCommGroup V] [Module ℂ V]
  (π : Representation ℂ (∀ v, GL (Fin k) (Fq v)) V)

noncomputable def beta (s : Finset ι) (x : ∀ v, GL (Fin k) (Fq v)) : ℂ :=
  if ∀ w ∉ s, x w = 1 then ∏ v ∈ s, gam (ψ v) (x v) else 0

theorem beta_insert {a : ι} {s : Finset ι} (ha : a ∉ s) (z : ∀ v, GL (Fin k) (Fq v)) :
    beta ψ (insert a s) z = ∑ y, gam (ψ a) y * beta ψ s ((Pi.mulSingle a y)⁻¹ * z) := by
  have hz : (Pi.mulSingle a (z a))⁻¹ * z = Function.update z a 1 := by
    funext w
    rcases eq_or_ne w a with rfl | hw <;> simp [Pi.mulSingle_eq_of_ne, *]
  rw [Finset.sum_eq_single (z a), hz]
  · have hs : ∏ v ∈ s, gam (ψ v) (Function.update z a 1 v) = ∏ v ∈ s, gam (ψ v) (z v) :=
      Finset.prod_congr rfl fun v hv => by rw [Function.update_of_ne (ne_of_mem_of_not_mem hv ha)]
    have hc : (∀ w ∉ insert a s, z w = 1) ↔ ∀ w ∉ s, Function.update z a 1 w = 1 :=
      forall_congr' fun w => by rcases eq_or_ne w a with rfl | hw <;> simp [*]
    simp only [beta, ← hc, hs, Finset.prod_insert ha, mul_ite, mul_zero]
  · intro y _ hy
    rw [beta, ite_eq_right fun h => hy ?_, mul_zero]
    simpa [inv_mul_eq_one] using h a ha
  · simp

theorem sum_beta_insert {a : ι} {s : Finset ι} (ha : a ∉ s) (w : V) :
    ∑ x, beta ψ (insert a s) x • π x w = placeOp ψ π a (∑ x, beta ψ s x • π x w) := by
  simp_rw [placeOp, LinearMap.sum_apply, LinearMap.smul_apply, beta_insert ψ ha, Finset.sum_smul,
    map_sum, map_smul, Finset.smul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun y _ => ?_
  refine Fintype.sum_equiv (Equiv.mulLeft (Pi.mulSingle a y)⁻¹) _ _ fun z => ?_
  simp only [Equiv.coe_mulLeft]
  rw [mul_smul, ← mul_apply_eq_comp (F := Module.End ℂ V), ← map_mul, mul_inv_cancel_left]

theorem prod_formula' : ProdFormula := by
  intro ι _ Fq _ _ k ψ V _ _ π μ w hμ
  have key (s : Finset ι) : ∑ x, beta ψ s x • π x w = (∏ v ∈ s, μ v) • w := by
    induction s using Finset.induction_on with
    | empty =>
      rw [Finset.sum_eq_single 1 (fun b _ hb => ?_) (by simp)]
      · simp [beta]
      · rw [beta, ite_eq_right fun h => hb (funext fun v => h v (by simp)), zero_smul]
    | @insert a s ha ih =>
      rw [sum_beta_insert ψ π ha w, ih, map_smul, hμ, smul_smul, Finset.prod_insert ha, mul_comm]
  rw [← key]
  simp [totOp, beta, gamProd]

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.ProdFormula =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.SpectrumPositiveSemidefinite =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.SpectrumPositiveSemidefinite", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.PermRepApply\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Matrix.PosDef\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Classical
open scoped ComplexOrder

namespace PI.GGMatBoundW

theorem spectrum_positive_semidefinite : SpecPSD := by
  intro X _ M c hM hev
  have psd (A : Matrix X X ℂ) (hA : A.IsHermitian)
      (h : ∀ (w : X → ℂ) (μ : ℂ), w ≠ 0 → A *ᵥ w = μ • w → ∃ r : ℝ, μ = r ∧ 0 ≤ r) :
      A.PosSemidef := by
    refine hA.posSemidef_iff_eigenvalues_nonneg.mpr fun j => ?_
    have hne := hA.eigenvectorBasis.orthonormal.ne_zero j
    obtain ⟨r, hr, h0⟩ := h _ (hA.eigenvalues j)
      (fun h0 => hne (by ext i; simpa using congrFun h0 i))
      (by rw [hA.mulVec_eigenvectorBasis j]; ext i; simp)
    exact h0.trans (Complex.ofReal_injective hr).ge
  have hN : ((c : ℂ) • (1 : Matrix X X ℂ) - M).IsHermitian :=
    IsHermitian.sub (by simp [IsHermitian, conjTranspose_smul]) hM
  refine ⟨psd M hM fun w μ hw h => ?_, psd _ hN fun w μ hw h => ?_⟩
  · obtain ⟨r, hr, h0, -⟩ := hev w μ hw h
    exact ⟨r, hr, h0⟩
  · obtain ⟨r, hr, -, hrc⟩ := hev w (c - μ) hw <| by
      rw [sub_smul, ← h, sub_mulVec, smul_mulVec, one_mulVec]; abel
    exact ⟨c - r, by push_cast; linear_combination -hr, by linarith⟩

end PI.GGMatBoundW
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.SpectrumPositiveSemidefinite =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGMatBound =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGMatBound", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.UnipotentCardinality.UniMatUpper\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGConvScalar\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGGenRatio\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GamOneReal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.GgMatrixBoundOfLitOf\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.IrreducibleOfMinimal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.JointEigenvectorExists\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.MatrixCoefficientEquation\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.ProdFormula\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MatrixCoefficientBound.SpectrumPositiveSemidefinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

theorem gg_matrix_bound : Formalism.L2.SG.GGMirabolic.GGMatrixBoundOfLit :=
  PI.GGMatBoundW.ggMatrixBoundOfLit_of PI.GGMatBoundW.matrix_coefficient_equation PI.GGMatBoundW.totally_hermitian_form
    (PI.GGMatBoundW.eigBound_of PI.GGMatBoundW.local_place_bound PI.GGMatBoundW.joint_eigenvector_exists
      PI.GGMatBoundW.prod_formula')
    PI.GGMatBoundW.spectrum_positive_semidefinite convolution_scalar generic_ratio_bound _root_.PI.GGCardUniWork.cardUni
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGMatBound =====

-- ===== clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermCarrierStable =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermCarrierStable", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermDef\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.TermCarrierStability.TermStableHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

attribute [local instance] Formalism.BasicNotions.Host.cmStar

theorem term_carrier_stable (D : Formalism.BasicNotions.D7) (u u' : D.what₂.Word) : Formalism.L2.SG.TermDef.TermStable D u u' :=
  PI.TCS.termStable_holds D u u'
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermCarrierStable =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.FourParts\npublic import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Corank\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GGMirabolic\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.Saturated\npublic import Formalism.PeriodIntegrals.PairCorankPos\npublic import Formalism.PadicSubsetSums.StableGradedCounts.MemBesselSetZeroIffUpperTriangular\npublic import Formalism.PeriodIntegrals.ExplicitFormulaCounts.BetaIndep\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.DCRelEquiv\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MirabolicBound.MirabolicBound\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.PairCorankPos\npublic import Formalism.PeriodIntegrals.ScalPairs\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ScalarEquivalenceGeneral.ScalarFactorEqOneOfLe\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalarPairDr\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.SplitRow\npublic import Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermAttrConst\npublic import Formalism.PeriodIntegrals.WhitFunctDual\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.WhittakerFunctionalDual.StableOfIrreducible\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.GGMatBound\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.ScalRelRepFree\nimport Formalism.PeriodIntegrals.OrbitalBoundsConclusion.TermCarrierStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions.S

namespace Formalism.L2.SG.Closed

section Terms

variable (D : D7) (u u' : D.what₂.Word)

theorem TermEqIff_holds : Formalism.L2.SG.TermDef.TermEqIff D u u' := term_eq_iff_relation D u u'
theorem TermStable_holds : Formalism.L2.SG.TermDef.TermStable D u u' := term_carrier_stable D u u'
theorem TermFun_holds : Formalism.L2.SG.TermDef.TermFun D u u' := term_function_const D u u'

theorem ScalarEquiv_holds : Formalism.L2.SG.Corank.ScalarEquiv D u u' := Formalism.L2.SG.Corank.scalarEquiv_of_G (D := D) _root_.PI.UnitaryGroupMassFormula.ScalEquivGen.scalarEquivG_holds u u'
theorem ScalarRepFree_holds : Formalism.L2.SG.Corank.ScalarRepFree D u u' := scalar_rep_free D u u'
theorem BetaFree_holds : Formalism.L2.SG.Corank.BetaFree D u u' := scalPairs_betaFree D u u'

theorem ScalarDr_holds : Formalism.L2.SG.Corank.ScalarDr D u u' := by
  intro F0 what₂ hrows p hp
  exact scalar_pair_dr D u u' F0 what₂ hrows p.lam p.mem p.fst p.snd p.G_fst p.G_snd p.beta p.isPair
    hp.1 hp.2

end Terms

theorem CorankPosG_holds : PI.PairCorankPos.CorankPosG := pair_corank_pos
theorem ScalarEquivG_holds : Formalism.L2.SG.Corank.ScalarEquivG := _root_.PI.UnitaryGroupMassFormula.ScalEquivGen.scalarEquivG_holds

theorem GelfandGraevMultOne_holds : Formalism.L2.SG.GGMirabolic.GelfandGraevMultOne := _root_.PI.WhitFunctDualWork.whitFunctDual_main Formalism.IrreducibleCountingLemmas.GaloisIrreducibility.gelfand_graev_multiplicity_one
theorem MirabolicBound_holds : Formalism.L2.SG.GGMirabolic.MirabolicBound := _root_.PI.GGMirBoundW.mirabolicBound
theorem GGMatrixBoundOfLit_holds : Formalism.L2.SG.GGMirabolic.GGMatrixBoundOfLit := gg_matrix_bound
theorem GGMatrixBound_holds : Formalism.L2.SG.GGMirabolic.GGMatrixBound :=
  GGMatrixBoundOfLit_holds GelfandGraevMultOne_holds MirabolicBound_holds
theorem TermsGGBound_holds : Formalism.L2.SG.GGMirabolic.TermsGGBound :=
  Formalism.L2.SG.GGMirabolic.termsGGBound_of_matrix GGMatrixBound_holds

theorem IsSplitRow_holds (D : D7) (u : D.what₂.Word) (F0 : FlagG (VS D) D.R.rS ((Lat.Tu D u : ℕ) : D.host.E))
    (Λ : Submodule (NumberField.RingOfIntegers D.host.E) (VS D).V) (hΛ : IsRowLat D F0 Λ) :
    Formalism.L2.SG.Saturated.IsSplitRow D F0 Λ := split_row_iso D u F0 Λ hΛ

end Formalism.L2.SG.Closed
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedVolumeStatements.GenericRatioOfBoundHolds =====
