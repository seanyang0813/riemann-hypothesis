module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ExistsIsScalar
public import Formalism.LocalToGlobal.IndefiniteReal.ConcretePkgSpec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.GoodScalarOfIsAdelicScalar
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
import Mathlib.RingTheory.Radical.NatInt
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
import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily

@[expose] public section

noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open GlobalTheory.BigOn GlobalTheory.BigOn.Exp Formalism.L2.Theta GlobalTheory.ExportSeries
open scoped TensorProduct


namespace GlobalTheory.BigOn.Exp

theorem exists_algExp {D : D7} {Γ : Type} [Group Γ] [Fintype Γ] {Pl0 I0 T : Type}
    {A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
    {Rl : RealDat3 D A3 Ks} {cG : G0 Rl.Pg D.R.r ≃* G0g D.nd} {S : NX.RatDat D.ntw} (YS : NX.NExpRealS Rl cG S)
    (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) {ρ : Setup D.ntw} (hρ : ρ.Good) (i : D.ntw.Tw)
    (j : Fin D.R.m) (b : Bool) (hU : Rl.toRealDat.LUnif) (hW : Rl.toRealDat.models_HW)
    (hv : FWT.IsChosenExtremalVector Rl.toRealDat j (sg0 D A3.A) (v₀ j _)) (hK : (S.A ((j : ℕ) + 1)).IsKsForm)
    (x : NX.KB S i b ⊗[S.Ks] NX.FmK S ((j : ℕ) + 1)) {n : ℕ} (z : Fin n → ℂ) (g : Fin n → NX.FmK S ((j : ℕ) + 1))
    (hz : ∀ l, IsAlgebraic ℚ (z l)) (hx : evK YS v₀ hρ i j b x = ∑ l, z l • evW YS v₀ j (g l).val) :
    ∃ (m : ℕ) (a : Fin m → NX.KB S i b) (g' : Fin m → NX.FmK S ((j : ℕ) + 1)),
      x = ∑ k, a k ⊗ₜ[S.Ks] g' k ∧ ∀ k, IsAlgebraic ℚ (ρ.e i b (a k)) := by
  classical
  let L : (Rl.HW j (sg0 D A3.A)).H →ₗ[ℂ] (GA D (Wc D j) → ℂ) :=
    { toFun := fun x => (Rl.HW j (sg0 D A3.A)).e x (v₀ j _)
      map_add' := fun x y => by rw [map_add (f := _)]; rfl
      map_smul' := fun c x => by rw [map_smul]; rfl }
  have hL : LinearMap.ker L = ⊥ :=
    LinearMap.ker_eq_bot.2 fun x y h => GlobalTheory.LiftScalarCompare.eval_inj hW hv h
  obtain ⟨m, bb, -, hKs, hspan, hLL, -⟩ := hK
  let bK : Module.Basis (Fin m) S.Ks ↥(S.A ((j : ℕ) + 1)).WK :=
    (Module.Basis.span hKs).map (LinearEquiv.ofEq _ _ hspan)
  have hbK : ∀ k, ((bK k : ↥(S.A ((j : ℕ) + 1)).WK) : S.WL ((j : ℕ) + 1)) = bb k := fun k => by
    simp [bK, Module.Basis.span_apply]
  let φ : Fin m → (GA D (Wc D j) → ℂ) := fun k => evW YS v₀ j (bb k)
  have hφ : LinearIndependent ℂ φ := by
    have h1 : LinearIndependent D.what₂.LL fun k => (YS.fi j).e (bb k) :=
      hLL.map' (YS.fi j).e.toLinearMap (YS.fi j).e.ker
    exact ((hU j (sg0 D A3.A)).1 m _ h1).map' L hL
  let B : Module.Basis (Fin m) (NX.KB S i b) (NX.KB S i b ⊗[S.Ks] NX.FmK S ((j : ℕ) + 1)) :=
    Algebra.TensorProduct.basis (NX.KB S i b) bK
  have hB : ∀ k, B k = ((1 : NX.KB S i b) ⊗ₜ[S.Ks] (bK k : NX.FmK S ((j : ℕ) + 1))) := fun k =>
    Algebra.TensorProduct.basis_apply _ _
  have hxe : x = ∑ k, B.equivFun x k ⊗ₜ[S.Ks] (bK k : NX.FmK S ((j : ℕ) + 1)) := by
    conv_lhs => rw [← B.sum_equivFun x]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [hB]
    change (B.equivFun x k • (1 : NX.KB S i b)) ⊗ₜ[S.Ks] (bK k : NX.FmK S ((j : ℕ) + 1)) = _
    rw [smul_eq_mul, mul_one]
  refine ⟨m, B.equivFun x, fun k => bK k, hxe, ?_⟩

  have h1 : evK YS v₀ hρ i j b x = ∑ k, ρ.e i b (B.equivFun x k) • φ k := by
    conv_lhs => rw [hxe]
    refine (map_sum (evK YS v₀ hρ i j b) _ _).trans ?_
    refine Finset.sum_congr rfl fun k _ => ?_
    exact (evK_tmul YS v₀ hρ i j b _ _).trans (congrArg _ (congrArg (evW YS v₀ j) (hbK k)))

  let emb : S.Ks →+* ℂ := D.what₂.embLL.comp (algebraMap S.Ks D.what₂.LL)
  let c : Fin n → Fin m → S.Ks := fun l => bK.equivFun (g l)
  have h2 : ∀ l, evW YS v₀ j (g l).val = ∑ k, emb (c l k) • φ k := fun l => by
    have e : (g l).val = ∑ k, algebraMap S.Ks D.what₂.LL (c l k) • bb k := by
      conv_lhs => rw [← bK.sum_equivFun (g l)]
      rw [Submodule.coe_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [Submodule.coe_smul, hbK, algebraMap_smul]

    rw [e, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [evW_smul]
    rfl
  have h3 : ∑ l, z l • evW YS v₀ j (g l).val = ∑ k, (∑ l, z l * emb (c l k)) • φ k := by
    simp_rw [h2, Finset.smul_sum, smul_smul, Finset.sum_smul]
    exact Finset.sum_comm
  have h4 : ∀ k, ρ.e i b (B.equivFun x k) = ∑ l, z l * emb (c l k) := by
    have h5 : ∑ k, (ρ.e i b (B.equivFun x k) - ∑ l, z l * emb (c l k)) • φ k = 0 := by
      simp_rw [sub_smul, Finset.sum_sub_distrib]
      rw [← h1, hx, h3, sub_self]
    intro k
    exact sub_eq_zero.1 (Fintype.linearIndependent_iff.1 hφ _ h5 k)
  intro k
  rw [h4 k]
  have hemb : ∀ y : S.Ks, IsAlgebraic ℚ (emb y) := fun y =>
    (Algebra.IsAlgebraic.isAlgebraic y).algHom emb.toRatAlgHom
  have hmem : ∀ y : ℂ, y ∈ algebraicClosure ℚ ℂ ↔ IsAlgebraic ℚ y := fun y => mem_algebraicClosure_iff
  refine (hmem _).1 ?_
  refine sum_mem fun l _ => mul_mem ?_ ?_
  · exact (hmem _).2 (hz l)
  · exact (hmem _).2 (hemb _)

end GlobalTheory.BigOn.Exp

namespace GlobalTheory.BigOn.Exp

end GlobalTheory.BigOn.Exp

namespace GlobalTheory.BigOn.Exp

end GlobalTheory.BigOn.Exp

namespace GlobalTheory.BigOn.Exp

theorem isAlgebraic_of_pow_eq_one {ζ : ℂ} {n : ℕ} (hn : n ≠ 0) (h : ζ ^ n = 1) : IsAlgebraic ℚ ζ :=
  ⟨Polynomial.X ^ n - Polynomial.C 1, Polynomial.X_pow_sub_C_ne_zero (Nat.pos_of_ne_zero hn) 1, by simp [h]⟩

end GlobalTheory.BigOn.Exp
