module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.Commensurated
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.FiniteAdelicComparison.LocLift
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicIndexEquality.CompactLocalGlobal

@[expose] public section

noncomputable section

namespace PI.UnitaryGroupMassFormula.AdIndexEq

open NumberField IsDedekindDomain Matrix
open scoped TensorProduct
open Formalism.MainNotions.S

def liftMat (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (g : Matrix (Fin I.n) (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) :
    Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Af I.F) :=
  fun i j => PI.FinKW.liftOne I v (g i j) + if i = j then 1 - PI.FinKW.liftOne I v 1 else 0

theorem liftMat_map_same (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (g : Matrix (Fin I.n) (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) :
    (liftMat I v g).map (PI.FinKW.psiV I v).toRingHom = g := by
  ext i j
  have h1 := fun a => _root_.PI.FinKW.psiV_liftOne_same I v a
  have h2 := _root_.PI.FinKW.psiV_liftOne_same I v 1
  simp only [Matrix.map_apply, liftMat, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, map_add (f := _)]
  split_ifs with h <;> simp [h1]

theorem liftMat_map_ne (I : AutInst) {v w : HeightOneSpectrum (𝓞 I.F)} (hw : w ≠ v)
    (g : Matrix (Fin I.n) (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) :
    (liftMat I v g).map (PI.FinKW.psiV I w).toRingHom = 1 := by
  ext i j
  have h1 := fun a => _root_.PI.FinKW.psiV_liftOne_ne I hw a
  have h2 := _root_.PI.FinKW.psiV_liftOne_ne I hw 1
  simp only [Matrix.map_apply, liftMat, AlgHom.toRingHom_eq_coe, RingHom.coe_coe, map_add (f := _)]
  split_ifs with h <;> simp [h1, h, Matrix.one_apply]

private theorem equivFinsuppOfBasisRight_psiV_eq_evalV (I : AutInst) (w : HeightOneSpectrum (𝓞 I.F))
    [DecidableEq (Module.Basis.ofVectorSpaceIndex I.F I.E)]
    (x : I.E ⊗[I.F] Af I.F) (i : Module.Basis.ofVectorSpaceIndex I.F I.E) :
    TensorProduct.equivFinsuppOfBasisRight (Module.Basis.ofVectorSpace I.F I.E)
        (PI.FinKW.psiV I w x) i =
      Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV I.F w
        (TensorProduct.equivFinsuppOfBasisLeft (Module.Basis.ofVectorSpace I.F I.E) x i) := by
  classical
  induction x using TensorProduct.induction_on with
  | zero => simp
  | tmul e a =>
    simp only [PI.FinKW.psiV, AlgHom.comp_apply, AlgEquiv.coe_toAlgHom, Algebra.TensorProduct.comm_tmul, Algebra.TensorProduct.map_tmul,
      AlgHom.coe_id, id_eq, TensorProduct.equivFinsuppOfBasisRight_apply_tmul,
      TensorProduct.equivFinsuppOfBasisLeft_apply_tmul, Finsupp.mapRange_apply]
    first
    | exact (map_smul (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV I.F w) _ a).symm
  | add x y hx hy => simp only [map_add (f := _), Finsupp.add_apply, hx, hy]

private theorem eq_of_forall_psiV_eq (I : AutInst) {x y : I.E ⊗[I.F] Af I.F}
    (h : ∀ w, PI.FinKW.psiV I w x = PI.FinKW.psiV I w y) : x = y := by
  classical
  apply (TensorProduct.equivFinsuppOfBasisLeft (Module.Basis.ofVectorSpace I.F I.E)).injective
  refine Finsupp.ext fun i => ?_
  have key : ∀ w, TensorProduct.equivFinsuppOfBasisLeft (Module.Basis.ofVectorSpace I.F I.E) x i w =
      TensorProduct.equivFinsuppOfBasisLeft (Module.Basis.ofVectorSpace I.F I.E) y i w := by
    intro w
    have hw := equivFinsuppOfBasisRight_psiV_eq_evalV I w x i
    rw [h w, equivFinsuppOfBasisRight_psiV_eq_evalV] at hw
    exact hw.symm
  first
  | exact Subtype.ext (funext key)

theorem liftMat_mul (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (g h : Matrix (Fin I.n) (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) :
    liftMat I v g * liftMat I v h = liftMat I v (g * h) := by
  ext i j
  apply eq_of_forall_psiV_eq I
  intro w
  have e1 : ((liftMat I v g * liftMat I v h).map (PI.FinKW.psiV I w).toRingHom) i j =
      ((liftMat I v (g * h)).map (PI.FinKW.psiV I w).toRingHom) i j := by
    rw [Matrix.map_mul]
    by_cases hw : w = v
    · subst hw
      rw [liftMat_map_same, liftMat_map_same, liftMat_map_same]
    · rw [liftMat_map_ne I hw, liftMat_map_ne I hw, liftMat_map_ne I hw, one_mul]
  simpa using e1

theorem liftMat_one (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F)) :
    liftMat I v 1 = 1 := by
  ext i j
  apply eq_of_forall_psiV_eq I
  intro w
  have e1 : ((liftMat I v 1).map (PI.FinKW.psiV I w).toRingHom) i j =
      ((1 : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Af I.F)).map (PI.FinKW.psiV I w).toRingHom) i j := by
    rw [Matrix.map_one _ (map_zero _) (map_one _)]
    by_cases hw : w = v
    · subst hw
      rw [liftMat_map_same]
    · rw [liftMat_map_ne I hw]
  simpa using e1

def liftGL (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (g : GL (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) : GL (Fin I.n) (I.E ⊗[I.F] Af I.F) :=
  ⟨liftMat I v g.val, liftMat I v g⁻¹.val,
    by rw [liftMat_mul, Units.mul_inv, liftMat_one],
    by rw [liftMat_mul, Units.inv_mul, liftMat_one]⟩

theorem liftMat_unitary (I : AutInst) (v : HeightOneSpectrum (𝓞 I.F))
    (g : GL (Fin I.n) (Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.Fv I.F v ⊗[I.F] I.E)) (hg : g ∈ Uv I v) :
    Formalism.UG.cT (Formalism.UG.sigR I.cm.sig (Af I.F)) (liftMat I v g.val) *
              I.J.map (Formalism.UG.inclE (F := I.F) (Af I.F)) * liftMat I v g.val =
      I.J.map (Formalism.UG.inclE (F := I.F) (Af I.F)) := by
  have hJ : ∀ w, (I.J.map (Formalism.UG.inclE (F := I.F) (Af I.F))).map (PI.FinKW.psiV I w).toRingHom =
      I.J.map (inclV I w) := by
    intro w
    ext a b
    simp [_root_.PI.UnitaryGroupMassFormula.AdIndexEq.psiV_inclE]
  have hC : ∀ w, ∀ M : Matrix (Fin I.n) (Fin I.n) (I.E ⊗[I.F] Af I.F),
      (Formalism.UG.cT (Formalism.UG.sigR I.cm.sig (Af I.F)) M).map (PI.FinKW.psiV I w).toRingHom =
        Formalism.UG.cT (sigV I w) (M.map (PI.FinKW.psiV I w).toRingHom) := by
    intro w M
    ext a b
    simp [Formalism.UG.cT, _root_.PI.UnitaryGroupMassFormula.AdIndexEq.psiV_sigR]
  have hmap : ∀ w, (Formalism.UG.cT (Formalism.UG.sigR I.cm.sig (Af I.F)) (liftMat I v g.val) *
        I.J.map (Formalism.UG.inclE (F := I.F) (Af I.F)) * liftMat I v g.val).map
          (PI.FinKW.psiV I w).toRingHom =
      (I.J.map (Formalism.UG.inclE (F := I.F) (Af I.F))).map (PI.FinKW.psiV I w).toRingHom := by
    intro w
    rw [Matrix.map_mul, Matrix.map_mul, hC, hJ]
    by_cases hw : w = v
    · subst hw
      rw [liftMat_map_same]
      first
      | exact hg
    · rw [liftMat_map_ne I hw, Formalism.UG.cT_one, Matrix.one_mul, Matrix.mul_one]
  ext i j
  apply eq_of_forall_psiV_eq I
  intro w
  have h1 := congrFun (congrFun (hmap w) i) j
  simpa using h1

theorem lift_unitary' : LiftU := by
  intro I v g hg
  refine ⟨⟨liftGL I v g, liftMat_unitary I v g hg⟩, ?_, ?_⟩
  · apply Units.ext
    first
    | exact liftMat_map_same I v g.val
  · intro w hw
    apply Units.ext
    first
    | exact liftMat_map_ne I hw g.val

end PI.UnitaryGroupMassFormula.AdIndexEq

end
