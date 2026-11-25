module

import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.GaugeLatticeShifts.ParCols
public import Formalism.LocalToGlobal.SiegelLatticeTheory.ClosedLocalOrbits.TermOp
public import Formalism.LocalToGlobal.SiegelLatticeTheory.HaarTransversals.UnitaryHaarProducts.LevelSubgroupCharacterUnitary
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.DualBetaReferenceCongruence
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.RankTwoDimensionFormula.ReferenceReprMemLattice

@[expose] public section

noncomputable section

open scoped Classical ComplexConjugate TensorProduct
open MeasureTheory NumberField Formalism.BasicNotions Formalism.MainNotions.S Formalism.MainNotions.S.Lat Matrix Formalism.L2.SG.TermOp Formalism.L2.SG.HidaSetting
  Formalism.L2.SG.Pf.unitaryCongruence

namespace PI.UnitaryDimensionFormula.NormCutK

section Par

variable {D : D7} (X : Formalism.L2.SG.HidaSetting.HidaSetting D)

theorem hform_mulVec' {A : Type} [CommRing A] {n : Type} [Fintype n] [DecidableEq n] (σ : A →+* A)
    (J M : Matrix n n A) (hM : Formalism.UG.cT σ M * J * M = J) (x y : n → A) :
    Formalism.UG.hform σ J (M *ᵥ x) (M *ᵥ y) = Formalism.UG.hform σ J x y := by
  have hdot : ∀ x y : n → A, Formalism.UG.hform σ J x y = (fun i => σ (x i)) ⬝ᵥ (J *ᵥ y) := by
    intro x y
    simp only [Formalism.UG.hform, dotProduct, mulVec, Finset.mul_sum, mul_assoc]
  have hσ : (fun i => σ ((M *ᵥ x) i)) = (M.map σ) *ᵥ (fun i => σ (x i)) := by
    funext i

    simp [mulVec, dotProduct, map_sum, map_mul]
  rw [hdot, hdot, hσ, ← vecMul_transpose, ← dotProduct_mulVec]
  simp only [mulVec_mulVec, ← Matrix.mul_assoc]
  rw [show (M.map σ)ᵀ * J * M = J from hM]

theorem hA_unit (g : X.B.I.Gf) (x y : VA X.B.I) :
    hA X.B.I (X.B.I.fmat g *ᵥ x) (X.B.I.fmat g *ᵥ y) = hA X.B.I x y :=
  hform_mulVec' _ _ _ g.2 x y

theorem hA_adj (g : X.B.I.Gf) (x y : VA X.B.I) :
    hA X.B.I x (X.B.I.fmat g *ᵥ y) = hA X.B.I (X.B.I.fmat g⁻¹ *ᵥ x) y := by
  conv_lhs => rw [← hA_unit X g⁻¹ x (X.B.I.fmat g *ᵥ y)]
  rw [Matrix.mulVec_mulVec, fmat_inv_mul, Matrix.one_mulVec]

theorem mem_mL_of_InAt {d : VA X.B.I} (hd : d ∈ X.B.I.Lf) (h : InAt X.B.I X.B.g X.B.g d) :
    d ∈ mL X.B.I X.B.g := by
  apply Formalism.L2.SG.NormCut.mem_mL_of_InAt <;> assumption

theorem mem_Mo_eb {v : VA X.B.I} (hv : v ∈ X.B.I.Lf) (he : ∀ a, ZMod' X.B.I X.B.g (hA X.B.I (X.e0 a) v))
    (hz : ZMod' X.B.I X.B.g (hA X.B.I X.z0 v)) (hb : ∀ l, ZMod' X.B.I X.B.g (hA X.B.I (X.bw l) v)) :
    v ∈ Mo X.B.I X.B.g (Set.range X.e0 ∪ Set.range X.bw) := by
  apply Formalism.L2.SG.NormCut.mem_Mo_eb <;> assumption

def Par (x : X.B.I.Gf) : Prop :=
  x ∈ X.B.I.Kset ∧ (∀ a, X.B.I.fmat x *ᵥ X.e0 a ∈ Mo X.B.I X.B.g (Set.range X.e0)) ∧
    ∀ j, X.B.I.fmat x *ᵥ X.bw j ∈ Mo X.B.I X.B.g (Set.range X.e0 ∪ Set.range X.bw)

def Good (x : X.B.I.Gf) : Prop := Par X x ∧ Par X x⁻¹

theorem par_one : Par X 1 := by
  refine ⟨K_one X.B.I, fun a => ?_, fun j => ?_⟩
  · rw [show X.B.I.fmat 1 = 1 from rfl, Matrix.one_mulVec]; exact sub_Mo X.B.I ⟨a, rfl⟩
  · rw [show X.B.I.fmat 1 = 1 from rfl, Matrix.one_mulVec]; exact sub_Mo X.B.I (Or.inr ⟨j, rfl⟩)

theorem par_mul {x y : X.B.I.Gf} (hx : Par X x) (hy : Par X y) : Par X (x * y) := by
  refine ⟨K_mul X.B.I hx.1 hy.1, fun a => ?_, fun j => ?_⟩
  · rw [fmat_mul, ← Matrix.mulVec_mulVec]
    refine pres X.B.I hx.1 X.B.g (Set.range X.e0) _ (sub_Mo X.B.I) ?_ (mL_Mo X.B.I) _ (hy.2.1 a)
    rintro _ ⟨b, rfl⟩
    rw [Matrix.sub_mulVec, Matrix.one_mulVec]
    exact sub_mem (hx.2.1 b) (sub_Mo X.B.I ⟨b, rfl⟩)
  · rw [fmat_mul, ← Matrix.mulVec_mulVec]
    refine pres X.B.I hx.1 X.B.g (Set.range X.e0 ∪ Set.range X.bw) _ (sub_Mo X.B.I) ?_ (mL_Mo X.B.I) _ (hy.2.2 j)
    rintro s (⟨b, rfl⟩ | ⟨l, rfl⟩)
    · rw [Matrix.sub_mulVec, Matrix.one_mulVec]
      exact sub_mem (Mo_mono X.B.I Set.subset_union_left (hx.2.1 b)) (sub_Mo X.B.I (Or.inl ⟨b, rfl⟩))
    · rw [Matrix.sub_mulVec, Matrix.one_mulVec]
      exact sub_mem (hx.2.2 l) (sub_Mo X.B.I (Or.inr ⟨l, rfl⟩))

theorem good_one : Good X 1 := ⟨par_one X, by simpa using par_one X⟩

theorem good_mul {x y : X.B.I.Gf} (hx : Good X x) (hy : Good X y) : Good X (x * y) :=
  ⟨par_mul X hx.1 hy.1, by rw [_root_.mul_inv_rev]; exact par_mul X hy.2 hx.2⟩

variable {X} (TR : TypedRed X)

theorem leviM_mul_par {x y : X.B.I.Gf} (hx : Par X x) (hy : Par X y) (v : TR.Pl) :
    leviM TR (x * y) v = leviM TR x v * leviM TR y v :=
  leviM_mul TR hx.1 hy.1 hy.2.2 hx.2.1 v

theorem leviM_one (v : TR.Pl) : leviM TR 1 v = 1 := by
  apply Formalism.L2.SG.NormCut.leviM_one

end Par

end PI.UnitaryDimensionFormula.NormCutK
