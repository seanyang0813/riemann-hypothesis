module

public import Mathlib.Algebra.Category.Grp.Preadditive
public import Mathlib.AlgebraicTopology.AlternatingFaceMapComplex
public import Mathlib.LinearAlgebra.Finsupp.Supported
public import Mathlib.Tactic.Continuity
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ConsCompSuccAboveZero
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechLeray
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjCechCompute
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjTwistLeray
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Finsupp.Pointwise
import Mathlib.Order.CompletePartialOrder
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechOrdered
import Mathlib.CategoryTheory.Monoidal.Mon
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.Tactic.Polynomial.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Chains, GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Ordered, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.PSpaceFinite

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Chains =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Chains", "h": "module\n\npublic import Mathlib.Algebra.Category.Grp.Preadditive\npublic import Mathlib.AlgebraicTopology.AlternatingFaceMapComplex\npublic import Mathlib.LinearAlgebra.Finsupp.Supported\npublic import Mathlib.Tactic.Continuity\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ConsCompSuccAboveZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.Finsupp.Pointwise\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open CategoryTheory

universe w

variable {ι : Type w}

abbrev Chain (ι : Type w) (n : ℕ) : Type w := (Fin (n + 1) → ι) →₀ ℤ

noncomputable def chainMap {m n : ℕ} (θ : Fin (m + 1) → Fin (n + 1)) : Chain ι n →+ Chain ι m :=
  Finsupp.mapDomain.addMonoidHom fun i => i ∘ θ

lemma chainMap_single {m n : ℕ} (θ : Fin (m + 1) → Fin (n + 1)) (i : Fin (n + 1) → ι) (z : ℤ) :
    chainMap θ (Finsupp.single i z) = Finsupp.single (i ∘ θ) z :=
  Finsupp.mapDomain_single

noncomputable def chainSimplicial (ι : Type w) : SimplicialObject AddCommGrpCat.{w} where
  obj n := AddCommGrpCat.of (Chain ι n.unop.len)
  map θ := AddCommGrpCat.ofHom (chainMap θ.unop.toOrderHom)
  map_id n := AddCommGrpCat.ext fun c => Finsupp.mapDomain_id
  map_comp θ θ' := AddCommGrpCat.ext fun c => by
    change Finsupp.mapDomain _ c = Finsupp.mapDomain _ (Finsupp.mapDomain _ c)
    rw [← Finsupp.mapDomain_comp]
    rfl

noncomputable def bd (n : ℕ) : Chain ι (n + 1) →+ Chain ι n :=
  (AlgebraicTopology.AlternatingFaceMapComplex.objD (chainSimplicial ι) n).hom

lemma bd_apply (n : ℕ) (c : Chain ι (n + 1)) :
    bd n c = ∑ k : Fin (n + 2), ((-1 : ℤ) ^ (k : ℕ)) • chainMap k.succAbove c := by
  have h := hom_finset_sum_apply Finset.univ
    (fun k : Fin (n + 2) => ((-1 : ℤ) ^ (k : ℕ)) • (chainSimplicial ι).δ k) c
  refine h.trans (Finset.sum_congr rfl fun k _ => ?_)
  rfl

lemma bd_single (n : ℕ) (i : Fin (n + 2) → ι) (z : ℤ) :
    bd n (Finsupp.single i z) =
      ∑ k : Fin (n + 2), ((-1 : ℤ) ^ (k : ℕ)) • Finsupp.single (i ∘ k.succAbove) z := by
  rw [bd_apply]
  simp only [chainMap_single]

lemma bd_bd (n : ℕ) (c : Chain ι (n + 2)) : bd n (bd (n + 1) c) = 0 := by
  have := AlgebraicTopology.AlternatingFaceMapComplex.d_squared (chainSimplicial ι) n
  exact congrArg (fun f => f.hom c) this

noncomputable def aug : Chain ι 0 →+ ℤ := Finsupp.liftAddHom fun _ => AddMonoidHom.id ℤ

lemma aug_single (j : Fin 1 → ι) (z : ℤ) : aug (Finsupp.single j z) = z :=
  Finsupp.liftAddHom_apply_single _ _ _

lemma aug_bd (c : Chain ι 1) : aug (bd 0 c) = 0 := by
  induction c using Finsupp.induction_linear with
  | zero => simp
  | add f g hf hg => rw [map_add (f := _), map_add (f := _), hf, hg, add_zero]
  | single i z =>
    rw [bd_single, Fin.sum_univ_two]
    simp [aug_single]

noncomputable def lin {m n : ℕ} (f : (Fin (m + 1) → ι) → Chain ι n) : Chain ι m →+ Chain ι n :=
  Finsupp.liftAddHom fun j => zmultiplesHom _ (f j)

lemma lin_single {m n : ℕ} (f : (Fin (m + 1) → ι) → Chain ι n) (j : Fin (m + 1) → ι) (z : ℤ) :
    lin f (Finsupp.single j z) = z • f j := by
  rw [lin, Finsupp.liftAddHom_apply_single, zmultiplesHom_apply]

lemma map_mem_supported {m n : ℕ} (L : Chain ι m →+ Chain ι n) {S : Set (Fin (m + 1) → ι)}
    {T : Set (Fin (n + 1) → ι)}
    (h : ∀ j ∈ S, ∀ z : ℤ, L (Finsupp.single j z) ∈ Finsupp.supported ℤ ℤ T) {c : Chain ι m}
    (hc : c ∈ Finsupp.supported ℤ ℤ S) : L c ∈ Finsupp.supported ℤ ℤ T := by

  rw [← Finsupp.sum_single c, Finsupp.sum, map_sum]
  exact Submodule.sum_mem _ fun j hj => h j ((Finsupp.mem_supported ℤ c).1 hc hj) _

lemma eq_of_supported {m : ℕ} {M : Type*} [AddCommGroup M] (L L' : Chain ι m →+ M)
    {S : Set (Fin (m + 1) → ι)} (h : ∀ j ∈ S, ∀ z : ℤ, L (Finsupp.single j z) = L' (Finsupp.single j z))
    {c : Chain ι m} (hc : c ∈ Finsupp.supported ℤ ℤ S) : L c = L' c := by

  rw [← Finsupp.sum_single c, Finsupp.sum, map_sum, map_sum]
  exact Finset.sum_congr rfl fun j hj => h j ((Finsupp.mem_supported ℤ c).1 hc hj) _

def rangeIn {n : ℕ} (S : Set ι) : Set (Fin (n + 1) → ι) := {j | Set.range j ⊆ S}

lemma mem_rangeIn {n : ℕ} {S : Set ι} {j : Fin (n + 1) → ι} : j ∈ rangeIn S ↔ Set.range j ⊆ S :=
  Iff.rfl

lemma single_mem_rangeIn {n : ℕ} (i : Fin (n + 1) → ι) (z : ℤ) :
    Finsupp.single i z ∈ Finsupp.supported ℤ ℤ (rangeIn (Set.range i)) :=
  Finsupp.single_mem_supported ℤ z (mem_rangeIn.2 subset_rfl)

lemma lin_mem_rangeIn {m n : ℕ} (f : (Fin (m + 1) → ι) → Chain ι n) {S : Set ι}
    (hf : ∀ j : Fin (m + 1) → ι, Set.range j ⊆ S →
      f j ∈ Finsupp.supported ℤ ℤ (rangeIn (n := n) (Set.range j)))
    {c : Chain ι m} (hc : c ∈ Finsupp.supported ℤ ℤ (rangeIn S)) :
    lin f c ∈ Finsupp.supported ℤ ℤ (rangeIn S) :=
  map_mem_supported _ (fun j hj z => by
    rw [lin_single]
    exact Submodule.smul_mem _ z (Finsupp.supported_mono
      (fun k hk => mem_rangeIn.2 ((mem_rangeIn.1 hk).trans (mem_rangeIn.1 hj))) (hf j hj))) hc

lemma bd_mem_rangeIn {n : ℕ} {S : Set ι} {c : Chain ι (n + 1)}
    (hc : c ∈ Finsupp.supported ℤ ℤ (rangeIn S)) :
    bd n c ∈ Finsupp.supported ℤ ℤ (rangeIn S) :=
  map_mem_supported _ (fun j hj z => by
    rw [bd_single]
    exact Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _
      (Finsupp.single_mem_supported ℤ z
        (mem_rangeIn.2 ((Set.range_comp_subset_range _ _).trans (mem_rangeIn.1 hj))))) hc

noncomputable def cone {n : ℕ} (s : ι) : Chain ι n →+ Chain ι (n + 1) :=
  Finsupp.mapDomain.addMonoidHom fun i => (Fin.cons s i : Fin (n + 2) → ι)

lemma cone_single {n : ℕ} (s : ι) (i : Fin (n + 1) → ι) (z : ℤ) :
    cone s (Finsupp.single i z) = Finsupp.single (Fin.cons s i : Fin (n + 2) → ι) z :=
  Finsupp.mapDomain_single

lemma bd_cone_add_cone_bd (n : ℕ) (s : ι) (c : Chain ι (n + 1)) :
    bd (n + 1) (cone s c) + cone s (bd n c) = c := by
  induction c using Finsupp.induction_linear with
  | zero => simp
  | add f g hf hg =>
    simp only [map_add (f := _)]
    rw [add_add_add_comm, hf, hg]
  | single i z =>

    rw [cone_single, bd_single, Fin.sum_univ_succ, bd_single, map_sum]
    simp only [Fin.val_zero, pow_zero, one_smul, cons_comp_succAbove_zero,
      cons_comp_succAbove_succ, Fin.val_succ, pow_succ, mul_neg_one, neg_smul, map_zsmul,
      cone_single]
    rw [add_assoc, ← Finset.sum_add_distrib]
    simp

lemma cone_mem_rangeIn {n : ℕ} {S : Set ι} {s : ι} (hs : s ∈ S) {c : Chain ι n}
    (hc : c ∈ Finsupp.supported ℤ ℤ (rangeIn S)) :
    cone s c ∈ Finsupp.supported ℤ ℤ (rangeIn S) :=
  map_mem_supported _ (fun j hj z => by
    rw [cone_single]
    refine Finsupp.single_mem_supported ℤ z (mem_rangeIn.2 ?_)
    rintro x ⟨a, rfl⟩
    cases a using Fin.cases with
    | zero => simpa using hs
    | succ a => simpa using (mem_rangeIn.1 hj) ⟨a, rfl⟩) hc

section Order

variable [LinearOrder ι]

lemma strictMono_cons {n : ℕ} {s : ι} {j : Fin (n + 1) → ι} (hj : StrictMono j) (hs : s < j 0) :
    StrictMono (Fin.cons s j : Fin (n + 2) → ι) := by
  refine Fin.strictMono_iff_lt_succ.2 fun k => ?_
  cases k using Fin.cases with
  | zero => simpa using hs
  | succ k =>
    rw [← Fin.succ_castSucc, Fin.cons_succ, Fin.cons_succ]
    exact hj Fin.castSucc_lt_succ

def ordIn {n : ℕ} (S : Set ι) : Set (Fin (n + 1) → ι) := {j | StrictMono j ∧ Set.range j ⊆ S}

lemma mem_ordIn {n : ℕ} {S : Set ι} {j : Fin (n + 1) → ι} :
    j ∈ ordIn S ↔ StrictMono j ∧ Set.range j ⊆ S :=
  Iff.rfl

def ordFrom {n : ℕ} (s : ι) : Set (Fin (n + 1) → ι) := {j | StrictMono j ∧ s ≤ j 0}

lemma mem_ordFrom {n : ℕ} {s : ι} {j : Fin (n + 1) → ι} : j ∈ ordFrom s ↔ StrictMono j ∧ s ≤ j 0 :=
  Iff.rfl

lemma strictMono_of_fin_one (j : Fin 1 → ι) : StrictMono j := fun a b hab => by
  rw [Fin.fin_one_eq_zero a, Fin.fin_one_eq_zero b] at hab
  exact absurd hab (lt_irrefl _)

lemma ordIn_subset_rangeIn {n : ℕ} (S : Set ι) : ordIn (n := n) S ⊆ rangeIn S :=
  fun _ h => mem_rangeIn.2 (mem_ordIn.1 h).2

noncomputable def ocone {n : ℕ} (s : ι) : Chain ι n →+ Chain ι (n + 1) :=
  Finsupp.liftAddHom fun i =>
    if s < i 0 then Finsupp.singleAddHom (Fin.cons s i : Fin (n + 2) → ι) else 0

lemma ocone_single_of_lt {n : ℕ} {s : ι} {i : Fin (n + 1) → ι} (h : s < i 0) (z : ℤ) :
    ocone s (Finsupp.single i z) = Finsupp.single (Fin.cons s i : Fin (n + 2) → ι) z := by
  rw [ocone, Finsupp.liftAddHom_apply_single, if_pos h]
  rfl

lemma ocone_single_of_not_lt {n : ℕ} {s : ι} {i : Fin (n + 1) → ι} (h : ¬ s < i 0) (z : ℤ) :
    ocone s (Finsupp.single i z) = 0 := by
  rw [ocone, Finsupp.liftAddHom_apply_single, if_neg h]
  rfl

lemma bd_ocone_add_ocone_bd (n : ℕ) (s : ι) {c : Chain ι (n + 1)}
    (hc : c ∈ Finsupp.supported ℤ ℤ (ordFrom s)) :
    bd (n + 1) (ocone s c) + ocone s (bd n c) = c := by
  refine eq_of_supported (((bd (n + 1)).comp (ocone s)) + (ocone s).comp (bd n))
    (AddMonoidHom.id _) (fun j hj z => ?_) hc
  obtain ⟨hmono, hsj⟩ := mem_ordFrom.1 hj
  simp only [AddMonoidHom.add_apply, AddMonoidHom.comp_apply, AddMonoidHom.id_apply]
  have hface : ∀ k : Fin (n + 2), s ≤ (j ∘ k.succAbove) 0 := fun k =>
    hsj.trans (hmono.monotone (Fin.zero_le _))
  by_cases hlt : s < j 0
  · have h1 : ocone s (Finsupp.single j z) = cone s (Finsupp.single j z) := by
      rw [ocone_single_of_lt hlt, cone_single]
    have h2 : ocone s (bd n (Finsupp.single j z)) = cone s (bd n (Finsupp.single j z)) := by

      rw [bd_single, map_sum, map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_zsmul, map_zsmul, ocone_single_of_lt (i := j ∘ k.succAbove)
        (show s < j (k.succAbove 0) from hlt.trans_le (hmono.monotone (Fin.zero_le _))),
        cone_single]
    rw [h1, h2]
    exact bd_cone_add_cone_bd n s _
  · have hs : s = j 0 := le_antisymm hsj (not_lt.1 hlt)

    rw [ocone_single_of_not_lt hlt, map_zero, zero_add, bd_single, map_sum, Fin.sum_univ_succ]
    have h0 : s < (j ∘ (0 : Fin (n + 2)).succAbove) 0 := by
      rw [hs]
      exact hmono (by simp)
    rw [map_zsmul, ocone_single_of_lt h0]
    have hrest : ∀ k : Fin (n + 1), ¬ s < (j ∘ k.succ.succAbove) 0 := fun k => by
      simp [Function.comp_apply, hs]
    simp only [map_zsmul, ocone_single_of_not_lt (hrest _), smul_zero, Finset.sum_const_zero,
      add_zero, Fin.val_zero, pow_zero, one_smul]
    congr 1
    rw [hs]
    exact Fin.cons_self_tail j

lemma bd_ocone_zero (s : ι) {c : Chain ι 0} (hc : c ∈ Finsupp.supported ℤ ℤ (ordFrom s)) :
    bd 0 (ocone s c) = c - aug c • Finsupp.single (fun _ => s) 1 := by
  refine eq_of_supported ((bd 0).comp (ocone s))
    (AddMonoidHom.id _ - (zmultiplesHom _ (Finsupp.single (fun _ => s) 1)).comp aug)
    (fun j hj z => ?_) hc
  obtain ⟨-, hsj⟩ := mem_ordFrom.1 hj
  simp only [AddMonoidHom.comp_apply, AddMonoidHom.sub_apply, AddMonoidHom.id_apply,
    zmultiplesHom_apply, aug_single, Finsupp.smul_single_one]
  have hconst : (fun _ : Fin 1 => s) = Fin.cons s j ∘ (1 : Fin 2).succAbove := by
    funext a
    rw [Fin.fin_one_eq_zero a]
    rfl
  by_cases hlt : s < j 0
  · rw [ocone_single_of_lt hlt, bd_single, Fin.sum_univ_two, cons_comp_succAbove_zero, ← hconst]
    simp [sub_eq_add_neg]
  · have hj : j = fun _ => s := by
      funext a
      rw [Fin.fin_one_eq_zero a]
      exact (le_antisymm hsj (not_lt.1 hlt)).symm
    rw [ocone_single_of_not_lt hlt, map_zero, hj, sub_self]

noncomputable def minIdx {n : ℕ} (i : Fin (n + 1) → ι) : ι := Finset.univ.inf' Finset.univ_nonempty i

lemma minIdx_le {n : ℕ} (i : Fin (n + 1) → ι) (a : Fin (n + 1)) : minIdx i ≤ i a :=
  Finset.inf'_le _ (Finset.mem_univ a)

lemma minIdx_mem {n : ℕ} (i : Fin (n + 1) → ι) : minIdx i ∈ Set.range i := by
  obtain ⟨a, -, ha⟩ := Finset.exists_mem_eq_inf' Finset.univ_nonempty i
  exact ⟨a, ha.symm⟩

lemma minIdx_of_strictMono {n : ℕ} {i : Fin (n + 1) → ι} (hi : StrictMono i) : minIdx i = i 0 :=
  le_antisymm (minIdx_le i 0)
    (Finset.le_inf' _ _ fun a _ => hi.monotone (Fin.zero_le a))

lemma ordIn_subset_ordFrom {n m : ℕ} (i : Fin (m + 1) → ι) :
    ordIn (n := n) (Set.range i) ⊆ ordFrom (minIdx i) := fun j hjr => by
  obtain ⟨hj, hr⟩ := mem_ordIn.1 hjr
  refine mem_ordFrom.2 ⟨hj, ?_⟩
  obtain ⟨a, ha⟩ := hr ⟨0, rfl⟩
  rw [← ha]
  exact minIdx_le i a

lemma ocone_mem_ordIn {n m : ℕ} (i : Fin (m + 1) → ι) {c : Chain ι n}
    (hc : c ∈ Finsupp.supported ℤ ℤ (ordIn (Set.range i))) :
    ocone (minIdx i) c ∈ Finsupp.supported ℤ ℤ (ordIn (Set.range i)) :=
  map_mem_supported _ (fun j hj z => by
    obtain ⟨hj1, hj2⟩ := mem_ordIn.1 hj
    by_cases hlt : minIdx i < j 0
    · rw [ocone_single_of_lt hlt]
      refine Finsupp.single_mem_supported ℤ z (mem_ordIn.2 ⟨strictMono_cons hj1 hlt, ?_⟩)
      rintro x ⟨a, rfl⟩
      cases a using Fin.cases with
      | zero => simpa using minIdx_mem i
      | succ a => simpa using hj2 ⟨a, rfl⟩
    · rw [ocone_single_of_not_lt hlt]
      exact Submodule.zero_mem _) hc

noncomputable def rho : (n : ℕ) → (Fin (n + 1) → ι) → Chain ι n
  | 0, i => Finsupp.single i 1
  | n + 1, i => ocone (minIdx i) (lin (rho n) (bd n (Finsupp.single i 1)))

lemma lin_rho_zero (c : Chain ι 0) : lin (rho (ι := ι) 0) c = c := by
  induction c using Finsupp.induction_linear with
  | zero => simp
  | add f g hf hg => rw [map_add (f := _), hf, hg]
  | single i z => rw [lin_single, rho, Finsupp.smul_single_one]

theorem rho_mem : ∀ (n : ℕ) (i : Fin (n + 1) → ι),
    rho n i ∈ Finsupp.supported ℤ ℤ (ordIn (Set.range i))
  | 0, i => Finsupp.single_mem_supported ℤ _ (mem_ordIn.2 ⟨strictMono_of_fin_one _, subset_rfl⟩)
  | n + 1, i => by
    refine ocone_mem_ordIn i ?_
    refine map_mem_supported _ (fun j hj z => ?_) (bd_mem_rangeIn (single_mem_rangeIn i 1))
    rw [lin_single]
    exact Submodule.smul_mem _ z (Finsupp.supported_mono
      (fun k hk => mem_ordIn.2 ⟨(mem_ordIn.1 hk).1, (mem_ordIn.1 hk).2.trans (mem_rangeIn.1 hj)⟩)
      (rho_mem n j))

theorem bd_rho : ∀ (n : ℕ) (i : Fin (n + 2) → ι),
    bd n (rho (n + 1) i) = lin (rho n) (bd n (Finsupp.single i 1))
  | 0, i => by
    have hx : lin (rho (ι := ι) 0) (bd 0 (Finsupp.single i 1)) ∈
        Finsupp.supported ℤ ℤ (ordFrom (minIdx i)) := by
      rw [lin_rho_zero]
      have hsubset : rangeIn (n := 0) (Set.range i) ⊆ ordFrom (minIdx i) := by
        intro j hj
        exact ordIn_subset_ordFrom i
          (mem_ordIn.2 ⟨strictMono_of_fin_one j, mem_rangeIn.1 hj⟩)
      exact Finsupp.supported_mono hsubset (bd_mem_rangeIn (single_mem_rangeIn i 1))
    change bd 0 (ocone (minIdx i) (lin (rho 0) (bd 0 (Finsupp.single i 1)))) = _
    rw [bd_ocone_zero _ hx, lin_rho_zero, aug_bd, zero_smul, sub_zero]
  | n + 1, i => by
    have ih := bd_rho n
    have hlin : ∀ c : Chain ι (n + 1), bd n (lin (rho (n + 1)) c) = lin (rho n) (bd n c) := by
      intro c
      have : (bd n).comp (lin (rho (ι := ι) (n + 1))) = (lin (rho (ι := ι) n)).comp (bd n) := by
        refine Finsupp.addHom_ext fun j z => ?_
        simp only [AddMonoidHom.comp_apply, lin_single, map_zsmul, ih]
        rw [← Finsupp.smul_single_one j z, map_zsmul, map_zsmul]
      exact congrArg (fun L => L c) this
    set x := lin (rho (n + 1)) (bd (n + 1) (Finsupp.single i 1)) with hxdef
    have hx : x ∈ Finsupp.supported ℤ ℤ (ordFrom (minIdx i)) := by
      refine Finsupp.supported_mono (ordIn_subset_ordFrom i) ?_
      refine map_mem_supported _ (fun j hj z => ?_) (bd_mem_rangeIn (single_mem_rangeIn i 1))
      rw [lin_single]
      exact Submodule.smul_mem _ z (Finsupp.supported_mono
        (fun k hk => mem_ordIn.2 ⟨(mem_ordIn.1 hk).1, (mem_ordIn.1 hk).2.trans (mem_rangeIn.1 hj)⟩)
        (rho_mem (n + 1) j))
    have hbx : bd n x = 0 := by rw [hxdef, hlin, bd_bd, map_zero]
    have key := bd_ocone_add_ocone_bd n (minIdx i) hx
    rw [hbx, map_zero, add_zero] at key
    change bd (n + 1) (ocone (minIdx i) x) = x
    exact key

theorem rho_of_strictMono : ∀ (n : ℕ) (i : Fin (n + 1) → ι), StrictMono i →
    rho n i = Finsupp.single i 1
  | 0, _, _ => rfl
  | n + 1, i, hi => by
    have h1 : lin (rho n) (bd n (Finsupp.single i 1)) = bd n (Finsupp.single i 1) := by

      rw [bd_single, map_sum]
      refine Finset.sum_congr rfl fun k _ => ?_
      rw [map_zsmul, lin_single, one_smul,
        rho_of_strictMono n _ (hi.comp (Fin.strictMono_succAbove k))]
    change ocone (minIdx i) (lin (rho n) (bd n (Finsupp.single i 1))) = _
    rw [h1, minIdx_of_strictMono hi]
    have key := bd_ocone_add_ocone_bd n (i 0) (c := Finsupp.single i 1)
      (Finsupp.single_mem_supported ℤ _ (mem_ordFrom.2 ⟨hi, le_rfl⟩))
    rw [ocone_single_of_not_lt (lt_irrefl _), map_zero, zero_add] at key
    exact key

noncomputable def hmt : (n : ℕ) → (Fin (n + 1) → ι) → Chain ι (n + 1)
  | 0, _ => 0
  | n + 1, i => cone (i 0)
      (Finsupp.single i 1 - rho (n + 1) i - lin (hmt n) (bd n (Finsupp.single i 1)))

theorem hmt_mem : ∀ (n : ℕ) (i : Fin (n + 1) → ι),
    hmt n i ∈ Finsupp.supported ℤ ℤ (rangeIn (Set.range i))
  | 0, _ => Submodule.zero_mem _
  | n + 1, i => by
    refine cone_mem_rangeIn (Set.mem_range_self 0) (Submodule.sub_mem _ (Submodule.sub_mem _
      (single_mem_rangeIn i 1) (Finsupp.supported_mono (ordIn_subset_rangeIn _) (rho_mem _ i))) ?_)
    exact lin_mem_rangeIn _ (fun j _ => hmt_mem n j) (bd_mem_rangeIn (single_mem_rangeIn i 1))

lemma lin_hmt_zero (c : Chain ι 0) : lin (hmt (ι := ι) 0) c = 0 := by
  induction c using Finsupp.induction_linear with
  | zero => simp
  | add f g hf hg => rw [map_add (f := _), hf, hg, add_zero]
  | single i z => rw [lin_single, hmt, smul_zero]

theorem boundary_homotopy : ∀ (n : ℕ) (i : Fin (n + 2) → ι),
    bd (n + 1) (hmt (n + 1) i) + lin (hmt n) (bd n (Finsupp.single i 1)) =
      Finsupp.single i 1 - rho (n + 1) i
  | n, i => by
    set y := Finsupp.single i 1 - rho (n + 1) i - lin (hmt n) (bd n (Finsupp.single i 1))
      with hydef
    have hby : bd n y = 0 := by
      rw [hydef, map_sub, map_sub, bd_rho]
      cases n with
      | zero => rw [lin_hmt_zero, lin_rho_zero, map_zero, sub_self, sub_zero]
      | succ n =>
        have ih := boundary_homotopy n
        have hlin : ∀ c : Chain ι (n + 1), bd (n + 1) (lin (hmt (n + 1)) c) =
            c - lin (rho (n + 1)) c - lin (hmt n) (bd n c) := by
          intro c
          have : (bd (n + 1)).comp (lin (hmt (ι := ι) (n + 1))) =
              AddMonoidHom.id _ - lin (rho (ι := ι) (n + 1)) - (lin (hmt (ι := ι) n)).comp (bd n) := by
            refine Finsupp.addHom_ext fun j z => ?_
            simp only [AddMonoidHom.comp_apply, AddMonoidHom.sub_apply, AddMonoidHom.id_apply,
              lin_single, map_zsmul]
            rw [← Finsupp.smul_single_one j z, map_zsmul, map_zsmul, ← smul_sub, ← smul_sub,
              ← ih j, add_sub_cancel_right]
          exact congrArg (fun L => L c) this
        rw [hlin, bd_bd, map_zero, sub_zero]
        abel
    have key := bd_cone_add_cone_bd n (i 0) y
    rw [hby, map_zero, add_zero] at key
    change bd (n + 1) (cone (i 0) y) + _ = _
    rw [key, hydef, sub_add_cancel]

end Order

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Chains =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Ordered =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Ordered", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechLeray\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Chains\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open CategoryTheory Opposite TopologicalSpace

universe w u

variable {X : TopCat.{u}} {ι : Type w} (P : (Opens X)ᵒᵖ ⥤ AddCommGrpCat.{u}) (U : ι → Opens X)

lemma inter_le_of_range {m n : ℕ} {i : Fin m → ι} {j : Fin n → ι}
    (h : Set.range j ⊆ Set.range i) : inter U i ≤ inter U j := by
  intro x hx
  rw [mem_inter_iff] at hx ⊢
  intro a
  obtain ⟨b, hb⟩ := h ⟨a, rfl⟩
  rw [← hb]
  exact hx b

def leSet {m n : ℕ} (i : Fin (n + 1) → ι) : Set (Fin (m + 1) → ι) := {j | inter U i ≤ inter U j}

variable {U} in
lemma mem_leSet {m n : ℕ} {i : Fin (n + 1) → ι} {j : Fin (m + 1) → ι} :
    j ∈ leSet U i ↔ inter U i ≤ inter U j := Iff.rfl

lemma rangeIn_subset_leSet {m n : ℕ} (i : Fin (n + 1) → ι) :
    rangeIn (n := m) (Set.range i) ⊆ leSet U i :=
  fun _ hj => mem_leSet.2 (inter_le_of_range U (mem_rangeIn.1 hj))

noncomputable def cval {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι) :
    P.obj (op (inter U i)) :=
  open Classical in if h : inter U i ≤ inter U j then res P h (σ j) else 0

lemma cval_of_le {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι)
    (h : inter U i ≤ inter U j) : cval P U σ i j = res P h (σ j) := dif_pos h

noncomputable def cev {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) :
    Chain ι m →+ P.obj (op (inter U i)) :=
  Finsupp.liftAddHom fun j => zmultiplesHom _ (cval P U σ i j)

lemma cev_single {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι) (z : ℤ) :
    cev P U σ i (Finsupp.single j z) = z • cval P U σ i j := by
  rw [cev, Finsupp.liftAddHom_apply_single, zmultiplesHom_apply]

lemma cev_self {n : ℕ} (σ : Cochain P U n) (i : Fin (n + 1) → ι) :
    cev P U σ i (Finsupp.single i 1) = σ i := by
  rw [cev_single, one_smul, cval_of_le P U σ i i le_rfl, res_refl]

lemma cev_add {m n : ℕ} (σ τ : Cochain P U m) (i : Fin (n + 1) → ι) (c : Chain ι m) :
    cev P U (σ + τ) i c = cev P U σ i c + cev P U τ i c := by
  have : cev P U (σ + τ) i = cev P U σ i + cev P U τ i := by
    refine Finsupp.addHom_ext fun j z => ?_
    rw [AddMonoidHom.add_apply, cev_single, cev_single, cev_single, ← smul_add]
    congr 1
    by_cases h : inter U i ≤ inter U j
    · rw [cval_of_le P U _ i j h, cval_of_le P U _ i j h, cval_of_le P U _ i j h, Pi.add_apply, map_add (f := _)]
    · simp only [cval, h, dif_neg, not_false_eq_true, add_zero]
  exact congrArg (fun L => L c) this

lemma cev_zero {m n : ℕ} (i : Fin (n + 1) → ι) (c : Chain ι m) : cev P U (0 : Cochain P U m) i c = 0 := by
  have h := cev_add P U (0 : Cochain P U m) 0 i c
  rw [add_zero] at h
  simpa using h

lemma res_cev {m n p : ℕ} (σ : Cochain P U m) {i : Fin (n + 1) → ι} {i' : Fin (p + 1) → ι}
    (h : inter U i ≤ inter U i') {c : Chain ι m} (hc : c ∈ Finsupp.supported ℤ ℤ (leSet U i')) :
    res P h (cev P U σ i' c) = cev P U σ i c := by
  refine eq_of_supported ((res P h).comp (cev P U σ i')) (cev P U σ i) (fun j hj z => ?_) hc
  rw [AddMonoidHom.comp_apply, cev_single, cev_single, map_zsmul,
    cval_of_le P U σ i' j (mem_leSet.1 hj), cval_of_le P U σ i j (h.trans (mem_leSet.1 hj)), res_res]

lemma cev_d {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) {c : Chain ι (m + 1)}
    (hc : c ∈ Finsupp.supported ℤ ℤ (leSet U i)) :
    cev P U (d P U m σ) i c = cev P U σ i (bd m c) := by
  refine eq_of_supported (cev P U (d P U m σ) i) ((cev P U σ i).comp (bd m)) (fun j hj z => ?_) hc

  rw [AddMonoidHom.comp_apply, cev_single, cval_of_le P U _ i j (mem_leSet.1 hj), d_apply, map_sum,
  Finset.smul_sum, bd_single, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  simp only [map_zsmul, res_res, cev_single]
  rw [cval_of_le P U σ i _ ((mem_leSet.1 hj).trans (inter_le_comp U j k.succAbove)), smul_comm]

lemma lin_bd_single {m n : ℕ} (f : (Fin (m + 1) → ι) → Chain ι n) (i : Fin (m + 2) → ι) :
    lin f (bd m (Finsupp.single i 1)) = ∑ k : Fin (m + 2), ((-1 : ℤ) ^ (k : ℕ)) • f (i ∘ k.succAbove) := by

  rw [bd_single, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_zsmul, lin_single, one_smul]

noncomputable def hstar [LinearOrder ι] (n : ℕ) : Cochain P U (n + 1) →+ Cochain P U n where
  toFun σ i := cev P U σ i (hmt n i)
  map_zero' := funext fun i => cev_zero P U i _
  map_add' σ τ := funext fun i => cev_add P U σ τ i _

lemma hstar_apply [LinearOrder ι] (n : ℕ) (σ : Cochain P U (n + 1)) (i : Fin (n + 1) → ι) :
    hstar P U n σ i = cev P U σ i (hmt n i) := rfl

abbrev OCochain [LinearOrder ι] (n : ℕ) : Type (max w u) :=
  ∀ i : {i : Fin (n + 1) → ι // StrictMono i}, P.obj (op (inter U i.1))

section Ordered

variable [LinearOrder ι]

noncomputable def od (n : ℕ) : OCochain P U n →+ OCochain P U (n + 1) where
  toFun τ i := ∑ k : Fin (n + 2), ((-1 : ℤ) ^ (k : ℕ)) •
    res P (inter_le_comp U i.1 k.succAbove) (τ ⟨i.1 ∘ k.succAbove, i.2.comp (Fin.strictMono_succAbove k)⟩)
  map_zero' := funext fun i => by simp
  map_add' τ τ' := funext fun i => by simp [Finset.sum_add_distrib, smul_add]

lemma od_apply (n : ℕ) (τ : OCochain P U n) (i : {i : Fin (n + 2) → ι // StrictMono i}) :
    od P U n τ i = ∑ k : Fin (n + 2), ((-1 : ℤ) ^ (k : ℕ)) •
      res P (inter_le_comp U i.1 k.succAbove)
        (τ ⟨i.1 ∘ k.succAbove, i.2.comp (Fin.strictMono_succAbove k)⟩) := rfl

def toOrd (n : ℕ) : Cochain P U n →+ OCochain P U n where
  toFun σ i := σ i.1
  map_zero' := rfl
  map_add' _ _ := rfl

lemma toOrd_d (n : ℕ) (σ : Cochain P U n) : od P U n (toOrd P U n σ) = toOrd P U (n + 1) (d P U n σ) := by
  funext i
  rw [od_apply]
  exact (d_apply P U n σ i.1).symm

def oleSet {m n : ℕ} (i : Fin (n + 1) → ι) : Set (Fin (m + 1) → ι) :=
  {j | StrictMono j ∧ inter U i ≤ inter U j}

variable {U} in
lemma mem_oleSet {m n : ℕ} {i : Fin (n + 1) → ι} {j : Fin (m + 1) → ι} :
    j ∈ oleSet U i ↔ StrictMono j ∧ inter U i ≤ inter U j := Iff.rfl

lemma ordIn_subset_oleSet {m n : ℕ} (i : Fin (n + 1) → ι) :
    ordIn (n := m) (Set.range i) ⊆ oleSet U i :=
  fun _ hj => mem_oleSet.2 ⟨(mem_ordIn.1 hj).1, inter_le_of_range U (mem_ordIn.1 hj).2⟩

noncomputable def cvalO {m n : ℕ} (τ : OCochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι) :
    P.obj (op (inter U i)) :=
  open Classical in
  if h : StrictMono j ∧ inter U i ≤ inter U j then res P h.2 (τ ⟨j, h.1⟩) else 0

lemma cvalO_of {m n : ℕ} (τ : OCochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι)
    (hj : StrictMono j) (h : inter U i ≤ inter U j) : cvalO P U τ i j = res P h (τ ⟨j, hj⟩) :=
  dif_pos ⟨hj, h⟩

noncomputable def cevO {m n : ℕ} (τ : OCochain P U m) (i : Fin (n + 1) → ι) :
    Chain ι m →+ P.obj (op (inter U i)) :=
  Finsupp.liftAddHom fun j => zmultiplesHom _ (cvalO P U τ i j)

lemma cevO_single {m n : ℕ} (τ : OCochain P U m) (i : Fin (n + 1) → ι) (j : Fin (m + 1) → ι)
    (z : ℤ) : cevO P U τ i (Finsupp.single j z) = z • cvalO P U τ i j := by
  rw [cevO, Finsupp.liftAddHom_apply_single, zmultiplesHom_apply]

lemma cevO_add {m n : ℕ} (τ τ' : OCochain P U m) (i : Fin (n + 1) → ι) (c : Chain ι m) :
    cevO P U (τ + τ') i c = cevO P U τ i c + cevO P U τ' i c := by
  have : cevO P U (τ + τ') i = cevO P U τ i + cevO P U τ' i := by
    refine Finsupp.addHom_ext fun j z => ?_
    rw [AddMonoidHom.add_apply, cevO_single, cevO_single, cevO_single, ← smul_add]
    congr 1
    by_cases h : StrictMono j ∧ inter U i ≤ inter U j
    · rw [cvalO_of P U _ i j h.1 h.2, cvalO_of P U _ i j h.1 h.2, cvalO_of P U _ i j h.1 h.2,
        Pi.add_apply, map_add]
    · simp only [cvalO, h, dif_neg, not_false_eq_true, add_zero]
  exact congrArg (fun L => L c) this

lemma cevO_zero {m n : ℕ} (i : Fin (n + 1) → ι) (c : Chain ι m) :
    cevO P U (0 : OCochain P U m) i c = 0 := by
  have h := cevO_add P U (0 : OCochain P U m) 0 i c
  rw [add_zero] at h
  simpa using h

lemma res_cevO {m n p : ℕ} (τ : OCochain P U m) {i : Fin (n + 1) → ι} {i' : Fin (p + 1) → ι}
    (h : inter U i ≤ inter U i') {c : Chain ι m} (hc : c ∈ Finsupp.supported ℤ ℤ (oleSet U i')) :
    res P h (cevO P U τ i' c) = cevO P U τ i c := by
  refine eq_of_supported ((res P h).comp (cevO P U τ i')) (cevO P U τ i) (fun j hj z => ?_) hc
  obtain ⟨hjm, hjle⟩ := mem_oleSet.1 hj
  rw [AddMonoidHom.comp_apply, cevO_single, cevO_single, map_zsmul, cvalO_of P U τ i' j hjm hjle,
    cvalO_of P U τ i j hjm (h.trans hjle), res_res]

lemma cevO_od {m n : ℕ} (τ : OCochain P U m) (i : Fin (n + 1) → ι) {c : Chain ι (m + 1)}
    (hc : c ∈ Finsupp.supported ℤ ℤ (oleSet U i)) :
    cevO P U (od P U m τ) i c = cevO P U τ i (bd m c) := by
  refine eq_of_supported (cevO P U (od P U m τ) i) ((cevO P U τ i).comp (bd m))
    (fun j hj z => ?_) hc
  obtain ⟨hjm, hjle⟩ := mem_oleSet.1 hj

  rw [AddMonoidHom.comp_apply, cevO_single, cvalO_of P U _ i j hjm hjle, od_apply, map_sum,
  Finset.smul_sum, bd_single, map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  simp only [map_zsmul, res_res, cevO_single]
  rw [cvalO_of P U τ i _ (hjm.comp (Fin.strictMono_succAbove k))
    (hjle.trans (inter_le_comp U j k.succAbove)), smul_comm]

lemma cevO_toOrd {m n : ℕ} (σ : Cochain P U m) (i : Fin (n + 1) → ι) {c : Chain ι m}
    (hc : c ∈ Finsupp.supported ℤ ℤ (oleSet U i)) :
    cevO P U (toOrd P U m σ) i c = cev P U σ i c := by
  refine eq_of_supported _ _ (fun j hj z => ?_) hc
  obtain ⟨hjm, hjle⟩ := mem_oleSet.1 hj
  rw [cevO_single, cev_single, cvalO_of P U _ i j hjm hjle, cval_of_le P U σ i j hjle]
  rfl

noncomputable def fromOrd (n : ℕ) : OCochain P U n →+ Cochain P U n where
  toFun τ i := cevO P U τ i (rho n i)
  map_zero' := funext fun i => cevO_zero P U i _
  map_add' τ τ' := funext fun i => cevO_add P U τ τ' i _

lemma fromOrd_apply (n : ℕ) (τ : OCochain P U n) (i : Fin (n + 1) → ι) :
    fromOrd P U n τ i = cevO P U τ i (rho n i) := rfl

lemma rho_mem_oleSet (n : ℕ) (i : Fin (n + 1) → ι) :
    rho n i ∈ Finsupp.supported ℤ ℤ (oleSet U i) :=
  Finsupp.supported_mono (ordIn_subset_oleSet U i) (rho_mem n i)

theorem toOrd_fromOrd (n : ℕ) (τ : OCochain P U n) : toOrd P U n (fromOrd P U n τ) = τ := by
  funext i
  change cevO P U τ i.1 (rho n i.1) = τ i
  rw [rho_of_strictMono n i.1 i.2, cevO_single, one_smul, cvalO_of P U τ i.1 i.1 i.2 le_rfl,
    res_refl]

theorem d_fromOrd (n : ℕ) (τ : OCochain P U n) :
    d P U n (fromOrd P U n τ) = fromOrd P U (n + 1) (od P U n τ) := by
  funext i

  rw [d_apply, fromOrd_apply, cevO_od P U τ i (rho_mem_oleSet U (n + 1) i), bd_rho, lin_bd_single,
  map_sum]
  refine Finset.sum_congr rfl fun k _ => ?_
  rw [map_zsmul, fromOrd_apply, res_cevO P U τ (inter_le_comp U i k.succAbove)
    (rho_mem_oleSet U n _)]

lemma fromOrd_toOrd_zero (σ : Cochain P U 0) : fromOrd P U 0 (toOrd P U 0 σ) = σ := by
  funext i
  change cevO P U (toOrd P U 0 σ) i (Finsupp.single i 1) = σ i
  rw [cevO_single, one_smul, cvalO_of P U _ i i (strictMono_of_fin_one i) le_rfl, res_refl]
  rfl

theorem d_hstar_add (n : ℕ) (σ : Cochain P U (n + 1)) :
    d P U n (hstar P U n σ) + hstar P U (n + 1) (d P U (n + 1) σ) =
      σ - fromOrd P U (n + 1) (toOrd P U (n + 1) σ) := by
  funext i
  have hm : hmt (n + 1) i ∈ Finsupp.supported ℤ ℤ (leSet U i) :=
    Finsupp.supported_mono (rangeIn_subset_leSet U i) (hmt_mem (n + 1) i)
  have hsum : d P U n (hstar P U n σ) i = cev P U σ i (lin (hmt n) (bd n (Finsupp.single i 1))) := by

    rw [d_apply, lin_bd_single, map_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [map_zsmul, hstar_apply, res_cev P U σ (inter_le_comp U i k.succAbove)
      (Finsupp.supported_mono (rangeIn_subset_leSet U _) (hmt_mem n _))]
  rw [Pi.add_apply, Pi.sub_apply, hsum, hstar_apply, cev_d P U σ i hm, fromOrd_apply,
    cevO_toOrd P U σ i (rho_mem_oleSet U (n + 1) i), ← map_add,
    add_comm (lin (hmt n) (bd n (Finsupp.single i 1))), boundary_homotopy, map_sub, cev_self]

noncomputable def ococycles (n : ℕ) : AddSubgroup (OCochain P U n) := (od P U n).ker

noncomputable def ocoboundaries : (n : ℕ) → AddSubgroup (OCochain P U n)
  | 0 => ⊥
  | n + 1 => (od P U n).range

abbrev ocechH (n : ℕ) : Type (max w u) :=
  ococycles P U n ⧸ (ocoboundaries P U n).addSubgroupOf (ococycles P U n)

noncomputable def toOrdCocycles (n : ℕ) : cocycles P U n →+ ococycles P U n :=
  AddMonoidHom.codRestrict ((toOrd P U n).comp (cocycles P U n).subtype) (ococycles P U n)
    fun σ => AddMonoidHom.mem_ker.2 (by
      change od P U n (toOrd P U n σ.1) = 0
      rw [toOrd_d, (mem_cocycles σ.1).1 σ.2, map_zero])

noncomputable def fromOrdCocycles (n : ℕ) : ococycles P U n →+ cocycles P U n :=
  AddMonoidHom.codRestrict ((fromOrd P U n).comp (ococycles P U n).subtype) (cocycles P U n)
    fun τ => (mem_cocycles _).2 (by
      change d P U n (fromOrd P U n τ.1) = 0
      rw [d_fromOrd, AddMonoidHom.mem_ker.1 τ.2, map_zero])

noncomputable def toOrdH (n : ℕ) : cechH P U n →+ ocechH P U n :=
  QuotientAddGroup.map _ _ (toOrdCocycles P U n) (by
    intro σ hσ
    rw [AddSubgroup.mem_comap, AddSubgroup.mem_addSubgroupOf]
    rw [AddSubgroup.mem_addSubgroupOf] at hσ
    cases n with
    | zero =>
      rw [coboundaries_zero, AddSubgroup.mem_bot] at hσ
      change toOrd P U 0 σ.1 ∈ ocoboundaries P U 0
      rw [hσ, map_zero]
      exact AddSubgroup.zero_mem _
    | succ n =>
      rw [coboundaries_succ] at hσ
      obtain ⟨τ, hτ⟩ := AddMonoidHom.mem_range.1 hσ
      change toOrd P U (n + 1) σ.1 ∈ (od P U n).range
      exact ⟨toOrd P U n τ, by rw [toOrd_d, hτ]⟩)

noncomputable def fromOrdH (n : ℕ) : ocechH P U n →+ cechH P U n :=
  QuotientAddGroup.map _ _ (fromOrdCocycles P U n) (by
    intro τ hτ
    rw [AddSubgroup.mem_comap, AddSubgroup.mem_addSubgroupOf]
    rw [AddSubgroup.mem_addSubgroupOf] at hτ
    cases n with
    | zero =>
      change τ.1 ∈ (⊥ : AddSubgroup (OCochain P U 0)) at hτ
      rw [AddSubgroup.mem_bot] at hτ
      change fromOrd P U 0 τ.1 ∈ coboundaries P U 0
      rw [hτ, map_zero]
      exact AddSubgroup.zero_mem _
    | succ n =>
      change τ.1 ∈ (od P U n).range at hτ
      obtain ⟨ρ, hρ⟩ := AddMonoidHom.mem_range.1 hτ
      change fromOrd P U (n + 1) τ.1 ∈ coboundaries P U (n + 1)
      rw [coboundaries_succ]
      exact ⟨fromOrd P U n ρ, by rw [d_fromOrd, hρ]⟩)

lemma toOrdH_fromOrdH (n : ℕ) (x : ocechH P U n) : toOrdH P U n (fromOrdH P U n x) = x := by
  induction x using QuotientAddGroup.induction_on with
  | H τ =>
    change (QuotientAddGroup.mk (toOrdCocycles P U n (fromOrdCocycles P U n τ)) : ocechH P U n) =
      QuotientAddGroup.mk τ
    congr 1
    exact Subtype.ext (toOrd_fromOrd P U n τ.1)

lemma fromOrdH_toOrdH (n : ℕ) (x : cechH P U n) : fromOrdH P U n (toOrdH P U n x) = x := by
  induction x using QuotientAddGroup.induction_on with
  | H σ =>
    change (QuotientAddGroup.mk (fromOrdCocycles P U n (toOrdCocycles P U n σ)) : cechH P U n) =
      QuotientAddGroup.mk σ
    rw [QuotientAddGroup.eq, AddSubgroup.mem_addSubgroupOf]
    change -fromOrd P U n (toOrd P U n σ.1) + σ.1 ∈ coboundaries P U n
    cases n with
    | zero =>
      rw [fromOrd_toOrd_zero, neg_add_cancel]
      exact AddSubgroup.zero_mem _
    | succ n =>
      have h := d_hstar_add P U n σ.1
      rw [(mem_cocycles σ.1).1 σ.2, map_zero, add_zero] at h
      rw [neg_add_eq_sub, ← h, coboundaries_succ]
      exact AddMonoidHom.mem_range.2 ⟨_, rfl⟩

noncomputable def cechHOrderedEquiv (n : ℕ) : cechH P U n ≃+ ocechH P U n where
  toFun := toOrdH P U n
  invFun := fromOrdH P U n
  left_inv := fromOrdH_toOrdH P U n
  right_inv := toOrdH_fromOrdH P U n
  map_add' := map_add _

lemma isEmpty_strictMono [Finite ι] {n : ℕ} (hn : Nat.card ι ≤ n) :
    IsEmpty {i : Fin (n + 1) → ι // StrictMono i} := by
  refine ⟨fun i => ?_⟩
  have := Fintype.ofFinite ι
  have h := Fintype.card_le_of_injective i.1 i.2.injective
  rw [Fintype.card_fin, ← Nat.card_eq_fintype_card] at h
  omega

end Ordered

theorem cechH_subsingleton [Finite ι] {n : ℕ} (hn : Nat.card ι ≤ n) :
    Subsingleton (cechH P U n) := by
  let : LinearOrder ι := LinearOrder.lift' (Finite.equivFin ι) (Finite.equivFin ι).injective
  have := isEmpty_strictMono (ι := ι) hn
  have : Subsingleton (ocechH P U n) := ⟨fun a b => by
    induction a using QuotientAddGroup.induction_on with
    | H a =>
      induction b using QuotientAddGroup.induction_on with
      | H b =>
        congr 1
        exact Subtype.ext (Subsingleton.elim _ _)⟩
  exact (cechHOrderedEquiv P U n).injective.subsingleton

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Ordered =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjCechCompute\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.CechOrdered\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjTwistLeray\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry TopologicalSpace CategoryTheory Opposite MvPolynomial

universe w' u

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

namespace ProjSpace

variable {A : Type u} [CommRing A] {n : ℕ}
  [HasExt.{w'} (Sheaf (Opens.grothendieckTopology (projectiveSpace A n).toTopCat) AddCommGrpCat.{u})]

theorem nonempty_HTop_equiv (k : ℤ) (hn : 0 < n) :
    Nonempty (Sheaf.H.{w'} (modulesAb (twistingSheaf (grading A n) k)) n ≃+
      (NegMon (n := n) k →₀ A)) := by
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 1 := ⟨n - 1, by omega⟩
  have hCech := nonempty_cechH_equiv_H_twist (𝒜 := grading A (m + 1))
    (fun j => MvPolynomial.X j) (fun j => X_mem j) iSup_stdOpen k (m + 1)
  obtain ⟨e⟩ := hCech
  exact ⟨e.symm.trans (cechHTopEquiv k m)⟩

theorem subsingleton_H (k : ℤ) {q : ℕ} (hq0 : 0 < q) (hqn : q ≠ n) :
    Subsingleton (Sheaf.H.{w'} (modulesAb (twistingSheaf (grading A n) k)) q) := by
  have hCech := nonempty_cechH_equiv_H_twist (𝒜 := grading A n)
    (fun j => MvPolynomial.X j) (fun j => X_mem j) iSup_stdOpen k q
  obtain ⟨e⟩ := hCech
  have hSubsingleton :
      Subsingleton (cechH (twistAb (A := A) (n := n) k) (cover (A := A) (n := n)) q) := by
    rcases Nat.lt_or_gt_of_ne hqn with h | h
    · exact subsingleton_cechH_of_lt hq0 h
    · have hcard : Fintype.card (Fin (n + 1)) ≤ q := by simpa using h
      exact CechOrdered.subsingleton_cechH hcard hq0
  exact @Equiv.subsingleton _ _ e.symm.toEquiv hSubsingleton

end ProjSpace

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.PSpaceFinite =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.PSpaceFinite", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjCechCompute\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjTwistLeray\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.Ordered\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Monoidal.Mon\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits MonoidalCategory
  MvPolynomial

universe w' u

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

section General

variable {A σ : Type u} [CommRing A] [SetLike σ A] [AddSubgroupClass σ A]
variable (𝒜 : ℕ → σ) [GradedRing 𝒜]

lemma ι_appTop_toSpecZero (z : 𝒜 0) :
    (Proj.basicOpen 𝒜 1).ι.appTop ((Proj.toSpecZero 𝒜).appTop ((Scheme.ΓSpecIso _).inv z)) =
      (Proj.basicOpen 𝒜 1).topIso.inv
        (Proj.awayToSection 𝒜 1 (HomogeneousLocalization.fromZeroRingHom 𝒜 _ z)) := by
  rw [← CommRingCat.comp_apply, ← Scheme.Hom.comp_appTop]
  have h1 : (Proj.basicOpen 𝒜 1).ι ≫ (Proj 𝒜).topIso.inv ≫
      ((Proj 𝒜).isoOfEq (Proj.basicOpen_one 𝒜)).inv = 𝟙 _ := by
    rw [← cancel_mono (Proj.basicOpen 𝒜 1).ι]
    simp
  have h : (Proj.basicOpen 𝒜 1).ι ≫ Proj.toSpecZero 𝒜 = Proj.basicOpenToSpec 𝒜 1 ≫
      Spec.map (CommRingCat.ofHom (HomogeneousLocalization.fromZeroRingHom 𝒜 _)) := by
    rw [Proj.toSpecZero, reassoc_of% h1]
  rw [h, Scheme.Hom.comp_appTop, CommRingCat.comp_apply,
    ← CommRingCat.comp_apply (Scheme.ΓSpecIso _).inv, ← Scheme.ΓSpecIso_inv_naturality,
    CommRingCat.comp_apply, Scheme.Hom.appTop, Proj.basicOpenToSpec_app_top]
  simp
  rfl

def projValue {U : (Proj 𝒜).Opens} (s : Γ(Proj 𝒜, U)) (x : Proj 𝒜) (hx : x ∈ U) :
    ProjTwist.Loc 𝒜 x :=
  ((show (ProjectiveSpectrum.Proj.structureSheaf 𝒜).1.obj (op U) from s).1 ⟨x, hx⟩).val

lemma projValue_toSpecZero (z : 𝒜 0) (x : Proj 𝒜) :
    projValue 𝒜 ((Proj.toSpecZero 𝒜).appTop ((Scheme.ΓSpecIso _).inv z)) x trivial =
      algebraMap A _ (z : A) := by
  have hx : x ∈ Proj.basicOpen 𝒜 1 := by rw [Proj.basicOpen_one]; trivial
  have hx' : x ∈ (Proj.basicOpen 𝒜 1).ι ''ᵁ ⊤ := by rw [Scheme.Opens.ι_image_top]; exact hx
  have e := congrArg (fun s => projValue 𝒜 (U := (Proj.basicOpen 𝒜 1).ι ''ᵁ ⊤) s x hx')
    (ι_appTop_toSpecZero 𝒜 z)
  simp only [Scheme.Opens.ι_appTop, Scheme.Opens.topIso_inv] at e
  have e' : projValue 𝒜 ((Proj.toSpecZero 𝒜).appTop ((Scheme.ΓSpecIso _).inv z)) x trivial =
      projValue 𝒜 (Proj.awayToSection 𝒜 1 (HomogeneousLocalization.fromZeroRingHom 𝒜 _ z)) x hx := e
  refine e'.trans ?_
  unfold projValue
  erw [ProjectiveSpectrum.Proj.awayToSection_apply]
  change (IsLocalization.map _ (RingHom.id A) _) (HomogeneousLocalization.mk _).val = _
  rw [HomogeneousLocalization.val_mk, Localization.mk_eq_mk', IsLocalization.map_mk',
    IsLocalization.mk'_eq_iff_eq_mul]
  simp

end General

namespace ProjSpace

variable {A : Type u} [CommRing A] {n : ℕ}

attribute [local instance] algebraOfOver

lemma algebraMap_eq_toSpecZero (a : A) : algebraMap A Γ(projectiveSpace A n, ⊤) a =
    (Proj.toSpecZero (grading A n)).appTop
      ((Scheme.ΓSpecIso _).inv (algebraMap A (grading A n 0) a)) := by
  change (toSpecBase A n).appTop ((Scheme.ΓSpecIso (CommRingCat.of A)).inv a) = _
  rw [toSpecBase, Scheme.Hom.comp_appTop, ← CommRingCat.comp_apply, ← Category.assoc,
    ← Scheme.ΓSpecIso_inv_naturality]
  rfl

lemma projValue_algebraMap (a : A) (x : projectiveSpace A n) :
    projValue (grading A n) (algebraMap A Γ(projectiveSpace A n, ⊤) a) x trivial =
      algebraMap (MvPolynomial (Fin (n + 1)) A) _ (C a) := by
  rw [algebraMap_eq_toSpecZero, projValue_toSpecZero]
  rfl

def smulLDeg (a : A) {s : Set (Fin (n + 1))} {k : ℤ} (ℓ : LDeg A s k) : LDeg A s k :=
  ⟨a • ℓ.1, fun m hm => ℓ.2 m fun h => hm (by rw [AddMonoidAlgebra.coeff_smul_apply, h, smul_zero])⟩

@[simp] lemma smulLDeg_val (a : A) {s : Set (Fin (n + 1))} {k : ℤ} (ℓ : LDeg A s k) :
    (smulLDeg a ℓ).1 = a • ℓ.1 := rfl

lemma toLaurent_C (a : A) : toLaurent A n (C a) = AddMonoidAlgebra.single 0 a := by
  rw [MvPolynomial.C_apply, toLaurent_monomial, map_zero]

lemma single_zero_mul_eq_smul (a : A) (ℓ : Laurent A n) :
    AddMonoidAlgebra.single 0 a * ℓ = a • ℓ := by
  apply AddMonoidAlgebra.coeff_injective
  ext m
  rw [AddMonoidAlgebra.coeff_single_zero_mul, AddMonoidAlgebra.coeff_smul_apply, smul_eq_mul]

lemma algebraMap_C_mem_awayDeg {p : ℕ} (i : Fin (p + 1) → Fin (n + 1)) (a : A) :
    algebraMap (MvPolynomial (Fin (n + 1)) A) (Localization.Away (xprod (A := A) i)) (C a) ∈
      ProjTwist.awayDeg (grading A n) (xprod_mem i) (Nat.succ_pos p) 0 := by
  have h := ProjTwist.mk_mem_awayDeg (xprod_mem i) (Nat.succ_pos p) (k := 0) (n := 0)
    (j := 0) (a := C a) (MvPolynomial.isHomogeneous_C _ a) (by simp)
  have e : ProjTwist.fpow (xprod (A := A) i) 0 = 1 := Subtype.ext (pow_zero _)
  rwa [e, Localization.mk_one_eq_algebraMap] at h

lemma theta_smulLDeg {p : ℕ} (i : Fin (p + 1) → Fin (n + 1)) (k : ℤ) (a : A)
    (ℓ : LDeg A (Set.range i) k) :
    theta i k (smulLDeg a ℓ) =
      (restrictTop (inter (cover A n) i) (algebraMap A Γ(projectiveSpace A n, ⊤) a) •
        (show Γ(twistingSheaf (grading A n) k, inter (cover A n) i) from theta i k ℓ)) := by
  set z := (awayDegEquiv (A := A) i k).symm ℓ with hz
  have hmem : algebraMap (MvPolynomial (Fin (n + 1)) A) (Localization.Away (xprod (A := A) i)) (C a) *
      z.1 ∈ ProjTwist.awayDeg (grading A n) (xprod_mem i) (Nat.succ_pos p) k := by
    have := ProjTwist.mul_mem_awayDeg (xprod_mem i) (Nat.succ_pos p)
      (algebraMap_C_mem_awayDeg i a) z.2
    rwa [zero_add] at this
  have h2 : (awayDegEquiv (A := A) i k).symm (smulLDeg a ℓ) = ⟨_, hmem⟩ := by
    rw [AddEquiv.symm_apply_eq]
    apply Subtype.ext
    rw [awayDegEquiv_apply, map_mul, awayToLaurent_algebraMap, smulLDeg_val, toLaurent_C,
      single_zero_mul_eq_smul]
    congr 1
    rw [← awayDegEquiv_apply, hz, AddEquiv.apply_symm_apply]
  apply Subtype.ext
  funext x
  change ProjTwist.val (theta i k (smulLDeg a ℓ)) x =
    ProjTwist.val (restrictTop (inter (cover A n) i)
      (algebraMap A Γ(projectiveSpace A n, ⊤) a) •
        (show Γ(twistingSheaf (grading A n) k, inter (cover A n) i) from theta i k ℓ)) x
  change ProjTwist.val (theta i k (smulLDeg a ℓ)) x =
    ((restrictTop (inter (cover A n) i)
      (algebraMap A Γ(projectiveSpace A n, ⊤) a)).1 x).val * ProjTwist.val (theta i k ℓ) x
  erw [val_theta, val_theta, h2]
  change ProjTwist.locMap x.1 _ (_ * _) = _
  rw [map_mul]
  congr 1
  exact (ProjTwist.locMap_algebraMap (𝒜 := grading A n) x.1 _ (C a)).trans
    (projValue_algebraMap a x.1).symm

lemma lval_push_smul {k : ℤ} {p : ℕ} (a : A) (σ : Cochain (twistAb A n k) (cover A n) p)
    (i : Fin (p + 1) → Fin (n + 1)) :
    lval (push (cover A n) (smulAbRingHom (twistingSheaf (grading A n) k)
      (algebraMap A Γ(projectiveSpace A n, ⊤) a)).asHom.hom p σ) i = a • lval σ i := by
  have h : push (cover A n) (smulAbRingHom (twistingSheaf (grading A n) k)
      (algebraMap A Γ(projectiveSpace A n, ⊤) a)).asHom.hom p σ i =
      theta i k (smulLDeg a ⟨lval σ i, lval_mem σ i⟩) := by
    rw [theta_smulLDeg, theta_lval]
    rfl
  rw [lval, h, AddEquiv.symm_apply_apply]
  rfl

section Leray

variable [HasExt.{w'} (Sheaf (Opens.grothendieckTopology (projectiveSpace A n).toTopCat) AddCommGrpCat.{u})]

def cechHLinearEquivTwist (k : ℤ) (p : ℕ) :
    cechH (twistAb A n k) (cover A n) p ≃ₗ[A]
      Sheaf.H.{w'} (modulesAb (twistingSheaf (grading A n) k)) p :=
  (cechHEquiv (isCoverSystem_affineUnder (fun j : Fin (n + 1) => (X j : MvPolynomial (Fin (n + 1)) A)))
    (cover A n) iSup_stdOpen (fun {_} i => ⟨isAffineOpen_inter i, i 0, inter_le _ i 0⟩) p _
    (goodAcyclic_twist _ (fun j => X_mem j) k)).toLinearEquiv fun a x => by
      rw [cechH.smul_def, H.smul_def]
      exact cechHEquiv_naturality _ (cover A n) iSup_stdOpen
        (fun {_} i => ⟨isAffineOpen_inter i, i 0, inter_le _ i 0⟩) p _ _
        (smulAbRingHom (twistingSheaf (grading A n) k)
          (algebraMap A Γ(projectiveSpace A n, ⊤) a)).asHom x

end Leray

lemma smul_cls {k : ℤ} {p : ℕ} (a : A) (σ : Cochain (twistAb A n k) (cover A n) p)
    (hσ : d _ _ p σ = 0) :
    a • cls σ hσ = cls (push (cover A n) (smulAbRingHom (twistingSheaf (grading A n) k)
      (algebraMap A Γ(projectiveSpace A n, ⊤) a)).asHom.hom p σ)
        (by rw [← push_d, hσ, map_zero]) :=
  cechHMap_cls (cover A n) _ σ hσ

instance finite_negMon (m : ℕ) (k : ℤ) : Finite (NegMon m k) := by
  refine Finite.of_injective (β := Fin (m + 1) → Set.Icc k (-1))
    (fun e j => ⟨e.1 j, ?_, ?_⟩) fun e e' h => Subtype.ext (funext fun j => ?_)
  · have hsum := Finset.add_sum_erase Finset.univ e.1 (Finset.mem_univ j)
    have hle : ∑ i ∈ Finset.univ.erase j, e.1 i ≤ 0 :=
      Finset.sum_nonpos fun i _ => (e.2.1 i).le
    rw [e.2.2] at hsum
    omega
  · have := e.2.1 j
    omega
  · exact congrArg Subtype.val (congrFun h j)

theorem finite_cechH_top (k : ℤ) (m : ℕ) :
    Module.Finite A (cechH (twistAb A (m + 1) k) (cover A (m + 1)) (m + 1)) := by
  refine Module.Finite.equiv ((AddEquiv.ofBijective _
    (topMap_bijective (A := A) (k := k) (m := m))).toLinearEquiv fun a c => ?_).symm
  obtain ⟨σ, hσ, rfl⟩ := exists_cls c
  change topMap (a • cls σ hσ) = a • topMap (cls σ hσ)
  rw [smul_cls, topMap_cls, topMap_cls]
  ext e
  rw [topCoeff_apply, Finsupp.smul_apply, topCoeff_apply, lval_push_smul,
    AddMonoidAlgebra.coeff_smul_apply]

def zeroL (k : ℤ) : cechH (twistAb A n k) (cover A n) 0 →+ Laurent A n :=
  QuotientAddGroup.lift _
    ((AddMonoidHom.mk' (fun σ : Cochain (twistAb A n k) (cover A n) 0 => lval σ fun _ => 0)
      fun σ τ => lval_add σ τ _).comp (cocycles _ _ 0).subtype) (by
    intro x hx
    rw [AddSubgroup.mem_addSubgroupOf, coboundaries_zero, AddSubgroup.mem_bot] at hx
    simp [hx])

lemma zeroL_cls {k : ℤ} (σ : Cochain (twistAb A n k) (cover A n) 0) (hσ : d _ _ 0 σ = 0) :
    zeroL k (cls σ hσ) = lval σ fun _ => 0 := rfl

lemma zeroL_smul {k : ℤ} (a : A) (c : cechH (twistAb A n k) (cover A n) 0) :
    zeroL k (a • c) = a • zeroL k c := by
  obtain ⟨σ, hσ, rfl⟩ := exists_cls c
  rw [smul_cls, zeroL_cls, zeroL_cls, lval_push_smul]

lemma zeroL_injective {k : ℤ} : Function.Injective (zeroL (A := A) (n := n) k) := by
  rw [injective_iff_map_eq_zero]
  intro c hc
  obtain ⟨σ, hσ, rfl⟩ := exists_cls c
  rw [zeroL_cls] at hc
  have : σ = 0 := cochain_ext fun j => by
    rw [lval_eq_of_cocycle σ hσ j (fun _ => 0), hc, lval_zero]
  subst this
  exact cls_zero

lemma zeroL_mem {k : ℤ} (c : cechH (twistAb A n k) (cover A n) 0) (j : Fin (n + 1)) :
    zeroL k c ∈ LDeg A {j} k := by
  obtain ⟨σ, hσ, rfl⟩ := exists_cls c
  rw [zeroL_cls, lval_eq_of_cocycle σ hσ (fun _ => 0) (fun _ => j)]
  have := lval_mem σ (fun _ => j)
  rwa [range_const_fin_one] at this

lemma exists_zeroL_eq {k : ℤ} (ℓ : Laurent A n) (hℓ : ∀ j, ℓ ∈ LDeg A {j} k) :
    ∃ c, zeroL k c = ℓ := by
  let σ : Cochain (twistAb A n k) (cover A n) 0 :=
    ofL fun i => ⟨ℓ, by rw [range_const_fin_one]; exact hℓ (i 0)⟩
  have hσ : d _ _ 0 σ = 0 := by
    refine cochain_ext fun i => ?_
    rw [lval_d, lval_zero, Fin.sum_univ_succ, Fin.sum_univ_succ, Fin.sum_univ_zero]
    simp [σ]
  exact ⟨cls σ hσ, by rw [zeroL_cls]; simp [σ]⟩

lemma allowed_bound {k : ℤ} {m : Fin (n + 1) → ℤ} (h : ∀ j, Allowed {j} k m) (j : Fin (n + 1)) :
    m j ∈ Set.Icc (-|k|) |k| := by
  by_cases hn : ∃ j', j' ≠ j
  · obtain ⟨j', hj'⟩ := hn
    have hnn : ∀ i, 0 ≤ m i := fun i => by
      by_cases hi : i = j
      · subst hi
        exact (h j').2 i (by simpa [eq_comm] using hj'.symm)
      · exact (h j).2 i (by simpa using hi)
    have hle : m j ≤ ∑ i, m i := Finset.single_le_sum (fun i _ => hnn i) (Finset.mem_univ j)
    rw [(h j).1] at hle
    have := hnn j
    constructor <;> [skip; skip] <;> cases abs_cases k <;> omega
  · push Not at hn
    have hs : ∑ i, m i = m j := Finset.sum_eq_single j (fun i _ hi => absurd (hn i) hi) (by simp)
    rw [(h j).1] at hs
    constructor <;> cases abs_cases k <;> omega

lemma finite_allowed (k : ℤ) : {m : Fin (n + 1) → ℤ | ∀ j, Allowed {j} k m}.Finite :=
  (Set.Finite.pi (t := fun _ : Fin (n + 1) => Set.Icc (-|k|) |k|)
    fun _ => Set.finite_Icc _ _).subset fun m hm => by
      simp only [Set.mem_pi, Set.mem_univ, true_implies]
      exact fun j => allowed_bound hm j

theorem finite_cechH_zero (k : ℤ) : Module.Finite A (cechH (twistAb A n k) (cover A n) 0) := by
  let ζ : cechH (twistAb A n k) (cover A n) 0 →ₗ[A] Laurent A n :=
    { zeroL k with map_smul' := zeroL_smul }
  have hζ : Function.Injective ζ := zeroL_injective
  let T : Set (Laurent A n) :=
    (fun m => AddMonoidAlgebra.single m (1 : A)) '' {m | ∀ j, Allowed {j} k m}
  have hrange : LinearMap.range ζ = Submodule.span A T := by
    apply le_antisymm
    · rintro _ ⟨c, rfl⟩
      have hmem := zeroL_mem (A := A) c
      set ℓ := zeroL k c
      have hℓ : ℓ = ∑ m ∈ ℓ.coeff.support, ℓ.coeff m • AddMonoidAlgebra.single m (1 : A) := by
        apply AddMonoidAlgebra.coeff_injective
        ext m
        rw [coeff_sum']
        simp only [AddMonoidAlgebra.coeff_smul_apply, AddMonoidAlgebra.coeff_single,
          Finsupp.single_apply, smul_eq_mul, mul_ite, mul_one, mul_zero]
        rw [Finset.sum_ite_eq']
        split_ifs with hm
        · rfl
        · exact Finsupp.notMem_support_iff.mp hm
      change ℓ ∈ _
      rw [hℓ]
      refine Submodule.sum_mem _ fun m hm => Submodule.smul_mem _ _ (Submodule.subset_span ?_)
      exact ⟨m, fun j => hmem j m (Finsupp.mem_support_iff.mp hm), rfl⟩
    · rw [Submodule.span_le]
      rintro _ ⟨m, hm, rfl⟩
      obtain ⟨c, hc⟩ := exists_zeroL_eq (A := A) (k := k) _ fun j => single_mem_LDeg (hm j) 1
      exact ⟨c, hc⟩
  have : Module.Finite A (LinearMap.range ζ) := by
    rw [Module.Finite.iff_fg, hrange]
    exact Submodule.fg_span ((finite_allowed k).image _)
  exact Module.Finite.equiv (LinearEquiv.ofInjective ζ hζ).symm

theorem finite_cechH (k : ℤ) (p : ℕ) : Module.Finite A (cechH (twistAb A n k) (cover A n) p) := by
  rcases Nat.eq_zero_or_pos p with rfl | hp
  · exact finite_cechH_zero k
  rcases lt_trichotomy p n with h | rfl | h
  · have := subsingleton_cechH_of_lt (A := A) (k := k) hp h
    infer_instance
  · obtain ⟨m, rfl⟩ : ∃ m, p = m + 1 := ⟨p - 1, by omega⟩
    exact finite_cechH_top k m
  · have := subsingleton_cechH_of_gt (A := A) (k := k) h
    infer_instance

end ProjSpace

namespace ProjSpace

variable {A : Type u} [CommRing A] {n : ℕ}
  [HasExt.{w'} (Sheaf (Opens.grothendieckTopology (projectiveSpace A n).toTopCat) AddCommGrpCat.{u})]

attribute [local instance] algebraOfOver

theorem finite_H_twistingSheaf (k : ℤ) (p : ℕ) :
    Module.Finite A (Sheaf.H.{w'} (modulesAb (twistingSheaf (grading A n) k)) p) :=
  have := finite_cechH (A := A) (n := n) k p
  Module.Finite.equiv (cechHLinearEquivTwist k p)

theorem subsingleton_H_twistingSheaf {k : ℤ} (hk : 0 ≤ k) {p : ℕ} (hp : 0 < p) :
    Subsingleton (Sheaf.H.{w'} (modulesAb (twistingSheaf (grading A n) k)) p) := by
  rcases eq_or_ne p n with rfl | hpn
  · obtain ⟨e⟩ := nonempty_HTop_equiv.{w'} (A := A) k hp
    have : IsEmpty (NegMon p k) := ⟨fun m => by
      have hlt : ∑ j, m.1 j < 0 :=
        Finset.sum_neg (fun j _ => m.2.1 j) Finset.univ_nonempty
      rw [m.2.2] at hlt
      omega⟩
    exact e.toEquiv.subsingleton
  · exact subsingleton_H.{w'} k hp hpn

theorem subsingleton_H_of_lt (G : (projectiveSpace A n).Modules) [G.IsQuasicoherent] {p : ℕ}
    (hp : n < p) : Subsingleton (Sheaf.H.{w'} (modulesAb G) p) := by
  obtain ⟨e⟩ : Nonempty (cechH (modulesAb G).obj (stdOpen A n) p ≃+ Sheaf.H.{w'} (modulesAb G) p) :=
    SchemeCoh.nonempty_cechH_equiv_H G (stdOpen A n) iSup_stdOpen
      (fun _ i => by rw [← inter_eq_iInf]; exact isAffineOpen_inter i) p
  have : Subsingleton (cechH (modulesAb G).obj (stdOpen A n) p) :=
    cechH_subsingleton _ _ (by rw [Nat.card_eq_fintype_card, Fintype.card_fin]; omega)
  exact e.symm.toEquiv.subsingleton

end ProjSpace

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.PSpaceFinite =====
