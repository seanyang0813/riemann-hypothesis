module

public import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti
public import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt
public import Mathlib.RingTheory.PowerSeries.Inverse
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfG
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfF
public import Formalism.SharpRestriction.LevelLetterCocycles.ModelKStep
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfH
public import Formalism.SharpRestriction.LevelLetterCocycles.LamPS
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLoc
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHyp
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfG
public import Formalism.SharpRestriction.LevelLetterCocycles.DivisibilityInvariantMulLinear
import Mathlib.Tactic.Linter.Style
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfB
import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfE
import Mathlib.Tactic.Linter.HaveILetI
import Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation
public import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevelValueSmul

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfC, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfD, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfI, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfJ, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfK, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfA, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfL, Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPf

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfC =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfC", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DeltaInvariantLattices\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLC

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O)

theorem filC_le_bot (τ : K →ₐ[Qp] LL) (h' : ℕ)
    (hJ : JumpsInV PD T.ρ τ (Set.Icc (-(h' : ℤ)) h')) (a : ℤ) :
    Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ a ≤ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-(h' : ℤ)) := by
  by_cases ha : -(h' : ℤ) ≤ a
  · exact u3upPf_FilC_anti (PD := PD) T τ ha
  · have hc : ∀ j : ℕ, FildR PD T.ρ τ (-(h' : ℤ) - j) = FildR PD T.ρ τ (-(h' : ℤ)) := by
      intro j
      induction j with
      | zero => simp
      | succ j ih =>
        have hnj : ¬ IsJumpV PD T.ρ τ (-(h' : ℤ) - (j + 1 : ℕ)) := by
          intro hj
          have := (hJ _ hj).1
          push_cast at this
          omega
        unfold IsJumpV at hnj
        push Not at hnj
        rw [← ih, ← hnj]
        congr 1
        push_cast
        ring
    obtain ⟨j, hj⟩ : ∃ j : ℕ, a = -(h' : ℤ) - j := ⟨(-(h' : ℤ) - a).toNat, by omega⟩
    unfold Formalism.MainNotions.DeltaInvariantLattices.FilC
    rw [hj, hc j]

theorem φD_letter' {i : ZMod n} {x : W.DD T} (hx : (letE (O := O) i : LetA O n) • x = x) :
    (letE (O := O) (i + 1) : LetA O n) • W.φD T x = W.φD T x := by
  have hφ : W.φA (letE (O := O) i) = letE (i + 1) := by
    funext j
    simp only [LocWach.φA, letφ]
    by_cases h : j = i + 1
    · subst h
      simp [letE]
    · have h' : j - 1 ≠ i := fun h'' => h (by rw [← h'']; ring)
      simp [letE, h, h']
  rw [← hφ, ← algebraMap_smul W.EE (W.φA (letE i)) (W.φD T x)]
  have h : algebraMap (LetA O n) W.EE (W.φA (letE (O := O) i)) =
      W.φE (algebraMap (LetA O n) W.EE (letE i)) := (W.φE_ext _).symm
  rw [h, ← W.φD_smul, algebraMap_smul, hx]

end Generic

end Formalism.MainNotions.N.Ln34.MLC

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfC =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfD =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfD", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfC\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLD

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct

section Local

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (π' : LetA O n) (c : ZMod n)

theorem toLA_tmul' (S : Submodule O (LcQ W T π' c)) (a : ↥W.AΔ) (s : ↥S) :
    toLA W T π' c S (a ⊗ₜ s) = algebraMap (LetA O n) W.EE ((letE c : LetA O n) * a) ⊗ₜ (s : LcQ W T π' c) := by
  simp [toLA, TensorProduct.map_tmul]

theorem smulLA_tmul' (b : LetA O n) (e : W.EE) (y : LcQ W T π' c) :
    smulLA W T π' c b (e ⊗ₜ y) = (algebraMap (LetA O n) W.EE b * e) ⊗ₜ y := by
  simp [smulLA, TensorProduct.map_tmul]

theorem smulLA_mul' (a b : LetA O n) (x : LA W T π' c) :
    smulLA W T π' c (a * b) x = smulLA W T π' c a (smulLA W T π' c b x) := by
  induction x using TensorProduct.inductionOn with
  | tmul x y => simp [smulLA_tmul', map_mul, mul_assoc]
  | add x y hx hy => simp [map_add (f := _), hx, hy]

theorem eat_mem (E : ZMod n → Polynomial O) (hπ : π' ∈ W.AΔ) : Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ∈ W.AΔ := by
  intro δ hδ
  have h := hπ δ hδ
  funext i
  have hi := congrFun h i
  simp only [LocWach.γA, letγ, AlgHom.pi_apply, AlgHom.comp_apply, Pi.evalAlgHom_apply] at hi ⊢
  simp only [Formalism.MainNotions.DeltaInvariantLattices.Eat]
  rw [← Polynomial.aeval_algHom_apply, hi]

open PowerSeries in
theorem filtration_value_local (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (Eπ : LetA O n) (h' : ℕ)
    (hEΔ : Eπ ∈ W.AΔ)
    (hlev : ∀ τ ζ, Pt c ζ τ → constantCoeff (W.lev c ζ Eπ) = 0)
    (hval : ∀ τ ζ, Pt c ζ τ → ∀ y ∈ NcS W T (c - 1),
      valAt W T c ζ y ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-(h' : ℤ)))
    (hanti : ∀ (τ : K →ₐ[Qp] LL) (a' a : ℤ), a' ≤ a →
      Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ a ≤ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ a') :
    (LinearMap.range (toLA W T π' c ⊤)).map (smulLA W T π' c (Eπ ^ h')) ≤ NL W T Pt π' Eπ h' c := by
  rintro _ ⟨_, ⟨t, rfl⟩, rfl⟩
  induction t using TensorProduct.inductionOn with
  | add x y hx hy => simpa only [map_add] using add_mem hx hy
  | tmul a s =>
    apply Submodule.subset_span
    obtain ⟨⟨y, hy⟩, hys⟩ := Submodule.Quotient.mk_surjective _ (s : LcQ W T π' c)
    have hΛΔ : Eπ ^ h' ∈ W.AΔ := Subalgebra.pow_mem _ hEΔ h'
    let a' : Fin 1 → ↥W.AΔ := fun _ => ⟨Eπ ^ h' * Eπ ^ h' * a, Subalgebra.mul_mem _
      (Subalgebra.mul_mem _ hΛΔ hΛΔ) a.2⟩
    let y' : Fin 1 → W.DD T := fun _ => y
    refine ⟨1, a', y', ⟨fun _ => hy, ?_⟩, ?_⟩
    · rw [Fin.sum_univ_one, toLA_tmul', smulLA_tmul', smulLA_tmul', ← map_mul, ← map_mul]
      have hm : mkL W T π' c (y' 0) hy = (s : LcQ W T π' c) := hys
      rw [hm]
      congr 2
      simp only [a']
      ring
    · intro τ ζ hpt i
      simp only [expS, Fin.sum_univ_one, serC, a', y']
      split_ifs with hi
      · by_cases hlt : i.toNat < 2 * h'
        · have hX : X ^ (2 * h') ∣ W.lev c ζ (Eπ ^ h' * Eπ ^ h' * (a : LetA O n)) := by
            have hXE : X ∣ W.lev c ζ Eπ := PowerSeries.X_dvd_iff.mpr (hlev τ ζ hpt)
            have h2 : W.lev c ζ (Eπ ^ h' * Eπ ^ h' * (a : LetA O n)) =
                W.lev c ζ Eπ ^ (2 * h') * W.lev c ζ (a : LetA O n) := by
              rw [map_mul, map_mul, map_pow, ← pow_add, two_mul]
            rw [h2]
            exact Dvd.dvd.mul_right (pow_dvd_pow_of_dvd hXE _) _
          have hc : coeff i.toNat (W.lev c ζ (Eπ ^ h' * Eπ ^ h' * (a : LetA O n))) = 0 :=
            (PowerSeries.X_pow_dvd_iff.mp hX) _ hlt
          rw [hc, zero_smul]
          exact Submodule.zero_mem _
        · refine Submodule.smul_mem _ _ ?_
          refine hanti τ _ _ (by omega) (hval τ ζ hpt y hy)
      · exact Submodule.zero_mem _

theorem R_smul' {b : LetA O n} (hb : b ∈ W.AΔ) {r : LA W T π' c}
    (hr : r ∈ LinearMap.range (toLA W T π' c ⊤)) :
    smulLA W T π' c b r ∈ LinearMap.range (toLA W T π' c ⊤) := by
  obtain ⟨t, rfl⟩ := hr
  induction t using TensorProduct.inductionOn with
  | tmul a s =>
    refine ⟨(⟨b, hb⟩ * a) ⊗ₜ s, ?_⟩
    rw [toLA_tmul', toLA_tmul', smulLA_tmul', ← map_mul]
    congr 2
    simp only [Subalgebra.coe_mul]
    ring
  | add x y hx hy => simpa only [map_add] using add_mem hx hy

theorem lattice_contains_power_local (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop) (Eπ : LetA O n) (h' M : ℕ)
    (hEΔ : Eπ ∈ W.AΔ)
    (h4 : (LinearMap.range (toLA W T π' c ⊤)).map (smulLA W T π' c (Eπ ^ h')) ≤ NL W T Pt π' Eπ h' c) :
    JLA W T π' Eπ h' M c ≤ piNL W T Pt π' Eπ h' c M := by
  rintro _ ⟨r, hr, rfl⟩
  have hr2 := R_smul' W T π' c (Subalgebra.pow_mem _ hEΔ (2 * h')) hr
  refine ⟨smulLA W T π' c (Eπ ^ h') (smulLA W T π' c (Eπ ^ (2 * h')) r), h4 ⟨_, hr2, rfl⟩, ?_⟩
  rw [← smulLA_mul', ← smulLA_mul']
  congr 1
  rw [show 3 * h' = h' + 2 * h' by ring, pow_add]
  ring_nf

end Local

set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 1000000 in
theorem val_fil (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (h1 : adm1 D HW F Cm) {l : ℕ} [Fact l.Prime] (K LL : FinExt l) (hG : Good K 1 LL)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ) (h' : ℕ)
    (hJ : ∀ τ, JumpsInV ((D.loc l).PD K) T.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (ζ : ↥LL.1)
    (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ)
    (y : ((HW l).W K 1 LL hG).DD T) (hy : y ∈ NcS ((HW l).W K 1 LL hG) T (c - 1)) :
    valAt ((HW l).W K 1 LL hG) T c ζ y ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ (-(h' : ℤ)) := by
  have hyL : (letE (c - 1) : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) • y = y := by
    have := hy.2
    simpa [letS, LinearMap.mem_ker, sub_eq_zero] using this
  have hφ := MLC.φD_letter' ((HW l).W K 1 LL hG) T hyL
  rw [sub_add_cancel] at hφ
  have hp4 := ((h1 l K 1 LL hG).2.2.2.1 T hT).2 c ζ τ hpt
  have key : ∀ (k : ℕ) (hz : ((HW l).W K 1 LL hG).Q ^ k • ((HW l).W K 1 LL hG).φD T y ∈
      ((HW l).W K 1 LL hG).N T),
      ((HW l).W K 1 LL hG).levN T c ζ ⟨_, hz⟩ (k : ℤ) ∈
        Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := (D.loc l).PD K) T τ (-(h' : ℤ)) := by
    intro k hz
    have h3 := hp4.2.1 ⟨_, hz⟩ (k : ℤ)
    have hsub : ((letE c : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) •
        (⟨_, hz⟩ : ↥(((HW l).W K 1 LL hG).N T))) = ⟨_, hz⟩ := by
      apply Subtype.ext
      show (letE c : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) •
          (((HW l).W K 1 LL hG).Q ^ k • ((HW l).W K 1 LL hG).φD T y) = _
      rw [smul_comm, hφ]
    rw [hsub] at h3
    exact MLC.filC_le_bot T τ h' (hJ τ) _ (Submodule.mem_inf.mp h3).2
  unfold valAt
  split_ifs with h
  · exact Submodule.smul_mem _ _ (key _ _)
  · exact Submodule.zero_mem _

open PowerSeries in
theorem lev_eat_zero (D : D7) (HW : HWOf D.loc) {l : ℕ} [Fact l.Prime] (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (ζ : ↥LL.1) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) :
    constantCoeff (((HW l).W K 1 LL hG).lev c ζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) = 0 := by
  have hζ := framepf_pt_prim D HW hG c ζ τ hpt
  have hζ' : IsPrimitiveRoot ζ ((D.loc l).PD K).p := by rw [(D.loc l).PD_p K]; exact hζ
  obtain ⟨u, hu, -⟩ := framepf_lev_q_simple ((HW l).W K 1 LL hG) c ζ hζ'
  obtain ⟨w, hw⟩ := hr.2.2.2.2.1
  have h1 := congrArg (fun f => constantCoeff (((HW l).W K 1 LL hG).lev c ζ f)) hw
  simp only [hu, map_mul, constantCoeff_X, zero_mul] at h1
  have hwu : IsUnit (constantCoeff (((HW l).W K 1 LL hG).lev c ζ (w : LetA ↥(OL LL) _))) :=
    (PowerSeries.isUnit_iff_constantCoeff).mp (w.isUnit.map _)
  exact (hwu.mul_right_eq_zero).mp h1.symm

set_option synthInstance.maxHeartbeats 400000 in
set_option maxHeartbeats 1000000 in
theorem model_lattice_filtration (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (CA CB CK : ℝ) (hA : Adm1 D HW F Cm CA CB CK) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) (h' : ℕ) (hh' : 1 ≤ h')
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (hJ : ∀ τ, JumpsInV ((D.loc l).PD K) T.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) :
    (LinearMap.range (toLA ((HW l).W K 1 LL hG) T π' c ⊤)).map
        (smulLA ((HW l).W K 1 LL hG) T π' c (Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ^ h')) ≤
      NL ((HW l).W K 1 LL hG) T (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' c :=
  filtration_value_local ((HW l).W K 1 LL hG) T π' c (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h'
    (eat_mem ((HW l).W K 1 LL hG) π' E hr.1)
    (fun τ ζ hpt => lev_eat_zero D HW K LL hG π' E hr c ζ τ hpt)
    (fun τ ζ hpt y hy => val_fil D HW F Cm hA.1 K LL hG T hT h' hJ π' c ζ τ hpt y hy)
    (fun τ a' a h => u3upPf_FilC_anti (PD := (D.loc l).PD K) T τ h)

theorem model_lattice_power (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (CA CB CK : ℝ) (hA : Adm1 D HW F Cm CA CB CK) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) (h' : ℕ) (hh' : 1 ≤ h')
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (hJ : ∀ τ, JumpsInV ((D.loc l).PD K) T.ρ τ (Set.Icc (-(h' : ℤ)) h'))
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) :
    JLA ((HW l).W K 1 LL hG) T π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' (MK l K h') c ≤
      piNL ((HW l).W K 1 LL hG) T (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) π' (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' c (MK l K h') :=
  lattice_contains_power_local ((HW l).W K 1 LL hG) T π' c (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') h' (MK l K h')
    (eat_mem ((HW l).W K 1 LL hG) π' E hr.1)
    (model_lattice_filtration D HW F Cm CA CB CK hA l hl K LL hG π' E hr h' hh' T hT hJ c)

end Formalism.MainNotions.N.Ln34.MLD

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfD =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfI =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfI", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfG\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.U3upPfFilCAnti\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLI

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' : ℕ) (c : ZMod n)

theorem expS_neg (ζ : LL) {m : ℕ} (a : Fin m → LetA O n) (y : Fin m → W.DD T) {i : ℤ} (hi : i < 0) :
    expS W T c ζ a y i = 0 := by
  simp [expS, serC, if_neg (show ¬ (0 ≤ i) by omega)]

theorem ind_fil (τ : K →ₐ[Qp] LL) (U : PowerSeries LL) (hU : PowerSeries.constantCoeff U ≠ 0)
    {g : ℤ → T.V ⊗[Qp] BdR} {m₀ : ℤ} (hg : MLG.Bdd g m₀)
    (hH : ∀ j, serMul U g j ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-j)) :
    ∀ j, g j ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-j) := by
  have key : ∀ N : ℕ, ∀ j, j < m₀ + N → g j ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-j) := by
    intro N
    induction N with
    | zero => intro j hj; rw [hg j (by omega)]; exact Submodule.zero_mem _
    | succ N ih =>
      intro j hj
      by_cases hjN : j < m₀ + N
      · exact ih j hjN
      · have hj' : j = m₀ + N := by push_cast at hj; omega
        have hs := hH j
        rw [MLG.serMul_eq_sum U hg j ((j - m₀).toNat + 1) le_rfl, Finset.sum_range_succ'] at hs
        have hrest : ∑ k ∈ Finset.range (j - m₀).toNat, PowerSeries.coeff (k + 1) U • g (j - ((k + 1 : ℕ) : ℤ)) ∈
            Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-j) := by
          refine Submodule.sum_mem _ (fun k hk => Submodule.smul_mem _ _ ?_)
          rw [Finset.mem_range] at hk
          exact u3upPf_FilC_anti (PD := PD) T τ (by push_cast; omega) (ih _ (by push_cast; omega))
        have h0 := Submodule.sub_mem _ hs hrest
        rw [add_sub_cancel_left, PowerSeries.coeff_zero_eq_constantCoeff_apply, Nat.cast_zero, sub_zero] at h0
        exact (Submodule.smul_mem_iff _ hU).1 h0
  intro j
  exact key ((j - m₀).toNat + 1) j (by omega)

end Generic

end Formalism.MainNotions.N.Ln34.MLI

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfI =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfJ =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfJ", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfF\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ModelKStep\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfB\nimport Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfE\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfH\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfI\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfG\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLJ

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (Pt : ZMod n → LL → (K →ₐ[Qp] LL) → Prop)
    (π' Eπ : LetA O n) (h' : ℕ) (c : ZMod n)

theorem local_form (hwd : MLF.WD W T Pt π' c) {u₀ : LetA O n} (hu₀ : u₀ ∈ W.AΔ)
    (hΛ : u₀ * W.γA W.gamK (Eπ ^ h') = Eπ ^ h') (hlet : W.γA W.gamK (letE c : LetA O n) = letE c)
    (u : LL) (hu : u ≠ 0) (hu1 : ∀ i : ℤ, i ≠ 0 → u ^ i ≠ 1)
    (hlev : ∀ τ ζ, Pt c ζ τ → ∀ a, W.lev c ζ (W.γA W.gamK a) = PowerSeries.rescale u (W.lev c ζ a))
    (hsimp : ∀ τ ζ, Pt c ζ τ → ∃ U : PowerSeries LL, W.lev c ζ (Eπ ^ h') = PowerSeries.X ^ h' * U ∧
      PowerSeries.constantCoeff U ≠ 0)
    {x : LA W T π' c} (hx : x ∈ LamLA W T π' Eπ h' c ⊤)
    (hγ : γLA W T π' c x - x ∈ NL W T Pt π' Eπ h' c) :
    ∀ τ ζ, Pt c ζ τ → ∀ f, ExpL W T π' Eπ h' c ζ x f → ∀ i : ℤ, i ≠ 0 →
      f i ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-i) := by
  intro τ ζ hpt f hf i hi
  obtain ⟨⟨m₀, hf0⟩, m, a, y, hr, hfe⟩ := hf
  have hfb : MLG.Bdd f m₀ := hf0

  have hrγ := MLH.rep_γ W T π' Eπ h' c hu₀ hΛ hlet hr
  have hrn := MLE.rep_smul W T π' Eπ h' c hr (W.AΔ.algebraMap_mem (-1 : O))
  rw [← MLE.smul_eq_smulLA, neg_one_smul] at hrn
  have hra := MLE.rep_append W T π' Eπ h' c hrγ hrn
  rw [← sub_eq_add_neg] at hra
  have hgood := MLF.good_all W T Pt π' Eπ h' c hwd hγ hra τ ζ hpt
  rw [MLE.expS_append] at hgood
  set e := expS W T c ζ (fun j => (a j : LetA O n)) y with he
  have heb : MLG.Bdd e 0 := fun j hj => MLI.expS_neg W T c ζ _ y hj

  have hneg : expS W T c ζ (fun j => ((⟨algebraMap O (LetA O n) (-1) * a j,
      W.AΔ.mul_mem (W.AΔ.algebraMap_mem _) (a j).2⟩ : ↥W.AΔ) : LetA O n)) y = -e := by
    show expS W T c ζ (fun j => algebraMap O (LetA O n) (-1) * (a j : LetA O n)) y = -e
    rw [MLF.expS_alg_mul, map_neg, map_one, neg_one_smul]
  obtain ⟨U, hU, hU0⟩ := hsimp τ ζ hpt
  have hfu : MLG.Bdd (fun s => u ^ s • f s) m₀ := fun s hs => by simp only [hfb s hs, smul_zero]
  have hγpart : ∀ j, expS W T c ζ (fun k => ((⟨u₀ * W.γA W.gamK (a k), W.AΔ.mul_mem hu₀
      (MLH.γA_mem_AΔ W (a k).2)⟩ : ↥W.AΔ) : LetA O n)) y j =
      serMul (W.lev c ζ (Eπ ^ h')) (fun s => u ^ s • f s) j := by
    intro j
    show expS W T c ζ (fun k => u₀ * W.γA W.gamK (a k)) y j = _
    have hLdec : W.lev c ζ (Eπ ^ h') = W.lev c ζ u₀ * PowerSeries.rescale u (W.lev c ζ (Eπ ^ h')) := by
      rw [← hlev τ ζ hpt, ← map_mul, hΛ]
    rw [MLB.expS_mul, hLdec, ← MLG.serMul_serMul _ _ hfu]
    have hin : serMul (PowerSeries.rescale u (W.lev c ζ (Eπ ^ h'))) (fun s => u ^ s • f s) =
        fun s => u ^ s • e s := by
      funext s
      rw [← MLG.serMul_rescale u hu, hfe s]
    rw [hin, MLG.serMul_eq_sum (m₀ := 0) _ (fun s hs => by simp only [heb s hs, smul_zero]) j (j.toNat + 1) (by omega)]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [MLH.expS_γ W T c ζ u (hlev τ ζ hpt)]
    congr 1
    by_cases hjk : 0 ≤ j - (k : ℤ)
    · rw [← zpow_natCast, Int.toNat_of_nonneg hjk]
    · rw [MLI.expS_neg W T c ζ _ y (by omega), heb _ (by omega), smul_zero, smul_zero]

  set g : ℤ → T.V ⊗[Qp] BdR := fun s => u ^ s • f s - f s with hgdef
  have hgb : MLG.Bdd g m₀ := fun s hs => by simp [hgdef, hfb s hs]
  have hGg : ∀ j, serMul (W.lev c ζ (Eπ ^ h')) g j ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (h' - j) := by
    intro j
    have h1 := hgood j
    rw [Pi.add_apply, hγpart j, hneg, Pi.neg_apply, ← hfe j, ← sub_eq_add_neg] at h1
    convert h1 using 1
    rw [MLG.serMul_eq_sum _ hgb j _ le_rfl, MLG.serMul_eq_sum _ hfu j _ le_rfl,
      MLG.serMul_eq_sum _ hfb j _ le_rfl, ← Finset.sum_sub_distrib]
    refine Finset.sum_congr rfl (fun k _ => ?_)
    rw [hgdef, smul_sub]
  have hH : ∀ j, serMul U g j ∈ Formalism.MainNotions.DeltaInvariantLattices.FilC (PD := PD) T τ (-j) := by
    intro j
    have h1 := hGg (j + h')
    rw [hU, ← MLG.serMul_serMul _ _ hgb, MLG.serMul_X_pow, add_sub_cancel_right] at h1
    convert h1 using 2
    ring
  have hgi := MLI.ind_fil T τ U hU0 hgb hH i
  have e1 : g i = (u ^ i - 1) • f i := by rw [hgdef, sub_smul, one_smul]
  rw [e1] at hgi
  exact (Submodule.smul_mem_iff _ (sub_ne_zero.2 (hu1 i hi))).1 hgi

end Generic

end Formalism.MainNotions.N.Ln34.MLJ

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfJ =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfK =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfK", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LamPS\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.PowerSeries.Inverse\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLK

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module

theorem lev_Eat_simple (D : D7) (HW : HWOf D.loc) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) (c : ZMod (finrank ℚ_[l] ↥(K0 K)))
    (ζ : ↥LL.1) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) :
    ∃ U : PowerSeries ↥LL.1, ((HW l).W K 1 LL hG).lev c ζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π') = PowerSeries.X * U ∧
      PowerSeries.constantCoeff U ≠ 0 := by
  obtain ⟨τs, hIs, -⟩ := hpt
  obtain ⟨-, hIs2⟩ := hIs
  unfold Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations at hr
  obtain ⟨-, -, -, -, ⟨w, hw⟩, -, -, -⟩ := hr
  generalize (HW l).W K 1 LL hG = W at hw ⊢

  have hz : (D.loc l).ζQ 1 ^ l = 1 := by
    have h := (D.loc l).ζQ_succ 0
    rw [(D.loc l).ζQ_zero] at h
    simpa using h
  have hmem : (D.loc l).ζQ 1 ∈ Ks K 1 := by
    show (D.loc l).ζQ 1 ∈ K0 K ⊔ IntermediateField.adjoin ℚ_[l] {x : Om l | x ^ (l ^ 1) = 1}
    exact SetLike.le_def.mp le_sup_right (IntermediateField.subset_adjoin ℚ_[l] _ (by simpa using hz))
  have hζ : τs ⟨_, hmem⟩ = ζ := hIs2 ⟨_, hmem⟩ rfl
  have hζl : ζ ^ l = 1 := by
    have h1 : (⟨_, hmem⟩ : ↥(Ks K 1)) ^ l = 1 := Subtype.ext (by simpa using hz)
    rw [← hζ, ← map_pow, h1, map_one]
  have hne : ζ ≠ 1 := by
    intro h1
    have h2 : (⟨_, hmem⟩ : ↥(Ks K 1)) = 1 :=
      RingHom.injective (τs : ↥(Ks K 1) →+* ↥LL.1) (by simp [hζ, h1])
    exact (D.loc l).ζQ_one (by simpa using congrArg Subtype.val h2)
  have hprim : IsPrimitiveRoot ζ l := by
    have h := IsPrimitiveRoot.orderOf ζ
    rwa [orderOf_eq_prime hζl hne] at h
  have hl0 : ((l : ℕ) : ↥LL.1) ≠ 0 := by
    intro h
    have h' := (D.loc l).v_l LL
    rw [h, AddValuation.map_zero] at h'
    simp at h'

  obtain ⟨F, hF0, hFd, hFπ⟩ :=
    W.lev_π c ζ ⟨1, by rw [(D.loc l).PD_p K, pow_one]; exact hprim⟩
  obtain ⟨F1, hF1⟩ : PowerSeries.X ∣ F - 1 := by
    rw [PowerSeries.X_dvd_iff, map_sub, hF0, map_one, sub_self]
  have hF1c : PowerSeries.constantCoeff F1 = 1 := by
    have hd := congrArg (fun f : PowerSeries ↥LL.1 => PowerSeries.constantCoeff (PowerSeries.derivative f)) hF1
    simp only [map_sub, Derivation.map_one_eq_zero, sub_zero, hFd, hF0, Derivation.leibniz,
      PowerSeries.derivative_X, smul_eq_mul, map_add, map_mul, PowerSeries.constantCoeff_X,
      zero_mul, zero_add, mul_one] at hd
    exact hd.symm

  have hq : (letπ : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) * W.q =
      (1 + letπ) ^ ((D.loc l).PD K).p - 1 := by
    funext i
    exact W.q₀_def
  have hl1 : W.lev c ζ 1 = 1 := map_one (W.lev c ζ)
  have hadd : W.lev c ζ (1 + letπ) = 1 + W.lev c ζ letπ := by
    rw [← hl1]
    exact (W.lev c ζ).map_add 1 letπ
  have hlq := congrArg (W.lev c ζ) hq
  rw [map_mul (W.lev c ζ), map_sub (W.lev c ζ), map_pow (W.lev c ζ), hadd, hl1, hFπ, (D.loc l).PD_p K, mul_pow, ← map_pow PowerSeries.C ζ l, hζl,
    map_one PowerSeries.C, one_mul, ← mul_geom_sum, hF1, hw, map_mul (W.lev c ζ)] at hlq
  have hy0 : PowerSeries.constantCoeff (W.lev c ζ letπ) ≠ 0 := by
    have h := congrArg PowerSeries.constantCoeff hFπ
    rw [map_add (f := _), map_one, map_mul, PowerSeries.constantCoeff_C, hF0, mul_one] at h
    have h' : PowerSeries.constantCoeff (W.lev c ζ letπ) = ζ - 1 := by linear_combination h
    rw [h']
    exact sub_ne_zero.mpr hne
  obtain ⟨u, hu⟩ : IsUnit (W.lev c ζ letπ * W.lev c ζ ↑w) :=
    (PowerSeries.isUnit_iff_constantCoeff.mpr (isUnit_iff_ne_zero.mpr hy0)).mul
      (w.isUnit.map (W.lev c ζ))
  rw [← mul_assoc, ← hu] at hlq
  refine ⟨↑u⁻¹ * (F1 * ∑ i ∈ Finset.range l, F ^ i), ?_, ?_⟩
  · calc _ = ↑u⁻¹ * (↑u * W.lev c ζ (Formalism.MainNotions.DeltaInvariantLattices.Eat E π')) := by
          rw [← mul_assoc, Units.inv_mul, one_mul]
      _ = _ := by rw [hlq]; ring
  · rw [map_mul]
    refine mul_ne_zero ((u⁻¹).isUnit.map PowerSeries.constantCoeff).ne_zero ?_

    rw [map_mul, hF1c, one_mul, map_sum]
    simpa [hF0] using hl0

end Formalism.MainNotions.N.Ln34.MLK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfK =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfA =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfA", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DownSlotProposition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfLoc\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.LevelValueSmul\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLA

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct
open Formalism.MainNotions.N.Ln34.LevelExpansions.V (expwd_core lev_letE_mul PtHyp XO valQ muL)

theorem flat_compHom {O LL X : Type*} [CommRing O] [IsDomain O] [IsDedekindDomain O] [Field LL]
    [Algebra O LL] (hinj : Function.Injective (algebraMap O LL)) [AddCommGroup X] [Module LL X] :
    letI : Module O X := Module.compHom X (algebraMap O LL)
    Module.Flat O X := by
  letI : Module O X := Module.compHom X (algebraMap O LL)
  rw [IsDedekindDomain.flat_iff_torsion_eq_bot, eq_bot_iff]
  intro x hx
  rw [Submodule.mem_torsion_iff] at hx
  obtain ⟨⟨r, hr⟩, hrx⟩ := hx
  have hr0 : r ≠ 0 := nonZeroDivisors.ne_zero hr
  have h1 : algebraMap O LL r • x = 0 := hrx
  rw [smul_eq_zero] at h1
  rw [Submodule.mem_bot]
  rcases h1 with h1 | h1
  · exact absurd ((map_eq_zero_iff _ hinj).mp h1) hr0
  · exact h1

section Generic

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}
    {W : LocWach PD LL O v n}
    {Zl Ai : Type} [CommRing Zl] [CommRing Ai] [Algebra Zl O] [Algebra Zl Ai]
    {RW : Type} [CommRing RW] [Algebra O RW]
    {inclR : (O ⊗[Zl] Ai) →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : O ⊗[Zl] Ai}
    {E : EtTie W (O ⊗[Zl] Ai) RW inclR φR gR πA} {ιdR : Ai →+* BdR} {p1 : Ai} {tS zS : BdR}
    (Ct : CmpTie W E ιdR p1 tS zS) (T : LocLat G Qp LL O)

instance (BdR : Type) [CommRing BdR] [Algebra Qp BdR] (T : LocLat G Qp LL O) :
    AddCommGroup (XO BdR T) := inferInstanceAs (AddCommGroup (T.V ⊗[Qp] BdR))

instance (BdR : Type) [CommRing BdR] [Algebra Qp BdR] (T : LocLat G Qp LL O) :
    Module LL (XO BdR T) := inferInstanceAs (Module LL (T.V ⊗[Qp] BdR))

instance (BdR : Type) [CommRing BdR] [Algebra Qp BdR] (T : LocLat G Qp LL O) :
    Module O (XO BdR T) := Module.compHom _ (algebraMap O LL)

include Ct in
theorem expS_wd [IsDomain O] [IsDedekindDomain O] (hinj : Function.Injective (algebraMap O LL))
    {c : ZMod n} {ζ : LL} (hP : PtHyp (W := W) T c ζ) (π' : LetA O n)
    (hπ : PowerSeries.constantCoeff (W.lev (c - 1) 1 π') = 0)
    {m m' : ℕ} (a : Fin m → LetA O n) (y : Fin m → W.DD T) (hy : ∀ j, y j ∈ NcS W T (c - 1))
    (b : Fin m' → LetA O n) (z : Fin m' → W.DD T) (hz : ∀ k, z k ∈ NcS W T (c - 1))
    (h : ∑ j, algebraMap (LetA O n) W.EE ((letE c : LetA O n) * a j) ⊗ₜ[O] mkL W T π' c (y j) (hy j) =
      ∑ k, algebraMap (LetA O n) W.EE ((letE c : LetA O n) * b k) ⊗ₜ[O] mkL W T π' c (z k) (hz k)) :
    expS W T c ζ a y = expS W T c ζ b z := by
  haveI : Module.Flat O (XO BdR T) := flat_compHom (X := XO BdR T) hinj
  have key := expwd_core (IsScalarTower.toAlgHom O (LetA O n) W.EE).toLinearMap
    (fun x y hxy => W.EE_inj hxy) (valQ Ct T hP π' hπ) (muL (W := W) T c ζ)
    (fun j => (letE c : LetA O n) * a j) (fun j => mkL W T π' c (y j) (hy j))
    (fun k => (letE c : LetA O n) * b k) (fun k => mkL W T π' c (z k) (hz k)) h
  have e1 : ∀ j, muL (W := W) T c ζ (((letE c : LetA O n) * a j) ⊗ₜ[O]
      valQ Ct T hP π' hπ (mkL W T π' c (y j) (hy j))) = serC (W.lev c ζ (a j)) (valAt W T c ζ (y j)) :=
    fun j => by
      show serC (W.lev c ζ ((letE c : LetA O n) * a j)) (valAt W T c ζ (y j)) = _
      rw [lev_letE_mul]
  have e2 : ∀ k, muL (W := W) T c ζ (((letE c : LetA O n) * b k) ⊗ₜ[O]
      valQ Ct T hP π' hπ (mkL W T π' c (z k) (hz k))) = serC (W.lev c ζ (b k)) (valAt W T c ζ (z k)) :=
    fun k => by
      show serC (W.lev c ζ ((letE c : LetA O n) * b k)) (valAt W T c ζ (z k)) = _
      rw [lev_letE_mul]
  have key2 : ∑ j, serC (W.lev c ζ (a j)) (valAt W T c ζ (y j)) =
      ∑ k, serC (W.lev c ζ (b k)) (valAt W T c ζ (z k)) := by
    refine (Finset.sum_congr rfl (fun j _ => (e1 j).symm)).trans ?_
    refine Eq.trans ?_ (Finset.sum_congr rfl (fun k _ => e2 k))
    exact key
  funext i
  have := congrFun key2 i
  simpa [expS, Finset.sum_apply] using this

end Generic

end Formalism.MainNotions.N.Ln34.MLA

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfA =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfL =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfL", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfF\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ConstantCoeffQZeroEqP\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.DvdCondition\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfHyp\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.FramePfPt\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.GeneratorBoundOfHypotheses\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfC\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelFPfG\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfA\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34.MLL

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules TensorProduct Formalism.MainNotions.N.Ln34.ModelFPf

theorem rec_WD (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (CA CB CK : ℝ) (hA : Adm1 D HW F Cm CA CB CK) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E)
    (T : LocLat ↥(GK K) ℚ_[l] ↥LL.1 ↥(OL LL)) (hT : IsCrys ((D.loc l).PD K) T.ρ)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) :
    MLF.WD ((HW l).W K 1 LL hG) T (Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG) π' c := by
  intro τ ζ hpt m m' a y hy b z hz h
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hprim : IsPrimitiveRoot ζ l := framepf_pt_prim D HW hG c ζ τ hpt
  have hprim' : IsPrimitiveRoot ζ ((D.loc l).PD K).p := by rw [hp]; exact hprim
  haveI : IsDiscreteValuationRing ↥(OL LL) := GenPf.isDVR (D.loc l) LL
  have hinj : Function.Injective (algebraMap ↥(OL LL) ↥LL.1) := Subtype.val_injective
  obtain ⟨-, -, -, h4W, -⟩ := hA.1 l K 1 LL hG
  have hone : ∃ j : ℕ, IsPrimitiveRoot (1 : ↥LL.1) (((D.loc l).PD K).p ^ j) := ⟨0, by simp⟩
  have hπ1 : PowerSeries.constantCoeff (((HW l).W K 1 LL hG).lev (c - 1) 1 letπ) = 0 := by
    rw [CrystallineExponents.cc_lev_pi ((HW l).W K 1 LL hG) (c - 1) 1 hone, sub_self]
  have hX : ((HW l).W K 1 LL hG).X = letπ := by simp [LocWach.X, hs]
  have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
    rw [h0, zero_dvd_iff] at hd
    omega
  have hsK : 1 ≤ sK l K := Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  have hπ : PowerSeries.constantCoeff (((HW l).W K 1 LL hG).lev (c - 1) 1 π') = 0 := by
    obtain ⟨w, hw⟩ := hr.2.2.1
    rw [hw, map_mul, map_pow, map_mul, map_pow, hπ1, zero_pow (by omega), mul_zero]
  have hQ := framepf_Q_at ((HW l).W K 1 LL hG) hs c ζ hprim'
  have hP : Formalism.MainNotions.N.Ln34.LevelExpansions.V.PtHyp (W := (HW l).W K 1 LL hG) T c ζ := by
    refine ⟨hT, ⟨1, by rw [pow_one]; exact hprim'⟩, hprim'.pow_eq_one, hQ.1, hQ.2, ?_, ?_⟩
    · intro x k hk
      have h4 := ((h4W T hT).1 (c - 1) 1 ⟨0, by simp⟩ (by rw [hX]; exact hπ1)).1 x k
      exact h4.2 hk
    · intro x hx
      exact ((HW l).W K 1 LL hG).N_φ T x hx
  exact MLA.expS_wd ((Cm l).C K 1 LL hG).tie T hinj hP π' hπ a y hy b z hz h

theorem exists_mul_gamma_Eat_pow_eq_Eat_pow (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (CA CB CK : ℝ) (hA : Adm1 D HW F Cm CA CB CK) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) (π' : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))
    (E : ZMod (finrank ℚ_[l] ↥(K0 K)) → Polynomial ↥(OL LL))
    (hr : Formalism.MainNotions.DeltaInvariantLattices.wachRingRelations ((HW l).W K 1 LL hG) (eK K) (sK l K) π' E) (h' : ℕ) :
    ∃ u₀ ∈ ((HW l).W K 1 LL hG).AΔ, u₀ * ((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gamK
      (Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ^ h') = Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ^ h' := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hgam : ((HW l).W K 1 LL hG).gamK = ((HW l).W K 1 LL hG).gam :=
    ((HW l).W K 1 LL hG).gamK_eq_one hs (by rw [hp]; exact hl)
  obtain ⟨hπΔ, -, ⟨w0, hw0⟩, -, ⟨w, hw⟩, -, ⟨w2, hw2⟩, -⟩ := hr
  have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
    rw [h0, zero_dvd_iff] at hd
    omega
  have hsK : 1 ≤ sK l K := Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  have hEΔ : Formalism.MainNotions.DeltaInvariantLattices.Eat E π' ∈ ((HW l).W K 1 LL hG).AΔ := by
    intro δ hδ
    funext i
    show ((HW l).W K 1 LL hG).γ₀ δ (Polynomial.aeval (π' i) (E i)) = Polynomial.aeval (π' i) (E i)
    rw [← Polynomial.aeval_algHom_apply]
    exact congrArg (fun t => Polynomial.aeval t (E i)) (congrFun (hπΔ δ hδ) i)
  obtain ⟨u, hu, hγ⟩ := gam_unit ((HW l).W K 1 LL hG) π' E hsK w2 hw2 w0 hw0
  have hpO : (((D.loc l).PD K).p : ↥(OL LL)) ≠ 0 := fun h0 => by
    apply p_ne_zero ((HW l).W K 1 LL hG)
    rw [← map_natCast (algebraMap ↥(OL LL) ↥LL.1), h0, map_zero]
  have hnz := Eπ_nzd ((HW l).W K 1 LL hG) hw (q0_ne_two_and_ne_q_and_ne_d ((HW l).W K 1 LL hG) hpO)
  have huΔ := u_mem_AΔ ((HW l).W K 1 LL hG) hEΔ hnz hγ
  have hu'Δ := inv_mem_AΔ ((HW l).W K 1 LL hG) huΔ hu.val_inv_mul
  refine ⟨((hu.unit⁻¹ : (LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K)))ˣ) : LetA _ _) ^ h', Subalgebra.pow_mem _ hu'Δ h', ?_⟩
  rw [hgam, map_pow, hγ, mul_pow, ← mul_assoc, ← mul_pow, hu.val_inv_mul, one_pow, one_mul]

theorem rec_lev (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F)
    (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l) (hG : Good K 1 LL)
    (c : ZMod (finrank ℚ_[l] ↥(K0 K))) (τ : ↥K.1 →ₐ[ℚ_[l]] ↥LL.1) (ζ : ↥LL.1)
    (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) (a : LetA ↥(OL LL) (finrank ℚ_[l] ↥(K0 K))) :
    ((HW l).W K 1 LL hG).lev c ζ (((HW l).W K 1 LL hG).γA ((HW l).W K 1 LL hG).gamK a) =
      PowerSeries.rescale (algebraMap ↥(OL LL) ↥LL.1
        ((((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK : (↥(OL LL))ˣ) : ↥(OL LL)))
        (((HW l).W K 1 LL hG).lev c ζ a) := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hgam : ((HW l).W K 1 LL hG).gamK = ((HW l).W K 1 LL hG).gam :=
    ((HW l).W K 1 LL hG).gamK_eq_one hs (by rw [hp]; exact hl)
  have hprim : IsPrimitiveRoot ζ (((D.loc l).PD K).p ^ 1) := by
    rw [pow_one, hp]; exact framepf_pt_prim D HW hG c ζ τ hpt
  have hv : ((1 : ℕ) : WithTop ℚ) ≤ (D.loc l).v LL (algebraMap ↥(OL LL) ↥LL.1
      ((((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK : (↥(OL LL))ˣ) : ↥(OL LL)) - ((1 : ℕ) : ↥LL.1)) := by
    rw [hgam, Nat.cast_one (R := ↥LL.1), ((HW l).W K 1 LL hG).gam_gen, hs]
  have := ((Cm l).C K 1 LL hG).tie.lev_Γ ((HW l).W K 1 LL hG).gamK c ζ ζ 1 1 hprim hv (by rw [pow_one]) a
  exact this

theorem rec_u (D : D7) (HW : HWOf D.loc) (l : ℕ) [Fact l.Prime] (hl : l ≠ 2) (K LL : FinExt l)
    (hG : Good K 1 LL) :
    algebraMap ↥(OL LL) ↥LL.1 ((((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gamK : (↥(OL LL))ˣ) :
      ↥(OL LL)) ≠ 0 ∧
    ∀ i : ℤ, i ≠ 0 → (algebraMap ↥(OL LL) ↥LL.1 ((((HW l).W K 1 LL hG).χΓ
      ((HW l).W K 1 LL hG).gamK : (↥(OL LL))ˣ) : ↥(OL LL))) ^ i ≠ 1 := by
  have hs : ((HW l).W K 1 LL hG).s = 1 := (HW l).W_s K 1 LL hG
  have hp : ((D.loc l).PD K).p = l := (D.loc l).PD_p K
  have hgam : ((HW l).W K 1 LL hG).gamK = ((HW l).W K 1 LL hG).gam :=
    ((HW l).W K 1 LL hG).gamK_eq_one hs (by rw [hp]; exact hl)
  have hd := Formalism.MainNotions.N.Ln34.DvdPf.dvdCondition l hl K LL hG
  have hl2 : 2 ≤ l := (Fact.out : l.Prime).two_le
  have he : 0 < eK K := Nat.pos_of_ne_zero fun h0 => by
    rw [h0, zero_dvd_iff] at hd
    omega
  have hsK : 1 ≤ sK l K := Nat.div_pos (Nat.le_of_dvd (by omega) hd) he
  have har := (framepf_hyp_arith D HW l hl K LL hG 1 hsK).1
  rw [hgam]
  set χ := ((((HW l).W K 1 LL hG).χΓ ((HW l).W K 1 LL hG).gam : (↥(OL LL))ˣ) : ↥(OL LL)) with hχ
  have hnat : ∀ k : ℕ, 1 ≤ k → (algebraMap ↥(OL LL) ↥LL.1 χ) ^ k ≠ 1 := by
    intro k hk h1
    have h2 : χ ^ k = 1 := by
      apply Subtype.val_injective
      have := h1
      rw [← map_pow] at this
      simpa using this
    apply har k hk
    rw [← pow_mul, mul_comm, pow_mul, h2, one_pow]
  refine ⟨((Units.isUnit _).map (algebraMap ↥(OL LL) ↥LL.1)).ne_zero, fun i hi h1 => ?_⟩
  rcases lt_or_gt_of_ne hi with hneg | hpos
  · apply hnat (-i).toNat (by omega)
    have : (algebraMap ↥(OL LL) ↥LL.1 χ) ^ (-i) = 1 := by rw [zpow_neg, h1, inv_one]
    rwa [← zpow_natCast, Int.toNat_of_nonneg (by omega)]
  · apply hnat i.toNat (by omega)
    rwa [← zpow_natCast, Int.toNat_of_nonneg (by omega)]

end Formalism.MainNotions.N.Ln34.MLL

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfL =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPf =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPf", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.ModelKStep\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DivisibilityInvariantMulLinear\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfD\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfH\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfJ\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfK\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfL\nimport Formalism.SharpRestriction.LevelLetterCocycles.FrobeniusPowUniformizerFactorisation\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPfF\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.N.Ln34

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc Module Formalism.MainNotions.ElementDenominator Formalism.MainNotions.ElementDenominator.CongruenceModules

theorem modell_pf : ModelLStep := by
  unfold ModelLStep modelLR recU
  intro D HW F Cm CA CB CK hA l _ hl K LL hG π' E hr h' hh' T hT hJ c
  obtain ⟨u₀, hu₀, hΛ⟩ := MLL.exists_mul_gamma_Eat_pow_eq_Eat_pow D HW F Cm CA CB CK hA l hl K LL hG π' E hr h'
  obtain ⟨hu, hu1⟩ := MLL.rec_u D HW l hl K LL hG
  have hwd := MLL.rec_WD D HW F Cm CA CB CK hA l hl K LL hG π' E hr T hT c
  have hlet := Formalism.MainNotions.ArcLiftingSetup.γA_letE ((HW l).W K 1 LL hG) ((HW l).W K 1 LL hG).gamK c
  have hlev := fun τ ζ (hpt : Formalism.MainNotions.DeltaInvariantLattices.ptK D.loc HW hG c ζ τ) a =>
    MLL.rec_lev D HW F Cm l hl K LL hG c τ ζ hpt a
  unfold ModelL
  refine ⟨MLF.nl_le _ _ _ _ _ _ _, fun x hx => MLH.nl_γ _ _ _ _ _ _ _ hu₀ hΛ hlet _ hlev hx,
    fun a ha x hx => MLF.nl_smulA _ _ _ _ _ _ _ ha hx,
    MLD.model_lattice_filtration D HW F Cm CA CB CK hA l hl K LL hG π' E hr h' hh' T hT hJ c,
    fun x hx k hk => MLF.nl_sat _ _ _ _ _ _ _ hwd ?_ hx k hk,
    MLD.model_lattice_power D HW F Cm CA CB CK hA l hl K LL hG π' E hr h' hh' T hT hJ c,
    fun x hx hγ => MLJ.local_form _ _ _ _ _ _ _ hwd hu₀ hΛ hlet _ hu hu1 hlev ?_ hx hγ⟩
  · rw [map_natCast]
    exact Formalism.MainNotions.LiftingTheory.tr_pLL_ne ((HW l).W K 1 LL hG)
  · intro τ ζ hpt
    obtain ⟨U, hU, hU0⟩ := MLK.lev_Eat_simple D HW l hl K LL hG π' E hr c ζ τ hpt
    refine ⟨U ^ h', ?_, ?_⟩
    · rw [map_pow, hU, mul_pow]
    · rw [map_pow]
      exact pow_ne_zero _ hU0

end Formalism.MainNotions.N.Ln34

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.DvrLatticeRank.ModelLPf =====
