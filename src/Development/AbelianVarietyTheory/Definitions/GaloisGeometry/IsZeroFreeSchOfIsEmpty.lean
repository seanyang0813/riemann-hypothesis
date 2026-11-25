module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.Style
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

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex

namespace GlobalTheory.EtC.Tr

section Transfer

variable (R : Type) [CommRing R]

abbrev freeSch (X : Scheme.{0}) : Shv R := (free R).obj (yoneda.obj X)

def IsTransfer {Z X : Scheme.{0}} (f : Z ⟶ X) (t : freeSch R X ⟶ freeSch R Z) : Prop :=
  ∀ (S : Scheme.{0}) (x : S ⟶ X) (m : ℕ) (s : Fin m → (S ⟶ Z)) (hs : ∀ j, s j ≫ f = x),
    IsIso (Sigma.desc (fun j => pullback.lift (s j) (𝟙 S) (by rw [hs j, Category.id_comp])) :
      ∐ (fun _ : Fin m => S) ⟶ pullback f x) →
    (free R).map (yoneda.map x) ≫ t = ∑ j, (free R).map (yoneda.map (s j))

def transfer {Z X : Scheme.{0}} (f : Z ⟶ X) : freeSch R X ⟶ freeSch R Z := pick (IsTransfer R f)

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex in
variable (R : Type) [CommRing R] in
theorem _root_.GlobalTheory.EtC.Tr.transfer_spec {Z X : Scheme.{0}} {f : Z ⟶ X}
    (h : ∃ t, _root_.GlobalTheory.EtC.Tr.IsTransfer R f t) :
    _root_.GlobalTheory.EtC.Tr.IsTransfer R f (_root_.GlobalTheory.EtC.Tr.transfer R f) :=
  _root_.GlobalTheory.EtC.pick_spec h

end Transfer

section Trace

variable (R : Type) [CommRing R]

def simpMap {X Z : Scheme.{0}} (t : freeSch R X ⟶ freeSch R Z) :
    ((SimplicialObject.whiskering _ _).obj (free R)).obj (sch.obj X) ⟶
      ((SimplicialObject.whiskering _ _).obj (free R)).obj (sch.obj Z) where
  app _ := t
  naturality _ _ _ := by
    show (free R).map (𝟙 (yoneda.obj X)) ≫ t = t ≫ (free R).map (𝟙 (yoneda.obj Z))
    rw [CategoryTheory.Functor.map_id, CategoryTheory.Functor.map_id, Category.id_comp, Category.comp_id]

def chainMap {X Z : Scheme.{0}} (t : freeSch R X ⟶ freeSch R Z) : (chains R).obj (sch.obj X) ⟶ (chains R).obj (sch.obj Z) :=
  (ComplexShape.embeddingDownNat.extendFunctor (Shv R)).map ((AlgebraicTopology.alternatingFaceMapComplex (Shv R)).map (simpMap R t))


open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex in
variable (R : Type) [CommRing R] in
lemma _root_.GlobalTheory.EtC.Tr.chainMap_free {X Z : Scheme.{0}} (g : X ⟶ Z) :
    _root_.GlobalTheory.EtC.Tr.chainMap R ((_root_.GlobalTheory.EtC.free R).map (yoneda.map g)) =
      (_root_.GlobalTheory.EtC.chains R).map (_root_.GlobalTheory.EtC.sch.map g) := by
  have hsimp : _root_.GlobalTheory.EtC.Tr.simpMap R ((_root_.GlobalTheory.EtC.free R).map (yoneda.map g)) =
      ((SimplicialObject.whiskering _ _).obj (_root_.GlobalTheory.EtC.free R)).map
        (_root_.GlobalTheory.EtC.sch.map g) := by
    ext
    rfl
  unfold _root_.GlobalTheory.EtC.Tr.chainMap
  rw [hsimp]
  rfl

def along {X Z : Scheme.{0}} (F : Shv R) (n : ℤ) (t : freeSch R X ⟶ freeSch R Z) : H R (sch.obj Z) F n →+ H R (sch.obj X) F n :=
  HK.pull R (chainMap R t) F n

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex in
variable (R : Type) [CommRing R] in
theorem _root_.GlobalTheory.EtC.Tr.along_id (X : Scheme.{0}) (F : _root_.GlobalTheory.EtC.Shv R) (n : ℤ)
    (x : _root_.GlobalTheory.EtC.H R (_root_.GlobalTheory.EtC.sch.obj X) F n) :
    _root_.GlobalTheory.EtC.Tr.along R F n (𝟙 _) x = x := by
  have hid : (𝟙 (_root_.GlobalTheory.EtC.Tr.freeSch R X)) =
      (_root_.GlobalTheory.EtC.free R).map (yoneda.map (𝟙 X)) := by
    simp
  rw [hid]
  unfold _root_.GlobalTheory.EtC.Tr.along
  rw [_root_.GlobalTheory.EtC.Tr.chainMap_free, CategoryTheory.Functor.map_id]
  exact _root_.GlobalTheory.EtC.pull_id R _ F n x


open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex in
variable (R : Type) [CommRing R] in
theorem _root_.GlobalTheory.EtC.Tr.along_free {X Z : Scheme.{0}} (g : X ⟶ Z)
    (F : _root_.GlobalTheory.EtC.Shv R) (n : ℤ) :
    _root_.GlobalTheory.EtC.Tr.along R F n ((_root_.GlobalTheory.EtC.free R).map (yoneda.map g)) =
      _root_.GlobalTheory.EtC.pull R (_root_.GlobalTheory.EtC.sch.map g) F n := by
  unfold _root_.GlobalTheory.EtC.Tr.along _root_.GlobalTheory.EtC.pull
  rw [_root_.GlobalTheory.EtC.Tr.chainMap_free]

def trH {Z X : Scheme.{0}} (f : Z ⟶ X) (F : Shv R) (n : ℤ) : H R (sch.obj Z) F n →+ H R (sch.obj X) F n :=
  along R F n (transfer R f)

end Trace

section Twist

def trHt (q : ℕ) {Z X : Scheme.{0}} (f : Z ⟶ X) (n i : ℤ) : Ht q (sch.obj Z) n i →+ Ht q (sch.obj X) n i :=
  trH (ZMod q) f (tw q i) n

end Twist

section Adic

variable (l : ℕ) [Fact l.Prime]

def RedCompat {Z X : Scheme.{0}} (f : Z ⟶ X) (n i : ℤ) : Prop :=
  ∀ (k : ℕ) (x : Ht (l ^ (k + 1)) (sch.obj Z) n i),
    _root_.GlobalTheory.EtC.red (l ^ (k + 1)) (l ^ k) (sch.obj X) n i
        (trHt (l ^ (k + 1)) f n i x) =
      trHt (l ^ k) f n i (_root_.GlobalTheory.EtC.red (l ^ (k + 1)) (l ^ k) (sch.obj Z) n i x)

def IsTrHl {Z X : Scheme.{0}} (f : Z ⟶ X) (n i : ℤ)
    (φ : _root_.GlobalTheory.EtC.Hl l (sch.obj Z) n i →ₗ[ℤ_[l]]
      _root_.GlobalTheory.EtC.Hl l (sch.obj X) n i) : Prop :=
  ∀ (x : _root_.GlobalTheory.EtC.Hl l (sch.obj Z) n i) (k : ℕ), (φ x).1 k = trHt (l ^ k) f n i (x.1 k)

def trHl {Z X : Scheme.{0}} (f : Z ⟶ X) (n i : ℤ) :
    _root_.GlobalTheory.EtC.Hl l (sch.obj Z) n i →ₗ[ℤ_[l]] _root_.GlobalTheory.EtC.Hl l (sch.obj X) n i :=
  pick (IsTrHl l f n i)


open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex in
variable (l : ℕ) [Fact l.Prime] in
theorem _root_.GlobalTheory.EtC.Tr.trHl_spec {Z X : Scheme.{0}} {f : Z ⟶ X} {n i : ℤ}
    (h : _root_.GlobalTheory.EtC.Tr.RedCompat l f n i) :
    _root_.GlobalTheory.EtC.Tr.IsTrHl l f n i (_root_.GlobalTheory.EtC.Tr.trHl l f n i) := by
  apply _root_.GlobalTheory.EtC.pick_spec
  refine ⟨{ toFun := fun x => ⟨fun k => _root_.GlobalTheory.EtC.Tr.trHt (l ^ k) f n i (x.1 k), ?_⟩
            map_add' := ?_
            map_smul' := ?_ }, fun x k => rfl⟩
  · intro k
    show _root_.GlobalTheory.EtC.red (l ^ (k + 1)) (l ^ k) (_root_.GlobalTheory.EtC.sch.obj X) n i
        (_root_.GlobalTheory.EtC.Tr.trHt (l ^ (k + 1)) f n i (x.1 (k + 1))) =
      _root_.GlobalTheory.EtC.Tr.trHt (l ^ k) f n i (x.1 k)
    rw [h k (x.1 (k + 1))]
    congr 1
    exact x.2 k
  · intro x y
    apply Subtype.ext
    funext k
    exact map_add (_root_.GlobalTheory.EtC.Tr.trHt (l ^ k) f n i) (x.1 k) (y.1 k)
  · intro r x
    apply Subtype.ext
    funext k
    have h1 := _root_.GlobalTheory.EtC.HtL.smul_eq l k k le_rfl
      (_root_.GlobalTheory.EtC.sch.obj Z) n i r (x.1 k)
    have h2 := _root_.GlobalTheory.EtC.HtL.smul_eq l k k le_rfl
      (_root_.GlobalTheory.EtC.sch.obj X) n i r (_root_.GlobalTheory.EtC.Tr.trHt (l ^ k) f n i (x.1 k))
    exact (congrArg (_root_.GlobalTheory.EtC.Tr.trHt (l ^ k) f n i) h1).trans
      ((map_nsmul _ _ _).trans h2.symm)

end Adic

end GlobalTheory.EtC.Tr
