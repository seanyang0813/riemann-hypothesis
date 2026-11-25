module

public import Formalism.LocalToGlobal.HermitianForms.TiedSym
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.InJSymRestrict
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.TilEqLevel
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MulLatMulLat
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassInjectiveOfDegree
public import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassInjectiveOfSelfDual
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.DefNOfFact
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.FixOrthogonalVector
import Formalism.LocalToGlobal.GlobalTheory.BlockActions.LengthInverseBound
import Formalism.LocalToGlobal.HermitianForms.TiedBrUnit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabRestrict, Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfInjection, Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFixed, Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFinite

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabRestrict =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabRestrict", "h": "module\n\npublic import Formalism.LocalToGlobal.HermitianForms.TiedSym\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.InJSymRestrict\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.TilEqLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.MulLatMulLat\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms NumberField Formalism.UG Matrix
open scoped TensorProduct
open IsDedekindDomain

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}


theorem stab_restrict (Tf : FormsTiedSym D u Ch chOf) (c : (D.fm u).clsP)
    (γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D D.R.m le_rfl))
    (hγ : γ ∈ ((Tf.cls D.R.m le_rfl (Or.inr rfl)).stabI ((D.fm u).til c)).range)
    (δ : UJ (sigD D : D.host.E →+* D.host.E) (gramP D))
    (hδ : IsExt D Tf.til.z0 (RingHom.id D.host.E) δ.1.1 ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1)) :
    δ ∈ (Tf.clsP.stabI c).range := by
  set Km := Tf.cls D.R.m le_rfl (Or.inr rfl) with hKm
  rw [Km.stabI_range] at hγ
  obtain ⟨κ, hκ, hκe⟩ := Subgroup.mem_map.mp hγ
  rw [Tf.clsP.stabI_range]
  have hdet : IsUnit ((Tf.clsP.y c).1.1).det := (Matrix.isUnit_iff_isUnit_det _).mp (Tf.clsP.y c).1.isUnit
  obtain ⟨g, hg, hu⟩ := til_ext Tf (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (Tf.clsP.y c).1.1
  set Gc : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) := ((Matrix.isUnit_iff_isUnit_det g).mpr (hu hdet)).unit with hGcdef
  have hGcv : Gc.1 = g := IsUnit.unit_spec _
  have hGc : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (Tf.clsP.y c).1.1 Gc.1 := by rw [hGcv]; exact hg
  have e1 := Tf.tilAd.til_ad c Gc hGc
  have hGc1 : Gc = bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (Tf.til.ga c).1 * (Km.y ((D.fm u).til c)).1 *
      ((Tf.tilAd.ka c).1)⁻¹ := eq_mul_inv_of_mul_eq e1.symm
  have hbc : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) γ.1 = (Km.y ((D.fm u).til c)).1 * κ * ((Km.y ((D.fm u).til c)).1)⁻¹ := by
    rw [← hκe]; rfl
  set Γ : GL (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) :=
    bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ((Tf.til.ga c).1 * γ.1 * ((Tf.til.ga c)⁻¹).1) with hΓ
  have hGK : Gc⁻¹ * Γ * Gc ∈ Km.lev.U := by
    have e : Gc⁻¹ * Γ * Gc = (Tf.tilAd.ka c).1 * κ * ((Tf.tilAd.ka c).1)⁻¹ := by
      rw [hΓ, map_mul, map_mul, hbc, hGc1]
      have hi : bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ((Tf.til.ga c)⁻¹).1 = (bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (Tf.til.ga c).1)⁻¹ := by
        rw [← map_inv]; rfl
      rw [hi]
      group
    rw [e]
    exact Subgroup.mul_mem _ (Subgroup.mul_mem _ (Tf.tilAd.ka c).2 hκ) (Subgroup.inv_mem _ (Tf.tilAd.ka c).2)
  have hinv : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) ((Tf.clsP.y c).1.1)⁻¹ (Gc⁻¹).1 :=
    isExt_inv hGc (Units.inv_mul Gc) (Matrix.mul_nonsing_inv _ hdet)
  have hΓ1 : (Γ.1 : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F))) =
      ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1).map (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) := by
    rw [hΓ]; rfl
  have hΓE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) (δ.1.1.map (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F))) Γ.1 := by
    rw [hΓ1]; exact isExt_map hδ
  set K : GL (Fin (D.R.N D.R.m - 1)) (D.host.E ⊗[D.host.F] (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) :=
    ((Tf.clsP.y c).1)⁻¹ * bc (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) δ.1 * (Tf.clsP.y c).1 with hK
  have hKE : IsExt D Tf.til.z0 (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) K.1 (Gc⁻¹ * Γ * Gc).1 := by
    have e : K.1 = ((Tf.clsP.y c).1.1)⁻¹ * δ.1.1.map (inclE (F := D.host.F) (FiniteAdeleRing (𝓞 D.host.F) D.host.F)) * (Tf.clsP.y c).1.1 := by
      rw [hK, Units.val_mul, Units.val_mul, Matrix.coe_units_inv]; rfl
    rw [e, Units.val_mul, Units.val_mul]
    exact isExt_mul (isExt_mul hinv hΓE) hGc
  have hKU := lev_mem Tf K _ hKE hGK
  refine Subgroup.mem_map.mpr ⟨K, hKU, ?_⟩
  show (Tf.clsP.y c).1 * K * ((Tf.clsP.y c).1)⁻¹ = _
  rw [hK]
  group

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabRestrict =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfInjection =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfInjection", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms

theorem bij_of_inj_back {A B : Type} [Finite A] (f : A → B) (hf : Function.Injective f) (g : B → A) (hg : Function.Injective g) :
    Function.Bijective f := by
  haveI : Finite B := Finite.of_injective g hg
  exact hf.bijective_of_nat_card_le (Nat.card_le_card_of_injective g hg)

theorem stabiliser_bijective_of_injection
    (h : ∀ (D : D7) (u : D.what₂.Word) (Ch : ℕ → Type) (chOf : ∀ i, (D.mem u).C.cls i → Ch i), FormsTiedSym D u Ch chOf →
      ∀ c, ∃ g : (D.mem u).C.stab D.R.m ((D.fm u).til c) → (D.fm u).stabilizer₂ c, Function.Injective g) :
    StabiliserMapBijective := by
  intro D u Ch chOf Tf c
  obtain ⟨g, hg⟩ := h D u Ch chOf Tf c
  exact bij_of_inj_back _ ((D.fm u).stabMap_inj c) g hg

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfInjection =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFixed =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFixed", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassMapEstimateOfPartial\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassInjectiveOfDegree\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.DefNOfFact\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.FixOrthogonalVector\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.LengthInverseBound\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabRestrict\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfInjection\nimport Formalism.LocalToGlobal.HermitianForms.TiedBrUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms NumberField Formalism.UG Matrix

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

def StabFix (Tf : FormsTiedSym D u Ch chOf) : Prop :=
  ∀ (c : (D.fm u).clsP) (γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D D.R.m le_rfl)),
    γ ∈ ((Tf.cls D.R.m le_rfl (Or.inr rfl)).stabI ((D.fm u).til c)).range →
    ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1) *ᵥ Tf.til.z0 = Tf.til.z0

theorem span_with_orthogonal_vector (Tf : FormsTiedSym D u Ch chOf) :
    ∀ y, ∃ (x : Fin (D.R.N D.R.m - 1) → D.host.E) (s : D.host.E), y = iXc D x + s • Tf.til.z0 := by
  have hTp : ((D.mem u).A.T : ℕ).Prime := (D.mem u).A.T_prime
  obtain ⟨a, ha⟩ := Tf.til.lastCoordinateUniformizerVector_spans_orthogonal_line
  have hT0 : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast hTp.ne_zero
  have ha0 : a ≠ 0 := by
    intro h0
    have hzz := Tf.til.hermitianForm_lastCoordinateUniformizerVector_self
    rw [ha, h0, zero_smul] at hzz
    apply hT0; rw [← hzz]; simp [hform]
  intro y
  obtain ⟨x, s, hy⟩ := span_iXc_zc D y
  exact ⟨x, s / a, by rw [hy, ha, smul_smul, div_mul_cancel₀ s ha0]⟩

theorem ext_of_fix (Tf : FormsTiedSym D u Ch chOf) (Γ : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) D.host.E)
    (hΓ : cT (sigD D : D.host.E →+* D.host.E) Γ * gramN D D.R.m le_rfl * Γ = gramN D D.R.m le_rfl)
    (hfix : Γ *ᵥ Tf.til.z0 = Tf.til.z0) :
    ∃ δ : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) D.host.E,
      IsExt D Tf.til.z0 (RingHom.id D.host.E) δ Γ ∧
      ∀ x y, hform (sigD D : D.host.E →+* D.host.E) (gramP D) (δ *ᵥ x) (δ *ᵥ y) =
        hform (sigD D : D.host.E →+* D.host.E) (gramP D) x y := by
  have hC := crdFacts_of Tf
  have hTp : ((D.mem u).A.T : ℕ).Prime := (D.mem u).A.T_prime
  set σ : D.host.E →+* D.host.E := (sigD D : D.host.E →+* D.host.E) with hσdef
  set J := gramN D D.R.m le_rfl with hJ
  set z0 := Tf.til.z0 with hz0
  obtain ⟨a, ha⟩ := Tf.til.lastCoordinateUniformizerVector_spans_orthogonal_line
  rw [← hz0] at ha
  have hzz : hform σ J z0 z0 = (((D.mem u).A.T : ℕ) : D.host.E) := Tf.til.hermitianForm_lastCoordinateUniformizerVector_self
  have hT0 : (((D.mem u).A.T : ℕ) : D.host.E) ≠ 0 := by exact_mod_cast hTp.ne_zero
  have horth : ∀ x, hform σ J (iXc D x) z0 = 0 ∧ hform σ J z0 (iXc D x) = 0 := fun x => by
    rw [ha, hform_smul_right, hform_smul_left, (hC.orth x).1, (hC.orth x).2]; simp
  have hγ : ∀ x y, hform σ J (Γ *ᵥ x) (Γ *ᵥ y) = hform σ J x y := fun x y => hform_UJ σ J Γ hΓ x y
  obtain ⟨δ, hδ, hδi⟩ := fix_restrict σ J (gramP D) (iXc D) (iXc_injective D) z0 hC.iso horth (span_with_orthogonal_vector Tf)
    (by rw [hzz]; exact hT0) Γ hγ hfix
  refine ⟨δ, ⟨?_, ?_⟩, hδi⟩
  · apply Matrix.toLin'.injective
    apply LinearMap.ext
    intro x
    simp only [Matrix.toLin'_apply, ← mulVec_mulVec]
    show Γ *ᵥ ((iXm D).map (RingHom.id D.host.E) *ᵥ x) = (iXm D).map (RingHom.id D.host.E) *ᵥ (δ *ᵥ x)
    have hm : (iXm D).map (RingHom.id D.host.E) = iXm D := by ext i j; rfl
    rw [hm, iXm, LinearMap.toMatrix'_mulVec, LinearMap.toMatrix'_mulVec, hδ]
  · have : (fun a => (RingHom.id D.host.E) (z0 a)) = z0 := rfl
    rw [this]; exact hfix

theorem ext_unique (Tf : FormsTiedSym D u Ch chOf) {δ : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) D.host.E}
    {Γ1 Γ2 : Matrix (Fin (D.R.N D.R.m)) (Fin (D.R.N D.R.m)) D.host.E}
    (h1 : IsExt D Tf.til.z0 (RingHom.id D.host.E) δ Γ1) (h2 : IsExt D Tf.til.z0 (RingHom.id D.host.E) δ Γ2) : Γ1 = Γ2 := by
  have hm : (iXm D).map (RingHom.id D.host.E) = iXm D := by ext i j; rfl
  have hz : (fun a => (RingHom.id D.host.E) (Tf.til.z0 a)) = Tf.til.z0 := rfl
  obtain ⟨a1, b1⟩ := h1
  obtain ⟨a2, b2⟩ := h2
  rw [hm] at a1 a2
  rw [hz] at b1 b2
  apply Matrix.toLin'.injective
  apply LinearMap.ext
  intro y
  simp only [Matrix.toLin'_apply]
  obtain ⟨x, s, rfl⟩ := span_with_orthogonal_vector Tf y
  have hx : iXc D x = iXm D *ᵥ x := by simp only [iXm, LinearMap.toMatrix'_mulVec]
  rw [hx, mulVec_add, mulVec_add, mulVec_smul, mulVec_smul, b1, b2, mulVec_mulVec, mulVec_mulVec, a1, a2]



theorem stab_back (Tf : FormsTiedSym D u Ch chOf) (hF : StabFix Tf) (c : (D.fm u).clsP) :
    ∃ g : (D.mem u).C.stab D.R.m ((D.fm u).til c) → (D.fm u).stabilizer₂ c, Function.Injective g := by
  set Km := Tf.cls D.R.m le_rfl (Or.inr rfl) with hKm
  have key : ∀ s : (D.mem u).C.stab D.R.m ((D.fm u).til c), ∃ (s' : (D.fm u).stabilizer₂ c)
      (δ : Matrix (Fin (D.R.N D.R.m - 1)) (Fin (D.R.N D.R.m - 1)) D.host.E),
      IsExt D Tf.til.z0 (RingHom.id D.host.E) δ
        ((Tf.til.ga c).1.1 * (Km.stabI ((D.fm u).til c) s).1.1 * ((Tf.til.ga c)⁻¹).1.1) ∧
      (Tf.clsP.stabI c s').1.1 = δ := by
    intro s
    set γ := Km.stabI ((D.fm u).til c) s with hγ
    have hU : cT (sigD D : D.host.E →+* D.host.E) ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1) *
        gramN D D.R.m le_rfl * ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1) = gramN D D.R.m le_rfl := by
      have h0 := (Tf.til.ga c * γ * (Tf.til.ga c)⁻¹).2
      have e : (Tf.til.ga c * γ * (Tf.til.ga c)⁻¹).1.1 =
          (Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1 := by
        simp only [Subgroup.coe_mul, Units.val_mul]
      have h1 : cT (sigD D : D.host.E →+* D.host.E) (Tf.til.ga c * γ * (Tf.til.ga c)⁻¹).1.1 *
          gramN D D.R.m le_rfl * (Tf.til.ga c * γ * (Tf.til.ga c)⁻¹).1.1 = gramN D D.R.m le_rfl := h0
      rwa [e] at h1
    obtain ⟨δ, hδE, hδi⟩ := ext_of_fix Tf _ hU (hF c γ ⟨s, rfl⟩)
    have hΓu : IsUnit ((Tf.til.ga c).1.1 * γ.1.1 * ((Tf.til.ga c)⁻¹).1.1).det := by
      rw [← Units.val_mul, ← Units.val_mul]
      exact (Matrix.isUnit_iff_isUnit_det _).mp (Units.isUnit _)
    have hδu := isUnit_of_extE Tf δ _ hΓu hδE
    set Δ : GL (Fin (D.R.N D.R.m - 1)) D.host.E := ((Matrix.isUnit_iff_isUnit_det δ).mpr hδu).unit with hΔdef
    have hΔv : Δ.1 = δ := IsUnit.unit_spec _
    have hΔ : Δ ∈ UJ (sigD D : D.host.E →+* D.host.E) (gramP D) := by
      show cT _ Δ.1 * gramP D * Δ.1 = gramP D
      rw [hΔv]; exact unitary_of_hform _ _ _ hδi
    obtain ⟨s', hs'⟩ := stab_restrict Tf c γ ⟨s, rfl⟩ ⟨Δ, hΔ⟩ (by rw [show (⟨Δ, hΔ⟩ : UJ _ _).1.1 = δ from hΔv]; exact hδE)
    exact ⟨s', δ, hδE, by rw [hs']; exact hΔv⟩
  choose g δf hδE hδv using key
  refine ⟨g, fun s1 s2 h12 => ?_⟩
  have hδ12 : δf s1 = δf s2 := by rw [← hδv s1, ← hδv s2, h12]
  have hΓ := ext_unique Tf (hδE s1) (hδ12 ▸ hδE s2)
  apply Km.stabI_inj ((D.fm u).til c)
  apply Subtype.ext
  apply Units.ext
  have hi : ((Tf.til.ga c)⁻¹).1.1 * (Tf.til.ga c).1.1 = 1 := by
    rw [← Units.val_mul, ← Subgroup.coe_mul, inv_mul_cancel]; rfl
  have := congrArg (fun M => ((Tf.til.ga c)⁻¹).1.1 * M * (Tf.til.ga c).1.1) hΓ
  simp only [← Matrix.mul_assoc, hi, Matrix.one_mul] at this
  simp only [Matrix.mul_assoc, hi, Matrix.mul_one] at this
  exact this

theorem stabiliser_bijective_of_fixed
    (hF : ∀ (D : D7) (u : D.what₂.Word) (Ch : ℕ → Type) (chOf : ∀ i, (D.mem u).C.cls i → Ch i) (Tf : FormsTiedSym D u Ch chOf),
      StabFix Tf) : StabiliserMapBijective :=
  stabiliser_bijective_of_injection (fun D u Ch chOf Tf c => stab_back Tf (hF D u Ch chOf Tf) c)

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFixed =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFinite =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFinite", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFixed\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassInjectiveOfDegree\npublic import Formalism.LocalToGlobal.GlobalTheory.BlockActions.ClassInjectiveOfSelfDual\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.DefNOfFact\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.FixOrthogonalVector\nimport Formalism.LocalToGlobal.GlobalTheory.BlockActions.LengthInverseBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.Br

open Formalism.BasicNotions Formalism.L2.Forms NumberField Formalism.UG Matrix

variable {D : D7} {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i}

def StabLF (Tf : FormsTiedSym D u Ch chOf) : Prop :=
  ∀ (c : (D.fm u).clsP) (γ : UJ (sigD D : D.host.E →+* D.host.E) (gramN D D.R.m le_rfl)),
    γ ∈ ((Tf.cls D.R.m le_rfl (Or.inr rfl)).stabI ((D.fm u).til c)).range →
    mulLat γ.1.1 (clsCrd D u D.R.m le_rfl ((D.fm u).til c)) = clsCrd D u D.R.m le_rfl ((D.fm u).til c) ∧
    (∀ x ∈ Ld D u D.R.m le_rfl ((D.fm u).til c), γ.1.1 *ᵥ x ∈ Ld D u D.R.m le_rfl ((D.fm u).til c)) ∧
    ∀ (v : (D.mem u).A.vT) (x : ↥(Ld D u D.R.m le_rfl ((D.fm u).til c)))
      (hx : γ.1.1 *ᵥ x.1 ∈ Ld D u D.R.m le_rfl ((D.fm u).til c)),
      (D.fm u).fv D.R.m v ((D.fm u).til c) ((Tf.lv D.R.m le_rfl).pr v _ ⟨γ.1.1 *ᵥ x.1, hx⟩) =
        (D.fm u).fv D.R.m v ((D.fm u).til c) ((Tf.lv D.R.m le_rfl).pr v _ x)



theorem stabFix_of (Tf : FormsTiedSym D u Ch chOf)
    (hSD : ∀ c, dualSet (sigD D : D.host.E →+* D.host.E) (gramP D) (Tf.clsP.lat c) = (Tf.clsP.lat c : Set (Fin (D.R.N D.R.m - 1) → D.host.E)))
    (hLF : StabLF Tf) : StabFix Tf := by
  have hC := crdFacts_of Tf
  have hdeg := finrank_host_lt_T_sub_one D u
  obtain ⟨v⟩ := vT_nonempty D u
  have hTp : ((D.mem u).A.T : ℕ).Prime := (D.mem u).A.T_prime
  set σ : D.host.E →+* D.host.E := (sigD D : D.host.E →+* D.host.E) with hσdef
  set J := gramN D D.R.m le_rfl with hJ
  set z0 := Tf.til.z0 with hz0
  intro c γ hγ
  obtain ⟨hL, hLd, hf⟩ := hLF c γ hγ
  set g1 := (Tf.til.ga c).1.1 with hg1
  set gi := ((Tf.til.ga c)⁻¹).1.1 with hgi
  set gs := γ.1.1 with hgs
  have hgi1 : gi * g1 = 1 := by simp [hgi, hg1]
  have hg1i : g1 * gi = 1 := by simp [hgi, hg1]
  obtain ⟨a, ha⟩ := Tf.til.lastCoordinateUniformizerVector_spans_orthogonal_line
  rw [← hz0] at ha
  have hzz : hform σ J z0 z0 = (((D.mem u).A.T : ℕ) : D.host.E) := Tf.til.hermitianForm_lastCoordinateUniformizerVector_self
  have horth : ∀ x, hform σ J (iXc D x) z0 = 0 ∧ hform σ J z0 (iXc D x) = 0 := fun x => by
    rw [ha, hform_smul_right, hform_smul_left, (hC.orth x).1, (hC.orth x).2]; simp
  have hUgi : cT σ gi * J * gi = J := ((Tf.til.ga c)⁻¹).2
  have hUgs : cT σ gs * J * gs = J := γ.2
  have hγf : ∀ x y, hform σ J ((g1 * gs * gi) *ᵥ x) ((g1 * gs * gi) *ᵥ y) = hform σ J x y := fun x y => by
    rw [← mulVec_mulVec, ← mulVec_mulVec, ← mulVec_mulVec, ← mulVec_mulVec, ga_herm Tf c, hform_UJ σ J gs hUgs,
      hform_UJ σ J gi hUgi]
  have hlat : mulLat (g1 * gs * gi) ((Tf.clsP.lat c).map ((iXc D).restrictScalars (𝓞 D.host.E)) ⊔ Submodule.span (𝓞 D.host.E) {z0}) =
      (Tf.clsP.lat c).map ((iXc D).restrictScalars (𝓞 D.host.E)) ⊔ Submodule.span (𝓞 D.host.E) {z0} := by
    rw [← Tf.til.til_lat c, mulLat_mulLat, Matrix.mul_assoc, hgi1, Matrix.mul_one, ← mulLat_mulLat, hL]
  have hres : ∀ y : Fin (D.R.N D.R.m) → D.host.E,
      (∀ w ∈ (Tf.clsP.lat c).map ((iXc D).restrictScalars (𝓞 D.host.E)) ⊔ Submodule.span (𝓞 D.host.E) {z0},
        hform σ J w y ∈ (algebraMap (𝓞 D.host.E) D.host.E).range) →
      ∀ r r' : 𝓞 D.host.E, (r : D.host.E) = hform σ J z0 y → (r' : D.host.E) = hform σ J z0 ((g1 * gs * gi) *ᵥ y) →
        r - r' ∈ Tf.atT.Pv v := by
    intro y hy r r' hr hr'
    have hxy : g1 *ᵥ (gi *ᵥ y) = y := by rw [mulVec_mulVec, hg1i, one_mulVec]
    have hxa : gi *ᵥ y ∈ Ld D u D.R.m le_rfl ((D.fm u).til c) := by
      apply Submodule.subset_span
      intro l hl
      have hl' : g1 *ᵥ l ∈ (Tf.clsP.lat c).map ((iXc D).restrictScalars (𝓞 D.host.E)) ⊔ Submodule.span (𝓞 D.host.E) {z0} := by
        rw [← Tf.til.til_lat c]; exact Submodule.mem_map.2 ⟨l, hl, rfl⟩
      have := hy _ hl'
      rw [← hxy, ga_herm Tf c] at this
      exact this
    have hxb := hLd _ hxa
    have e1 := Tf.til.til_fv v c ⟨gi *ᵥ y, hxa⟩ r (by rw [hr]; show _ = hform σ J z0 (g1 *ᵥ (gi *ᵥ y)); rw [hxy])
    have e2 := Tf.til.til_fv v c ⟨gs *ᵥ (gi *ᵥ y), hxb⟩ r' (by
      rw [hr']; show _ = hform σ J z0 (g1 *ᵥ (gs *ᵥ (gi *ᵥ y))); rw [mulVec_mulVec, mulVec_mulVec])
    rw [hf v ⟨gi *ᵥ y, hxa⟩ hxb, e1] at e2
    show Tf.atT.res v (r - r') = 0
    rw [map_sub, e2, sub_self]
  exact fix_orthogonal_vector σ hC.conj J (gramP D) hC.defN (iXc D) z0 hC.iso horth (span_with_orthogonal_vector Tf) _ hTp hdeg hzz
    (Tf.clsP.lat c) (Tf.clsP.lat c)
    ⟨fun y hy => by
      have : y ∈ dualSet σ (gramP D) (Tf.clsP.lat c) := fun x hx => hy x hx
      rw [hSD c] at this; exact this,
     fun x hx y hy => by
      have : y ∈ dualSet σ (gramP D) (Tf.clsP.lat c) := by rw [hSD c]; exact hy
      exact this x hx⟩
    (g1 * gs * gi) hγf hlat (Tf.atT.Pv v) inferInstance (T_mem_Pv Tf v) hres

theorem stabiliser_bijective_of_finite
    (hSD : ∀ (D : D7) (u : D.what₂.Word) (Ch : ℕ → Type) (chOf : ∀ i, (D.mem u).C.cls i → Ch i) (Tf : FormsTiedSym D u Ch chOf),
      ∀ c, dualSet (sigD D : D.host.E →+* D.host.E) (gramP D) (Tf.clsP.lat c) = (Tf.clsP.lat c : Set (Fin (D.R.N D.R.m - 1) → D.host.E)))
    (hLF : ∀ (D : D7) (u : D.what₂.Word) (Ch : ℕ → Type) (chOf : ∀ i, (D.mem u).C.cls i → Ch i) (Tf : FormsTiedSym D u Ch chOf),
      StabLF Tf) : StabiliserMapBijective :=
  stabiliser_bijective_of_fixed (fun D u Ch chOf Tf => stabFix_of Tf (hSD D u Ch chOf Tf) (hLF D u Ch chOf Tf))

end Formalism.L2.GlobalTheoryTheory.Br
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.BlockActions.StabiliserBijectiveOfFinite =====
