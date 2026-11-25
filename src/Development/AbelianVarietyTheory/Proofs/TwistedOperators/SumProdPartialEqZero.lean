module

public import Development.AbelianVarietyTheory.Definitions.Divisors.InvVolConjLevelOne
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
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairPtsClasses

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField MeasureTheory GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.ExpansionInvariance

noncomputable section

namespace GlobalTheory.ExpansionInvariance

section Tensor

variable {ι : Type} [Fintype ι] [DecidableEq ι] {X Y : ι → Type} (T : ∀ i, (X i → ℂ) →ₗ[ℂ] (Y i → ℂ)) {δ : Type}

theorem sum_prod_partial_eq_zero (s : Finset δ) (a : δ → ℂ) (F : δ → ∀ i, X i → ℂ)
    (h : ∀ x : ∀ i, X i, ∑ d ∈ s, a d * ∏ i, F d i (x i) = 0) (A : Finset ι) (x : ∀ i, X i) (y : ∀ i, Y i) :
    ∑ d ∈ s, a d * ((∏ i ∈ A, T i (F d i) (y i)) * ∏ i ∈ Aᶜ, F d i (x i)) = 0 := by
  induction A using Finset.induction_on generalizing x with
  | empty => simpa using h x
  | @insert b A hb ih =>
    set c : δ → ℂ := fun d => a d * ((∏ i ∈ A, T i (F d i) (y i)) * ∏ i ∈ (insert b A)ᶜ, F d i (x i)) with hc
    have hbA : b ∈ Aᶜ := Finset.mem_compl.2 hb
    have hcompl : (insert b A)ᶜ = (Aᶜ).erase b := by
      ext i; simp [Finset.mem_erase]
    have hφ : (∑ d ∈ s, c d • F d b) = 0 := by
      funext z
      have := ih (Function.update x b z)
      rw [Finset.sum_apply, Pi.zero_apply, ← this]
      refine Finset.sum_congr rfl fun d _ => ?_
      rw [Pi.smul_apply, smul_eq_mul, hc, ← Finset.mul_prod_erase _ _ hbA, Function.update_self, hcompl]
      have : ∏ i ∈ (Aᶜ).erase b, F d i (Function.update x b z i) = ∏ i ∈ (Aᶜ).erase b, F d i (x i) :=
        Finset.prod_congr rfl fun i hi => by rw [Function.update_of_ne (Finset.ne_of_mem_erase hi)]
      rw [this]; ring
    have h2 := congrArg (fun f => T b f (y b)) hφ

    simp only [map_sum, map_smul, map_zero, Finset.sum_apply, Pi.smul_apply, smul_eq_mul, Pi.zero_apply] at h2
    rw [← h2]
    refine Finset.sum_congr rfl fun d _ => ?_
    rw [Finset.prod_insert hb, hc]; ring

theorem sum_prod_map_eq_zero (s : Finset δ) (a : δ → ℂ) (F : δ → ∀ i, X i → ℂ)
    (h : ∀ x : ∀ i, X i, ∑ d ∈ s, a d * ∏ i, F d i (x i) = 0) (y : ∀ i, Y i) :
    ∑ d ∈ s, a d * ∏ i, T i (F d i) (y i) = 0 := by
  by_cases hX : Nonempty (∀ i, X i)
  · obtain ⟨x⟩ := hX
    simpa using sum_prod_partial_eq_zero T s a F h Finset.univ x y
  · have hi : ∃ i, IsEmpty (X i) := by
      by_contra hn
      push_neg at hn
      exact hX ⟨fun i => Classical.choice (hn i)⟩
    obtain ⟨i, hi⟩ := hi
    have h0 : ∀ f : X i → ℂ, f = 0 := fun f => funext fun z => hi.elim z
    refine Finset.sum_eq_zero fun d _ => ?_
    rw [Finset.prod_eq_zero (Finset.mem_univ i) (by rw [h0 (F d i), map_zero]; rfl), mul_zero]

theorem sum_prod_map_congr {δ' : Type} (s : Finset δ) (s' : Finset δ') (a : δ → ℂ) (a' : δ' → ℂ) (F : δ → ∀ i, X i → ℂ)
    (F' : δ' → ∀ i, X i → ℂ)
    (h : ∀ x : ∀ i, X i, ∑ d ∈ s', a' d * ∏ i, F' d i (x i) = ∑ d ∈ s, a d * ∏ i, F d i (x i)) (y : ∀ i, Y i) :
    ∑ d ∈ s', a' d * ∏ i, T i (F' d i) (y i) = ∑ d ∈ s, a d * ∏ i, T i (F d i) (y i) := by
  have key := sum_prod_map_eq_zero T (s'.disjSum s) (Sum.elim a' fun d => -a d) (Sum.elim F' F) (fun x => by
    rw [Finset.sum_disjSum]
    simp only [Sum.elim_inl, Sum.elim_inr, neg_mul, Finset.sum_neg_distrib, h x, add_neg_cancel]) y
  rw [Finset.sum_disjSum] at key
  simp only [Sum.elim_inl, Sum.elim_inr, neg_mul, Finset.sum_neg_distrib] at key
  exact sub_eq_zero.1 (by rw [sub_eq_add_neg]; exact key)

end Tensor

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {U : Set T}

def stdLatO (S : GridChoice W U) (p : Pair T) : AddSubgroup (WO (G.pS p) (G.pT p)) :=
  latO (G.pS p) (G.pT p) (S.N.latS p : Set (Fin (G.pS p).rank → D.host.E)) (S.N.latT p : Set (Fin (G.pT p).rank → D.host.E))
    fun _ => True

def movedFn (_S : GridChoice W U) {t : T} (d : PureDat G t) (j : ℕ) (hj : j + 1 < D.R.m) (g : FinPt G (.top (j + 1))) :
    ∀ j' : Fin D.R.m, WO (G.pS (.top t j' : Pair T)) (G.pT (.top t j' : Pair T)) → ℂ :=
  Function.update (Function.update (fun j' => (d.1 j').fn) ⟨j, by omega⟩
      fun x => (d.1 ⟨j, by omega⟩).fn (actO _ _ 1⁻¹ (g : GA D (G.V (.top (j + 1))))⁻¹ x))
    ⟨j + 1, hj⟩ fun x => (d.1 ⟨j + 1, hj⟩).fn (actO _ _ (g : GA D (G.V (.top (j + 1))))⁻¹ 1⁻¹ x)

theorem vec_eq_model (S : GridChoice W U) {t : T} {p : Pair T} (d : FinDatum G t p) (hz : d.z = 1) (hv : S.Z.HasVec d)
    (Tm : (WO (G.pS p) (G.pT p) → ℂ) →ₗ[ℂ] (WO (G.pS p) (G.pT p) → ℂ))
    (hTm : IsPlaceModel W.ψ (symplO _ _) (heisO W.ψ _ _) d.e (stdLatO S p) 1 (S.Z.vac p) Tm) : S.Z.vec d = Tm d.fn := by
  obtain ⟨f, hf⟩ := hv
  rw [Normal.vec, FinDatum.vec_eq W hf, hz, ← hf.2 Tm hTm]
  rw [show ((1 : GA D (G.pS p)), (1 : GA D (G.pT p))) = 1 from rfl, map_one]
  rfl

end GlobalTheory.ExpansionInvariance

end
