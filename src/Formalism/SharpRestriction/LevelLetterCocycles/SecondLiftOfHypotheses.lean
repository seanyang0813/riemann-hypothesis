module

public import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingInputs
public import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed
public import Formalism.SharpRestriction.LevelLetterCocycles.IsTruncIff
public import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules
public import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts
public import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity
public import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg
public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInIInPNPowSmulSubMap
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVOfNotJump
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.CoboundaryMemInvariantCocycles, Formalism.SharpRestriction.LevelLetterCocycles.ExistsLinearLiftOfFree, Formalism.SharpRestriction.LevelLetterCocycles.FiltrationQuotientFiniteDimensional, Formalism.SharpRestriction.LevelLetterCocycles.LevelMembershipPackage, Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftAtSituation, Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftOfHypotheses

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.CoboundaryMemInvariantCocycles =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.CoboundaryMemInvariantCocycles", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineLiftingInputs\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2C

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc
open Formalism.MainNotions.CrystallineLiftingInputs (DL InPN)
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L
open Formalism.MainNotions.N.Pv.LocalLengthBound

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem coboundary_mem_invariant_cocycles {m : W.DD T} (hm : ∀ δ ∈ W.DelF, W.γD T δ m = m) :
    ((W.φD T m - m, W.γD T W.gamK m - m) : W.DD T × W.DD T) ∈ W.wachCocyclesDelta T := by
  refine (RL.mem_Z1DΔ_iff W T _).2 ⟨?_, fun δ hδ => ⟨?_, ?_⟩⟩
  · simp only [map_sub, W.φγ_comm]
    abel
  · simp only [map_sub, gammaD_frobenius_comm, hm δ hδ]
  · simp only [map_sub]
    rw [← W.γD_mul, mul_comm, W.γD_mul, hm δ hδ]

theorem sum_clK_eq_pow_smul_clK_of_level_decomposition [NeZero n] (M s σ : ℕ) (ev : Finset (ZMod n)) (hgam : W.gamK = W.gam)
    (hπ : W.π₀ ∈ W.AΔ)
    (hF2 : ∀ w, InPN W T M w → ∃! z, InPN W T M z ∧ W.φD T z - z = w)
    (hF3 : ∀ (i : ZMod n) (x : ↥(W.wachCocyclesDelta T)), DL W T i (x : W.DD T × W.DD T).1 →
      InPN W T M (x : W.DD T × W.DD T).2 → InPN W T M (x : W.DD T × W.DD T).1 → W.clK T x = 0)
    (hcob : ∀ x : ↥(W.wachCocyclesDelta T), (∃ m : W.DD T, (∀ δ ∈ W.DelF, W.γD T δ m = m) ∧
      (x : W.DD T × W.DD T) = (W.φD T m - m, W.γD T W.gamK m - m)) → W.clK T x = 0)
    (yz : ↥(W.wachCocyclesDelta T)) (mE : W.DD T) (hmE : ∀ δ ∈ W.DelF, W.γD T δ mE = mE)
    (Y : ZMod n → W.DD T) (x : ZMod n → ↥(W.wachCocyclesDelta T))
    (hY1 : ((PD.p : ℕ) : O) ^ s • (yz : W.DD T × W.DD T).1 + (W.φD T mE - mE) = ∑ c ∈ ev, Y c)
    (hY2 : InPN W T M (((PD.p : ℕ) : O) ^ s • (yz : W.DD T × W.DD T).2 + (W.γ T mE - mE)))
    (hYg : ∀ c ∈ ev, InPN W T M (W.γ T (Y c) - Y c))
    (hYΔ : ∀ c ∈ ev, ∀ δ ∈ W.DelF, W.γD T δ (Y c) = Y c)
    (hx1 : ∀ c ∈ ev, DL W T (c + 1) ((x c : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y c) ∧
      InPN W T M ((x c : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y c))
    (hx2 : ∀ c ∈ ev, InPN W T M (x c : W.DD T × W.DD T).2) :
    ∑ c ∈ ev, W.clK T (x c) = ((PD.p : ℕ) : O) ^ (s + σ) • W.clK T yz := by
  have hγ : W.γ T = W.γD T W.gamK := by rw [hgam]; rfl

  have hZex : ∀ c, ∃ z, c ∈ ev → InPN W T M z ∧ W.φD T z - z = W.γ T (Y c) - Y c := by
    intro c
    by_cases hc : c ∈ ev
    · obtain ⟨z, hz⟩ := (hF2 _ (hYg c hc)).exists
      exact ⟨z, fun _ => hz⟩
    · exact ⟨0, fun h => (hc h).elim⟩
  choose Z hZ using hZex
  have hCmem : ∀ c (hc : c ∈ ev), ((Y c, Z c) : W.DD T × W.DD T) ∈ W.wachCocyclesDelta T := by
    intro c hc
    refine (RL.mem_Z1DΔ_iff W T _).2 ⟨?_, fun δ hδ => ⟨hYΔ c hc δ hδ, ?_⟩⟩
    · simp only
      rw [← hγ, (hZ c hc).2]
    · exact uniformizerLattice_delta_fixed W T hπ (hZ c hc).1 δ hδ
  obtain ⟨C, hC⟩ : ∃ C : ZMod n → ↥(W.wachCocyclesDelta T), ∀ c (hc : c ∈ ev),
      (C c : W.DD T × W.DD T) = (Y c, Z c) :=
    ⟨fun c => if hc : c ∈ ev then ⟨(Y c, Z c), hCmem c hc⟩ else 0, fun c hc => by simp [hc]⟩

  have hxc : ∀ c ∈ ev, W.clK T (x c) = ((PD.p : ℕ) : O) ^ σ • W.clK T (C c) := by
    intro c hc
    have h0 := hF3 (c + 1) (x c - ((PD.p : ℕ) : O) ^ σ • C c)
      (by simpa [hC c hc] using (hx1 c hc).1)
      (by simpa [hC c hc] using
        (uniformizerLattice_sub W T (hx2 c hc) (Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_smul W T (((PD.p : ℕ) : O) ^ σ) (hZ c hc).1)))
      (by simpa [hC c hc] using (hx1 c hc).2)
    have e := (W.clK T).map_sub (x c) (((PD.p : ℕ) : O) ^ σ • C c)
    have e' := (W.clK T).map_smul (((PD.p : ℕ) : O) ^ σ) (C c)
    have h1 := e.symm.trans h0
    rw [sub_eq_zero] at h1
    exact h1.trans e'

  let cb : ↥(W.wachCocyclesDelta T) := ⟨_, coboundary_mem_invariant_cocycles W T hmE⟩
  have hsum : ∑ c ∈ ev, C c = ((PD.p : ℕ) : O) ^ s • yz + cb := by
    have hyz := ((RL.mem_Z1DΔ_iff W T _).1 yz.2).1
    apply Subtype.ext
    rw [Submodule.coe_sum]
    refine Prod.ext ?_ ?_
    · rw [Prod.fst_sum, Finset.sum_congr rfl (fun c hc => congrArg Prod.fst (hC c hc))]
      simp only [Submodule.coe_add, Submodule.coe_smul, Prod.fst_add, Prod.smul_fst, cb]
      exact hY1.symm
    · rw [Prod.snd_sum, Finset.sum_congr rfl (fun c hc => congrArg Prod.snd (hC c hc))]
      simp only [Submodule.coe_add, Submodule.coe_smul, Prod.snd_add, Prod.smul_snd, cb]
      rw [← hγ]
      have hw : InPN W T M (W.γ T (∑ c ∈ ev, Y c) - ∑ c ∈ ev, Y c) := by

        rw [map_sum, ← Finset.sum_sub_distrib]
        exact Finset.sum_induction _ _ (fun a b ha hb => Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_add W T ha hb)
          (uniformizerLattice_zero W T M) (fun c hc => hYg c hc)
      refine (hF2 _ hw).unique ⟨?_, ?_⟩ ⟨hY2, ?_⟩
      · exact Finset.sum_induction _ _ (fun a b ha hb => Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_add W T ha hb)
          (uniformizerLattice_zero W T M) (fun c hc => (hZ c hc).1)
      · set_option synthInstance.maxHeartbeats 100000 in
          rw [map_sum, ← Finset.sum_sub_distrib, map_sum, ← Finset.sum_sub_distrib]
        exact Finset.sum_congr rfl fun c hc => (hZ c hc).2
      · rw [← hY1]
        have hyz' : W.γ T (yz : W.DD T × W.DD T).1 - (yz : W.DD T × W.DD T).1 =
            W.φD T (yz : W.DD T × W.DD T).2 - (yz : W.DD T × W.DD T).2 := by rw [hγ]; exact hyz
        simp only [map_add (f := _), map_sub, map_smul, gamma_frobenius_comm]
        have e : ((PD.p : ℕ) : O) ^ s • W.γ T (yz : W.DD T × W.DD T).1 =
            ((PD.p : ℕ) : O) ^ s • (yz : W.DD T × W.DD T).1 +
              ((PD.p : ℕ) : O) ^ s • (W.φD T (yz : W.DD T × W.DD T).2 - (yz : W.DD T × W.DD T).2) := by
          rw [← hyz', smul_sub]; abel
        rw [e, smul_sub]
        abel
  have hcb : W.clK T cb = 0 := hcob cb ⟨mE, hmE, rfl⟩
  have e1 : W.clK T (∑ c ∈ ev, C c) = ∑ c ∈ ev, W.clK T (C c) := map_sum (W.clK T) _ _
  have e3 := congrArg (W.clK T) hsum
  have e2 : W.clK T (((PD.p : ℕ) : O) ^ s • yz + cb) = ((PD.p : ℕ) : O) ^ s • W.clK T yz := by
    have h1 := (W.clK T).map_add (((PD.p : ℕ) : O) ^ s • yz) cb
    have h2 := (W.clK T).map_smul (((PD.p : ℕ) : O) ^ s) yz
    rw [hcb, add_zero] at h1
    exact h1.trans h2
  calc ∑ c ∈ ev, W.clK T (x c) = ∑ c ∈ ev, ((PD.p : ℕ) : O) ^ σ • W.clK T (C c) :=
        Finset.sum_congr rfl hxc
    _ = ((PD.p : ℕ) : O) ^ σ • ∑ c ∈ ev, W.clK T (C c) := (Finset.smul_sum ..).symm
    _ = ((PD.p : ℕ) : O) ^ σ • W.clK T (∑ c ∈ ev, C c) := by rw [e1]
    _ = ((PD.p : ℕ) : O) ^ σ • W.clK T (((PD.p : ℕ) : O) ^ s • yz + cb) :=
        congrArg (fun u => ((PD.p : ℕ) : O) ^ σ • u) e3
    _ = ((PD.p : ℕ) : O) ^ σ • (((PD.p : ℕ) : O) ^ s • W.clK T yz) :=
        congrArg (fun u => ((PD.p : ℕ) : O) ^ σ • u) e2
    _ = ((PD.p : ℕ) : O) ^ (s + σ) • W.clK T yz := by rw [smul_smul, ← pow_add, add_comm σ s]

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2C

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.CoboundaryMemInvariantCocycles =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ExistsLinearLiftOfFree =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ExistsLinearLiftOfFree", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsTruncIff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2T

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc
open Formalism.MainNotions.CrystallineLiftingInputs (DL InPN pullJ fMX TCase)
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem basis_induction {R M ι : Type} [CommRing R] [AddCommGroup M] [Module R M] (b : Module.Basis ι R M)
    (P : M → Prop) (h0 : P 0) (hadd : ∀ x y, P x → P y → P (x + y))
    (hsmul : ∀ (a : R) x, P x → P (a • x)) (hb : ∀ k, P (b k)) : ∀ x, P x := by
  intro x
  have hx : x ∈ Submodule.span R (Set.range b) := by rw [b.span_eq]; trivial
  induction hx using Submodule.span_induction with
  | mem y hy => obtain ⟨k, rfl⟩ := hy; exact hb k
  | zero => exact h0
  | add y z _ _ hy hz => exact hadd y z hy hz
  | smul a y _ hy => exact hsmul a y hy

variable (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem exists_linear_lift_of_free [NeZero n] [IsDomain O] [IsPrincipalIdealRing O] (hZ : TTool2Z W)
    (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hp : 11 ≤ PD.p) {M η σ : ℕ} (hTC : TCase PD.p 1 M η σ)
    (hc : IsCrys PD T.ρ) (c : ZMod n) {FF : Type} [AddCommGroup FF] [Module O FF]
    [Module.Free O FF] [Module.Finite O FF] (F₁ : Submodule O FF) (ζL : FF →ₗ[O] W.DD T)
    (hζ : ∀ f, DL W T c (ζL f) ∧ InPN W T 1 (ζL f)) :
    ∃ tL : ↥F₁ →ₗ[O] W.DD T, ∀ f : ↥F₁, tL f ∈ pullJ W T c 1 ∧ DL W T (c + 1) (tL f) ∧
      (∃ p ∈ pullJ W T c 1, ((PD.p : ℕ) : O) ^ σ • W.φD T (ζL f) - (W.γ T (tL f) - tL f) =
        fMX W M η • p) ∧
      ∃ t', IsTrZ W T c 1 M η σ (ζL f) t' ∧ ∃ p ∈ pullJ W T c 1, tL f - t' = fMX W M η • p := by
  obtain ⟨Zex, Zpr, Zlin, -⟩ := hZ hA hp 1 M η σ hTC T hc c
  simp only [pow_one, Nat.cast_one] at Zpr
  let bF := Module.Free.chooseBasis O FF
  obtain ⟨r, b1⟩ := Submodule.basisOfPid bF F₁
  let tch : FF → W.DD T := fun f => Classical.epsilon (fun t => IsTrZ W T c 1 M η σ (ζL f) t)
  have htch : ∀ f, IsTrZ W T c 1 M η σ (ζL f) (tch f) := fun f =>
    Classical.epsilon_spec (Zex _ (hζ f).1 (hζ f).2)
  let tL : ↥F₁ →ₗ[O] W.DD T := b1.constr O (fun k => tch (b1 k : FF))
  refine ⟨tL, ?_⟩

  have hz0 : ∀ t, IsTrZ W T c 1 M η σ 0 t → ∃ p ∈ pullJ W T c 1, t = fMX W M η • p := by
    intro t ht
    have hd0 := invariantLetter_zero W T c
    have hp0 := uniformizerLattice_zero W T (k := 1)
    obtain ⟨p, hp, e⟩ := Zlin 0 0 0 0 t t t hd0 hp0 hd0 hp0 ht ht (by simpa using ht)
    exact ⟨p, hp, by simpa using e⟩
  refine basis_induction b1 _ ?_ ?_ ?_ ?_
  · obtain ⟨t0, ht0⟩ := Zex 0 (invariantLetter_zero W T c) (uniformizerLattice_zero W T 1)
    obtain ⟨p0, hp0, e0⟩ := hz0 t0 (by simpa using ht0)
    refine ⟨by simp, by simpa using invariantLetter_zero W T (c + 1), ⟨0, Submodule.zero_mem _, by simp⟩,
      t0, by simpa using ht0, -p0, Submodule.neg_mem _ hp0, ?_⟩
    simp [e0]
  · rintro x y ⟨hx1, hx2, ⟨px, hpx, ex⟩, tx, htx, qx, hqx, fx⟩ ⟨hy1, hy2, ⟨py, hpy, ey⟩, ty, hty, qy, hqy, fy⟩
    have hsum : ζL (x : FF) + ζL (y : FF) = ζL ((x + y : ↥F₁) : FF) := by
      rw [Submodule.coe_add, map_add (f := _)]
    obtain ⟨txy, htxy⟩ := Zex (ζL ((x + y : ↥F₁) : FF)) (hζ _).1 (hζ _).2
    obtain ⟨r1, hr1, e1⟩ := Zlin 1 1 _ _ tx ty txy (hζ x).1 (hζ x).2 (hζ y).1 (hζ y).2 htx hty
      (by rw [one_smul, one_smul, hsum]; exact htxy)
    refine ⟨by rw [map_add (f := _)]; exact Submodule.add_mem _ hx1 hy1,
      by rw [map_add (f := _)]; exact Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_add W T hx2 hy2,
      ⟨px + py, Submodule.add_mem _ hpx hpy, ?_⟩, txy, htxy, qx + qy - r1,
      Submodule.sub_mem _ (Submodule.add_mem _ hqx hqy) hr1, ?_⟩
    · rw [smul_add, ← ex, ← ey, Submodule.coe_add, map_add ζL, map_add (W.φD T), smul_add,
        map_add tL, map_add (W.γ T)]
      abel
    · rw [smul_sub, smul_add, ← fx, ← fy, ← e1, map_add tL, one_smul, one_smul]
      abel
  · rintro a x ⟨hx1, hx2, ⟨px, hpx, ex⟩, tx, htx, qx, hqx, fx⟩
    have hsm : a • ζL (x : FF) = ζL ((a • x : ↥F₁) : FF) := by
      rw [Submodule.coe_smul, map_smul]
    obtain ⟨tax, htax⟩ := Zex (ζL ((a • x : ↥F₁) : FF)) (hζ _).1 (hζ _).2
    obtain ⟨r1, hr1, e1⟩ := Zlin a 0 _ _ tx tx tax (hζ x).1 (hζ x).2 (hζ x).1 (hζ x).2 htx htx
      (by rw [zero_smul, add_zero, hsm]; exact htax)
    refine ⟨by rw [map_smul]; exact Submodule.smul_of_tower_mem _ a hx1,
      by rw [map_smul]; exact Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T a hx2,
      ⟨a • px, Submodule.smul_of_tower_mem _ a hpx, ?_⟩, tax, htax, a • qx - r1,
      Submodule.sub_mem _ (Submodule.smul_of_tower_mem _ a hqx) hr1, ?_⟩
    · rw [smul_comm (fMX W M η) a px, ← ex]
      simp only [map_smul, Submodule.coe_smul, smul_sub]
      rw [smul_comm]
    · rw [smul_sub, smul_comm (fMX W M η) a qx, ← fx, ← e1]
      simp only [map_smul, zero_smul, add_zero, smul_sub]
      abel
  · intro k
    have hk : tL (b1 k) = tch (b1 k : FF) := by simp [tL]
    obtain ⟨h1, h2, h3⟩ := Zpr _ _ (hζ _).1 (hζ _).2 (htch (b1 k : FF))
    refine ⟨by rw [hk]; exact h2, by rw [hk]; exact h1, by rw [hk]; exact h3, tch (b1 k : FF),
      htch _, 0, Submodule.zero_mem _, by rw [hk, sub_self, smul_zero]⟩

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2T

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ExistsLinearLiftOfFree =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.FiltrationQuotientFiniteDimensional =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.FiltrationQuotientFiniteDimensional", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExpRules\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PowerSeries.NoZeroDivisors\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVOfNotJump\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2E

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains Formalism.MainNotions.RamifiedCoefficientChains.S9 Formalism.MainNotions.N.Pv.LocalLengthBound TensorProduct
open Formalism.MainNotions.CrystallineLiftingInputs (DL)

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

variable (W : LocWach PD LL O v n)

theorem filtrationLevel_antitone (T : LocLat G Qp LL O) (i : ZMod n) {a b : ℤ} (hab : a ≤ b) :
    Formalism.MainNotions.WachCoordinates.FilLev W T i 0 b ≤ Formalism.MainNotions.WachCoordinates.FilLev W T i 0 a := by

  have hF : PD.Fil b ≤ PD.Fil a := by
    exact (antitone_int_of_succ_le PD.Fil_anti) hab
  unfold Formalism.MainNotions.WachCoordinates.FilLev Formalism.WeaklyAdmissibleFiltrations.FilCris
  apply Submodule.map_mono
  apply Submodule.map_mono
  apply inf_le_inf_right
  apply inf_le_inf_left
  apply Submodule.comap_mono
  unfold Formalism.WeaklyAdmissibleFiltrations.FilV
  intro x hx
  obtain ⟨y, rfl⟩ := LinearMap.mem_range.mp hx
  induction y using TensorProduct.induction_on with
  | zero => simp
  | tmul v f => exact LinearMap.mem_range.mpr ⟨v ⊗ₜ ⟨f.1, hF f.2⟩, by simp⟩
  | add y z hy hz =>
    rw [map_add (f := _)]
    exact Submodule.add_mem _ (hy (LinearMap.mem_range_self _ _)) (hz (LinearMap.mem_range_self _ _))

theorem filtration_quotient_finiteDimensional [NeZero n] (hD : Sh.FilDim W) {d : ℕ} {T₁ T₂ : LocLat G Qp LL O}
    {F : LatHom T₁.L T₂.L} {b : ZMod n → ℕ} {S η m : ℕ} (hDq : DdREqDcris PD LL)
    (hS : SetCS W d T₁ T₂ F b S η m) (i : ZMod n) :
    FiniteDimensional LL ↥((Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ))).map
        (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0).mkQ) ∧
      finrank LL ↥((Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ))).map
        (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0).mkQ) ≤ m := by
  obtain ⟨hA, -, -, -, -, ⟨-, hcr, -⟩, -, hm, -, -⟩ := hS

  let e : K₀ ≃ₐ[Qp] K := AlgEquiv.ofBijective (IsScalarTower.toAlgHom Qp K₀ K) hA.1
  let τ : K →ₐ[Qp] LL := (W.emb i).comp e.symm.toAlgHom
  have hτ' : τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = W.emb i := by
    ext x
    exact congrArg (W.emb i) (e.symm_apply_apply x)
  have hτ : Formalism.MainNotions.LiftingTheory.Over W τ i := hτ'
  obtain ⟨-, hdiff⟩ := hD hA T₂ hcr i τ hτ
  obtain ⟨hfinE, -, hFR⟩ := (hDq hA.1 T₂.V T₂.ρ hcr).2 τ
  haveI := hfinE

  have hle : ∀ a : ℤ, Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 a ≤ DdRE PD T₂.ρ τ := by
    intro a
    have h1 : Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 a = FildR PD T₂.ρ τ a := by
      rw [hFR a, hτ']
      unfold Formalism.MainNotions.WachCoordinates.FilLev
      rw [Nat.cast_zero, sub_zero, pow_zero]
      congr 1
      exact Submodule.map_id _
    rw [h1]
    exact inf_le_left
  have hfin : ∀ a : ℤ, FiniteDimensional LL (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 a) := fun a =>
    Module.Finite.of_injective (Submodule.inclusion (hle a)) (Submodule.inclusion_injective (hle a))
  haveI := hfin (-(η : ℤ))
  haveI := hfin 0
  have h0E : Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0 ≤ Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ)) :=
    filtrationLevel_antitone W T₂ i (by omega)
  let g := (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0).mkQ ∘ₗ (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ))).subtype
  have hrange : (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ))).map (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0).mkQ =
      LinearMap.range g := by
    rw [LinearMap.range_comp, Submodule.range_subtype]
  have hker : LinearMap.ker g =
      (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0).comap (Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 (-(η : ℤ))).subtype := by
    rw [LinearMap.ker_comp, Submodule.ker_mkQ]
  have hrn := LinearMap.finrank_range_add_finrank_ker g
  rw [hker, (Submodule.comapSubtypeEquivOfLe h0E).finrank_eq] at hrn
  have h1 : Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 ((η : ℤ) + 1) ≤ Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0 :=
    filtrationLevel_antitone W T₂ i (by omega)
  have hmono : finrank LL ↥(Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 ((η : ℤ) + 1)) ≤
      finrank LL ↥(Formalism.MainNotions.WachCoordinates.FilLev W T₂ i 0 0) := by
    rw [← (Submodule.comapSubtypeEquivOfLe h1).finrank_eq]
    exact Submodule.finrank_le _
  have hsum := hdiff (-(η : ℤ)) ((η : ℤ) + 1) (by omega)
  have hIco : Finset.Ico (-(η : ℤ)) ((η : ℤ) + 1) = Finset.Icc (-(η : ℤ)) (η : ℤ) := by
    ext x
    simp only [Finset.mem_Ico, Finset.mem_Icc]
    omega
  rw [hIco] at hsum
  have hmm := hm i τ hτ
  rw [hrange]
  refine ⟨inferInstance, ?_⟩
  omega

theorem level_q_pow_ne_zero [NeZero n] (hR : Sh.ExpRing W) (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (i : ZMod n) (ζ : LL)
    (hζ : IsPrimitiveRoot ζ PD.p) (k : ℕ) : W.lev i ζ (Formalism.MainNotions.LiftingTheory.qp W ^ k) ≠ 0 := by

  obtain ⟨⟨u, hu, hq⟩, -, -⟩ := hR hA i ζ hζ
  rw [map_pow, hq]
  exact pow_ne_zero _ (mul_ne_zero hu.ne_zero PowerSeries.X_ne_zero)

private lemma exists_finset_card_le_span_eq_top_of_fg {O₁ L₁ : Type} [CommRing O₁] [IsDomain O₁] [IsPrincipalIdealRing O₁]
    [Field L₁] [Algebra O₁ L₁] [IsFractionRing O₁ L₁] {r : ℕ} (Q : Submodule O₁ (Fin r → L₁))
    (hQ : Q.FG) : ∃ s : Finset Q, s.card ≤ r ∧ Submodule.span O₁ (↑s : Set Q) = ⊤ := by
  haveI : Module.Finite O₁ Q := Module.Finite.iff_fg.mpr hQ
  haveI : Module.Free O₁ Q := Module.free_of_finite_type_torsion_free'
  let bQ := Module.finBasis O₁ Q
  refine ⟨Finset.univ.image bQ, ?_, ?_⟩
  · refine Finset.card_image_le.trans ?_
    rw [Finset.card_univ, Fintype.card_fin]
    have hli : LinearIndependent O₁ (fun j => (bQ j : Fin r → L₁)) :=
      bQ.linearIndependent.map' Q.subtype (Submodule.ker_subtype Q)
    have hli' : LinearIndependent L₁ (fun j => (bQ j : Fin r → L₁)) :=
      (LinearIndependent.iff_fractionRing (R := O₁) (K := L₁)).mp hli
    have h := hli'.fintype_card_le_finrank
    simpa using h
  · rw [Finset.coe_image, Finset.coe_univ, Set.image_univ]
    exact bQ.span_eq

theorem passage_to_quotient [NeZero n] (hK : Sh.LemK W) (hD : Sh.FilDim W) (hR : Sh.ExpRing W)
    (hE : Sh.ExpRules W) {d : ℕ} {T₁ T₂ : LocLat G Qp LL O} {F : LatHom T₁.L T₂.L}
    {b : ZMod n → ℕ} {S η m : ℕ} (hDq : DdREqDcris PD LL) (hS : SetCS W d T₁ T₂ F b S η m)
    [IsDomain O] [IsPrincipalIdealRing O] [IsFractionRing O LL]
    {FF : Type} [AddCommGroup FF] [Module O FF] [Module.Finite O FF] (F₁ : Submodule O FF)
    (uh : ZMod n → ↥F₁ →ₗ[O] W.DD T₂)
    (hq : ∀ c ∈ evens n d, ∀ f, Formalism.MainNotions.LiftingTheory.qp W ^ η • uh c f ∈ W.N T₂)
    (hdl : ∀ c ∈ evens n d, ∀ f, DL W T₂ (c + 1) (uh c f))
    (hg : ∀ c ∈ evens n d, ∀ f, W.γ T₂ (uh c f) - uh c f ∈ W.N T₂) (lenO : ℕ∞) (cc : ℝ) :
    ∃ F₂ : Submodule O FF, F₂ ≤ F₁ ∧ PChain lenO m cc F₁ F₂ (evens n d).card 0 ∧
      (m = 0 → F₂ = F₁) ∧ ∀ c ∈ evens n d, ∀ f : ↥F₁, (f : FF) ∈ F₂ → uh c f ∈ W.N T₂ := by
  have hS0 := hS
  obtain ⟨hA, -, -, -, ⟨ζ, hζ⟩, ⟨-, hcr, -⟩, -, -, -, -⟩ := hS0

  have key : ∀ c ∈ evens n d, ∃ (r : ℕ) (ψ : ↥F₁ →ₗ[O] (Fin r → LL)), r ≤ m ∧
      ∀ f, ψ f = 0 ↔ uh c f ∈ W.N T₂ := by
    intro c hc
    have hex := fun f : ↥F₁ => (hE hA T₂ hcr (c + 1) ζ hζ).1 (uh c f) _ (hq c hc f)
      (level_q_pow_ne_zero W hR hA (c + 1) ζ hζ η)
    let D : ↥F₁ → ℤ → T₂.V ⊗[Qp] BdR := fun f => (hex f).exists.choose
    have hD1 := fun f : ↥F₁ => (hex f).exists.choose_spec
    have hadd : ∀ f g, D (f + g) = D f + D g := fun f g =>
      (hex (f + g)).unique (hD1 (f + g)) (by
        have h := (hE hA T₂ hcr (c + 1) ζ hζ).2.2.1 _ _ _ _ (hD1 f) (hD1 g)
        rw [← (uh c).map_add f g] at h
        exact h)
    have hsm : ∀ (a : O) f, D (a • f) = fun k => algebraMap O LL a • D f k := fun a f =>
      (hex (a • f)).unique (hD1 (a • f)) (by
        have h := (hE hA T₂ hcr (c + 1) ζ hζ).2.2.2.1 a _ _ (hD1 f)
        rw [← (uh c).map_smul a f] at h
        exact h)
    have hLK : ∀ f, D f 0 ∈ Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 (-(η : ℤ)) ∧
        (uh c f ∈ W.N T₂ ↔ D f 0 ∈ Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0) := fun f =>
      (hK hA T₂ hcr (c + 1) ζ hζ (uh c f) (D f) (hdl c hc f) (hD1 f)
        ⟨0, by rw [pow_zero, one_smul]; exact hg c hc f⟩).2 η (hq c hc f)
    obtain ⟨hfinQ, hrk⟩ := filtration_quotient_finiteDimensional W hD hDq hS (c + 1)
    let Mq := (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 (-(η : ℤ))).map
      (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ
    haveI hfinQ' : FiniteDimensional LL ↥Mq := hfinQ
    let bas := Module.finBasis LL ↥Mq
    let φ0 : ↥F₁ → ↥Mq := fun f =>
      ⟨(Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D f 0), Submodule.mem_map_of_mem (hLK f).1⟩
    have hφadd : ∀ f g, φ0 (f + g) = φ0 f + φ0 g := fun f g => by
      apply Subtype.ext
      show (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D (f + g) 0) =
        (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D f 0) +
          (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D g 0)
      rw [hadd f g, Pi.add_apply]
      exact map_add _ _ _
    have hφsmul : ∀ (a : O) f, φ0 (a • f) = algebraMap O LL a • φ0 f := fun a f => by
      apply Subtype.ext
      show (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D (a • f) 0) =
        algebraMap O LL a • (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D f 0)
      rw [hsm a f]
      exact LinearMap.map_smul _ _ _
    refine ⟨Module.finrank LL ↥Mq,
      { toFun := fun f => bas.equivFun (φ0 f), map_add' := ?_, map_smul' := ?_ }, hrk, ?_⟩
    · intro f g
      show bas.equivFun (φ0 (f + g)) = bas.equivFun (φ0 f) + bas.equivFun (φ0 g)
      rw [hφadd, map_add (f := _)]
    · intro a f
      show bas.equivFun (φ0 (a • f)) = a • bas.equivFun (φ0 f)
      rw [hφsmul, LinearEquiv.map_smul, algebraMap_smul]
    · intro f
      show bas.equivFun (φ0 f) = 0 ↔ uh c f ∈ W.N T₂
      rw [LinearEquiv.map_eq_zero_iff, (hLK f).2]
      constructor
      · intro h
        have h' : (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D f 0) = 0 := congrArg Subtype.val h
        rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero] at h'
        exact h'
      · intro h
        apply Subtype.ext
        show (Formalism.MainNotions.WachCoordinates.FilLev W T₂ (c + 1) 0 0).mkQ (D f 0) = 0
        rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero]
        exact h

  have main : ∀ l : List (ZMod n), (∀ c ∈ l, c ∈ evens n d) → ∃ (k : ℕ) (Fl : ℕ → Submodule O FF),
      k ≤ l.length ∧ Fl 0 = F₁ ∧ Fl k ≤ F₁ ∧ (∀ i < k, PStep lenO m cc (Fl i) (Fl (i + 1)) True) ∧
      (m = 0 → Fl k = F₁) ∧ ∀ c ∈ l, ∀ f : ↥F₁, (f : FF) ∈ Fl k → uh c f ∈ W.N T₂ := by
    intro l
    induction l with
    | nil =>
      intro _
      exact ⟨0, fun _ => F₁, Nat.zero_le _, rfl, le_rfl, fun i hi => absurd hi (Nat.not_lt_zero _),
        fun _ => rfl, fun c hc => by simp at hc⟩
    | cons a l ih =>
      intro hsub
      obtain ⟨k, Fl, hk, h0, hFl, hstep, hm0, hN⟩ := ih (fun c hc => hsub c (by simp [hc]))
      have haE : a ∈ evens n d := hsub a (by simp)
      obtain ⟨r, ψ, hr, hψ⟩ := key a haE
      let C : Submodule O FF := Fl k ⊓ (LinearMap.ker ψ).map F₁.subtype
      have hnew : PStep lenO m cc (Fl k) C True := by
        let ob0 : ↥(Fl k) →ₗ[O] (Fin r → LL) := ψ ∘ₗ Submodule.inclusion hFl
        haveI : Module.Finite O ↥(Fl k) := Module.Finite.iff_fg.mpr (IsNoetherian.noetherian (Fl k))
        have hfg : (LinearMap.range ob0).FG := by
          rw [LinearMap.range_eq_map]
          exact (Module.finite_def.mp inferInstance).map ob0
        obtain ⟨s, hs, hspan⟩ := exists_finset_card_le_span_eq_top_of_fg (LinearMap.range ob0) hfg
        refine ⟨inf_le_left, ↥(LinearMap.range ob0), inferInstance, inferInstance, ob0.rangeRestrict,
          ?_, fun _ => ⟨s, hs.trans hr, hspan⟩, fun h => absurd trivial h⟩
        intro x
        rw [← LinearMap.mem_ker, LinearMap.ker_rangeRestrict, LinearMap.mem_ker]
        constructor
        · intro h0x
          exact Submodule.mem_inf.mpr ⟨x.2, Submodule.mem_map.mpr
            ⟨Submodule.inclusion hFl x, LinearMap.mem_ker.mpr h0x, rfl⟩⟩
        · intro hx
          obtain ⟨g, hg0, hgx⟩ := Submodule.mem_map.mp (Submodule.mem_inf.mp hx).2
          have hgeq : g = Submodule.inclusion hFl x := Subtype.ext hgx
          rw [hgeq] at hg0
          exact LinearMap.mem_ker.mp hg0
      have hC : m = 0 → C = Fl k := by
        intro h0m
        apply le_antisymm inf_le_left
        intro x hx
        have hxF : x ∈ F₁ := hFl hx
        have hr0 : r = 0 := by omega
        subst hr0
        exact Submodule.mem_inf.mpr ⟨hx, Submodule.mem_map.mpr
          ⟨⟨x, hxF⟩, LinearMap.mem_ker.mpr (Subsingleton.elim _ _), rfl⟩⟩
      refine ⟨k + 1, fun j => if j ≤ k then Fl j else C, by simp only [List.length_cons]; omega,
        ?_, ?_, ?_, ?_, ?_⟩
      · show (if 0 ≤ k then Fl 0 else C) = F₁
        rw [if_pos (Nat.zero_le k)]
        exact h0
      · show (if k + 1 ≤ k then Fl (k + 1) else C) ≤ F₁
        rw [if_neg (by omega)]
        exact inf_le_left.trans hFl
      · intro i hi
        show PStep lenO m cc (if i ≤ k then Fl i else C) (if i + 1 ≤ k then Fl (i + 1) else C) True
        by_cases hik : i < k
        · rw [if_pos hik.le, if_pos (show i + 1 ≤ k by omega)]
          exact hstep i hik
        · have hik' : i = k := by omega
          rw [if_pos (by omega), if_neg (by omega), hik']
          exact hnew
      · intro h0m
        show (if k + 1 ≤ k then Fl (k + 1) else C) = F₁
        rw [if_neg (by omega), hC h0m, hm0 h0m]
      · intro c hc f hf
        have hf' : (f : FF) ∈ C := by
          have h : (f : FF) ∈ (if k + 1 ≤ k then Fl (k + 1) else C) := hf
          rwa [if_neg (by omega)] at h
        rcases List.mem_cons.mp hc with hca | hc'
        · obtain ⟨g, hg0, hgf⟩ := Submodule.mem_map.mp (Submodule.mem_inf.mp hf').2
          have hgeq : g = f := Subtype.ext hgf
          rw [hgeq] at hg0
          rw [hca]
          exact (hψ f).mp (LinearMap.mem_ker.mp hg0)
        · exact hN c hc' f (Submodule.mem_inf.mp hf').1
  obtain ⟨k, Fl, hk, h0, hFl, hstep, hm0, hN⟩ :=
    main (evens n d).toList (fun c hc => Finset.mem_toList.mp hc)
  refine ⟨Fl k, hFl, ⟨k, Fl, Finset.range k, h0, rfl, Finset.Subset.refl _, ?_, ?_, ?_⟩, hm0, ?_⟩
  · rw [Finset.card_range]
    simpa using hk
  · simp
  · intro i hi
    have e : (i ∈ Finset.range k) = True := eq_true (Finset.mem_range.mpr hi)
    rw [e]
    exact hstep i hi
  · intro c hc f hf
    exact hN c (Finset.mem_toList.mpr hc) f hf

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2E

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.FiltrationQuotientFiniteDimensional =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelMembershipPackage =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelMembershipPackage", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsTruncIff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeBoundsOfThreeParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity\nimport Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2K

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.N.Pv.LocalLengthBound
open Formalism.MainNotions.CrystallineLiftingInputs (DL InPN pullJ fMX InI IsTrunc TCase)
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem level_membership_package [NeZero n] (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (c : ZMod n)
    (M η σ : ℕ) (hu : ∃ u : (LetA O n)ˣ, W.π₀ = (u : LetA O n) * letπ ^ (PD.p - 1))
    (hΔπ : ∀ δ ∈ W.DelF, W.γA δ W.π₀ = W.π₀) (hπ : W.π₀ ∈ W.AΔ) (hM1 : 1 ≤ M)
    (hηM : η ≤ (PD.p - 1) * M) (hZ : TTool2Z W) (hA : Formalism.MainNotions.LiftingTheory.CaseA W) (hp : 11 ≤ PD.p)
    (hTC : TCase PD.p 1 M η σ) (hc : IsCrys PD T.ρ)
    (h4 : ∀ x : W.DD T, x ∈ W.φpull T → (letE (c + 1) : LetA O n) • x = x →
      Formalism.MainNotions.LiftingTheory.qp W ^ η • x ∈ W.N T)
    (h5 : ∀ w z : W.DD T, InI W T c w → IsTrunc W T c 1 M η σ w z →
      ∃ x : ↥(W.wachCocyclesDelta T), (x : W.DD T × W.DD T).1 = z ∧ InPN W T M (x : W.DD T × W.DD T).2)
    (w ζφ ζc t Y : W.DD T) (hw : InI W T c w)
    (hgw : W.γ T w - w = (1 : O) • ζφ + (-(((PD.p : ℕ) : O) ^ σ)) • ζc)
    (hY : Y = W.φD T w + t) (hYΔ : ∀ δ ∈ W.DelF, W.γD T δ Y = Y)
    (hφ : DL W T c ζφ ∧ InPN W T M ζφ) (hζc : DL W T c ζc ∧ InPN W T 1 ζc)
    (ht : ∃ t', IsTrZ W T c 1 M η σ ζc t' ∧ ∃ p ∈ pullJ W T c 1, t - t' = fMX W M η • p) :
    ∃ (xc : ↥(W.wachCocyclesDelta T)) (κc : G → T.V) (hκc : κc ∈ latticeCocycles T.L),
      RhoCoc W T c M η σ w κc ∧ W.clK T xc = Submodule.Quotient.mk ⟨κc, hκc⟩ ∧
      DL W T (c + 1) ((xc : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y) ∧
      InPN W T M ((xc : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y) ∧
      InPN W T M (xc : W.DD T × W.DD T).2 := by
  obtain ⟨Zex, -, Zlin, Zvan⟩ := hZ hA hp 1 M η σ hTC T hc c
  have hζw : DL W T c (W.γ T w - w) := invariantLetter_sub' W T (invariantLetter_gamma W T hw.1) hw.1
  obtain ⟨tw, htw⟩ := Zex _ hζw hw.2.2
  have htr : IsTrunc W T c 1 M η σ w (((PD.p : ℕ) : O) ^ σ • ((W.φD T) ^ 1) w - tw) :=
    (isTrunc_iff W T c 1 M η σ _ _).2 ⟨tw, htw, rfl⟩
  obtain ⟨xc, hxc1, hxc2⟩ := h5 w _ hw htr
  obtain ⟨pκ, hpκ⟩ := Submodule.Quotient.mk_surjective _ (W.clK T xc)
  have hφPN1 := uniformizerLattice_antitone W T hM1 hπ hφ.2
  obtain ⟨t₁, ht₁⟩ := Zex _ hφ.1 hφPN1
  obtain ⟨p₂, hp₂, e₂⟩ := Zvan _ t₁ hφ.1 hφ.2 rfl hηM ht₁
  obtain ⟨t', ht', p₃, hp₃, e₃⟩ := ht
  obtain ⟨p₁, hp₁, e₁⟩ := Zlin 1 (-(((PD.p : ℕ) : O) ^ σ)) _ _ t₁ t' tw hφ.1 hφPN1 hζc.1 hζc.2 ht₁
    ht' (by rw [← hgw]; exact htw)
  have hp' : -(p₁ + p₂ + ((PD.p : ℕ) : O) ^ σ • p₃) ∈ pullJ W T c 1 :=
    Submodule.neg_mem _ (Submodule.add_mem _ (Submodule.add_mem _ hp₁ hp₂)
      (Submodule.smul_of_tower_mem _ _ hp₃))
  have hdiff : (xc : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y =
      fMX W M η • (-(p₁ + p₂ + ((PD.p : ℕ) : O) ^ σ • p₃)) := by
    rw [hxc1, hY, pow_one]
    exact Step2A.difference_of_factorisations _ _ _ _ _ _ _ _ _ _ e₁ e₂ e₃
  have hΔd : ∀ δ ∈ W.DelF, W.γD T δ ((xc : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y) =
      (xc : W.DD T × W.DD T).1 - ((PD.p : ℕ) : O) ^ σ • Y := by
    intro δ hδ
    rw [map_sub, map_smul, ((RL.mem_Z1DΔ_iff W T _).1 xc.2).2 δ hδ |>.1, hYΔ δ hδ]
  refine ⟨xc, pκ.1, pκ.2, ⟨hw, pκ.2, _, xc, htr, hxc1, hxc2, hpκ.symm⟩, hpκ.symm,
    ⟨?_, hΔd⟩, frobeniusPoly_smul_mem_lattice W T hu hΔπ c M η h4 hp' hdiff hΔd, hxc2⟩
  rw [hdiff, smul_comm, RL.pullJ_letter W T c hp']

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2K

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelMembershipPackage =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftAtSituation =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftAtSituation", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsTruncIff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.RkMultVNonneg\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CoboundaryMemInvariantCocycles\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsLinearLiftOfFree\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FiltrationQuotientFiniteDimensional\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity\nimport Formalism.SharpRestriction.LevelLetterCocycles.InvariantLetterIdempotentOfFixed\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelMembershipPackage\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.CmpOfMemX\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExistsInIInPNPowSmulSubMap\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.Pi0PowSmulInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains TensorProduct Formalism.MainNotions.N.Pv.LocalLengthBound
open Formalism.MainNotions.CrystallineLiftingInputs (DL InPN pullJ fMX InI)
open Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2L Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt.Step2I

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}


theorem second_lift_at_situation [NeZero n] (W : LocWach PD LL O v n) (hZ : TTool2Z W)
    (hF : Formalism.MainNotions.CrystallineLiftingInputs.FTool W) (hB : Sh.BasTool W) (hK : Sh.LemK W) (hD : Sh.FilDim W)
    (hR : Sh.ExpRing W) (hE : Sh.ExpRules W)
    (h2a : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → Formalism.MainNotions.DeltaInvariantLattices.p2aK W T)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hEx : DcrisExactStrict PD LL)
    (hCs : CrysSubQuot PD LL) (hDq : DdREqDcris PD LL) {d : ℕ} {T₁ T₂ : LocLat G Qp LL O}
    {F : LatHom T₁.L T₂.L} {b : ZMod n → ℕ} {S η m : ℕ} (hS : SetCS W d T₁ T₂ F b S η m)
    [IsDomain O] [IsDiscreteValuationRing O] [IsFractionRing O LL] (s₁ : ℕ) {FF : Type}
    [AddCommGroup FF] [Module O FF] [Module.Free O FF] [Module.Finite O FF]
    (g : FF →ₗ[O] ↥(latticeFiniteCocycles PD T₂.L)) (N : ℕ) (y z : FF →ₗ[O] W.DD T₂)
    (μ ν : ZMod n → FF →ₗ[O] W.DD T₂)
    (hX : Sh.ExtData W T₂ (MiW d b S η) (hiW d b S η) ⌈aR PD.p (hpar n b S + η)⌉₊ N g y z μ ν)
    (F₁ : Submodule O FF) (ms : ZMod n → FF →ₗ[O] W.DD T₂)
    (hO : Step1Out W T₂ d ⌈aR PD.p (hpar n b S + η)⌉₊ N s₁ z μ F₁ ms) :
    ∃ (F₂ : Submodule O FF) (w : ZMod n → ↥F₂ →ₗ[O] W.DD T₂),
      PChain (lenOl PD (O := O)) m (lenC (finrank LL T₂.V) m PD.p (hpar n b S + η) S) F₁ F₂
        (evens n d).card 0 ∧
      (m = 0 → F₂ = F₁) ∧
      (∀ c ∈ evens n d, ∀ f : ↥F₂, QPowSmulMemPullback W T₂ c η (w c f)) ∧
      ∀ f : ↥F₂, ∃ κ : ZMod n → G → T₂.V,
        (∀ c ∈ evens n d, RhoCoc W T₂ c (Formalism.MainNotions.CrystallineLiftingInputs.Mpar PD.p (hpar n b S)) η
          (sigC PD.p (hpar n b S) η) (w c f) (κ c)) ∧
        (((PD.p : O) ^ (s₁ + 2 * sigC PD.p (hpar n b S) η)) • (g (f : FF) : G → T₂.V) -
            (∑ c ∈ evens n d, κ c) ∈ latticeCoboundaries T₂.L ∨
          ((PD.p : O) ^ (s₁ + 2 * sigC PD.p (hpar n b S) η)) • (g (f : FF) : G → T₂.V) +
            (∑ c ∈ evens n d, κ c) ∈ latticeCoboundaries T₂.L) := by
  have hA : Formalism.MainNotions.LiftingTheory.CaseA W := hS.1
  have hp11 : 11 ≤ PD.p := hS.2.1
  have hn : Even n := hS.2.2.1
  obtain ⟨hc1, hc2, -⟩ := hS.2.2.2.2.2.1
  set M := Formalism.MainNotions.CrystallineLiftingInputs.Mpar PD.p (hpar n b S) with hMdef
  set σ := sigC PD.p (hpar n b S) η with hσdef
  have hM1 : 1 ≤ M := Nat.le_add_left _ _
  have hTC : Formalism.MainNotions.CrystallineLiftingInputs.TCase PD.p 1 M η σ := Or.inl ⟨rfl, hM1, rfl⟩
  have hηM : η ≤ (PD.p - 1) * M := by
    have hb0 : b 0 ≤ Finset.univ.sup b := Finset.le_sup (Finset.mem_univ 0)
    have := rk_eta_lt W hS 0
    exact Step2A.eta_le_parameter _ _ _ (by omega) (by unfold hpar; omega)

  have hfin : Module.finrank K₀ K = 1 := by
    rw [← (AlgEquiv.ofBijective (Algebra.ofId K₀ K) hA.1).toLinearEquiv.finrank_eq,
      Module.finrank_self]
  obtain ⟨hring, hmod⟩ := ((h9 T₂ hc2) hA.2.1 hA.2.2).2.2 hfin
  have hΔπ : ∀ δ ∈ W.DelF, W.γA δ W.π₀ = W.π₀ := hring.1
  have hπ : W.π₀ ∈ W.AΔ := hring.1
  have hu0 : ∃ u : (LetA O n)ˣ, W.π₀ = (u : LetA O n) * letπ ^ (PD.p - 1) := hring.2.2.1
  have hqpΔ : Formalism.MainNotions.LiftingTheory.qp W ∈ W.AΔ := qp_mem_AΔ W hring
  have hgam : W.gamK = W.gam := W.gamK_eq_one hA.2.1 hA.2.2

  obtain ⟨hJ2, hJ2U⟩ := Step2A.jumps_bounds_of_set W hEx hCs hDq hS
  have F2 := hF d T₁ T₂ F b S η m hS T₂ hc2 hJ2 hJ2U
  dsimp only at F2
  obtain ⟨F2c1, F2c2, F2c3, F2c4, F2c5⟩ := F2

  have Z2 := fun i => hZ hA hp11 1 M η σ hTC T₂ hc2 i

  have h5T := h5 T₂ (boxM d b S η) (boxH d b S η) hc2 (rk_jumpsLet₂ W hEx hCs hDq hS)
  have hev : ∀ c : ZMod n, c ∈ evens n d → (c.val + d) % 2 = 0 := fun c hc => mem_evens_iff.1 hc
  have hm2 : ∀ c : ZMod n, c ∈ evens n d → c - 2 ∈ evens n d := fun c hc => sub_two_mem_evens hn hc
  have h5D : ∀ c ∈ evens n d, ∀ x ∈ W.N T₂, DL W T₂ c x →
      Formalism.MainNotions.LiftingTheory.qp W ^ η • x ∈ pullJ W T₂ (c - 1) 1 := by
    intro c hc x hx hd
    have := q_pow_smul_mem_pullback W T₂ hA.2.1 hring hmod _ _ h5T c hx hd
    rwa [show boxH d b S η c = η by simp [boxH, hev c hc]] at this
  have hpol : ∀ c ∈ evens n d, ∀ x ∈ W.N T₂, DL W T₂ (c - 1) x →
      Formalism.MainNotions.LiftingTheory.qp W ^ (b c + S) • W.φD T₂ x ∈ W.N T₂ := by
    intro c hc x hx hd
    obtain ⟨u, hu, -⟩ := qp_unit W hA.2.1 hring
    have := h5T.1 c x (mem_Nl W T₂ hx hd.1)
    rw [show boxM d b S η c = b c + S by simp [boxM, hev c hc]] at this
    rw [hu, mul_pow, mul_smul]
    exact (W.N T₂).smul_mem _ this
  have hMi : ∀ c ∈ evens n d, MiW d b S η c = b c + S := fun c hc => by simp [MiW, hev c hc]
  have hMiU : ∀ c ∈ evens n d, MiW d b S η (c + 1) = η := fun c hc => by
    simp only [MiW]; rw [if_neg (succ_not_mem_evens hn hc)]
  have hhi : ∀ c ∈ evens n d, hiW d b S η c = η := fun c hc => by simp [hiW, hev c hc]

  obtain ⟨hX1, hX2⟩ := hX
  have hyz : ∀ f : FF, W.γ T₂ (y f) - y f = W.φD T₂ (z f) - z f ∧
      ∀ δ ∈ W.DelF, W.γD T₂ δ (y f) = y f ∧ W.γD T₂ δ (z f) = z f := by
    intro f
    obtain ⟨x0, -, hx0, -⟩ := hX1 f
    have hm := (RL.mem_Z1DΔ_iff W T₂ _).1 x0.2
    rw [hx0] at hm
    refine ⟨?_, hm.2⟩
    have h1 := hm.1
    rw [hgam] at h1
    exact h1

  let ζL : ZMod n → FF →ₗ[O] W.DD T₂ := fun c =>
    ((PD.p : ℕ) : O) ^ s₁ • (Step2A.letterIdempotentMap W T₂ c).comp z + (W.γ T₂ - LinearMap.id).comp (ms c)
  have hζL : ∀ c f, ζL c f = gammaDefectOfLetterLift W T₂ s₁ (z f) (fun c' => ms c' f) c := fun c f => rfl
  have hζ : ∀ c ∈ evens n d, ∀ f, DL W T₂ c (ζL c f) ∧ InPN W T₂ 1 (ζL c f) := by
    intro c hc f
    obtain ⟨hms, hPN, -⟩ := hO c hc f
    exact ⟨Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_add W T₂ (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _
      (invariantLetter_idempotent_of_fixed W T₂ (fun δ hδ => ((hyz f).2 δ hδ).2))) (invariantLetter_sub' W T₂ (invariantLetter_gamma W T₂ hms) hms), hPN⟩
  have htex : ∀ c, ∃ tL : ↥F₁ →ₗ[O] W.DD T₂, c ∈ evens n d → ∀ f : ↥F₁,
      tL f ∈ pullJ W T₂ c 1 ∧ DL W T₂ (c + 1) (tL f) ∧
      (∃ p ∈ pullJ W T₂ c 1, ((PD.p : ℕ) : O) ^ σ • W.φD T₂ (ζL c f) - (W.γ T₂ (tL f) - tL f) =
        fMX W M η • p) ∧
      ∃ t', IsTrZ W T₂ c 1 M η σ (ζL c f) t' ∧ ∃ p ∈ pullJ W T₂ c 1, tL f - t' = fMX W M η • p := by
    intro c
    by_cases hc : c ∈ evens n d
    · obtain ⟨tL, htL⟩ := Step2T.exists_linear_lift_of_free W T₂ hZ hA hp11 hTC hc2 c F₁ (ζL c) (hζ c hc)
      exact ⟨tL, fun _ => htL⟩
    · exact ⟨0, fun h => (hc h).elim⟩
  choose tL htL using htex

  let mhL : ZMod n → ↥F₁ →ₗ[O] W.DD T₂ := fun c =>
    ((PD.p : ℕ) : O) ^ σ • (W.φD T₂).comp ((ms c).comp F₁.subtype) +
      ((PD.p : ℕ) : O) ^ (s₁ + σ) • (Step2A.letterIdempotentMap W T₂ (c + 1)).comp (y.comp F₁.subtype) - tL c
  have hmh : ∀ c (f : ↥F₁), mhL c f =
      liftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f) c := fun c f => rfl
  let uhL : ZMod n → ↥F₁ →ₗ[O] W.DD T₂ := fun c =>
    ((PD.p : ℕ) : O) ^ N • mhL c - ((PD.p : ℕ) : O) ^ (s₁ + σ) • (μ (c + 1)).comp F₁.subtype
  have huh : ∀ c (f : ↥F₁), uhL c f = ((PD.p : ℕ) : O) ^ N •
      liftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f) c -
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • μ (c + 1) f := fun c f => rfl
  have hu : ∀ c ∈ evens n d, ∀ f : ↥F₁, ((PD.p : ℕ) : O) ^ N • ms c f -
      ((PD.p : ℕ) : O) ^ s₁ • μ c f ∈ W.N T₂ ∧
      DL W T₂ c (((PD.p : ℕ) : O) ^ N • ms c f - ((PD.p : ℕ) : O) ^ s₁ • μ c f) := by
    intro c hc f
    obtain ⟨hms, -, -, -, hin⟩ := hO c hc f
    exact ⟨hin f.2, invariantLetter_sub' W T₂ (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ hms)
      (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ (hX2 c f).1)⟩
  have hmhDL : ∀ c ∈ evens n d, ∀ f : ↥F₁,
      DL W T₂ (c + 1) (liftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f) c) := by
    intro c hc f
    obtain ⟨hms, -⟩ := hO c hc f
    exact invariantLetter_sub' W T₂ (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_add W T₂
      (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ (invariantLetter_frobenius_succ W T₂ hms))
      (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ (invariantLetter_idempotent_of_fixed W T₂ (fun δ hδ => ((hyz f).2 δ hδ).1))))
      (htL c hc f).2.1

  have hxi : ∀ c ∈ evens n d, ∀ f : ↥F₁,
      (∃ p ∈ pullJ W T₂ c 1, gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f) c =
        fMX W M η • p) ∧
      InPN W T₂ M (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f) c) ∧
      DL W T₂ (c + 1) (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f) c) := by
    intro c hc f
    obtain ⟨-, ht2, ⟨p, hp, ep⟩, -⟩ := htL c hc f
    have hx := cocycleXi_eq (W := W) (T := T₂) (s₁ := s₁) (σ := σ) (fun c' => ms c' f)
      (fun c' => tL c' f) (hyz f).1 c
    rw [← hζL] at hx
    rw [ep] at hx
    have hΔ : ∀ δ ∈ W.DelF, W.γD T₂ δ
        (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f) c) =
        gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f) c := by
      intro δ hδ
      rw [hx, ← ep]
      simp only [map_sub, map_smul, gammaD_frobenius_comm, gammaD_gamma_comm', ((hζ c hc f).1).2 δ hδ, ht2.2 δ hδ]
    refine ⟨⟨p, hp, hx⟩, frobeniusPoly_smul_mem_lattice W T₂ hu0 hΔπ c M η (fun x h1 h2 => F2c4 c x (hev c hc) h1 h2)
      hp hx hΔ, ⟨?_, hΔ⟩⟩
    rw [hx, smul_comm, RL.pullJ_letter W T₂ c hp]

  have hq : ∀ c ∈ evens n d, ∀ f, Formalism.MainNotions.LiftingTheory.qp W ^ η • uhL c f ∈ W.N T₂ := by
    intro c hc f
    obtain ⟨ht1, -, -⟩ := htL c hc f
    have e := Step2A.frobenius_lift_identity N s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f) (fun c' => μ c' f) c
    beta_reduce at e
    rw [huh, e]
    have h1 : Formalism.MainNotions.LiftingTheory.qp W ^ η • W.φD T₂ (((PD.p : ℕ) : O) ^ N • ms c f -
        ((PD.p : ℕ) : O) ^ s₁ • μ c f) ∈ W.N T₂ :=
      F2c4 c _ (hev c hc) (Submodule.subset_span ⟨_, (hu c hc f).1, rfl⟩)
        (letter_phi W T₂ (c + 1) (by rw [add_sub_cancel_right]; exact (hu c hc f).2.1))
    have h2 := (hX2 (c + 1) f).2.2.2.1
    rw [hMiU c hc, add_sub_cancel_right] at h2
    have h3 : Formalism.MainNotions.LiftingTheory.qp W ^ η • tL c f ∈ W.N T₂ :=
      F2c4 c _ (hev c hc) (RL.pullJ_le_φpull W T₂ c ht1) (RL.pullJ_letter W T₂ c ht1)
    rw [smul_sub, smul_add, smul_comm _ (((PD.p : ℕ) : O) ^ σ), smul_comm _ (((PD.p : ℕ) : O) ^ (s₁ + σ)),
      smul_comm _ (((PD.p : ℕ) : O) ^ N)]
    exact Submodule.sub_mem _ (Submodule.add_mem _ (Submodule.smul_of_tower_mem _ _ h1)
      (Submodule.smul_of_tower_mem _ _ h2)) (Submodule.smul_of_tower_mem _ _ h3)
  have hdl : ∀ c ∈ evens n d, ∀ f, DL W T₂ (c + 1) (uhL c f) := by
    intro c hc f
    rw [huh]
    exact invariantLetter_sub' W T₂ (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ (hmhDL c hc f))
      (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ (hX2 (c + 1) f).1)
  have hg : ∀ c ∈ evens n d, ∀ f, W.γ T₂ (uhL c f) - uhL c f ∈ W.N T₂ := by
    intro c hc f
    have e := Step2A.gamma_difference_identity N s₁ σ (y f) (z f) (fun c' => ms c' f) (fun c' => tL c' f)
      (fun c' => μ c' f) c
    beta_reduce at e
    rw [huh, e]
    exact Submodule.sub_mem _ (Submodule.smul_of_tower_mem _ _ (mem_of_mem_uniformizerLattice W T₂ (hxi c hc f).2.1))
      (Submodule.smul_of_tower_mem _ _ (mem_of_mem_uniformizerLattice W T₂ (hX2 (c + 1) f).2.2.1))
  obtain ⟨F₂, hle, hch, hm0, hPass⟩ := Step2E.passage_to_quotient W hK hD hR hE hDq hS F₁ uhL hq hdl hg
    (lenOl PD (O := O)) (lenC (finrank LL T₂.V) m PD.p (hpar n b S + η) S)

  let wL : ZMod n → ↥F₂ →ₗ[O] W.DD T₂ := fun c =>
    ((W.φD T₂).comp (mhL (c - 2)) +
      ((PD.p : ℕ) : O) ^ (s₁ + σ) • (Step2A.letterIdempotentMap W T₂ c).comp (y.comp F₁.subtype) -
      ((PD.p : ℕ) : O) ^ σ • (ms c).comp F₁.subtype).comp (Submodule.inclusion hle)
  have hw : ∀ c (f : ↥F₂), wL c f = frobeniusShiftDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f)
      (fun c' => tL c' (Submodule.inclusion hle f)) c := fun c f => rfl
  have hcm1 : ∀ c : ZMod n, c - 2 + 1 = c - 1 := fun c => by ring
  have hcm2 : ∀ c : ZMod n, c - 2 + 1 + 1 = c := fun c => by ring

  have hfacts : ∀ c ∈ evens n d, ∀ f : ↥F₂,
      uhL (c - 2) (Submodule.inclusion hle f) ∈ W.N T₂ ∧
      DL W T₂ (c - 1) (uhL (c - 2) (Submodule.inclusion hle f)) ∧
      DL W T₂ c (wL c f) := by
    intro c hc f
    have hc2' := hm2 c hc
    refine ⟨hPass (c - 2) hc2' _ f.2, by
      have := hdl (c - 2) hc2' (Submodule.inclusion hle f); rwa [hcm1] at this, ?_⟩
    rw [hw]
    obtain ⟨hms, -⟩ := hO c hc f
    have h1 := invariantLetter_frobenius_succ W T₂ (hmhDL (c - 2) hc2' (Submodule.inclusion hle f))
    rw [hcm2] at h1
    exact invariantLetter_sub' W T₂ (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_add W T₂ h1 (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _
      (invariantLetter_idempotent_of_fixed W T₂ (fun δ hδ => ((hyz f).2 δ hδ).1)))) (Formalism.MainNotions.RamifiedCoefficientChains.S9.dl_smul W T₂ _ hms)
  have hNw : ∀ c ∈ evens n d, ∀ f : ↥F₂, ((PD.p : ℕ) : O) ^ N • wL c f =
      W.φD T₂ (uhL (c - 2) (Submodule.inclusion hle f)) -
        ((PD.p : ℕ) : O) ^ σ • (((PD.p : ℕ) : O) ^ N • ms c f - ((PD.p : ℕ) : O) ^ s₁ • μ c f) +
        ((PD.p : ℕ) : O) ^ (s₁ + σ) • (((PD.p : ℕ) : O) ^ N • ((letE c : LetA O n) • y f) +
          W.φD T₂ (μ (c - 1) f) - μ c f) := by
    intro c hc f
    have e := Step2A.frobenius_difference_identity N s₁ σ (y f) (fun c' => ms c' f)
      (fun c' => tL c' (Submodule.inclusion hle f)) (fun c' => μ c' f) c
    beta_reduce at e
    rw [hw, e, huh, hcm1]
    rfl

  have hφxi : ∀ c ∈ evens n d, ∀ f : ↥F₁,
      InPN W T₂ M (W.φD T₂ (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f)
        (fun c' => tL c' f) (c - 2))) ∧
      DL W T₂ c (W.φD T₂ (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f) (z f) (fun c' => ms c' f)
        (fun c' => tL c' f) (c - 2))) := by
    intro c hc f
    obtain ⟨-, hPN, hDL⟩ := hxi (c - 2) (hm2 c hc) f
    rw [hcm1] at hDL
    have hDL2 := invariantLetter_frobenius_succ W T₂ hDL
    rw [sub_add_cancel] at hDL2
    exact ⟨uniformizerLattice_frobenius W T₂ hu0 hΔπ M c (F2c1 c) hPN hDL, hDL2⟩
  have hdist1 : ∀ (q : LetA O n) (A B' C : W.DD T₂), q • (A - B' + C) = q • A - q • B' + q • C :=
    fun q A B' C => by rw [smul_add, smul_sub]
  have hdist2 : ∀ (a : O) (q : LetA O n) (A B' C : W.DD T₂),
      a • q • (A - B' + C) = a • q • A - a • q • B' + a • q • C :=
    fun a q A B' C => by rw [smul_add, smul_sub, smul_add, smul_sub]

  have h36 : ∀ c ∈ evens n d, ∀ f : ↥F₂, QPowSmulMemPullback W T₂ c η (wL c f) := by
    intro c hc f
    obtain ⟨huhN, huhD, hwD⟩ := hfacts c hc f
    obtain ⟨huN, huD⟩ := hu c hc (Submodule.inclusion hle f)
    have hE4 := (hX2 c f).2.2.2.1
    rw [hMi c hc] at hE4
    refine ⟨?_, hwD, ?_, ?_⟩
    ·
      obtain ⟨s', hs'⟩ := (hX2 c f).2.2.2.2.1
      rw [hhi c hc] at hs'
      refine mem_pullJ_of_p_pow_smul_mem_pullJ W T₂ hB hA hc2 (s' + N) ?_
      rw [pow_add, mul_smul, smul_comm (((PD.p : ℕ) : O) ^ N) (Formalism.MainNotions.LiftingTheory.qp W ^ η), hNw c hc f,
        hdist2]
      refine Submodule.add_mem _ (Submodule.sub_mem _ ?_ ?_) ?_
      · exact Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ s') (Submodule.smul_mem _
          (Formalism.MainNotions.LiftingTheory.qp W ^ η) (frobenius_mem_pullback_one W T₂ huhN huhD))
      · rw [smul_comm (Formalism.MainNotions.LiftingTheory.qp W ^ η) (((PD.p : ℕ) : O) ^ σ)]
        exact Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ s')
          (Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ σ) (h5D c hc _ huN huD))
      · rw [smul_comm (Formalism.MainNotions.LiftingTheory.qp W ^ η) (((PD.p : ℕ) : O) ^ (s₁ + σ)),
          smul_comm (((PD.p : ℕ) : O) ^ s') (((PD.p : ℕ) : O) ^ (s₁ + σ))]
        exact Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ (s₁ + σ)) hs'
    ·
      refine ⟨1, b c + S, ?_⟩
      have hpk : (∏ j ∈ Finset.range 1, Formalism.MainNotions.LiftingTheory.pk W j) = Formalism.MainNotions.LiftingTheory.qp W := by
        simp [Formalism.MainNotions.LiftingTheory.pk]
      rw [hpk]
      have hdq : DL W T₂ c (Formalism.MainNotions.LiftingTheory.qp W ^ (b c + S) • wL c f) :=
        ⟨by rw [smul_comm, hwD.1], fun δ hδ => by
          rw [RL.γD_smulA, map_pow, hqpΔ δ hδ, hwD.2 δ hδ]⟩
      refine mem_of_natCast_pow_smul_mem' W T₂ hB hA hc2 N hdq ?_
      rw [smul_comm (((PD.p : ℕ) : O) ^ N) (Formalism.MainNotions.LiftingTheory.qp W ^ (b c + S)), hNw c hc f, hdist1]
      refine Submodule.add_mem _ (Submodule.sub_mem _ (hpol c hc _ huhN huhD) ?_) ?_
      · rw [smul_comm (Formalism.MainNotions.LiftingTheory.qp W ^ (b c + S)) (((PD.p : ℕ) : O) ^ σ)]
        exact Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ σ) ((W.N T₂).smul_mem _ huN)
      · rw [smul_comm (Formalism.MainNotions.LiftingTheory.qp W ^ (b c + S)) (((PD.p : ℕ) : O) ^ (s₁ + σ))]
        exact Submodule.smul_of_tower_mem _ (((PD.p : ℕ) : O) ^ (s₁ + σ)) hE4
    ·
      rw [hw, gamma_sub_cocycleW _ _ (hyz f).1 c, ← hζL]
      exact uniformizerLattice_sub W T₂ (uniformizerLattice_antitone W T₂ hM1 hπ (hφxi c hc (Submodule.inclusion hle f)).1)
        (Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_smul W T₂ _ (hζ c hc f).2)

  have hcob : ∀ x : ↥(W.wachCocyclesDelta T₂), (∃ m0 : W.DD T₂, (∀ δ ∈ W.DelF, W.γD T₂ δ m0 = m0) ∧
      (x : W.DD T₂ × W.DD T₂) = (W.φD T₂ m0 - m0, W.γD T₂ W.gamK m0 - m0)) → W.clK T₂ x = 0 :=
    fun x hx => ((h2a T₂ hc2 hA.2.1 hA.2.2).2 x).2 hx
  have hYΔ : ∀ c ∈ evens n d, ∀ f : ↥F₂, ∀ δ ∈ W.DelF,
      W.γD T₂ δ (frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f)
        (fun c' => tL c' (Submodule.inclusion hle f)) c) =
      frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' (Submodule.inclusion hle f)) c := by
    intro c hc f δ hδ
    rw [cocycleY_eq_frobenius_add, ← hw, map_add (f := _), gammaD_frobenius_comm, (hfacts c hc f).2.2.2 δ hδ,
      (htL c hc (Submodule.inclusion hle f)).2.1.2 δ hδ]
  have hpack : ∀ f : ↥F₂, ∀ c, ∃ (xc : ↥(W.wachCocyclesDelta T₂)) (κc : G → T₂.V) (hκc : κc ∈ latticeCocycles T₂.L),
      c ∈ evens n d → (RhoCoc W T₂ c M η σ (wL c f) κc ∧
        W.clK T₂ xc = Submodule.Quotient.mk ⟨κc, hκc⟩ ∧
        DL W T₂ (c + 1) ((xc : W.DD T₂ × W.DD T₂).1 - ((PD.p : ℕ) : O) ^ σ •
          frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' (Submodule.inclusion hle f)) c) ∧
        InPN W T₂ M ((xc : W.DD T₂ × W.DD T₂).1 - ((PD.p : ℕ) : O) ^ σ •
          frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' (Submodule.inclusion hle f)) c) ∧
        InPN W T₂ M (xc : W.DD T₂ × W.DD T₂).2) := by
    intro f c
    by_cases hc : c ∈ evens n d
    swap; exact ⟨0, 0, (latticeCocycles T₂.L).zero_mem, fun h => (hc h).elim⟩
    set f₁ := Submodule.inclusion hle f with hf₁
    have hgw : W.γ T₂ (wL c f) - wL c f = (1 : O) • W.φD T₂ (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f₁) (z f₁)
        (fun c' => ms c' f₁) (fun c' => tL c' f₁) (c - 2)) + (-(((PD.p : ℕ) : O) ^ σ)) • ζL c f₁ := by
      rw [hw, gamma_sub_cocycleW _ _ (hyz f).1 c, one_smul, neg_smul, ← sub_eq_add_neg]
      rfl
    obtain ⟨xc, κc, hκc, H⟩ := Step2K.level_membership_package W T₂ c M η σ hu0 hΔπ hπ hM1 hηM hZ hA hp11 hTC hc2
      (fun x h1 h2 => F2c4 c x (hev c hc) h1 h2)
      (fun w' z' hw' htr => (F2c5 c w' z' (hev c hc) hw' htr).1) (wL c f) _ (ζL c f₁) (tL c f₁) _
      (h36 c hc f).2 hgw (by rw [cocycleY_eq_frobenius_add, ← hw]) (hYΔ c hc f) ⟨(hφxi c hc f₁).2, (hφxi c hc f₁).1⟩ (hζ c hc f₁)
      (htL c hc f₁).2.2.2
    exact ⟨xc, κc, hκc, fun _ => H⟩
  refine ⟨F₂, wL, hch, hm0, h36, ?_⟩
  intro f
  choose xc κ hκ hP using hpack f
  refine ⟨κ, fun c hc => (hP c hc).1, Or.inl ?_⟩
  obtain ⟨x0, hκg, hx0, hcl0⟩ := hX1 (f : FF)
  set f₁ := Submodule.inclusion hle f with hf₁
  have hmE : ∀ δ ∈ W.DelF, W.γD T₂ δ (liftCorrectionSum W T₂ s₁ σ (y f) (fun c' => ms c' f)
      (fun c' => tL c' f₁) d) = liftCorrectionSum W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) d := by
    intro δ hδ
    unfold liftCorrectionSum

    rw [map_sum]
    refine Finset.sum_congr rfl fun c hc => ?_
    have h1 : W.γD T₂ δ (liftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) c) =
        liftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) c := (hmhDL c hc f₁).2 δ hδ
    rw [map_add (f := _), map_add (f := _), map_smul, gammaD_letter_smul, ((hyz f).2 δ hδ).1, gammaD_frobenius_comm, h1]
  have hcls := Step2C.sum_clK_eq_pow_smul_clK_of_level_decomposition W T₂ M (s₁ + σ) σ (evens n d) hgam hπ F2c2
    (fun i x h1 h2 h3 => ((F2c3 i x h1 h2).1 h3)) hcob x0 _ hmE
    (fun c => frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) c) xc
    (by rw [hx0]; exact first_component_sum_eq (fun c' => ms c' f) (fun c' => tL c' f₁) hn d)
    (by
      rw [hx0]
      show InPN W T₂ M (((PD.p : ℕ) : O) ^ (s₁ + σ) • z f + _)
      rw [second_component_sum_eq (fun c' => ms c' f) (fun c' => tL c' f₁) hn d (hyz f).1]
      refine Finset.sum_induction _ _ (fun a b ha hb => Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_add W T₂ ha hb)
        (uniformizerLattice_zero W T₂ M) (fun c hc => Formalism.MainNotions.RamifiedCoefficientChains.S9.inPN_add W T₂ (hxi c hc f₁).2.1 ?_)
      have hd0 := (hxi c hc f₁).2.2
      have hd : DL W T₂ (c + 2 - 1) (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f₁) (z f₁)
          (fun c' => ms c' f₁) (fun c' => tL c' f₁) c) := by
        rw [show c + 2 - 1 = c + 1 by ring]; exact hd0
      exact uniformizerLattice_frobenius W T₂ hu0 hΔπ M (c + 2) (F2c1 (c + 2)) (hxi c hc f₁).2.1 hd)
    (fun c hc => by
      show InPN W T₂ M (W.γ T₂ (frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) c) -
        frobeniusSquareDefectOfLiftCorrection W T₂ s₁ σ (y f) (fun c' => ms c' f) (fun c' => tL c' f₁) c)
      rw [gamma_sub_cocycle_component (fun c' => ms c' f) (fun c' => tL c' f₁) (hyz f).1 c]
      obtain ⟨hφPN, hφDL0⟩ := hφxi c hc f₁
      have hφDL : DL W T₂ (c + 1 - 1) (W.φD T₂ (gammaDefectOfLiftCorrection W T₂ s₁ σ (y f₁) (z f₁)
          (fun c' => ms c' f₁) (fun c' => tL c' f₁) (c - 2))) := by
        rw [add_sub_cancel_right]; exact hφDL0
      exact uniformizerLattice_sub W T₂ (uniformizerLattice_frobenius W T₂ hu0 hΔπ M (c + 1) (F2c1 (c + 1)) hφPN hφDL)
        (hxi c hc f₁).2.1)
    (fun c hc => hYΔ c hc f) (fun c hc => ⟨(hP c hc).2.2.1, (hP c hc).2.2.2.1⟩)
    (fun c hc => (hP c hc).2.2.2.2)
  exact Step2A.pow_smul_cocycle_sub_sum_mem_latticeCoboundaries W T₂ _ xc κ hκ (fun c hc => (hP c hc).2.1) x0 _ hκg hcl0 _
    (by rw [show s₁ + 2 * σ = s₁ + σ + σ by ring]; exact hcls)

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftAtSituation =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftOfHypotheses =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftOfHypotheses", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CocyclesToWachVectorsBoundOfExtTool\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IsTruncIff\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusDifferenceIdentity\npublic import Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftAtSituation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.RamifiedCoefficientChains TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

theorem second_lift_of_hypotheses [NeZero n] (W : LocWach PD LL O v n) (hZ : TTool2Z W)
    (hF : Formalism.MainNotions.CrystallineLiftingInputs.FTool W) (hB : Sh.BasTool W) (hK : Sh.LemK W) (hD : Sh.FilDim W)
    (hR : Sh.ExpRing W) (hE : Sh.ExpRules W)
    (h2a : ∀ T : LocLat G Qp LL O, IsCrys PD T.ρ → Formalism.MainNotions.DeltaInvariantLattices.p2aK W T)
    (h5 : Formalism.MainNotions.DeltaInvariantLattices.P5W W) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9W W) (hEx : DcrisExactStrict PD LL)
    (hCs : CrysSubQuot PD LL) (hDq : DdREqDcris PD LL) : Step2 W := by
  intro d T₁ T₂ F b S η m hS
  obtain ⟨hDom, hDVR, hFr⟩ := hS.2.2.2.1
  refine ⟨2 * sigC PD.p (hpar n b S) η, Step2A.sigma_bound_le _ _ _ hS.2.1, ?_⟩
  intro s₁ FF _ _ _ _ g N y z μ ν hX F₁ ms hO
  exact second_lift_at_situation W hZ hF hB hK hD hR hE h2a h5 h9 hEx hCs hDq hS s₁ g N y z μ ν hX F₁ ms hO

end Formalism.MainNotions.RamifiedCoefficientChains.S9.ExtensionLemmaAlt

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.SecondLiftOfHypotheses =====
