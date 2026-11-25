module

public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts
public import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor
public import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership
public import Formalism.SharpRestriction.LevelLetterCocycles.HorTrExists
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup
public import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants
public import Formalism.SharpRestriction.LevelLetterCocycles.FilCrisTriv
public import Formalism.SharpRestriction.LevelLetterCocycles.StrictSesLetter
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsSmulPowEqSumOfInFNc
public import Formalism.SharpRestriction.LevelLetterCocycles.HorTrUnique
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd
public import Formalism.SharpRestriction.LevelLetterCocycles.CancelUnitMulUniformizerPow
public import Formalism.SharpRestriction.LevelLetterCocycles.UniversalGeneralOfRestriction
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesAdmittedOfLevels
public import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators
public import Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfExactnessAndData
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit
public import Formalism.SharpRestriction.LevelLetterCocycles.IsFracOL
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ConstantCoeffQZeroEqP
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists
import Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh
import Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd
import Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV
import Formalism.SharpRestriction.LevelLetterCocycles.SaturationPullbackOfRingCondition
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.CoprimeFrobeniusUniformizerPowers
import Formalism.SharpRestriction.LevelLetterCocycles.FrameInvPoly
import Formalism.SharpRestriction.LevelLetterCocycles.SecInTransport
import Formalism.SharpRestriction.LevelLetterCocycles.SecOfP
import Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf
import Formalism.SharpRestriction.LevelLetterCocycles.LamZero
import Formalism.SharpRestriction.LevelLetterCocycles.MemOfSecEq
import Formalism.SharpRestriction.LevelLetterCocycles.ProdPsUnitE
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.PolarToPoleOfCtx, Formalism.SharpRestriction.LevelLetterCocycles.SecOfPInt, Formalism.SharpRestriction.LevelLetterCocycles.LetterPull, Formalism.SharpRestriction.LevelLetterCocycles.LinearIdentityHeadDifference, Formalism.SharpRestriction.LevelLetterCocycles.IntAOfNonpol, Formalism.SharpRestriction.LevelLetterCocycles.SplitPolarLOf, Formalism.SharpRestriction.LevelLetterCocycles.SplitShapeLRec, Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfLiteratureExactness, Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrobeniusLevels, Formalism.SharpRestriction.LevelLetterCocycles.LevelSeriesFirstFactorOrderOne, Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesFinal

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.PolarToPoleOfCtx =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.PolarToPoleOfCtx", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh\nimport Formalism.SharpRestriction.LevelLetterCocycles.LocalizationQuotientSeparatedDvd\nimport Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV\nimport Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.LevC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

open Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.UnusedSlot80.PhiPowers

variable [IsDomain O] [NeZero n]

theorem dvO_zero_hw (C : Ctx W) (A : ArcP n) (hA : A.OK) (c' : ZMod n) (T : LocLat G Qp LL O)
    (hT : Win W A T) {d : ℕ} (b : Fin d → W.DD T) (hb : Formalism.MainNotions.LiftingTheory.IsFrameΔ W T c' b) (e : ℕ)
    (a : ZMod n) (s : ℕ) (u : ℤ) (hu : (Hw A.G₀ A.S A.η (A.ty (a - (s : ZMod n))) : ℤ) < u)
    (c₀ : Fin d → O) (h : dvO W T e b c₀ ∈ FilS W T a s u) : c₀ = 0 := by
  obtain ⟨y, ⟨hyF, hyD⟩, hye⟩ := h
  set i : ZMod n := a - (s : ZMod n) with hidef
  obtain ⟨τ, hτ, hover⟩ := tau_over W C.hbij i
  have hJ : ∀ z, IsJumpV PD T.ρ τ z → z ≤ (Hw A.G₀ A.S A.η (A.ty i) : ℤ) := fun z hz =>
    (Formalism.MainNotions.UnusedSlot80.PhiPowers.win_sub A.G₀ A.S A.η (A.ty i) (hA.2.2.2.2.1 i) (hT.2 i τ hτ z hz)).2
  have hy0 := fil_high W T i τ hover C.hbij.2 _ hJ u hu hyD hyF
  rw [hy0, map_zero] at hye
  have hfb := (Formalism.MainNotions.UnusedSlot80.ArcF.frame_basis W C.hs C.hV T (C.h3 T hT.1)
    (C.h5 T _ _ hT.1 (jumpsLet_of_win W A hA T hT)) (C.hmod T hT.1) c' e b hb).1
  have hdv : dvO W T e b c₀ = ∑ m, algebraMap O LL (c₀ m) • dv W T e b (Pi.single m 1) := by
    simp only [Formalism.MainNotions.UnusedSlot80.ArcF.dv_single]; rfl
  have hsum : ∑ m, algebraMap O LL (c₀ m) • dv W T e b (Pi.single m 1) = 0 := by rw [← hdv, ← hye]
  funext m
  apply C.hinj
  rw [Fintype.linearIndependent_iff.1 hfb _ hsum m]
  simp

theorem filS_anti (T : LocLat G Qp LL O) (a : ZMod n) (s : ℕ) {u w : ℤ} (h : w ≤ u) :
    FilS W T a s u ≤ FilS W T a s w := by
  apply Submodule.map_mono
  intro x hx
  exact ⟨Formalism.MainNotions.UnusedSlot80.LevR.filCris_anti T.ρ h hx.1, hx.2⟩

theorem inId_zero (a : ZMod n) (e : ℕ) : InId W a e (fun _ => 0) 0 :=
  ⟨0, W.AΔ.zero_mem, by simp⟩

theorem condPole_of_polar (C : Ctx W) (A : ArcP n) (hA : A.OK) (c' : ZMod n) (T : LocLat G Qp LL O)
    (hT : Win W A T) {d : ℕ} (b : Fin d → W.DD T) (hb : Formalism.MainNotions.LiftingTheory.IsFrameΔ W T c' b) (c : ZMod n)
    (α : ℕ → ℤ) (c₀ : Fin d → O) (hc₀ : c₀ ≠ 0)
    (hP : Formalism.MainNotions.UnusedSlot80.LevC.condPolar (W := W) T c (A.len c) b α c₀) :
    condPole W A T c b α c₀ := by
  intro s hs
  have key : 0 ≤ α s ∨ -(Hw A.G₀ A.S A.η (A.ty (c - (s : ZMod n))) : ℤ) ≤ α s ∧
      dvO W T (A.len c) b c₀ ∈ FilS W T c s (-(α s)) := by
    rcases hP s hs with h | h
    · exact Or.inl h
    · by_cases h0 : 0 ≤ α s
      · exact Or.inl h0
      · refine Or.inr ⟨?_, h⟩
        by_contra hlt
        exact hc₀ (dvO_zero_hw W C A hA c' T hT b hb (A.len c) c s (-(α s)) (by omega) c₀ h)
  cases hty : A.ty (c - (s : ZMod n)) with
  | thin =>
    rw [hty] at key
    simp only [Hw] at key
    rcases key with h | ⟨h, -⟩ <;> omega
  | up bs =>
    rw [hty] at key
    simp only [Hw] at key
    rcases key with h | ⟨h, -⟩ <;> push_cast at h ⊢ <;> omega
  | down bs =>
    rcases key with h | ⟨-, h⟩
    · exact Or.inl h
    · by_cases h0 : 0 ≤ α s
      · exact Or.inl h0
      · exact Or.inr (filS_anti W T c s (by omega) h)

variable {W}

theorem polarToPole_of_ctx (C : Ctx W) : Formalism.MainNotions.UnusedSlot80.Split.PolarToPole W := by
  intro _ _ A hA T₂ hT c hc d b sol hb f hS
  obtain ⟨I, g, c₀, α, hg, hF⟩ := hS
  refine ⟨I, fun i => if c₀ i = 0 then 0 else g i, c₀, fun i => if c₀ i = 0 then fun _ => 0 else α i,
    fun i => ?_, fun k => ?_⟩
  · by_cases h0 : c₀ i = 0
    · simp only [h0, if_true]
      refine ⟨inId_zero W c (A.len c), ?_⟩
      intro s _
      cases A.ty (c - (s : ZMod n)) with
      | thin => simp
      | up bs => simp
      | down bs => exact Or.inl le_rfl
    · simp only [h0, if_false]
      exact ⟨(hg i).1, condPole_of_polar W C A hA _ T₂ hT b hb.1 c (α i) (c₀ i) h0 (hg i).2⟩
  · rw [hF k]
    refine Finset.sum_congr rfl fun i _ => ?_
    by_cases h0 : c₀ i = 0
    · simp [h0]
    · simp [h0]

end Formalism.MainNotions.UnusedSlot80.LevC

namespace Formalism.MainNotions.UnusedSlot80.Split

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

theorem polarToPoleL_of (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (h : AdmArcA D HW F Cm) : PolarToPoleL D HW := by
  intro l _ K LL hG hCA h5l
  have := neZero_finrank_max_unramified K
  exact LevC.polarToPole_of_ctx (ctx_of D HW F Cm h l K LL hG hCA h5l)

end Formalism.MainNotions.UnusedSlot80.Split
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.PolarToPoleOfCtx =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecOfPInt =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SecOfPInt", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LemmasUnramifiedOfRingCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.HorTrExists\nimport Formalism.SharpRestriction.LevelLetterCocycles.SaturationPullbackOfRingCondition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.SharpRestriction.LevelLetterCocycles.CoprimeFrobeniusUniformizerPowers\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.SplitP

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.UnusedSlot80.PhiPowers Formalism.MainNotions.UnusedSlot80.LevC

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

variable [IsDomain O]

def IntA (a : ZMod n) (g : W.EE) : Prop := ∃ u ∈ W.AΔ, g = algebraMap (LetA O n) W.EE (letE a * u)

theorem secOfP_int (hinj : Function.Injective (algebraMap O LL))
    (hO2 : ∀ x : LL, 0 ≤ v x → ∃ o : O, algebraMap O LL o = x)
    (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) (hTr : Formalism.MainNotions.LiftingTheory.coreTr W) (hH : Formalism.MainNotions.LiftingTheory.coreH W)
    (hCA : Formalism.MainNotions.LiftingTheory.CaseA W) (h5p : 5 ≤ PD.p) (A : ArcP n) (hA : A.OK)
    (c' : ZMod n) (e : ℕ) (T : LocLat G Qp LL O) (hTc : IsCrys PD T.ρ) {d : ℕ}
    (b : Fin d → W.DD T) (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T c' b sol) (x : W.DD T)
    (hx : InFP W T c' e 1 x) :
    ∃ (κ : ℕ) (f : Fin d → W.EE), RepVV W T c' e (A.M PD.p) (abelian₂ W A (c' + (e : ZMod n)) e) b sol
      (lA W ^ κ • x) f ∧ ∀ k, IntA W (c' + (e : ZMod n)) (f k) := by
  have hl : 2 ≤ PD.p := PD.hp.two_le
  obtain ⟨yP, hyP, hyx⟩ := hx
  rw [one_smul] at hyx
  obtain ⟨β₀, hβ₀, hyβ⟩ := Formalism.MainNotions.UnusedSlot80.ArcF.Pp_repr W T c' e b hb.1 yP hyP
  have hbl : ∀ m, (letE c' : LetA O n) • b m = b m := fun m =>
    _root_.Formalism.MainNotions.LiftingTheory.frame_letE_fix W T c' (hb.1.1 m).2
  have hφl : ∀ m, (letE (c' + (e : ZMod n)) : LetA O n) • ((W.φD T) ^ e) (b m) = ((W.φD T) ^ e) (b m) :=
    fun m => φD_pow_letter W T c' (b m) (hbl m) e
  set Λ : LetA O n := abelian₂ W A (c' + (e : ZMod n)) e with hΛdef
  let β : Fin d → LetA O n := fun m => letE (c' + (e : ZMod n)) * β₀ m
  have hβ : ∀ m, β m ∈ W.AΔ := fun m => W.AΔ.mul_mem (Formalism.MainNotions.UnusedSlot80.SatPW.letE_mem_AΔ W _) (hβ₀ m)
  have hΛx : x = ∑ m, β m • ((W.φD T) ^ e) (b m) := by
    rw [hyx, hyβ]
    refine Finset.sum_congr rfl fun m _ => ?_
    simp only [β, mul_smul]
    rw [smul_comm, hφl]
  have hHc := hH hCA T hTc c'
  have hH5 := hHc.2.2.2.2 d b hb.1 sol hb.2
  have h4 := hHc.2.2.2.1
  choose g hg using fun k r m => Formalism.MainNotions.UnusedSlot80.Relay2.int_of_bd W hO2 r (h4 r) _ (hH5.1 k r m)
  choose g' hg' using fun r k m => Formalism.MainNotions.UnusedSlot80.Relay2.int_of_bd W hO2 r (h4 r) _ (hH5.2 k m r)
  set M : ℕ := A.M PD.p with hMdef
  let κ : ℕ := Formalism.MainNotions.UnusedSlot80.Relay2.Ex PD.p M
  let yy : Fin d → ℕ → Fin d → O := fun k r m =>
    ((PD.p : ℕ) : O) ^ (κ - Formalism.MainNotions.UnusedSlot80.Relay2.Ex PD.p r) * g k r m
  let zz : ℕ → Fin d → Fin d → O := fun r k m =>
    ((PD.p : ℕ) : O) ^ (κ - Formalism.MainNotions.UnusedSlot80.Relay2.Ex PD.p r) * g' r k m
  have hyy : ∀ k, ∀ r < M, ∀ m, algebraMap O LL (yy k r m) = (PD.p : LL) ^ κ * sol k r m := by
    intro k r hr m
    have hle := Formalism.MainNotions.UnusedSlot80.Relay2.Ex_mono PD.p hl hr.le
    simp only [yy, map_mul, map_pow, map_natCast, hg]
    rw [← mul_assoc, ← pow_add, Nat.sub_add_cancel hle]
  have hzz : ∀ r < M, ∀ k m, algebraMap O LL (zz r k m) = (PD.p : LL) ^ κ *
      PowerSeries.coeff r ((Matrix.of fun m' k' => PowerSeries.mk fun r' => sol k' r' m' :
        Matrix (Fin d) (Fin d) (PowerSeries LL))⁻¹ k m) := by
    intro r hr k m
    have hle := Formalism.MainNotions.UnusedSlot80.Relay2.Ex_mono PD.p hl hr.le
    simp only [zz, map_mul, map_pow, map_natCast, hg']
    rw [← mul_assoc, ← pow_add, Nat.sub_add_cancel hle]
  set Y : LetA O n := (W.φA ^ e) W.π₀ with hYdef
  have hY : Y ∈ W.AΔ := φA_pow_mem_AΔ W hR.1 e
  set D : LetA O n := W.π₀ * Λ ^ 2 with hDdef
  obtain ⟨ν, hν, hYM⟩ := yM_gen W hTr hCA hR.1 h5p A hA (c' + (e : ZMod n)) e
  have hYM' : Y ^ M = D * ν := by rw [hYdef, hMdef, hYM]
  choose ρ hρ using fun m m' =>
    Formalism.MainNotions.UnusedSlot80.ArcF.frame_inv_poly hinj sol (fun k => (hb.2 k).2) M κ yy hyy zz hzz Y m m'
  let HY : Fin d → Fin d → LetA O n := fun m k =>
    ∑ r ∈ Finset.range M, algebraMap O (LetA O n) (yy k r m) * Y ^ r
  let GY : Fin d → Fin d → LetA O n := fun k m' =>
    ∑ r ∈ Finset.range M, algebraMap O (LetA O n) (zz r k m') * Y ^ r
  have hGY : ∀ k m', GY k m' ∈ W.AΔ := fun k m' => W.AΔ.sum_mem fun r _ =>
    W.AΔ.mul_mem (W.AΔ.algebraMap_mem _) (W.AΔ.pow_mem hY r)
  let aa : Fin d → LetA O n := fun k => ∑ m', GY k m' * β m'
  have haa : ∀ k, aa k ∈ W.AΔ := fun k => W.AΔ.sum_mem fun m' _ => W.AΔ.mul_mem (hGY k m') (hβ m')
  have haal : ∀ k, letE (c' + (e : ZMod n)) * 1 * aa k = aa k := by
    intro k
    simp only [aa, mul_one, Finset.mul_sum]
    refine Finset.sum_congr rfl fun m' _ => ?_
    simp only [β]
    linear_combination (GY k m' * β₀ m') * (letE_mul_self (O := O) (c' + (e : ZMod n)))
  let w : Fin d → LetA O n := fun m => -(ν * ∑ m', Polynomial.aeval Y (ρ m m') * β m')
  have hw : ∀ m, w m ∈ W.AΔ := fun m => W.AΔ.neg_mem (W.AΔ.mul_mem hν (W.AΔ.sum_mem fun m' _ =>
      W.AΔ.mul_mem (Formalism.MainNotions.UnusedSlot80.ArcF.aeval_mem_AΔ W hY _) (hβ m')))
  have hkey : ∀ m, lA W ^ κ * lA W ^ κ * β m - ∑ k, aa k * HY m k = D * w m := by
    intro m
    have A2 : ∑ k, aa k * HY m k = ∑ m', (∑ k, HY m k * GY k m') * β m' := by
      simp only [aa, Finset.sum_mul]
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun m' _ => Finset.sum_congr rfl fun k _ => by ring
    have h1 : ∀ m', (∑ k, HY m k * GY k m') * β m' =
        lA W ^ κ * lA W ^ κ * ((if m = m' then 1 else 0) * β m') +
          Y ^ M * (Polynomial.aeval Y (ρ m m') * β m') := by
      intro m'
      have := hρ m m'
      simp only [HY, GY] at this ⊢
      rw [this, map_mul, map_pow, map_natCast, apply_ite (algebraMap O (LetA O n)), map_one, map_zero]
      unfold lA
      split_ifs <;> ring
    rw [A2, Finset.sum_congr rfl fun m' _ => h1 m', Finset.sum_add_distrib, ← Finset.mul_sum,
      ← Finset.mul_sum]
    simp only [ite_mul, one_mul, zero_mul, Finset.sum_ite_eq, Finset.mem_univ, if_true, w]
    rw [hYM']
    ring
  have hΛm : Λ ∈ W.AΔ := W.AΔ.prod_mem fun s _ => W.AΔ.pow_mem (Formalism.MainNotions.UnusedSlot80.PhiPowers.ps_mem_AΔ W hR.1 s) _
  refine ⟨κ, fun k => algebraMap (LetA O n) W.EE (aa k),
    ⟨κ, 0, fun k => ∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r), fun k => Λ * aa k,
      fun k => ⟨yy k, hyy k, rfl⟩, fun k => ⟨W.AΔ.mul_mem hΛm (haa k), by rw [map_mul]⟩, ?_⟩,
    fun k => ⟨aa k, haa k, by
      show algebraMap (LetA O n) W.EE (aa k) = _
      congr 1
      conv_rhs => rw [← mul_one (letE (c' + (e : ZMod n)) : LetA O n), haal k]⟩⟩
  have hsum : ∑ k, aa k • ((W.φD T) ^ e)
      (∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r)) =
      ∑ m, (∑ k, aa k * HY m k) • ((W.φD T) ^ e) (b m) := by
    simp only [Formalism.MainNotions.UnusedSlot80.ArcF.phi_trunc, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [Finset.sum_smul]
    refine Finset.sum_congr rfl fun k _ => ?_
    congr 1
    simp only [HY, ← hYdef]
    congr 1
    refine Finset.sum_congr rfl fun r _ => mul_comm _ _
  have hfin0 : lA W ^ κ • lA W ^ κ • x - ∑ k, aa k • ((W.φD T) ^ e)
        (∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r)) =
      D • ∑ m, w m • ((W.φD T) ^ e) (b m) := by
    rw [hsum, hΛx]
    simp only [Finset.smul_sum]
    rw [← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl fun m _ => ?_
    simp only [smul_smul]
    rw [← sub_smul, ← hkey m]
    congr 1
    ring
  have hfin : lA W ^ 0 • (lA W ^ κ • Λ • (lA W ^ κ • x) - ∑ k, (Λ * aa k) • ((W.φD T) ^ e)
        (∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r))) =
      D • ∑ m, (Λ * w m) • ((W.φD T) ^ e) (b m) := by
    have e2 : lA W ^ κ • Λ • (lA W ^ κ • x) - ∑ k, (Λ * aa k) • ((W.φD T) ^ e)
        (∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r)) =
        Λ • (lA W ^ κ • lA W ^ κ • x - ∑ k, aa k • ((W.φD T) ^ e)
        (∑ r ∈ Finset.range M, W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (yy k r))) := by
      rw [smul_sub, Finset.smul_sum]
      simp only [mul_smul]
      rw [smul_comm Λ (lA W ^ κ) (lA W ^ κ • x)]
    rw [pow_zero, one_smul, e2, hfin0, smul_comm Λ D, Finset.smul_sum]
    simp only [mul_smul]
  rw [hfin]
  exact Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_of_mem W T c' e _ (AddSubgroup.sum_mem _ fun m _ =>
    Formalism.MainNotions.UnusedSlot80.Relay2.Pp_gen W T c' e (W.AΔ.mul_mem hΛm (hw m)) (hb.1.1 m))

end Formalism.MainNotions.UnusedSlot80.SplitP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecOfPInt =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LetterPull =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LetterPull", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcLiftingSetup\npublic import Formalism.SharpRestriction.LevelLetterCocycles.RingConditionOfDeltaInvariants\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FilCrisTriv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.StrictSesLetter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical TensorProduct

namespace Formalism.MainNotions.UnusedSlot80.SplitP

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.TruncatedSeriesCountingBounds

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

theorem dv_sum (T : LocLat G Qp LL O) (e : ℕ) {d : ℕ} (b : Fin d → W.DD T) (c₀ : Fin d → LL) :
    dv W T e b c₀ = ∑ k, c₀ k • dv W T e b (Pi.single k 1) := by
  unfold dv
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [← Formalism.MainNotions.UnusedSlot80.ArcF.dv_single]
  unfold dv
  rfl

theorem dvO_sum (T : LocLat G Qp LL O) (e : ℕ) {d : ℕ} (b : Fin d → W.DD T) (c : Fin d → O) :
    dvO W T e b c = ∑ k, algebraMap O LL (c k) • dv W T e b (Pi.single k 1) := by
  unfold dvO; rw [dv_sum]

theorem dvO_smul (T : LocLat G Qp LL O) (e : ℕ) {d : ℕ} (b : Fin d → W.DD T) (o : O) (c : Fin d → O) :
    dvO W T e b (fun k => o * c k) = algebraMap O LL o • dvO W T e b c := by
  rw [dvO_sum, dvO_sum, Finset.smul_sum]
  simp only [map_mul, mul_smul]

theorem coef_eq {M : Type} [AddCommGroup M] [Module LL M] {dY : ℕ} (u : Fin dY → M)
    (hu : LinearIndependent LL u) (x y : Fin dY → LL) (h : ∑ j, x j • u j = ∑ j, y j • u j) : x = y := by
  funext j
  exact sub_eq_zero.1 (Fintype.linearIndependent_iff.1 hu (fun j => x j - y j)
    (by simp only [sub_smul, Finset.sum_sub_distrib, h, sub_self]) j)

include W in
theorem int_vec (hV : ValRing (LL := LL) O v) {ι₀ : Type} [Fintype ι₀] (ρ : ι₀ → LL) :
    ∃ (m : ℕ) (r : ι₀ → O), ∀ i, algebraMap O LL (r i) = (PD.p : LL) ^ m * ρ i := by
  choose mm oo hoo using fun i => Formalism.MainNotions.UnusedSlot80.ArcF.exists_pow_mul W hV (ρ i)
  refine ⟨∑ i, mm i, fun i => ((PD.p : ℕ) : O) ^ (∑ j, mm j - mm i) * oo i, fun i => ?_⟩
  have hle : mm i ≤ ∑ j, mm j := Finset.single_le_sum (fun j _ => Nat.zero_le _) (Finset.mem_univ i)
  rw [map_mul, hoo, map_pow, map_natCast, ← mul_assoc, ← pow_add, Nat.sub_add_cancel hle]

theorem letter_pull [FiniteDimensional Qp LL] (hK : Function.Bijective (algebraMap K₀ K))
    (h9 : DcrisExactStrict PD LL) (T₂ Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L)
    (hses : IsSESLat (Qp := Qp) ι π) (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (τ₀ : K₀ →ₐ[Qp] LL)
    {ξ : T₂.V ⊗[Qp] B} (hξ : ξ ∈ Dcris PD T₂.ρ) (h : crisMap B ι.f ξ ∈ DcrisL PD Y.ρ τ₀) :
    ξ ∈ DcrisL PD T₂.ρ τ₀ := by
  have hinj := (ses_exact PD hK h9 T₂ Y W.one ι π hses h2 hY (Formalism.MainNotions.LiftingTheory.gen_one_crys W)).1
  have hL := (Strict.mem_DcrisL_iff PD τ₀ _).1 h
  rw [Strict.mem_DcrisL_iff]
  refine ⟨hξ, fun c => ?_⟩
  have hm : mulVB (LL := LL) (V := T₂.V) (B := B) c ξ - τ₀ c • ξ ∈ Dcris PD T₂.ρ :=
    (Dcris PD T₂.ρ).sub_mem (mulVB_Dcris PD c hξ) ((Dcris PD T₂.ρ).smul_mem _ hξ)
  exact sub_eq_zero.1 (hinj _ hm (by rw [map_sub, map_smul, Strict.crisMap_mulVB, hL.2 c, sub_self]))

variable [IsDomain O]

theorem pull_vec [FiniteDimensional Qp LL] (hK : Function.Bijective (algebraMap K₀ K))
    (h9 : DcrisExactStrict PD LL) (hV : ValRing (LL := LL) O v) (hinj : Function.Injective (algebraMap O LL))
    (T₂ Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L)
    (hses : IsSESLat (Qp := Qp) ι π) (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (a : ZMod n) (e : ℕ)
    {d dY : ℕ} (b : Fin d → W.DD T₂) (bY : Fin dY → W.DD Y)
    (hspan2 : Submodule.span LL (Set.range fun k => dv W T₂ e b (Pi.single k 1)) = DcrisL PD T₂.ρ (W.emb a))
    (hindY : LinearIndependent LL fun j => dv W Y e bY (Pi.single j 1))
    (hspanY : Submodule.span LL (Set.range fun j => dv W Y e bY (Pi.single j 1)) = DcrisL PD Y.ρ (W.emb a))
    (o : Fin d → Fin dY → O)
    (ho : ∀ k, crisMap B ι.f (dv W T₂ e b (Pi.single k 1)) =
      ∑ j, algebraMap O LL (o k j) • dv W Y e bY (Pi.single j 1))
    (α : ℕ → ℤ) (cY : Fin dY → O) (hN : ∀ s < e, dvO W Y e bY cY ∈ FilS W Y a s (-(α s)))
    (hpol : ∃ s < e, α s < 0) :
    ∃ (m : ℕ) (r : Fin d → O), (∀ j, ∑ k, r k * o k j = ((PD.p : ℕ) : O) ^ m * cY j) ∧
      ∀ s < e, α s < 0 → dvO W T₂ e b r ∈ FilS W T₂ a s (-(α s)) := by
  have hpull : ∀ s < e, α s < 0 → ∃ ξ ∈ Dcris PD T₂.ρ, ξ ∈ FilS W T₂ a s (-(α s)) ∧
      crisMap B ι.f ξ = dvO W Y e bY cY := by
    intro s hs hneg
    obtain ⟨ν, hν, hνlam⟩ := Submodule.mem_map.1 (hN s hs)
    obtain ⟨μ, hμ, hμν⟩ := fil_pull PD W hK h9 T₂ Y ι π hses h2 hY (-(α s)) (by omega) _ hν
    refine ⟨((φVB PD (LL := LL) (V := T₂.V)) ^ s) μ, φVB_pow_Dcris PD s hμ.1.1, ⟨μ, hμ, rfl⟩, ?_⟩
    rw [crisMap_φVB_pow, hμν]
    exact hνlam
  obtain ⟨s₀, hs₀, hneg₀⟩ := hpol
  obtain ⟨ξ, hξD, -, hξlam⟩ := hpull s₀ hs₀ hneg₀
  have hinjD := (ses_exact PD hK h9 T₂ Y W.one ι π hses h2 hY (Formalism.MainNotions.LiftingTheory.gen_one_crys W)).1
  have hall : ∀ s < e, α s < 0 → ξ ∈ FilS W T₂ a s (-(α s)) := by
    intro s hs hneg
    obtain ⟨ξ', hξ'D, hξ'F, hξ'lam⟩ := hpull s hs hneg
    have h0 : ξ' - ξ = 0 := hinjD _ ((Dcris PD T₂.ρ).sub_mem hξ'D hξD) (by rw [map_sub, hξ'lam, hξlam, sub_self])
    rw [← sub_eq_zero.1 h0]
    exact hξ'F
  have hlamL : dvO W Y e bY cY ∈ DcrisL PD Y.ρ (W.emb a) := by
    rw [← hspanY, dvO_sum]
    exact Submodule.sum_mem _ fun j _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨j, rfl⟩)
  have hξL := letter_pull W hK h9 T₂ Y ι π hses h2 hY (W.emb a) hξD (by rw [hξlam]; exact hlamL)
  rw [← hspan2] at hξL
  obtain ⟨ρ, hρ⟩ := (Submodule.mem_span_range_iff_exists_fun LL).1 hξL
  obtain ⟨m, r, hr⟩ := int_vec W hV ρ
  have hdvr : dvO W T₂ e b r = (PD.p : LL) ^ m • ξ := by
    rw [dvO_sum, ← hρ, Finset.smul_sum]
    simp only [hr, mul_smul]
  refine ⟨m, r, fun j => ?_, fun s hs hneg => ?_⟩
  · have h1 : crisMap B ι.f (dvO W T₂ e b r) = ∑ j, (∑ k, algebraMap O LL (r k) * algebraMap O LL (o k j)) •
        dv W Y e bY (Pi.single j 1) := by

      rw [dvO_sum, map_sum]
      simp only [map_smul, ho, Finset.smul_sum, smul_smul, Finset.sum_smul]
      exact Finset.sum_comm
    have h2' : crisMap B ι.f (dvO W T₂ e b r) = ∑ j, ((PD.p : LL) ^ m * algebraMap O LL (cY j)) •
        dv W Y e bY (Pi.single j 1) := by
      rw [hdvr, map_smul, hξlam, dvO_sum, Finset.smul_sum]
      simp only [smul_smul]
    have := congrFun (coef_eq _ hindY _ _ (h1.symm.trans h2')) j
    apply hinj

    rw [map_sum, map_mul, map_pow, map_natCast]
    simpa only [map_mul] using this
  · rw [hdvr]
    exact Submodule.smul_mem _ _ (hall s hs hneg)

theorem o_inj [FiniteDimensional Qp LL] (hK : Function.Bijective (algebraMap K₀ K))
    (h9 : DcrisExactStrict PD LL) (T₂ Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L)
    (hses : IsSESLat (Qp := Qp) ι π) (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (a : ZMod n) (e : ℕ)
    {d dY : ℕ} (b : Fin d → W.DD T₂) (bY : Fin dY → W.DD Y)
    (hind2 : LinearIndependent LL fun k => dv W T₂ e b (Pi.single k 1))
    (hspan2 : Submodule.span LL (Set.range fun k => dv W T₂ e b (Pi.single k 1)) = DcrisL PD T₂.ρ (W.emb a))
    (hindY : LinearIndependent LL fun j => dv W Y e bY (Pi.single j 1))
    (o : Fin d → Fin dY → O)
    (ho : ∀ k, crisMap B ι.f (dv W T₂ e b (Pi.single k 1)) =
      ∑ j, algebraMap O LL (o k j) • dv W Y e bY (Pi.single j 1))
    (ρ : Fin d → LL) (hρ : ∀ j, ∑ k, ρ k * algebraMap O LL (o k j) = 0) : ρ = 0 := by
  have hinjD := (ses_exact PD hK h9 T₂ Y W.one ι π hses h2 hY (Formalism.MainNotions.LiftingTheory.gen_one_crys W)).1
  set ξ := ∑ k, ρ k • dv W T₂ e b (Pi.single k 1) with hξ
  have hξD : ξ ∈ Dcris PD T₂.ρ := by
    have : ξ ∈ DcrisL PD T₂.ρ (W.emb a) := by
      rw [← hspan2]
      exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, rfl⟩)
    exact ((Strict.mem_DcrisL_iff PD _ ξ).1 this).1
  have h0 : crisMap B ι.f ξ = 0 := by

    rw [hξ, map_sum]
    simp only [map_smul, ho, Finset.smul_sum, smul_smul]
    rw [Finset.sum_comm]
    simp only [← Finset.sum_smul, hρ, zero_smul, Finset.sum_const_zero]
  have hξ0 := hinjD ξ hξD h0
  funext k
  exact Fintype.linearIndependent_iff.1 hind2 ρ (by rw [← hξ, hξ0]) k


include W in
theorem right_inv (hV : ValRing (LL := LL) O v) (hinj : Function.Injective (algebraMap O LL)) {d dY : ℕ}
    (o : Fin d → Fin dY → O)
    (hinjo : ∀ ρ : Fin d → LL, (∀ j, ∑ k, ρ k * algebraMap O LL (o k j) = 0) → ρ = 0) :
    ∃ (q : ℕ) (D : Fin dY → Fin d → O), ∀ k m, ∑ j, o k j * D j m =
      if k = m then ((PD.p : ℕ) : O) ^ q else 0 := by
  let oL : Matrix (Fin d) (Fin dY) LL := fun k j => algebraMap O LL (o k j)
  let f : (Fin d → LL) →ₗ[LL] (Fin dY → LL) := Matrix.vecMulLinear oL
  have hf : ∀ ρ j, f ρ j = ∑ k, ρ k * algebraMap O LL (o k j) := fun ρ j => by
    show (Matrix.vecMul ρ oL) j = _
    rfl
  have hker : LinearMap.ker f = ⊥ := LinearMap.ker_eq_bot'.2 fun ρ hρ =>
    hinjo ρ fun j => by rw [← hf, hρ]; rfl
  obtain ⟨g, hg⟩ := LinearMap.exists_leftInverse_of_injective f hker
  let Dl : Fin dY → Fin d → LL := fun j m => g (Pi.single j 1) m
  have key : ∀ k m, ∑ j, algebraMap O LL (o k j) * Dl j m = if k = m then 1 else 0 := by
    intro k m
    have hv : f (Pi.single k 1) = ∑ j, algebraMap O LL (o k j) • (Pi.single j 1 : Fin dY → LL) := by
      funext j'
      rw [hf, Finset.sum_apply]
      simp [Pi.single_apply]
    have h1 := congrArg (fun φ : (Fin d → LL) →ₗ[LL] (Fin d → LL) => φ (Pi.single k 1)) hg

    simp only [LinearMap.comp_apply, LinearMap.id_apply, hv, map_sum, map_smul] at h1
    have h2 := congrFun h1 m
    rw [Finset.sum_apply] at h2
    simp only [Pi.smul_apply, smul_eq_mul] at h2
    rw [h2]
    by_cases hkm : k = m
    · subst hkm; simp
    · simp [Ne.symm hkm, hkm]
  obtain ⟨q, D, hD⟩ := int_vec W hV fun x : Fin dY × Fin d => Dl x.1 x.2
  refine ⟨q, fun j m => D (j, m), fun k m => hinj ?_⟩

  rw [map_sum]
  simp only [map_mul, hD]
  have : ∑ j, algebraMap O LL (o k j) * ((PD.p : LL) ^ q * Dl j m) =
      (PD.p : LL) ^ q * ∑ j, algebraMap O LL (o k j) * Dl j m := by
    rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun j _ => by ring
  rw [this, key]
  split_ifs <;> simp

end Formalism.MainNotions.UnusedSlot80.SplitP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LetterPull =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LinearIdentityHeadDifference =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LinearIdentityHeadDifference", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsSmulPowEqSumOfInFNc\nimport Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfMembership\nimport Formalism.SharpRestriction.LevelLetterCocycles.CoprimeFrobeniusUniformizerPowers\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FilCrisTriv\npublic import Formalism.SharpRestriction.LevelLetterCocycles.HorTrExists\npublic import Formalism.SharpRestriction.LevelLetterCocycles.HorTrUnique\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.FrobeniusUniformizerPowDvd\nimport Formalism.SharpRestriction.LevelLetterCocycles.SaturationPullbackOfRingCondition\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.SplitP

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup

theorem lin_map {R M : Type} [CommRing R] [AddCommGroup M] [Module R M] {d dY : ℕ} (l Λ : R) (κ κY κ' K : ℕ)
    (u : M) (X : Fin d → M) (Z : Fin dY → M) (a : Fin d → R) (o : Fin d → Fin dY → R) :
    l ^ (κ' + K) • (l ^ (κ + κY) • Λ • u - ∑ j, (∑ k, a k * o k j) • (l ^ κ • Z j)) =
      l ^ K • l ^ κY • (l ^ κ' • (l ^ κ • Λ • u - ∑ k, a k • X k)) +
        l ^ κ' • ∑ k, a k • (l ^ K • (l ^ κY • X k - l ^ κ • ∑ j, o k j • Z j)) := by
  have e1 : ∑ j, (∑ k, a k * o k j) • (l ^ κ • Z j) = ∑ k, a k • (l ^ κ • ∑ j, o k j • Z j) := by
    simp only [Finset.sum_smul, Finset.smul_sum]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun j _ => by module
  set Yv : Fin d → M := fun k => ∑ j, o k j • Z j with hYv
  have e2 : ∑ k, a k • (l ^ K • (l ^ κY • X k - l ^ κ • Yv k)) =
      l ^ K • l ^ κY • ∑ k, a k • X k - l ^ K • ∑ k, a k • (l ^ κ • Yv k) := by
    rw [Finset.smul_sum, Finset.smul_sum, Finset.smul_sum, ← Finset.sum_sub_distrib]
    exact Finset.sum_congr rfl fun k _ => by module
  rw [e1, e2]
  module

theorem linear_identity_head_difference {R M : Type} [CommRing R] [AddCommGroup M] [Module R M] (l π : R) (κ κY : ℕ)
    (S E U SY : M) :
    l ^ κY • (l ^ κ • (S + π • E) + π • U) - l ^ κ • (l ^ κY • S + π • SY) =
      π • (l ^ (κY + κ) • E + l ^ κY • U - l ^ κ • SY) := by
  module

theorem linear_identity_tail_difference {R M : Type} [CommRing R] [AddCommGroup M] [Module R M] (l π : R) (κ κY M' : ℕ)
    (U X S Z : M) :
    (l ^ κY • (U + π ^ M' • X) - l ^ κ • (S + π ^ M' • Z)) - (l ^ κY • U - l ^ κ • S) =
      π ^ M' • (l ^ κY • X - l ^ κ • Z) := by
  module

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

theorem horTr_split (hinj : Function.Injective (algebraMap O LL)) (T : LocLat G Qp LL O) (c : ZMod n)
    {d : ℕ} (b : Fin d → W.DD T) (hb : ∀ m, Formalism.MainNotions.LiftingTheory.InNΔi W T c (b m)) (hπ : W.π₀ ∈ W.AΔ)
    (sol : Fin d → ℕ → Fin d → LL) (hsol0 : ∀ k, sol k 0 = Pi.single k 1) (M κ : ℕ) (hM : 1 ≤ M) (k : Fin d)
    {H : W.DD T} (h : IsHorTr W T b sol M κ k H) :
    ∃ S, Formalism.MainNotions.LiftingTheory.InNΔi W T c S ∧ H = lA W ^ κ • b k + W.π₀ • S := by
  obtain ⟨y, hy, rfl⟩ := h
  have hy0 : ∀ m, y 0 m = if m = k then ((PD.p : ℕ) : O) ^ κ else 0 := by
    intro m
    apply hinj
    rw [hy 0 hM m, hsol0 k]
    by_cases hm : m = k
    · subst hm; simp
    · simp [hm]
  obtain ⟨M', rfl⟩ : ∃ M', M = M' + 1 := ⟨M - 1, by omega⟩
  refine ⟨∑ r ∈ Finset.range M', W.π₀ ^ r • Formalism.MainNotions.LiftingTheory.vecB W T b (y (r + 1)),
    Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sum W T c _ _ fun r _ =>
      Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_smul W T c (W.AΔ.pow_mem hπ r)
        (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sum W T c _ _ fun m _ => Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_osmul W T c _ (hb m)), ?_⟩
  rw [Finset.sum_range_succ', pow_zero, one_smul, add_comm, Finset.smul_sum]
  congr 1
  · rw [LevC.lA_smul_eq]
    unfold Formalism.MainNotions.LiftingTheory.vecB
    simp only [hy0, ite_smul, zero_smul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  · refine Finset.sum_congr rfl fun r _ => ?_
    rw [smul_smul, ← pow_succ']

theorem horTr_γ (T : LocLat G Qp LL O) (c : ZMod n) {d : ℕ} (b : Fin d → W.DD T)
    (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T c b sol) (M κ : ℕ) (k : Fin d) {H : W.DD T}
    (h : IsHorTr W T b sol M κ k H) :
    ∃ x, Formalism.MainNotions.LiftingTheory.InNΔi W T c x ∧ W.γ T H - H = W.π₀ ^ M • x := by
  obtain ⟨y, hy, rfl⟩ := h
  obtain ⟨x, hx, hxe⟩ := (hb.2 k).1 M κ y hy
  refine ⟨x, hx, ?_⟩
  rw [← hxe, smul_zero, sub_zero]

variable [IsDomain O]

theorem γ_lA (T : LocLat G Qp LL O) (t : ℕ) (z : W.DD T) : W.γ T (lA W ^ t • z) = lA W ^ t • W.γ T z := by
  rw [LevC.lA_smul_eq, map_smul, ← LevC.lA_smul_eq]

variable [NeZero n]

theorem frame_const (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) {T₂ Y : LocLat G Qp LL O} (ι : LatHom T₂.L Y.L)
    (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (c' : ZMod n) {d dY : ℕ} (b : Fin d → W.DD T₂)
    (hb : Formalism.MainNotions.LiftingTheory.IsFrameΔ W T₂ c' b) (bY : Fin dY → W.DD Y) (hbY : Formalism.MainNotions.LiftingTheory.IsFrameΔ W Y c' bY)
    (k : Fin d) :
    ∃ (m : Fin dY → LetA O n), (∀ j, m j ∈ W.AΔ ∧ letE c' * m j = m j) ∧
      W.map ι (b k) = ∑ j, m j • bY j ∧
      ∃ E, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' E ∧
        W.map ι (b k) - ∑ j, PowerSeries.constantCoeff (m j c') • bY j = W.π₀ • E := by
  have hx := Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_map W ι h2 hY c' (hb.1 k)
  obtain ⟨m, ⟨hm, hmx⟩, -⟩ := hbY.2 _ hx
  refine ⟨m, hm, hmx, ?_⟩
  set o : Fin dY → O := fun j => PowerSeries.constantCoeff (m j c') with ho
  have hdv : ∀ j, ∃ g ∈ W.AΔ, m j - letE c' * algebraMap O (LetA O n) (o j) = W.π₀ * g := by
    intro j
    refine Formalism.MainNotions.N.Pv.LocalLengthBound.frobenius_uniformizer_pow_dvd (c := c') hR (W.AΔ.sub_mem (hm j).1
      (W.AΔ.mul_mem (Formalism.MainNotions.UnusedSlot80.SatPW.letE_mem_AΔ W c') (W.AΔ.algebraMap_mem _))) ?_ ?_
    · rw [mul_sub, (hm j).2, ← mul_assoc, _root_.Formalism.MainNotions.LiftingTheory.letter_idempotent_sq]
    · have := Formalism.MainNotions.UnusedSlot80.ArcF.ev_apply c' (m j - letE c' * algebraMap O (LetA O n) (o j))
      rw [← this, map_sub, map_mul, Formalism.MainNotions.UnusedSlot80.ArcF.ev_letE, Formalism.MainNotions.UnusedSlot80.ArcF.ev_alg, one_mul,
        Formalism.MainNotions.UnusedSlot80.ArcF.ev_apply, sub_self]
  choose g hg hge using hdv
  have hbl : ∀ j, (letE c' : LetA O n) • bY j = bY j := fun j =>
    Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_letter W Y c' (hbY.1 j)
  refine ⟨∑ j, g j • bY j, Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sum W Y c' _ _ fun j _ =>
    Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_smul W Y c' (hg j) (hbY.1 j), ?_⟩
  rw [hmx, Finset.smul_sum, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl fun j _ => ?_
  have e1 : o j • bY j = (letE c' * algebraMap O (LetA O n) (o j)) • bY j := by
    rw [mul_comm, mul_smul, hbl j, algebraMap_smul]
  rw [e1, ← sub_smul, hge j, mul_smul]

theorem hor_diff (C : LevC.Ctx W) {T₂ Y : LocLat G Qp LL O} (ι : LatHom T₂.L Y.L)
    (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (A : ArcP n) (hA : A.OK) (a : ZMod n) (c' : ZMod n) (e : ℕ)
    {d dY : ℕ} (b : Fin d → W.DD T₂) (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T₂ c' b sol)
    (bY : Fin dY → W.DD Y) (solY : Fin dY → ℕ → Fin dY → LL) (hbY : IsHor W Y c' bY solY)
    (κ κY : ℕ) (Hh : Fin d → W.DD T₂) (HhY : Fin dY → W.DD Y)
    (hHh : ∀ k, IsHorTr W T₂ b sol (A.M PD.p) κ k (Hh k)) (hHhY : ∀ j, IsHorTr W Y bY solY (A.M PD.p) κY j (HhY j))
    (o : Fin d → Fin dY → O)
    (ho : ∀ k, ∃ E, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' E ∧ W.map ι (b k) - ∑ j, o k j • bY j = W.π₀ • E) (k : Fin d) :
    ∃ K : ℕ, InFP W Y c' e (W.π₀ * abelian₂ W A a e ^ 2)
      (lA W ^ K • ((W.φD Y) ^ e) (lA W ^ κY • W.map ι (Hh k) - lA W ^ κ • ∑ j, o k j • HhY j)) := by
  have hM : 1 ≤ A.M PD.p := by unfold ArcP.M; exact Nat.le_add_left 1 _
  have hπ := C.hR.1
  obtain ⟨S, hS, hSe⟩ := horTr_split W C.hinj T₂ c' b (fun m => hb.1.1 m) hπ sol (fun k => (hb.2 k).2) _ κ hM k (hHh k)
  have hSY : ∀ j, ∃ S, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' S ∧ HhY j = lA W ^ κY • bY j + W.π₀ • S := fun j =>
    horTr_split W C.hinj Y c' bY (fun m => hbY.1.1 m) hπ solY (fun k => (hbY.2 k).2) _ κY hM j (hHhY j)
  choose SY hSY hSYe using hSY
  obtain ⟨E, hE, hEe⟩ := ho k
  obtain ⟨x, hx, hxe⟩ := horTr_γ W T₂ c' b sol hb _ κ k (hHh k)
  have hxY : ∀ j, ∃ x, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' x ∧ W.γ Y (HhY j) - HhY j = W.π₀ ^ (A.M PD.p) • x := fun j =>
    horTr_γ W Y c' bY solY hbY _ κY j (hHhY j)
  choose xY hxY hxYe using hxY
  set D : W.DD Y := lA W ^ κY • W.map ι (Hh k) - lA W ^ κ • ∑ j, o k j • HhY j with hD
  have hmapS := Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_map W ι h2 hY c' hS
  have hmapx := Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_map W ι h2 hY c' hx

  have hD1 : ∃ E', Formalism.MainNotions.LiftingTheory.InNΔi W Y c' E' ∧ D = W.π₀ • E' := by
    refine ⟨lA W ^ (κY + κ) • E + lA W ^ κY • W.map ι S - lA W ^ κ • ∑ j, o k j • SY j,
      Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sub W Y c'
        (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_add W Y c' (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_lsmul W Y c' _ hE)
          (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_lsmul W Y c' _ hmapS))
        (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_lsmul W Y c' _ (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sum W Y c' _ _ fun j _ =>
          Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_osmul W Y c' _ (hSY j))), ?_⟩
    have hmk : W.map ι (b k) = ∑ j, o k j • bY j + W.π₀ • E := by rw [← hEe]; abel
    have s1 : ∑ j, o k j • (lA W ^ κY • bY j) = lA W ^ κY • ∑ j, o k j • bY j := by
      rw [Finset.smul_sum]; exact Finset.sum_congr rfl fun j _ => smul_comm _ _ _
    have s2 : ∑ j, o k j • (W.π₀ • SY j) = W.π₀ • ∑ j, o k j • SY j := by
      rw [Finset.smul_sum]; exact Finset.sum_congr rfl fun j _ => smul_comm _ _ _
    have s12 : ∑ j, o k j • HhY j = lA W ^ κY • ∑ j, o k j • bY j + W.π₀ • ∑ j, o k j • SY j := by
      simp only [hSYe, smul_add, Finset.sum_add_distrib]
      rw [s1, s2]
    rw [hD, hSe, map_add (f := _), Formalism.MainNotions.UnusedSlot80.Relay2.mapA_smul, Formalism.MainNotions.UnusedSlot80.Relay2.mapA_smul, hmk, s12]
    exact linear_identity_head_difference _ _ _ _ _ _ _ _
  have hγT := sub_eq_iff_eq_add'.1 hxe
  have hγι : W.γ Y (W.map ι (Hh k)) = W.map ι (Hh k) + W.π₀ ^ (A.M PD.p) • W.map ι x := by
    rw [show W.γ Y (W.map ι (Hh k)) = W.map ι (W.γ T₂ (Hh k)) from (W.map_γ ι W.gam (Hh k)).symm, hγT,
      map_add, Formalism.MainNotions.UnusedSlot80.Relay2.mapA_smul]
  have hγY : ∀ j, W.γ Y (HhY j) = HhY j + W.π₀ ^ (A.M PD.p) • xY j := fun j => sub_eq_iff_eq_add'.1 (hxYe j)
  have hD2 : ∃ z, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' z ∧ W.γ Y D - D = W.π₀ ^ (A.M PD.p) • z := by
    refine ⟨lA W ^ κY • W.map ι x - lA W ^ κ • ∑ j, o k j • xY j,
      Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sub W Y c' (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_lsmul W Y c' _ hmapx)
        (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_lsmul W Y c' _ (Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_sum W Y c' _ _ fun j _ =>
          Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_osmul W Y c' _ (hxY j))), ?_⟩
    have s3 : ∑ j, o k j • (W.π₀ ^ (A.M PD.p) • xY j) = W.π₀ ^ (A.M PD.p) • ∑ j, o k j • xY j := by
      rw [Finset.smul_sum]; exact Finset.sum_congr rfl fun j _ => smul_comm _ _ _
    have s4 : W.γ Y (∑ j, o k j • HhY j) = ∑ j, o k j • HhY j + W.π₀ ^ (A.M PD.p) • ∑ j, o k j • xY j := by

      simp only [map_sum, map_smul, hγY, smul_add, Finset.sum_add_distrib]
      rw [s3]
    rw [hD, map_sub, γ_lA, γ_lA, hγι, s4]
    exact linear_identity_tail_difference _ _ _ _ _ _ _ _ _
  obtain ⟨K, x', hx', hK⟩ := Formalism.MainNotions.UnusedSlot80.Relay2.formal_unique W Y c' C.hinj C.hO2 hπ C.hR.2.2.1
    (C.hH C.hCA Y hY c').1 (C.hH C.hCA Y hY c').2.1 (A.M PD.p) D hD1 hD2
  obtain ⟨ν, hν, hνe⟩ := LevC.yM_gen W C.hTr C.hCA hπ C.h5p A hA a e
  refine ⟨K, ν • ((W.φD Y) ^ e) x', Formalism.MainNotions.UnusedSlot80.Relay2.Pp_gen W Y c' e hν hx', ?_⟩
  rw [← Formalism.MainNotions.UnusedSlot80.Relay2.φpow_lsmul, hK, Formalism.MainNotions.UnusedSlot80.Relay2.φpow_smul, map_pow, hνe, mul_smul]

theorem inFP_sum (T : LocLat G Qp LL O) (c : ZMod n) (e : ℕ) (f : LetA O n) {ι₀ : Type} (s : Finset ι₀)
    (z : ι₀ → W.DD T) (h : ∀ i ∈ s, InFP W T c e f (z i)) : InFP W T c e f (∑ i ∈ s, z i) := by
  induction s using Finset.induction_on with
  | empty => simpa using Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_zero W T c e f
  | insert j s hj ih =>
    rw [Finset.sum_insert hj]
    exact Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_add W T c e f (h j (Finset.mem_insert_self j s))
      (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem repVV_map (C : LevC.Ctx W) {T₂ Y : LocLat G Qp LL O} (ι : LatHom T₂.L Y.L)
    (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ) (A : ArcP n) (hA : A.OK) (a : ZMod n) (c' : ZMod n) (e : ℕ)
    {d dY : ℕ} (b : Fin d → W.DD T₂) (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T₂ c' b sol)
    (bY : Fin dY → W.DD Y) (solY : Fin dY → ℕ → Fin dY → LL) (hbY : IsHor W Y c' bY solY)
    (o : Fin d → Fin dY → O)
    (ho : ∀ k, ∃ E, Formalism.MainNotions.LiftingTheory.InNΔi W Y c' E ∧ W.map ι (b k) - ∑ j, o k j • bY j = W.π₀ • E)
    {x : W.DD T₂} {F : Fin d → W.EE} (hF : RepVV W T₂ c' e (A.M PD.p) (abelian₂ W A a e) b sol x F) :
    RepVV W Y c' e (A.M PD.p) (abelian₂ W A a e) bY solY (W.map ι x)
      (fun j => ∑ k, F k * algebraMap O W.EE (o k j)) := by
  obtain ⟨κ, κ', Hh, aa, hHh, haa, hP⟩ := hF
  obtain ⟨κY, HhY, hHhY⟩ := LevC.horTr_exists W C.hO2 C.hH C.hCA Y hY c' bY solY hbY (A.M PD.p)
  choose K hK using fun k => hor_diff W C ι h2 hY A hA a c' e b sol hb bY solY hbY κ κY Hh HhY hHh hHhY o ho k
  set Kt : ℕ := ∑ k, K k with hKt
  set Λ : LetA O n := abelian₂ W A a e with hΛ
  refine ⟨κ + κY, κ' + Kt, fun j => lA W ^ κ • HhY j,
    fun j => ∑ k, aa k * algebraMap O (LetA O n) (o k j),
    fun j => by rw [add_comm κ κY]; exact LevC.horTr_scale W Y bY solY _ κY κ j (hHhY j),
    fun j => ⟨W.AΔ.sum_mem fun k _ => W.AΔ.mul_mem (haa k).1 (W.AΔ.algebraMap_mem _), ?_⟩, ?_⟩

  · rw [Finset.mul_sum, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [← mul_assoc, (haa k).2, map_mul, ← IsScalarTower.algebraMap_apply O (LetA O n) W.EE]
  · simp only [Formalism.MainNotions.UnusedSlot80.Relay2.φpow_lsmul]
    rw [lin_map (lA W) Λ κ κY κ' Kt (W.map ι x) (fun k => ((W.φD Y) ^ e) (W.map ι (Hh k)))
      (fun j => ((W.φD Y) ^ e) (HhY j)) aa (fun k j => algebraMap O (LetA O n) (o k j))]
    refine Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_add W Y c' e _ ?_ ?_
    · refine Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_smul W Y c' e _ (LevC.lA_mem W _)
        (Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_smul W Y c' e _ (LevC.lA_mem W _) ?_)
      have := Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_map W ι h2 hY c' e _ hP
      convert this using 1

      simp only [Formalism.MainNotions.UnusedSlot80.Relay2.mapA_smul, map_sub, map_sum, Formalism.MainNotions.UnusedSlot80.Relay2.map_φpow]
    · refine Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_smul W Y c' e _ (LevC.lA_mem W _)
        (inFP_sum W Y c' e _ _ _ fun k _ => Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_smul W Y c' e _ (haa k).1 ?_)
      have hle : K k ≤ Kt := Finset.single_le_sum (fun i _ => Nat.zero_le (K i)) (Finset.mem_univ k)
      have := Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_smul W Y c' e _ (LevC.lA_mem W (Kt - K k)) (hK k)
      convert this using 1
      rw [smul_smul, ← pow_add, Nat.sub_add_cancel hle]
      congr 1

      simp only [map_sub, Formalism.MainNotions.UnusedSlot80.Relay2.φpow_lsmul, map_sum, map_smul, algebraMap_smul]

theorem dv_map {T₂ Y : LocLat G Qp LL O} (ι : LatHom T₂.L Y.L) (h2 : IsCrys PD T₂.ρ) (hY : IsCrys PD Y.ρ)
    (c' : ZMod n) (e : ℕ) {d dY : ℕ} (b : Fin d → W.DD T₂) (hb : Formalism.MainNotions.LiftingTheory.IsFrameΔ W T₂ c' b)
    (bY : Fin dY → W.DD Y) (hbY : Formalism.MainNotions.LiftingTheory.IsFrameΔ W Y c' bY) (k : Fin d) (m : Fin dY → LetA O n)
    (hmx : W.map ι (b k) = ∑ j, m j • bY j) :
    Formalism.MainNotions.TruncatedSeriesCountingBounds.crisMap B ι.f (dv W T₂ e b (Pi.single k 1)) =
      ∑ j, algebraMap O LL (PowerSeries.constantCoeff (m j c')) • dv W Y e bY (Pi.single j 1) := by
  rw [Formalism.MainNotions.UnusedSlot80.ArcF.dv_single, crisMap_φVB_pow PD]
  have hbN := (hb.1 k).1.1
  have hmN := W.map_N ι h2 hY _ hbN
  have e1 : Formalism.MainNotions.TruncatedSeriesCountingBounds.crisMap B ι.f (cmpD W T₂ (b k)) = cmpD W Y (W.map ι (b k)) := by
    rw [Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W T₂ hbN, Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W Y hmN]
    exact (W.cmp_map ι h2 hY ⟨b k, hbN⟩ hmN).symm
  have hsum : ∑ j, m j • bY j ∈ W.N Y := hmx ▸ hmN
  have e2 : cmpD W Y (W.map ι (b k)) = W.cmp Y ⟨∑ j, m j • bY j, hsum⟩ := by
    rw [Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W Y hmN]
    congr 1
    exact Subtype.ext hmx

  rw [e1, e2, Formalism.MainNotions.UnusedSlot80.ArcF.cmp_sum_letter W Y c' bY (fun j => (hbY.1 j).1.1)
  (fun j => Formalism.MainNotions.UnusedSlot80.Relay2.InNΔi_letter W Y c' (hbY.1 j)) m hsum, map_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [map_smul, Formalism.MainNotions.UnusedSlot80.ArcF.dv_single, Formalism.MainNotions.UnusedSlot80.ArcF.cmpD_of_mem W Y (hbY.1 j).1.1]

end Formalism.MainNotions.UnusedSlot80.SplitP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LinearIdentityHeadDifference =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.IntAOfNonpol =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.IntAOfNonpol", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecOfPInt\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrameInvPoly\nimport Formalism.SharpRestriction.LevelLetterCocycles.HorTrUnique\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LetterPull\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LinearIdentityHeadDifference\nimport Formalism.SharpRestriction.LevelLetterCocycles.SecInTransport\nimport Formalism.SharpRestriction.LevelLetterCocycles.SecOfP\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical TensorProduct

namespace Formalism.MainNotions.UnusedSlot80.SplitP

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.TruncatedSeriesCountingBounds

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

variable [IsDomain O]

theorem intA_inFr {a : ZMod n} {Λ : LetA O n} (hΛ : Λ ∈ W.AΔ) {g : W.EE} (h : IntA W a g) : InFr W a 1 Λ g := by
  obtain ⟨u, hu, rfl⟩ := h
  refine ⟨Λ * u, W.AΔ.mul_mem hΛ hu, ?_⟩
  rw [← map_mul]
  congr 1
  ring

theorem intA_add {a : ZMod n} {g g' : W.EE} (h : IntA W a g) (h' : IntA W a g') : IntA W a (g + g') := by
  obtain ⟨u, hu, rfl⟩ := h
  obtain ⟨u', hu', rfl⟩ := h'
  exact ⟨u + u', W.AΔ.add_mem hu hu', by rw [← map_add (f := _), mul_add]⟩

theorem intA_neg {a : ZMod n} {g : W.EE} (h : IntA W a g) : IntA W a (-g) := by
  obtain ⟨u, hu, rfl⟩ := h
  exact ⟨-u, W.AΔ.neg_mem hu, by rw [← map_neg, mul_neg]⟩

theorem intA_sub {a : ZMod n} {g g' : W.EE} (h : IntA W a g) (h' : IntA W a g') : IntA W a (g - g') := by
  rw [sub_eq_add_neg]; exact intA_add W h (intA_neg W h')

theorem intA_zero {a : ZMod n} : IntA W a 0 := ⟨0, W.AΔ.zero_mem, by simp⟩

theorem intA_mul {a : ZMod n} {g : W.EE} (h : IntA W a g) {c : LetA O n} (hc : c ∈ W.AΔ) :
    IntA W a (algebraMap (LetA O n) W.EE c * g) := by
  obtain ⟨u, hu, rfl⟩ := h
  exact ⟨c * u, W.AΔ.mul_mem hc hu, by rw [← map_mul]; congr 1; ring⟩

theorem intA_omul {a : ZMod n} {g : W.EE} (h : IntA W a g) (o : O) : IntA W a (g * algebraMap O W.EE o) := by
  rw [mul_comm, IsScalarTower.algebraMap_apply O (LetA O n) W.EE]
  exact intA_mul W h (W.AΔ.algebraMap_mem o)

theorem intA_sum {a : ZMod n} {ι₀ : Type} (s : Finset ι₀) (g : ι₀ → W.EE) (h : ∀ i ∈ s, IntA W a (g i)) :
    IntA W a (∑ i ∈ s, g i) := by
  induction s using Finset.induction_on with
  | empty => simpa using intA_zero W
  | insert j s hj ih =>
    rw [Finset.sum_insert hj]
    exact intA_add W (h j (Finset.mem_insert_self j s)) (ih fun i hi => h i (Finset.mem_insert_of_mem hi))

theorem intA_lE [NeZero n] {a : ZMod n} {g : W.EE} (h : IntA W a g) (t : ℕ) : IntA W a (lE W t * g) := by
  rw [LevC.lE_eq]; exact intA_mul W h (LevC.lA_mem W t)

theorem intA_of_inFr {a : ZMod n} {N : LetA O n} (hN : N ∈ W.AΔ) {g : W.EE} (h : InFr W a N 1 g) : IntA W a g := by
  obtain ⟨u, hu, hg⟩ := h
  refine ⟨N * u, W.AΔ.mul_mem hN hu, ?_⟩
  rw [map_one, one_mul] at hg
  rw [hg, mul_assoc]

variable [NeZero n]

theorem intA_of_nonpol (hπ : W.π₀ ∈ W.AΔ) {a : ZMod n} {e : ℕ} {α : ℕ → ℤ} {g : W.EE}
    (hα : ∀ s < e, 0 ≤ α s) (h : InId W a e α g) : IntA W a g := by
  have hden : ∏ s ∈ Finset.range e, ps W s ^ (-(α s)).toNat = 1 := by
    refine Finset.prod_eq_one fun s hs => ?_
    have : (-(α s)).toNat = 0 := by have := hα s (Finset.mem_range.1 hs); omega
    rw [this, pow_zero]
  unfold InId at h
  rw [hden] at h
  exact intA_of_inFr W (W.AΔ.prod_mem fun s _ => W.AΔ.pow_mem (Formalism.MainNotions.UnusedSlot80.PhiPowers.ps_mem_AΔ W hπ s) _) h

theorem polar_core [FiniteDimensional Qp LL] (C : LevC.Ctx W) (h9 : DcrisExactStrict PD LL)
    (A : ArcP n) (hA : A.OK) (c' : ZMod n) (hc' : c' ∈ A.cuts) (e : ℕ) (a : ZMod n)
    (hac : c' + (e : ZMod n) = a)
    (T₂ Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L)
    (hT₂ : Win W A T₂) (hWY : Win W A Y) (hses : IsSESLat (Qp := Qp) ι π)
    {d : ℕ} (b : Fin d → W.DD T₂) (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T₂ c' b sol)
    {dY : ℕ} (bY : Fin dY → W.DD Y) (solY : Fin dY → ℕ → Fin dY → LL) (hbY : IsHor W Y c' bY solY)
    (hind2 : LinearIndependent LL fun k => dv W T₂ e b (Pi.single k 1))
    (hspan2 : Submodule.span LL (Set.range fun k => dv W T₂ e b (Pi.single k 1)) = DcrisL PD T₂.ρ (W.emb a))
    (hindY : LinearIndependent LL fun j => dv W Y e bY (Pi.single j 1))
    (hspanY : Submodule.span LL (Set.range fun j => dv W Y e bY (Pi.single j 1)) = DcrisL PD Y.ρ (W.emb a))
    (hNY : ∀ x, InFNc W Y a 1 x → ∃ f, InNL W Y a e (abelian₂ W A a e) bY f ∧
      RepVV W Y c' e (A.M PD.p) (abelian₂ W A a e) bY solY (lA W ^ A.σ PD.p • x) f)
    (w : W.DD T₂) (p x : W.DD Y) (hw : InFP W T₂ c' e 1 (abelian₂ W A a e • w)) (hp : p ∈ Pp W Y c' e)
    (hxN : InFNc W Y a 1 x) (hpx : W.map ι w = p - x) :
    ∃ (κ : ℕ) (f : Fin d → W.EE), RepVV W T₂ c' e (A.M PD.p) (abelian₂ W A a e) b sol (lA W ^ κ • w) f ∧
      SecIn W a e (LevC.condPolar (W := W) T₂ a e b) f := by
  have h2 := hT₂.1
  have hY := hWY.1
  set M : ℕ := A.M PD.p with hM
  set σ : ℕ := A.σ PD.p with hσ
  set Λ : LetA O n := abelian₂ W A a e with hΛ
  have hΛm : Λ ∈ W.AΔ := W.AΔ.prod_mem fun s _ => W.AΔ.pow_mem (Formalism.MainNotions.UnusedSlot80.PhiPowers.ps_mem_AΔ W C.hR.1 s) _

  obtain ⟨κ₁, F, hF, hFr⟩ := LevC.secOfP' W C.hinj C.hO2 C.hR C.hTr C.hH C.hCA C.h5p A hA c' e T₂ h2 b sol hb w
    (by rw [hac]; exact hw)
  rw [hac] at hF hFr

  choose mo hmo hmox hE using fun k => frame_const W C.hR ι h2 hY c' b hb.1 bY hbY.1 k
  set o : Fin d → Fin dY → O := fun k j => PowerSeries.constantCoeff (mo k j c') with ho
  have hFY := repVV_map W C ι h2 hY A hA a c' e b sol hb bY solY hbY o hE hF
  rw [Formalism.MainNotions.UnusedSlot80.Relay2.mapA_smul] at hFY
  have hdv : ∀ k, crisMap B ι.f (dv W T₂ e b (Pi.single k 1)) =
      ∑ j, algebraMap O LL (o k j) • dv W Y e bY (Pi.single j 1) := fun k =>
    dv_map W ι h2 hY c' e b hb.1 bY hbY.1 k (mo k) (hmox k)

  obtain ⟨κp, G, hG, hGint⟩ := secOfP_int W C.hinj C.hO2 C.hR C.hTr C.hH C.hCA C.h5p A hA c' e Y hY bY solY hbY p
    ⟨p, hp, (one_smul _ _).symm⟩
  rw [hac] at hG hGint
  obtain ⟨fx, ⟨hfxr, κx, hSx⟩, hRx⟩ := hNY x hxN

  have R1 := LevC.repVV_lA Y c' e M Λ bY solY (W.map ι w) _ (κp + σ) κ₁ hFY
  have R2 := LevC.repVV_lA Y c' e M Λ bY solY p G (κ₁ + σ) κp hG
  have R3 := LevC.repVV_lA Y c' e M Λ bY solY x fx (κ₁ + κp) σ hRx
  rw [show κp + (κ₁ + σ) = κ₁ + (κp + σ) by omega] at R2
  rw [show σ + (κ₁ + κp) = κ₁ + (κp + σ) by omega] at R3
  have R23 := LevC.repVV_sub W C.hinj Y c' e M Λ bY solY _ _ _ _ R2 R3
  rw [← smul_sub, ← hpx] at R23
  have hfr1 : ∀ j, InFr W a 1 Λ (lE W (κp + σ) * ∑ k, F k * algebraMap O W.EE (o k j)) := fun j =>
    Formalism.MainNotions.UnusedSlot80.ArcF.inFr_lE W (LevC.inFr_sum W _ _ fun k _ => by
      rw [mul_comm, IsScalarTower.algebraMap_apply O (LetA O n) W.EE]
      exact LevC.inFr_mulA W (hFr k) (W.AΔ.algebraMap_mem _)) _
  have hfr23 : ∀ j, InFr W a 1 Λ (lE W (κ₁ + σ) * G j - lE W (κ₁ + κp) * fx j) := fun j =>
    LevC.inFr_sub W (Formalism.MainNotions.UnusedSlot80.ArcF.inFr_lE W (intA_inFr W hΛm (hGint j)) _)
      (Formalism.MainNotions.UnusedSlot80.ArcF.inFr_lE W (hfxr j) _)
  obtain ⟨t, ht⟩ := LevC.sec_unique W C.hinj C.hV C.hO2 C.hs C.hR C.hp0 C.h5 C.hTr C.hH C.hCA C.h5p Y
    (C.h3 Y hY) (C.hmod Y hY) A hA c' hc' hWY bY solY hbY e _ _ _ (by rw [hac]; exact R1) (by rw [hac]; exact R23)
    (by rw [hac]; exact hfr1) (by rw [hac]; exact hfr23)
  rw [hac] at ht
  choose u hu hue using ht
  simp only [map_one, one_mul, Pi.sub_apply] at hue
  set ε : Fin dY → W.EE := fun j => algebraMap (LetA O n) W.EE (letE a * (W.π₀ * Λ) * u j) with hεdef
  have hε : ∀ j, IntA W a (ε j) := fun j =>
    ⟨W.π₀ * Λ * u j, W.AΔ.mul_mem (W.AΔ.mul_mem C.hR.1 hΛm) (hu j), by
      show algebraMap (LetA O n) W.EE (letE a * (W.π₀ * Λ) * u j) = _
      congr 1
      ring⟩
  obtain ⟨I, g, cc, α, hgα, hfx⟩ := hSx

  have hpv : ∀ i, ∃ (m : ℕ) (r : Fin d → O), (∃ s < e, α i s < 0) →
      (∀ j, ∑ k, r k * o k j = ((PD.p : ℕ) : O) ^ m * cc i j) ∧
        ∀ s < e, α i s < 0 → dvO W T₂ e b r ∈ FilS W T₂ a s (-(α i s)) := by
    intro i
    by_cases hi : ∃ s < e, α i s < 0
    · obtain ⟨m, r, h⟩ := pull_vec W C.hbij h9 C.hV C.hinj T₂ Y ι π hses h2 hY a e b bY hspan2 hindY hspanY o hdv
        (α i) (cc i) (hgα i).2 hi
      exact ⟨m, r, fun _ => h⟩
    · exact ⟨0, 0, fun h => absurd h hi⟩
  choose mi ri hri using hpv
  set M0 : ℕ := ∑ i, mi i with hM0
  set r' : Fin I → Fin d → O := fun i k => ((PD.p : ℕ) : O) ^ (M0 - mi i) * ri i k with hr'def
  set pol : Fin I → Prop := fun i => ∃ s < e, α i s < 0 with hpol
  have hr'1 : ∀ i, pol i → ∀ j, ∑ k, r' i k * o k j = ((PD.p : ℕ) : O) ^ M0 * cc i j := by
    intro i hi j
    have hle : mi i ≤ M0 := Finset.single_le_sum (fun j _ => Nat.zero_le (mi j)) (Finset.mem_univ i)
    have h1 := (hri i hi).1 j
    calc ∑ k, r' i k * o k j = ((PD.p : ℕ) : O) ^ (M0 - mi i) * ∑ k, ri i k * o k j := by
          rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by simp only [hr'def]; ring
      _ = ((PD.p : ℕ) : O) ^ M0 * cc i j := by
          rw [h1, ← mul_assoc, ← pow_add, Nat.sub_add_cancel hle]
  have hr'2 : ∀ i, pol i → ∀ s < e, α i s < 0 → dvO W T₂ e b (r' i) ∈ FilS W T₂ a s (-(α i s)) := by
    intro i hi s hs hneg
    rw [show r' i = fun k => ((PD.p : ℕ) : O) ^ (M0 - mi i) * ri i k from rfl, dvO_smul]
    exact Submodule.smul_mem _ _ ((hri i hi).2 s hs hneg)

  set Spol : Fin dY → W.EE := fun j => ∑ i, if pol i then g i * algebraMap O W.EE (cc i j) else 0 with hSpol
  set Snp : Fin dY → W.EE := fun j => ∑ i, if pol i then 0 else g i * algebraMap O W.EE (cc i j) with hSnpdef
  have hsplit : ∀ j, lE W κx * fx j = Spol j + Snp j := fun j => by
    have hfxj : lE W κx * fx j = ∑ i, g i * algebraMap O W.EE (cc i j) := hfx j
    rw [hfxj, hSpol, hSnpdef, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl fun i _ => by split_ifs <;> simp
  have hSnp : ∀ j, IntA W a (Snp j) := fun j => intA_sum W _ _ fun i _ => by
    by_cases hi : pol i
    · rw [if_pos hi]; exact intA_zero W
    · rw [if_neg hi]
      refine intA_omul W (intA_of_nonpol W C.hR.1 (fun s hs => ?_) (hgα i).1) _
      by_contra hlt
      exact hi ⟨s, hs, not_le.mp hlt⟩
  set Pv : Fin d → W.EE := fun k => ∑ i, if pol i then g i * algebraMap O W.EE (r' i k) else 0 with hPvdef
  have hPv : ∀ j, ∑ k, Pv k * algebraMap O W.EE (o k j) = lE W M0 * Spol j := fun j => by
    simp only [hPvdef, hSpol, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun i _ => ?_
    by_cases hi : pol i
    · simp only [if_pos hi]
      have h3 : ∑ k, g i * algebraMap O W.EE (r' i k) * algebraMap O W.EE (o k j) =
          g i * algebraMap O W.EE (∑ k, r' i k * o k j) := by

        rw [map_sum, Finset.mul_sum]
        exact Finset.sum_congr rfl fun k _ => by simp only [map_mul]; ring
      rw [h3, hr'1 i hi j]
      simp only [map_mul, map_pow, map_natCast]
      unfold lE
      ring
    · simp only [if_neg hi, zero_mul, Finset.sum_const_zero, mul_zero]
  set Mt : ℕ := M0 + κx + t + κp + σ with hMt
  set Z : Fin d → W.EE := fun k => lE W Mt * F k + lE W (t + κ₁ + κp) * Pv k with hZdef
  set R : Fin dY → W.EE := fun j => lE W M0 * (lE W (κx + t + κ₁ + σ) * G j + lE W κx * ε j -
    lE W (t + κ₁ + κp) * Snp j) with hRdef
  have hZR : ∀ j, ∑ k, Z k * algebraMap O W.EE (o k j) = R j := fun j => by
    have e1 : ∑ k, Z k * algebraMap O W.EE (o k j) = lE W Mt * ∑ k, F k * algebraMap O W.EE (o k j) +
        lE W (t + κ₁ + κp) * ∑ k, Pv k * algebraMap O W.EE (o k j) := by
      simp only [hZdef, add_mul, Finset.sum_add_distrib, mul_assoc, ← Finset.mul_sum]
    rw [e1, hPv j]
    have h1 := hue j
    have h2 := hsplit j
    simp only [hRdef, hMt, lE] at h1 h2 ⊢
    linear_combination (((PD.p : ℕ) : W.EE) ^ (M0 + κx)) * h1 - (((PD.p : ℕ) : W.EE) ^ (M0 + t + κ₁ + κp)) * h2

  obtain ⟨q, D, hD⟩ := right_inv W C.hV C.hinj o
    (o_inj W C.hbij h9 T₂ Y ι π hses h2 hY a e b bY hind2 hspan2 hindY o hdv)
  have hZq : ∀ m, lE W q * Z m = ∑ j, R j * algebraMap O W.EE (D j m) := fun m => by
    have e2 : ∑ j, R j * algebraMap O W.EE (D j m) = ∑ k, Z k * algebraMap O W.EE (∑ j, o k j * D j m) := by

      simp only [← hZR, Finset.sum_mul, map_sum, Finset.mul_sum]
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun j _ => by simp only [map_mul]; ring
    rw [e2]
    simp only [hD, apply_ite (algebraMap O W.EE), map_zero, mul_ite, mul_zero, Finset.sum_ite_eq',
      Finset.mem_univ, if_true, map_pow, map_natCast]
    unfold lE
    ring
  have hInt : ∀ m, IntA W a (∑ j, R j * algebraMap O W.EE (D j m)) := fun m =>
    intA_sum W _ _ fun j _ => intA_omul W (intA_lE W (intA_sub W (intA_add W (intA_lE W (hGint j) _)
      (intA_lE W (hε j) _)) (intA_lE W (hSnp j) _)) _) _
  set cp : Fin I → Fin d → O := fun i k =>
    if pol i then -(((PD.p : ℕ) : O) ^ (q + (t + κ₁ + κp)) * r' i k) else 0 with hcpdef
  have hfin : ∀ m, lE W (q + Mt) * F m =
      (∑ j, R j * algebraMap O W.EE (D j m)) + ∑ i, g i * algebraMap O W.EE (cp i m) := fun m => by
    rw [← hZq m]
    have e3 : ∑ i, g i * algebraMap O W.EE (cp i m) = -(lE W (q + (t + κ₁ + κp)) * Pv m) := by
      rw [hPvdef, Finset.mul_sum, ← Finset.sum_neg_distrib]
      refine Finset.sum_congr rfl fun i _ => ?_
      by_cases hi : pol i
      · simp only [hcpdef, if_pos hi, map_neg, map_mul, map_pow, map_natCast]
        unfold lE
        ring
      · simp only [hcpdef, if_neg hi, map_zero, mul_zero, neg_zero]
    rw [e3, hZdef]
    simp only [hMt]
    unfold lE
    ring
  refine ⟨κ₁ + (q + Mt), fun m => lE W (q + Mt) * F m, LevC.repVV_lA T₂ c' e M Λ b sol w F (q + Mt) κ₁ hF, ?_⟩
  have hS1 : SecIn W a e (LevC.condPolar (W := W) T₂ a e b)
      (fun m => ∑ j, R j * algebraMap O W.EE (D j m)) := by
    refine ⟨d, fun m₀ => ∑ j, R j * algebraMap O W.EE (D j m₀), fun m₀ => Pi.single m₀ 1, fun _ _ => 0,
      fun m₀ => ⟨?_, fun s _ => Or.inl le_rfl⟩, fun k => ?_⟩
    · obtain ⟨uu, huu, hug⟩ := hInt m₀
      show InFr W a (∏ s ∈ Finset.range e, ps W s ^ ((0 : ℤ)).toNat)
        (∏ s ∈ Finset.range e, ps W s ^ (-(0 : ℤ)).toNat) _
      simp only [neg_zero, Int.toNat_zero, pow_zero, Finset.prod_const_one]
      exact ⟨uu, huu, by rw [map_one, one_mul, hug, mul_one]⟩
    · simp [Pi.single_apply]
  have hS2 : SecIn W a e (LevC.condPolar (W := W) T₂ a e b)
      (fun m => ∑ i, g i * algebraMap O W.EE (cp i m)) := by
    refine ⟨I, g, cp, α, fun i => ⟨(hgα i).1, fun s hs => ?_⟩, fun k => rfl⟩
    by_cases hneg : α i s < 0
    · right
      have hi : pol i := ⟨s, hs, hneg⟩
      have e4 : cp i = fun k => (-((PD.p : ℕ) : O) ^ (q + (t + κ₁ + κp))) * r' i k := by
        funext k; simp only [hcpdef, if_pos hi]; ring
      rw [e4, dvO_smul]
      exact Submodule.smul_mem _ _ (hr'2 i hi s hs hneg)
    · left
      exact not_lt.mp hneg
  have hS := LevC.secIn_add W hS1 hS2
  convert hS using 1
  funext m
  rw [Pi.add_apply]
  exact hfin m

end Formalism.MainNotions.UnusedSlot80.SplitP
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.IntAOfNonpol =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplitPolarLOf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SplitPolarLOf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\nimport Formalism.SharpRestriction.LevelLetterCocycles.BaseChangePreservesUnitaryOf\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CancelUnitMulUniformizerPow\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IntAOfNonpol\npublic import Formalism.SharpRestriction.LevelLetterCocycles.UniversalGeneralOfRestriction\nimport Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.SplitP

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.TruncatedSeriesCountingBounds

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)

variable [IsDomain O] [NeZero n]

theorem splitPolar_of [FiniteDimensional Qp LL] (C : LevC.Ctx W) (hArc : ArcCore W)
    (hJ : Formalism.MainNotions.LiftingTheory.coreJumps PD LL O) (h9 : DcrisExactStrict PD LL) : Split.SplitPolar W := by
  intro _ _ A hA T₂ Y ι π hT₂ hY hses c hc w hI hP hpx d b sol hb
  obtain ⟨p, hp, x, hx, hpx⟩ := hpx
  have hac : c - ((A.len c : ℕ) : ZMod n) + ((A.len c : ℕ) : ZMod n) = c := sub_add_cancel _ _
  have hc' : c - ((A.len c : ℕ) : ZMod n) ∈ A.cuts := ((hA.2.2.1 c hc).2.2).1
  have hje : A.j ≤ A.len c := hA.2.2.2.1 c hc
  have hWY : Win W A Y := Formalism.MainNotions.UnusedSlot80.Split2.win_ext W A hJ (Formalism.MainNotions.LiftingTheory.lone_HOne0 W) hT₂ hY hses
  obtain ⟨dY, bY, hbYf⟩ := Formalism.MainNotions.UnusedSlot80.Relay2.frame_exists W Y (c - ((A.len c : ℕ) : ZMod n)) (C.hmod Y hY)
  obtain ⟨solY, hbY⟩ := Formalism.MainNotions.UnusedSlot80.UnivF.hor_exists W C.hH C.hCA Y hY _ bY hbYf
  obtain ⟨-, hAC⟩ := hArc C.hCA C.h5p A hA c hc (A.len c) hje le_rfl
  obtain ⟨-, -, -, h2f⟩ := hAC T₂ hT₂
  obtain ⟨⟨hind2, hspan2⟩, -⟩ := h2f d b sol hb
  obtain ⟨-, -, -, hYf⟩ := hAC Y hWY
  obtain ⟨⟨hindY, hspanY⟩, -, -, hNY, -⟩ := hYf dY bY solY hbY
  rw [hac] at hspan2 hspanY hNY
  have hxe : x = p - W.map ι w := by rw [hpx]; abel
  have hxN : InFNc W Y c 1 x := by
    refine ⟨x, ⟨Formalism.MainNotions.UnusedSlot80.Split2.N_of_Nl W hx, fun δ hδ => ?_⟩,
      _root_.Formalism.MainNotions.LiftingTheory.frame_letE_fix W Y c hx, (one_smul _ _).symm⟩
    rw [hxe, map_sub, Formalism.MainNotions.UnusedSlot80.Relay2.Pp_Δ W Y _ _ p hp δ hδ, ← W.map_γ, hI.2.1 δ hδ]
  exact polar_core W C h9 A hA _ hc' (A.len c) c hac T₂ Y ι π hT₂ hWY hses b sol hb bY solY hbY hind2 hspan2
    hindY hspanY hNY w p x hP hp hxN hpx

end Formalism.MainNotions.UnusedSlot80.SplitP

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

theorem splitPolarL_of (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hAdm : AdmArcA D HW F Cm) (hArc : ArcCoordinatesTheorem D HW F Cm) (h23 : Formalism.MainNotions.LiftingTheory.adm23 D HW F)
    (h9 : Formalism.MainNotions.TruncatedSeriesCountingBounds.adm9 D) : Split.SplitPolarL D HW := by
  intro l _ K LL hG hCA h5l
  have := neZero_finrank_max_unramified K
  have : FiniteDimensional ℚ_[l] ↥LL.1 := LL.2
  have C := ctx_of D HW F Cm hAdm l K LL hG hCA h5l
  exact SplitP.splitPolar_of _ C ((hArc hAdm) l K LL hG hCA h5l).1 (h23 l K LL) (h9 l K LL)

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplitPolarLOf =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplitShapeLRec =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SplitShapeLRec", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesAdmittedOfLevels\npublic import Formalism.SharpRestriction.LevelLetterCocycles.PolarToPoleOfCtx\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplitPolarLOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

theorem splitShapeL_rec (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hArc : AdmArcA D HW F Cm) (h1 : LevelZeroModPLocal D HW) (h2 : LevelZeroModPRefinedLocal D HW) (h23 : Formalism.MainNotions.LiftingTheory.adm23 D HW F)
    (h9 : Formalism.MainNotions.TruncatedSeriesCountingBounds.adm9 D) : Split.SplitShapeL D HW :=
  Split.splitShapeL_of_pieces D HW (splitPolarL_of D HW F Cm hArc (_root_.Formalism.MainNotions.UnusedSlot80.arc_coordinates_of_level_zero_parts D HW F Cm h1 h2) h23 h9)
    (Split.polarToPoleL_of D HW F Cm hArc)

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplitShapeLRec =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfLiteratureExactness =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfLiteratureExactness", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfExactnessAndData\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CancelUnitMulUniformizerPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

theorem ddExactL_of_litFont (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (h : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F) : Split.DDExactL D HW := by
  intro l _ K LL hG hCA _ T₂ Y ι π _ _ hses
  obtain ⟨hinj, -, hker⟩ := (h l K LL hCA).2.1 T₂ Y _ ι π hses
  refine ⟨fun x => (hker _).2 ⟨x, rfl⟩, fun x hx => hinj (by rw [hx, map_zero]), fun u hu => (hker u).1 hu⟩

theorem splitting_of_literature_exactness (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : AdmSplitA D HW F Cm) (h6 : Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F) (hH : Formalism.MainNotions.LiftingTheory.ConclusionH D HW F)
    (hTr : Formalism.MainNotions.LiftingTheory.ExistsUnitClasses D HW F) (hWX : Formalism.MainNotions.LiftingTheory.WachKillsQuotients D HW F) (hFont : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F)
    (hS : Split.SplitShapeL D HW) : SplittingArcLifting D HW F Cm :=
  splitting_general_of_exactness D HW F Cm hA h6 hH hTr hWX (ddExactL_of_litFont D HW F hFont) hS

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfLiteratureExactness =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrobeniusLevels =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrobeniusLevels", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesAdmittedOfLevels\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplitShapeLRec\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SplittingOfLiteratureExactness\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup

theorem arc_coordinates_of_frobenius (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F)
    (h2 : LevelZeroModPRefinedLocal D HW) : ArcCoordinatesTheorem D HW F Cm := fun hA =>
  _root_.Formalism.MainNotions.UnusedSlot80.arc_coordinates_of_level_zero_parts D HW F Cm (lev0MpL_of D HW F Cm hA h4 h9) h2 hA

theorem arc_coordinates_of_frobenius_levels (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (hA : AdmArcA D HW F Cm) (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm)
    (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F) (h2 : LevelZeroModPRefinedLocal D HW) : ArcLiftingCoordinates D HW F Cm :=
  arc_coordinates_of_frobenius D HW F Cm h4 h9 h2 hA

theorem split_case_A_of_hypotheses (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW)
    (Cm : CmpOf D.loc D.locA HW F) (hA : AdmSplitA D HW F Cm) (hArc : AdmArcA D HW F Cm)
    (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm) (h6 : Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F)
    (hH : Formalism.MainNotions.LiftingTheory.ConclusionH D HW F) (hTr : Formalism.MainNotions.LiftingTheory.ExistsUnitClasses D HW F) (hWX : Formalism.MainNotions.LiftingTheory.WachKillsQuotients D HW F)
    (hFont : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F) (h23 : Formalism.MainNotions.LiftingTheory.adm23 D HW F) (h17 : Formalism.MainNotions.TruncatedSeriesCountingBounds.adm9 D)
    (h2 : LevelZeroModPRefinedLocal D HW) : SplittingArcLifting D HW F Cm :=
  splitting_of_literature_exactness D HW F Cm hA h6 hH hTr hWX hFont
    (splitShapeL_rec D HW F Cm hArc (lev0MpL_of D HW F Cm hArc h4 h9) h2 h23 h17)

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrobeniusLevels =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelSeriesFirstFactorOrderOne =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelSeriesFirstFactorOrderOne", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvOZeroHigh\nimport Formalism.SharpRestriction.LevelLetterCocycles.HorTrExists\nimport Formalism.SharpRestriction.LevelLetterCocycles.HorTrUnique\nimport Formalism.SharpRestriction.LevelLetterCocycles.LamZero\nimport Formalism.SharpRestriction.LevelLetterCocycles.MemOfSecEq\nimport Formalism.SharpRestriction.LevelLetterCocycles.ProdPsUnitE\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne\nimport Formalism.SharpRestriction.LevelLetterCocycles.SaturationPullbackOfRingCondition\nimport Formalism.SharpRestriction.LevelLetterCocycles.TmulMemFilV\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.LevM

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup Formalism.MainNotions.N.Pv.LocalLengthBound.Ser TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} {W : LocWach PD LL O v n}

theorem prim_pow_p {ζ : LL} (hζ : ∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) :
    ∃ j : ℕ, IsPrimitiveRoot (ζ ^ PD.p) (PD.p ^ j) := by
  obtain ⟨j, hj⟩ := hζ
  rcases Nat.eq_zero_or_pos j with h0 | hpos
  · subst h0
    have : ζ = 1 := by simpa using hj
    exact ⟨0, by simp [this]⟩
  · refine ⟨j - 1, ?_⟩
    have h := hj.pow_of_dvd PD.hp.ne_zero (dvd_pow_self PD.p (by omega))
    have e : PD.p ^ j / PD.p = PD.p ^ (j - 1) := by
      have := Nat.pow_div (show 1 ≤ j by omega) PD.hp.pos
      rwa [pow_one] at this
    rwa [e] at h

theorem cc_lev_φpow (hlevφ : ∀ (i : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
      W.lev i ζ (W.φA f) = PowerSeries.rescale (PD.p : LL) (W.lev (i - 1) (ζ ^ PD.p) f))
    (s : ℕ) : ∀ (a : ZMod n) (ζ : LL), (∃ j : ℕ, IsPrimitiveRoot ζ (PD.p ^ j)) → ∀ f : LetA O n,
    PowerSeries.constantCoeff (W.lev a ζ ((W.φA ^ s) f)) =
      PowerSeries.constantCoeff (W.lev (a - (s : ZMod n)) (ζ ^ (PD.p ^ s)) f) := by
  induction s with
  | zero => intro a ζ _ f; simp
  | succ s ih =>
    intro a ζ hζ f
    rw [pow_succ', AlgHom.mul_apply, hlevφ a ζ hζ, ← PowerSeries.coeff_zero_eq_constantCoeff_apply,
      PowerSeries.coeff_rescale, pow_zero, one_mul, PowerSeries.coeff_zero_eq_constantCoeff_apply,
      ih (a - 1) (ζ ^ PD.p) (prim_pow_p hζ) f, ← pow_mul, ← pow_succ']
    congr 2
    push_cast; ring_nf

variable {levB : ∀ T : LocLat G Qp LL O, ZMod n → LL → ↥(W.N T) →+ (ℤ → T.V ⊗[Qp] B)}

theorem cc_lev_ps (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) (a : ZMod n)
    (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p) (s : ℕ) (hs : 1 ≤ s) :
    PowerSeries.constantCoeff (W.lev a ζ (ps W s)) = (PD.p : LL) := by
  have hl : 2 ≤ PD.p := PD.hp.two_le
  unfold ps
  rw [cc_lev_φpow Ti.hlevφ s a ζ ⟨1, by simpa using hζ⟩]
  obtain ⟨s', rfl⟩ : ∃ s', s = s' + 1 := ⟨s - 1, by omega⟩
  rw [pow_succ', pow_mul, hζ.pow_eq_one, one_pow]
  unfold qA
  rw [map_add (f := _), map_add (f := _)]
  have h0 := Formalism.MainNotions.UnusedSlot80.LevE.level_one_uniformizer_coeff_vanish hR (a - ((s' + 1 : ℕ) : ZMod n)) 1 0 (by omega)
  rw [pow_one, PowerSeries.coeff_zero_eq_constantCoeff_apply] at h0
  rw [h0, zero_add]
  unfold lA
  rw [map_natCast, map_natCast]

variable [IsDomain O]

theorem level_series_first_factor_order_one (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W)
    (hp0 : ((PD.p : ℕ) : O) ≠ 0) (a : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p) :
    ∃ u : PowerSeries LL, W.lev a ζ (ps W 0) = PowerSeries.X * u ∧ PowerSeries.constantCoeff u ≠ 0 := by
  obtain ⟨w, hw, w', hww, -⟩ := Formalism.MainNotions.UnusedSlot80.LevC.q_unit W hR hp0
  obtain ⟨u₀, hu₀, hu₀c⟩ := Formalism.MainNotions.N.Pv.LocalLengthBound.lev_q_simple W a ζ hζ
  have hp0w : ps W 0 = w' * W.q := by rw [hw, ← mul_assoc, mul_comm w', hww, one_mul]
  refine ⟨W.lev a ζ w' * u₀, ?_, ?_⟩
  · rw [hp0w, map_mul, hu₀]; ring
  · rw [map_mul]
    refine mul_ne_zero ?_ hu₀c
    intro h0
    have := congrArg (fun g => PowerSeries.constantCoeff (W.lev a ζ g)) hww
    simp only [map_mul, map_one, h0, mul_zero] at this
    exact zero_ne_one this

theorem lev_prod_ps (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB) (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W)
    (hp0 : ((PD.p : ℕ) : O) ≠ 0) (a : ZMod n) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p) (E : ℕ → ℕ) :
    ∀ N : ℕ, ∃ u : PowerSeries LL, W.lev a ζ (∏ s ∈ Finset.range N, ps W s ^ E s) =
      PowerSeries.X ^ (if N = 0 then 0 else E 0) * u ∧ PowerSeries.constantCoeff u ≠ 0 := by
  have hpL : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  intro N
  induction N with
  | zero => exact ⟨1, by simp, by simp⟩
  | succ N ih =>
    obtain ⟨u, hu, huc⟩ := ih
    rw [Finset.prod_range_succ, map_mul, hu, map_pow]
    rcases Nat.eq_zero_or_pos N with h0 | hpos
    · subst h0
      obtain ⟨u₁, hu₁, hu₁c⟩ := level_series_first_factor_order_one Ti hR hp0 a ζ hζ
      refine ⟨u * u₁ ^ E 0, ?_, ?_⟩
      · rw [hu₁]; simp only [if_true, pow_zero, one_mul, Nat.succ_ne_zero, if_false, mul_pow]; ring
      · rw [map_mul, map_pow]; exact mul_ne_zero huc (pow_ne_zero _ hu₁c)
    · refine ⟨u * W.lev a ζ (ps W N) ^ E N, ?_, ?_⟩
      · rw [if_neg (by omega), if_neg (by omega)]; ring
      · rw [map_mul, map_pow, cc_lev_ps Ti hR a ζ hζ N hpos]
        exact mul_ne_zero huc (pow_ne_zero _ hpL)

section Ser

variable {V : Type} [AddCommGroup V] [Module LL V]

omit [IsDomain O] in
theorem smulS_vanish_neg {f : ℤ → V} (hf : LB 0 f) (g : PowerSeries LL) (r : ℤ) (hr : r < 0) :
    smulS g f r = 0 := by
  rw [smulS_eq_sum hf g r 0 (by omega)]; simp

omit [IsDomain O] in
theorem LB_delta (v : V) : LB 0 (fun k : ℤ => if k = 0 then v else 0) := fun k hk => by simp [show k ≠ 0 by omega]

omit [IsDomain O] in
theorem smulS_delta (g : PowerSeries LL) (v : V) (r : ℤ) :
    smulS g (fun k : ℤ => if k = 0 then v else 0) r = (if 0 ≤ r then PowerSeries.coeff r.toNat g else 0) • v := by
  rcases lt_or_ge r 0 with h | h
  · rw [if_neg (by omega), zero_smul]
    exact smulS_vanish_neg (LB_delta v) g r h
  · rw [if_pos h, smulS_eq_sum (LB_delta v) g r (r.toNat + 1) (by omega), Finset.sum_eq_single r.toNat]
    · rw [if_pos (show r - ((r.toNat : ℕ) : ℤ) = 0 by omega)]
    · intro j _ hj; rw [if_neg (show r - (j : ℤ) ≠ 0 by omega), smul_zero]
    · intro hj; exact absurd (Finset.mem_range.2 (Nat.lt_succ_self _)) hj

omit [IsDomain O] in
theorem Dg_of_mul {Fil : ℤ → Submodule LL V} (hF : Antitone Fil) {m : ℤ} {F : ℤ → V} (hLB : LB m F)
    (D : ℕ) (u : PowerSeries LL) (hu : PowerSeries.constantCoeff u ≠ 0) (s : ℤ)
    (h : Dg Fil (s + D) (smulS (PowerSeries.X ^ D * u) F)) : Dg Fil s F := by
  have h1 := Dg_smulS hF (LB_smulS hLB _) h u⁻¹
  rw [← smulS_mul hLB, show u⁻¹ * (PowerSeries.X ^ D * u) = PowerSeries.X ^ D by
    rw [mul_comm, mul_assoc, PowerSeries.mul_inv_cancel _ hu, mul_one], smulS_X_pow hLB] at h1
  intro r
  have := h1 (r + D)
  simp only [add_sub_cancel_right] at this
  rwa [show s + (D : ℤ) - (r + D) = s - r by ring] at this

omit [IsDomain O] in
theorem LB_sum {ι : Type} (s : Finset ι) {m : ℤ} (F : ι → ℤ → V) (h : ∀ j, LB m (F j)) :
    LB m (fun k => ∑ j ∈ s, F j k) := fun k hk => Finset.sum_eq_zero fun j _ => h j k hk

omit [IsDomain O] in
theorem smulS_sum {ι : Type} (s : Finset ι) {m : ℤ} (F : ι → ℤ → V) (h : ∀ j, LB m (F j))
    (g : PowerSeries LL) : smulS g (fun k => ∑ j ∈ s, F j k) = fun k => ∑ j ∈ s, smulS g (F j) k := by
  induction s using Finset.induction_on with
  | empty => funext k; simp [smulS]
  | insert a s ha ih =>
    have e1 : (fun k => ∑ j ∈ insert a s, F j k) = F a + fun k => ∑ j ∈ s, F j k := by
      funext k; rw [Finset.sum_insert ha]; rfl
    rw [e1, smulS_add (h a) (LB_sum s F h), ih]
    funext k
    rw [Finset.sum_insert ha]
    rfl

omit [IsDomain O] in
theorem smulS_sum_delta {d : ℕ} (g : PowerSeries LL) (G : Fin d → PowerSeries LL) (vv : Fin d → V) (r : ℤ) :
    smulS g (fun k => ∑ j, smulS (G j) (fun k : ℤ => if k = 0 then vv j else 0) k) r =
      ∑ j, (if 0 ≤ r then PowerSeries.coeff r.toNat (g * G j) else 0) • vv j := by
  rw [smulS_sum Finset.univ _ (fun j => LB_smulS (LB_delta (vv j)) (G j)) g]
  refine Finset.sum_congr rfl fun j _ => ?_
  rw [← smulS_mul (LB_delta (vv j)), smulS_delta]

theorem dg_core {Fil : ℤ → Submodule LL V} (hF : Antitone Fil) {d I : ℕ} (G : Fin d → PowerSeries LL)
    (vv : Fin d → V) (cc : Fin I → Fin d → LL) (Nser : Fin I → PowerSeries LL) (α : Fin I → ℤ) (D0 : ℕ)
    (uD : PowerSeries LL) (huD : PowerSeries.constantCoeff uD ≠ 0) (lam0 : LL) (hlam0 : lam0 ≠ 0) (s : ℤ)
    (hid : ∀ j, PowerSeries.C lam0 * (PowerSeries.X ^ D0 * uD) * G j =
      ∑ i, PowerSeries.C (cc i j) * Nser i)
    (E : Fin I → ℕ) (hE : ∀ i, (E i : ℤ) = s + D0 + α i)
    (hdvd : ∀ i, (PowerSeries.X : PowerSeries LL) ^ E i ∣ Nser i)
    (hfil : ∀ i, ∑ j, cc i j • vv j ∈ Fil (-α i)) :
    Dg Fil s (fun k => ∑ j, smulS (G j) (fun k : ℤ => if k = 0 then vv j else 0) k) := by
  have hLB : LB 0 (fun k => ∑ j, smulS (G j) (fun k : ℤ => if k = 0 then vv j else 0) k) :=
    LB_sum _ _ (fun j => LB_smulS (LB_delta (vv j)) (G j))
  refine Dg_of_mul hF hLB D0 uD huD s ?_
  intro r
  rw [smulS_sum_delta]
  have key : lam0 • ∑ j, (if 0 ≤ r then PowerSeries.coeff r.toNat (PowerSeries.X ^ D0 * uD * G j) else 0) • vv j =
      ∑ i, (if 0 ≤ r then PowerSeries.coeff r.toNat (Nser i) else 0) • ∑ j, cc i j • vv j := by
    by_cases h0 : 0 ≤ r
    · simp only [if_pos h0, Finset.smul_sum, smul_smul]
      rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun j _ => ?_
      have := congrArg (PowerSeries.coeff r.toNat) (hid j)

      rw [mul_assoc, PowerSeries.coeff_C_mul, map_sum] at this
      simp only [PowerSeries.coeff_C_mul] at this
      rw [← Finset.sum_smul, this]
      congr 1
      exact Finset.sum_congr rfl fun i _ => mul_comm _ _
    · simp [if_neg h0]
  have hmem : lam0 • ∑ j, (if 0 ≤ r then PowerSeries.coeff r.toNat (PowerSeries.X ^ D0 * uD * G j) else 0) • vv j ∈
      Fil (s + D0 - r) := by
    rw [key]
    refine Submodule.sum_mem _ fun i _ => ?_
    by_cases h0 : 0 ≤ r
    · rw [if_pos h0]
      by_cases hr : r < E i
      · rw [PowerSeries.X_pow_dvd_iff.1 (hdvd i) r.toNat (by omega), zero_smul]; exact (Fil _).zero_mem
      · exact (Fil _).smul_mem _ (hF (show s + D0 - r ≤ -α i by have := hE i; omega) (hfil i))
    · rw [if_neg h0, zero_smul]; exact (Fil _).zero_mem
  have := (Fil (s + D0 - r)).smul_mem lam0⁻¹ hmem
  rwa [smul_smul, inv_mul_cancel₀ hlam0, one_smul] at this

end Ser

theorem first_factor_power_isUnit_etale [NeZero n] (hR : Formalism.MainNotions.UnusedSlot80.ToolsR.RingP W) (H : ℕ) :
    IsUnit (algebraMap (LetA O n) W.EE (ps W 0 ^ H)) := by
  rw [map_pow]; exact (Formalism.MainNotions.UnusedSlot80.LevC.ps_unitE W hR 0).pow H

theorem qφ_mem [NeZero n] (C : Formalism.MainNotions.UnusedSlot80.LevC.Ctx W) (A : ArcP n) (hA : A.OK) (c' : ZMod n)
    (hc' : c' ∈ A.cuts) (T : LocLat G Qp LL O) (hT : Win W A T) (e : ℕ) (y : W.DD T)
    (hy : Formalism.MainNotions.LiftingTheory.InNΔi W T c' y) :
    W.q ^ A.Hs (c' + ((e + 1 : ℕ) : ZMod n)) (e + 1) 0 •
      W.φD T (abelian₂ W A (c' + (e : ZMod n)) e • ((W.φD T) ^ e) y) ∈ W.N T := by
  have hyP : ((W.φD T) ^ e) y ∈ Pp W T c' e := Formalism.MainNotions.UnusedSlot80.Relay2.Pp_phi W T c' e hy
  obtain ⟨z', hz'N, hz'l, hz'e⟩ := Formalism.MainNotions.UnusedSlot80.ArcC.arc_up W C.hs C.hR C.h5 A hA c' hc' e T hT _ hyP
  rw [one_smul] at hz'e
  set z : W.DD T := abelian₂ W A (c' + (e : ZMod n)) e • ((W.φD T) ^ e) y with hzdef
  have hzN : z ∈ W.N T := by rw [hz'e]; exact hz'N.1
  have hzl : (letE (c' + (e : ZMod n)) : LetA O n) • z = z := by rw [hz'e]; exact hz'l
  have h5T := C.h5 T _ _ hT.1 (Formalism.MainNotions.UnusedSlot80.PhiPowers.jumpsLet_of_win W A hA T hT)
  have hQ : W.Q = W.q := by simp [LocWach.Q, C.hs]
  set i : ZMod n := c' + ((e + 1 : ℕ) : ZMod n) with hidef
  have hi1 : i - 1 = c' + (e : ZMod n) := by rw [hidef]; push_cast; ring
  have hzNl : z ∈ W.Nl T (i - 1) := by
    rw [hi1]; exact ⟨z, hzN, by rw [LinearMap.smul_apply, LinearMap.id_apply]; exact hzl⟩
  have hM := h5T.1 i z hzNl
  rw [hQ] at hM
  have hMH : Formalism.MainNotions.UnusedSlot80.PhiPowers.Mw A.G₀ A.S A.η (A.ty i) ≤ A.Hs i (e + 1) 0 := by
    have := Formalism.MainNotions.UnusedSlot80.ArcC.hs_ge A hA c' hc' (e + 1) (e + 1) (by omega) le_rfl
    rwa [Nat.sub_self] at this
  obtain ⟨dd, hdd⟩ := Nat.exists_eq_add_of_le hMH
  rw [hdd, pow_add, mul_comm, mul_smul]
  exact (W.N T).smul_mem _ hM

theorem lev0Mpr_of [NeZero n] (C : Formalism.MainNotions.UnusedSlot80.LevC.Ctx W) (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB)
    (hmem : ∀ (T : LocLat G Qp LL O) (i : ZMod n) (ζ : LL) (x : ↥(W.N T)) (k : ℤ),
      levB T i ζ x k ∈ DcrisL PD T.ρ (W.emb i))
    (hMC : Formalism.MainNotions.N.Pv.LocalLengthBound.MemCrit W) (A : ArcP n) (hA : A.OK) (c' : ZMod n) (hc' : c' ∈ A.cuts)
    (T : LocLat G Qp LL O) (hT : Win W A T) {d : ℕ} (b : Fin d → W.DD T) (sol : Fin d → ℕ → Fin d → LL)
    (hb : IsHor W T c' b sol) (e : ℕ) : Formalism.MainNotions.UnusedSlot80.LevC.LevelZeroModPRefined A c' e T b sol := by
  intro x k f hxP hrep hfr0 hSk
  obtain ⟨κ, hS⟩ := hSk
  set a : ZMod n := c' + (e : ZMod n) with hadef
  set a' : ZMod n := c' + ((e + 1 : ℕ) : ZMod n) with ha'def
  have ha' : a' = a + 1 := by rw [ha'def, hadef]; push_cast; ring
  set H : ℕ := A.Hs a' (e + 1) 0 with hHdef
  set U : LetA O n := Formalism.MainNotions.UnusedSlot80.LevC.LamUp W A c' e with hUdef
  set Λ' : LetA O n := abelian₂ W A a' (e + 1) with hΛ'def
  have hlam : Λ' = ps W 0 ^ H * U := Formalism.MainNotions.UnusedSlot80.LevC.lam_succ W A c' e
  have hUΔ : U ∈ W.AΔ := Formalism.MainNotions.UnusedSlot80.ToolsR.φ_AΔ (Formalism.MainNotions.UnusedSlot80.ArcC.lam_mem_AΔ W C.hR.1 A _ e)
  choose w hwΔ hfw using hfr0
  set aa' : Fin d → LetA O n := fun m => letE a' * (W.π₀ * U) * w m with haa'
  have haa'Δ : ∀ m, aa' m ∈ W.AΔ := fun m => W.AΔ.mul_mem (W.AΔ.mul_mem
    (Formalism.MainNotions.UnusedSlot80.SatPW.letE_mem_AΔ W a') (W.AΔ.mul_mem C.hR.1 hUΔ)) (hwΔ m)
  obtain ⟨κ₀, Hh, hHh⟩ := Formalism.MainNotions.UnusedSlot80.LevC.horTr_exists W C.hO2 C.hH C.hCA T hT.1 c' b sol hb (A.M PD.p)
  have hHΔ : ∀ j, Formalism.MainNotions.LiftingTheory.InNΔi W T c' (Hh j) := fun j =>
    Formalism.MainNotions.UnusedSlot80.LevE.hor_mem T c' b hb.1 sol C.hR.1 (A.M PD.p) κ₀ j (hHh j)
  obtain ⟨Pu, hPu⟩ := first_factor_power_isUnit_etale C.hR H
  set Pinv : W.EE := ((Pu⁻¹ : W.EEˣ) : W.EE) with hPinv
  have hPP : Pinv * algebraMap (LetA O n) W.EE (ps W 0 ^ H) = 1 := by rw [hPinv, ← hPu]; exact Units.inv_mul Pu
  set Y : W.DD T := ∑ j, aa' j • ((W.φD T) ^ (e + 1)) (Hh j) with hY
  set z : W.DD T := Pinv • Y with hz

  have hΛz : Λ' • z = U • Y := by
    rw [hz, ← algebraMap_smul W.EE Λ', smul_smul, hlam, map_mul, mul_comm (algebraMap _ _ (ps W 0 ^ H)),
      mul_assoc, mul_comm (algebraMap _ _ (ps W 0 ^ H)), hPP, mul_one, algebraMap_smul]
  have hzP : InFP W T c' (e + 1) 1 (Λ' • z) := by
    rw [hΛz, hY, Finset.smul_sum]
    refine ⟨_, AddSubgroup.sum_mem _ fun j _ => ?_, (one_smul _ _).symm⟩
    rw [smul_smul]
    exact Formalism.MainNotions.UnusedSlot80.Relay2.Pp_gen W T c' (e + 1) (W.AΔ.mul_mem hUΔ (haa'Δ j)) (hHΔ j)

  have hzrep : RepVV W T c' (e + 1) (A.M PD.p) Λ' b sol (lA W ^ 0 • z) (fun m => lE W κ₀ * f m) := by
    rw [Formalism.MainNotions.UnusedSlot80.LevC.repVV_iff]
    refine ⟨κ₀, Hh, hHh, 0, fun m => lA W ^ κ₀ * (U * aa' m), fun m =>
      ⟨W.AΔ.mul_mem (Formalism.MainNotions.UnusedSlot80.LevC.lA_mem W κ₀) (W.AΔ.mul_mem hUΔ (haa'Δ m)), ?_⟩, ?_⟩
    · rw [hlam, Formalism.MainNotions.UnusedSlot80.LevC.lE_eq, map_mul, map_mul, map_mul, ← hfw m]
      ring
    · have e0 : lA W ^ 0 • (lA W ^ κ₀ • Λ' • (lA W ^ 0 • z) -
          ∑ m, (lA W ^ κ₀ * (U * aa' m)) • ((W.φD T) ^ (e + 1)) (Hh m)) = 0 := by
        rw [pow_zero, one_smul, one_smul, hΛz, hY, Finset.smul_sum, Finset.smul_sum]
        simp only [smul_smul]
        exact sub_self _
      rw [e0]
      exact Formalism.MainNotions.UnusedSlot80.Relay2.inMultiple_zero W T c' (e + 1) _

  suffices hzN : InFNc W T a' 1 z from
    Formalism.MainNotions.UnusedSlot80.LevC.mem_of_sec_eq C A hA c' hc' T hT b sol hb (e + 1) x z k 0 κ₀ f hxP hzP hzN hrep hzrep

  have hYΔ : ∀ δ ∈ W.DelF, W.γD T δ Y = Y := by
    intro δ hδ

    rw [hY, map_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [Formalism.MainNotions.UnusedSlot80.SatW.γD_smulA', haa'Δ j δ hδ, Formalism.MainNotions.UnusedSlot80.PhiPowers.φD_pow_Δ W T (hHΔ j).1.2 (e + 1) δ hδ]
  have hPz : ps W 0 ^ H • z = Y := by
    rw [hz, ← algebraMap_smul W.EE (ps W 0 ^ H), smul_smul, mul_comm, hPP, one_smul]
  have hzΔ : ∀ δ ∈ W.DelF, W.γD T δ z = z := by
    intro δ hδ
    refine Formalism.MainNotions.UnusedSlot80.SatW.smul_cancel W T (g := ps W 0 ^ H) ⟨Pu, hPu⟩ ?_
    rw [← (W.AΔ.pow_mem (Formalism.MainNotions.UnusedSlot80.PhiPowers.ps_mem_AΔ W C.hR.1 0) H) δ hδ, ← Formalism.MainNotions.UnusedSlot80.SatW.γD_smulA', hPz, hYΔ δ hδ,
      (W.AΔ.pow_mem (Formalism.MainNotions.UnusedSlot80.PhiPowers.ps_mem_AΔ W C.hR.1 0) H) δ hδ, hPz]
  have hYl : (letE a' : LetA O n) • Y = Y := by
    rw [hY, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [smul_smul, haa', ← mul_assoc, ← mul_assoc, Formalism.MainNotions.WachCoordinates.Br.letE_mul_self]
  have hzl : (letE a' : LetA O n) • z = z := by rw [hz, smul_comm, hYl]

  obtain ⟨w0, hw0, w0', hww0, -⟩ := Formalism.MainNotions.UnusedSlot80.LevC.q_unit W C.hR C.hp0
  have hZN : ∀ j, W.q ^ H • W.φD T (abelian₂ W A a e • ((W.φD T) ^ e) (Hh j)) ∈ W.N T := fun j =>
    qφ_mem C A hA c' hc' T hT e (Hh j) (hHΔ j)
  have hQ : W.Q = W.q := by simp [LocWach.Q, C.hs]
  have hdec : W.Q ^ (H + H) • z = ∑ j, (w0 ^ H * (letE a' * W.π₀ * w j)) •
      (W.q ^ H • W.φD T (abelian₂ W A a e • ((W.φD T) ^ e) (Hh j))) := by
    have e1 : W.Q ^ (H + H) • z = (W.q ^ H * w0 ^ H) • Y := by
      rw [hQ, hz, ← algebraMap_smul W.EE (W.q ^ (H + H)), smul_smul, ← algebraMap_smul W.EE (W.q ^ H * w0 ^ H)]
      congr 1
      rw [pow_add, hw0, mul_pow]
      simp only [map_mul]
      linear_combination (algebraMap (LetA O n) W.EE (w0 ^ H) * algebraMap (LetA O n) W.EE (ps W 0 ^ H) *
        algebraMap (LetA O n) W.EE (w0 ^ H)) * hPP
    rw [e1, hY, Finset.smul_sum]
    refine Finset.sum_congr rfl fun j _ => ?_
    rw [φD_smulA, ← Formalism.MainNotions.UnusedSlot80.PhiPowers.pow_apply_succ, smul_smul, smul_smul, smul_smul, haa']
    unfold Formalism.MainNotions.UnusedSlot80.LevC.LamUp at hUdef
    rw [hUdef]
    congr 1
    ring
  have hK : W.Q ^ (H + H) • z ∈ W.N T := by
    rw [hdec]; exact (W.N T).sum_mem fun j _ => (W.N T).smul_mem _ (hZN j)

  obtain ⟨I, g, c₀, α, hg, hF⟩ := hS
  choose u hu hgu using fun i => (hg i).1
  set den : Fin I → LetA O n := fun i => ∏ s ∈ Finset.range (e + 1), ps W s ^ (-(α i s)).toNat with hden
  set num : Fin I → LetA O n := fun i => ∏ s ∈ Finset.range (e + 1), ps W s ^ (α i s).toNat with hnum
  set DEN : LetA O n := ∏ i, den i with hDEN
  set DENx : Fin I → LetA O n := fun i => ∏ i' ∈ Finset.univ.erase i, den i' with hDENx
  have hDENi : ∀ i, DEN = den i * DENx i := fun i => (Finset.mul_prod_erase _ _ (Finset.mem_univ i)).symm
  set Nn : Fin I → LetA O n := fun i => letE a' * num i * u i * DENx i with hNn
  have hLetA : ∀ m, DEN * lA W ^ κ * aa' m = ps W 0 ^ H * ∑ i, Nn i * algebraMap O (LetA O n) (c₀ i m) := by
    intro m
    apply W.EE_inj
    have h1 := hF m
    simp only at h1
    have hfw' : algebraMap (LetA O n) W.EE (aa' m) = algebraMap (LetA O n) W.EE (ps W 0 ^ H) * f m :=
      (hfw m).symm
    have h2 : algebraMap (LetA O n) W.EE (DEN * lA W ^ κ * aa' m) =
        algebraMap (LetA O n) W.EE (DEN * ps W 0 ^ H) * (lE W κ * f m) := by
      rw [map_mul (algebraMap (LetA O n) W.EE) (DEN * lA W ^ κ) (aa' m), hfw', Formalism.MainNotions.UnusedSlot80.LevC.lE_eq,
        map_mul, map_mul]
      ring

    rw [h2, h1, map_mul (algebraMap (LetA O n) W.EE) (ps W 0 ^ H), map_sum, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun i _ => ?_
    have hgi := hgu i
    rw [hDENi i, IsScalarTower.algebraMap_apply O (LetA O n) W.EE (c₀ i m)]
    calc algebraMap (LetA O n) W.EE (den i * DENx i * ps W 0 ^ H) *
          (g i * algebraMap (LetA O n) W.EE (algebraMap O (LetA O n) (c₀ i m)))
        = algebraMap (LetA O n) W.EE (ps W 0 ^ H) * algebraMap (LetA O n) W.EE (DENx i) *
          (algebraMap (LetA O n) W.EE (den i) * g i) *
            algebraMap (LetA O n) W.EE (algebraMap O (LetA O n) (c₀ i m)) := by
          simp only [map_mul]; ring
      _ = _ := by
        rw [hgi]
        simp only [hNn, map_mul]
        ring

  have hpL : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  have hLetA' : ∀ j, DEN * lA W ^ κ * ((w0 ^ H * (letE a' * W.π₀ * w j)) * (W.q ^ H * W.φA (abelian₂ W A a e))) =
      W.q ^ (H + H) * ∑ i, Nn i * algebraMap O (LetA O n) (c₀ i j) := by
    intro j
    have h := hLetA j
    simp only [haa'] at h
    have hU' : W.φA (abelian₂ W A a e) = U := by rw [hUdef]; rfl
    rw [hU', pow_add, hw0, mul_pow]
    linear_combination (w0 ^ H * w0 ^ H * ps W 0 ^ H) * h
  have hexp : ∀ ζ : LL, IsPrimitiveRoot ζ PD.p → ∀ j' : ℤ,
      W.levN T a' ζ ⟨W.Q ^ (H + H) • z, hK⟩ j' ∈ Formalism.MainNotions.WachCoordinates.FilLev W T a' 0 (((H + H : ℕ) : ℤ) - j') := by
    intro ζ hζ j'
    set Fil' : ℤ → Submodule LL (T.V ⊗[Qp] B) := fun u =>
      (Formalism.MainNotions.WachCoordinates.FilLev W T a' 0 u).comap (ιV PD (LL := LL) (V := T.V)) with hFil'
    have hFa : Antitone Fil' := fun u u' h => Submodule.comap_mono (Formalism.MainNotions.UnusedSlot80.LevR.filLev_anti W T a' 0 h)
    rw [Ti.hEq]
    show levB T a' ζ ⟨W.Q ^ (H + H) • z, hK⟩ j' ∈ Fil' (((H + H : ℕ) : ℤ) - j')

    set cj : Fin d → LetA O n := fun j => w0 ^ H * (letE a' * W.π₀ * w j) with hcj
    have hsub : (⟨W.Q ^ (H + H) • z, hK⟩ : ↥(W.N T)) =
        ∑ j, cj j • (⟨_, hZN j⟩ : ↥(W.N T)) := Subtype.ext (by
          rw [Submodule.coe_sum]
          simp only [Submodule.coe_smul]
          exact hdec)
    have hdecB : levB T a' ζ ⟨W.Q ^ (H + H) • z, hK⟩ j' =
        ∑ j, smulS (W.lev a' ζ (cj j)) (levB T a' ζ ⟨_, hZN j⟩) j' := by

      rw [hsub, map_sum, Finset.sum_apply]
      exact Finset.sum_congr rfl fun j _ => by rw [Formalism.MainNotions.UnusedSlot80.LevE.levB_smul W levB Ti.hEq Ti.hsupp]
    rw [hdecB]
    set N₀ : ℤ := (((PD.p - 1) * A.M PD.p : ℕ) : ℤ) + H with hN₀
    by_cases hlo : j' < N₀
    ·
      set vv : Fin d → T.V ⊗[Qp] B := fun j => ((PD.p : LL) ^ κ₀) •
        ((Formalism.WeaklyAdmissibleFiltrations.φVB PD (LL := LL) (V := T.V)) ^ (e + 1)) (cmpD W T (b j)) with hvv
      set g₁ : PowerSeries LL := W.lev a' ζ (W.q ^ H * W.φA (abelian₂ W A a e)) with hg₁
      have hagree : ∀ j, smulS (W.lev a' ζ (cj j)) (levB T a' ζ ⟨_, hZN j⟩) j' =
          smulS (W.lev a' ζ (cj j * (W.q ^ H * W.φA (abelian₂ W A a e)))) (fun k : ℤ => if k = 0 then vv j else 0) j' := by
        intro j
        obtain ⟨mj, hmj⟩ := Ti.hsupp T a' ζ ⟨_, hZN j⟩
        have hEF := Formalism.MainNotions.UnusedSlot80.LevE.expFrame0_of Ti C.hs C.hR C.hp0 C.h5 C.hH C.hCA A hA c' hc' T hT b sol hb
          e ζ hζ (A.M PD.p) κ₀ j (Hh j) (hHh j) H (hZN j)
        have h1 := Formalism.MainNotions.UnusedSlot80.LevE.smulS_congr_lt (LB_mono (fun k hk => hmj k hk) (min_le_left mj 0))
          (LB_mono (LB_smulS (LB_delta (vv j)) g₁) (min_le_right mj 0)) (W.lev a' ζ (cj j)) N₀ hEF j' hlo
        rw [h1, ← smulS_mul (LB_delta (vv j)), ← map_mul]
      rw [Finset.sum_congr rfl fun j _ => hagree j]

      obtain ⟨uD, huD, huDc⟩ : ∃ uD : PowerSeries LL, W.lev a' ζ DEN =
          PowerSeries.X ^ (∑ i, (-(α i 0)).toNat) * uD ∧ PowerSeries.constantCoeff uD ≠ 0 := by
        choose ui hui huic using fun i => lev_prod_ps Ti C.hR C.hp0 a' ζ hζ (fun s => (-(α i s)).toNat) (e + 1)
        refine ⟨∏ i, ui i, ?_, ?_⟩
        · rw [hDEN, map_prod, ← Finset.prod_pow_eq_pow_sum, ← Finset.prod_mul_distrib]
          exact Finset.prod_congr rfl fun i _ => by rw [hui i]; simp
        · rw [map_prod]; exact Finset.prod_ne_zero_iff.2 fun i _ => huic i
      have hl : W.lev a' ζ (lA W) = PowerSeries.C (PD.p : LL) := by
        unfold lA; rw [map_natCast, map_natCast]
      have hid : ∀ j, PowerSeries.C ((PD.p : LL) ^ κ) * (PowerSeries.X ^ (∑ i, (-(α i 0)).toNat) * uD) *
          W.lev a' ζ (cj j * (W.q ^ H * W.φA (abelian₂ W A a e))) =
          ∑ i, PowerSeries.C (algebraMap O LL (c₀ i j)) * W.lev a' ζ (W.q ^ (H + H) * Nn i) := by
        intro j
        rw [← huD]
        have h := congrArg (W.lev a' ζ) (hLetA' j)

        simp only [map_mul, map_pow, map_sum, hl] at h
        have h' : ∑ i, PowerSeries.C (algebraMap O LL (c₀ i j)) * W.lev a' ζ (W.q ^ (H + H) * Nn i) =
            W.lev a' ζ (W.q ^ (H + H)) * ∑ i, W.lev a' ζ (Nn i * algebraMap O (LetA O n) (c₀ i j)) := by
          rw [Finset.mul_sum]
          refine Finset.sum_congr rfl fun i _ => ?_
          rw [map_mul (W.lev a' ζ) (W.q ^ (H + H)) (Nn i), map_mul (W.lev a' ζ) (Nn i),
            AlgHom.commutes, PowerSeries.algebraMap_apply]
          ring
        rw [h']

        simp only [hcj, map_mul, map_pow]
        linear_combination h
      have hdg := dg_core hFa (fun j => W.lev a' ζ (cj j * (W.q ^ H * W.φA (abelian₂ W A a e)))) vv
        (fun i j => algebraMap O LL (c₀ i j)) (fun i => W.lev a' ζ (W.q ^ (H + H) * Nn i)) (fun i => α i 0)
        (∑ i, (-(α i 0)).toNat) uD huDc ((PD.p : LL) ^ κ) (pow_ne_zero _ hpL) (((H + H : ℕ) : ℤ)) hid
        (fun i => 2 * H + (α i 0).toNat + ∑ i' ∈ Finset.univ.erase i, (-(α i' 0)).toNat)
        (fun i => by
          have h1 : (∑ x, (((-(α x 0)).toNat : ℕ) : ℤ)) = (((-(α i 0)).toNat : ℕ) : ℤ) +
              ∑ x ∈ Finset.univ.erase i, (((-(α x 0)).toNat : ℕ) : ℤ) :=
            (Finset.add_sum_erase Finset.univ (fun x => (((-(α x 0)).toNat : ℕ) : ℤ)) (Finset.mem_univ i)).symm
          have h2 := Int.toNat_sub_toNat_neg (α i 0)
          push_cast
          rw [h1]
          omega)
        (fun i => by
          obtain ⟨u₀, hu₀, -⟩ := Formalism.MainNotions.N.Pv.LocalLengthBound.lev_q_simple W a' ζ hζ
          obtain ⟨un, hun, -⟩ := lev_prod_ps Ti C.hR C.hp0 a' ζ hζ (fun s => (α i s).toNat) (e + 1)
          have hq : (PowerSeries.X : PowerSeries LL) ^ (H + H) ∣ W.lev a' ζ (W.q ^ (H + H)) := by
            rw [map_pow, hu₀, mul_pow]; exact Dvd.intro _ rfl
          have hnu : (PowerSeries.X : PowerSeries LL) ^ (α i 0).toNat ∣ W.lev a' ζ (num i) := by
            rw [hnum]; simp only at hun ⊢; rw [hun]
            simp only [Nat.add_one_ne_zero, if_false]; exact Dvd.intro _ rfl
          have hde : (PowerSeries.X : PowerSeries LL) ^ (∑ i' ∈ Finset.univ.erase i, (-(α i' 0)).toNat) ∣
              W.lev a' ζ (DENx i) := by
            rw [hDENx]
            simp only
            rw [map_prod, ← Finset.prod_pow_eq_pow_sum]
            refine Finset.prod_dvd_prod_of_dvd _ _ fun i' _ => ?_
            obtain ⟨ud, hud, -⟩ := lev_prod_ps Ti C.hR C.hp0 a' ζ hζ (fun s => (-(α i' s)).toNat) (e + 1)
            rw [hden]; simp only at hud ⊢; rw [hud]
            simp only [Nat.add_one_ne_zero, if_false]; exact Dvd.intro _ rfl
          have h3 := mul_dvd_mul hq (mul_dvd_mul hnu hde)
          rw [← pow_add, ← pow_add] at h3
          rw [show 2 * H + (α i 0).toNat + ∑ i' ∈ Finset.univ.erase i, (-(α i' 0)).toNat =
            H + H + ((α i 0).toNat + ∑ i' ∈ Finset.univ.erase i, (-(α i' 0)).toNat) by ring]
          refine h3.trans (Dvd.intro (W.lev a' ζ (letE a') * W.lev a' ζ (u i)) ?_)
          rw [hNn]
          simp only [map_mul]
          ring)
        (fun i => by
          have hcond := (hg i).2 0 (by omega)
          show ιV PD (LL := LL) (V := T.V) (∑ j, algebraMap O LL (c₀ i j) • vv j) ∈
            Formalism.MainNotions.WachCoordinates.FilLev W T a' 0 (-(α i 0))
          have e1 : ∑ j, algebraMap O LL (c₀ i j) • vv j = ((PD.p : LL) ^ κ₀) • dvO W T (e + 1) b (c₀ i) := by
            unfold dvO dv
            rw [Finset.smul_sum]
            refine Finset.sum_congr rfl fun j _ => ?_
            rw [hvv]; simp only; rw [smul_comm]
          rw [e1, map_smul]
          exact Submodule.smul_mem _ _ (Submodule.mem_map_of_mem hcond))
      exact hdg j'
    ·
      rw [← hdecB]
      have hD := hmem T a' ζ ⟨_, hK⟩ j'
      obtain ⟨τ, hτ, hover⟩ := Formalism.MainNotions.UnusedSlot80.LevC.tau_over W C.hbij a'
      set Mw' : ℕ := Formalism.MainNotions.UnusedSlot80.PhiPowers.Mw A.G₀ A.S A.η (A.ty a') with hMw'
      have hJ : ∀ u, IsJumpV PD T.ρ τ u → -(Mw' : ℤ) ≤ u := fun u hu =>
        (Formalism.MainNotions.UnusedSlot80.PhiPowers.win_sub A.G₀ A.S A.η (A.ty a') (hA.2.2.2.2.1 a') (hT.2 a' τ hτ u hu)).1
      have hlow := Formalism.MainNotions.UnusedSlot80.LevC.fil_low W T a' τ hover C.hbij.2 Mw' hJ hD
      have hMH : Mw' ≤ H := by
        have := Formalism.MainNotions.UnusedSlot80.ArcC.hs_ge A hA c' hc' (e + 1) (e + 1) (by omega) le_rfl
        rwa [Nat.sub_self] at this
      have hHh : H ≤ A.h := Formalism.MainNotions.UnusedSlot80.ArcC.hs_le_h A hA a' (e + 1) 0
      have hlt := Formalism.MainNotions.UnusedSlot80.ArcC.two_h_lt A C.h5p
      have hle : ((H + H : ℕ) : ℤ) - j' ≤ -(Mw' : ℤ) := by
        have : (N₀ : ℤ) ≤ j' := by omega
        rw [hN₀] at this
        push_cast at this ⊢
        nlinarith
      have hF := Formalism.MainNotions.UnusedSlot80.LevR.filCris_anti T.ρ hle hlow
      show ιV PD (LL := LL) (V := T.V) (levB T a' ζ ⟨_, hK⟩ j') ∈ Formalism.MainNotions.WachCoordinates.FilLev W T a' 0 _
      refine Submodule.mem_map_of_mem (Submodule.mem_map.2 ⟨levB T a' ζ ⟨_, hK⟩ j', ⟨hF, ?_⟩, by simp⟩)
      simpa using hD
  have hz' : z ∈ W.N T := hMC T hT.1 a' z (H + H) hK hzl hexp
  exact ⟨z, ⟨hz', hzΔ⟩, hzl, (one_smul _ _).symm⟩

end Formalism.MainNotions.UnusedSlot80.LevM

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

theorem lev0MprL_of (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (h : AdmArcA D HW F Cm)
    (hMC : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL), CaseA K LL → 5 ≤ l →
      haveI := neZero_finrank_max_unramified K
      Formalism.MainNotions.N.Pv.LocalLengthBound.MemCrit ((HW l).W K 1 LL hG)) : LevelZeroModPRefinedLocal D HW := by
  intro l _ K LL hG hCA h5l A hA c' hc' T hT d b sol hb e
  have := neZero_finrank_max_unramified K
  have C := ctx_of D HW F Cm h l K LL hG hCA h5l
  have h4 := h.2.1
  exact LevM.lev0Mpr_of C (levETie_of D HW F Cm h4 l K LL hG) ((Cm l).C K 1 LL hG).tie.levB_mem
    (hMC l K LL hG hCA h5l) A hA c' hc' T hT b sol hb e

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelSeriesFirstFactorOrderOne =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesFinal =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesFinal", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantsGenerators\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.MemCrit\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfFrobeniusLevels\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsFracOL\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelSeriesFirstFactorOrderOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ConstantCoeffQZeroEqP\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.JumpsLetExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Pv.LocalLengthBound

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct Module Formalism.MainNotions.N.Pv.LocalLengthBound.Ser Formalism.MainNotions.N.Pv.LocalLengthBound.MC

section Pf

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} {PD : PeriodData G Qp K₀ K B BdR}
    (W : LocWach PD LL O v n)

theorem memCrit_of_free [NeZero n] (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hFr : IsFractionRing O LL)
    (h1 : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFree W) (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3W W) (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (hD : Formalism.MainNotions.RamifiedCoefficientChains.DdREqDcris PD LL) : MemCrit W := by
  apply Formalism.MainNotions.N.Pv.LocalLengthBound.memCrit_of <;> assumption

end Pf

theorem memCritL_of (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (h1f : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFreeGlobal D HW F) (h3 : Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm) (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F) (h11 : Formalism.MainNotions.RamifiedCoefficientChains.adm11 D) :
    ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL), CaseA K LL → 5 ≤ l →
      haveI := Formalism.MainNotions.UnusedSlot80.neZero_finrank_max_unramified K
      MemCrit ((HW l).W K 1 LL hG) := by
  intro l _ K LL hG hCA h5l
  haveI := Formalism.MainNotions.UnusedSlot80.neZero_finrank_max_unramified K
  have hCW : Formalism.MainNotions.LiftingTheory.CaseA ((HW l).W K 1 LL hG) :=
    Formalism.MainNotions.UnusedSlot80.caseA_of_unram' (D.loc l) (HW l) hG hCA.1 hCA.2.1
  have hLev := Formalism.MainNotions.UnusedSlot80.levCoeff_of_pt D HW F Cm h4 (Formalism.MainNotions.UnusedSlot80.points_exist_of_ring_condition D HW F h9) l K LL hCA h5l
  exact memCrit_of_free _ hCW (Formalism.MainNotions.UnusedSlot80.BCF.isFrac_OL LL) (h1f l K 1 LL hG) (h3 l K 1 LL hG) hLev
    (h5 l K 1 LL hG) (h11 l K LL).2.2

end Formalism.MainNotions.N.Pv.LocalLengthBound

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.ArcLiftingSetup

theorem arc_coordinates_final (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : AdmArcA D HW F Cm) (h1f : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFreeGlobal D HW F) (h11 : Formalism.MainNotions.RamifiedCoefficientChains.adm11 D) :
    ArcLiftingCoordinates D HW F Cm :=
  arc_coordinates_of_frobenius_levels D HW F Cm hA hA.2.1 hA.2.2.2.1
    (lev0MprL_of D HW F Cm hA (Formalism.MainNotions.N.Pv.LocalLengthBound.memCritL_of D HW F Cm h1f hA.1 hA.2.1 hA.2.2.1 hA.2.2.2.1 h11))

theorem split_case_A_final (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hA : AdmSplitA D HW F Cm) (hArc : AdmArcA D HW F Cm) (h1f : Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFreeGlobal D HW F)
    (h6 : Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F) (hWX : Formalism.MainNotions.LiftingTheory.WachKillsQuotients D HW F) (hFont : Formalism.MainNotions.InvariantsGenerators.LitFont D HW F)
    (h23 : Formalism.MainNotions.LiftingTheory.adm23 D HW F) (h17 : Formalism.MainNotions.TruncatedSeriesCountingBounds.adm9 D) (h11 : Formalism.MainNotions.RamifiedCoefficientChains.adm11 D) :
    SplittingArcLifting D HW F Cm :=
  split_case_A_of_hypotheses D HW F Cm hA hArc hArc.2.1 h6 hArc.2.2.2.1 hArc.2.2.2.2.1 hArc.2.2.2.2.2.1 hWX hFont h23 h17
    (lev0MprL_of D HW F Cm hArc
      (Formalism.MainNotions.N.Pv.LocalLengthBound.memCritL_of D HW F Cm h1f hArc.1 hArc.2.1 hArc.2.2.1 hArc.2.2.2.1 h11))

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesFinal =====
