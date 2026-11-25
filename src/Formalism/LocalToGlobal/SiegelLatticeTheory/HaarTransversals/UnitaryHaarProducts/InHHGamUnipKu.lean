module

public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuDefs
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant
public import Formalism.LocalToGlobal.Columns.DecorationStabilizerTrivialUnipotent
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ReHermitianCombinationNonpos
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHLatOfLattice
public import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.LemmaN
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictGen
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHNeat
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuProj
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictAll
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuCore, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuGlob, Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuCore =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuCore", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuDefs\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting
open Matrix
open scoped TensorProduct

namespace Formalism.L2.SG.PoincareInHH.Cut.GU

open Formalism.L2.SG.Pf.Level

open Formalism.L2.SG.Pf Formalism.L2.SG.Pf.Level

variable {D : D7} (X : HidaSetting D)

theorem zs_mL {t : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F} (ht : ZMod' X.B.I X.B.g t) {b : VA X.B.I}
    (hb : b ∈ X.B.I.Lf) : t • b ∈ mL X.B.I X.B.g := by
  obtain ⟨s, hs, rfl⟩ := ht
  rw [mul_comm, mul_smul]
  exact intsmul_mem X hs (unitaryCongruence.smul_mem_mL X.B.I hb)

theorem Mo_le_Qs {f : VA X.B.I} (hf : f ∈ X.B.I.Lf) (T : Set (VA X.B.I))
    (hT : ∀ s ∈ T, ZMod' X.B.I X.B.g (hA X.B.I f s)) :
    unitaryCongruence.Mo X.B.I X.B.g T ≤ unitaryCongruence.Qs X.B.I X.B.g f :=
  sup_le (Submodule.span_le.mpr fun s hs => hT s hs) (unitaryCongruence.mL_Qs X.B.I X.B.g hf)

def Gm (m : ℕ) : Submodule (IntAf X.B.I.F X.B.I.E) (VA X.B.I) :=
  unitaryCongruence.Mo X.B.I X.B.g (Set.range X.e0 ∪ X.bw '' {j | j.1 < m})

theorem flag {κ : X.B.I.Gf} (hκ : κ ∈ X.K2) :
    ∀ m, m ≤ D.R.k → ∀ w ∈ Gm X m, ((X.B.I.fmat κ - 1) ^ m) *ᵥ w ∈ Gm X 0 := by
  intro m
  induction m with
  | zero => intro _ w hw; rwa [pow_zero, one_mulVec]
  | succ m ih =>
    intro hm w hw
    rw [pow_succ, ← mulVec_mulVec]
    apply ih (Nat.le_of_succ_le hm)
    exact unitaryCongruence.b_step X.B.I X.B.g X.e0 X.z0 X.bw hκ.1 hκ.2 ⟨m, hm⟩ w hw

theorem bw_Gk (j : Fin D.R.k) : X.bw j ∈ Gm X D.R.k :=
  unitaryCongruence.sub_Mo X.B.I (Or.inr ⟨j, j.2, rfl⟩)

theorem adj1 (κ : X.B.I.Gf) (a b : VA X.B.I) :
    hA X.B.I a ((X.B.I.fmat κ - 1) *ᵥ b) = hA X.B.I ((X.B.I.fmat κ⁻¹ - 1) *ᵥ a) b := by
  have h0 : hA X.B.I a (X.B.I.fmat κ *ᵥ b) = hA X.B.I (X.B.I.fmat κ⁻¹ *ᵥ a) b := by
    have := hA_fmat X κ (X.B.I.fmat κ⁻¹ *ᵥ a) b
    rwa [mulVec_mulVec, fmat_mul_inv, one_mulVec] at this
  rw [sub_mulVec, sub_mulVec, one_mulVec, one_mulVec, unitaryCongruence.hA_sub_right, hA_sub_left, h0]

theorem adj (κ : X.B.I.Gf) : ∀ m (a b : VA X.B.I),
    hA X.B.I a (((X.B.I.fmat κ - 1) ^ m) *ᵥ b) = hA X.B.I (((X.B.I.fmat κ⁻¹ - 1) ^ m) *ᵥ a) b := by
  intro m
  induction m with
  | zero => intro a b; simp only [pow_zero, one_mulVec]
  | succ m ih =>
    intro a b
    rw [pow_succ, ← mulVec_mulVec, ih, adj1, pow_succ', ← mulVec_mulVec]

theorem pow_Lf {κ : X.B.I.Gf} (hκ : κ ∈ X.B.I.Kset) :
    ∀ m, ∀ y ∈ X.B.I.Lf, ((X.B.I.fmat κ - 1) ^ m) *ᵥ y ∈ X.B.I.Lf := by
  intro m
  induction m with
  | zero => intro y hy; rwa [pow_zero, one_mulVec]
  | succ m ih =>
    intro y hy
    rw [pow_succ, ← mulVec_mulVec]
    exact ih _ (unitaryCongruence.K_sub_mv X.B.I hκ hy)

theorem pow_Y (κ : X.B.I.Gf) (Y : Submodule (IntAf X.B.I.F X.B.I.E) (VA X.B.I))
    (hYM : ∀ v ∈ Y, X.B.I.fmat κ *ᵥ v ∈ Y) :
    ∀ m, ∀ y ∈ Y, ((X.B.I.fmat κ - 1) ^ m) *ᵥ y ∈ Y := by
  intro m
  induction m with
  | zero => intro y hy; rwa [pow_zero, one_mulVec]
  | succ m ih =>
    intro y hy
    rw [pow_succ, ← mulVec_mulVec]
    apply ih
    rw [sub_mulVec, one_mulVec]
    exact Y.sub_mem (hYM y hy) hy

theorem decomp (hP : ProjModG X) {v : VA X.B.I} (hv : v ∈ X.B.I.Lf)
    (ho : (∀ a, ZMod' X.B.I X.B.g (hA X.B.I (X.e0 a) v) ∧ ZMod' X.B.I X.B.g (hA X.B.I (X.f0 a) v)) ∧
      ZMod' X.B.I X.B.g (hA X.B.I X.z0 v)) :
    v - ∑ i, hA X.B.I (X.bwd i) v • X.bw i - ∑ i, hA X.B.I (X.bw i) v • X.bwd i ∈ mL X.B.I X.B.g := by
  have hA' : ∑ a, hA X.B.I (X.f0 a) v • X.e0 a ∈ mL X.B.I X.B.g :=
    Submodule.sum_mem _ fun a _ => zs_mL X (ho.1 a).2 (X.vectorsInLattice.1 a).1
  have hB' : ∑ a, hA X.B.I (X.e0 a) v • X.f0 a ∈ mL X.B.I X.B.g :=
    Submodule.sum_mem _ fun a _ => zs_mL X (ho.1 a).1 (X.vectorsInLattice.1 a).2
  have hC' : hA X.B.I X.z0 v • X.z0 ∈ mL X.B.I X.B.g := zs_mL X ho.2 X.vectorsInLattice.2.1
  have he : v - ∑ i, hA X.B.I (X.bwd i) v • X.bw i - ∑ i, hA X.B.I (X.bw i) v • X.bwd i =
      piG X v + ∑ a, hA X.B.I (X.f0 a) v • X.e0 a + ∑ a, hA X.B.I (X.e0 a) v • X.f0 a -
        hA X.B.I X.z0 v • X.z0 := by
    unfold piG; abel
  rw [he]
  exact Submodule.sub_mem _ (Submodule.add_mem _ (Submodule.add_mem _ (hP v hv) hA') hB') hC'

theorem dual_zero (i : Fin D.R.k) (w : VA X.B.I) (hw : w = sigA X.B.I X.ew • w) :
    hA X.B.I (X.bwd i) w = 0 := by
  have h1 : hA X.B.I (sigA X.B.I X.ew • X.bwd i) w = X.ew * hA X.B.I (X.bwd i) w := by
    rw [unitaryCongruence.hA_smul_left, unitaryCongruence.sigA_sigA]
  rw [← X.bwd_w i] at h1
  have h2 : hA X.B.I (X.bwd i) w = sigA X.B.I X.ew * hA X.B.I (X.bwd i) w := by
    conv_lhs => rw [hw]
    rw [unitaryCongruence.hA_smul_right]
  calc hA X.B.I (X.bwd i) w = X.ew * (sigA X.B.I X.ew * hA X.B.I (X.bwd i) w) := by rw [← h2, ← h1]
    _ = (X.ew * sigA X.B.I X.ew) * hA X.B.I (X.bwd i) w := by ring
    _ = 0 := by rw [X.ew_orth, zero_mul]

theorem sigA_smul_bwd_sum_eq (c : Fin D.R.k → X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) :
    ∑ j, c j • X.bwd j = sigA X.B.I X.ew • ∑ j, c j • X.bwd j := by
  rw [Finset.smul_sum]
  refine Finset.sum_congr rfl fun j _ => ?_
  conv_lhs => rw [X.bwd_w j]
  rw [smul_comm]

theorem coreOfProj {D : D7} (X : HidaSetting D) : CoreOfProj X := by
  intro hP κ hκ hκi Y hYL hYM hYo v hv
  set M := X.B.I.fmat κ with hMdef
  have hvL : v ∈ X.B.I.Lf := hYL hv
  set z := ((M - 1) ^ D.R.k) *ᵥ v with hzdef
  have hzY : z ∈ Y := pow_Y X κ Y hYM _ v hv
  have hzL : z ∈ X.B.I.Lf := hYL hzY

  have ha : ∀ i, ZMod' X.B.I X.B.g (hA X.B.I (X.bw i) z) := by
    intro i
    rw [hzdef, adj X κ]
    have hG : ((X.B.I.fmat κ⁻¹ - 1) ^ D.R.k) *ᵥ X.bw i ∈ Gm X 0 :=
      flag X hκi D.R.k le_rfl (X.bw i) (bw_Gk X i)
    have hle : Gm X 0 ≤ unitaryCongruence.Qs X.B.I X.B.g v := by
      refine Mo_le_Qs X hvL _ ?_
      rintro s (⟨a, rfl⟩ | ⟨j, hj, _⟩)
      · rw [unitaryCongruence.hA_symm X.B.I (X.e0 a) v]
        exact unitaryCongruence.Z_sig X.B.I X.B.g ((hYo v hv).1 a).1
      · exact absurd hj (Nat.not_lt_zero _)
    have hq : ZMod' X.B.I X.B.g (hA X.B.I v (((X.B.I.fmat κ⁻¹ - 1) ^ D.R.k) *ᵥ X.bw i)) := hle hG
    rw [unitaryCongruence.hA_symm X.B.I v]
    exact unitaryCongruence.Z_sig X.B.I X.B.g hq

  have hb : ∀ i, ZMod' X.B.I X.B.g (hA X.B.I (X.bwd i) z) := by
    intro i
    set v1 := ∑ j, hA X.B.I (X.bwd j) v • X.bw j with hv1
    set v2 := ∑ j, hA X.B.I (X.bw j) v • X.bwd j with hv2
    have hm : v - v1 - v2 ∈ mL X.B.I X.B.g := decomp X hP hvL (hYo v hv)
    have hsplit : z = ((M - 1) ^ D.R.k) *ᵥ v1 + ((M - 1) ^ D.R.k) *ᵥ v2 +
        ((M - 1) ^ D.R.k) *ᵥ (v - v1 - v2) := by
      rw [hzdef, ← mulVec_add, ← mulVec_add]; congr 1; abel
    rw [hsplit, unitaryCongruence.hA_add_right, unitaryCongruence.hA_add_right]
    refine unitaryCongruence.Z_add X.B.I X.B.g (unitaryCongruence.Z_add X.B.I X.B.g ?_ ?_) ?_
    · have hv1G : v1 ∈ Gm X D.R.k :=
        Submodule.sum_mem _ fun j _ =>
          intsmul_mem X (unitaryCongruence.hA_int X.B.I (X.vectorsInLattice.2.2 j).2 hvL) (bw_Gk X j)
      have hG := flag X hκ D.R.k le_rfl v1 hv1G
      have hle : Gm X 0 ≤ unitaryCongruence.Qs X.B.I X.B.g (X.bwd i) := by
        refine Mo_le_Qs X (X.vectorsInLattice.2.2 i).2 _ ?_
        rintro s (⟨a, rfl⟩ | ⟨j, hj, _⟩)
        · exact (reference_frame_congruences X).2.2.1 i a
        · exact absurd hj (Nat.not_lt_zero _)
      exact hle hG
    · rw [dual_zero X i _ (by rw [hv2, ← mulVec_smul, ← sigA_smul_bwd_sum_eq X])]
      exact unitaryCongruence.Z_zero X.B.I X.B.g
    · exact Z_right X (X.vectorsInLattice.2.2 i).2
        (mL_pres X _ (pow_Lf X hκ.1 D.R.k) _ hm)

  have hd := decomp X hP hzL (hYo z hzY)
  have h1 : ∑ i, hA X.B.I (X.bwd i) z • X.bw i ∈ mL X.B.I X.B.g :=
    Submodule.sum_mem _ fun i _ => zs_mL X (hb i) (X.vectorsInLattice.2.2 i).1
  have h2 : ∑ i, hA X.B.I (X.bw i) z • X.bwd i ∈ mL X.B.I X.B.g :=
    Submodule.sum_mem _ fun i _ => zs_mL X (ha i) (X.vectorsInLattice.2.2 i).2
  have he : z = (z - ∑ i, hA X.B.I (X.bwd i) z • X.bw i - ∑ i, hA X.B.I (X.bw i) z • X.bwd i) +
      ∑ i, hA X.B.I (X.bwd i) z • X.bw i + ∑ i, hA X.B.I (X.bw i) z • X.bwd i := by abel
  rw [he]
  exact Submodule.add_mem _ (Submodule.add_mem _ hd h1) h2

end Formalism.L2.SG.PoincareInHH.Cut.GU
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuCore =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuGlob =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuGlob", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuDefs\npublic import Formalism.LocalToGlobal.Columns.DecorationStabilizerTrivialUnipotent\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ReHermitianCombinationNonpos\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.HermitianETransportInvariant\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHLatOfLattice\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.SiegelMassRatios.LemmaN\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictAll\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicClassFiniteness.DictGen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Formalism.L2.SG.HidaSetting Formalism.L2.SG.PoincareInHH.PoincareSetting Formalism.L2.SG.Pf
open Matrix NumberField
open scoped TensorProduct

namespace Formalism.L2.SG.PoincareInHH.Cut.GU

open Formalism.L2.SG.Pf.Level

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (X : HidaSetting D) (u : D.what₂.Word)

theorem hA_zero_r (x : VA X.B.I) : hA X.B.I x 0 = 0 := by
  simp only [hA, Formalism.UG.hform, Pi.zero_apply, mul_zero, Finset.sum_const_zero]

def YP (v : VA X.B.I) : Prop :=
  v ∈ X.B.I.Lf ∧ (∀ a, hA X.B.I (incl X.B.I (X.eR a)) v = 0) ∧ (∀ a, hA X.B.I (incl X.B.I (X.fR a)) v = 0) ∧
    hA X.B.I (X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (X.zR u)) v = 0

private theorem hA_add_right_unitary_haar_products (x y z : VA X.B.I) : hA X.B.I x (y + z) = hA X.B.I x y + hA X.B.I x z := by
  simp only [hA, Formalism.UG.hform, Pi.add_apply, mul_add, Finset.sum_add_distrib]

theorem yp_add {v w : VA X.B.I} (hv : YP X u v) (hw : YP X u w) : YP X u (v + w) := by
  unfold YP at hv hw ⊢
  obtain ⟨hv1, hv2, hv3, hv4⟩ := hv
  obtain ⟨hw1, hw2, hw3, hw4⟩ := hw
  refine ⟨add_mem hv1 hw1, fun a => ?_, fun a => ?_, ?_⟩
  · rw [hA_add_right_unitary_haar_products, hv2 a, hw2 a, add_zero]
  · rw [hA_add_right_unitary_haar_products, hv3 a, hw3 a, add_zero]
  · rw [hA_add_right_unitary_haar_products, hv4, hw4, add_zero]

theorem yp_zero : YP X u 0 := by
  unfold YP
  exact ⟨zero_mem _, fun a => hA_zero_r X _, fun a => hA_zero_r X _, hA_zero_r X _⟩

private theorem hA_smul_right_unitary_haar_products (c : IntAf X.B.I.F X.B.I.E) (x y : VA X.B.I) :
    hA X.B.I x (c • y) = (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * hA X.B.I x y := by
  simp only [hA, Formalism.UG.hform, Pi.smul_apply, Subring.smul_def, smul_eq_mul, Finset.mul_sum]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem yp_smul (c : IntAf X.B.I.F X.B.I.E) {v : VA X.B.I} (hv : YP X u v) : YP X u (c • v) := by
  unfold YP at hv ⊢
  obtain ⟨hv1, hv2, hv3, hv4⟩ := hv
  refine ⟨Submodule.smul_mem _ c hv1, fun a => ?_, fun a => ?_, ?_⟩
  · rw [hA_smul_right_unitary_haar_products, hv2 a, mul_zero]
  · rw [hA_smul_right_unitary_haar_products, hv3 a, mul_zero]
  · rw [hA_smul_right_unitary_haar_products, hv4, mul_zero]

def Yu : Submodule (IntAf X.B.I.F X.B.I.E) (VA X.B.I) where
  carrier := {v | YP X u v}
  add_mem' := fun hv hw => yp_add X u hv hw
  zero_mem' := yp_zero X u
  smul_mem' := fun c _ hv => yp_smul X u c hv

theorem zmod_cancel {t : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F} (ht : t ∈ IntAf X.B.I.F X.B.I.E) {c : ℕ}
    (hc : Nat.Coprime c X.B.g) (h : ZMod' X.B.I X.B.g ((c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t)) :
    ZMod' X.B.I X.B.g t := by
  unfold ZMod' at h ⊢
  obtain ⟨s, hs, hcs⟩ := h
  have hb := Nat.gcd_eq_gcd_ab c X.B.g
  rw [Nat.Coprime.gcd_eq_one hc] at hb
  have key : (1 : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) = (c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((Nat.gcdA c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) +
      (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((Nat.gcdB c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) := by
    have h1 := congrArg (fun z : ℤ => (z : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)) hb
    simpa using h1
  refine ⟨((Nat.gcdA c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * s + ((Nat.gcdB c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t, ?_, ?_⟩
  · exact add_mem (mul_mem (intCast_mem _ _) hs) (mul_mem (intCast_mem _ _) ht)
  · calc t = 1 * t := (one_mul t).symm
      _ = ((c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((Nat.gcdA c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) +
          (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((Nat.gcdB c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)) * t := by rw [← key]
      _ = ((Nat.gcdA c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * ((c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t) +
          (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (((Nat.gcdB c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t) := by ring
      _ = (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * (((Nat.gcdA c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * s + ((Nat.gcdB c X.B.g : ℤ) : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * t) := by
          rw [hcs]; ring

theorem hermitian_e0_congruent {v : VA X.B.I} (hv : YP X u v) (a : Fin D.R.rS) : ZMod' X.B.I X.B.g (hA X.B.I (X.e0 a) v) := by
  obtain ⟨hvL, he, -, -⟩ := hv
  obtain ⟨c, hc, hcm⟩ := (X.basisApprox a).1
  have h1 := Z_left X hcm hvL
  rw [hA_natsmul_left, hA_sub_left] at h1
  have h0 : hA X.B.I (incl X.B.I (crdOf X.B.I X.ιE X.bas (X.eX a))) v = 0 := he a
  rw [h0, sub_zero] at h1
  exact zmod_cancel X (unitaryCongruence.hA_int X.B.I (X.vectorsInLattice.1 a).1 hvL) hc h1

theorem hermitian_f0_congruent {v : VA X.B.I} (hv : YP X u v) (a : Fin D.R.rS) : ZMod' X.B.I X.B.g (hA X.B.I (X.f0 a) v) := by
  obtain ⟨hvL, -, hf, -⟩ := hv
  obtain ⟨c, hc, hcm⟩ := (X.basisApprox a).2
  have h1 := Z_left X hcm hvL
  rw [hA_natsmul_left, hA_sub_left] at h1
  have h0 : hA X.B.I (incl X.B.I (crdOf X.B.I X.ιE X.bas (X.fY a))) v = 0 := hf a
  rw [h0, sub_zero] at h1
  exact zmod_cancel X (unitaryCongruence.hA_int X.B.I (X.vectorsInLattice.1 a).2 hvL) hc h1

theorem hermitian_z0_congruent {v : VA X.B.I} (hv : YP X u v) : ZMod' X.B.I X.B.g (hA X.B.I X.z0 v) := by
  obtain ⟨hvL, -, -, hz⟩ := hv
  obtain ⟨c, hc, hcm⟩ := X.xu_z u
  have h1 := Z_left X hcm hvL
  rw [hA_natsmul_left, hA_sub_left] at h1
  have h0 : hA X.B.I (X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (crdOf X.B.I X.ιE X.bas (X.zu u))) v = 0 := hz
  rw [h0, zero_sub] at h1
  have h2 : ZMod' X.B.I X.B.g ((c : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) * hA X.B.I X.z0 v) := by
    have := unitaryCongruence.Z_sub X.B.I X.B.g (unitaryCongruence.Z_zero X.B.I X.B.g) h1
    rwa [mul_neg, sub_neg_eq_add, zero_add] at this
  exact zmod_cancel X (unitaryCongruence.hA_int X.B.I X.vectorsInLattice.2.1 hvL) hc h2

theorem mL_exists {m : VA X.B.I} (hm : m ∈ mL X.B.I X.B.g) :
    ∃ x ∈ X.B.I.Lf, m = (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) • x := by
  unfold mL at hm
  induction hm using Submodule.span_induction with
  | mem y hy => exact hy
  | zero => exact ⟨0, zero_mem _, (smul_zero _).symm⟩
  | add y z _ _ hy hz =>
    obtain ⟨x1, h1, rfl⟩ := hy
    obtain ⟨x2, h2, rfl⟩ := hz
    exact ⟨x1 + x2, add_mem h1 h2, (smul_add _ _ _).symm⟩
  | smul a y _ hy =>
    obtain ⟨x1, h1, rfl⟩ := hy
    refine ⟨a • x1, Submodule.smul_mem _ a h1, ?_⟩
    funext i
    simp only [Pi.smul_apply, Subring.smul_def, smul_eq_mul]
    ring

theorem xu_inv_fix {w : VA X.B.I} (hw : X.B.I.fmat (X.xu u) *ᵥ w = w) : X.B.I.fmat (X.xu u)⁻¹ *ᵥ w = w := by
  conv_lhs => rw [← hw]
  rw [Matrix.mulVec_mulVec]
  have h1 : X.B.I.fmat (X.xu u)⁻¹ * X.B.I.fmat (X.xu u) = 1 := by
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_inv, Units.inv_mul]
  rw [h1, Matrix.one_mulVec]

theorem conj_fix (η : X.B.I.Gf) (hη : η ∈ Hfin X u) (p : VA X.B.I) (w : Fin X.B.I.n → X.B.I.E)
    (hw : w ∈ fixSet X u) (hp : X.B.I.fmat (X.xu u) *ᵥ p = incl X.B.I w) :
    X.B.I.fmat ((X.xu u)⁻¹ * η * X.xu u) *ᵥ p = X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I w := by
  have hη' : ∀ y ∈ fixSet X u, X.B.I.fmat η *ᵥ incl X.B.I y = incl X.B.I y := hη
  have e1 : X.B.I.fmat ((X.xu u)⁻¹ * η * X.xu u) =
      X.B.I.fmat (X.xu u)⁻¹ * X.B.I.fmat η * X.B.I.fmat (X.xu u) := by
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_mul, Units.val_mul]
  rw [e1, ← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, hp, hη' w hw]

theorem xu_e (a : Fin D.R.rS) : X.B.I.fmat (X.xu u) *ᵥ incl X.B.I (X.eR a) = incl X.B.I (X.eR a) :=
  (X.xu_fix u a).1

theorem xu_f (a : Fin D.R.rS) : X.B.I.fmat (X.xu u) *ᵥ incl X.B.I (X.fR a) = incl X.B.I (X.fR a) :=
  (X.xu_fix u a).2

theorem transport_fixes_z : X.B.I.fmat (X.xu u) *ᵥ (X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I (X.zR u)) = incl X.B.I (X.zR u) := by
  rw [Matrix.mulVec_mulVec]
  have h1 : X.B.I.fmat (X.xu u) * X.B.I.fmat (X.xu u)⁻¹ = 1 := by
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_inv, Units.mul_inv]
  rw [h1, Matrix.one_mulVec]

private theorem dotProduct_mulVec_eq_transpose (A : Matrix (Fin X.B.I.n) (Fin X.B.I.n) (X.B.I.E ⊗[X.B.I.F] Af X.B.I.F)) (a b : VA X.B.I) :
    (A *ᵥ a) ⬝ᵥ b = a ⬝ᵥ (Aᵀ *ᵥ b) := by
  simp only [dotProduct, Matrix.mulVec, Matrix.transpose_apply, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  refine Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => ?_
  ring

theorem yu_stable (η : X.B.I.Gf) (hη : η ∈ Hfin X u) (hK : (X.xu u)⁻¹ * η * X.xu u ∈ X.B.I.Kset)
    (v : VA X.B.I) (hv : v ∈ Yu X u) : X.B.I.fmat ((X.xu u)⁻¹ * η * X.xu u) *ᵥ v ∈ Yu X u := by
  set κ := (X.xu u)⁻¹ * η * X.xu u with hκdef
  have hv' : YP X u v := hv
  show YP X u _
  unfold YP at hv' ⊢
  obtain ⟨hv1, hv2, hv3, hv4⟩ := hv'
  have hKs : ∀ x : VA X.B.I, x ∈ X.B.I.Lf ↔ X.B.I.fmat κ *ᵥ x ∈ X.B.I.Lf := hK
  have hηi : η⁻¹ ∈ Hfin X u := inv_mem hη
  have hinv : ∀ w ∈ fixSet X u, ∀ p : VA X.B.I, X.B.I.fmat (X.xu u) *ᵥ p = incl X.B.I w →
      X.B.I.fmat κ⁻¹ *ᵥ p = X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I w := by
    intro w hw p hp
    have e : κ⁻¹ = (X.xu u)⁻¹ * η⁻¹ * X.xu u := by rw [hκdef]; group
    rw [e]
    exact conj_fix X u η⁻¹ hηi p w hw hp
  have hmove : ∀ a : VA X.B.I,
      hA X.B.I a (X.B.I.fmat κ *ᵥ v) = hA X.B.I (X.B.I.fmat κ⁻¹ *ᵥ a) v := by
    intro a
    have e : a = X.B.I.fmat κ *ᵥ (X.B.I.fmat κ⁻¹ *ᵥ a) := by
      rw [Matrix.mulVec_mulVec]
      simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_inv, Units.mul_inv, Matrix.one_mulVec]
    conv_lhs => rw [e]
    exact _root_.Formalism.L2.SG.PoincareInHH.Cut.hA_fmat X κ _ _
  refine ⟨(hKs v).1 hv1, fun a => ?_, fun a => ?_, ?_⟩
  · rw [hmove]
    have hw : X.eR a ∈ fixSet X u := by
      unfold fixSet
      exact Or.inl (Or.inl (Set.mem_range_self a))
    rw [hinv _ hw _ (xu_e X u a), xu_inv_fix X u (xu_e X u a)]
    exact hv2 a
  · rw [hmove]
    have hw : X.fR a ∈ fixSet X u := by
      unfold fixSet
      exact Or.inl (Or.inr (Set.mem_range_self a))
    rw [hinv _ hw _ (xu_f X u a), xu_inv_fix X u (xu_f X u a)]
    exact hv3 a
  · rw [hmove]
    have hw : X.zR u ∈ fixSet X u := by
      unfold fixSet
      exact Or.inr (Set.mem_singleton _)
    rw [hinv _ hw _ (transport_fixes_z X u)]
    exact hv4

theorem crd_sub (v w : (VS D).V) : X.crd (v - w) = X.crd v - X.crd w := by
  funext i
  simp only [HidaSetting.crd, crdOf, map_sub, Finsupp.coe_sub, Pi.sub_apply]

theorem crd_smul' (a : D.host.E) (v : (VS D).V) : X.crd (a • v) = X.ιE.symm a • X.crd v := by
  funext i
  simp only [HidaSetting.crd, crdOf, map_smul, Finsupp.coe_smul, Pi.smul_apply, smul_eq_mul, map_mul]

def hatv (h : Hfin X u) (y : (VS D).V) : VA X.B.I :=
  X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ *ᵥ incl X.B.I (X.crd y)

theorem hatv_sub (h : Hfin X u) (a b : (VS D).V) : hatv X u h (a - b) = hatv X u h a - hatv X u h b := by
  unfold hatv
  rw [crd_sub]
  have e : incl X.B.I (X.crd a - X.crd b) = incl X.B.I (X.crd a) - incl X.B.I (X.crd b) := by
    funext i
    simp only [incl, Pi.sub_apply, map_sub]
  rw [e, Matrix.mulVec_sub]

theorem hatv_smul (h : Hfin X u) (c : D.host.E) (y : (VS D).V) :
    hatv X u h (c • y) = Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm c) • hatv X u h y := by
  unfold hatv
  rw [crd_smul']
  have e : incl X.B.I (X.ιE.symm c • X.crd y) =
      Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm c) • incl X.B.I (X.crd y) := by
    funext i
    simp only [incl, Pi.smul_apply, smul_eq_mul, map_mul]
  rw [e, Matrix.mulVec_smul]

theorem P_fix (h : Hfin X u) (w : Fin X.B.I.n → X.B.I.E) (hw : w ∈ fixSet X u) :
    X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ *ᵥ incl X.B.I w = X.B.I.fmat (X.xu u)⁻¹ *ᵥ incl X.B.I w := by
  have hh : (h : X.B.I.Gf)⁻¹ ∈ Hfin X u := inv_mem h.2
  have hh' : ∀ y ∈ fixSet X u, X.B.I.fmat (h : X.B.I.Gf)⁻¹ *ᵥ incl X.B.I y = incl X.B.I y := hh
  have e1 : X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ =
      X.B.I.fmat (X.xu u)⁻¹ * X.B.I.fmat (h : X.B.I.Gf)⁻¹ := by
    rw [_root_.mul_inv_rev]
    simp only [Formalism.MainNotions.S.AutInst.fmat, Subgroup.coe_mul, Units.val_mul]
  rw [e1, ← Matrix.mulVec_mulVec, hh' w hw]

theorem hatv_Y (h : Hfin X u) (y : (VS D).V) (hyL : hatv X u h y ∈ X.B.I.Lf)
    (hyW : y ∈ orth (VS D) (Submodule.span D.host.E (Set.range X.eX ∪ Set.range X.fY ∪ {X.zu u}))) :
    hatv X u h y ∈ Yu X u := by
  have horth := mem_orth_iff_bl.1 hyW
  have hiso : ∀ p, hA X.B.I (X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ *ᵥ p) (hatv X u h y) =
      hA X.B.I p (incl X.B.I (X.crd y)) := fun p => hA_fmat X _ _ _
  refine ⟨hyL, fun a => ?_, fun a => ?_, ?_⟩
  · rw [← xu_inv_fix X u (xu_e X u a), ← P_fix X u h _ (eR_mem_fix X u a), hiso]
    show hA X.B.I (incl X.B.I (X.crd (X.eX a))) (incl X.B.I (X.crd y)) = 0
    rw [hA_crd, horth _ (Submodule.subset_span (Or.inl (Or.inl ⟨a, rfl⟩))), map_zero, map_zero]
  · rw [← xu_inv_fix X u (xu_f X u a), ← P_fix X u h _ (fR_mem_fix X u a), hiso]
    show hA X.B.I (incl X.B.I (X.crd (X.fY a))) (incl X.B.I (X.crd y)) = 0
    rw [hA_crd, horth _ (Submodule.subset_span (Or.inl (Or.inr ⟨a, rfl⟩))), map_zero, map_zero]
  · rw [← P_fix X u h _ (zR_mem_fix X u), hiso]
    show hA X.B.I (incl X.B.I (X.crd (X.zu u))) (incl X.B.I (X.crd y)) = 0
    rw [hA_crd, horth _ (Submodule.subset_span (Or.inr rfl)), map_zero, map_zero]

theorem inv_g_cancel : Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F) (X.ιE.symm ((X.B.g : D.host.E)⁻¹)) *
    (X.B.g : X.B.I.E ⊗[X.B.I.F] Af X.B.I.F) = 1 := by
  have hg : X.B.g ≠ 0 := by
    rw [X.g_eq]
    exact Nat.mul_ne_zero (D.host.g_prime 0).ne_zero (D.host.g_prime 1).ne_zero
  have hgE : ((X.B.g : ℕ) : X.B.I.E) ≠ 0 := Nat.cast_ne_zero.mpr hg
  rw [map_inv₀, map_natCast, ← map_natCast (Formalism.UG.inclE (F := X.B.I.F) (Af X.B.I.F)) X.B.g, ← map_mul,
    inv_mul_cancel₀ hgE, map_one]

section QuotGen

variable {E V : Type} [Field E] [NumberField E] [StarRing E] [AddCommGroup V] [Module E V]
  [FiniteDimensional E V] [Module (𝓞 E) V] [IsScalarTower (𝓞 E) E V]

def dm1 {M : Type} [AddCommGroup M] [Module E M] (δ : M ≃ₗ[E] M) : Module.End E M :=
  ((δ : M →ₗ[E] M) : Module.End E M) - 1

theorem dm1_apply {M : Type} [AddCommGroup M] [Module E M] (δ : M ≃ₗ[E] M) (v : M) : dm1 δ v = δ v - v := by
  rfl

theorem q_aut (δ : V ≃ₗ[E] V) (W : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : (⊥ : Submodule E V).map (δ : V →ₗ[E] V) = ⊥) (Λ : Submodule (𝓞 E) V) (hδΛ : ∀ v, δ v ∈ Λ ↔ v ∈ Λ) :
    qEquiv δ W ⊥ hW hX ∈ Formalism.L2.Col.autLat (qLat Λ W ⊥) := by
  unfold qEquiv qLat
  show Formalism.HermitianLatticesTheory.gmap _ _ = _
  unfold Formalism.HermitianLatticesTheory.gmap
  apply le_antisymm
  · rintro _ ⟨q, hq, rfl⟩
    obtain ⟨w, hw, rfl⟩ := hq
    refine ⟨δ.ofSubmodules W W hW w, ?_, rfl⟩
    show δ (w : V) ∈ Λ
    exact (hδΛ (w : V)).2 hw
  · rintro _ ⟨w, hw, rfl⟩
    have e1 : δ (((δ.ofSubmodules W W hW).symm w : W) : V) = (w : V) :=
      congrArg Subtype.val ((δ.ofSubmodules W W hW).apply_symm_apply w)
    refine ⟨Submodule.Quotient.mk ((δ.ofSubmodules W W hW).symm w),
      ⟨(δ.ofSubmodules W W hW).symm w, ?_, rfl⟩, ?_⟩
    · show (((δ.ofSubmodules W W hW).symm w : W) : V) ∈ Λ
      rw [← hδΛ, e1]
      exact hw
    · show Submodule.Quotient.mk ((δ.ofSubmodules W W hW) ((δ.ofSubmodules W W hW).symm w)) =
        Submodule.Quotient.mk w
      rw [LinearEquiv.apply_symm_apply]

theorem q_powB (δ : V ≃ₗ[E] V) (W : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : (⊥ : Submodule E V).map (δ : V →ₗ[E] V) = ⊥) :
    ∀ j : ℕ, ∀ w w' : W, (w' : V) = ((dm1 δ) ^ j) (w : V) →
      ((dm1 (qEquiv δ W ⊥ hW hX)) ^ j) (Submodule.Quotient.mk w) = Submodule.Quotient.mk w' := by
  intro j
  induction j with
  | zero =>
    intro w w' h
    obtain rfl : w' = w := Subtype.ext (by simpa using h)
    rfl
  | succ j ih =>
    intro w w' h
    have hmem : δ (w : V) - (w : V) ∈ W :=
      W.sub_mem (δ.ofSubmodules W W hW w).2 w.2
    have h2 := ih ⟨δ (w : V) - (w : V), hmem⟩ w' (by rw [h, pow_succ, Module.End.mul_apply, dm1_apply])
    rw [pow_succ, Module.End.mul_apply, ← h2, dm1_apply]
    congr 1

theorem q_pow_one (δ : V ≃ₗ[E] V) (W : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : (⊥ : Submodule E V).map (δ : V →ₗ[E] V) = ⊥) (m : ℕ) (hδm : ∀ v, (δ ^ m) v = v) :
    qEquiv δ W ⊥ hW hX ^ m = 1 := by
  have key : ∀ k : ℕ, ∀ w : W, ∃ w' : W, (w' : V) = (δ ^ k) (w : V) ∧
      (qEquiv δ W ⊥ hW hX ^ k) (Submodule.Quotient.mk w) = Submodule.Quotient.mk w' := by
    intro k
    induction k with
    | zero => intro w; exact ⟨w, by rw [pow_zero]; rfl, by rw [pow_zero]; rfl⟩
    | succ k ih =>
      intro w
      obtain ⟨w', h1, h2⟩ := ih (δ.ofSubmodules W W hW w)
      refine ⟨w', ?_, ?_⟩
      · rw [h1, pow_succ]
        rfl
      · rw [pow_succ]
        change (qEquiv δ W ⊥ hW hX ^ k) (qEquiv δ W ⊥ hW hX (Submodule.Quotient.mk w)) = _
        rw [← h2]
        rfl
  ext q
  refine Submodule.Quotient.induction_on _ q fun w => ?_
  obtain ⟨w', h1, h2⟩ := key m w
  rw [h2]
  have e : w' = w := Subtype.ext (by rw [h1, hδm])
  rw [e]
  rfl

theorem q_fix (δ : V ≃ₗ[E] V) (W : Submodule E V) (hW : W.map (δ : V →ₗ[E] V) = W)
    (hX : (⊥ : Submodule E V).map (δ : V →ₗ[E] V) = ⊥) (hone : qEquiv δ W ⊥ hW hX = 1) : ∀ w ∈ W, δ w = w := by
  intro w hw
  have h1 := DFunLike.congr_fun hone (Submodule.Quotient.mk (⟨w, hw⟩ : W))
  unfold qEquiv Xc at h1
  change Submodule.Quotient.mk (δ.ofSubmodules W W hW ⟨w, hw⟩) = Submodule.Quotient.mk (⟨w, hw⟩ : W) at h1
  rw [Submodule.Quotient.eq, Submodule.mem_comap, Submodule.mem_bot] at h1
  have h2 : δ w - w = 0 := h1
  exact sub_eq_zero.mp h2

end QuotGen



theorem globStep_holds (hK : X.LevelSubgroupCharacter) : GlobalCondition X u hK := by
  intro _hL hC h γ hγ hfo
  obtain ⟨hGF, hH⟩ := Subgroup.mem_inf.1 γ.2
  have hGF' : (γ : X.B.I.GA) ∈ X.B.I.GFset := hGF
  obtain ⟨M, hM, -, hf⟩ := hGF'
  have hfin := (Subgroup.mem_prod.1 hH).2
  set δ := matEC X M with hδ
  have hincl : ∀ y, incl X.B.I (X.crd (δ y)) = X.B.I.fmat (γ : X.B.I.GA).2 *ᵥ incl X.B.I (X.crd y) :=
    fun y => by rw [hδ, matE_inclC, hf]
  have hinj : ∀ y y' : (VS D).V, incl X.B.I (X.crd y) = incl X.B.I (X.crd y') → y = y' := by
    intro y y' h1
    apply X.bas.equivFun.injective
    funext i
    exact X.ιE.symm.injective (inclInjC X (congrFun h1 i))
  have hfix : ∀ y, X.crd y ∈ fixSet X u → δ y = y := fun y hy =>
    hinj _ _ (by rw [hincl]; exact hfin _ hy)
  have hδiso : δ ∈ Formalism.HermitianLatticesTheory.isom (VS D).hT := matE_isomC X M hM
  clear_value δ
  obtain ⟨Λ, hΛ, hΛlat⟩ := latOfLattice_holds X u h
  haveI := hΛlat
  have hκ' : (X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * ((iotaF X u γ : Hfin X u) : X.B.I.Gf) * h) * X.xu u ∈ X.K2 := by
    simpa [Ku] using hγ
  have hκ : (X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h) * X.xu u ∈ X.K2 := hκ'
  have hmemΛ : ∀ w, w ∈ Λ ↔ hatv X u h w ∈ X.B.I.Lf := by
    intro w; rw [← SetLike.mem_coe, hΛ]; rfl
  have hPκ : X.B.I.fmat ((X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h) * X.xu u) *
      X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ = X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ * X.B.I.fmat (γ : X.B.I.GA).2 := by
    have e : (X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h) * X.xu u * ((h : X.B.I.Gf) * X.xu u)⁻¹ =
        ((h : X.B.I.Gf) * X.xu u)⁻¹ * (γ : X.B.I.GA).2 := by group
    rw [← fmat_mul, ← fmat_mul, e]
  have hδΛ : ∀ v, δ v ∈ Λ ↔ v ∈ Λ := by
    intro v
    rw [hmemΛ, hmemΛ]
    unfold hatv
    rw [hincl, mulVec_mulVec, ← hPκ, ← mulVec_mulVec]
    exact ((hκ.1 _)).symm
  have hUfix : ∀ w ∈ Submodule.span D.host.E (Set.range X.eX ∪ Set.range X.fY ∪ {X.zu u}), δ w = w := by
    have hle : Submodule.span D.host.E (Set.range X.eX ∪ Set.range X.fY ∪ {X.zu u}) ≤
        LinearMap.ker ((δ : (VS D).V →ₗ[D.host.E] (VS D).V) - LinearMap.id) := by
      rw [Submodule.span_le]
      rintro w ((⟨a, rfl⟩ | ⟨a, rfl⟩) | hz)
      · simp [hfix _ (eR_mem_fix X u a)]
      · simp [hfix _ (fR_mem_fix X u a)]
      · rw [Set.mem_singleton_iff.1 hz]; simp [hfix _ (zR_mem_fix X u)]
    intro w hw
    have := hle hw
    simpa [sub_eq_zero] using this
  set U : Submodule D.host.E (VS D).V := Submodule.span D.host.E (Set.range X.eX ∪ Set.range X.fY ∪ {X.zu u}) with hU
  set W := orth (VS D) U with hWdef
  have hUmap : U.map (δ : (VS D).V →ₗ[D.host.E] (VS D).V) = U := map_eq_of_iff fun w => by
    constructor
    · intro hw
      have e : δ w = w := δ.injective (hUfix _ hw)
      rw [← e]; exact hw
    · intro hw; rw [hUfix w hw]; exact hw
  have hWmap : W.map (δ : (VS D).V →ₗ[D.host.E] (VS D).V) = W := by
    rw [orth_map_bl hδiso U, hUmap]
  have hX : (⊥ : Submodule D.host.E (VS D).V).map (δ : (VS D).V →ₗ[D.host.E] (VS D).V) = ⊥ := Submodule.map_bot _

  have hη : (h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h ∈ Hfin X u := mul_mem (mul_mem (inv_mem h.2) hfin) h.2
  have hunipY := hC _ hκ (hK.2.2.1 _ hκ) (Yu X u) (fun v hv => hv.1)
    (yu_stable X u _ hη hκ.1)
    (fun v hv => ⟨fun a => ⟨hermitian_e0_congruent X u hv a, hermitian_f0_congruent X u hv a⟩, hermitian_z0_congruent X u hv⟩)

  have hA1 : ∀ y, hatv X u h (dm1 δ y) = (X.B.I.fmat ((X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h) * X.xu u) - 1) *ᵥ
      hatv X u h y := by
    intro y
    rw [dm1_apply, hatv_sub, sub_mulVec, one_mulVec]
    congr 1
    unfold hatv
    rw [hincl, mulVec_mulVec, mulVec_mulVec, hPκ]
  have hApow : ∀ j : ℕ, ∀ y, hatv X u h (((dm1 δ) ^ j) y) =
      ((X.B.I.fmat ((X.xu u)⁻¹ * ((h : X.B.I.Gf)⁻¹ * (γ : X.B.I.GA).2 * h) * X.xu u) - 1) ^ j) *ᵥ hatv X u h y := by
    intro j
    induction j with
    | zero => intro y; rw [pow_zero, pow_zero, one_mulVec]; rfl
    | succ j ih =>
      intro y
      rw [pow_succ, Module.End.mul_apply, ih, hA1, pow_succ, ← mulVec_mulVec]
  have hAW : ∀ w ∈ W, dm1 δ w ∈ W := by
    intro w hw
    rw [dm1_apply]; exact sub_mem ((mem_of_map_eq hWmap w).2 hw) hw
  have hApowW : ∀ j : ℕ, ∀ w ∈ W, ((dm1 δ) ^ j) w ∈ W := by
    intro j
    induction j with
    | zero => intro w hw; rw [pow_zero]; exact hw
    | succ j ih => intro w hw; rw [pow_succ, Module.End.mul_apply]; exact ih _ (hAW w hw)
  have hg0 : (X.B.g : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 (modulus_g_ne_zero X)
  have hkey : ∀ y ∈ Λ, y ∈ W → ∃ z' ∈ Λ, z' ∈ W ∧ ((dm1 δ) ^ D.R.k) y = ((X.B.g : ℕ) : 𝓞 D.host.E) • z' := by
    intro y hyΛ hyW
    have h1 := hunipY (hatv X u h y) (hatv_Y X u h y ((hmemΛ y).1 hyΛ) hyW)
    rw [← hApow] at h1
    obtain ⟨x, hx, hxe⟩ := mL_exists X h1
    refine ⟨((X.B.g : D.host.E)⁻¹) • ((dm1 δ) ^ D.R.k) y, ?_, W.smul_mem _ (hApowW _ _ hyW), ?_⟩
    · rw [hmemΛ, hatv_smul, hxe, smul_smul, inv_g_cancel, one_smul]; exact hx
    · rw [← algebraMap_smul D.host.E ((X.B.g : ℕ) : 𝓞 D.host.E), map_natCast, smul_smul, mul_inv_cancel₀ hg0,
        one_smul]

  have hlat := qLat_isLattice Λ W ⊥
  have hfull : Submodule.IsFullLattice D.host.E (qLat Λ W ⊥) := by
    letI := hlat
    refine ⟨?_⟩
    rw [eq_top_iff]
    intro q _
    induction q using Submodule.Quotient.induction_on with | H w => ?_
    let L := PIW.AdelClassFin.abelian₂ X.B.I ((h : X.B.I.Gf) * X.xu u)
    letI : Submodule.IsLattice X.B.I.E L := Submodule.IsLattice.of_fg X.B.I.E
      (PIW.AdelClassFin.mLat_of PIW.AdelClassFin.lattice_intersection'
        PIW.AdelClassFin.lattice_denominator X.B.I ((h : X.B.I.Gf) * X.xu u)).1
    letI : Submodule.IsFullLattice X.B.I.E L :=
      ⟨(PIW.AdelClassFin.mLat_of PIW.AdelClassFin.lattice_intersection'
        PIW.AdelClassFin.lattice_denominator X.B.I ((h : X.B.I.Gf) * X.xu u)).2⟩
    obtain ⟨t, ht, htw⟩ := Formalism.L2.SG.Pf.exists_smul_mem L (X.crd w.val)
    let s := LatticeCoordinateLemmas.sO' X t
    have hs : s ≠ 0 := by
      exact fun he => ht ((RingOfIntegers.mapRingEquiv X.ιE).injective (by simpa [s] using he))
    have hsw : s • w.val ∈ Λ := by
      rw [hmemΛ]
      have he : s • w.val = LatticeCoordinateLemmas.gv X (t • X.crd w.val) := by
        conv_lhs => rw [← LatticeCoordinateLemmas.gv_crd X w.val]
        change (LatticeCoordinateLemmas.sO' X t) • LatticeCoordinateLemmas.gv X (X.crd w.val) = _
        exact (LinearMap.map_smulₛₗ (LatticeCoordinateLemmas.gvO X) t (X.crd w.val)).symm
      rw [he]
      change X.B.I.fmat ((h : X.B.I.Gf) * X.xu u)⁻¹ *ᵥ
        incl X.B.I (X.crd (LatticeCoordinateLemmas.gv X (t • X.crd w.val))) ∈ X.B.I.Lf
      rw [LatticeCoordinateLemmas.crd_gv]
      exact htw
    have hmem : Submodule.Quotient.mk (s • w) ∈ qLat Λ W ⊥ :=
      mem_qLat.2 ⟨s • w, by simpa using hsw, rfl⟩
    have hsE : algebraMap (𝓞 D.host.E) D.host.E s ≠ 0 := by simpa using hs
    have : (Submodule.Quotient.mk w : QW W ⊥) =
        (algebraMap (𝓞 D.host.E) D.host.E s)⁻¹ • (Submodule.Quotient.mk (s • w) : QW W ⊥) := by
      rw [Submodule.Quotient.mk_smul, ← algebraMap_smul D.host.E s, smul_smul,
        inv_mul_cancel₀ hsE, one_smul]
    rw [this]
    exact Submodule.smul_mem _ _ (Submodule.subset_span hmem)
  have haut := q_aut δ W hWmap hX Λ hδΛ
  have hunip : ∀ PP : Ideal (𝓞 D.host.E), ((X.B.g : ℕ) : 𝓞 D.host.E) ∈ PP →
      Formalism.L2.Col.UnipMod PP (qLat Λ W ⊥) (qEquiv δ W ⊥ hWmap hX) := by
    intro PP hPP
    refine ⟨haut, D.R.k, fun q hq => ?_⟩
    obtain ⟨w, hwΛ, rfl⟩ := mem_qLat.1 hq
    obtain ⟨z', hz'Λ, hz'W, hz'e⟩ := hkey w hwΛ w.2
    have e := q_powB δ W hWmap hX D.R.k w ⟨((X.B.g : ℕ) : 𝓞 D.host.E) • z', W.smul_of_tower_mem _ hz'W⟩ hz'e.symm
    show ((dm1 (qEquiv δ W ⊥ hWmap hX)) ^ D.R.k) (Submodule.Quotient.mk w) ∈ _
    rw [e]
    have hmk : (Submodule.Quotient.mk ⟨((X.B.g : ℕ) : 𝓞 D.host.E) • z', W.smul_of_tower_mem _ hz'W⟩ : QW W ⊥) =
        ((X.B.g : ℕ) : 𝓞 D.host.E) • (Submodule.Quotient.mk ⟨z', hz'W⟩ : QW W ⊥) := by
      rw [← Submodule.Quotient.mk_smul]
      rfl
    rw [hmk]
    exact Submodule.smul_mem_smul hPP (mem_qLat.2 ⟨⟨z', hz'W⟩, hz'Λ, rfl⟩)

  obtain ⟨m, hm, hγm⟩ := isOfFinOrder_iff_pow_eq_one.1 hfo
  have hγ2 : ((γ : X.B.I.GA).2) ^ m = 1 := by
    have := congrArg (fun x : Gam X u => ((x : X.B.I.GA)).2) hγm
    simpa using this
  have hpowI : ∀ j : ℕ, ∀ y, incl X.B.I (X.crd ((δ ^ j) y)) =
      X.B.I.fmat ((γ : X.B.I.GA).2 ^ j) *ᵥ incl X.B.I (X.crd y) := by
    intro j
    induction j with
    | zero => intro y; rw [pow_zero, pow_zero, fmat_one', one_mulVec]; rfl
    | succ j ih =>
      intro y
      rw [pow_succ, LinearEquiv.mul_apply, ih, hincl, mulVec_mulVec, ← fmat_mul, pow_succ]
  have hδm : ∀ y, (δ ^ m) y = y := fun y => hinj _ _ (by rw [hpowI, hγ2, fmat_one', one_mulVec])
  have hQfin : IsOfFinOrder (qEquiv δ W ⊥ hWmap hX) :=
    isOfFinOrder_iff_pow_eq_one.2 ⟨m, hm, q_pow_one δ W hWmap hX m hδm⟩

  obtain ⟨P₁, hP₁, hg₁P⟩ := Formalism.L2.SG.LemmaN.exists_prime_over D.host.E (D.host.g_prime 0)
  obtain ⟨P₂, hP₂, hg₂P⟩ := Formalism.L2.SG.LemmaN.exists_prime_over D.host.E (D.host.g_prime 1)
  have hmul : ((X.B.g : ℕ) : 𝓞 D.host.E) = ((D.host.g 0 : ℕ) : 𝓞 D.host.E) * ((D.host.g 1 : ℕ) : 𝓞 D.host.E) := by
    rw [X.g_eq, Nat.cast_mul]
  have hone := Formalism.L2.SG.LemmaN.lemmaNcGlob_of_exists D.host.E (QW W ⊥) (qLat Λ W ⊥) hfull _ hQfin
    (D.host.g_prime 0) (D.host.g_prime 1) D.host.g_ne hP₁.ne_top hP₂.ne_top hg₁P hg₂P
    (hunip P₁ (by rw [hmul]; exact Ideal.mul_mem_right _ _ hg₁P))
    (hunip P₂ (by rw [hmul]; exact Ideal.mul_mem_left _ _ hg₂P))
  have hWfix := q_fix δ W hWmap hX hone
  have hall : ∀ v, δ v = v := by
    intro v
    obtain ⟨s, hs, hws⟩ := Formalism.L2.SG.PoincareInHH.Cut.decomp X u v
    have e : v = (v - s) + s := by abel
    rw [e, map_add (f := _), hWfix _ hws, hUfix s hs]
  have h2 : (γ : X.B.I.GA).2 = 1 := by
    apply fmat_eq_one_of_fix X
    intro y
    rw [← hincl, hall]
  exact Subtype.ext (gf_eq_one_of_snd X (γ : X.B.I.GA) hGF h2)

end Formalism.L2.SG.PoincareInHH.Cut.GU
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuGlob =====

-- ===== clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu =====
-- clump-header: {"m": "Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu", "h": "module\n\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHNeat\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuCore\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuGlob\npublic import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKuProj\nimport Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHLatOfLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.L2.SG.PoincareInHH.Cut

open Formalism.L2.SG.Pf.Level

open Formalism.BasicNotions Formalism.L2.SG.HidaSetting

theorem gamUnipKu_holds {D : D7} (X : HidaSetting D) (u : D.what₂.Word) (hK : X.LevelSubgroupCharacter) : GamUnipKu X u hK :=
  GU.gamUnipKu_of_projModG X u hK (GU.projModG_holds X) (GU.coreOfProj X) (GU.globStep_holds X u hK)
    (latOfLattice_holds X u)

end Formalism.L2.SG.PoincareInHH.Cut
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.InHHGamUnipKu =====
