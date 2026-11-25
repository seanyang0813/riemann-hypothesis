module

public import Formalism.LocalToGlobal.BesselHermitianTheta.DefsReal
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.IsInfEmbUnique

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix
open scoped TensorProduct ContDiff

namespace Formalism.L2.Fam.ThC

open Formalism.L2.Theta

section Emb

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]

theorem isInfEmb_unique (τ : E →+* ℂ) {θ θ' : Ainf F ⊗[F] E →+* ℂ} (h : IsInfEmb τ θ) (h' : IsInfEmb τ θ') : θ = θ' := by
  first | (apply UpperTheory.Reformulated.B.Qh26.isInfEmb_unique <;> assumption)

def plF (τ : E →+* ℂ) : InfinitePlace F := InfinitePlace.mk (τ.comp (algebraMap F E))

def compF (τ : E →+* ℂ) : Ainf F →+* ℂ :=
  (InfinitePlace.Completion.extensionEmbedding (plF (F := F) τ)).comp
    (Pi.evalRingHom (fun w : InfinitePlace F => w.Completion) (plF (F := F) τ))

theorem compF_cont (τ : E →+* ℂ) : Continuous (compF (F := F) τ) :=
  (InfinitePlace.Completion.isometry_extensionEmbedding (plF (F := F) τ)).continuous.comp (continuous_apply _)

theorem compF_alg [IsTotallyReal F] (τ : E →+* ℂ) (x : F) : compF (F := F) τ (algebraMap F (Ainf F) x) = τ (algebraMap F E x) := by
  have h1 : compF (F := F) τ (algebraMap F (Ainf F) x) = (plF (F := F) τ).embedding x :=
    by
      change (InfinitePlace.Completion.extensionEmbedding (plF (F := F) τ))
        ((algebraMap F (Ainf F) x) (plF (F := F) τ)) = _
      rw [InfiniteAdeleRing.algebraMap_apply]
      exact InfinitePlace.Completion.extensionEmbedding_coe _ _
  rw [h1]
  have hr : ComplexEmbedding.IsReal (τ.comp (algebraMap F E)) := IsTotallyReal.complexEmbedding_isReal _
  unfold plF
  rw [InfinitePlace.embedding_mk_eq_of_isReal hr]
  rfl

def projAt [IsTotallyReal F] (τ : E →+* ℂ) : Ainf F ⊗[F] E →+* ℂ :=
  letI : Algebra F ℂ := (τ.comp (algebraMap F E)).toAlgebra
  (Algebra.TensorProduct.productMap (R := F)
    ({ compF (F := F) τ with commutes' := fun x => compF_alg τ x } : Ainf F →ₐ[F] ℂ)
    ({ τ with commutes' := fun _ => rfl } : E →ₐ[F] ℂ)).toRingHom

theorem projAt_tmul [IsTotallyReal F] (τ : E →+* ℂ) (a : Ainf F) (x : E) :
    projAt (F := F) τ (a ⊗ₜ[F] x) = compF (F := F) τ a * τ x := rfl

theorem projAt_isInfEmb [IsTotallyReal F] (τ : E →+* ℂ) : IsInfEmb τ (projAt (F := F) τ) := by
  refine ⟨fun x => by rw [projAt_tmul, map_one, one_mul], ?_⟩
  simp only [projAt_tmul, map_one, mul_one]
  exact compF_cont τ

def inlA : Ainf F →ₗ[F] AF F where
  toFun a := pairA F a 0
  map_add' a b := Prod.ext rfl (add_zero (0 : Af F)).symm
  map_smul' c a := Prod.ext rfl (smul_zero (A := Af F) c).symm

def inrA : Af F →ₗ[F] AF F where
  toFun b := pairA F 0 b
  map_add' a b := Prod.ext (add_zero (0 : Ainf F)).symm rfl
  map_smul' c a := Prod.ext (smul_zero (A := Ainf F) c).symm rfl

def pairE (a : Ainf F ⊗[F] E) (b : Af F ⊗[F] E) : AF F ⊗[F] E :=
  TensorProduct.map (inlA (F := F)) LinearMap.id a + TensorProduct.map (inrA (F := F)) LinearMap.id b

theorem pairE_eta (z : AF F ⊗[F] E) :
    pairE (Algebra.TensorProduct.map (fstA F) (AlgHom.id F E) z) (Algebra.TensorProduct.map (sndA F) (AlgHom.id F E) z) = z := by
  unfold pairE
  induction z using TensorProduct.induction_on with
  | zero => simp
  | tmul a e =>
    rw [Algebra.TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul, TensorProduct.map_tmul, TensorProduct.map_tmul,
      LinearMap.id_apply, AlgHom.id_apply, ← TensorProduct.add_tmul]
    congr 1
    exact Prod.ext (add_zero (fstA F a)) (zero_add (sndA F a))
  | add a b ha hb => rw [map_add (f := _), map_add (f := _), map_add (f := _), map_add (f := _), add_add_add_comm, ha, hb]

theorem fst_pairE (a : Ainf F ⊗[F] E) (b : Af F ⊗[F] E) :
    Algebra.TensorProduct.map (fstA F) (AlgHom.id F E) (pairE a b) = a := by
  unfold pairE
  have h1 : Algebra.TensorProduct.map (fstA F) (AlgHom.id F E) (TensorProduct.map (inlA (F := F)) LinearMap.id a) = a := by
    induction a using TensorProduct.induction_on with
    | zero => simp
    | tmul x e => rw [TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul]; rfl
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  have h2 : Algebra.TensorProduct.map (fstA F) (AlgHom.id F E) (TensorProduct.map (inrA (F := F)) LinearMap.id b) = 0 := by
    induction b using TensorProduct.induction_on with
    | zero => simp
    | tmul x e =>
      rw [TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul]
      exact TensorProduct.zero_tmul _ _
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, add_zero]
  rw [map_add (f := _), h1, h2, add_zero]

theorem snd_pairE (a : Ainf F ⊗[F] E) (b : Af F ⊗[F] E) :
    Algebra.TensorProduct.map (sndA F) (AlgHom.id F E) (pairE a b) = b := by
  unfold pairE
  have h1 : Algebra.TensorProduct.map (sndA F) (AlgHom.id F E) (TensorProduct.map (inlA (F := F)) LinearMap.id a) = 0 := by
    induction a using TensorProduct.induction_on with
    | zero => simp
    | tmul x e =>
      rw [TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul]
      exact TensorProduct.zero_tmul _ _
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy, add_zero]
  have h2 : Algebra.TensorProduct.map (sndA F) (AlgHom.id F E) (TensorProduct.map (inrA (F := F)) LinearMap.id b) = b := by
    induction b using TensorProduct.induction_on with
    | zero => simp
    | tmul x e => rw [TensorProduct.map_tmul, Algebra.TensorProduct.map_tmul]; rfl
    | add x y hx hy => rw [map_add (f := _), map_add (f := _), hx, hy]
  rw [map_add (f := _), h1, h2, zero_add]

end Emb

section Raw

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E]
  (cm : CMData F E) {T : Type} [Fintype T] (emb : T → E →+* ℂ) (cd : CDHaar)


end Raw

variable (D : D7)

abbrev InfF : Type := D.what₂.Tau → (Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ)

def th0 : InfF D := fun τ => haveI := D.sp.cm.totReal; projAt (F := D.host.F) (tauE D τ)

theorem theta_infinite_family : IsInfFam (D := D) (th0 D) := fun τ => haveI := D.sp.cm.totReal; projAt_isInfEmb (tauE D τ)

variable {D}

theorem fam_eq {θ : InfF D} (h : IsInfFam (D := D) θ) : θ = th0 D :=
  funext fun τ => isInfEmb_unique _ (h τ) (theta_infinite_family D τ)

theorem allSome_fam {Q : InfF D → Prop} : AllSome (IsInfFam (D := D)) Q ↔ Q (th0 D) :=
  ⟨fun h => h.2 _ (theta_infinite_family D), fun h => ⟨⟨_, theta_infinite_family D⟩, fun _ hθ => fam_eq hθ ▸ h⟩⟩

theorem ae_ext {x y : AE D} (h1 : infPart D x = infPart D y) (h2 : finPart D x = finPart D y) : x = y := by
  have key : ∀ z : AE D, pairE (infPart D z) (finPart D z) = z := fun z => pairE_eta z
  rw [← key x, ← key y, h1, h2]

theorem infMat_mul (θ : Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ) (V : HSp D) (g h : GA D V) :
    infMat D.sp.cm.sig V.gram θ (g * h) = infMat D.sp.cm.sig V.gram θ g * infMat D.sp.cm.sig V.gram θ h := by
  have e : ∀ x : GA D V, infMat D.sp.cm.sig V.gram θ x = ((infHom V x).1).map θ := fun _ => rfl
  rw [e, e, e, map_mul, Units.val_mul, Matrix.map_mul]

theorem infMat_one (θ : Ainf D.host.F ⊗[D.host.F] D.host.E →+* ℂ) (V : HSp D) :
    infMat D.sp.cm.sig V.gram θ 1 = 1 := by
  have e : ∀ x : GA D V, infMat D.sp.cm.sig V.gram θ x = ((infHom V x).1).map θ := fun _ => rfl
  rw [e, map_one, Units.val_one, Matrix.map_one _ (map_zero θ) (map_one θ)]

end Formalism.L2.Fam.ThC

end
