module

public import Mathlib.Algebra.Module.StablyFree.Basic
public import Mathlib.LinearAlgebra.Determinant
public import Mathlib.LinearAlgebra.FreeModule.PID
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.NormNum.LegendreSymbol
public import Mathlib.FieldTheory.RatFunc.Defs

@[expose] public section

noncomputable section

open scoped WithZero

namespace GlobalTheory.CompanionTheory.Ar.Crv

structure ACurve (K : Type) [Field K] where

  I : Type

  v : I → Valuation K (WithZero (Multiplicative ℤ))

  w : I → ℕ

  fin : ∀ x : K, x ≠ 0 → {i | v i x ≠ 1}.Finite

  prod : ∀ x : K, x ≠ 0 → ∑ᶠ i, (w i : ℤ) * WithZero.log (v i x) = 0

variable {K : Type} [Field K] (C : ACurve K)

section One

variable {V : Type} [AddCommGroup V] [Module K V]

def IsLatOf (i : C.I) {n : ℕ} (b : Module.Basis (Fin n) K V) (L : AddSubgroup V) : Prop :=
  ∀ x, x ∈ L ↔ ∀ q, C.v i (b.repr x q) ≤ 1

def IsBun (L : C.I → AddSubgroup V) : Prop :=
  (∀ i, ∃ b : Module.Basis (Fin (Module.finrank K V)) K V, IsLatOf C i b (L i)) ∧
    ∃ b : Module.Basis (Fin (Module.finrank K V)) K V, {i | ¬ IsLatOf C i b (L i)}.Finite


open Classical in
def locBasis [FiniteDimensional K V] (i : C.I) (L : AddSubgroup V) :
    Module.Basis (Fin (Module.finrank K V)) K V :=
  if h : ∃ b : Module.Basis (Fin (Module.finrank K V)) K V, IsLatOf C i b L then h.choose
  else Module.finBasis K V

def deg [FiniteDimensional K V] (L : C.I → AddSubgroup V) : ℤ :=
  ∑ᶠ i, (C.w i : ℤ) * WithZero.log (C.v i ((Module.finBasis K V).det (locBasis C i (L i))))

def sub (L : C.I → AddSubgroup V) (W : Submodule K V) : C.I → AddSubgroup W :=
  fun i => (L i).comap W.subtype.toAddMonoidHom

def quot (L : C.I → AddSubgroup V) (W : Submodule K V) : C.I → AddSubgroup (V ⧸ W) :=
  fun i => (L i).map W.mkQ.toAddMonoidHom

def subDeg [FiniteDimensional K V] (L : C.I → AddSubgroup V) (W : Submodule K V) : ℤ :=
  deg C (sub C L W)

end One

section Two

variable {V V' V'' : Type} [AddCommGroup V] [Module K V] [AddCommGroup V'] [Module K V']
  [AddCommGroup V''] [Module K V'']

def IsHom (L : C.I → AddSubgroup V) (L' : C.I → AddSubgroup V') (f : V →ₗ[K] V') : Prop :=
  ∀ i, ∀ x ∈ L i, f x ∈ L' i

def ShortExact (L : C.I → AddSubgroup V) (L' : C.I → AddSubgroup V') (L'' : C.I → AddSubgroup V'')
    (f : V →ₗ[K] V') (g : V' →ₗ[K] V'') : Prop :=
  Function.Injective f ∧ Function.Exact f g ∧ Function.Surjective g ∧
    (∀ i x, x ∈ L i ↔ f x ∈ L' i) ∧ ∀ i z, z ∈ L'' i ↔ ∃ y ∈ L' i, g y = z

def dualLat (L : C.I → AddSubgroup V) (B : V →ₗ[K] V' →ₗ[K] K) : C.I → AddSubgroup V' :=
  fun i =>
    { carrier := {y | ∀ x ∈ L i, C.v i (B x y) ≤ 1}
      zero_mem' := fun x _ => by simp
      add_mem' := fun {a b} ha hb x hx => by
        rw [map_add (f := _)]; exact (C.v i).map_add_le (ha x hx) (hb x hx)
      neg_mem' := fun {a} ha x hx => by
        rw [map_neg, Valuation.map_neg]; exact ha x hx }

def spanLat (L : C.I → AddSubgroup V) (φ : V → V') : C.I → AddSubgroup V' :=
  fun i => AddSubgroup.closure {y | ∃ (a : K) (x : V), C.v i a ≤ 1 ∧ x ∈ L i ∧ y = a • φ x}

end Two

def frobVec (p : ℕ) {d : ℕ} (x : Fin d → K) : Fin d → K := fun j => x j ^ p

def frobLat (p : ℕ) {d : ℕ} (L : C.I → AddSubgroup (Fin d → K)) : C.I → AddSubgroup (Fin d → K) :=
  spanLat C L (frobVec p)

def frobSub (p : ℕ) {d : ℕ} (W : Submodule K (Fin d → K)) : Submodule K (Fin d → K) :=
  Submodule.span K (frobVec p '' (W : Set (Fin d → K)))

def dotDual {d : ℕ} (L : C.I → AddSubgroup (Fin d → K)) : C.I → AddSubgroup (Fin d → K) :=
  dualLat C L (dotProductBilin K K)

def eig {O V : Type} [AddCommGroup V] [Module K V] (ρ : O → V →ₗ[K] V) (χ : O → K) : Submodule K V :=
  ⨅ a, LinearMap.ker (ρ a - χ a • LinearMap.id)

def IsSplit {O k S : Type} [CommRing O] [Field k] (χ : S → (O →+* k)) : Prop :=
  Function.Bijective (Algebra.TensorProduct.lift (Algebra.ofId k (S → k))
    (Pi.algHom ℤ (fun _ : S => k) fun s => (χ s).toIntAlgHom) (fun _ _ => Commute.all _ _) :
      TensorProduct ℤ k O →ₐ[k] (S → k))

structure ConjData (p : ℕ) (O : Type) [CommRing O] [StarRing O] (d : ℕ) where

  lie : C.I → AddSubgroup (Fin d → K)

  H : C.I → AddSubgroup ((Fin d → K) × (Fin d → K))

  lie_bun : IsBun C lie

  H_bun : IsBun C H

  ρ : O →+* Matrix (Fin d) (Fin d) K

  ρH : O →+* Module.End K ((Fin d → K) × (Fin d → K))

  ρH_hom : ∀ a, IsHom C H H (ρH a)

  ρH_fst : ∀ a y, (ρH a y).1 = (ρ a).mulVec y.1

  ρH_inr : ∀ a φ, ρH a (0, φ) = (0, (ρ (star a)).transpose.mulVec φ)

  hodge : ShortExact C (dotDual C lie) H lie (LinearMap.inr K _ _) (LinearMap.fst K _ _)

  α : (Fin d → K) →ₗ[K] (Fin d → K) × (Fin d → K)

  β : ((Fin d → K) × (Fin d → K)) →ₗ[K] (Fin d → K)

  conj : ShortExact C (frobLat C p lie) H (frobLat C p (dotDual C lie)) α β

  α_act : ∀ a u, α (((ρ a).map (· ^ p)).mulVec u) = ρH a (α u)

  β_act : ∀ a y, β (ρH a y) = ((ρ (star a)).transpose.map (· ^ p)).mulVec (β y)

namespace Inhab

section Line

open Polynomial IsDedekindDomain

variable (k : Type) [Field k]

end Line

section Const

def trivLat (d : ℕ) : C.I → AddSubgroup (Fin d → K) := fun i =>
  { carrier := {x | ∀ j, C.v i (x j) ≤ 1}
    zero_mem' := fun j => by simp
    add_mem' := fun ha hb j => (C.v i).map_add_le (ha j) (hb j)
    neg_mem' := fun ha j => by simpa using ha j }

theorem mem_trivLat {d : ℕ} {i : C.I} {x : Fin d → K} :
    x ∈ trivLat C d i ↔ ∀ j, C.v i (x j) ≤ 1 := Iff.rfl

theorem isBun_of_basis {V ι : Type} [AddCommGroup V] [Module K V] [Fintype ι]
    (b : Module.Basis ι K V) (L : C.I → AddSubgroup V)
    (h : ∀ i x, x ∈ L i ↔ ∀ q, C.v i (b.repr x q) ≤ 1) : IsBun C L := by
  let e : ι ≃ Fin (Module.finrank K V) :=
    Fintype.equivFinOfCardEq (Module.finrank_eq_card_basis b).symm
  have : ∀ i, IsLatOf C i (b.reindex e) (L i) := fun i x => by
    rw [h]; simp only [Module.Basis.repr_reindex_apply]
    exact ⟨fun H q => H _, fun H q => by simpa using H (e q)⟩
  exact ⟨fun i => ⟨_, this i⟩, b.reindex e, by simp [this]⟩

theorem mulVec_mem_trivLat {d : ℕ} {i : C.I} {M : Matrix (Fin d) (Fin d) K}
    (hM : ∀ r s, C.v i (M r s) ≤ 1) {x : Fin d → K} (hx : x ∈ trivLat C d i) :
    M.mulVec x ∈ trivLat C d i := fun r =>
  (C.v i).map_sum_le (s := Finset.univ) (f := fun s => M r s * x s) fun s _ =>
    ((C.v i).map_mul _ _).trans_le (mul_le_one' (hM r s) (hx s))

variable {V : Type} [AddCommGroup V] [Module K V]

def latOf (i : C.I) {n : ℕ} (b : Module.Basis (Fin n) K V) : AddSubgroup V where
  carrier := {x | ∀ q, C.v i (b.repr x q) ≤ 1}
  zero_mem' := fun q => by simp
  add_mem' := fun ha hb q => by
    rw [map_add (f := _), Finsupp.add_apply]; exact (C.v i).map_add_le (ha q) (hb q)
  neg_mem' := fun ha q => by simpa using ha q

theorem isLatOf_latOf (i : C.I) {n : ℕ} (b : Module.Basis (Fin n) K V) :
    IsLatOf C i b (latOf C i b) := fun _ => Iff.rfl

theorem v_det {i : C.I} {n : ℕ}
    {b b' : Module.Basis (Fin n) K V} {L : AddSubgroup V} (h : IsLatOf C i b L)
    (h' : IsLatOf C i b' L) : C.v i (b.det b') = 1 := by
  have key : ∀ {b b' : Module.Basis (Fin n) K V}, IsLatOf C i b L → IsLatOf C i b' L →
      C.v i (b.det b') ≤ 1 := by
    intro b b' h h'
    rw [Module.Basis.det_apply, Matrix.det_apply']
    refine (C.v i).map_sum_le fun σ _ => ?_
    rw [map_mul, map_prod]
    refine mul_le_one' ?_ (Finset.prod_le_one' fun q _ => (h _).1 ((h' _).2 fun r => ?_) _)
    · rcases Int.units_eq_one_or (Equiv.Perm.sign σ) with e | e <;> simp [e]
    · by_cases e : q = r <;> simp [e]
  have h1 : C.v i (b.det b') * C.v i (b'.det b) = 1 := by
    rw [← map_mul, Module.Basis.det_mul_det, Module.Basis.det_self, map_one]
  exact le_antisymm (key h h') (h1 ▸ mul_le_of_le_one_right' (key h' h))

theorem deg_eq [FiniteDimensional K V]
    {L : C.I → AddSubgroup V} (b : C.I → Module.Basis (Fin (Module.finrank K V)) K V)
    (h : ∀ i, IsLatOf C i (b i) (L i)) :
    deg C L = ∑ᶠ i, (C.w i : ℤ) * WithZero.log (C.v i ((Module.finBasis K V).det (b i))) := by
  refine finsum_congr fun i => ?_
  have hex : ∃ b : Module.Basis (Fin (Module.finrank K V)) K V, IsLatOf C i b (L i) := ⟨_, h i⟩
  have : IsLatOf C i (locBasis C i (L i)) (L i) := by
    rw [locBasis, dite_eq_left hex]; exact hex.choose_spec
  rw [← Module.Basis.det_mul_det _ (b i), map_mul, v_det C (h i) this, mul_one]

end Const

section Gauss

end Gauss

section Twist

variable (k : Type) [Field k] (V : Type) [AddCommGroup V] [Module (RatFunc k) V]
  [FiniteDimensional (RatFunc k) V]

end Twist

end Inhab

end GlobalTheory.CompanionTheory.Ar.Crv
