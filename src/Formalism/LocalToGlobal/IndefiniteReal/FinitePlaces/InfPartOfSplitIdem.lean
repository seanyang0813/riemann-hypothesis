module

public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.PlaceS
public import Formalism.LocalToGlobal.IndefiniteReal.SubgroupCharExtensionOneApply
public import Formalism.LocalToGlobal.BesselHermitianTheta.LemmasWeil
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta MeasureTheory IsDedekindDomain NumberField Matrix
open Formalism.IndefR.Datum
open scoped TensorProduct



namespace Formalism.IndefR.Fin.LevelGroupLemmas.Lat

section Lift

variable (F : Type) [Field F] [NumberField F]

def inrL : Af F →ₗ[F] AF F where
  toFun y := pairA F 0 y
  map_add' a b := Prod.ext (by show (0 : Ainf F) = 0 + 0; rw [add_zero]) rfl
  map_smul' c a := Prod.ext (by show (0 : Ainf F) = c • (0 : Ainf F); rw [smul_zero]) rfl

def inlL : Ainf F →ₗ[F] AF F where
  toFun x := pairA F x 0
  map_add' a b := Prod.ext rfl (by show (0 : Af F) = 0 + 0; rw [add_zero])
  map_smul' c a := Prod.ext rfl (by show (0 : Af F) = c • (0 : Af F); rw [smul_zero])

end Lift

variable {D : D7}

def lift (y : Af D.host.F ⊗[D.host.F] D.host.E) : AE D :=
  LinearMap.rTensor D.host.E (inrL D.host.F) y

def liftI (x : Ainf D.host.F ⊗[D.host.F] D.host.E) : AE D :=
  LinearMap.rTensor D.host.E (inlL D.host.F) x

theorem lift_tmul (a : Af D.host.F) (w : D.host.E) : lift (D := D) (a ⊗ₜ[D.host.F] w) = pairA D.host.F 0 a ⊗ₜ w := rfl

theorem lift_add (y y' : Af D.host.F ⊗[D.host.F] D.host.E) : lift (D := D) (y + y') = lift y + lift y' := map_add (LinearMap.rTensor D.host.E (inrL D.host.F)) y y'

theorem lift_zero : lift (D := D) 0 = 0 := map_zero (LinearMap.rTensor D.host.E (inrL D.host.F))

theorem lift_sum {ι : Type} (s : Finset ι) (f : ι → Af D.host.F ⊗[D.host.F] D.host.E) :
    lift (D := D) (∑ i ∈ s, f i) = ∑ i ∈ s, lift (f i) := map_sum (LinearMap.rTensor D.host.E (inrL D.host.F)) f s

theorem lift_neg (y : Af D.host.F ⊗[D.host.F] D.host.E) : lift (D := D) (-y) = -lift y := map_neg (LinearMap.rTensor D.host.E (inrL D.host.F)) y

theorem finPart_lift (y : Af D.host.F ⊗[D.host.F] D.host.E) : finPart D (lift y) = y := by
  induction y using TensorProduct.inductionOn with
  | tmul a w =>
    rw [lift_tmul]
    erw [Algebra.TensorProduct.map_tmul]
    rfl
  | add x y hx hy => rw [lift_add, map_add (f := _), hx, hy]

theorem liftI_tmul (a : Ainf D.host.F) (w : D.host.E) : liftI (D := D) (a ⊗ₜ[D.host.F] w) = pairA D.host.F a 0 ⊗ₜ w := rfl

theorem liftI_add (y y' : Ainf D.host.F ⊗[D.host.F] D.host.E) : liftI (D := D) (y + y') = liftI y + liftI y' := map_add (LinearMap.rTensor D.host.E (inlL D.host.F)) y y'

theorem liftI_zero : liftI (D := D) 0 = 0 := map_zero (LinearMap.rTensor D.host.E (inlL D.host.F))

theorem eq_liftI_add_lift (x : AE D) : x = liftI (infPart D x) + lift (finPart D x) := by
  induction x using TensorProduct.inductionOn with
  | add x y hx hy =>
    rw [map_add (f := _), map_add (f := _), liftI_add, lift_add]
    conv_lhs => rw [hx, hy]
    abel
  | tmul p w =>
    erw [Algebra.TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul]
    rw [liftI_tmul, lift_tmul, ← TensorProduct.add_tmul]
    congr 1
    exact Prod.ext (add_zero _).symm (zero_add _).symm

theorem eq_lift_of_infPart (x : AE D) (hx : infPart D x = 0) : x = lift (finPart D x) := by
  conv_lhs => rw [eq_liftI_add_lift x]
  rw [hx, liftI_zero, zero_add]


theorem lift_mul (y : Af D.host.F ⊗[D.host.F] D.host.E) (z : AE D) : lift y * z = lift (y * finPart D z) := by
  induction y using TensorProduct.inductionOn with
  | add y y' hy hy' => rw [lift_add, add_mul, hy, hy', ← lift_add, add_mul]
  | tmul a w =>
    induction z using TensorProduct.inductionOn with
    | add z z' hz hz' => rw [mul_add, hz, hz', map_add (f := _), mul_add, lift_add]
    | tmul p w' =>
      rw [lift_tmul, Algebra.TensorProduct.tmul_mul_tmul]
      erw [Algebra.TensorProduct.map_tmul]
      rw [Algebra.TensorProduct.tmul_mul_tmul, lift_tmul]
      congr 1
      exact Prod.ext (zero_mul _) rfl

theorem mul_lift (z : AE D) (y : Af D.host.F ⊗[D.host.F] D.host.E) : z * lift y = lift (finPart D z * y) := by
  rw [mul_comm, lift_mul, mul_comm]

def liftE (y : EAf D) : AE D := lift ((Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F)) y)

theorem toEAf_lift (y : Af D.host.F ⊗[D.host.F] D.host.E) :
    toEAf D (lift y) = Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E y := by
  rw [show toEAf D (lift y) = Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E (finPart D (lift y)) from rfl,
    finPart_lift]

theorem toEAf_liftE (y : EAf D) : toEAf D (liftE y) = y := by
  rw [liftE, toEAf_lift]
  induction y using TensorProduct.inductionOn with
  | tmul a b => simp
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem finE_coe (V : HSp D) (g : GA D V) :
    ((Lev.finE V g : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (EAf D)) =
      (mt V g).map (toEAf D) := rfl

theorem mt_mul (V : HSp D) (g g' : GA D V) : mt V (g * g') = mt V g * mt V g' := by
  unfold Formalism.L2.Theta.mt
  rw [map_mul]
  rfl

theorem mt_one (V : HSp D) : mt V (1 : GA D V) = 1 := by
  unfold Formalism.L2.Theta.mt
  rw [map_one]
  rfl

theorem mt_inv_mul (V : HSp D) (g : GA D V) : mt V g⁻¹ * mt V g = 1 := by
  rw [← mt_mul, inv_mul_cancel, mt_one]

theorem mt_mul_inv (V : HSp D) (g : GA D V) : mt V g * mt V g⁻¹ = 1 := by
  rw [← mt_mul, mul_inv_cancel, mt_one]

def frG (V : HSp D) (β : GL (Fin V.rank) (EAf D)) (g : GA D V) : GL (Fin V.rank) (EAf D) :=
  β⁻¹ * Lev.finE V g * β

theorem frG_inv (V : HSp D) (β : GL (Fin V.rank) (EAf D)) (g : GA D V) : frG V β g⁻¹ = (frG V β g)⁻¹ := by
  simp only [frG, map_inv]
  group

theorem gl_cancel_left {R : Type} [CommRing R] {n m : ℕ} (A : GL (Fin n) R) (X : Matrix (Fin n) (Fin m) R) :
    (A : Matrix (Fin n) (Fin n) R) * (((A⁻¹ : GL (Fin n) R) : Matrix (Fin n) (Fin n) R) * X) = X := by
  rw [← Matrix.mul_assoc, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mul]

theorem frG_coe (V : HSp D) (β : GL (Fin V.rank) (EAf D)) (g : GA D V) :
    ((frG V β g : GL (Fin V.rank) (EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (EAf D)) =
      ((β⁻¹ : GL (Fin V.rank) (EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (EAf D)) * (mt V g).map (toEAf D) * β := by
  rw [frG, Units.val_mul, Units.val_mul, finE_coe]

theorem frMapO_actO (S T : HSp D) (βS : GL (Fin S.rank) (EAf D)) (βT : GL (Fin T.rank) (EAf D)) (g : GA D S)
    (h : GA D T) (t : WO S T) :
    frMapO S T βS βT (actO S T g h t) =
      (frG T βT h : Matrix (Fin T.rank) (Fin T.rank) (EAf D)) * frMapO S T βS βT t *
        (((frG S βS g)⁻¹ : GL (Fin S.rank) (EAf D)) : Matrix (Fin S.rank) (Fin S.rank) (EAf D)) := by
  rw [← frG_inv, frG_coe, frG_coe]
  unfold frMapO actO
  rw [Matrix.map_mul, Matrix.map_mul]
  simp only [Matrix.mul_assoc, gl_cancel_left]

def adjO (S T : HSp D) (x : WO S T) : Matrix (Fin S.rank) (Fin T.rank) (AE D) :=
  HMul.hMul (HMul.hMul ((S.gram⁻¹).map (incA D)) ((x : Matrix (Fin T.rank) (Fin S.rank) (AE D)).map (cA D)).transpose)
    (T.gram.map (incA D))

theorem frMapAdj_eq (S T : HSp D) (βS : GL (Fin S.rank) (EAf D)) (βT : GL (Fin T.rank) (EAf D)) (x : WO S T) :
    frMapAdj S T βS βT x = ((βS⁻¹ : GL (Fin S.rank) (EAf D)) : Matrix (Fin S.rank) (Fin S.rank) (EAf D)) *
      (adjO S T x).map (toEAf D) * (βT : Matrix (Fin T.rank) (Fin T.rank) (EAf D)) := rfl

theorem gramInv_mul (V : HSp D) : (V.gram⁻¹).map (incA D) * V.gram.map (incA D) = 1 := by
  rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr (gram_det_ne V)), Matrix.map_one _ (map_zero _) (map_one _)]

theorem gram_mul_gramInv (V : HSp D) : V.gram.map (incA D) * (V.gram⁻¹).map (incA D) = 1 := by
  rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (isUnit_iff_ne_zero.mpr (gram_det_ne V)), Matrix.map_one _ (map_zero _) (map_one _)]

theorem cT_gram (V : HSp D) (g : GA D V) :
    ((mt V g).map (cA D))ᵀ * V.gram.map (incA D) = V.gram.map (incA D) * mt V g⁻¹ := by
  have hu : ((mt V g).map (cA D))ᵀ * V.gram.map (incA D) * mt V g = V.gram.map (incA D) := g.2
  calc ((mt V g).map (cA D))ᵀ * V.gram.map (incA D)
      = ((mt V g).map (cA D))ᵀ * V.gram.map (incA D) * (mt V g * mt V g⁻¹) := by rw [mt_mul_inv, Matrix.mul_one]
    _ = V.gram.map (incA D) * mt V g⁻¹ := by rw [← Matrix.mul_assoc, hu]



theorem adjO_actO (S T : HSp D) (g : GA D S) (h : GA D T) (x : WO S T) :
    adjO S T (actO S T g h x) = mt S g * adjO S T x * mt T h⁻¹ := by
  have hS := cT_gram S g⁻¹
  rw [inv_inv] at hS
  have hT := cT_gram T h
  have h1 : (S.gram⁻¹).map (incA D) * ((mt S g⁻¹).map (cA D))ᵀ = mt S g * (S.gram⁻¹).map (incA D) := by
    calc (S.gram⁻¹).map (incA D) * ((mt S g⁻¹).map (cA D))ᵀ
        = (S.gram⁻¹).map (incA D) * ((mt S g⁻¹).map (cA D))ᵀ *
            (S.gram.map (incA D) * (S.gram⁻¹).map (incA D)) := by
          rw [gram_mul_gramInv, Matrix.mul_one]
      _ = (S.gram⁻¹).map (incA D) * (S.gram.map (incA D) * mt S g) * (S.gram⁻¹).map (incA D) := by
          rw [← hS]
          simp only [Matrix.mul_assoc]
      _ = mt S g * (S.gram⁻¹).map (incA D) := by
          rw [← Matrix.mul_assoc, gramInv_mul, Matrix.one_mul]
  unfold adjO actO
  rw [Matrix.map_mul, Matrix.map_mul, Matrix.transpose_mul, Matrix.transpose_mul]
  calc _ = ((S.gram⁻¹).map (incA D) * ((mt S g⁻¹).map (cA D))ᵀ) *
        ((x : Matrix (Fin T.rank) (Fin S.rank) (AE D)).map (cA D))ᵀ *
        (((mt T h).map (cA D))ᵀ * T.gram.map (incA D)) := by
        simp only [Matrix.mul_assoc]
    _ = _ := by
        rw [h1, hT]
        simp only [Matrix.mul_assoc]

theorem frMapAdj_actO (S T : HSp D) (βS : GL (Fin S.rank) (EAf D)) (βT : GL (Fin T.rank) (EAf D)) (g : GA D S)
    (h : GA D T) (x : WO S T) :
    frMapAdj S T βS βT (actO S T g h x) =
      (frG S βS g : Matrix (Fin S.rank) (Fin S.rank) (EAf D)) * frMapAdj S T βS βT x *
        (((frG T βT h)⁻¹ : GL (Fin T.rank) (EAf D)) : Matrix (Fin T.rank) (Fin T.rank) (EAf D)) := by
  rw [frMapAdj_eq, frMapAdj_eq, adjO_actO, ← frG_inv, frG_coe, frG_coe, Matrix.map_mul, Matrix.map_mul]
  simp only [Matrix.mul_assoc, gl_cancel_left]

abbrev intM {n : ℕ} (y : GL (Fin n) ↥(Formalism.L2.Herm.intAf D.host.F D.host.E)) : Matrix (Fin n) (Fin n) (EAf D) :=
  (y : Matrix (Fin n) (Fin n) ↥(Formalism.L2.Herm.intAf D.host.F D.host.E)).map Subtype.val

theorem isIntM_intM {n : ℕ} (y : GL (Fin n) ↥(Formalism.L2.Herm.intAf D.host.F D.host.E)) : IsIntM (intM (D := D) y) := fun i j => ((y : Matrix (Fin n) (Fin n) ↥(Formalism.L2.Herm.intAf D.host.F D.host.E)) i j).2

theorem isIntM_mul {a b c : ℕ} {N : Matrix (Fin c) (Fin b) (EAf D)} {M : Matrix (Fin b) (Fin a) (EAf D)}
    (hN : IsIntM N) (hM : IsIntM M) : IsIntM (N * M) := fun i j => by
  rw [Matrix.mul_apply]
  exact sum_mem (fun k _ => mul_mem (hN i k) (hM k j))

theorem isIntM_add {a b : ℕ} {N M : Matrix (Fin b) (Fin a) (EAf D)} (hN : IsIntM N) (hM : IsIntM M) : IsIntM (N + M) := fun i j => by
  rw [Matrix.add_apply]
  exact add_mem (hN i j) (hM i j)

theorem redM_of_int (PP : Formalism.L2.DIV.Pl D.host.E) {a b : ℕ} {N : Matrix (Fin b) (Fin a) (EAf D)} (hN : IsIntM N) (i j) :
    redM PP N i j = Formalism.L2.DIV.resS D.host.F PP ⟨N i j, hN i j⟩ := by
  unfold redM; rw [dite_eq_left (hN i j)]



section Lat

variable (S T : HSp D) (ΛS : Submodule (𝓞 D.host.E) (Fin S.rank → D.host.E))
  (ΛT : Submodule (𝓞 D.host.E) (Fin T.rank → D.host.E))

def genL (α : Af D.host.F) (a : D.host.E) (s : Fin S.rank → D.host.E) (t : Fin T.rank → D.host.E) : WO S T :=
  Matrix.of fun i j => (pairA D.host.F 0 α) ⊗ₜ[D.host.F] (a * t i * ∑ k, star (s k) * S.gram k j)

variable {S T ΛS ΛT}

theorem genL_mem {α : Af D.host.F} (hα : α ∈ intAf D.host.F) {a : D.host.E} (ha : a ∈ D.host.AA)
    {s : Fin S.rank → D.host.E} (hs : s ∈ ΛS) {t : Fin T.rank → D.host.E} (ht : t ∈ ΛT) :
    genL S T α a s t ∈ latAll S T ΛS ΛT :=
  AddSubgroup.subset_closure ⟨α, hα, fun _ h => (h trivial).elim, a, ha, s, hs, t, ht, rfl⟩

theorem intAf_mul {α β : Af D.host.F} (hα : α ∈ intAf D.host.F) (hβ : β ∈ intAf D.host.F) : α * β ∈ intAf D.host.F :=
  fun v => by rw [map_mul]; exact mul_mem (hα v) (hβ v)

theorem AA_mul {a : D.host.E} (ha : a ∈ D.host.AA) (o : 𝓞 D.host.E) : (o : D.host.E) * a ∈ D.host.AA := by
  have := (D.host.AA : Submodule (𝓞 D.host.E) D.host.E).smul_mem o ha
  rwa [Algebra.smul_def] at this

theorem genL_smul (b : Af D.host.F) (o : D.host.E) (α : Af D.host.F) (a : D.host.E) (s : Fin S.rank → D.host.E)
    (t : Fin T.rank → D.host.E) :
    (pairA D.host.F 0 b ⊗ₜ[D.host.F] o) • genL S T α a s t = genL S T (α * b) (o * a) s t := by
  ext i j
  simp only [genL, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul, Algebra.TensorProduct.tmul_mul_tmul]
  congr 1
  · exact Prod.ext (by show (0 : Ainf D.host.F) * 0 = 0; rw [mul_zero]) (by show b * α = α * b; rw [mul_comm])
  · ring

theorem latAll_infPart {u : WO S T} (hu : u ∈ latAll S T ΛS ΛT) (i : Fin T.rank) (j : Fin S.rank) :
    infPart D (u i j) = 0 := by
  induction hu using AddSubgroup.closure_induction with
  | mem w hw =>
    obtain ⟨α, _, _, a, _, s, _, t, _, rfl⟩ := hw
    show (fstA D.host.F (pairA D.host.F 0 α)) ⊗ₜ[D.host.F] _ = 0
    exact TensorProduct.zero_tmul _ _
  | zero => exact map_zero _
  | add x y _ _ hx hy => rw [Matrix.add_apply, map_add (f := _), hx, hy, add_zero]
  | neg x _ hx => rw [Matrix.neg_apply, map_neg, hx, neg_zero]

theorem lift_tmul_smul_mem {b : Af D.host.F} (hb : b ∈ intAf D.host.F) (o : 𝓞 D.host.E) {u : WO S T}
    (hu : u ∈ latAll S T ΛS ΛT) : (pairA D.host.F 0 b ⊗ₜ[D.host.F] (o : D.host.E)) • u ∈ latAll S T ΛS ΛT := by
  induction hu using AddSubgroup.closure_induction with
  | mem w hw =>
    obtain ⟨α, hα, _, a, ha, s, hs, t, ht, rfl⟩ := hw
    have hm := genL_mem (S := S) (T := T) (ΛS := ΛS) (ΛT := ΛT) (intAf_mul hα hb) (AA_mul ha o) hs ht
    rw [← genL_smul] at hm
    exact hm
  | zero => rw [smul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [smul_add]; exact add_mem hx hy
  | neg x _ hx => rw [smul_neg]; exact neg_mem hx

theorem lift_smul_mem {y : Af D.host.F ⊗[D.host.F] D.host.E} (hy : y ∈ intAE D) {u : WO S T}
    (hu : u ∈ latAll S T ΛS ΛT) : lift y • u ∈ latAll S T ΛS ΛT := by
  induction hy using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨b, hb, o, rfl⟩ := hz
    rw [lift_tmul]
    exact lift_tmul_smul_mem hb o hu
  | zero => rw [lift_zero, zero_smul]; exact zero_mem _
  | add x y _ _ hx hy => rw [lift_add, add_smul]; exact add_mem hx hy
  | neg x _ hx => rw [lift_neg, neg_smul]; exact neg_mem hx

theorem smul_mem_latAll {a : AE D} (ha : finPart D a ∈ intAE D) {u : WO S T} (hu : u ∈ latAll S T ΛS ΛT) :
    a • u ∈ latAll S T ΛS ΛT := by
  have e : a • u = lift (finPart D a) • u := by
    ext i j
    rw [Matrix.smul_apply, Matrix.smul_apply, smul_eq_mul, smul_eq_mul,
      eq_lift_of_infPart (u i j) (latAll_infPart hu i j), mul_lift, lift_mul, finPart_lift]
  rw [e]; exact lift_smul_mem ha hu

theorem liftE_mul (y : EAf D) (z : AE D) : liftE y * z = liftE (y * toEAf D z) := by
  have hc : ∀ x : Af D.host.F ⊗[D.host.F] D.host.E, Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F)
      (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E x) = x := by
    intro x
    induction x using TensorProduct.inductionOn with
    | tmul a b => simp
    | add x y hx hy => simp only [map_add (f := _), hx, hy]
  rw [liftE, liftE, lift_mul, map_mul]
  congr 2
  exact (hc (finPart D z)).symm

theorem mul_liftE (z : AE D) (y : EAf D) : z * liftE y = liftE (toEAf D z * y) := by
  rw [mul_comm, liftE_mul, mul_comm]

theorem liftE_mul_liftE (y y' : EAf D) : liftE y * liftE y' = liftE (y * y') := by
  rw [liftE_mul, toEAf_liftE]

theorem liftE_add (y y' : EAf D) : liftE (D := D) (y + y') = liftE y + liftE y' := by
  simp only [liftE, map_add (f := _), lift_add]

theorem liftE_zero : liftE (D := D) 0 = 0 := by
  simp only [liftE, map_zero, lift_zero]

theorem liftE_neg (y : EAf D) : liftE (D := D) (-y) = -liftE y := by
  simp only [liftE, map_neg, lift_neg]

theorem liftE_sum {ι : Type} (s : Finset ι) (f : ι → EAf D) : liftE (D := D) (∑ i ∈ s, f i) = ∑ i ∈ s, liftE (f i) := by

  simp only [liftE, map_sum, lift_sum]

theorem liftE_smul_mem {z : EAf D} (hz : z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) :
    ∀ u ∈ latAll S T ΛS ΛT, liftE z • u ∈ latAll S T ΛS ΛT := by
  induction hz using Subring.closure_induction with
  | mem x hx =>
    intro u hu
    rcases hx with ⟨⟨x, ⟨o, rfl⟩⟩, rfl⟩ | ⟨⟨y, hy⟩, rfl⟩
    · show lift (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) ((algebraMap (𝓞 D.host.E) D.host.E o) ⊗ₜ 1)) • u ∈ _
      exact lift_tmul_smul_mem (b := 1) (fun v => by rw [map_one]; exact one_mem _) o hu
    · show lift (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) ((1 : D.host.E) ⊗ₜ y)) • u ∈ _
      have e : (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) ((1 : D.host.E) ⊗ₜ y)) =
          y ⊗ₜ[D.host.F] ((1 : 𝓞 D.host.E) : D.host.E) := by
        rw [Algebra.TensorProduct.comm_tmul]; rfl
      rw [e, lift_tmul]
      exact lift_tmul_smul_mem (fun v => hy v) 1 hu
  | zero => intro u _; rw [liftE_zero, zero_smul]; exact zero_mem _
  | one =>
    intro u hu
    show lift (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) ((1 : D.host.E) ⊗ₜ (1 : Af D.host.F))) • u ∈ _
    have e : (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) ((1 : D.host.E) ⊗ₜ (1 : Af D.host.F))) =
        (1 : Af D.host.F) ⊗ₜ[D.host.F] ((1 : 𝓞 D.host.E) : D.host.E) := by
      rw [Algebra.TensorProduct.comm_tmul]; rfl
    rw [e, lift_tmul]
    exact lift_tmul_smul_mem (fun v => by rw [map_one]; exact one_mem _) 1 hu
  | add x y _ _ hx hy => intro u hu; rw [liftE_add, add_smul]; exact add_mem (hx u hu) (hy u hu)
  | neg x _ hx => intro u hu; rw [liftE_neg, neg_smul]; exact neg_mem (hx u hu)
  | mul x y _ _ hx hy =>
    intro u hu
    rw [← liftE_mul_liftE, mul_smul]
    exact hx _ (hy u hu)

abbrev sR (D : D7) : EAf D →+* EAf D := Formalism.UG.sigR D.sp.cm.sig (Af D.host.F)

theorem toEAf_cA (x : AE D) : toEAf D (cA D x) = sR D (toEAf D x) := by
  induction x using TensorProduct.inductionOn with
  | tmul a w => rfl
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, map_add (f := _), map_add (f := _)]

theorem toEAf_incA (w : D.host.E) : toEAf D (incA D w) = eToEAf D w := by
  show (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E)
    ((sndA D.host.F (1 : AF D.host.F)) ⊗ₜ[D.host.F] w) = w ⊗ₜ[D.host.F] (1 : Af D.host.F)
  rw [map_one]; rfl

theorem sR_eTo (w : D.host.E) : sR D (eToEAf D w) = eToEAf D (star w) := rfl

theorem isIntegral_star' (x : 𝓞 D.host.E) : IsIntegral ℤ (star (x : D.host.E)) :=
  IsIntegral.map (starRingEnd D.host.E).toIntAlgHom x.isIntegral_coe

theorem sR_mem_intAf {z : EAf D} (hz : z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) :
    sR D z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
  induction hz using Subring.closure_induction with
  | mem x hx =>
    rcases hx with ⟨⟨x, ⟨o, rfl⟩⟩, rfl⟩ | ⟨⟨y, hy⟩, rfl⟩
    · apply Subring.subset_closure
      left
      exact ⟨⟨star ((algebraMap (𝓞 D.host.E) D.host.E) o), ⟨⟨_, isIntegral_star' o⟩, rfl⟩⟩, rfl⟩
    · apply Subring.subset_closure
      right
      exact ⟨⟨y, hy⟩, by show _ = (star (1 : D.host.E)) ⊗ₜ[D.host.F] y; rw [star_one]⟩
  | zero => rw [map_zero]; exact zero_mem _
  | one => rw [map_one]; exact one_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx
  | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy

def genE (c : EAf D) (τ : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) : WO S T :=
  (c • Matrix.vecMulVec τ (Matrix.vecMul (fun k => sR D (σ k)) (S.gram.map (eToEAf D)))).map liftE

theorem liftE_eTo_mul (x : D.host.E) (α : Af D.host.F) :
    liftE (D := D) (eToEAf D x * ((1 : D.host.E) ⊗ₜ[D.host.F] α)) = pairA D.host.F 0 α ⊗ₜ[D.host.F] x := by
  show lift (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F)
    ((x ⊗ₜ[D.host.F] (1 : Af D.host.F)) * ((1 : D.host.E) ⊗ₜ[D.host.F] α))) = _
  rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul, Algebra.TensorProduct.comm_tmul, lift_tmul]

theorem genL_eq_genE (α : Af D.host.F) (a : D.host.E) (s : Fin S.rank → D.host.E) (t : Fin T.rank → D.host.E) :
    genL S T α a s t = genE (eToEAf D a * ((1 : D.host.E) ⊗ₜ[D.host.F] α)) (fun i => eToEAf D (t i))
      (fun k => eToEAf D (s k)) := by
  ext i j
  simp only [genL, genE, Matrix.map_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Matrix.vecMul, dotProduct,
    Matrix.of_apply, smul_eq_mul, sR_eTo]
  rw [← liftE_eTo_mul]
  congr 1

  rw [show ∑ k, eToEAf D (star (s k)) * eToEAf D (S.gram k j) = eToEAf D (∑ k, star (s k) * S.gram k j) by
  rw [map_sum]; exact Finset.sum_congr rfl fun k _ => (map_mul _ _ _).symm]
  rw [map_mul, map_mul]
  ring

theorem actO_mapLiftE (g : GA D S) (h : GA D T) (W : Matrix (Fin T.rank) (Fin S.rank) (EAf D)) :
    actO S T g h (W.map liftE) = ((mt T h).map (toEAf D) * W * (mt S g⁻¹).map (toEAf D)).map liftE := by
  ext i j
  simp only [actO, Matrix.mul_apply, Matrix.map_apply, Finset.sum_mul, liftE_sum, mul_liftE, liftE_mul]

theorem mul_vecMulVec_mul {R : Type} [CommRing R] {m n m' n' : ℕ} (A : Matrix (Fin m') (Fin m) R)
    (x : Fin m → R) (y : Fin n → R) (B : Matrix (Fin n) (Fin n') R) (c : R) :
    A * (c • Matrix.vecMulVec x y) * B = c • Matrix.vecMulVec (A *ᵥ x) (Matrix.vecMul y B) := by
  ext i j
  simp only [Matrix.mul_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Matrix.mulVec, Matrix.vecMul, dotProduct,
    smul_eq_mul]
  have hl : ∀ l, (∑ k, A i k * (c * (x k * y l))) * B l j = c * (∑ k, A i k * x k) * (y l * B l j) := fun l => by
    rw [Finset.sum_mul, Finset.mul_sum, Finset.sum_mul]
    exact Finset.sum_congr rfl fun k _ => by ring
  rw [Finset.sum_congr rfl fun l _ => hl l, ← Finset.mul_sum]
  ring

theorem cT_gram_E (V : HSp D) (g : GA D V) :
    (((mt V g).map (toEAf D)).map (sR D))ᵀ * V.gram.map (eToEAf D) = V.gram.map (eToEAf D) * (mt V g⁻¹).map (toEAf D) := by
  have h := congrArg (fun M => Matrix.map M (toEAf D)) (cT_gram V g)
  simp only [Matrix.map_mul, Matrix.transpose_map, Matrix.map_map] at h
  have e1 : (toEAf D ∘ cA D) = (sR D ∘ toEAf D) := funext toEAf_cA
  have e2 : (toEAf D ∘ incA D) = eToEAf D := funext toEAf_incA
  rw [e1, e2] at h
  rw [Matrix.map_map]
  exact h

theorem actO_genE (g : GA D S) (h : GA D T) (c : EAf D) (τ : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) :
    actO S T g h (genE c τ σ) = genE c ((mt T h).map (toEAf D) *ᵥ τ) ((mt S g).map (toEAf D) *ᵥ σ) := by
  unfold genE
  rw [actO_mapLiftE, mul_vecMulVec_mul]
  congr 3
  rw [Matrix.vecMul_vecMul, ← cT_gram_E, ← Matrix.vecMul_vecMul, Matrix.vecMul_transpose]
  congr 1
  funext k
  rw [RingHom.map_mulVec]
  rfl

theorem genE_add_left (c : EAf D) (τ τ' : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) :
    genE c (τ + τ') σ = genE (S := S) c τ σ + genE c τ' σ := by
  ext i j
  simp only [genE, Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Pi.add_apply,
    smul_eq_mul]
  rw [← liftE_add]
  congr 1
  ring

theorem genE_smul_left (c z : EAf D) (τ : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) :
    genE c (z • τ) σ = liftE z • genE (S := S) c τ σ := by
  ext i j
  simp only [genE, Matrix.map_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Pi.smul_apply, smul_eq_mul]
  rw [liftE_mul_liftE]
  congr 1
  ring

theorem genE_zero_left (c : EAf D) (σ : Fin S.rank → EAf D) : genE (T := T) c 0 σ = 0 := by
  ext i j
  simp [genE, liftE_zero]

theorem genE_add_right (c : EAf D) (τ : Fin T.rank → EAf D) (σ σ' : Fin S.rank → EAf D) :
    genE c τ (σ + σ') = genE (S := S) c τ σ + genE c τ σ' := by
  ext i j
  simp only [genE, Matrix.map_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Matrix.add_apply, Pi.add_apply,
    smul_eq_mul, ← liftE_add, map_add]
  rw [show (fun k => sR D (σ k) + sR D (σ' k)) = (fun k => sR D (σ k)) + (fun k => sR D (σ' k)) from rfl,
    Matrix.add_vecMul, Pi.add_apply]
  congr 1; ring

theorem genE_smul_right (c z : EAf D) (τ : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) :
    genE c τ (z • σ) = liftE (sR D z) • genE (S := S) c τ σ := by
  ext i j
  simp only [genE, Matrix.map_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, Pi.smul_apply, smul_eq_mul,
    liftE_mul_liftE, map_mul]
  rw [show (fun k => sR D z * sR D (σ k)) = sR D z • (fun k => sR D (σ k)) from rfl, Matrix.smul_vecMul, Pi.smul_apply,
    smul_eq_mul]
  congr 1; ring

theorem genE_zero_right (c : EAf D) (τ : Fin T.rank → EAf D) : genE (S := S) c τ 0 = 0 := by
  have hs : (fun k => sR D ((0 : Fin S.rank → EAf D) k)) = 0 := by
    funext k
    simp
  ext i j
  simp only [genE, hs]
  simp [liftE_zero]

theorem genE_mem {α : Af D.host.F} (hα : α ∈ intAf D.host.F) {a : D.host.E} (ha : a ∈ D.host.AA)
    {τ : Fin T.rank → EAf D} (hτ : τ ∈ Formalism.L2.Herm.hatL (F := D.host.F) ΛT)
    {σ : Fin S.rank → EAf D} (hσ : σ ∈ Formalism.L2.Herm.hatL (F := D.host.F) ΛS) :
    genE (eToEAf D a * ((1 : D.host.E) ⊗ₜ[D.host.F] α)) τ σ ∈ latAll S T ΛS ΛT := by
  induction hτ using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨t, ht, rfl⟩ := hx
    induction hσ using Submodule.span_induction with
    | mem y hy =>
      obtain ⟨s, hs, rfl⟩ := hy
      have hm := genL_mem (S := S) (T := T) (ΛS := ΛS) (ΛT := ΛT) hα ha hs ht
      rw [genL_eq_genE] at hm
      exact hm
    | zero => rw [genE_zero_right]; exact zero_mem _
    | add y y' _ _ hy hy' => rw [genE_add_right]; exact add_mem hy hy'
    | smul r y _ hy =>
      rw [Subring.smul_def, genE_smul_right]
      exact liftE_smul_mem (sR_mem_intAf r.2) _ hy
  | zero => rw [genE_zero_left]; exact zero_mem _
  | add x x' _ _ hx hx' => rw [genE_add_left]; exact add_mem hx hx'
  | smul r x _ hx =>
    rw [Subring.smul_def, genE_smul_left]
    exact liftE_smul_mem r.2 _ hx



theorem St_mulVec_mem {n : ℕ} {β : GL (Fin n) (EAf D)} {Λ : Submodule (𝓞 D.host.E) (Fin n → D.host.E)}
    (hf : Formalism.L2.DIV.IsFrame β Λ) {x : GL (Fin n) (EAf D)} (hx : x ∈ Formalism.L2.DIV.St β) {v : Fin n → EAf D}
    (hv : v ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ) :
    (x : Matrix (Fin n) (Fin n) (EAf D)) *ᵥ v ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ := by
  obtain ⟨y, rfl⟩ := hx
  rw [hf]
  have hv' := (hf v).1 hv
  have e : β⁻¹ * Formalism.L2.DIV.frGL β y = Formalism.L2.DIV.intGL D.host.F D.host.E n y * β⁻¹ := by
    show β⁻¹ * (β * Formalism.L2.DIV.intGL D.host.F D.host.E n y * β⁻¹) = _
    group
  have e2 : ((β⁻¹ : GL (Fin n) (EAf D)) : Matrix (Fin n) (Fin n) (EAf D)) *ᵥ
      (((Formalism.L2.DIV.frGL β y : GL (Fin n) (EAf D)) : Matrix (Fin n) (Fin n) (EAf D)) *ᵥ v) =
      intM y *ᵥ (((β⁻¹ : GL (Fin n) (EAf D)) : Matrix (Fin n) (Fin n) (EAf D)) *ᵥ v) := by
    rw [Matrix.mulVec_mulVec, ← Units.val_mul, e, Units.val_mul, ← Matrix.mulVec_mulVec]; rfl
  intro i
  rw [e2]
  simp only [Matrix.mulVec, dotProduct]
  exact Subring.sum_mem _ fun k _ => Subring.mul_mem _ (isIntM_intM y i k) (hv' k)

theorem mem_hatL_of_mem {n : ℕ} {Λ : Submodule (𝓞 D.host.E) (Fin n → D.host.E)} {t : Fin n → D.host.E} (ht : t ∈ Λ) :
    (fun i => eToEAf D (t i)) ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ :=
  Submodule.subset_span ⟨t, ht, rfl⟩

theorem actO_actO (g g' : GA D S) (h h' : GA D T) (t : WO S T) :
    actO S T g h (actO S T g' h' t) = actO S T (g * g') (h * h') t := by
  unfold actO
  rw [_root_.mul_inv_rev, mt_mul, mt_mul]
  simp only [Matrix.mul_assoc]

theorem actO_one (t : WO S T) : actO S T 1 1 t = t := by
  unfold actO; rw [inv_one, mt_one, mt_one, Matrix.one_mul, Matrix.mul_one]

theorem actO_mem_latAll {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)}
    (hfS : Formalism.L2.DIV.IsFrame βS ΛS) (hfT : Formalism.L2.DIV.IsFrame βT ΛT) {g : GA D S} {h : GA D T}
    (hg : Lev.finE S g ∈ Formalism.L2.DIV.St βS) (hh : Lev.finE T h ∈ Formalism.L2.DIV.St βT) {u : WO S T}
    (hu : u ∈ latAll S T ΛS ΛT) : actO S T g h u ∈ latAll S T ΛS ΛT := by
  induction hu using AddSubgroup.closure_induction with
  | mem w hw =>
    obtain ⟨α, hα, _, a, ha, s, hs, t, ht, rfl⟩ := hw
    have hmem : actO S T g h (genL S T α a s t) ∈ latAll S T ΛS ΛT := by
      rw [genL_eq_genE, actO_genE]
      refine genE_mem hα ha ?_ ?_
      · rw [← finE_coe]; exact St_mulVec_mem hfT hh (mem_hatL_of_mem ht)
      · rw [← finE_coe]; exact St_mulVec_mem hfS hg (mem_hatL_of_mem hs)
    exact hmem
  | zero => unfold actO; rw [Matrix.mul_zero, Matrix.zero_mul]; exact zero_mem _
  | add x y _ _ hx hy => unfold actO at *; rw [Matrix.mul_add, Matrix.add_mul]; exact add_mem hx hy
  | neg x _ hx => unfold actO at *; rw [Matrix.mul_neg, Matrix.neg_mul]; exact neg_mem hx

theorem actO_mem_latAll_iff {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)}
    (hfS : Formalism.L2.DIV.IsFrame βS ΛS) (hfT : Formalism.L2.DIV.IsFrame βT ΛT) {g : GA D S} {h : GA D T}
    (hg : Lev.finE S g ∈ Formalism.L2.DIV.St βS) (hh : Lev.finE T h ∈ Formalism.L2.DIV.St βT) (t : WO S T) :
    actO S T g h t ∈ latAll S T ΛS ΛT ↔ t ∈ latAll S T ΛS ΛT := by
  refine ⟨fun ht => ?_, actO_mem_latAll hfS hfT hg hh⟩
  have hg' : Lev.finE S g⁻¹ ∈ Formalism.L2.DIV.St βS := by rw [map_inv]; exact inv_mem hg
  have hh' : Lev.finE T h⁻¹ ∈ Formalism.L2.DIV.St βT := by rw [map_inv]; exact inv_mem hh
  have := actO_mem_latAll hfS hfT hg' hh' ht
  rwa [actO_actO, inv_mul_cancel, inv_mul_cancel, actO_one] at this

theorem isHalf_actO (e : AE D) (g : GA D S) (h : GA D T) {t : WO S T} (ht : IsHalf e t) :
    IsHalf e (actO S T g h t) := by
  intro i j
  simp only [actO, Matrix.mul_apply, Finset.mul_sum, Finset.sum_mul]
  refine Finset.sum_congr rfl fun l _ => Finset.sum_congr rfl fun k _ => ?_
  calc e * (mt T h i k * t k l * mt S g⁻¹ l j) = mt T h i k * (e * t k l) * mt S g⁻¹ l j := by ring
    _ = _ := by rw [ht k l]



theorem col_mem_hatL {n : ℕ} {β : GL (Fin n) (EAf D)} {Λ : Submodule (𝓞 D.host.E) (Fin n → D.host.E)}
    (hf : Formalism.L2.DIV.IsFrame β Λ) (j : Fin n) :
    (fun i => (β : Matrix (Fin n) (Fin n) (EAf D)) i j) ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ := by
  rw [hf]
  intro i
  have e : (fun i => (β : Matrix (Fin n) (Fin n) (EAf D)) i j) =
      (β : Matrix (Fin n) (Fin n) (EAf D)) *ᵥ Pi.single j 1 := by
    funext i; rw [Matrix.mulVec_single_one]; rfl
  rw [e, Matrix.mulVec_mulVec, Units.inv_mul, Matrix.one_mulVec]
  by_cases hij : i = j
  · subst hij; rw [Pi.single_eq_same]; exact one_mem _
  · rw [Pi.single_eq_of_ne hij]; exact zero_mem _



theorem hform_int {V : HSp D} {Λ : Submodule (𝓞 D.host.E) (Fin V.rank → D.host.E)} (hΛ : IsSelfDualC V Λ)
    {s : Fin V.rank → D.host.E} (hs : s ∈ Λ) {v : Fin V.rank → EAf D} (hv : v ∈ Formalism.L2.Herm.hatL (F := D.host.F) Λ) :
    (fun k => sR D (eToEAf D (s k))) ⬝ᵥ (V.gram.map (eToEAf D) *ᵥ v) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
  induction hv using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨s₂, hs₂, rfl⟩ := hx
    obtain ⟨b, hb⟩ := (hΛ.2 s₂).1 hs₂ s hs
    have e : (fun k => sR D (eToEAf D (s k))) ⬝ᵥ (V.gram.map (eToEAf D) *ᵥ fun i => eToEAf D (s₂ i)) =
        eToEAf D (∑ i, ∑ j, star (s i) * V.gram i j * s₂ j) := by

      simp only [dotProduct, Matrix.mulVec, Matrix.map_apply, sR_eTo, map_sum, map_mul, Finset.mul_sum]
      exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
    show (fun k => sR D (eToEAf D (s k))) ⬝ᵥ (V.gram.map (eToEAf D) *ᵥ fun i => eToEAf D (s₂ i)) ∈ _
    rw [e, ← hb]
    exact Subring.subset_closure (Or.inl ⟨⟨_, ⟨b, rfl⟩⟩, rfl⟩)
  | zero => rw [Matrix.mulVec_zero, dotProduct_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [Matrix.mulVec_add, dotProduct_add]; exact add_mem hx hy
  | smul r x _ hx =>
    have e : (fun k => sR D (eToEAf D (s k))) ⬝ᵥ (V.gram.map (eToEAf D) *ᵥ (r • x)) =
        (r : EAf D) * ((fun k => sR D (eToEAf D (s k))) ⬝ᵥ (V.gram.map (eToEAf D) *ᵥ x)) := by
      simp only [dotProduct, Matrix.mulVec, Finset.mul_sum]
      refine Finset.sum_congr rfl fun k _ => Finset.sum_congr rfl fun l _ => ?_
      rw [Pi.smul_apply, Subring.smul_def, smul_eq_mul]; ring
    rw [e]
    exact mul_mem r.2 hx

theorem frMapO_mapLiftE {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)}
    (W : Matrix (Fin T.rank) (Fin S.rank) (EAf D)) :
    frMapO S T βS βT (W.map (liftE (D := D))) = ((βT⁻¹ : GL (Fin T.rank) (EAf D)) : Matrix (Fin T.rank) (Fin T.rank) (EAf D)) * W *
      (βS : Matrix (Fin S.rank) (Fin S.rank) (EAf D)) := by
  unfold frMapO
  rw [Matrix.map_map]
  congr 2
  ext i j
  exact toEAf_liftE _

theorem frMapO_add {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} (t t' : WO S T) :
    frMapO S T βS βT (t + t') = frMapO S T βS βT t + frMapO S T βS βT t' := by
  simp [frMapO, Matrix.mul_add, Matrix.add_mul, Matrix.map_add (f := _)]

theorem frMapO_zero {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} :
    frMapO S T βS βT 0 = 0 := by
  simp [frMapO]

theorem frMapO_neg {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} (t : WO S T) :
    frMapO S T βS βT (-t) = -frMapO S T βS βT t := by
  simp [frMapO, Matrix.map_neg, Matrix.mul_neg, Matrix.neg_mul]

theorem infPart_of_splitIdem {e : AE D} (he : IsSplitIdem D e) : infPart D e = 0 := by
  obtain ⟨h1, h2, v, ε, ⟨α, rfl, _, _⟩, hε⟩ := he
  have : e = e * algebraMap (AF D.host.F) (AE D) (pairA D.host.F 0 α) := by rw [← hε, mul_add, h1, h2, add_zero]
  rw [this, map_mul]
  have h0 : infPart D (algebraMap (AF D.host.F) (AE D) (pairA D.host.F 0 α)) = 0 := by
    rw [Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
    show (fstA D.host.F (pairA D.host.F 0 α)) ⊗ₜ[D.host.F] (1 : D.host.E) = 0
    exact TensorProduct.zero_tmul _ _
  rw [h0, mul_zero]

theorem infPart_of_idemSum {e : AE D} {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (he : IsIdemSum e P) : infPart D e = 0 := by
  obtain ⟨⟨es, hes, rfl⟩, _⟩ := he

  rw [map_sum]
  exact Finset.sum_eq_zero fun PP hPP => infPart_of_splitIdem (hes PP hPP).1

theorem comm_comm' (y : Af D.host.F ⊗[D.host.F] D.host.E) :
    Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F) (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E y) = y := by
  induction y using TensorProduct.inductionOn with
  | tmul a b => simp
  | add x y hx hy => simp only [map_add (f := _), hx, hy]

theorem liftE_toEAf (x : AE D) (hx : infPart D x = 0) : liftE (toEAf D x) = x := by
  unfold liftE
  show lift (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F)
    (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E (finPart D x))) = x
  rw [comm_comm', ← eq_lift_of_infPart x hx]


theorem hO_add_left (x x' y : WO S T) : hO S T (x + x') y = hO S T x y + hO S T x' y := by
  unfold hO; simp only [Matrix.add_apply, mul_add, ← Finset.sum_add_distrib]

theorem hO_add_right (x y y' : WO S T) : hO S T x (y + y') = hO S T x y + hO S T x y' := by
  unfold hO; simp only [Matrix.add_apply, map_add (f := _), mul_add, add_mul, ← Finset.sum_add_distrib]

theorem symplOH_add_left (x x' y : WO S T) :
    symplOH S T (x + x') y = symplOH S T x y + symplOH S T x' y := by
  unfold symplOH symplO; rw [hO_add_left, mul_add, map_add (f := _), mul_add]

theorem symplOH_add_right (x y y' : WO S T) :
    symplOH S T x (y + y') = symplOH S T x y + symplOH S T x y' := by
  unfold symplOH symplO; rw [hO_add_right, mul_add, map_add (f := _), mul_add]

theorem hO_half_zero {e : AE D} (hec : e * cA D e = 0) {x y : WO S T} (hx : IsHalf e x) (hy : IsHalf e y) :
    hO S T x y = 0 := by
  unfold hO
  refine Finset.sum_eq_zero fun a _ => Finset.sum_eq_zero fun b _ => Finset.sum_eq_zero fun c _ =>
    Finset.sum_eq_zero fun d _ => ?_
  rw [← hx d a, ← hy c b, map_mul]
  calc incA D (S.gram⁻¹ a b) * (cA D e * cA D (y c b)) * incA D (T.gram c d) * (e * x d a)
      = (e * cA D e) * (incA D (S.gram⁻¹ a b) * cA D (y c b) * incA D (T.gram c d) * x d a) := by ring
    _ = 0 := by rw [hec, zero_mul]

theorem symplOH_half_zero {e : AE D} (hec : e * cA D e = 0) {x y : WO S T} (hx : IsHalf e x) (hy : IsHalf e y) :
    symplOH S T x y = 0 := by
  unfold symplOH symplO; rw [hO_half_zero hec hx hy, mul_zero, map_zero, mul_zero]

theorem heisO_zero (ψ : AddChar (AF D.host.F) ℂ) (f : WO S T → ℂ) : heisO ψ S T 0 f = f := by
  funext w
  unfold heisO
  have h0 : symplOH S T w 0 = 0 := by unfold symplOH symplO hO; simp
  rw [add_zero, h0, AddChar.map_zero_eq_one, one_mul]

theorem heisO_add_of_iso (ψ : AddChar (AF D.host.F) ℂ) {a b : WO S T} (hab : symplOH S T a b = 0)
    (f : WO S T → ℂ) : heisO ψ S T (a + b) f = heisO ψ S T a (heisO ψ S T b f) := by
  funext w
  unfold heisO
  rw [symplOH_add_right, symplOH_add_left, hab, add_zero, AddChar.map_add_eq_mul, add_assoc]
  ring

theorem isHalf_add {e : AE D} {x y : WO S T} (hx : IsHalf e x) (hy : IsHalf e y) : IsHalf e (x + y) :=
  fun i j => by rw [Matrix.add_apply, mul_add, hx i j, hy i j]

theorem isHalf_zero (e : AE D) : IsHalf e (0 : WO S T) := fun i j => by rw [Matrix.zero_apply, mul_zero]

theorem heisO_fix_sum (ψ : AddChar (AF D.host.F) ℂ) {e : AE D} (hec : e * cA D e = 0) {ι : Type}
    (s : Finset ι) (a : ι → WO S T) (f : WO S T → ℂ) (ha : ∀ i ∈ s, IsHalf e (a i))
    (hf : ∀ i ∈ s, heisO ψ S T (a i) f = f) : heisO ψ S T (∑ i ∈ s, a i) f = f := by
  classical
  induction s using Finset.induction_on with
  | empty => rw [Finset.sum_empty, heisO_zero]
  | insert i s hi ih =>
    rw [Finset.sum_insert hi]
    have hs : IsHalf e (∑ j ∈ s, a j) := by
      have : ∀ t : Finset ι, (∀ j ∈ t, IsHalf e (a j)) → IsHalf e (∑ j ∈ t, a j) := by
        intro t
        induction t using Finset.induction_on with
        | empty => intro _; rw [Finset.sum_empty]; exact isHalf_zero e
        | insert k t hk iht =>
          intro h
          rw [Finset.sum_insert hk]
          exact isHalf_add (h k (Finset.mem_insert_self k t)) (iht fun j hj => h j (Finset.mem_insert_of_mem hj))
      exact this s fun j hj => ha j (Finset.mem_insert_of_mem hj)
    rw [heisO_add_of_iso ψ (symplOH_half_zero hec (ha i (Finset.mem_insert_self i s)) hs),
      ih (fun j hj => ha j (Finset.mem_insert_of_mem hj)) (fun j hj => hf j (Finset.mem_insert_of_mem hj)),
      hf i (Finset.mem_insert_self i s)]

theorem finPart_of_idemAt {e : AE D} {PP : HeightOneSpectrum (𝓞 D.host.E)} (h : Formalism.L2.NTheta.IsIdemAt e PP) :
    finPart D e ∈ intAE D := by
  have := (h.2 1 one_ne_zero).not.1 (fun h1 => PP.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h1))
  rw [not_not] at this
  have e1 : e * incA D ((((1 : 𝓞 D.host.E) : D.host.E))⁻¹) = e := by
    rw [show (((1 : 𝓞 D.host.E) : D.host.E)) = 1 by simp, inv_one, map_one, mul_one]
  rw [e1] at this
  exact this

theorem cA_mem_intAE {y : Af D.host.F ⊗[D.host.F] D.host.E} (hy : y ∈ intAE D) :
    Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Af D.host.F) D.sp.cm.sig y ∈ intAE D := by
  induction hy using AddSubgroup.closure_induction with
  | mem z hz =>
    obtain ⟨b, hb, o, rfl⟩ := hz
    exact AddSubgroup.subset_closure ⟨b, hb, ⟨_, isIntegral_star' o⟩, rfl⟩
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx

theorem finPart_cA (x : AE D) : finPart D (cA D x) = Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.sigR (Af D.host.F) D.sp.cm.sig (finPart D x) := by
  induction x using TensorProduct.inductionOn with
  | tmul a w => rfl
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, map_add (f := _), map_add (f := _)]

theorem isSplitIdem_cA {e : AE D} (he : IsSplitIdem D e) : IsSplitIdem D (cA D e) := by
  obtain ⟨h1, h2, v, ε, hv, hε⟩ := he
  refine ⟨by rw [← map_mul, h1], by rw [cA_cA, mul_comm, h2], v, ε, hv, by rw [cA_cA, add_comm, hε]⟩



theorem heisO_fix_of_latVac (ψ : AddChar (AF D.host.F) ℂ) {f₀ : WO S T → ℂ}
    (hL : IsLatVac (heisO ψ S T) (latAll S T ΛS ΛT) f₀) {P : Finset (Formalism.L2.DIV.Pl D.host.E)} {e : AE D}
    (he : IsIdemSum e P) : ∀ u ∈ latAll S T ΛS ΛT, (IsHalf e u ∨ IsHalf (cA D e) u) → heisO ψ S T u f₀ = f₀ := by
  obtain ⟨⟨es, hes, rfl⟩, hec⟩ := he
  intro u hu hh
  rcases hh with hh | hh
  · have hu' : u = ∑ PP ∈ P, es PP • u := by
      rw [← Finset.sum_smul]; ext i j; simp only [Matrix.smul_apply, smul_eq_mul, hh i j]
    rw [hu']
    refine heisO_fix_sum ψ hec P _ f₀ (fun PP _ i j => ?_) (fun PP hPP => ?_)
    · simp only [Matrix.smul_apply, smul_eq_mul]
      calc (∑ PP ∈ P, es PP) * (es PP * u i j) = es PP * ((∑ PP ∈ P, es PP) * u i j) := by ring
        _ = es PP * u i j := by rw [hh i j]
    · refine hL.2 (es PP) (hes PP hPP).1 _ (smul_mem_latAll (finPart_of_idemAt (hes PP hPP)) hu) (fun i j => ?_)
      simp only [Matrix.smul_apply, smul_eq_mul]
      rw [← mul_assoc, (hes PP hPP).1.1]
  · have hec' : cA D (∑ PP ∈ P, es PP) * cA D (cA D (∑ PP ∈ P, es PP)) = 0 := by rw [cA_cA, mul_comm, hec]
    have hu' : u = ∑ PP ∈ P, cA D (es PP) • u := by

      rw [← Finset.sum_smul, ← map_sum]; ext i j; simp only [Matrix.smul_apply, smul_eq_mul, hh i j]
    rw [hu']
    refine heisO_fix_sum ψ hec' P _ f₀ (fun PP _ i j => ?_) (fun PP hPP => ?_)
    · simp only [Matrix.smul_apply, smul_eq_mul]
      calc cA D (∑ PP ∈ P, es PP) * (cA D (es PP) * u i j) = cA D (es PP) * (cA D (∑ PP ∈ P, es PP) * u i j) := by ring
        _ = cA D (es PP) * u i j := by rw [hh i j]
    · have hsc := isSplitIdem_cA (hes PP hPP).1
      refine hL.2 (cA D (es PP)) hsc _ ?_ (fun i j => ?_)
      · refine smul_mem_latAll ?_ hu
        rw [finPart_cA]; exact cA_mem_intAE (finPart_of_idemAt (hes PP hPP))
      · simp only [Matrix.smul_apply, smul_eq_mul]
        rw [← mul_assoc, hsc.1]

theorem gram_herm_E (V : HSp D) : V.gramᴴ = V.gram := Matrix.ext fun i j => V.herm.eq _ _

theorem sR_sR (z : EAf D) : sR D (sR D z) = z := by
  induction z using TensorProduct.inductionOn with
  | tmul a b =>
    rw [show sR D (a ⊗ₜ[D.host.F] b) = (star a) ⊗ₜ b from rfl,
      show sR D ((star a) ⊗ₜ[D.host.F] b) = (star (star a)) ⊗ₜ b from rfl, star_star]
  | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]

abbrev GE (V : HSp D) : Matrix (Fin V.rank) (Fin V.rank) (EAf D) := V.gram.map (eToEAf D)

abbrev GIE (V : HSp D) : Matrix (Fin V.rank) (Fin V.rank) (EAf D) := (V.gram⁻¹).map (eToEAf D)

theorem GIE_GE (V : HSp D) : GIE V * GE V = 1 := by
  rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ (isUnit_iff_ne_zero.mpr (gram_det_ne V)), Matrix.map_one _ (map_zero _) (map_one _)]

theorem GE_sR (V : HSp D) : (GE V).map (sR D) = (GE V)ᵀ := by
  ext i j
  simp only [Matrix.map_apply, Matrix.transpose_apply, sR_eTo]
  congr 1
  have := congrFun (congrFun (gram_herm_E V) j) i
  rwa [Matrix.conjTranspose_apply] at this

theorem adjO_toEAf (x : WO S T) :
    (adjO S T x).map (toEAf D) = GIE S * ((x.map (toEAf D)).map (sR D))ᵀ * GE T := by
  have e1 : (toEAf D ∘ cA D) = (sR D ∘ toEAf D) := funext toEAf_cA
  have e2 : (toEAf D ∘ incA D) = eToEAf D := funext toEAf_incA
  unfold adjO
  simp only [Matrix.map_mul, Matrix.transpose_map, Matrix.map_map]
  rw [e1, e2]

theorem vecMulVec_transpose {R : Type} [CommRing R] {m n : ℕ} (c : R) (x : Fin m → R) (y : Fin n → R) :
    (c • Matrix.vecMulVec x y)ᵀ = c • Matrix.vecMulVec y x := by
  ext i j
  simp only [Matrix.transpose_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, smul_eq_mul]
  ring

theorem map_smul_vecMulVec {m n : ℕ} (c : EAf D) (x : Fin m → EAf D) (y : Fin n → EAf D) :
    (c • Matrix.vecMulVec x y).map (sR D) = sR D c • Matrix.vecMulVec (fun i => sR D (x i)) (fun j => sR D (y j)) := by
  ext i j; simp only [Matrix.map_apply, Matrix.smul_apply, Matrix.vecMulVec_apply, smul_eq_mul, map_mul]



theorem frMapAdj_genE {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} (c : EAf D)
    (τ : Fin T.rank → EAf D) (σ : Fin S.rank → EAf D) :
    frMapAdj S T βS βT (genE c τ σ) = sR D c • Matrix.vecMulVec
      (((βS⁻¹ : GL (Fin S.rank) (EAf D)) : Matrix (Fin S.rank) (Fin S.rank) (EAf D)) *ᵥ σ)
      (Matrix.vecMul (Matrix.vecMul (fun k => sR D (τ k)) (GE T)) (βT : Matrix (Fin T.rank) (Fin T.rank) (EAf D))) := by
  have hW : (genE c τ σ).map (toEAf D) = c • Matrix.vecMulVec τ (Matrix.vecMul (fun k => sR D (σ k)) (GE S)) := by
    unfold genE; rw [Matrix.map_map]; ext i j; exact toEAf_liftE _
  rw [frMapAdj_eq, adjO_toEAf, hW, map_smul_vecMulVec, vecMulVec_transpose, mul_vecMulVec_mul, mul_vecMulVec_mul]
  congr 2
  have e1 : (fun j => sR D (Matrix.vecMul (fun k => sR D (σ k)) (GE S) j)) = (GE S) *ᵥ σ := by
    funext j
    rw [RingHom.map_vecMul, ← Matrix.vecMul_transpose, ← GE_sR]
    congr 1
    funext k; exact sR_sR _
  rw [e1, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, Matrix.mul_assoc, GIE_GE, Matrix.mul_one]

theorem frMapAdj_add {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} (x y : WO S T) :
    frMapAdj S T βS βT (x + y) = frMapAdj S T βS βT x + frMapAdj S T βS βT y := by
  simp [frMapAdj, Matrix.mul_add, Matrix.add_mul, Matrix.map_add (f := _), Matrix.transpose_add]

theorem frMapAdj_zero {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} :
    frMapAdj S T βS βT 0 = 0 := by
  simp [frMapAdj]

theorem frMapAdj_neg {βS : GL (Fin S.rank) (EAf D)} {βT : GL (Fin T.rank) (EAf D)} (x : WO S T) :
    frMapAdj S T βS βT (-x) = -frMapAdj S T βS βT x := by
  simp [frMapAdj, Matrix.map_neg, Matrix.mul_neg, Matrix.neg_mul, Matrix.transpose_neg]




theorem infPart_cA_idemSum {e : AE D} {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (he : IsIdemSum e P) :
    infPart D (cA D e) = 0 := by
  obtain ⟨⟨es, hes, rfl⟩, _⟩ := he

  rw [map_sum, map_sum]
  exact Finset.sum_eq_zero fun PP hPP => infPart_of_splitIdem (isSplitIdem_cA (hes PP hPP).1)


end Lat

end Formalism.IndefR.Fin.LevelGroupLemmas.Lat

end
