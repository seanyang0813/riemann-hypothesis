module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.MapUgCToUg
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleComparisonMapOfFacts
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.IsFirstChernClassOfLineBundle
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ImageCochainExists
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChosenInjectiveResolutionEtaleSheafSectionsExact
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchClsCocycleSec
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechTripleSubfaceZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffIterateVerschiebung
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompOfCechPt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUnique
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EtaleChernClassEqKummerClass
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIdem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimitiveCl
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRoot
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FactorialAcr
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrobIdem
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GeomPtGeomMap
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdemMulEqZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLCRes
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLogUnique
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOneSubPow
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapSurjective
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapZero
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineMapExists
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemBasicOpenOfIsUnitSub
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatDegreeLgLe
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowDivPowSucc
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimResZetaX
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullPullOfPullC
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSquare
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecPairApply
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumToAcrTeichmuller
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.VnRed
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.CupLeib
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EvExt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernClassFamily
import Mathlib
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisZeroImageDividedPower, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassCompatibleSystem, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassUniqueOfLiftAndLog, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeCupOfSteps, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUniqOf, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsKumPow, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapOneEqTwGen, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcCover, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcMorCup, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftEx, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineBC, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocSplit, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapNsmulTwGen, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEvCongr, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullCZsmul, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedResMor, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedRootOfRep, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepBasic, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepConcOfInputs, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepOp, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResGenRes, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResLoc, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResSplit, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecMapRes, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecResMap, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecSubsingleton, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignCancel, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StAdd, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCol, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StExOfStCol, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StTopOfStCol, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StUniq, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StairCupFirst, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwUgCompAlgebraMap, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltIterateSymmEpsilon, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleChernClassEqKummerClass

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisZeroImageDividedPower =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisZeroImageDividedPower", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.MapUgCToUg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

noncomputable section

namespace GlobalTheory.CompanionTheory.LogEpsP

variable {l : ℕ} [Fact l.Prime]

theorem cris_eq_zero (A : PAlg l) (n : ℕ) {y : Acris l}
    (hy : y ∈ Ideal.span {(l : Acris l)} ^ n) : A.cris n y = 0 := by
  rw [Ideal.span_singleton_pow] at hy
  obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.1 hy
  rw [map_mul, map_pow, map_natCast, PAlg.pow_l_acr, mul_zero]

theorem cris_log (A : PAlg l) (n : ℕ) {x : Ainf l} (hx : x ∈ RingHom.ker (theta0 l)) :
    A.cris n (ACris.log hx) = ∑ k ∈ Finset.range (l * n), A.cris n (ACris.logTerm hx k) := by
  obtain ⟨N, hN⟩ := ACris.isAdicSum_log hx n
  have h2 := cris_eq_zero A n (hN (max N (l * n)) (le_max_left _ _))
  set_option synthInstance.maxHeartbeats 100000 in
    rw [map_sub, sub_eq_zero, map_sum,
    ← Finset.sum_range_add_sum_Ico _ (le_max_right N (l * n)),
    Finset.sum_eq_zero (s := Finset.Ico (l * n) (max N (l * n))) (fun k hk =>
      cris_eq_zero A n (ACris.logTerm_mem hx (Finset.mem_Ico.1 hk).1)), add_zero] at h2
  exact h2

theorem cris_logTerm (A : PAlg l) (n k : ℕ) {x : Ainf l} (hx : x ∈ RingHom.ker (theta0 l)) :
    A.cris n (ACris.logTerm hx k) =
      (-1) ^ k * (k.factorial : A.Acr n) * A.mkAcr n (A.cris0 (ACris.dpowZero hx (k + 1))) := by
  rw [ACris.logTerm, PAlg.cris_of', ACris.logTermZero]
  set_option synthInstance.maxHeartbeats 100000 in
    simp only [map_mul, map_pow, map_neg, map_one, map_natCast]

theorem acrisZero_image_divided_power (A : PAlg l) (k : ℕ) {x : Ainf l} (hx : x ∈ RingHom.ker (theta0 l)) :
    (A.cris0 (ACris.dpowZero hx k)).1 = dpw k (WittVector.map A.s x) := by
  show awayW A.s (ACris.dpow (K := ℂ_[l]) (p := l) k x) = _
  rw [dpow_eq_dpw]
  exact awayW_dpw A.s k (ACris.isUnit_natCast (K := ℂ_[l]) (p := l) k.factorial_ne_zero) x

theorem map_mu (A : PAlg l) (e : Ob l) :
    WittVector.map A.s (AInf.mu (K := ℂ_[l]) (p := l) e) = WittVector.teichmuller l (A.s e) - 1 := by
  rw [AInf.mu, map_sub, map_one, WittVector.map_teichmuller]

end GlobalTheory.CompanionTheory.LogEpsP

theorem GlobalTheory.CompanionTheory.LogEpsP.logEps : CrystallineSemistableComparison.E.LogEps := by
  intro l _ A n
  refine ⟨fun k => A.cris0 (ACris.dpowZero (ACris.mu_mem_ker (untilt_epsilon (p := l))) k), fun k => ?_, ?_⟩
  · rw [GlobalTheory.CompanionTheory.LogEpsP.acrisZero_image_divided_power, GlobalTheory.CompanionTheory.LogEpsP.map_mu]
  · rw [ACris.periodT, GlobalTheory.CompanionTheory.LogEpsP.cris_log]
    exact Finset.sum_congr rfl fun k _ => GlobalTheory.CompanionTheory.LogEpsP.cris_logTerm A n k _
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisZeroImageDividedPower =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassCompatibleSystem =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassCompatibleSystem", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.ChernSys

theorem inv_cech (hpt : CrystallineSemistableComparison.E.CechPt) (l : ℕ) {Y X : Scheme.{0}} (f : Y ⟶ X)
    (hl : IsUnit (l : Γ(X, ⊤))) (n : ℕ) : GlobalTheory.EtC.Inv (l ^ n) (cech f) := by
  rintro U ⟨z⟩
  obtain ⟨x, y, h, -⟩ := (hpt Y X f 0 U).1 z
  have h1 : IsUnit (l : Γ(U, ⊤)) := by
    have := hl.map x.appTop.hom
    rwa [map_natCast] at this
  rw [Nat.cast_pow]
  exact h1.pow n

theorem chern_class_compatible_system (hpt : CrystallineSemistableComparison.E.CechPt) : CrystallineSemistableComparison.E.FirstChernCompatibleSystem := by
  intro a2 a11 l _ Y X f _ _ hl L
  have hinv := inv_cech hpt l f hl
  have hne : ∀ n, NeZero (l ^ n) := fun n => ⟨pow_ne_zero _ (Fact.out : l.Prime).ne_zero⟩
  refine ⟨hinv, ?_⟩
  have hb : ∀ n, Function.Bijective (pull (ZMod (l ^ n)) (cechAug f) (tw (l ^ n) 1) 2) :=
    fun n => a2 (ZMod (l ^ n)) f (tw (l ^ n) 1) 2
  choose x hx using fun n => (hb n).2 (c1 (l ^ n) L)
  refine ⟨⟨x, fun k => ?_⟩, hx⟩
  apply (hb k).1
  have e := ((a11 (l ^ (k + 1)) (l ^ k) (pow_dvd_pow l (Nat.le_succ k)) (cech f)).2.1 (hinv (k + 1))).2 L
  have e2 := pull_red (l ^ (k + 1)) (l ^ k) (cechAug f) 2 1 (x (k + 1))
  exact e2.trans ((congrArg _ (hx (k + 1))).trans (e.trans (hx k).symm))

end GlobalTheory.CompanionTheory.ChernSys
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassCompatibleSystem =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassUniqueOfLiftAndLog =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassUniqueOfLiftAndLog", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.MapUgCToUg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EtChern

theorem restrict_id_pull {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] (F : C ⥤ ModuleCat.{0} R) (x : H (𝟭 C ⋙ F) 2) (x' : H F 2)
    (h : x = (Mor.restrict F (𝟭 C)).pull 2 x') : x = x' := by
  subst h
  obtain ⟨⟨z, hz⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ x'
  rfl

theorem chern_class_unique_of_lift_and_log : CrystallineSemistableComparison.E.LiftEx → CrystallineSemistableComparison.E.LogEx → CrystallineSemistableComparison.E.FirstChernUniqueEtale := by
  intro hL hG l _ H O _ X q κ D hE y y' hy hy'
  obtain ⟨Λ⟩ := (hL l H O X q κ (El (PX q κ)) (𝟭 _) D).2 hE
  funext n
  obtain ⟨z, hz, hc, e⟩ := hy (El (PX q κ)) (𝟭 _) Λ n
  obtain ⟨z', hz', hc', e'⟩ := hy' (El (PX q κ)) (𝟭 _) Λ n
  have hzz : z = z' := by
    funext s
    exact (hG l _ n).2.1 _ _ _ (hc s) (hc' s)
  subst hzz
  have e1 := restrict_id_pull _ _ _ e
  have e2 := restrict_id_pull _ _ _ e'
  exact e1.symm.trans e2

end GlobalTheory.CompanionTheory.EtChern
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassUniqueOfLiftAndLog =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeCupOfSteps =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeCupOfSteps", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMap

theorem edgeCup_of_steps : CrystallineSemistableComparison.E.CupCls → CrystallineSemistableComparison.E.StTop → CrystallineSemistableComparison.E.StCupA → CrystallineSemistableComparison.E.StCupB → CrystallineSemistableComparison.E.EdgeCup := by
  intro hCls hTop hA hB
  unfold CrystallineSemistableComparison.E.EdgeCup
  intro R _ C _ F₁ F₂ F₃ T₁ T₂ T₃ P μ hT₁ hT₂ i j n hn x y a b hx hy
  obtain ⟨z, hz, hzx, rfl⟩ := hx
  obtain ⟨z', hz', hzy, rfl⟩ := hy
  obtain ⟨hu, hcls⟩ := hCls R C F₁ F₂ F₃ P i j n hn z z' hz hz'
  refine ⟨P.cupC hn z z', hu, ?_, hcls.symm⟩
  have hyy := hTop R C F₂ T₂ hT₂ j z' hz' j 0 y hzy
  have hb := hB R C F₁ F₂ F₃ T₁ T₂ T₃ P μ hT₁ hT₂ i j n hn z z' hz j 0 i (add_zero i) y hzy
  exact hA R C F₁ F₂ F₃ T₁ T₂ T₃ P μ hT₁ hT₂ i j n z y (P.cupC hn z z') hyy.1 hyy.2 hb i 0 n hn x hzx

end GlobalTheory.CompanionTheory.EdgeMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeCupOfSteps =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUniqOf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUniqOf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeClass

theorem edgeUniq_of : CrystallineSemistableComparison.E.StCol → CrystallineSemistableComparison.E.StAdd → CrystallineSemistableComparison.E.StUniq → CrystallineSemistableComparison.E.EdgeUniq := by
  intro _ hadd huniq R _ C _ F T hG j x x' h h' hx hx'
  obtain ⟨z, hz, st, rfl⟩ := hx
  obtain ⟨z', hz', st', rfl⟩ := hx'
  refine ⟨⟨z + z', ?_, (hadd R C F T j z z' j 0 x x' st st').1, ?_⟩, ?_⟩
  · rw [map_add (f := _), hz, hz', add_zero]
  · rfl
  · intro hv
    have st2 : T.St (z - z') j 0 (x - x') := (hadd R C F T j z z' j 0 x x' st st').2
    have hB : z - z' ∈ (cx F).B j := by
      cases j with
      | zero => exact huniq R C F T hG 0 (z - z') 0 0 (x - x') st2 hv
      | succ s =>
        obtain ⟨b, hb, hbx⟩ := hv
        obtain ⟨a, hax, sta⟩ := st2
        refine huniq R C F T hG (s + 1) (z - z') s 1 _ sta ?_
        refine ⟨a - b, ?_, ?_⟩
        · rw [map_sub, hax, hbx, sub_self]
        · rw [map_sub, hb, sub_zero, pow_zero, one_smul]
    exact (Submodule.Quotient.eq _).2 hB

end GlobalTheory.CompanionTheory.EdgeClass
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUniqOf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsKumPow =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsKumPow", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.KumPowProof

theorem isKum_pow {q : ℕ} {t : ∀ U : Scheme.{0}, (Γ(U, ⊤))ˣ → Sec ((res _ (tw q 1)).X 0) U} (ht : IsKum q t)
    {U : Scheme.{0}} (ζ : Prim q Γ(U, ⊤)) (v : (Γ(U, ⊤))ˣ) (k : ℕ) :
    ∀ w : (Γ(U, ⊤))ˣ, (w : Γ(U, ⊤)) = ζ.1 ^ k * v → t U w = t U v + k • resGen 1 ζ := by
  induction k with
  | zero =>
    intro w hw
    rw [pow_zero, one_mul] at hw
    rw [Units.ext hw, zero_smul, add_zero]
  | succ k ih =>
    intro w hw
    have hw' : (w : Γ(U, ⊤)) = ζ.1 * (ζ.1 ^ k * v) := by rw [hw]; ring
    obtain ⟨z, hz⟩ : IsUnit (ζ.1 ^ k * v) := isUnit_of_mul_isUnit_right (hw' ▸ w.isUnit)
    rw [ht.2 U ζ z w (by rw [hw', hz]), ih z hz, succ_nsmul, add_assoc]

theorem res_smap {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (x : Sec F U) :
    Sec.res g (Sec.map φ x) = Sec.map φ (Sec.res g x) := by
  have h := φ.hom.naturality g.op
  exact (congrArg (fun m => m.hom x) h).symm

theorem kumPow : LcCover → RepRoot → KapSpec → PrimAlg → KumPow := by
  intro hL _ hK _ hKum q _ U ζ f r v hr
  have ht : IsKum q (kumT q) := hKum q
  have hq : IsUnit (q : Γ(U, ⊤)) := ζ.2.1
  obtain ⟨W, j, hf, -, -, hG⟩ := hL U (ZMod q) f
  obtain ⟨y, -, huniq⟩ := hG (ZMod q) ((res _ (tw q 1)).X 0) (fun a => Sec.res (j a) (kumT q U (r * v)))
  refine (huniq _ fun a => rfl).trans (huniq _ fun a => ?_).symm
  have hra : (j a).appTop.hom r.val = (primRes (j a) ζ).1 ^ a.val := hr (W a) (j a) a (hf a)
  have hlc : Sec.res (j a) (kap 1 ζ f) = (ULift.up a : ULift.{1} (ZMod q)) • twGen 1 (primRes (j a) ζ) :=
    (hK q 1 U ζ f).1 (W a) (j a) a (hf a)
  have hup : (ULift.up a : ULift.{1} (ZMod q)) = a.val • (1 : ULift.{1} (ZMod q)) :=
    ULift.ext (by change a = a.val • (1 : ZMod q); simp)
  have hsm : Sec.res (j a) (kap 1 ζ f) = a.val • twGen 1 (primRes (j a) ζ) := by
    rw [hlc, hup, smul_assoc, one_smul]
  have hkey := isKum_pow ht (primRes (j a) ζ) (Units.map (j a).appTop.hom.toMonoidHom v) a.val
    (Units.map (j a).appTop.hom.toMonoidHom (r * v)) (by
      change (j a).appTop.hom (r.val * v.val) = _ * (j a).appTop.hom v.val
      rw [map_mul, hra])
  have e1 : Sec.res (j a) (kumT q U (r * v)) = kumT q (W a) (Units.map (j a).appTop.hom.toMonoidHom (r * v)) :=
    ht.1 _ _ (j a) _ hq
  have e2 : Sec.res (j a) (kumT q U v) = kumT q (W a) (Units.map (j a).appTop.hom.toMonoidHom v) :=
    ht.1 _ _ (j a) _ hq
  have e3 : Sec.res (j a) (Sec.map (resι _ (tw q 1)) (kap 1 ζ f)) = a.val • resGen 1 (primRes (j a) ζ) := by
    rw [res_smap, hsm]
    exact map_nsmul _ _ _
  have e0 : Sec.res (j a) (kumT q U v + Sec.map (resι _ (tw q 1)) (kap 1 ζ f)) =
      Sec.res (j a) (kumT q U v) + Sec.res (j a) (Sec.map (resι _ (tw q 1)) (kap 1 ζ f)) := map_add _ _ _
  rw [e0, e1, e2, e3, hkey]

end GlobalTheory.CompanionTheory.KumPowProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsKumPow =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapOneEqTwGen =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapOneEqTwGen", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeRoot

theorem kap_one_eq_twGen (hRep : CrystallineSemistableComparison.E.RepRoot) (hKap : CrystallineSemistableComparison.E.KapSpec) {q : ℕ} (i : ℤ) {U : Scheme.{0}}
    (ζ : Prim q Γ(U, ⊤)) : kap i ζ 1 = twGen i ζ := by
  refine ((hKap q i U ζ 1).2.1 (twGen i ζ) ?_).symm
  intro V g a h
  rw [((hRep q i U ζ).1 V g).1]
  by_cases hV : Nonempty V
  · obtain ⟨v⟩ := hV
    have ha : (1 : ZMod q) = a := h v
    subst ha
    exact (one_smul _ _).symm
  · have hV' : IsEmpty V := not_nonempty_iff.1 hV
    have h0 := (hKap q i U ζ 1).1 V g 0 (fun v => hV'.elim v)
    have h1 := (hKap q i U ζ 1).1 V g 1 (fun v => hV'.elim v)
    have hz : twGen i (primRes g ζ) = 0 := by
      have e : (ULift.up (1 : ZMod q) : ULift.{1} (ZMod q)) • twGen i (primRes g ζ) =
          (ULift.up (0 : ZMod q) : ULift.{1} (ZMod q)) • twGen i (primRes g ζ) := h1.symm.trans h0
      have e1 : (ULift.up (1 : ZMod q) : ULift.{1} (ZMod q)) • twGen i (primRes g ζ) = twGen i (primRes g ζ) :=
        one_smul _ _
      have e0 : (ULift.up (0 : ZMod q) : ULift.{1} (ZMod q)) • twGen i (primRes g ζ) = 0 := zero_smul _ _
      rw [e1, e0] at e
      exact e
    rw [hz, smul_zero]

theorem d_one_eq_zero {C : Type 1} [Category.{0} C] {R : Type} [CommRing R] (A : C ⥤ CommAlgCat.{0} R) :
    d (modF A) 0 (fun s => (1 : A.obj (s.obj (Fin.last 0)))) = 0 := by
  funext s
  change ∑ i : Fin 2, (-1 : ℤ) ^ (i : ℕ) • (A.map (GlobalTheory.CatH.toLast i s)).hom 1 = (0 : A.obj _)
  rw [Fin.sum_univ_two, map_one, map_one]
  simp

theorem etRoot_of_spec : CrystallineSemistableComparison.E.EtSpec → CrystallineSemistableComparison.E.RepRoot → CrystallineSemistableComparison.E.KapSpec → CrystallineSemistableComparison.E.EtRoot := by
  intro hEt hRep hKap hGen q _ C _ P X Y ζ hζ i
  refine ((hEt hGen q C P X Y i 0 (rootClass i ζ)).2 _ ?_).symm
  refine ⟨resGen i ζ, (hRep q i X ζ).2, ?_⟩
  refine ⟨fun s => (1 : (lcF P.S q).obj (s.obj (Fin.last 0))), d_one_eq_zero (lcF P.S q), ?_, rfl⟩
  refine ⟨rfl, ?_⟩
  funext s
  change Sec.map (resι _ (tw q i)) (kap i (P.ζ (s.obj (Fin.last 0))) 1) = Sec.res (Y.y (s.obj (Fin.last 0))) (resGen i ζ)
  rw [kap_one_eq_twGen hRep hKap, ((hRep q i X ζ).1 _ _).2, hζ]
  rfl

end GlobalTheory.CompanionTheory.EdgeRoot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapOneEqTwGen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcCover =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcCover", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.LcCoverProof

theorem lcCover : CrystallineSemistableComparison.E.LcCover := by
  intro U ι f
  let O : ι → U.Opens := fun a => ⟨f ⁻¹' {a}, f.isLocallyConstant.isOpen_fiber a⟩
  have hcov : iSup O = ⊤ :=
    eq_top_iff.2 fun x _ => TopologicalSpace.Opens.mem_iSup.2 ⟨f x, rfl⟩
  have hval : ∀ (a : ι) (v : (O a).toScheme), f ((O a).ι v) = a := fun a v => v.2
  refine ⟨fun a => (O a).toScheme, fun a => (O a).ι, hval, ?_, ?_, ?_⟩
  · intro V g a hg
    have hr : Set.range g ⊆ Set.range (O a).ι := by
      rintro _ ⟨v, rfl⟩
      rw [Scheme.Opens.range_ι]
      exact hg v
    exact ⟨IsOpenImmersion.lift (O a).ι g hr, IsOpenImmersion.lift_fac _ _ _⟩
  · intro x y h
    refine U.sheaf.eq_of_locally_eq' O ⊤ (fun a => homOfLE le_top) hcov.ge x y fun a => ?_
    have e : O a ≤ (O a).ι ''ᵁ ⊤ := by simp
    have hm : U.presheaf.map (homOfLE le_top : O a ⟶ ⊤).op =
        U.presheaf.map (homOfLE (x := (O a).ι ''ᵁ ⊤) le_top).op ≫ U.presheaf.map (homOfLE e).op := by
      rw [← Functor.map_comp]
      rfl
    have := congrArg (U.presheaf.map (homOfLE e).op).hom (h a)
    change (U.presheaf.map (homOfLE le_top : O a ⟶ ⊤).op).hom x =
      (U.presheaf.map (homOfLE le_top : O a ⟶ ⊤).op).hom y
    rw [hm]
    exact this
  · intro R _ G x
    have hG := (isSheaf_iff_isSheaf_of_type _ _).1
      ((Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget (ModuleCat.{1} (ULift.{1} R)))).1 G.property)
    have hS : Sieve.ofArrows (fun a => (O a).toScheme) (fun a => (O a).ι) ∈ Scheme.etaleTopology U :=
      Scheme.zariskiTopology_le_etaleTopology _
        (Scheme.Cover.mem_grothendieckTopology (U.openCoverOfIsOpenCover O hcov))
    have hsf := hG _ hS
    rw [Sieve.ofArrows, ← Presieve.isSheafFor_iff_generate, Presieve.isSheafFor_arrows_iff] at hsf
    refine hsf x ?_
    intro a b Z gi gj h
    by_cases hab : a = b
    · subst hab
      have : gi = gj := by rwa [cancel_mono] at h
      rw [this]
    · have hE : IsEmpty Z := ⟨fun z => hab (by
        have h1 := hval a (gi z)
        have h2 := hval b (gj z)
        rw [← Scheme.Hom.comp_apply, h, Scheme.Hom.comp_apply, h2] at h1
        exact h1.symm)⟩
      have hz := (Sheaf.isTerminalOfBotCover G Z (Scheme.bot_mem_grothendieckTopology Z)).isZero
      have := ModuleCat.subsingleton_of_isZero hz
      exact Subsingleton.elim _ _

end GlobalTheory.CompanionTheory.LcCoverProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcCover =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcMorCup =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcMorCup", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleComparisonMapOfFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EtCupF

variable {l : ℕ} [Fact l.Prime]

noncomputable def lcRing (hS : LcSpec) (H : RIn l) (A : PAlg l) (hA : A.IsTest) (n : ℕ) :
    LocallyConstant (SU A) (ZMod (l ^ n)) →+* A.Acr n where
  toFun := lcA A n
  map_one' := (hS l H A hA n).2.1
  map_mul' := (hS l H A hA n).2.2.1
  map_zero' := map_zero _
  map_add' := map_add _

theorem lcMor_cup (hM : MorCup) (hS : LcSpec) (hN : LcNat) (H : RIn l) (r : Roots l) {C : Type 1} [Category.{0} C]
    (T : C ⥤ Test l) (n p q m : ℕ) (h : p + q = m) (x : CH.H (probe H r T n).L p) (y : CH.H (probe H r T n).L q) :
    (lcMor hN H r T n).pull m ((mulP (lcF (probe H r T n).S (l ^ n))).cup h x y) =
      (mulP ((T ⋙ testι l) ⋙ AcrA l n)).cup h ((lcMor hN H r T n).pull p x) ((lcMor hN H r T n).pull q y) :=
  (hM ℤ (Acris l) (Int.castRingHom (Acris l)) C (lcF (probe H r T n).S (l ^ n)) ((T ⋙ testι l) ⋙ AcrA l n)
    (lcMor hN H r T n) (fun c => lcRing hS H (T.obj c).obj (T.obj c).property n) (fun c x => rfl)).2 p q m h x y

variable {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem eG_cup (hE : EtCup) (hM : MorCup) (hS : LcSpec) (E : EtIn) (hN : LcNat) (H : RIn l) (r : Roots l)
    (M : Model l K) {C : Type 1} [Category.{0} C] (G : C ⥤ El M.P) (n : ℕ) (i i' i'' : ℤ) (hi : i + i' = i'')
    (j j' j'' : ℕ) (hj : j + j' = j'') (x : Ht (l ^ n) (sch.obj (gb M)) j i) (y : Ht (l ^ n) (sch.obj (gb M)) j' i') :
    eG hN H r M G n i'' j'' ((cup (l ^ n) x y).cast (by omega) hi) =
      (mulP ((((G ⋙ CategoryOfElements.π _) ⋙ testι l)) ⋙ AcrA l n)).cup hj (eG hN H r M G n i j x) (eG hN H r M G n i' j' y) := by
  have h1 := hE E.gen E.tw (l ^ n) C (probe H r (G ⋙ CategoryOfElements.π _) n) (gb M)
    (pts H r M G n) i i' i'' hi j j' j'' hj x y
  have h2 := lcMor_cup hM hS hN H r (G ⋙ CategoryOfElements.π _) n j j' j'' hj
    ((pts H r M G n).et i j x) ((pts H r M G n).et i' j' y)
  exact (congrArg ((lcMor hN H r (G ⋙ CategoryOfElements.π _) n).pull j'') h1).trans h2

theorem fCup : CrystallineSemistableComparison.E.EtCup → CrystallineSemistableComparison.E.MorCup → CrystallineSemistableComparison.E.LcSpec → CrystallineSemistableComparison.E.FCup := by
  intro hE hM hS E hN l _ H r K M n i i' i'' hi j j' j'' hj x y
  exact eG_cup hE hM hS E hN H r M (𝟭 _) n i i' i'' hi j j' j'' hj x y

end GlobalTheory.CompanionTheory.EtCupF
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcMorCup =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftEx =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftEx", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.IsFirstChernClassOfLineBundle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.LineLift

theorem liftEx : CrystallineSemistableComparison.E.LiftEx := by
  intro l _ H O _ X q κ C _ G D
  have key : ∀ p : ∀ T : C, Spec (CommRingCat.of (G.obj T).1.obj.U) ⟶ D.Y,
      (∀ T, p T ≫ D.f = (G.obj T).2.1) → ∃ Λ : Lift G D, Λ.p = p := by
    intro p hp
    have hh : ∀ {T T' : C} (φ : T ⟶ T'),
        (Spec.map (CommRingCat.ofHom (PAlg.mapU (G.map φ).1.hom)) ≫ p T) ≫ D.f = p T' ≫ D.f := by
      intro T T' φ
      rw [Category.assoc, hp, hp]
      exact congrArg Subtype.val (G.map φ).2
    have ex : ∀ {T T' : C} (φ : T ⟶ T'), ∃ w : ((G.obj T').1.obj.A)ˣ,
        (G.obj T').1.obj.sharp w = (Scheme.ΓSpecIso (CommRingCat.of (G.obj T').1.obj.U)).hom.hom
          (D.u (Spec.map (CommRingCat.ofHom (PAlg.mapU (G.map φ).1.hom)) ≫ p T) (p T') (hh φ)) := by
      intro T T' φ
      exact H.sharp _ (G.obj T').1.property (Units.map
        (Scheme.ΓSpecIso (CommRingCat.of (G.obj T').1.obj.U)).hom.hom.toMonoidHom
        (D.u (Spec.map (CommRingCat.ofHom (PAlg.mapU (G.map φ).1.hom)) ≫ p T) (p T') (hh φ)))
    exact ⟨{ p := p, hp := hp, w := fun φ => (ex φ).choose, hw := fun φ _ => (ex φ).choose_spec }, rfl⟩
  refine ⟨key, fun hE => ?_⟩
  have sec : ∀ T : C, ∃ p : Spec (CommRingCat.of (G.obj T).1.obj.U) ⟶ D.Y, p ≫ D.f = (G.obj T).2.1 := by
    intro T
    haveI := D.surj
    obtain ⟨s, hs⟩ := H.splitU _ (G.obj T).1.property (pullback D.f (G.obj T).2.1)
      (pullback.snd D.f (G.obj T).2.1) inferInstance inferInstance
    refine ⟨s ≫ pullback.fst D.f (G.obj T).2.1, ?_⟩
    rw [Category.assoc, pullback.condition, ← Category.assoc, hs, Category.id_comp]
  choose p hp using sec
  obtain ⟨Λ, -⟩ := key p hp
  exact ⟨Λ⟩

end GlobalTheory.CompanionTheory.LineLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftEx =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineBC =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineBC", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleComparisonMapOfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.LineBase

theorem u_eq {X : Scheme.{0}} (D : LineData X) {V : Scheme.{0}} {a a' b b' : V ⟶ D.Y}
    (ha : a = a') (hb : b = b') (h : a ≫ D.f = b ≫ D.f) (h' : a' ≫ D.f = b' ≫ D.f) :
    D.u a b h = D.u a' b' h' := by
  subst ha hb
  rfl

noncomputable def pull {X' X : Scheme.{0}} (g : X' ⟶ X) (D : LineData X) : LineData X' where
  Y := pullback D.f g
  f := pullback.snd D.f g
  sm := by
    exact MorphismProperty.pullback_snd (P := @Smooth) D.f g D.sm
  surj := by
    exact MorphismProperty.pullback_snd (P := @Surjective) D.f g D.surj
  u := fun {V} a b h => D.u (a ≫ pullback.fst D.f g) (b ≫ pullback.fst D.f g) (by
    rw [Category.assoc, Category.assoc, pullback.condition, ← Category.assoc, ← Category.assoc, h])
  nat := fun {V' V} k a b h => by
    rw [← D.nat k (a ≫ pullback.fst D.f g) (b ≫ pullback.fst D.f g)]
    exact u_eq D (Category.assoc _ _ _) (Category.assoc _ _ _) _ _
  coc := fun {V} a b c h h' => D.coc _ _ _ _ _

theorem lineBC : CrystallineSemistableComparison.E.LineBC := by
  intro X' X g D
  refine ⟨pull g D, pullback.fst D.f g, pullback.condition, ?_, ?_⟩
  · intro V a x h
    exact ⟨pullback.lift a x h, pullback.lift_fst _ _ _, pullback.lift_snd _ _ _⟩
  · intro V a b h h'
    rfl

end GlobalTheory.CompanionTheory.LineBase
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineBC =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocSplit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocSplit", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.LocSplitProof

theorem locSplit : CrystallineSemistableComparison.E.LocSplit := by
  intro U hU P hP
  obtain ⟨S, hS, hSP⟩ := hP
  rw [Scheme.etaleTopology, Scheme.mem_grothendieckTopology_iff] at hS
  obtain ⟨𝒰, h𝒰⟩ := hS
  have hsurj : Surjective (Limits.Sigma.desc 𝒰.f) := by
    constructor
    intro x
    obtain ⟨i, y, hy⟩ := 𝒰.exists_eq x
    refine ⟨(Limits.Sigma.ι 𝒰.X i) y, ?_⟩
    rw [← Scheme.Hom.comp_apply, Limits.Sigma.ι_desc, hy]
  have het : Etale (Limits.Sigma.desc 𝒰.f) := by
    have := 𝒰.sigma.map_prop ⟨⟩
    simpa [Scheme.Cover.sigma_f] using this
  obtain ⟨s, hs⟩ := hU _ (Limits.Sigma.desc 𝒰.f) het hsurj
  have hlc : IsLocallyConstant (fun u : U => ((sigmaMk 𝒰.X).symm (s u)).1) := by
    intro t
    have hfst : IsOpen (Sigma.fst ⁻¹' t : Set (Σ i, 𝒰.X i)) := by
      rw [isOpen_sigma_iff]
      intro i
      by_cases hi : i ∈ t
      · convert isOpen_univ
        ext
        simp [hi]
      · convert isOpen_empty
        ext
        simp [hi]
    exact hfst.preimage ((sigmaMk 𝒰.X).symm.continuous.comp s.continuous)
  refine ⟨𝒰.I₀, ⟨fun u => ((sigmaMk 𝒰.X).symm (s u)).1, hlc⟩, ?_⟩
  intro V g a hg
  have hrange : Set.range (g ≫ s) ⊆ Set.range (Limits.Sigma.ι 𝒰.X a) := by
    rintro _ ⟨v, rfl⟩
    have h1 : ((sigmaMk 𝒰.X).symm (s (g v))).1 = a := hg v
    rcases hq : (sigmaMk 𝒰.X).symm (s (g v)) with ⟨i, y⟩
    rw [hq] at h1
    subst h1
    refine ⟨y, ?_⟩
    have h2 : sigmaMk 𝒰.X ⟨i, y⟩ = s (g v) := by rw [← hq]; simp
    rw [sigmaMk_mk] at h2
    rw [h2, Scheme.Hom.comp_apply]
  obtain ⟨l, hl⟩ : ∃ l, l ≫ Limits.Sigma.ι 𝒰.X a = g ≫ s :=
    ⟨_, IsOpenImmersion.lift_fac (Limits.Sigma.ι 𝒰.X a) (g ≫ s) hrange⟩
  have hgl : g = l ≫ 𝒰.f a := by
    have h3 : l ≫ 𝒰.f a = l ≫ Limits.Sigma.ι 𝒰.X a ≫ Limits.Sigma.desc 𝒰.f := by simp
    rw [h3, ← Category.assoc, hl, Category.assoc, hs, Category.comp_id]
  rw [hgl]
  exact hSP V _ (S.downward_closed (h𝒰 _ _ (Presieve.ofArrows.mk a)) l)

end GlobalTheory.CompanionTheory.LocSplitProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapNsmulTwGen =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapNsmulTwGen", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

noncomputable section

namespace GlobalTheory.CompanionTheory.CstE.KapRedP

theorem up_smul_eq {q : ℕ} {M : Type*} [AddCommGroup M] [Module (ULift.{1} (ZMod q)) M] (r : ZMod q) (c : ℕ)
    (h : (c : ZMod q) = r) (m : M) : (ULift.up r : ULift.{1} (ZMod q)) • m = c • m := by
  have e : (ULift.up r : ULift.{1} (ZMod q)) = ((c : ℕ) : ULift.{1} (ZMod q)) := by
    ext; rw [ULift.down_natCast, h]
  rw [e, Nat.cast_smul_eq_nsmul]

theorem res_map {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (x : Sec F U) :
    Sec.res g (Sec.map φ x) = Sec.map φ (Sec.res g x) := by
  have h := congrArg (fun ψ => ψ.hom x) (φ.hom.naturality g.op)
  exact h.symm

theorem map_nsmul_twGen {q : ℕ} (i : ℤ) {U : Scheme.{0}} (ζ : Prim q Γ(U, ⊤)) (c : ℕ) :
    Sec.map (resι _ (tw q i)) (c • twGen i ζ) = c • resGen i ζ :=
  map_nsmul _ _ _

theorem kapRed : CrystallineSemistableComparison.E.LcCover → CrystallineSemistableComparison.E.RepRoot → CrystallineSemistableComparison.E.KapSpec → CrystallineSemistableComparison.E.KapRed := by
  intro hLc _ hKap hRed Q q _ _ h i U ζ ξ hξ f
  obtain ⟨W, j, hj, -, -, hG⟩ := hLc U (ZMod Q) f
  refine (hG (ZMod q) ((GlobalTheory.EtC.res _ (tw q i)).X 0)
    (fun a => Sec.res (j a) (Sec.map (resι _ _) (kap i ξ (f.map (ZMod.castHom h (ZMod q))))))).unique
    (fun a => ?_) (fun a => rfl)
  have hξ' : (primRes (j a) ξ).1 = (primRes (j a) ζ).1 ^ (Q / q) := by
    change (j a).appTop.hom ξ.1 = ((j a).appTop.hom ζ.1) ^ (Q / q)
    rw [hξ, map_pow]
  have hL : Sec.res (j a) (kap i ζ f) = a.val • twGen i (primRes (j a) ζ) := by
    rw [(hKap Q i U ζ f).1 (W a) (j a) a (hj a)]
    exact up_smul_eq a a.val (ZMod.natCast_zmod_val a) _
  have hR : Sec.res (j a) (kap i ξ (f.map (ZMod.castHom h (ZMod q)))) = a.val • twGen i (primRes (j a) ξ) := by
    rw [(hKap q i U ξ (f.map (ZMod.castHom h (ZMod q)))).1 (W a) (j a) (ZMod.castHom h (ZMod q) a)
      (fun v => by simp [hj a v])]
    exact up_smul_eq _ a.val (by rw [ZMod.castHom_apply, ZMod.natCast_val]) _
  rw [(redMap Q q i).nat (j a) 0, res_map, res_map, hL, hR, map_nsmul_twGen, map_nsmul_twGen, map_nsmul,
    hRed Q q h i (W a) (primRes (j a) ζ) (primRes (j a) ξ) hξ']

end GlobalTheory.CompanionTheory.CstE.KapRedP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapNsmulTwGen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEvCongr =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEvCongr", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ImageCochainExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC
open CochainComplex CochainComplex.HomComplex

namespace GlobalTheory.CompanionTheory.EdgeRep

theorem mul_ev_congr {R : Type} [CommRing R] {I J K : GlobalTheory.EtC.Cx R} (μ : Pair I J K) {X : Scheme.{0}} {n m k s t : ℤ}
    (h : n + m = k) (hst : s + t = k) (hs : -((0 : ℕ) : ℤ) + n = s) (ht : -((0 : ℕ) : ℤ) + m = t)
    (α : Cochain ((chains R).obj (sch.obj X)) I n) (β : Cochain ((chains R).obj (sch.obj X)) J m) :
    μ.mul X s t k hst (ev α 0 s hs X (𝟙 X)) (ev β 0 t ht X (𝟙 X)) =
      μ.mul X n m k h (ev α 0 n (by simp) X (𝟙 X)) (ev β 0 m (by simp) X (𝟙 X)) := by
  obtain rfl : s = n := by simpa using hs.symm
  obtain rfl : t = m := by simpa using ht.symm
  rfl

theorem aw_value {R : Type} [CommRing R] {I J K : GlobalTheory.EtC.Cx R} (μ : Pair I J K) {X : Scheme.{0}} {n m k : ℤ}
    (h : n + m = k) (α : Cochain ((chains R).obj (sch.obj X)) I n) (β : Cochain ((chains R).obj (sch.obj X)) J m)
    (γ : Cochain ((chains R).obj (sch.obj X)) K k) (hγ : μ.IsAW h α β γ) :
    ev γ 0 k (by simp) X (𝟙 X) = μ.mul X n m k h (ev α 0 n (by simp) X (𝟙 X)) (ev β 0 m (by simp) X (𝟙 X)) := by
  have h0 := hγ 0 k (by simp) X (𝟙 X)
  rw [Fin.sum_univ_one] at h0
  rw [h0]
  have hu : (m * ((0 : Fin 1) : ℕ)).negOnePow = 1 := by simp
  rw [hu, one_smul]
  exact mul_ev_congr μ h _ _ _ α β

theorem repCup : CrystallineSemistableComparison.E.EvExt → CrystallineSemistableComparison.E.EvNat → CrystallineSemistableComparison.E.RepBasic → CrystallineSemistableComparison.E.RepConc → CrystallineSemistableComparison.E.InSch → CrystallineSemistableComparison.E.RepCup := by
  intro _ _ _ _ _ R _ I J K μ X n m k h x y a b hx hy
  obtain ⟨α, rfl, rfl⟩ := hx
  obtain ⟨β, rfl, rfl⟩ := hy
  obtain ⟨γ, hγ⟩ := μ.aw_exists (sch.obj X) h α β
  exact ⟨γ, (μ.cup_spec (sch.obj X) h α β γ hγ).symm, aw_value μ h α.1 β.1 γ.1 hγ⟩

end GlobalTheory.CompanionTheory.EdgeRep

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEvCongr =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullCZsmul =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullCZsmul", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMapPull

universe w w' w₁ w₁' u v u' v'

variable {R R' : Type} [CommRing R] [CommRing R'] {σ : R →+* R'}
  {C : Type u} [Category.{v} C] {C' : Type u'} [Category.{v'} C']
  {F : C ⥤ ModuleCat.{w'} R} {F' : C' ⥤ ModuleCat.{w₁'} R'}
  {T : Res.{w} F} {T' : Res.{w₁} F'} {m : Mor F F' σ}

theorem d_pullC (n : ResMor T T' m) (s k : ℕ) (x : Cn (T.K s) k) :
    d (T'.K s) k (n.pullC s k x) = n.pullC s (k + 1) (d (T.K s) k x) := by
  funext t
  change ∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) • ((T'.K s).map (GlobalTheory.CatH.toLast i t)).hom
      (n.τ s _ (x (GlobalTheory.CatH.face i t ⋙ m.G))) =
    n.τ s _ (∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) •
      ((T.K s).map (m.G.map (GlobalTheory.CatH.toLast i t))).hom (x (GlobalTheory.CatH.face i t ⋙ m.G)))

  rw [map_sum]
  exact Finset.sum_congr rfl fun i _ => by rw [map_zsmul, n.nat]

theorem dvC_pullC (n : ResMor T T' m) (s k : ℕ) (x : Cn (T.K s) k) :
    T'.dvC s k (n.pullC s k x) = n.pullC (s + 1) k (T.dvC s k x) :=
  funext fun t => (n.dv s _ (x (t ⋙ m.G))).symm

theorem ιC_pullC (n : ResMor T T' m) (k : ℕ) (z : Cn F k) :
    T'.ιC k (m.pullC k z) = n.pullC 0 k (T.ιC k z) :=
  funext fun t => (n.ι _ (z (t ⋙ m.G))).symm

theorem pullC_zsmul (n : ResMor T T' m) (s k : ℕ) (c : ℤ) (x : Cn (T.K s) k) :
    n.pullC s k (c • x) = c • n.pullC s k x :=
  funext fun t => map_zsmul (n.τ s _) c (x (t ⋙ m.G))

theorem st_pullC (n : ResMor T T' m) {j : ℕ} (z : Cn F j) :
    ∀ (s k : ℕ) (x : Cn (T.K s) k), T.St z s k x → T'.St (m.pullC j z) s k (n.pullC s k x) := by
  intro s
  induction s with
  | zero =>
    intro k x h
    simp only [Res.St] at h ⊢
    obtain ⟨rfl, rfl⟩ := h
    exact ⟨rfl, ιC_pullC n j z⟩
  | succ s ih =>
    intro k x h
    simp only [Res.St] at h ⊢
    obtain ⟨a, rfl, ha⟩ := h
    refine ⟨n.pullC s k a, dvC_pullC n s k a, ?_⟩
    have := ih (k + 1) _ ha
    rwa [pullC_zsmul, ← d_pullC] at this

end GlobalTheory.CompanionTheory.EdgeMapPull


open GlobalTheory.CompanionTheory.EdgeMapPull in
theorem GlobalTheory.CompanionTheory.EdgeMapPull.edgeMap : CrystallineSemistableComparison.E.EdgeMap := by
  intro R R' _ _ σ C C' _ _ F F' T T' m n j x h hE
  obtain ⟨z, hz, hS, rfl⟩ := hE
  exact ⟨m.pullC j z, by rw [m.d_pullC, hz, map_zero], st_pullC n z j 0 x hS, rfl⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullCZsmul =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedResMor =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedResMor", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

noncomputable section

namespace GlobalTheory.CompanionTheory.EdgeRed

theorem res_res {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (h : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res h (Sec.res g x) = Sec.res (h ≫ g) x := by
  simp [Sec.res]

theorem res_map {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (x : Sec F U) :
    Sec.res g (Sec.map φ x) = Sec.map φ (Sec.res g x) := by
  have h := φ.hom.naturality g.op
  exact (congrArg (fun t => t.hom x) h).symm

variable {C C' : Type 1} [Category.{0} C] [Category.{0} C']

def redResMor (hS : KapSpec) (hK : KapRed) (hR : InRed) {Q q : ℕ} [NeZero Q] [NeZero q] (h : q ∣ Q)
    (P : Probe C Q) (P' : Probe C' q) (m : Mor P.L P'.L (RingHom.id ℤ))
    (g : ∀ c : C', P'.U c ⟶ P.U (m.G.obj c))
    (hg : ∀ {c c' : C'} (φ : c ⟶ c'), g c' ≫ (P.S.map (m.G.map φ)).unop = (P'.S.map φ).unop ≫ g c)
    (hτ : ∀ c (f : LocallyConstant (P.U (m.G.obj c)) (ZMod Q)),
      m.τ c f = lcRes q (g c) (f.map (ZMod.castHom h (ZMod q))))
    (hζ : ∀ c, (P'.ζ c).1 = (primRes (g c) (P.ζ _)).1 ^ (Q / q)) (i : ℤ) :
    ResMor (P.res i) (P'.res i) m where
  τ s c :=
    { toFun := fun x => Sec.res (g c) ((redMap Q q i).app (P.U (m.G.obj c)) (s : ℤ) x)
      map_zero' := by simp
      map_add' := fun x y => by simp }
  nat s {c c'} φ x := by
    change Sec.res (g c') ((redMap Q q i).app _ (s : ℤ) (Sec.res (P.S.map (m.G.map φ)).unop x)) =
      Sec.res (P'.S.map φ).unop (Sec.res (g c) ((redMap Q q i).app _ (s : ℤ) x))
    rw [← (redMap Q q i).nat, res_res, res_res, hg]
  ι c x := by
    change Sec.res (g c) ((redMap Q q i).app _ 0 (Sec.map (resι _ (tw Q i)) (kap i (P.ζ (m.G.obj c)) x))) =
      Sec.map (resι _ (tw q i)) (kap i (P'.ζ c) (m.τ c x))
    rw [(redMap Q q i).nat, res_map, (hS Q i _ (P.ζ (m.G.obj c)) x).2.2 _ (g c),
      hK hR Q q h i _ (primRes (g c) (P.ζ (m.G.obj c))) (P'.ζ c) (hζ c), hτ]
    rfl
  dv s c x := by
    change Sec.res (g c) ((redMap Q q i).app _ ((s + 1 : ℕ) : ℤ) (Sec.map ((GlobalTheory.EtC.res _ (tw Q i)).d (s : ℤ) ((s + 1 : ℕ) : ℤ)) x)) =
      Sec.map ((GlobalTheory.EtC.res _ (tw q i)).d (s : ℤ) ((s + 1 : ℕ) : ℤ)) (Sec.res (g c) ((redMap Q q i).app _ (s : ℤ) x))
    rw [← (redMap Q q i).comm, res_map]

theorem etRed : CrystallineSemistableComparison.E.EtSpec → CrystallineSemistableComparison.E.EdgeMap → CrystallineSemistableComparison.E.RepBasic → CrystallineSemistableComparison.E.RepOp → CrystallineSemistableComparison.E.KapSpec →
    CrystallineSemistableComparison.E.KapRed → CrystallineSemistableComparison.E.EtRed := by
  intro hSpec hEdge hRep hOpR hS hK hGen hR hOp Q q _ _ h C C' _ _ P P' X Y Y' m g hg hτ hy hζ i j x
  obtain ⟨a, ha⟩ := (hRep _ _ X (j : ℤ)).1 x
  have hE := (hSpec hGen Q C P X Y i j x).1 a ha
  have hE' := hEdge ℤ ℤ (RingHom.id ℤ) C C' P.L P'.L (P.res i) (P'.res i) m
    (redResMor hS hK hR h P P' m g hg hτ hζ i) j _ _ hE
  have hr : Rep (red Q q _ (j : ℤ) i x) ((redMap Q q i).app X (j : ℤ) a) :=
    hOpR hOp _ _ _ _ (redMap Q q i) X (j : ℤ) x a ha
  refine (hSpec hGen q C' P' X Y' i j (red Q q _ (j : ℤ) i x)).2 _ ⟨_, hr, ?_⟩
  convert hE' using 1
  funext t
  change Sec.res (Y'.y _) ((redMap Q q i).app X (j : ℤ) a) =
    Sec.res (g _) ((redMap Q q i).app _ (j : ℤ) (Sec.res (Y.y _) a))
  rw [← (redMap Q q i).nat, res_res, hy]

end GlobalTheory.CompanionTheory.EdgeRed
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedResMor =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedRootOfRep =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedRootOfRep", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMap

theorem redRoot_of_rep : CrystallineSemistableComparison.E.RepRoot → CrystallineSemistableComparison.E.RepOp → CrystallineSemistableComparison.E.RepConc → CrystallineSemistableComparison.E.RedRoot := by
  intro hRoot hOp hConc inOp inRed Q q _ _ hq i X ζ ξ hξ
  have h1 : Rep (rootClass i ζ) (resGen i ζ) := (hRoot Q i X ζ).2
  have h2 : Rep (rootClass i ξ) (resGen i ξ) := (hRoot q i X ξ).2
  have h3 := hOp inOp _ _ _ _ (redMap Q q i) X 0 (rootClass i ζ) _ h1
  rw [inRed Q q hq i X ζ ξ hξ] at h3
  exact (hConc (ZMod q) _ X 0 (resGen i ξ)).2.2 _ _ h3 h2

end GlobalTheory.CompanionTheory.EdgeMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedRootOfRep =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepBasic =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepBasic", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EtEdge

theorem repBasic : CrystallineSemistableComparison.E.EvExt → CrystallineSemistableComparison.E.EvNat → CrystallineSemistableComparison.E.InSch → CrystallineSemistableComparison.E.RepBasic := by
  intro hExt hNat hIn
  unfold CrystallineSemistableComparison.E.InSch at hIn
  unfold CrystallineSemistableComparison.E.RepBasic
  intro R _ I X n
  unfold CrystallineSemistableComparison.E.Rep
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro x
    obtain ⟨α, rfl⟩ := CohomologyClass.mk_surjective x
    exact ⟨_, α, rfl, rfl⟩
  · rintro x a ⟨α, -, rfl⟩ m
    by_cases hm : n + 1 = m
    · exact ((hIn R X I (n - 1) n m (by omega) hm).2 α).1
    · rw [HomologicalComplex.shape I n m (by simpa using hm)]
      simp [GlobalTheory.EtC.Sec.map]
  · rintro x y a b ⟨α, rfl, rfl⟩ ⟨β, rfl, rfl⟩
    have hs := (hExt R (sch.obj X) I n α β).2 0 n (by simp) X (𝟙 X : X ⟶ X)
    exact ⟨⟨α + β, rfl, hs.1⟩, ⟨α - β, rfl, hs.2.1⟩⟩
  · rintro a ⟨α, h0, rfl⟩ k hk
    exact ((hIn R X I k n (n + 1) hk rfl).2 α).2.1 h0
  · rintro Y f x a ⟨α, rfl, rfl⟩
    refine ⟨GlobalTheory.EtC.zcomp (Cocycle.ofHom ((chains R).map (sch.map f))) α (zero_add n), rfl, ?_⟩
    have h2 := (hNat R (sch.obj X) I n (α : Cochain _ I n) 0 n (by simp) Y).2 (sch.obj Y) (sch.map f)
      (𝟙 Y : Y ⟶ Y)
    have h1 := (hNat R (sch.obj X) I n (α : Cochain _ I n) 0 n (by simp) X).1 Y f (𝟙 X : X ⟶ X)
    have e : (Sx.map (sch.map f) (𝟙 Y : Y ⟶ Y) : Sx (sch.obj X) 0 Y) = Sx.res f (𝟙 X : X ⟶ X) := by
      show 𝟙 Y ≫ f = f ≫ 𝟙 X
      simp
    refine h2.trans ?_
    rw [e]
    exact h1

end GlobalTheory.CompanionTheory.EtEdge
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepBasic =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepConcOfInputs =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepConcOfInputs", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMap

theorem repConc_of_inputs : CrystallineSemistableComparison.E.EvExt → CrystallineSemistableComparison.E.InSch → CrystallineSemistableComparison.E.RepBasic → CrystallineSemistableComparison.E.RepConc := by
  intro hEv hSch hRep R _ I X n a
  have hS := hSch R X I (n - 1) n (n + 1) (by ring) rfl
  have hR := hRep R I X n
  have hconc : Sec.map (I.d n (n + 1)) a = 0 →
      ∃ α : CochainComplex.HomComplex.Cocycle ((chains R).obj (sch.obj X)) I n, CrystallineSemistableComparison.E.IsConc α.1 a := by
    intro ha
    obtain ⟨α, h0, h1⟩ := hS.1 a ha
    refine ⟨α, ?_⟩
    unfold CrystallineSemistableComparison.E.IsConc
    exact ⟨h0, h1⟩
  have huniq : ∀ x y : CochainComplex.HomComplex.CohomologyClass ((chains R).obj (sch.obj X)) I n, CrystallineSemistableComparison.E.Rep x a → CrystallineSemistableComparison.E.Rep y a → x = y := by
    intro x y hx hy
    have hxy : CrystallineSemistableComparison.E.Rep (x - y) (a - a) := (hR.2.2.1 x y a a hx hy).2
    rw [sub_self] at hxy
    obtain ⟨γ, hγ, hγa⟩ := hxy
    have h00 : CrystallineSemistableComparison.E.Rep (0 : CochainComplex.HomComplex.CohomologyClass ((chains R).obj (sch.obj X)) I n) 0 := by
      have h := (hR.2.2.1 x x a a hx hx).2
      rwa [sub_self, sub_self] at h
    obtain ⟨b, hb⟩ := hR.2.2.2.1 0 h00 (n - 1) (by ring)
    have hγ0 : CochainComplex.HomComplex.CohomologyClass.mk γ = 0 := ((hS.2 γ).2).2 ⟨b, by rw [hb, hγa]⟩
    rw [← sub_eq_zero, ← hγ, hγ0]
  refine ⟨hconc, fun x hx => ?_, huniq⟩
  have hx' := hx
  obtain ⟨β, hβ, hβa⟩ := hx'
  have ha : Sec.map (I.d n (n + 1)) a = 0 := by
    have h := (hS.2 β).1
    rwa [hβa] at h
  obtain ⟨α, hα⟩ := hconc ha
  have hα' := hα
  unfold CrystallineSemistableComparison.E.IsConc at hα'
  obtain ⟨hα1, -⟩ := hα'
  have hRα : CrystallineSemistableComparison.E.Rep (CochainComplex.HomComplex.CohomologyClass.mk α) a := by
    unfold CrystallineSemistableComparison.E.Rep
    refine ⟨α, rfl, ?_⟩
    rw [hα1 X (𝟙 X)]
    simp [GlobalTheory.EtC.Sec.res]
  exact ⟨α, hα, huniq _ _ hRα hx⟩

end GlobalTheory.CompanionTheory.EdgeMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepConcOfInputs =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepOp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepOp", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeRep

theorem repOp : CrystallineSemistableComparison.E.EvNat → CrystallineSemistableComparison.E.RepConc → CrystallineSemistableComparison.E.RepBasic → CrystallineSemistableComparison.E.RepOp := by
  intro _ hConc hBasic hOp S R _ _ I J ρ X n x a hRep
  obtain ⟨α, hα, hmk⟩ := (hConc S I X n a).2.1 x hRep
  have hcl : Sec.map (J.d n (n + 1)) (ρ.app X n a) = 0 := by
    rw [ρ.comm X n (n + 1) a, (hBasic S I X n).2.1 x a hRep (n + 1), map_zero]
  obtain ⟨β, hβ⟩ := (hConc R J X n (ρ.app X n a)).1 hcl
  have himg : ρ.IsImage α.1 β.1 := by
    intro p s h U y
    cases p with
    | zero =>
      have hs : n = s := by omega
      subst hs
      rw [hβ.1 U y, hα.1 U y]
      exact ρ.nat y n a
    | succ p =>
      rw [hβ.2 p s h U y, hα.2 p s h U y, map_zero]
  refine ⟨β, ?_, ?_⟩
  · rw [← hOp S R I J ρ (sch.obj X) n α β himg, hmk]
  · rw [hβ.1 X (𝟙 X)]
    change ((J.X n).obj.map (𝟙 (op X))).hom (ρ.app X n a) = ρ.app X n a
    rw [CategoryTheory.Functor.map_id]
    rfl

end GlobalTheory.CompanionTheory.EdgeRep
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepOp =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResGenRes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResGenRes", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EtRoot

open CochainComplex CochainComplex.HomComplex

theorem twGen_res {q : ℕ} (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)) :
    Sec.res g (twGen i ζ) = twGen i (primRes g ζ) := by
  unfold twGen Sec.res ofRings.sec
  have h := NatTrans.naturality_apply (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)) g.op
    (Submodule.Quotient.mk (Finsupp.single ζ 1) : (Scheme.Γ ⋙ twF q i).obj (op U))
  have h2 : ((Scheme.Γ ⋙ twF q i).map g.op).hom (Submodule.Quotient.mk (Finsupp.single ζ 1)) =
      (Submodule.Quotient.mk (Finsupp.single (primRes g ζ) 1) : (Scheme.Γ ⋙ twF q i).obj (op V)) := by
    change Submodule.Quotient.mk
      (Finsupp.mapDomain (Prim.map (Scheme.Γ.map g.op).hom) (Finsupp.single ζ 1)) = _
    rw [Finsupp.mapDomain_single]
    unfold primRes
    rw [Scheme.Γ_map_op]
  exact h.symm.trans (congrArg (ModuleCat.Hom.hom ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).app (op V))) h2)

theorem resGen_res {q : ℕ} (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)) :
    Sec.res g (resGen i ζ) = resGen i (primRes g ζ) := by
  unfold resGen
  rw [← twGen_res i g ζ]
  unfold Sec.res Sec.map
  exact (NatTrans.naturality_apply (resι (ZMod q) (tw q i)).hom g.op (twGen i ζ)).symm

theorem repRoot : CrystallineSemistableComparison.E.RepConc → CrystallineSemistableComparison.E.ResZero → CrystallineSemistableComparison.E.RepRoot := by
  intro hC hZ q i X ζ
  refine ⟨fun V g => ⟨twGen_res i g ζ, resGen_res i g ζ⟩, ?_⟩
  have hd : Sec.map ((res (ZMod q) (tw q i)).d 0 1) (resGen i ζ) = 0 :=
    ((hZ (ZMod q) (tw q i) X).2.1 (resGen i ζ)).mpr ⟨twGen i ζ, rfl⟩
  obtain ⟨α, hα⟩ := (hC (ZMod q) (res (ZMod q) (tw q i)) X 0 (resGen i ζ)).1 hd
  obtain ⟨β, hβ1, hβ2⟩ := GlobalTheory.EtC.pick_spec
    (P := fun c => ∃ α : Cocycle ((chains (ZMod q)).obj (sch.obj X)) (res (ZMod q) (tw q i)) 0,
      CohomologyClass.mk α = c ∧
        ∀ (U : Scheme) (x : U ⟶ X), ev (R := ZMod q) (E := sch.obj X) (I := res (ZMod q) (tw q i)) (n := 0) (↑α) 0 0 (by simp) U x = Sec.res x (resGen i ζ))
    ⟨_, α, rfl, hα.1⟩
  unfold CrystallineSemistableComparison.E.Rep GlobalTheory.EtC.rootClass
  refine ⟨β, hβ1, (hβ2 X (𝟙 X)).trans ?_⟩
  unfold Sec.res
  simp

end GlobalTheory.CompanionTheory.EtRoot
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResGenRes =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResLoc =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResLoc", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChosenInjectiveResolutionEtaleSheafSectionsExact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMap

theorem resLoc : CrystallineSemistableComparison.E.ResLoc := by
  intro R _ F s U x hx
  exact (GlobalTheory.EtC.resSec R F U).2.2.1 (s : ℤ) ((s + 1 : ℕ) : ℤ) ((s + 1 + 1 : ℕ) : ℤ) (by omega) (by omega) x (by omega) hx

end GlobalTheory.CompanionTheory.EdgeMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResLoc =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResSplit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResSplit", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.ResSplitProof

theorem map_res {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U)
    (x : Sec F U) : Sec.map φ (Sec.res g x) = Sec.res g (Sec.map φ x) := by
  have h := φ.hom.naturality g.op
  exact congrArg (fun k => ModuleCat.Hom.hom k x) h

theorem resSplit : CrystallineSemistableComparison.E.ResLoc → CrystallineSemistableComparison.E.LocSplit → CrystallineSemistableComparison.E.LcCover → CrystallineSemistableComparison.E.ResSplit := by
  intro hRL hLS hLC R _ F U hU s x
  constructor
  · intro hx
    obtain ⟨ι, f, hf⟩ := hLS U hU _ (hRL R F s U x hx)
    obtain ⟨W, j, hj, -, -, hglue⟩ := hLC U ι f
    have hP : ∀ a, ∃ y, Sec.map ((GlobalTheory.EtC.res R F).d (↑s) (↑(s + 1))) y = Sec.res (j a) x :=
      fun a => hf (W a) (j a) a (hj a)
    choose y hy using hP
    obtain ⟨z, hz, -⟩ := hglue R _ y
    obtain ⟨w, -, huniq⟩ := hglue R _ (fun a => Sec.res (j a) x)
    refine ⟨z, ?_⟩
    have h1 := huniq (Sec.map ((GlobalTheory.EtC.res R F).d (↑s) (↑(s + 1))) z)
      (fun a => by rw [← map_res, hz a, hy a])
    have h2 := huniq x (fun a => rfl)
    exact h1.trans h2.symm
  · rintro ⟨y, rfl⟩
    have h := (GlobalTheory.EtC.res R F).d_comp_d (↑s) (↑(s + 1)) (↑(s + 1 + 1))
    calc Sec.map ((GlobalTheory.EtC.res R F).d (↑(s + 1)) (↑(s + 1 + 1)))
          (Sec.map ((GlobalTheory.EtC.res R F).d (↑s) (↑(s + 1))) y)
        = Sec.map ((GlobalTheory.EtC.res R F).d (↑s) (↑(s + 1)) ≫ (GlobalTheory.EtC.res R F).d (↑(s + 1)) (↑(s + 1 + 1))) y := rfl
      _ = Sec.map 0 y := by rw [h]
      _ = 0 := by first | rfl

end GlobalTheory.CompanionTheory.ResSplitProof
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResSplit =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ChosenInjectiveResolutionEtaleSheafSectionsExact\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EtRes

theorem resZero : CrystallineSemistableComparison.E.ResZero := by
  intro R _ F U
  obtain ⟨h0, h1, -, h3⟩ := GlobalTheory.EtC.resSec R F U
  exact ⟨h1, h0, h3⟩

end GlobalTheory.CompanionTheory.EtRes
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecMapRes =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecMapRes", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeRes

theorem sec_map_res {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (y : Sec F U) :
    Sec.map φ (Sec.res g y) = Sec.res g (Sec.map φ y) := by
  have h := φ.hom.naturality g.op
  exact congrArg (fun f => f.hom y) h

theorem resGood : CrystallineSemistableComparison.E.KapSpec → CrystallineSemistableComparison.E.KapBij → CrystallineSemistableComparison.E.ResZero → CrystallineSemistableComparison.E.ResSplit → CrystallineSemistableComparison.E.ResGood := by
  intro hS hB hZ hX hgen q _ C _ P i
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro c c' φ x
    have h1 := (hS q i (P.U c) (P.ζ c) x).2.2 (P.U c') (P.S.map φ).unop
    rw [P.ζ_nat φ] at h1
    have h2 := sec_map_res (resι _ (tw q i)) (P.S.map φ).unop (kap i (P.ζ c) x)
    rw [h1] at h2
    exact h2
  · intro s c c' φ x
    exact sec_map_res ((GlobalTheory.EtC.res _ (tw q i)).d (s : ℤ) ((s + 1 : ℕ) : ℤ)) (P.S.map φ).unop x
  · intro c a b h
    exact (hB hgen q i (P.U c) (P.ζ c)).1 ((hZ _ (tw q i) (P.U c)).1 h)
  · intro c y
    have h := (hZ _ (tw q i) (P.U c)).2.1 y
    constructor
    · intro h0
      obtain ⟨t, ht⟩ := h.1 h0
      obtain ⟨f, hf⟩ := (hB hgen q i (P.U c) (P.ζ c)).2 t
      exact ⟨f, by rw [← ht, ← hf]; rfl⟩
    · rintro ⟨f, rfl⟩
      exact h.2 ⟨_, rfl⟩
  · intro s c
    exact hX _ (tw q i) (P.U c) (P.split c) s

end GlobalTheory.CompanionTheory.EdgeRes
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecMapRes =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecResMap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecResMap", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.KapMulE

theorem sec_res_map {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U)
    (x : Sec F U) : Sec.res g (Sec.map φ x) = Sec.map φ (Sec.res g x) := by
  change ((φ.hom.app (op U) ≫ G.obj.map g.op).hom x) = ((F.obj.map g.op ≫ φ.hom.app (op V)).hom x)
  rw [φ.hom.naturality]

theorem res_kap (hKS : KapSpec) {q : ℕ} (i : ℤ) {U : Scheme.{0}} (ζ : Prim q Γ(U, ⊤))
    (f : LocallyConstant U (ZMod q)) {V : Scheme.{0}} (k : V ⟶ U) (a : ZMod q) (h : ∀ v : V, f (k v) = a) :
    Sec.res k (Sec.map (resι _ (tw q i)) (kap i ζ f)) =
      (ULift.up a : ULift.{1} (ZMod q)) • resGen i (primRes k ζ) := by
  obtain ⟨h1, -, -⟩ := hKS q i U ζ f
  unfold CrystallineSemistableComparison.E.IsLC at h1
  rw [sec_res_map, h1 V k a h]
  simp only [GlobalTheory.EtC.Sec.map, GlobalTheory.EtC.resGen, map_smul]

theorem kapMul_of : LcCover → RepRoot → KapSpec → KapMul := by
  intro hLC _ hKS hIn
  unfold CrystallineSemistableComparison.E.InTw at hIn
  intro q _ i j U ζ f g
  have hP := hIn q i j
  let fg : LocallyConstant U (ZMod q × ZMod q) :=
    ⟨fun x => (f x, g x), f.isLocallyConstant.prodMk g.isLocallyConstant⟩
  obtain ⟨W, jj, hc, -, -, hglue⟩ := hLC U (ZMod q × ZMod q) fg
  have hpt : ∀ (a : ZMod q × ZMod q) (v : W a), f (jj a v) = a.1 ∧ g (jj a v) = a.2 := by
    intro a v
    have := hc a v
    exact ⟨congrArg Prod.fst this, congrArg Prod.snd this⟩
  obtain ⟨y, -, hy⟩ := hglue (ZMod q) ((res (ZMod q) (tw q (i + j))).X 0)
    (fun a => Sec.res (jj a) (Sec.map (resι (ZMod q) (tw q (i + j))) ((kap (i + j) ζ) (f * g))))
  refine (hy _ fun a => ?_).trans (hy _ fun a => rfl).symm
  rw [(twPair q i j).nat]
  rw [res_kap hKS i ζ f (jj a) a.1 fun v => (hpt a v).1,
    res_kap hKS j ζ g (jj a) a.2 fun v => (hpt a v).2,
    res_kap hKS (i + j) ζ (f * g) (jj a) (a.1 * a.2) fun v => by
      rw [LocallyConstant.mul_apply, (hpt a v).1, (hpt a v).2]]
  rw [LinearMap.map_smul, LinearMap.map_smul, LinearMap.smul_apply, hP (W a) (primRes (jj a) ζ), smul_smul, mul_comm]
  rfl

end GlobalTheory.CompanionTheory.KapMulE
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecResMap =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecSubsingleton =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecSubsingleton", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.TwZeroGen

theorem sec_subsingleton (hLc : LcCover) (V : Scheme.{0}) [IsEmpty V] {R : Type} [CommRing R] (G : Shv R) :
    Subsingleton (Sec G V) := by
  let f : LocallyConstant V Empty :=
    ⟨isEmptyElim, fun s => by rw [Set.eq_empty_of_isEmpty (isEmptyElim ⁻¹' s)]; exact isOpen_empty⟩
  obtain ⟨W, j, -, -, -, hG⟩ := hLc V Empty f
  constructor
  intro a b
  exact (hG R G (fun e => e.elim)).unique (fun e => e.elim) (fun e => e.elim)

private theorem twGen_zero_eq_of_eq_pow {q : ℕ} {V : Scheme.{0}} (η θ : Prim q ↑(V.presheaf.obj (op ⊤)))
    (b : (ZMod q)ˣ) (h : η.1 = θ.1 ^ (b : ZMod q).val) : twGen 0 η = twGen 0 θ := by
  unfold twGen
  congr 1
  refine (Submodule.Quotient.eq _).2 (Submodule.subset_span ⟨θ, η, b, h, ?_⟩)
  rw [zpow_zero]
  rfl

theorem twZero : RootPow → LcCover → RepRoot → TwZero := by
  intro hR hL hP hIn q _ U ζ ξ
  obtain ⟨f, hf, hu⟩ := (hR q U ζ).2 ξ
  obtain ⟨W, j, hWf, -, -, hG⟩ := hL U (ZMod q) f
  have key : ∀ a, Sec.res (j a) (twGen 0 ζ) = Sec.res (j a) (twGen 0 ξ) := by
    intro a
    rw [((hP q 0 U ζ).1 (W a) (j a)).1, ((hP q 0 U ξ).1 (W a) (j a)).1]
    by_cases ha : IsUnit a
    · symm
      apply twGen_zero_eq_of_eq_pow _ _ ha.unit
      have hpw := hf (W a) (j a) a (hWf a)
      have e : (primRes (j a) ξ).1 = (CommRingCat.Hom.hom (Scheme.Hom.appTop (j a))) ξ.1 := rfl
      rw [IsUnit.unit_spec, e]
      exact hpw
    · haveI : IsEmpty (W a) := ⟨fun v => by
        have hv := hu (j a v)
        rw [hWf a v] at hv
        exact ha hv⟩
      exact (sec_subsingleton hL (W a) (tw q 0)).elim _ _
  obtain ⟨y, -, hy⟩ := hG (ZMod q) (tw q 0) (fun a => Sec.res (j a) (twGen 0 ζ))
  exact (hy _ (fun a => rfl)).trans (hy _ (fun a => (key a).symm)).symm

end GlobalTheory.CompanionTheory.TwZeroGen
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecSubsingleton =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignCancel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignCancel", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.Staircase

variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C]

theorem term_ιC {F : C ⥤ ModuleCat.{0} R} (T : Res.{1} F) (hT : T.Good) {p n : ℕ}
    (s : ComposableArrows C n) (z : Cn F p) (g : Fin (p + 1) → Fin (n + 1)) (hg : Monotone g) :
    term (T.K 0) s (T.ιC p z) g hg = T.ι _ (term F s z g hg) :=
  (hT.ι_nat _ _).symm

theorem term_dvC {F : C ⥤ ModuleCat.{0} R} (T : Res.{1} F) (hT : T.Good) (t : ℕ) {p n : ℕ}
    (s : ComposableArrows C n) (a : Cn (T.K t) p) (g : Fin (p + 1) → Fin (n + 1)) (hg : Monotone g) :
    term (T.K (t + 1)) s (T.dvC t p a) g hg = T.dv t _ (term (T.K t) s a g hg) :=
  (hT.dv_nat t _ _).symm

theorem sign_cancel {i k r : ℕ} (h : i + k = r) : (-1 : ℤ) ^ r * (-1 : ℤ) ^ i = (-1 : ℤ) ^ k := by
  subst h
  rw [pow_add, mul_comm ((-1 : ℤ) ^ i), mul_assoc, ← mul_pow]
  simp

theorem stCupB : CupLeib.{1} → StCol → StCupB := by
  intro hL hC R _ C _ F₁ F₂ F₃ T₁ T₂ T₃ P μ g₁ g₂ i j n hn z z' hz t
  induction t with
  | zero =>
    intro k r h y hy
    obtain ⟨rfl, rfl⟩ := hy
    subst h
    subst hn
    refine ⟨rfl, ?_⟩
    funext s
    change T₃.ι _ (P.μ _ (term F₁ s z _ _) (term F₂ s z' _ _)) =
      (μ.μ 0 0 0 (zero_add 0)).μ _ (term (T₁.K 0) s (T₁.ιC i z) _ _) (term (T₂.K 0) s (T₂.ιC _ z') _ _)
    rw [term_ιC T₁ g₁, term_ιC T₂ g₂]
    exact (μ.ι _ _ _).symm
  | succ t ih =>
    intro k r h y hy
    obtain ⟨a, rfl, ha⟩ := hy
    have hd : d (T₁.K 0) i (T₁.ιC i z) = 0 := by
      rw [(hC R C F₁ T₁ g₁).1, hz, map_zero]
    refine ⟨(μ.μ 0 t t (zero_add t)).cupC h (T₁.ιC i z) a, ?_, ?_⟩
    · funext s
      change T₃.dv t _ ((μ.μ 0 t t (zero_add t)).μ _ (term (T₁.K 0) s (T₁.ιC i z) _ _) (term (T₂.K t) s a _ _)) =
        (μ.μ 0 (t + 1) (t + 1) (zero_add (t + 1))).μ _ (term (T₁.K 0) s (T₁.ιC i z) _ _)
          (term (T₂.K (t + 1)) s (T₂.dvC t k a) _ _)
      rw [μ.leib 0 t t (zero_add t), term_dvC T₂ g₂, term_ιC T₁ g₁,
        (g₁.ex0 _ _).mpr ⟨_, rfl⟩, map_zero, LinearMap.zero_apply, zero_add, pow_zero, one_smul]
    · have e := hL R C (T₁.K 0) (T₂.K t) (T₃.K t) (μ.μ 0 t t (zero_add t)) i k r h (T₁.ιC i z) a
      have key := ih (k + 1) (r + 1) (by omega) ((-1 : ℤ) ^ k • d (T₂.K t) k a) ha
      have e' : (-1 : ℤ) ^ r • d (T₃.K t) r ((μ.μ 0 t t (zero_add t)).cupC h (T₁.ιC i z) a) =
          (μ.μ 0 t t (zero_add t)).cupC (show i + (k + 1) = r + 1 by omega) (T₁.ιC i z)
            ((-1 : ℤ) ^ k • d (T₂.K t) k a) := by
        rw [e, hd, map_zero, LinearMap.zero_apply, zero_add, smul_smul, sign_cancel h, map_zsmul]
      rw [e']
      exact key

end GlobalTheory.CompanionTheory.Staircase
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignCancel =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StAdd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StAdd", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.StairAdd

theorem stAdd : CrystallineSemistableComparison.E.StAdd := by
  intro R _ C _ F T j z z' s
  induction s with
  | zero =>
    intro k x x' hx hx'
    obtain ⟨h, rfl⟩ := hx
    obtain ⟨h', rfl⟩ := hx'
    subst h
    exact ⟨⟨rfl, by simp⟩, ⟨rfl, by simp⟩⟩
  | succ s ih =>
    intro k x x' hx hx'
    obtain ⟨a, rfl, ha⟩ := hx
    obtain ⟨a', rfl, ha'⟩ := hx'
    obtain ⟨h1, h2⟩ := ih (k + 1) _ _ ha ha'
    refine ⟨⟨a + a', by simp, ?_⟩, ⟨a - a', by simp, ?_⟩⟩
    · simpa [map_add (f := _), smul_add] using h1
    · simpa [map_sub, smul_sub] using h2

end GlobalTheory.CompanionTheory.StairAdd
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StAdd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCol =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCol", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeStair

theorem stCol : CrystallineSemistableComparison.E.StCol := by
  intro R _ C _ F T hG
  refine ⟨?_, ?_, ?_, ?_, ?_⟩
  · intro k z
    funext s
    change ∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) •
        ((T.K 0).map (GlobalTheory.CatH.toLast i s)).hom (T.ι _ (z (GlobalTheory.CatH.face i s))) =
      T.ι _ (∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) •
        (F.map (GlobalTheory.CatH.toLast i s)).hom (z (GlobalTheory.CatH.face i s)))

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_zsmul, hG.ι_nat]
  · intro s k a
    funext t
    change ∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) •
        ((T.K (s + 1)).map (GlobalTheory.CatH.toLast i t)).hom (T.dv s _ (a (GlobalTheory.CatH.face i t))) =
      T.dv s _ (∑ i : Fin (k + 2), (-1 : ℤ) ^ (i : ℕ) •
        ((T.K s).map (GlobalTheory.CatH.toLast i t)).hom (a (GlobalTheory.CatH.face i t)))

    rw [map_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    rw [map_zsmul, hG.dv_nat]
  · intro k x y h
    funext s
    exact hG.inj _ (congrFun h s)
  · intro k x
    constructor
    · intro h
      have hz : ∀ s, ∃ z, T.ι _ z = x s := fun s => (hG.ex0 _ (x s)).1 (congrFun h s)
      choose z hz using hz
      exact ⟨z, funext hz⟩
    · rintro ⟨z, rfl⟩
      funext s
      exact (hG.ex0 _ _).2 ⟨_, rfl⟩
  · intro s k x
    constructor
    · intro h
      have hz : ∀ t, ∃ a, T.dv s _ a = x t := fun t => (hG.ex s _ (x t)).1 (congrFun h t)
      choose a ha using hz
      exact ⟨a, funext ha⟩
    · rintro ⟨a, rfl⟩
      funext t
      exact (hG.ex s _ _).2 ⟨_, rfl⟩

end GlobalTheory.CompanionTheory.EdgeStair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCol =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StExOfStCol =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StExOfStCol", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeStair

theorem stEx_of_stCol : CrystallineSemistableComparison.E.StCol → CrystallineSemistableComparison.E.StEx := by
  intro hcol R _ C _ F T hG s
  obtain ⟨hι, hdv, hinj, hex0, hex⟩ := hcol R C F T hG
  induction s with
  | zero =>
    intro k j hsk x hv hd
    have hjk : j = k := by omega
    subst hjk
    obtain ⟨z, hz⟩ := (hex0 j x).1 hv
    refine ⟨z, ?_, ⟨rfl, hz⟩⟩
    apply hinj (j + 1)
    rw [← hι, hz, hd, map_zero]
  | succ s ih =>
    intro k j hsk x hv hd
    obtain ⟨a, ha⟩ := (hex s k x).1 hv
    have h1 : T.dvC s (k + 1) ((-1 : ℤ) ^ k • d (T.K s) k a) = 0 := by
      rw [map_zsmul, ← hdv, ha, hd, smul_zero]
    have h2 : d (T.K s) (k + 1) ((-1 : ℤ) ^ k • d (T.K s) k a) = 0 := by
      rw [map_zsmul, d_d, smul_zero]
    obtain ⟨z, hz, hst⟩ := ih (k + 1) j (by omega) _ h1 h2
    exact ⟨z, hz, ⟨a, ha, hst⟩⟩

end GlobalTheory.CompanionTheory.EdgeStair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StExOfStCol =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StTopOfStCol =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StTopOfStCol", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeMap

theorem stTop_of_stCol : CrystallineSemistableComparison.E.StCol → CrystallineSemistableComparison.E.StTop := by
  intro hCol R _ C _ F T hT j z hz s
  obtain ⟨hι, hdv, -, hex0, hex⟩ := hCol R C F T hT
  induction s with
  | zero =>
    intro k x hx
    obtain ⟨rfl, rfl⟩ := hx
    exact ⟨(hex0 j _).2 ⟨_, rfl⟩, by rw [hι, hz, map_zero]⟩
  | succ s ih =>
    intro k x hx
    obtain ⟨a, rfl, ha⟩ := hx
    have h1 := (ih (k + 1) _ ha).1
    rw [map_zsmul] at h1
    have h2 : T.dvC s (k + 1) (d _ k a) = 0 :=
      (IsUnit.smul_eq_zero ((isUnit_neg_one (α := ℤ)).pow k)).1 h1
    exact ⟨(hex s k _).2 ⟨a, rfl⟩, by rw [hdv]; exact h2⟩

end GlobalTheory.CompanionTheory.EdgeMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StTopOfStCol =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StUniq =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StUniq", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.EdgeStair

theorem stUniq : CrystallineSemistableComparison.E.StCol → CrystallineSemistableComparison.E.StUniq := by
  intro hcol R _ C _ F T hT j z
  obtain ⟨hι, hdv, hinj, hex0, hex⟩ := hcol R C F T hT
  have key : ∀ (s k : ℕ) (x : Cn (T.K s) k), T.St z s k x → T.BZ s k x → z ∈ (cx F).B j := by
    intro s
    induction s with
    | zero =>
      intro k x hS hB
      obtain ⟨h, rfl⟩ := hS
      subst h
      cases j with
      | zero =>
        have h0 : T.ιC 0 z = 0 := hB
        have hz : z = 0 := hinj 0 (by rw [h0, map_zero])
        rw [hz]
        exact Submodule.zero_mem _
      | succ k =>
        obtain ⟨b, hb, hdb⟩ := hB
        obtain ⟨z', rfl⟩ := (hex0 k b).1 hb
        refine (⟨z', ?_⟩ : z ∈ LinearMap.range (d F k))
        apply hinj (k + 1)
        rw [← hι]
        exact hdb
    | succ s ih =>
      intro k x hS hB
      obtain ⟨a, rfl, hS'⟩ := hS
      cases k with
      | zero =>
        exact ih 1 _ hS' ⟨a, hB, by simp⟩
      | succ k =>
        obtain ⟨b, hb, hdb⟩ := hB
        obtain ⟨b', rfl⟩ := (hex s k b).1 hb
        refine ih (k + 2) _ hS' ⟨(-1 : ℤ) ^ (k + 1) • (a - d _ k b'), ?_, ?_⟩
        · rw [map_zsmul, map_sub, ← hdv, hdb, sub_self, smul_zero]
        · rw [map_zsmul, map_sub, d_d, sub_zero]
  intro s k x hS hB
  exact key s k x hS hB

end GlobalTheory.CompanionTheory.EdgeStair
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StUniq =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StairCupFirst =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StairCupFirst", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry Opposite CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.StairCupFirst

variable {R : Type} [CommRing R] {C : Type 1} [Category.{0} C] {F₁ F₂ F₃ : C ⥤ ModuleCat.{0} R}
  {T₁ : Res.{1} F₁} {T₂ : Res.{1} F₂} {T₃ : Res.{1} F₃} {P : Pairing F₁ F₂ F₃}

theorem term_dvC {F : C ⥤ ModuleCat.{0} R} {T : Res.{1} F} (hT : T.Good) {s p n : ℕ}
    (σ : ComposableArrows C n) (a : Cn (T.K s) p) (g : Fin (p + 1) → Fin (n + 1)) (hg : Monotone g) :
    term (T.K (s + 1)) σ (T.dvC s p a) g hg = T.dv s _ (term (T.K s) σ a g hg) := by
  delta CrystallineSemistableComparison.CH.term CrystallineSemistableComparison.E.Res.dvC
  exact (hT.dv_nat s _ _).symm

theorem dvC_cupC (μ : ResPair T₁ T₂ T₃ P) (h₁ : T₁.Good) (h₂ : T₂.Good) {s t r k : ℕ} (h : s + t = r)
    (a : Cn (T₁.K s) k) (y : Cn (T₂.K t) 0) (hy : T₂.dvC t 0 y = 0) :
    T₃.dvC r k ((μ.μ s t r h).cupC (add_zero k) a y) =
      (μ.μ (s + 1) t (r + 1) (by omega)).cupC (add_zero k) (T₁.dvC s k a) y := by
  delta CrystallineSemistableComparison.E.Res.dvC CrystallineSemistableComparison.CH.Pairing.cupC
  funext σ
  simp only [LinearMap.coe_mk, AddHom.coe_mk, LinearMap.mk₂_apply]
  have hz : ∀ (g : Fin (0 + 1) → Fin (k + 1)) (hg : Monotone g),
      CrystallineSemistableComparison.CH.term (T₂.K (t + 1)) σ (0 : Cn (T₂.K (t + 1)) 0) g hg = 0 := fun g hg => by
    delta CrystallineSemistableComparison.CH.term
    exact map_zero _
  rw [μ.leib, ← term_dvC h₂ σ y, hy, hz, map_zero, smul_zero, add_zero, ← term_dvC h₁ σ a]
  rfl

theorem stCupA : CrystallineSemistableComparison.E.CupLeib.{1} → CrystallineSemistableComparison.E.StCupA := by
  intro hL R _ C _ F₁ F₂ F₃ T₁ T₂ T₃ P μ h₁ h₂ i t n z y u hy hdy hst s
  induction s with
  | zero =>
    intro k r h x hx
    obtain ⟨hik, rfl⟩ := hx
    subst hik
    obtain rfl : r = t := by omega
    exact hst
  | succ s ih =>
    intro k r h x hx
    obtain ⟨a, rfl, hsa⟩ := hx
    obtain rfl : r = s + t + 1 := by omega
    show ∃ a', T₃.dvC (s + t) k a' = _ ∧
      T₃.St u (s + t) (k + 1) ((-1) ^ k • CrystallineSemistableComparison.CH.d (T₃.K (s + t)) k a')
    refine ⟨(μ.μ s t (s + t) rfl).cupC (add_zero k) a y, dvC_cupC μ h₁ h₂ rfl a y hy, ?_⟩
    have hcup := hL R C (T₁.K s) (T₂.K t) (T₃.K (s + t)) (μ.μ s t (s + t) rfl) k 0 k (add_zero k) a y
    rw [hcup, hdy, map_zero, smul_zero, add_zero, ← LinearMap.smul_apply, ← map_zsmul]
    exact ih (k + 1) (s + t) rfl _ hsa

end GlobalTheory.CompanionTheory.StairCupFirst
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StairCupFirst =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwUgCompAlgebraMap =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwUgCompAlgebraMap", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleComparisonMapOfFacts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

namespace GlobalTheory.CompanionTheory.TwUg

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

theorem twUg_map (σ : Gal(PadicAlgCl l/K)) {A B : PAlg l} (f : A ⟶ B) :
    (twUg σ B).comp (PAlg.mapUg (PAlg.twMap σ f)) = (PAlg.mapUg f).comp (twUg σ A) := by
  refine IsLocalization.ringHom_ext (Submonoid.powers (l : (PAlg.tw σ A).U)) (RingHom.ext fun x => ?_)
  change twUg σ B (PAlg.mapUg (PAlg.twMap σ f) (algebraMap _ _ x)) = PAlg.mapUg f (twUg σ A (algebraMap _ _ x))
  rw [PAlg.mapUg_algebraMap, twUg_algebraMap, twUg_algebraMap, PAlg.mapUg_algebraMap, PAlg.twU_mapU]

theorem twUg_cToUg (σ : Gal(PadicAlgCl l/K)) (A : PAlg l) (x : ℂ_[l]) :
    twUg σ A ((PAlg.tw σ A).cToUg x) = A.cToUg (galCp σ x) := by
  have h : ((twUg σ A).comp (PAlg.tw σ A).cToUg).comp
        ((IsPerfectoidField.awayEquiv (K := ℂ_[l]) l : Localization.Away (l : OC l) →+* ℂ_[l])) =
      (A.cToUg.comp (galCp σ : ℂ_[l] →+* ℂ_[l])).comp ((IsPerfectoidField.awayEquiv (K := ℂ_[l]) l : Localization.Away (l : OC l) →+* ℂ_[l])) := by
    refine IsLocalization.ringHom_ext (Submonoid.powers (l : OC l)) (RingHom.ext fun y => ?_)
    have e : (IsPerfectoidField.awayEquiv (K := ℂ_[l]) l) (algebraMap _ _ y) = (y : ℂ_[l]) :=
      (IsPerfectoidField.awayEquiv (K := ℂ_[l]) l).commutes y
    have e2 : ((galOC σ y : OC l) : ℂ_[l]) = galCp σ (y : ℂ_[l]) := rfl
    change twUg σ A ((PAlg.tw σ A).cToUg ((IsPerfectoidField.awayEquiv (K := ℂ_[l]) l) (algebraMap _ _ y))) =
      A.cToUg (galCp σ ((IsPerfectoidField.awayEquiv (K := ℂ_[l]) l) (algebraMap _ _ y)))
    rw [e, PAlg.cToUg_coe, twUg_algebraMap, PAlg.twU_oC, ← e2, PAlg.cToUg_coe]
  obtain ⟨y, rfl⟩ := (IsPerfectoidField.awayEquiv (K := ℂ_[l]) l).surjective x
  exact RingHom.congr_fun h y

theorem twUg_kb (σ : Gal(PadicAlgCl l/K)) (A : PAlg l) (x : PadicAlgCl l) :
    twUg σ A (kb (PAlg.tw σ A) x) = kb A (σ x) := by
  change twUg σ A ((PAlg.tw σ A).cToUg (clToC l x)) = A.cToUg (clToC l (σ x))
  rw [twUg_cToUg]
  exact congrArg A.cToUg (galCp_coe σ x)

theorem twUg_comp_algebraMap (σ : Gal(PadicAlgCl l/K)) (A : PAlg l) :
    ((twUg σ A).comp (algebraMap (PAlg.tw σ A).U (PAlg.tw σ A).Ug)).comp (PAlg.twUEquiv σ A).symm.toRingHom =
      algebraMap A.U A.Ug := by
  refine RingHom.ext fun x => ?_
  change twUg σ A (algebraMap _ _ ((PAlg.twUEquiv σ A).symm x)) = algebraMap A.U A.Ug x
  rw [twUg_algebraMap]
  exact congrArg (algebraMap A.U A.Ug) ((PAlg.twUEquiv σ A).apply_symm_apply x)

theorem geomPt_galMap (M : Model l K) (σ : Gal(PadicAlgCl l/K)) (A : PAlg l) (y : M.P.obj A) :
    geomPt M A y ≫ GlobalTheory.Et.galMap (PadicAlgCl l) M.q σ =
      Spec.map (CommRingCat.ofHom (twUg σ A)) ≫
        geomPt M (PAlg.tw σ A) ((pxTw M.p (okToOC l K) σ (galOC_okToOC σ)).app A y) := by
  refine gb_ext M ?_ ?_
  · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_fst_assoc, geomPt_fst, geomPt_fst]
    change _ = _ ≫ _ ≫ Spec.map (CommRingCat.ofHom (PAlg.twUEquiv σ A).symm.toRingHom) ≫ y.1
    rw [← Category.assoc, ← Category.assoc, ← Spec.map_comp, ← Spec.map_comp,
      ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp, twUg_comp_algebraMap]
  · rw [Category.assoc, Category.assoc, GlobalTheory.Et.galMap_snd, geomPt_snd, ← Category.assoc, geomPt_snd,
      ← Spec.map_comp, ← Spec.map_comp, ← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp]
    congr 2
    exact (RingHom.ext fun x => twUg_kb σ A x).symm

end GlobalTheory.CompanionTheory.TwUg

theorem GlobalTheory.CompanionTheory.TwUg.twUg_prop : CrystallineSemistableComparison.E.TwUg := fun _ _ _ σ =>
  ⟨fun _ _ f => GlobalTheory.CompanionTheory.TwUg.twUg_map σ f, fun A x => GlobalTheory.CompanionTheory.TwUg.twUg_kb σ A x,
    fun M A y => GlobalTheory.CompanionTheory.TwUg.geomPt_galMap M σ A y⟩
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwUgCompAlgebraMap =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltIterateSymmEpsilon =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltIterateSymmEpsilon", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.MapUgCToUg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry Opposite GroundTheory.PAdicHodge CrystallineSemistableComparison CrystallineSemistableComparison.CH CrystallineSemistableComparison.E GlobalTheory.EtC

noncomputable section

namespace GlobalTheory.CompanionTheory.EpsRootProof

variable {l : ℕ} [hl : Fact l.Prime]

theorem iterate_symm_ofCompatible (y : ℕ → OC l) (hy : ∀ k, y (k + 1) ^ l = y k) (n : ℕ) :
    ((_root_.frobeniusEquiv (Ob l) l).symm^[n]) (IsPerfectoidField.ofCompatible l y hy) =
      IsPerfectoidField.ofCompatible l (fun k => y (k + n))
        (fun k => by rw [show k + 1 + n = (k + n) + 1 by omega]; exact hy (k + n)) := by
  induction n with
  | zero => rfl
  | succ n ih =>
    rw [Function.iterate_succ_apply', ih, AInf.frobeniusEquiv_symm_ofCompatible]
    congr 1
    funext k
    exact congrArg y (by omega)

theorem iterate_symm_pow (x : Ob l) (n : ℕ) :
    (((_root_.frobeniusEquiv (Ob l) l).symm^[n]) x) ^ l ^ n = x := by
  induction n generalizing x with
  | zero => simp
  | succ n ih =>
    rw [Function.iterate_succ_apply', pow_succ', pow_mul, frobeniusEquiv_symm_pow_p, ih]

theorem untilt_iterate_symm_epsilon (n : ℕ) :
    PreTilt.untilt (((_root_.frobeniusEquiv (Ob l) l).symm^[n]) (epsilon l)) = rootSeqInt l n := by
  rw [epsilon, iterate_symm_ofCompatible, IsPerfectoidField.untilt_ofCompatible, zero_add]

theorem sharp_s_eq_oC_untilt (A : PAlg l) (x : Ob l) : A.sharp (A.s x) = A.oC (PreTilt.untilt x) := by
  have h : WittVector.teichmuller l (A.s x) = A.sW (WittVector.teichmuller l x) :=
    (WittVector.map_teichmuller l A.s x).symm
  change A.th (WittVector.teichmuller l (A.s x)) = _
  rw [h, ← PAlg.oC_theta0]
  exact congrArg A.oC (WittVector.fontaineTheta_teichmuller _)

theorem epsRoot : CrystallineSemistableComparison.E.EpsRoot := by
  intro l _ n
  exact ⟨((_root_.frobeniusEquiv (Ob l) l).symm^[n]) (epsilon l), iterate_symm_pow _ n, fun A => by
    rw [sharp_s_eq_oC_untilt, untilt_iterate_symm_epsilon]⟩

end GlobalTheory.CompanionTheory.EpsRootProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltIterateSymmEpsilon =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleChernClassEqKummerClass =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleChernClassEqKummerClass", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleComparisonMapOfFacts\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernCompatibleSystem\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchClsCocycleSec\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AcrisZeroImageDividedPower\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CechTripleSubfaceZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassCompatibleSystem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ChernClassUniqueOfLiftAndLog\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoeffIterateVerschiebung\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CompOfCechPt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeCupOfSteps\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUniqOf\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EdgeUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.EtaleChernClassEqKummerClass\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsIdem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsPrimitiveCl\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsRoot\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FactorialAcr\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.FrobIdem\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.GeomPtGeomMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IdemMulEqZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsKumPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLCRes\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsLogUnique\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IsUnitOneSubPow\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapOneEqTwGen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapSurjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.KapZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcCover\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LcMorCup\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LiftEx\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineBC\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LineMapExists\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.LocSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MapNsmulTwGen\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MemBasicOpenOfIsUnitSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MulEvCongr\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NatDegreeLgLe\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PowDivPowSucc\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PrimResZetaX\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullCZsmul\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullPullOfPullC\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.PullSquare\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedResMor\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RedRootOfRep\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepBasic\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepConcOfInputs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.RepOp\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResGenRes\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResLoc\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResSplit\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ResZero\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecMapRes\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecPairApply\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecResMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SecSubsingleton\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SignCancel\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StAdd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StCol\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StExOfStCol\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StTopOfStCol\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StUniq\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.StairCupFirst\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SumToAcrTeichmuller\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwUgCompAlgebraMap\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UntiltIterateSymmEpsilon\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.VnRed\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.CupLeib\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EvExt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernClassFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

namespace CrystallineSemistableComparison.E.Main

theorem inSch : InSch := GlobalTheory.EtC.sch_cls_cocycle_sec

theorem stEx : StEx := GlobalTheory.CompanionTheory.EdgeStair.stEx_of_stCol _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol

theorem stUniq : StUniq := GlobalTheory.CompanionTheory.EdgeStair.stUniq _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol

theorem stTop : StTop := GlobalTheory.CompanionTheory.EdgeMap.stTop_of_stCol _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol

theorem edgeUniq : EdgeUniq := GlobalTheory.CompanionTheory.EdgeClass.edgeUniq_of _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol _root_.GlobalTheory.CompanionTheory.StairAdd.stAdd stUniq

theorem stCupA : StCupA := GlobalTheory.CompanionTheory.StairCupFirst.stCupA cupLeib

theorem stCupB : StCupB := GlobalTheory.CompanionTheory.Staircase.stCupB cupLeib _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol

theorem edgeCup : EdgeCup := GlobalTheory.CompanionTheory.EdgeMap.edgeCup_of_steps cupCls stTop stCupA stCupB

theorem rootPow : RootPow := GlobalTheory.CompanionTheory.RootPowLC.rootPow _root_.GlobalTheory.CompanionTheory.PrimAlgProof.primAlg

alias rootsEx := _root_.GlobalTheory.CompanionTheory.RootsC.rootsEx

theorem lcSpec : LcSpec := GlobalTheory.CompanionTheory.LcSp.lcSpec_of_lcIdem _root_.GlobalTheory.CompanionTheory.TiltIdem.lcIdem

theorem lcNat : LcNat := GlobalTheory.CompanionTheory.LcNatProof.lcNat _root_.GlobalTheory.CompanionTheory.TiltIdem.lcIdem lcSpec

theorem logMul : LogMul := GlobalTheory.CompanionTheory.LogMulPf.logMul _root_.GlobalTheory.CompanionTheory.LogAlgPf.logAlg _root_.GlobalTheory.CompanionTheory.CrisLog.logEx

theorem lcLog : LcLog := GlobalTheory.CompanionTheory.LcLogProof.lcLog _root_.GlobalTheory.CompanionTheory.TiltIdem.lcIdem lcSpec _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover _root_.GlobalTheory.CompanionTheory.CrisLog.logEx logMul _root_.GlobalTheory.CompanionTheory.LogEpsP.logEps _root_.GlobalTheory.CompanionTheory.EpsRootProof.epsRoot

alias lineBC := _root_.GlobalTheory.CompanionTheory.LineBase.lineBC

alias fPhi := _root_.GlobalTheory.CompanionTheory.FrobLc.fPhi

theorem fKum : FKum := GlobalTheory.CompanionTheory.FKum.fKum rootPow lcLog

theorem firstChern_unique : FirstChernUniqueEtale := GlobalTheory.CompanionTheory.EtChern.chern_class_unique_of_lift_and_log _root_.GlobalTheory.CompanionTheory.LineLift.liftEx _root_.GlobalTheory.CompanionTheory.CrisLog.logEx

theorem repBasic : RepBasic := GlobalTheory.CompanionTheory.EtEdge.repBasic evExt evNat inSch

theorem repConc : RepConc := GlobalTheory.CompanionTheory.EdgeMap.repConc_of_inputs evExt inSch repBasic

theorem repCup : RepCup := GlobalTheory.CompanionTheory.EdgeRep.repCup evExt evNat repBasic repConc inSch

theorem repOp : RepOp := GlobalTheory.CompanionTheory.EdgeRep.repOp evNat repConc repBasic

theorem lineMap : LineMap := GlobalTheory.CompanionTheory.CechLine.lineMap_exists _root_.GlobalTheory.CompanionTheory.CechPts.cechPt_spec

theorem chern_class_compatible_system : FirstChernCompatibleSystem := GlobalTheory.CompanionTheory.ChernSys.chern_class_compatible_system _root_.GlobalTheory.CompanionTheory.CechPts.cechPt_spec

theorem firstChern_primitive_kummer : FirstChernCoboundary := GlobalTheory.CompanionTheory.KummerPrimitive.main evExt evNat evDel repConc repBasic _root_.GlobalTheory.CompanionTheory.CechPts.cechPt_spec

theorem resSplit : ResSplit := GlobalTheory.CompanionTheory.ResSplitProof.resSplit _root_.GlobalTheory.CompanionTheory.EdgeMap.resLoc _root_.GlobalTheory.CompanionTheory.LocSplitProof.locSplit _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover

theorem repRoot : RepRoot := GlobalTheory.CompanionTheory.EtRoot.repRoot repConc _root_.GlobalTheory.CompanionTheory.EtRes.resZero

theorem redRoot : RedRoot := GlobalTheory.CompanionTheory.EdgeMap.redRoot_of_rep repRoot repOp repConc

theorem twZero : TwZero := GlobalTheory.CompanionTheory.TwZeroGen.twZero rootPow _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot

theorem kapSpec : KapSpec := GlobalTheory.CompanionTheory.KapSpecProof.kapSpec _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot

theorem kapBij : KapBij := GlobalTheory.CompanionTheory.KapBij.kapBij _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot kapSpec

theorem kapMul : KapMul := GlobalTheory.CompanionTheory.KapMulE.kapMul_of _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot kapSpec

theorem kapRed : KapRed := GlobalTheory.CompanionTheory.CstE.KapRedP.kapRed _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot kapSpec

theorem kumPow : KumPow := GlobalTheory.CompanionTheory.KumPowProof.kumPow _root_.GlobalTheory.CompanionTheory.LcCoverProof.lcCover repRoot kapSpec _root_.GlobalTheory.CompanionTheory.PrimAlgProof.primAlg

theorem resGood : ResGood := GlobalTheory.CompanionTheory.EdgeRes.resGood kapSpec kapBij _root_.GlobalTheory.CompanionTheory.EtRes.resZero resSplit

theorem etSpec : EtSpec := GlobalTheory.CompanionTheory.EtSpecProof.etSpec resGood stEx edgeUniq repBasic _root_.GlobalTheory.CompanionTheory.EtRes.resZero

theorem etNat : EtNat := GlobalTheory.CompanionTheory.EtNatProof.etNat etSpec _root_.GlobalTheory.CompanionTheory.EdgeMapPull.edgeMap repBasic kapSpec twZero

theorem etRed : EtRed := GlobalTheory.CompanionTheory.EdgeRed.etRed etSpec _root_.GlobalTheory.CompanionTheory.EdgeMapPull.edgeMap repBasic repOp kapSpec kapRed

theorem etCup : EtCup := GlobalTheory.CompanionTheory.EdgeProduct.etCup etSpec resGood edgeCup repBasic repCup kapMul

theorem etRoot : EtRoot := GlobalTheory.CompanionTheory.EdgeRoot.etRoot_of_spec etSpec repRoot kapSpec

theorem etale_chern_class_eq_kummer_class : EtaleFirstChernKummer := GlobalTheory.CompanionTheory.EtaleChernClass.etale_chern_class_eq_kummer_class etSpec resGood _root_.GlobalTheory.CompanionTheory.EdgeStair.stCol firstChern_primitive_kummer kumPow

theorem fRed : FRed := GlobalTheory.CompanionTheory.EtReduction.fred_of_etRed etRed

theorem fEqui : FEqui := GlobalTheory.CompanionTheory.FEquiProof.fEqui etNat _root_.GlobalTheory.CompanionTheory.TwUg.twUg_prop

theorem fNat : FNat := GlobalTheory.CompanionTheory.FNatProof.fNat etNat

theorem fRes : FRes := GlobalTheory.CompanionTheory.FResProof.fRes etNat

theorem fCup : FCup := GlobalTheory.CompanionTheory.EtCupF.fCup etCup morCup lcSpec

theorem fRoot : FRoot := GlobalTheory.CompanionTheory.FRootCls.froot etRoot redRoot morCup lcSpec

theorem fUntw : FUntw := GlobalTheory.CompanionTheory.FUntwPf.main fCup fRoot cupOne

theorem firstChern_family : FirstChernClassFamily := firstChern_family_of_lifts lineBC lineMap chern_class_compatible_system etale_chern_class_eq_kummer_class fKum fRes fUntw

theorem etale_comparison_map : EtaleComparisonMapExists := etale_comparison_map_of_facts rootsEx lcNat fRed fEqui fPhi fNat fCup fRoot firstChern_family

end CrystallineSemistableComparison.E.Main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleChernClassEqKummerClass =====
