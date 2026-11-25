module

public import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.WeilTensorModels
public import Development.WeilBound.ThetaLifts.TowerModels.PlaneForm
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.TotallySplit
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import Mathlib.Topology.Sheaves.Init

@[expose] public section

noncomputable section

namespace PositivityTheory.ThKG.Tow.Pln

open scoped TensorProduct Matrix nonZeroDivisors
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes
open GlobalTheory.WeilM GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels GlobalTheory.AdelicU

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}

theorem exists_compl (n n₁ : ℕ) (J : Matrix (Fin n) (Fin n) E) (x y : Fin n → E) (hn : n = n₁ + 2)
    (hxx : form σ J x x = 0) (hyy : form σ J y y = 0) (hxy : form σ J x y = 1) (hyx : form σ J y x ≠ 0) :
    ∃ (ι : Matrix (Fin n) (Fin n₁) E) (P : Matrix (Fin n₁) (Fin n) E), P * ι = 1 ∧
      (∀ u, form σ J (ι *ᵥ u) x = 0 ∧ form σ J (ι *ᵥ u) y = 0) ∧
      ∀ z, form σ J z x = 0 → form σ J z y = 0 → ∃ u, z = ι *ᵥ u := by
  let f : (Fin n → E) →ₗ[E] E × E := (formL (σ := σ) J x).prod (formL (σ := σ) J y)
  have hf : LinearMap.range f = ⊤ := by
    rw [LinearMap.range_eq_top]
    rintro ⟨a, b⟩
    refine ⟨(a / form σ J y x) • y + b • x, Prod.ext ?_ ?_⟩
    · change form σ J _ x = a
      rw [form_add_left, form_smul_left, form_smul_left, hxx, div_mul_cancel₀ _ hyx, mul_zero, add_zero]
    · change form σ J _ y = b
      rw [form_add_left, form_smul_left, form_smul_left, hyy, hxy, mul_zero, mul_one, zero_add]
  have hk : Module.finrank E (LinearMap.ker f) = n₁ := by
    have := f.finrank_range_add_finrank_ker
    rw [hf, finrank_top] at this
    simp only [Module.finrank_prod, Module.finrank_self, Module.finrank_fintype_fun_eq_card, Fintype.card_fin] at this
    omega
  let b := Module.finBasisOfFinrankEq E (LinearMap.ker f) hk
  let g : (Fin n₁ → E) →ₗ[E] (Fin n → E) := (LinearMap.ker f).subtype ∘ₗ b.equivFun.symm.toLinearMap
  obtain ⟨p, hp⟩ := g.exists_leftInverse_of_injective (LinearMap.ker_eq_bot.2
    ((LinearMap.ker f).injective_subtype.comp b.equivFun.symm.injective))
  refine ⟨LinearMap.toMatrix' g, LinearMap.toMatrix' p, by rw [← LinearMap.toMatrix'_comp, hp, LinearMap.toMatrix'_id],
    fun u => ?_, fun z h1 h2 => ?_⟩
  · rw [LinearMap.toMatrix'_mulVec]
    have := (b.equivFun.symm u).2
    exact Prod.mk_eq_zero.1 this
  · refine ⟨b.equivFun ⟨z, Prod.mk_eq_zero.2 ⟨h1, h2⟩⟩, ?_⟩
    rw [LinearMap.toMatrix'_mulVec]
    change z = (b.equivFun.symm (b.equivFun _) : LinearMap.ker f)
    rw [LinearEquiv.symm_apply_apply]

theorem fg_comap {V W : Type} [AddCommGroup V] [Module (𝓞 E) V] [AddCommGroup W] [Module (𝓞 E) W]
    (f : V →ₗ[𝓞 E] W) (hf : Function.Injective f) (L : Submodule (𝓞 E) W) (hL : L.FG) : (L.comap f).FG :=
  Submodule.fg_of_fg_map_injective f hf (hL.of_le (Submodule.map_comap_le f L))

theorem exists_ideal (n : ℕ) (L : Submodule (𝓞 E) (Fin n → E)) (hL : L.IsLattice E) (x : Fin n → E) (hx : x ≠ 0) :
    ∃ 𝔟 : FractionalIdeal (𝓞 E)⁰ E, ∀ s : E, s ∈ 𝔟 ↔ s • x ∈ L :=
  ⟨⟨L.comap ((LinearMap.toSpanSingleton E _ x).restrictScalars (𝓞 E)), FractionalIdeal.isFractional_of_fg
    (fg_comap _ (smul_left_injective E hx) L hL.fg)⟩, fun _ => Iff.rfl⟩

end PositivityTheory.ThKG.Tow.Pln

end
