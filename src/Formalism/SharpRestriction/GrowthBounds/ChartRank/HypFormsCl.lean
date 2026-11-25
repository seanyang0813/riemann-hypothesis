module

public import Formalism.LocalToGlobal.HermitianForms.IsLocBasis
public import Formalism.GradedWeylDivisibility.DualWeylDominanceOf
public import Formalism.LocalToGlobal.GroupLattices.FockModels.SwRowGenMonomial
import Mathlib.Tactic.Linter.Style
public import Formalism.LocalRingCardinality.DataForms
public import Formalism.LocalRingCardinality.DataKerP
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.IsComplRatCompl
import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypCard
import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypInvLe
import Formalism.SharpRestriction.GrowthBounds.ChartRank.HypRankGe

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PFormsCl

open Formalism.BasicNotions Formalism.UG Formalism.L2.Forms MvPolynomial NumberField IsDedekindDomain

section Tr

variable {ι : Type} [Fintype ι] {n : ℕ}

theorem foNat_anti (lam : DomWeight n) : Antitone lam.natW := by
  intro a b hab
  have := lam.anti hab
  unfold DomWeight.natW
  exact Int.toNat_le_toNat (by omega)

theorem foRow_delSq (lam : DomWeight n) (g : Matrix (Fin n) (Fin n) ℂ) {q : MvPolynomial (Fin n × Fin n) ℂ}
    (hq : q ∈ delSq ℂ n lam) : Formalism.GradedWeylDivisibility.rowAct ℂ g q ∈ delSq ℂ n lam := by
  unfold delSq at hq ⊢
  rw [Formalism.L2.G.Model.sw_weyl_eq ℂ n n le_rfl _ (foNat_anti lam)] at hq ⊢
  exact Formalism.GradedWeylDivisibility.dualWeylRowStable ℂ n n _ g q hq

def foTr {Gm : ι → Matrix (Fin n) (Fin n) ℂ} (g : ι → Matrix (Fin n) (Fin n) ℂ) (hg : ∀ τ, IsUnit (g τ).det)
    (y : Formalism.L2.Forms.Frames Gm) : Formalism.L2.Forms.Frames Gm :=
  (⟨fun τ => g τ * y.1 τ, fun τ => by rw [Matrix.det_mul]; exact (hg τ).mul (y.2 τ)⟩ :
    {y : ι → Matrix (Fin n) (Fin n) ℂ // ∀ τ, IsUnit (y τ).det})

def blockRowSubstitutionAlgHom (g : ι → Matrix (Fin n) (Fin n) ℂ) :
    MvPolynomial (ι × Fin n × Fin n) ℂ →ₐ[ℂ] MvPolynomial (ι × Fin n × Fin n) ℂ :=
  aeval fun x => ∑ c : Fin n, C (g x.1 x.2.1 c) * X (x.1, c, x.2.2)

theorem blockRowSubstitution_X (g : ι → Matrix (Fin n) (Fin n) ℂ) (x : ι × Fin n × Fin n) :
    blockRowSubstitutionAlgHom g (X x) = ∑ c : Fin n, C (g x.1 x.2.1 c) * X (x.1, c, x.2.2) := by
  simp only [blockRowSubstitutionAlgHom, aeval_X]

theorem eval_blockRowSubstitution (g : ι → Matrix (Fin n) (Fin n) ℂ) (z : ι × Fin n × Fin n → ℂ) (P : MvPolynomial (ι × Fin n × Fin n) ℂ) :
    eval z (blockRowSubstitutionAlgHom g P) = eval (fun x => ∑ c, g x.1 x.2.1 c * z (x.1, c, x.2.2)) P := by
  induction P using MvPolynomial.induction_on
  next a => simp [blockRowSubstitutionAlgHom]
  next p q hp hq => simp only [map_add (f := _), hp, hq]
  next p x hp => simp only [map_mul, hp, blockRowSubstitution_X, eval_X, map_sum, eval_C]

theorem blockRowSubstitution_rename (g : ι → Matrix (Fin n) (Fin n) ℂ) (τ : ι) (q : MvPolynomial (Fin n × Fin n) ℂ) :
    blockRowSubstitutionAlgHom g (rename (Prod.mk τ) q) = rename (Prod.mk τ) (Formalism.GradedWeylDivisibility.rowAct ℂ (g τ) q) := by
  have h : (blockRowSubstitutionAlgHom g).comp (rename (Prod.mk τ)) = (rename (Prod.mk τ)).comp (Formalism.GradedWeylDivisibility.rowAct ℂ (r := n) (n := n) (g τ)) := by
    apply MvPolynomial.algHom_ext
    intro v

    simp [blockRowSubstitutionAlgHom, Formalism.GradedWeylDivisibility.rowAct, rename_X, map_sum]
  exact congrArg (fun φ => φ q) h

theorem blockRowSubstitution_tensor (g : ι → Matrix (Fin n) (Fin n) ℂ) (f : ι → MvPolynomial (Fin n × Fin n) ℂ) :
    blockRowSubstitutionAlgHom g (ten f) = ten fun τ => Formalism.GradedWeylDivisibility.rowAct ℂ (g τ) (f τ) := by
  simp only [ten, map_prod, blockRowSubstitution_rename]

theorem blockRowSubstitution_preserves_complexSpan (lam : ι → DomWeight n) (g : ι → Matrix (Fin n) (Fin n) ℂ) {P : MvPolynomial (ι × Fin n × Fin n) ℂ}
    (hP : P ∈ CSpan lam) : blockRowSubstitutionAlgHom g P ∈ CSpan lam := by
  have h : CSpan lam ≤ (CSpan lam).comap (blockRowSubstitutionAlgHom g).toLinearMap := by
    unfold CSpan
    rw [Submodule.span_le]
    rintro _ ⟨f, hf, rfl⟩
    exact Submodule.subset_span ⟨fun τ => Formalism.GradedWeylDivisibility.rowAct ℂ (g τ) (f τ), fun τ => foRow_delSq _ _ (hf τ), blockRowSubstitution_tensor g f⟩
  exact h hP

theorem foValC_tr {Gm : ι → Matrix (Fin n) (Fin n) ℂ} (lam : ι → DomWeight n) (g : ι → Matrix (Fin n) (Fin n) ℂ)
    (hg : ∀ τ, IsUnit (g τ).det) {v : Formalism.L2.Forms.Frames Gm → ℂ} (hv : v ∈ ValC Gm lam) :
    (fun y => v (foTr g hg y)) ∈ ValC Gm lam := by
  obtain ⟨P, hP, rfl⟩ := Submodule.mem_map.1 hv
  have h : (fun y => fnOf Gm (shiftOf lam) 1 P (foTr g hg y)) =
      (∏ τ, (g τ).det ^ shiftOf lam τ) • fnOf Gm (shiftOf lam) 1 (blockRowSubstitutionAlgHom g P) := by
    funext y
    simp only [fnOf, LinearMap.coe_mk, AddHom.coe_mk, Pi.smul_apply, smul_eq_mul, foTr, Pi.one_apply, Matrix.one_mul, eval_blockRowSubstitution,
      Matrix.det_mul, mul_zpow, Finset.prod_mul_distrib]
    simp only [Matrix.mul_apply]
    ring
  rw [h]
  exact Submodule.smul_mem _ _ (Submodule.mem_map_of_mem (blockRowSubstitution_preserves_complexSpan lam g hP))

end Tr

section Adelic

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  {σ : E →ₐ[F] E} {n : ℕ} {J : Matrix (Fin n) (Fin n) E} {T fT : ℕ} {bad : Set (HeightOneSpectrum (𝓞 F))}
  {ι : Type} [Fintype ι]

theorem foInf_unit (emb : ι → E →+* ℂ) (γ : GL (Fin n) E) (τ : ι) : IsUnit (atInf emb γ.1 τ).det := by
  have h := ((Matrix.isUnit_iff_isUnit_det _).1 γ.isUnit).map (emb τ)
  rwa [RingHom.map_det] at h

theorem foInf_one (emb : ι → E →+* ℂ) (τ : ι) : atInf emb (1 : Matrix (Fin n) (Fin n) E) τ = 1 := by
  simp [atInf]

def foTrR (emb : ι → E →+* ℂ) (γ : GL (Fin n) E) (y : Formalism.L2.Forms.Frames (gramC J emb)) : Formalism.L2.Forms.Frames (gramC J emb) :=
  foTr (atInf emb γ.1) (foInf_unit emb γ) y

theorem foTrR_val (emb : ι → E →+* ℂ) (γ : GL (Fin n) E) (y : Formalism.L2.Forms.Frames (gramC J emb)) (τ : ι) :
    (foTrR emb γ y).1 τ = atInf emb γ.1 τ * y.1 τ := rfl

theorem foTrR_mul (emb : ι → E →+* ℂ) (γ δ : GL (Fin n) E) (y : Formalism.L2.Forms.Frames (gramC J emb)) :
    foTrR emb (γ * δ) y = foTrR emb γ (foTrR emb δ y) := by
  apply Subtype.ext
  funext τ
  show (foTrR emb (γ * δ) y).1 τ = (foTrR emb γ (foTrR emb δ y)).1 τ
  rw [foTrR_val, foTrR_val, foTrR_val, Units.val_mul, _root_.Formalism.L2.G.Cmp.atInf_mul, Matrix.mul_assoc]

theorem foTrR_one (emb : ι → E →+* ℂ) (y : Formalism.L2.Forms.Frames (gramC J emb)) : foTrR emb 1 y = y := by
  apply Subtype.ext
  funext τ
  show (foTrR emb 1 y).1 τ = y.1 τ
  rw [foTrR_val, Units.val_one, foInf_one, Matrix.one_mul]

theorem foIsTr_iff (emb : ι → E →+* ℂ) (γ : GL (Fin n) E) (y' y : Formalism.L2.Forms.Frames (gramC J emb)) :
    IsTr (atInf emb γ) y' y ↔ y = foTrR emb γ y' := by
  constructor
  · intro h
    apply Subtype.ext
    funext τ
    exact h τ
  · intro h τ
    rw [h]
    rfl

def FoInv (S : StepLevel F E σ J T fT bad) (emb : ι → E →+* ℂ) (y0 : UPts σ J (FiniteAdeleRing (𝓞 F) F))
    (v : Formalism.L2.Forms.Frames (gramC J emb) → ℂ) : Prop :=
  ∀ γ : GL (Fin n) E, γ ∈ UJ (σ : E →+* E) J → ∀ κ : S.U,
    y0.1 = bc (inclE (F := F) (FiniteAdeleRing (𝓞 F) F)) γ * y0.1 * κ.1 →
    ∀ y y' : Formalism.L2.Forms.Frames (gramC J emb), IsTr (atInf emb γ) y' y → v y = (S.chi κ : ℂ) * v y'

variable (S : StepLevel F E σ J T fT bad) (emb : ι → E →+* ℂ)


variable {S emb}

end Adelic

end Formalism.MainNotions.G.CmpJ.PFormsCl
