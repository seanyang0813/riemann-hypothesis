module

public import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft
public import Formalism.SharpRestriction.LevelLetterCocycles.CoprimeFrobeniusUniformizerPowers
public import Formalism.SharpRestriction.LevelLetterCocycles.ExistsSmulPowEqSumOfInFNc
public import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish
public import Formalism.SharpRestriction.LevelLetterCocycles.CoeffAlgMul
public import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts
public import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor
public import Formalism.SharpRestriction.LevelLetterCocycles.StrictSesLetter
import Formalism.SharpRestriction.LevelLetterCocycles.CrystallineFiltrationAntitone
import Formalism.SharpRestriction.LevelLetterCocycles.LevLetEMul
import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.VanishOfXU, Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerZeroEqQ, Formalism.SharpRestriction.LevelLetterCocycles.LevelZeroMembershipOfHorizontal, Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.VanishOfXU =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.VanishOfXU", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.SmulSAddLeft\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.CrC

open Formalism.MainNotions.N.Pv.LocalLengthBound.Ser PowerSeries

variable {LL : Type} [Field LL] {V : Type} [AddCommGroup V] [Module LL V]

theorem smulS_delta (g : PowerSeries LL) (w : V) (j : ℕ) :
    smulS g (fun k : ℤ => if k = 0 then w else 0) (j : ℤ) = coeff j g • w := by
  have hLB : LB 0 (fun k : ℤ => if k = 0 then w else 0) := by
    intro k hk
    simp [ne_of_lt hk]
  rw [smulS_eq_sum hLB g (j : ℤ) (j + 1) (by omega)]
  rw [Finset.sum_eq_single j]
  · simp
  · intro b _ hb
    rw [if_neg (by omega)]
    simp
  · intro hj
    simp at hj

theorem LB_delta (w : V) : LB 0 (fun k : ℤ => if k = 0 then w else 0) := by
  intro k hk
  simp [ne_of_lt hk]

theorem LB_fsum {ι : Type} (s : Finset ι) {m : ℤ} (F : ι → ℤ → V) (hF : ∀ i, LB m (F i)) :
    LB m (∑ i ∈ s, F i) := by
  refine Finset.induction_on s (fun k _ => by simp) ?_
  intro a s ha ih
  rw [Finset.sum_insert ha]
  exact LB_add (hF a) ih

theorem smulS_fsum {ι : Type} (s : Finset ι) (g : PowerSeries LL) {m : ℤ} (F : ι → ℤ → V)
    (hF : ∀ i, LB m (F i)) : smulS g (∑ i ∈ s, F i) = ∑ i ∈ s, smulS g (F i) := by
  refine Finset.induction_on s ?_ ?_
  · funext k
    simp [smulS]
  · intro a s ha ih
    rw [Finset.sum_insert ha, Finset.sum_insert ha, smulS_add (hF a) (LB_fsum s F hF), ih]

theorem smulS_shift (g : PowerSeries LL) {m : ℤ} {F : ℤ → V} (hF : LB m F) (H : ℕ) :
    smulS (X ^ H * g) F = fun r => smulS g F (r - H) := by
  rw [smulS_mul hF, smulS_X_pow (LB_smulS hF g)]

theorem LB_of_unit {U : PowerSeries LL} (hU : constantCoeff U ≠ 0) {m N : ℤ} {F : ℤ → V} (hF : LB m F)
    (h : LB N (smulS U F)) : LB N F := by
  have h2 := LB_smulS h U⁻¹
  rwa [smulS_inv hF U hU] at h2

theorem vanish_of_XU {U : PowerSeries LL} (hU : constantCoeff U ≠ 0) {m : ℤ} {F : ℤ → V} (hF : LB m F)
    (H : ℕ) (N : ℤ) (h : ∀ r < N + H, smulS (X ^ H * U) F r = 0) : LB N F := by
  apply LB_of_unit hU hF
  intro r hr
  have := h (r + H) (by omega)
  rw [smulS_shift U hF H] at this
  simpa using this

end Formalism.MainNotions.UnusedSlot80.CrC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.VanishOfXU =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerZeroEqQ =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerZeroEqQ", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CoprimeFrobeniusUniformizerPowers\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ExistsSmulPowEqSumOfInFNc\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CoeffAlgMul\nimport Formalism.SharpRestriction.LevelLetterCocycles.CrystallineFiltrationAntitone\nimport Formalism.SharpRestriction.LevelLetterCocycles.LevLetEMul\nimport Formalism.SharpRestriction.LevelLetterCocycles.QuotientImageDivisibility.ExpPowSubOne\npublic import Formalism.SharpRestriction.LevelLetterCocycles.VanishOfXU\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.CrC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup PowerSeries TensorProduct
  Formalism.MainNotions.N.Pv.LocalLengthBound.Ser

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)
    (levB : ∀ T : LocLat G Qp LL O, ZMod n → LL → ↥(W.N T) →+ (ℤ → T.V ⊗[Qp] B))

theorem lA_eq (t : ℕ) : lA W ^ t = algebraMap O (LetA O n) (((PD.p : ℕ) : O) ^ t) := by
  simp [lA, map_pow, map_natCast]

theorem frobenius_power_zero_eq_q : ps W 0 = Formalism.MainNotions.WachCoordinates.qP W := by
  rw [Formalism.MainNotions.UnusedSlot80.LevC.ps_zero]; rfl

variable [IsDomain O] [NeZero n]

theorem fil_of_rep (C : Formalism.MainNotions.UnusedSlot80.LevC.Ctx W) (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB)
    (E1 : Formalism.MainNotions.UnusedSlot80.LevE.ExpFrame0 W levB) (E2 : Formalism.MainNotions.UnusedSlot80.LevE.ExpNoNeg0 W levB)
    (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W) (A : ArcP n) (hA : A.OK) (c' : ZMod n) (hc' : c' ∈ A.cuts)
    (T : LocLat G Qp LL O) (hT : Win W A T) {d : ℕ} (b : Fin d → W.DD T) (sol : Fin d → ℕ → Fin d → LL)
    (hb : IsHor W T c' b sol) (e : ℕ) (ζ : LL) (hζ : IsPrimitiveRoot ζ PD.p)
    (x : W.DD T) (k : ℕ) (f : Fin d → W.EE) (u : Fin d → LetA O n)
    (hf : ∀ m, algebraMap (LetA O n) W.EE (ps W 0 ^ A.Hs (c' + ((e + 1 : ℕ) : ZMod n)) (e + 1) 0) * f m =
      algebraMap (LetA O n) W.EE (letE (c' + ((e + 1 : ℕ) : ZMod n)) *
        (W.π₀ * Formalism.MainNotions.UnusedSlot80.LevC.LamUp W A c' e) * u m))
    (hr : RepVV W T c' (e + 1) (A.M PD.p) (abelian₂ W A (c' + ((e + 1 : ℕ) : ZMod n)) (e + 1)) b sol
      (lA W ^ k • x) f)
    (hx : InFNc W T (c' + ((e + 1 : ℕ) : ZMod n)) 1 x) :
    ∀ j : ℕ, (j : ℤ) < 2 * (A.Hs (c' + ((e + 1 : ℕ) : ZMod n)) (e + 1) 0 : ℤ) →
      dv W T (e + 1) b (fun m => coeff j (W.lev (c' + ((e + 1 : ℕ) : ZMod n)) ζ
        (W.π₀ * Formalism.MainNotions.UnusedSlot80.LevC.LamUp W A c' e * u m))) ∈
        FilS W T (c' + ((e + 1 : ℕ) : ZMod n)) 0
          ((A.Hs (c' + ((e + 1 : ℕ) : ZMod n)) (e + 1) 0 : ℤ) - j) := by
  set a : ZMod n := c' + ((e + 1 : ℕ) : ZMod n) with ha
  set H : ℕ := A.Hs a (e + 1) 0 with hH
  set LU := Formalism.MainNotions.UnusedSlot80.LevC.LamUp W A c' e with hLU
  set Λe := abelian₂ W A (c' + (e : ZMod n)) e with hΛe
  have hp : (PD.p : LL) ≠ 0 := Formalism.MainNotions.UnusedSlot80.ArcF.p_ne_zero W
  obtain ⟨κ, κ', Hh, a', hHh, ha', hP⟩ := hr
  obtain ⟨y, hyP, hyeq⟩ := hP
  obtain ⟨x0, hx0, -, hxx⟩ := hx
  have hxN : x ∈ W.N T := by rw [hxx, one_smul]; exact hx0.1
  have hΛ : abelian₂ W A a (e + 1) = ps W 0 ^ H * LU := Formalism.MainNotions.UnusedSlot80.LevC.lam_succ W A c' e
  let U : Fin d → LetA O n := fun m => letE a * (W.π₀ * LU) * u m
  have ha'U : ∀ m, a' m = LU * U m := by
    intro m
    apply W.EE_inj
    rw [← (ha' m).2, hΛ, map_mul, map_mul, mul_comm (algebraMap (LetA O n) W.EE (ps W 0 ^ H)), mul_assoc,
      hf m]
  obtain ⟨w, hw⟩ := C.hR.2.2.2.2.1
  rw [Formalism.MainNotions.UnusedSlot80.ToolsR.eat_qP] at hw
  have hq : W.q = (w : LetA O n) * ps W 0 := by rw [hw, frobenius_power_zero_eq_q]
  have hφ : ∀ z, W.φD T (Λe • ((W.φD T) ^ e) z) = LU • ((W.φD T) ^ (e + 1)) z := by
    intro z
    rw [_root_.Formalism.MainNotions.LiftingTheory.wmap_φD_smul, Formalism.MainNotions.UnusedSlot80.PhiPowers.pow_apply_succ]
    rfl
  have hZmem : ∀ z, Formalism.MainNotions.LiftingTheory.InNΔi W T c' z → W.q ^ H • W.φD T (Λe • ((W.φD T) ^ e) z) ∈ W.N T := by
    intro z hz
    have hin := Formalism.MainNotions.UnusedSlot80.ArcC.arc_up W C.hs C.hR C.h5 A hA c' hc' (e + 1) T hT
      (((W.φD T) ^ (e + 1)) z) (by simpa using Formalism.MainNotions.UnusedSlot80.Relay2.Pp_gen W T c' (e + 1) W.AΔ.one_mem hz)
    obtain ⟨y1, hy1, -, hy1e⟩ := hin
    have e1 : W.q ^ H • W.φD T (Λe • ((W.φD T) ^ e) z) =
        ((w : LetA O n) ^ H) • (abelian₂ W A a (e + 1) • ((W.φD T) ^ (e + 1)) z) := by
      rw [hφ, hq, hΛ, smul_smul, smul_smul, mul_pow]; congr 1; ring
    rw [e1, hy1e, one_smul]
    exact (W.N T).smul_mem _ hy1.1
  set μ : LetA O n := W.q ^ H * LU with hμ
  have hμφ : ∀ z, μ • ((W.φD T) ^ (e + 1)) z = W.q ^ H • W.φD T (Λe • ((W.φD T) ^ e) z) := by
    intro z; rw [hφ, hμ, smul_smul]

  have hPy : ∀ z ∈ Pp W T c' (e + 1), ∃ hN : μ • z ∈ W.N T, ∀ r : ℤ, r < H →
      levB T a ζ ⟨μ • z, hN⟩ r = 0 := by
    refine Formalism.MainNotions.UnusedSlot80.Relay2.Pp_ind W T c' (e + 1) _ ?_ ?_ ?_ ?_
    · refine ⟨by rw [smul_zero]; exact (W.N T).zero_mem, fun r _ => ?_⟩
      have : (⟨μ • (0 : W.DD T), by rw [smul_zero]; exact (W.N T).zero_mem⟩ : ↥(W.N T)) = 0 :=
        Subtype.ext (by simp)
      rw [this, map_zero]; rfl
    · rintro x1 y1 ⟨h1, v1⟩ ⟨h2, v2⟩
      refine ⟨by rw [smul_add]; exact (W.N T).add_mem h1 h2, fun r hr => ?_⟩
      have : (⟨μ • (x1 + y1), by rw [smul_add]; exact (W.N T).add_mem h1 h2⟩ : ↥(W.N T)) =
          ⟨μ • x1, h1⟩ + ⟨μ • y1, h2⟩ := Subtype.ext (by simp [smul_add])
      rw [this, map_add (f := _), Pi.add_apply, v1 r hr, v2 r hr, add_zero]
    · rintro x1 ⟨h1, v1⟩
      refine ⟨by rw [smul_neg]; exact (W.N T).neg_mem h1, fun r hr => ?_⟩
      have : (⟨μ • (-x1), by rw [smul_neg]; exact (W.N T).neg_mem h1⟩ : ↥(W.N T)) =
          -⟨μ • x1, h1⟩ := Subtype.ext (by simp [smul_neg])
      rw [this, map_neg, Pi.neg_apply, v1 r hr, neg_zero]
    · intro a0 ha0 z hz
      have hZ := hZmem z hz
      have e1 : μ • (a0 • ((W.φD T) ^ (e + 1)) z) = a0 • (W.q ^ H • W.φD T (Λe • ((W.φD T) ^ e) z)) := by
        rw [← hμφ, smul_comm]
      have hN : μ • (a0 • ((W.φD T) ^ (e + 1)) z) ∈ W.N T := by rw [e1]; exact (W.N T).smul_mem _ hZ
      refine ⟨hN, fun r hr => ?_⟩
      have e2 : (⟨μ • (a0 • ((W.φD T) ^ (e + 1)) z), hN⟩ : ↥(W.N T)) = a0 • ⟨_, hZ⟩ :=
        Subtype.ext e1
      rw [e2, Formalism.MainNotions.UnusedSlot80.LevE.levB_smul W levB Ti.hEq Ti.hsupp]
      have hLB : LB (H : ℤ) (levB T a ζ ⟨_, hZ⟩) := fun r' hr' =>
        E2 A hA c' hc' T hT e ζ hζ z hz H hZ r' hr'
      exact LB_smulS hLB _ r hr
  have hHhN : ∀ m, Formalism.MainNotions.LiftingTheory.InNΔi W T c' (Hh m) := fun m =>
    Formalism.MainNotions.UnusedSlot80.LevE.hor_mem (W := W) T c' b hb.1 sol C.hR.1 (A.M PD.p) κ m (hHh m)
  have hZ : ∀ m, W.q ^ H • W.φD T (Λe • ((W.φD T) ^ e) (Hh m)) ∈ W.N T := fun m => hZmem _ (hHhN m)
  obtain ⟨hYN, hYv⟩ := hPy y hyP

  have key : (μ * LU * (lA W ^ (κ' + κ + k) * ps W 0 ^ H)) • (⟨x, hxN⟩ : ↥(W.N T)) =
      ∑ m, (lA W ^ κ' * LU * U m) • (⟨_, hZ m⟩ : ↥(W.N T)) +
        (W.π₀ * abelian₂ W A a (e + 1) ^ 2) • (⟨μ • y, hYN⟩ : ↥(W.N T)) := by
    apply Subtype.ext
    simp only [Submodule.coe_add, Submodule.coe_smul, Submodule.coe_sum]
    simp_rw [← hμφ]
    have hsum : ∑ m, (lA W ^ κ' * LU * U m) • (μ • ((W.φD T) ^ (e + 1)) (Hh m)) =
        (lA W ^ κ' * μ) • ∑ m, a' m • ((W.φD T) ^ (e + 1)) (Hh m) := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl fun m _ => ?_
      rw [ha'U m, smul_smul, smul_smul]; congr 1; ring
    rw [hsum]
    rw [hΛ] at hyeq ⊢
    have h1 : lA W ^ κ' • ∑ m, a' m • ((W.φD T) ^ (e + 1)) (Hh m) =
        lA W ^ κ' • (lA W ^ κ • (ps W 0 ^ H * LU) • (lA W ^ k • x)) -
          (W.π₀ * (ps W 0 ^ H * LU) ^ 2) • y := by
      rw [← hyeq, smul_sub, sub_sub_cancel]
    rw [mul_smul (lA W ^ κ') μ, smul_comm (lA W ^ κ') μ, h1, smul_sub,
      smul_comm (W.π₀ * (ps W 0 ^ H * LU) ^ 2) μ y, sub_add_cancel]
    simp only [smul_smul]
    congr 1
    ring
  have hL := congrArg (levB T a ζ) key

  rw [map_add (f := _), map_sum] at hL
  simp only [Formalism.MainNotions.UnusedSlot80.LevE.levB_smul W levB Ti.hEq Ti.hsupp] at hL
  obtain ⟨mx, hmx⟩ := Ti.hsupp T a ζ ⟨x, hxN⟩
  let F' : Fin d → ℤ → T.V ⊗[Qp] B := fun m r => if r = 0 then ((PD.p : LL) ^ κ) •
    ((φVB PD (LL := LL) (V := T.V)) ^ (e + 1)) (cmpD W T (b m)) else 0
  have hF'LB : ∀ m, LB 0 (F' m) := fun m => LB_delta _
  have hHh' : H ≤ A.h := by
    simp only [hH, ArcP.Hs]
    split_ifs
    · exact hA.2.2.2.2.2.1
    · exact le_rfl
  have hM : 3 * (H : ℤ) ≤ (((PD.p - 1) * A.M PD.p : ℕ) : ℤ) + H := by
    have h2 : 2 * A.h < (PD.p - 1) * A.M PD.p := by
      unfold ArcP.M
      exact Nat.lt_mul_div_succ _ (by have := PD.hp.two_le; omega)
    have h3 : 2 * H < (PD.p - 1) * A.M PD.p := by omega
    omega
  have hfr : ∀ m, ∀ r < 3 * (H : ℤ), levB T a ζ ⟨_, hZ m⟩ r =
      smulS (W.lev a ζ (W.q ^ H * LU)) (F' m) r := by
    intro m r hr
    exact E1 A hA c' hc' T hT b sol hb e ζ hζ (A.M PD.p) κ m (Hh m) (hHh m) H (hZ m) r (by omega)
  have hterm : ∀ m, ∀ r < 3 * (H : ℤ),
      smulS (W.lev a ζ (lA W ^ κ' * LU * U m)) (levB T a ζ ⟨_, hZ m⟩) r =
      smulS (W.lev a ζ (W.q ^ H * LU * LU)) (smulS (W.lev a ζ (lA W ^ κ' * U m)) (F' m)) r := by
    intro m r hr
    obtain ⟨mm, hmm⟩ := Ti.hsupp T a ζ ⟨_, hZ m⟩
    have hA1 : LB (min mm 0) (levB T a ζ ⟨_, hZ m⟩) := LB_mono hmm (min_le_left _ _)
    have hA2 : LB (min mm 0) (smulS (W.lev a ζ (W.q ^ H * LU)) (F' m)) :=
      LB_mono (LB_smulS (hF'LB m) _) (min_le_right _ _)
    rw [Formalism.MainNotions.UnusedSlot80.LevE.smulS_congr_lt hA1 hA2 _ (3 * H) (hfr m) r hr]
    rw [← smulS_mul (hF'LB m), ← smulS_mul (hF'LB m), ← map_mul, ← map_mul,
      show lA W ^ κ' * LU * U m * (W.q ^ H * LU) = W.q ^ H * LU * LU * (lA W ^ κ' * U m) by ring]

  obtain ⟨S, hS0, hSq⟩ := Formalism.MainNotions.UnusedSlot80.DivLevR.lev_qP_X (W := W) C.hR a ζ hζ
  have hps0 : W.lev a ζ (ps W 0) = X * S := by rw [frobenius_power_zero_eq_q]; exact hSq
  have hcorr : ∀ r < 3 * (H : ℤ),
      smulS (W.lev a ζ (W.π₀ * abelian₂ W A a (e + 1) ^ 2)) (levB T a ζ ⟨μ • y, hYN⟩) r = 0 := by
    intro r hr
    have hYLB : LB (H : ℤ) (levB T a ζ ⟨μ • y, hYN⟩) := fun r' hr' => hYv r' hr'
    have e1 : W.lev a ζ (W.π₀ * abelian₂ W A a (e + 1) ^ 2) =
        X ^ (2 * H) * (W.lev a ζ W.π₀ * S ^ (2 * H) * W.lev a ζ LU ^ 2) := by
      rw [hΛ, map_mul, map_pow, map_mul, map_pow, hps0]; ring
    rw [e1, smulS_shift _ hYLB]
    exact LB_smulS hYLB _ _ (by omega)

  obtain ⟨u0, hu0, hu0c⟩ := Formalism.MainNotions.N.Pv.LocalLengthBound.lev_q_simple W a ζ hζ
  have hLUc : constantCoeff (W.lev a ζ LU) ≠ 0 := by
    have := Formalism.MainNotions.UnusedSlot80.CrD.cc_lev_piLamUp W C.hR A c' e a ζ hζ
    rw [map_mul, map_mul] at this
    exact right_ne_zero_of_mul this
  set Dd : ℤ → T.V ⊗[Qp] B := smulS (W.lev a ζ (lA W ^ (κ' + κ + k) * ps W 0 ^ H)) (levB T a ζ ⟨x, hxN⟩) -
    ∑ m, smulS (W.lev a ζ (lA W ^ κ' * U m)) (F' m) with hDd
  have hGLB : ∀ m, LB (min mx 0) (smulS (W.lev a ζ (lA W ^ κ' * U m)) (F' m)) := fun m =>
    LB_mono (LB_smulS (hF'LB m) _) (min_le_right _ _)
  have hXLB : LB (min mx 0) (smulS (W.lev a ζ (lA W ^ (κ' + κ + k) * ps W 0 ^ H)) (levB T a ζ ⟨x, hxN⟩)) :=
    LB_smulS (LB_mono hmx (min_le_left _ _)) _
  have hDLB : LB (min mx 0) Dd := LB_sub hXLB (LB_fsum _ _ hGLB)
  have hDv : LB (2 * (H : ℤ)) Dd := by
    have hU : constantCoeff (u0 ^ H * W.lev a ζ LU * W.lev a ζ LU) ≠ 0 := by
      rw [map_mul, map_mul, map_pow]
      exact mul_ne_zero (mul_ne_zero (pow_ne_zero _ hu0c) hLUc) hLUc
    apply vanish_of_XU hU hDLB H (2 * H)
    intro r hr
    have e1 : X ^ H * (u0 ^ H * W.lev a ζ LU * W.lev a ζ LU) = W.lev a ζ (W.q ^ H * LU * LU) := by
      rw [map_mul, map_mul, map_pow, hu0]; ring
    rw [e1, hDd, smulS_sub hXLB (LB_fsum _ _ hGLB), smulS_fsum _ _ _ hGLB, Pi.sub_apply, Finset.sum_apply]
    have hl := congrFun hL r
    simp only [Pi.add_apply, Finset.sum_apply] at hl
    rw [hcorr r (by omega), add_zero] at hl
    have e2 : smulS (W.lev a ζ (W.q ^ H * LU * LU))
        (smulS (W.lev a ζ (lA W ^ (κ' + κ + k) * ps W 0 ^ H)) (levB T a ζ ⟨x, hxN⟩)) r =
        smulS (W.lev a ζ (μ * LU * (lA W ^ (κ' + κ + k) * ps W 0 ^ H))) (levB T a ζ ⟨x, hxN⟩) r := by
      rw [← smulS_mul hmx, ← map_mul]
    rw [e2, hl, sub_eq_zero]
    exact Finset.sum_congr rfl fun m _ => hterm m r (by omega)

  intro j hj
  have hLv : ∀ i : ℤ, levB T a ζ ⟨x, hxN⟩ i ∈ FilS W T a 0 (0 - i) := by
    intro i
    have h := (h4 T hT.1 a 0 ζ (by simpa using hζ)).1 ⟨x, hxN⟩ i
    rw [Ti.hEq] at h
    rw [zero_sub]
    exact Formalism.MainNotions.UnusedSlot80.LevR.mem_of_map_ιV (PD := PD) (S := FilS W T a 0 (-i)) h
  have hDj := hDv j hj
  rw [hDd, Pi.sub_apply, sub_eq_zero, Finset.sum_apply] at hDj
  have e1 : W.lev a ζ (lA W ^ (κ' + κ + k) * ps W 0 ^ H) =
      X ^ H * (W.lev a ζ (lA W ^ (κ' + κ + k)) * S ^ H) := by
    simp only [map_mul, map_pow, hps0]; ring
  have hmemL : smulS (W.lev a ζ (lA W ^ (κ' + κ + k) * ps W 0 ^ H)) (levB T a ζ ⟨x, hxN⟩) j ∈
      FilS W T a 0 ((H : ℤ) - j) := by
    rw [e1, smulS_shift _ hmx]
    have := Dg_smulS (Formalism.MainNotions.UnusedSlot80.CrD.crystalline_filtration_antitone W T a) hmx hLv
      (W.lev a ζ (lA W ^ (κ' + κ + k)) * S ^ H) ((j : ℤ) - H)
    rwa [show (0 : ℤ) - ((j : ℤ) - H) = (H : ℤ) - j by ring] at this
  rw [hDj] at hmemL
  have e2 : ∀ m, smulS (W.lev a ζ (lA W ^ κ' * U m)) (F' m) j =
      ((PD.p : LL) ^ κ' * (PD.p : LL) ^ κ) • (coeff j (W.lev a ζ (W.π₀ * LU * u m)) •
        ((φVB PD (LL := LL) (V := T.V)) ^ (e + 1)) (cmpD W T (b m))) := by
    intro m
    show smulS _ (fun r : ℤ => if r = 0 then _ else 0) (j : ℤ) = _
    rw [smulS_delta, lA_eq, map_mul, AlgHom.commutes, Formalism.MainNotions.UnusedSlot80.CrD.coeff_alg_mul, map_pow, map_natCast]
    have hU : W.lev a ζ (U m) = W.lev a ζ (W.π₀ * LU * u m) := by
      show W.lev a ζ (letE a * (W.π₀ * LU) * u m) = _
      rw [mul_assoc, Formalism.MainNotions.UnusedSlot80.DivLevR.lev_letE_mul]
    rw [hU, smul_smul, smul_smul]
    congr 1
    ring
  simp_rw [e2] at hmemL
  rw [← Finset.smul_sum] at hmemL
  have hne : ((PD.p : LL) ^ κ' * (PD.p : LL) ^ κ) ≠ 0 := mul_ne_zero (pow_ne_zero _ hp) (pow_ne_zero _ hp)
  have := (Submodule.smul_mem_iff _ hne).mp hmemL
  simpa [dv] using this

end Formalism.MainNotions.UnusedSlot80.CrC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerZeroEqQ =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelZeroMembershipOfHorizontal =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LevelZeroMembershipOfHorizontal", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish\npublic import Formalism.SharpRestriction.LevelLetterCocycles.CoeffAlgMul\npublic import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowerZeroEqQ\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical

namespace Formalism.MainNotions.UnusedSlot80.CrC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup TensorProduct

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ} (W : LocWach PD LL O v n)
    (levB : ∀ T : LocLat G Qp LL O, ZMod n → LL → ↥(W.N T) →+ (ℤ → T.V ⊗[Qp] B))

variable [IsDomain O] [NeZero n] [IsAdicComplete (Ideal.span {((PD.p : ℕ) : O)}) O]

theorem level_zero_membership_of_horizontal (C : Formalism.MainNotions.UnusedSlot80.LevC.Ctx W) (Ti : Formalism.MainNotions.UnusedSlot80.LevE.Comparison₂ W levB)
    (E1 : Formalism.MainNotions.UnusedSlot80.LevE.ExpFrame0 W levB) (E2 : Formalism.MainNotions.UnusedSlot80.LevE.ExpNoNeg0 W levB)
    (h4 : Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W) (hζex : ∃ ζ : LL, IsPrimitiveRoot ζ PD.p) (A : ArcP n) (hA : A.OK)
    (c' : ZMod n) (hc' : c' ∈ A.cuts) (T : LocLat G Qp LL O) (hT : Win W A T) {d : ℕ}
    (b : Fin d → W.DD T) (sol : Fin d → ℕ → Fin d → LL) (hb : IsHor W T c' b sol) (e : ℕ) :
    Formalism.MainNotions.UnusedSlot80.LevC.LevelZeroModP (W := W) A c' e T b sol := by
  intro x k f _ hr hfr hx
  obtain ⟨ζ, hζ⟩ := hζex
  choose u hu hfu using hfr
  exact Formalism.MainNotions.UnusedSlot80.CrD.secIn_of_fil W C A hA c' hc' T hT b hb.1 e ζ hζ f u hu hfu
    (fil_of_rep W levB C Ti E1 E2 h4 A hA c' hc' T hT b sol hb e ζ hζ x k f u hfu hr hx)

end Formalism.MainNotions.UnusedSlot80.CrC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LevelZeroMembershipOfHorizontal =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelOneUniformizerCoeffVanish\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ArcCoordinatesOfLevelZeroParts\npublic import Formalism.SharpRestriction.LevelLetterCocycles.WachFrobeniusLatticeUnramifiedFunctor\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LevelZeroMembershipOfHorizontal\npublic import Formalism.SharpRestriction.LevelLetterCocycles.StrictSesLetter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Classical TensorProduct

namespace Formalism.MainNotions.UnusedSlot80.Crit0

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br Formalism.MainNotions.ArcLiftingSetup

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]
    {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

def LevelMapsCompatible (W : LocWach PD LL O v n) (levB : ∀ T : LocLat G Qp LL O, ZMod n → LL → ↥(W.N T) →+ (ℤ → T.V ⊗[Qp] B))
    [IsDomain O] [NeZero n] : Prop :=
  LevC.Ctx W → LevE.Comparison₂ W levB → LevE.ExpFrame0 W levB → LevE.ExpNoNeg0 W levB → Formalism.MainNotions.WachCoordinates.LevelMapHodgeFiltration W →
    (∃ ζ : LL, IsPrimitiveRoot ζ PD.p) → ∀ A : ArcP n, A.OK → ∀ c' ∈ A.cuts, ∀ T : LocLat G Qp LL O, Win W A T →
      ∀ {d : ℕ} (b : Fin d → W.DD T) (sol : Fin d → ℕ → Fin d → LL), IsHor W T c' b sol →
        ∀ e : ℕ, LevC.LevelZeroModP (W := W) A c' e T b sol

end Formalism.MainNotions.UnusedSlot80.Crit0

namespace Formalism.MainNotions.UnusedSlot80

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Formalism.MainNotions.WachCoordinates.Br

theorem exists_prim_of_good (D : D7) {l : ℕ} [Fact l.Prime] {K LL : FinExt l} (hG : Good K 1 LL) :
    ∃ ζ : ↥LL.1, IsPrimitiveRoot ζ l := by
  have hmem : (D.loc l).ζQ 1 ∈ Ks K 1 := by
    apply (le_sup_right : IntermediateField.adjoin ℚ_[l] {x : Om l | x ^ (l ^ 1) = 1} ≤ Ks K 1)
    apply IntermediateField.subset_adjoin
    show (D.loc l).ζQ 1 ^ (l ^ 1) = 1
    rw [pow_one, (D.loc l).ζQ_succ 0, (D.loc l).ζQ_zero]
  have hLL : (D.loc l).ζQ 1 ∈ LL.1 := hG.2.2.2 (Ks K 1).val ⟨_, hmem⟩
  refine ⟨⟨_, hLL⟩, ?_⟩
  exact IsPrimitiveRoot.of_map_of_injective (f := LL.1.val) (hf := Subtype.val_injective)
    (LevR.root_of_unity_primitive D l)

theorem lev0MpL_of_from (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hAdm : AdmArcA D HW F Cm) (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F)
    (hW : ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL), CaseA K LL → 5 ≤ l →
      haveI := neZero_finrank_max_unramified K
      Crit0.LevelMapsCompatible ((HW l).W K 1 LL hG) ((Cm l).C K 1 LL hG).tie.levB) :
    LevelZeroModPLocal D HW := by
  intro l _ K LL hG hCA h5l A hA c' hc' T hT d b sol hb e
  have := neZero_finrank_max_unramified K
  have C := ctx_of D HW F Cm hAdm l K LL hG hCA h5l
  have Ti := levETie_of D HW F Cm h4 l K LL hG
  have E1 := LevE.expFrame0_of Ti C.hs C.hR C.hp0 C.h5 C.hH C.hCA
  have E2 := LevE.expNoNeg0_of Ti C.hs C.hR C.hp0 C.h5
  have h4' := Strict.p4YL D HW F (levCoeff_of_pt D HW F Cm h4 (points_exist_of_ring_condition D HW F h9)) l K LL hG hCA h5l
  obtain ⟨ζ, hζ⟩ := exists_prim_of_good D hG
  have hζ' : ∃ ζ : ↥LL.1, IsPrimitiveRoot ζ ((D.loc l).PD K).p := ⟨ζ, by rw [(D.loc l).PD_p]; exact hζ⟩
  exact hW l K LL hG hCA h5l C Ti E1 E2 h4' hζ' A hA c' hc' T hT b sol hb e

theorem lev0MpL_of (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (hAdm : AdmArcA D HW F Cm) (h4 : Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm) (h9 : Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F) : LevelZeroModPLocal D HW :=
  lev0MpL_of_from D HW F Cm hAdm h4 h9 fun l _ K LL hG _ _ => by
    haveI := neZero_finrank_max_unramified K
    haveI := eq_sum_herm_smul_frame_of_inW (D.loc l) K LL
    intro C Ti E1 E2 h4' hζ A hA c' hc' T hT d b sol hb e
    exact CrC.level_zero_membership_of_horizontal _ _ C Ti E1 E2 h4' hζ A hA c' hc' T hT b sol hb e

end Formalism.MainNotions.UnusedSlot80
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.ExistsPrimOfGood =====
