module

public import Formalism.SharpRestriction.LevelLetterCocycles.ArithmeticCylinders
public import Development.AbelianVarietyTheory.Definitions.SemilocalFrames.ExistsReduction
public import Formalism.CyclotomicNorms.NonsquarefreeBounds.NonsquarefreeMonicBoundHolds
public import Formalism.SharpRestriction.Divisibility.PrimeDegreeVariant
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace GlobalTheory.RowLev

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.MainNotions.ArithmeticCylinders Polynomial

variable (D : D7)

def tupOf (a : ∀ kv : (Σ k : Fin 2, D.nd.PlG k), (Fin D.R.r → ZMod (D.host.g kv.1))) : Tup2 D :=
  haveI : ∀ k, Fact (D.host.g k).Prime := fun k => ⟨D.host.g_prime k⟩
  fun k v => Formalism.CyclotomicNorms.monicOf (a ⟨k, v⟩)

def ES (S : Set (Tup2 D)) : MonoidAlgebra ℂ (G0g D.nd) :=
  haveI : ∀ k, NeZero (D.host.g k) := fun k => ⟨(D.host.g_prime k).ne_zero⟩
  haveI : ∀ k, Fact (D.host.g k).Prime := fun k => ⟨D.host.g_prime k⟩
  MonoidAlgebra.ofCoeff <| Finsupp.equivFunOnFinite.symm fun g : G0g D.nd =>
    ∑ᶠ a : (∀ kv : (Σ k : Fin 2, D.nd.PlG k), (Fin D.R.r → ZMod (D.host.g kv.1))),
      (open Classical in if tupOf D a ∈ S then
        ∏ kv : (Σ k : Fin 2, D.nd.PlG k), (D.ntypes.eSer kv.1 (Formalism.CyclotomicNorms.monicOf (a kv))).coeff (g kv) else 0)


open Classical in
def labT : Finset (Tup2 D) :=
  haveI : ∀ k, NeZero (D.host.g k) := fun k => ⟨(D.host.g_prime k).ne_zero⟩
  (Finset.univ.image (tupOf D)).filter fun t => ∀ k v, IsLabel D k (t k v)

def zTup (t : Tup2 D) : MonoidAlgebra ℂ (G0g D.nd) :=
  haveI : ∀ k, NeZero (D.host.g k) := fun k => ⟨(D.host.g_prime k).ne_zero⟩
  tensAlg (ι := Σ k : Fin 2, D.nd.PlG k) (G := fun kv => GL (Fin D.R.r) (ZMod (D.host.g kv.1)))
    fun kv => D.ntypes.eSer kv.1 (t kv.1 kv.2)

local instance factTypePrime (k : Fin 2) : Fact (D.host.g k).Prime := ⟨D.host.g_prime k⟩

local instance neZeroTypePrime (k : Fin 2) : NeZero (D.host.g k) := ⟨(D.host.g_prime k).ne_zero⟩

variable {D}

theorem tupOf_injective : Function.Injective (tupOf D) := fun a b h =>
  funext fun kv => PrimeDegreeVariant.Ten.monicOf_inj _ _ (congrFun (congrFun h kv.1) kv.2)

theorem mem_range_tupOf {t : Tup2 D} :
    t ∈ Set.range (tupOf D) ↔ ∀ k v, (t k v).Monic ∧ (t k v).natDegree = D.R.r := by
  constructor
  · rintro ⟨a, rfl⟩ k v
    exact ⟨Formalism.CyclotomicNorms.Sqf.monic_monicOf _, Formalism.CyclotomicNorms.Sqf.natDegree_monicOf _⟩
  · intro h
    exact ⟨fun kv i => (t kv.1 kv.2).coeff i, funext fun k => funext fun v =>
      Formalism.CyclotomicNorms.Sqf.monicOf_coeffs _ (h k v).1 (h k v).2⟩

theorem mem_labT {t : Tup2 D} : t ∈ labT D ↔ ∀ k v, IsLabel D k (t k v) := by
  classical
  unfold labT
  rw [Finset.mem_filter]
  refine ⟨fun h => h.2, fun h => ⟨?_, h⟩⟩
  obtain ⟨a, ha⟩ := mem_range_tupOf.2 fun k v => ⟨(h k v).1, (h k v).2.1⟩
  exact Finset.mem_image.2 ⟨a, Finset.mem_univ _, ha⟩

theorem zTup_coeff (t : Tup2 D) (g : G0g D.nd) :
    (zTup D t).coeff g = ∏ kv : (Σ k : Fin 2, D.nd.PlG k), (D.ntypes.eSer kv.1 (t kv.1 kv.2)).coeff (g kv) := rfl

theorem zTup_eq_zero {t : Tup2 D} (h : t ∉ labT D) : zTup D t = 0 := by
  rw [mem_labT] at h
  push Not at h
  obtain ⟨k, v, h⟩ := h
  ext g
  rw [zTup_coeff]
  refine Finset.prod_eq_zero (Finset.mem_univ (⟨k, v⟩ : Σ k : Fin 2, D.nd.PlG k)) ?_
  rw [D.ntypes.eSer_zero k (t k v) h]
  rfl

theorem zTup_mul_self (t : Tup2 D) : zTup D t * zTup D t = zTup D t :=
  (PrimeDegreeVariant.Ten.tens_mul _ _).trans (congrArg PrimeDegreeVariant.Ten.tens (funext fun _ => D.ntypes.eSer_idem _ _))

theorem zTup_mul_of_ne {t t' : Tup2 D} (h : t ≠ t') : zTup D t * zTup D t' = 0 := by
  obtain ⟨k, hk⟩ := Function.ne_iff.1 h
  obtain ⟨v, hv⟩ := Function.ne_iff.1 hk
  refine (PrimeDegreeVariant.Ten.tens_mul _ _).trans ?_
  ext g
  rw [PrimeDegreeVariant.Ten.tens_coeff]
  refine Finset.prod_eq_zero (Finset.mem_univ (⟨k, v⟩ : Σ k : Fin 2, D.nd.PlG k)) ?_
  rw [D.ntypes.eSer_orth k _ _ hv]
  rfl

theorem zTup_comm (t : Tup2 D) (a : MonoidAlgebra ℂ (G0g D.nd)) : zTup D t * a = a * zTup D t := by
  induction a using MonoidAlgebra.induction_linear with
  | zero => simp
  | add a b ha hb => rw [mul_add, add_mul, ha, hb]
  | single x c =>
    ext g
    rw [MonoidAlgebra.coeff_single_mul_apply, MonoidAlgebra.coeff_mul_single_apply, zTup_coeff, zTup_coeff, mul_comm]
    congr 1
    refine Finset.prod_congr rfl fun kv _ => ?_
    have := congrArg (fun z => z.coeff (g kv))
      (D.ntypes.eSer_central kv.1 (t kv.1 kv.2) (MonoidAlgebra.single (x kv) 1))
    simpa only [MonoidAlgebra.coeff_single_mul_apply, MonoidAlgebra.coeff_mul_single_apply, one_mul, mul_one,
      Pi.mul_apply, Pi.inv_apply] using this


open Classical in
theorem ES_coeff (S : Set (Tup2 D)) (g : G0g D.nd) :
    (ES D S).coeff g = ∑ a : (∀ kv : (Σ k : Fin 2, D.nd.PlG k), (Fin D.R.r → ZMod (D.host.g kv.1))),
      if tupOf D a ∈ S then
        ∏ kv : (Σ k : Fin 2, D.nd.PlG k), (D.ntypes.eSer kv.1 (Formalism.CyclotomicNorms.monicOf (a kv))).coeff (g kv) else 0 :=
  finsum_eq_sum_of_fintype _

theorem ES_good : ES D {t | D.ntypes.goodTuple t} = D.ntypes.e0 := rfl


open Classical in
theorem ES_eq_sum_coef (S : Set (Tup2 D)) :
    ES D S = ∑ a : (∀ kv : (Σ k : Fin 2, D.nd.PlG k), (Fin D.R.r → ZMod (D.host.g kv.1))),
      if tupOf D a ∈ S then zTup D (tupOf D a) else 0 := by
  ext g
  rw [ES_coeff, MonoidAlgebra.coeff_sum, Finsupp.finsetSum_apply]
  refine Finset.sum_congr rfl fun a _ => ?_
  split_ifs <;> rfl


open Classical in
theorem ES_eq_sum (S : Set (Tup2 D)) : ES D S = ∑ t ∈ (labT D).filter (· ∈ S), zTup D t := by
  rw [ES_eq_sum_coef, ← Finset.sum_image (s := Finset.univ) (g := tupOf D)
    (f := fun t => if t ∈ S then zTup D t else 0) fun _ _ _ _ h => tupOf_injective h, Finset.sum_filter]
  symm
  refine Finset.sum_subset (by unfold labT; exact Finset.filter_subset _ _) fun t _ ht => ?_
  rw [zTup_eq_zero ht, ite_self]

theorem ES_eq_finsum (S : Set (Tup2 D)) : ES D S = ∑ᶠ t ∈ S, zTup D t := by
  classical
  rw [ES_eq_sum]
  symm
  refine finsum_mem_eq_sum_of_inter_support_eq _ (Set.ext fun t => ?_)
  simp only [Set.mem_inter_iff, Finset.coe_filter, Set.mem_setOf_eq, Function.mem_support]
  exact ⟨fun h => ⟨⟨by_contra fun h' => h.2 (zTup_eq_zero h'), h.1⟩, h.2⟩, fun h => ⟨h.1.2, h.2⟩⟩

theorem ES_singleton (t : Tup2 D) : ES D {t} = zTup D t := by
  rw [ES_eq_finsum, finsum_mem_singleton]


open Classical in
theorem ES_mul_zTup (S : Set (Tup2 D)) (t : Tup2 D) :
    ES D S * zTup D t = if t ∈ S then zTup D t else 0 := by
  rw [ES_eq_sum, Finset.sum_mul]
  by_cases hl : t ∈ labT D
  · split_ifs with h
    · rw [Finset.sum_eq_single_of_mem t (Finset.mem_filter.2 ⟨hl, h⟩) fun _ _ => zTup_mul_of_ne, zTup_mul_self]
    · exact Finset.sum_eq_zero fun s hs => zTup_mul_of_ne fun e => h (e ▸ (Finset.mem_filter.1 hs).2)
  · simp [zTup_eq_zero hl]

theorem ES_mul (S T : Set (Tup2 D)) : ES D S * ES D T = ES D (S ∩ T) := by
  classical
  rw [ES_eq_sum T, Finset.mul_sum, ES_eq_sum (S ∩ T), Finset.sum_filter, Finset.sum_filter]
  refine Finset.sum_congr rfl fun t _ => ?_
  rw [ES_mul_zTup]
  by_cases h : t ∈ S <;> by_cases h' : t ∈ T <;> simp [h, h']

theorem ES_mul_self (S : Set (Tup2 D)) : ES D S * ES D S = ES D S := by
  rw [ES_mul, Set.inter_self]

theorem ES_comm (S : Set (Tup2 D)) (a : MonoidAlgebra ℂ (G0g D.nd)) : ES D S * a = a * ES D S := by
  rw [ES_eq_sum, Finset.sum_mul, Finset.mul_sum]
  exact Finset.sum_congr rfl fun t _ => zTup_comm t a

end GlobalTheory.RowLev
