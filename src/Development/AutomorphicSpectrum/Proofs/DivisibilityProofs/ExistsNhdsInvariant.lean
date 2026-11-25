module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
import Development.AbelianVarietyTheory.Definitions.Divisors.CmHostImaginaryGeneratorNeZero
import Development.AbelianVarietyTheory.Definitions.Divisors.FlatTensorVacuum
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Formalism.LocalToGlobal.IndefiniteReal.IndefiniteWeightData
import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open Formalism.IndefR.Mult IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest
open scoped TensorProduct ComplexConjugate GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

noncomputable section

open Filter Topology
open GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels (Base Spc Model Geo Chars Rep RealMaps FinMaps IsMatched IsTriple IsConst Match PolMatch OneConst Coinv ThetaIntegralsAgree IsRealMaps IsFinMaps RealQuot IsZetaAt At)
open GlobalTheory.WeilM (SB pureA)

namespace GlobalTheory.CompanionTheory.Ar.RT.Move

section Slice

variable {K P : Type} [AddCommGroup K] [TopologicalSpace K] [IsTopologicalAddGroup K] [T2Space K]
  [AddCommGroup P] [TopologicalSpace P] [IsTopologicalAddGroup P] [T2Space P]

theorem slice_mem (ε : P →+ K) (π : K →+ P) (hε : Continuous ε) (hπ : Continuous π) (hπε : ∀ y, π (ε y) = y)
    {g : K → ℂ} (hg : g ∈ SB K) (z : K) : (fun y => g (z + ε y)) ∈ SB P := by
  refine ⟨hg.1.comp_continuous (continuous_const.add hε), ?_⟩
  refine HasCompactSupport.intro (K := (fun c => π c - π z) '' tsupport g)
    (hg.2.image (hπ.sub continuous_const)) fun y hy => ?_
  by_contra hne
  exact hy ⟨z + ε y, subset_tsupport _ hne, by simp [hπε]⟩

end Slice

section Op

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]

def epsK (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : (κ → Fv F v) →+ (κ → Af F) where
  toFun y i := GlobalTheory.AdelicU.singleFin v (y i)
  map_zero' := by funext i; simp
  map_add' a b := by funext i; simp

def piK (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : (κ → Af F) →+ (κ → Fv F v) where
  toFun x i := Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F v (x i)
  map_zero' := by funext i; simp
  map_add' a b := by funext i; simp

theorem continuous_epsK (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : Continuous (epsK (κ := κ) v) :=
  continuous_pi fun i => (GlobalTheory.AdelicU.continuous_singleFin v).comp (continuous_apply i)

theorem continuous_piK (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) : Continuous (piK (κ := κ) v) :=
  continuous_pi fun i => (RestrictedProduct.continuous_eval v).comp (continuous_apply i)

theorem piK_epsK (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (y : κ → Fv F v) : piK v (epsK v y) = y := by
  funext i
  exact GlobalTheory.AdelicU.evalV_singleFin_self v (y i)

def finPart (x : κ → AF F) : κ → Af F := fun i => (x i).2

def repl (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (x : κ → AF F) (y : κ → Fv F v) : κ → AF F :=
  fun i => ((x i).1, (finPart x - epsK v (piK v (finPart x)) + epsK v y) i)

def opL (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (A : ((κ → Fv F v) → ℂ) →ₗ[ℂ] ((κ → Fv F v) → ℂ)) :
    ((κ → AF F) → ℂ) →ₗ[ℂ] ((κ → AF F) → ℂ) where
  toFun Ψ := fun x => A (fun y => Ψ (repl v x y)) (piK v (finPart x))
  map_add' Ψ Ψ' := by
    funext x
    change A ((fun y => Ψ (repl v x y)) + fun y => Ψ' (repl v x y)) _ = _
    rw [map_add (f := _)]
    rfl
  map_smul' c Ψ := by
    funext x
    change A (c • fun y => Ψ (repl v x y)) _ = _
    rw [map_smul]
    rfl

end Op

section Pure

attribute [local instance] Classical.propDecidable

local notation "pureT" => GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure

open GlobalTheory.AdelicU (evFin)

variable {F : Type} [Field F] [NumberField F] {κ : Type} [Fintype κ]
  {vac : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ}

theorem finite_mulSupport
    (hv : ∀ᶠ w in cofinite, vac w = Set.indicator {x | ∀ i, x i ∈ w.adicCompletionIntegers F} 1)
    {φ : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ} (hφ : ∀ᶠ w in cofinite, φ w = vac w) (x : κ → AF F) :
    (Function.mulSupport fun w => φ w fun i => evFin F w (x i)).Finite := by
  have hint : ∀ᶠ w in cofinite, ∀ i, evFin F w (x i) ∈ (w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)).adicCompletionIntegers F :=
    eventually_all.2 fun i => (x i).2.2
  have h : ∀ᶠ w in cofinite, (φ w fun i => evFin F w (x i)) = 1 := by
    filter_upwards [hv, hφ, hint] with w h1 h2 h3
    rw [h2, h1]
    exact Set.indicator_of_mem (show (fun i => evFin F w (x i)) ∈ {x : κ → Fv F w | ∀ i, x i ∈ w.adicCompletionIntegers F} from h3) 1
  exact Filter.eventually_cofinite.1 h

theorem pure_update
    (hv : ∀ᶠ w in cofinite, vac w = Set.indicator {x | ∀ i, x i ∈ w.adicCompletionIntegers F} 1)
    {φ : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ} (hφ : ∀ᶠ w in cofinite, φ w = vac w)
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (ψ : (κ → Fv F v) → ℂ) (f : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F κ) (x : κ → AF F) :
    pureT f (Function.update φ v ψ) x =
      ψ (fun i => evFin F v (x i)) * pureT f (Function.update φ v 1) x := by
  classical
  have hφ1 : ∀ᶠ w in cofinite, Function.update φ v 1 w = vac w := by
    filter_upwards [hφ, Filter.eventually_cofinite_ne v] with w h1 h2
    rw [Function.update_of_ne h2, h1]
  have h1 := finite_mulSupport hv hφ1 x
  set t : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F) → ℂ := fun w => if w = v then ψ (fun i => evFin F v (x i)) else 1 with ht
  have hts : (Function.mulSupport t).Finite := (Set.finite_singleton v).subset fun w hw => by
    by_contra h
    exact hw (ite_eq_right h)
  have key : (fun w => Function.update φ v ψ w fun i => evFin F w (x i)) =
      fun w => t w * Function.update φ v 1 w fun i => evFin F w (x i) := by
    funext w
    by_cases h : w = v
    · subst h
      simp [ht]
    · simp [ht, h]
  unfold GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure
  rw [key, finprod_mul_distrib hts h1, finprod_eq_single t v fun w hw => ite_eq_right hw]
  simp only [ht, ite_true]
  ring

theorem piK_repl (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (x : κ → AF F) (y : κ → Fv F v) :
    (fun i => evFin F v (repl v x y i)) = y := by
  change piK v (finPart x - epsK v (piK v (finPart x)) + epsK v y) = y
  simp [piK_epsK]

theorem pure_repl
    {φ : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ}
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (f : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F κ) (x : κ → AF F) (y : κ → Fv F v) :
    pureT f (Function.update φ v 1) (repl v x y) = pureT f (Function.update φ v 1) x := by
  classical
  unfold GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure
  congr 1
  refine finprod_congr fun w => ?_
  by_cases h : w = v
  · subst h
    simp
  · rw [Function.update_of_ne h]
    congr 1
    funext i
    change Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes.evalV F w ((x i).2 - GlobalTheory.AdelicU.singleFin v _ + GlobalTheory.AdelicU.singleFin v _) = _
    rw [map_add (f := _), map_sub, GlobalTheory.AdelicU.evalV_singleFin_ne h, GlobalTheory.AdelicU.evalV_singleFin_ne h]
    simp
    rfl

theorem opL_pure
    (hv : ∀ᶠ w in cofinite, vac w = Set.indicator {x | ∀ i, x i ∈ w.adicCompletionIntegers F} 1)
    {φ : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ} (hφ : ∀ᶠ w in cofinite, φ w = vac w)
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (A : ((κ → Fv F v) → ℂ) →ₗ[ℂ] ((κ → Fv F v) → ℂ)) (f : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F κ) :
    opL v A (pureT f φ) = pureT f (Function.update φ v (A (φ v))) := by
  classical
  funext x
  have hs : (fun y => pureT f φ (repl v x y)) = pureT f (Function.update φ v 1) x • φ v := by
    funext y
    have h := pure_update hv hφ v (φ v) f (repl v x y)
    rw [Function.update_eq_self, piK_repl, pure_repl] at h
    rw [h]
    simp [mul_comm]
  change A (fun y => pureT f φ (repl v x y)) (piK v (finPart x)) = _
  rw [hs, map_smul, pure_update hv hφ v (A (φ v)) f x]
  simp only [Pi.smul_apply, smul_eq_mul]
  rw [mul_comm]
  rfl

theorem pure_update_mem
    (hv : ∀ᶠ w in cofinite, vac w = Set.indicator {x | ∀ i, x i ∈ w.adicCompletionIntegers F} 1)
    {φ : ∀ w : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F), (κ → Fv F w) → ℂ} (hφ : ∀ᶠ w in cofinite, φ w = vac w)
    (v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)) (f : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F κ) (L : Submodule ℂ ((κ → AF F) → ℂ))
    {S : Set ((κ → Fv F v) → ℂ)} (hS : ∀ ψ ∈ S, pureT f (Function.update φ v ψ) ∈ L) {ψ : (κ → Fv F v) → ℂ}
    (hψ : ψ ∈ Submodule.span ℂ S) : pureT f (Function.update φ v ψ) ∈ L := by
  have e : ∀ ψ, pureT f (Function.update φ v ψ) =
      fun x => ψ (fun i => evFin F v (x i)) * pureT f (Function.update φ v 1) x :=
    fun ψ => funext (pure_update hv hφ v ψ f)
  induction hψ using Submodule.span_induction with
  | mem ψ h => exact hS ψ h
  | zero =>
    rw [e]
    convert L.zero_mem using 1
    funext x
    simp only [Pi.zero_apply, zero_mul]
  | add a b _ _ ha hb =>
    rw [e] at ha hb ⊢
    convert L.add_mem ha hb using 1
    funext x
    simp [add_mul]
  | smul c a _ ha =>
    rw [e] at ha ⊢
    convert L.smul_mem c ha using 1
    funext x
    simp [mul_assoc]

end Pure

section Tensor


end Tensor

section Main

attribute [local instance] Classical.propDecidable

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem soLoc_sub {n d : ℕ} {Y : Spc F E n} {Z : Spc F E d} (M : Model σ Y Z) (ψ : AddChar (AF F) ℂ)
    {v : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := F)} (t : E →ₐ[F] Fv F v) :
    Submodule.span ℂ (M.SoLoc ψ t) ≤ SB (Fin n × Fin d → Fv F v) :=
  Submodule.span_le.2 fun _ h => h.1

variable {a a' : ℕ} {B : Base F E} {G : Geo σ a a'} {X : Chars F E} {om : Rep σ G.V G.W} {om' : Rep σ G.V' G.W}
  {R : RealMaps F a a'} {Rf : FinMaps F a a'}

end Main

end GlobalTheory.CompanionTheory.Ar.RT.Move

end
