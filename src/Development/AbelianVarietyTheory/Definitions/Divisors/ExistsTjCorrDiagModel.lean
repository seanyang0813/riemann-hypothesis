module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CompEqOneOfTransl
public import Development.AbelianVarietyTheory.Definitions.Divisors.ToRepFam
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
public import Mathlib.RingTheory.Flat.TorsionFree

@[expose] public section

noncomputable section

namespace GlobalTheory.UPel.HT.ES

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.UPel.HT GlobalTheory.UPel.HT.Hecke

variable {p : ℕ} [Fact p.Prime] {D : Datum p} {R : Type} [CommRing R] {b : Base D R} {S : Scheme.{0}}

def uIdeal (D : Datum p) (r : ℤ) : Ideal (𝓞 D.F) := Ideal.span {(p : 𝓞 D.F), D.ω - (r : 𝓞 D.F)}

theorem p_mem_uIdeal (D : Datum p) (r : ℤ) : (p : 𝓞 D.F) ∈ uIdeal D r :=
  Ideal.subset_span (Set.mem_insert _ _)

theorem sub_mem_uIdeal (D : Datum p) (r : ℤ) : D.ω - (r : 𝓞 D.F) ∈ uIdeal D r :=
  Ideal.subset_span (Set.mem_insert_of_mem _ (Set.mem_singleton _))

def IsPIsog {N : ℕ} {s : S ⟶ Sp R} (c : ℕ) (o o' : Obj b N s) (ψ : o.A ⟶ o'.A) : Prop :=
  (∃ k : ℕ, c = p ^ k) ∧
  IsMonHom ψ ∧ (∀ c' : D.O, o.act.act c' ≫ ψ = ψ ≫ o'.act.act c') ∧ (∀ x, o'.eta x = o.eta x ≫ ψ) ∧
    Nonempty (LBIso (Hecke.lbPow o.P c) (o'.P.pull (sq2 ψ))) ∧
    ∃ ψ' : o'.A ⟶ o.A, IsMonHom ψ' ∧ ψ ≫ ψ' = (𝟙 o.A) ^ c ∧ ψ' ≫ ψ = (𝟙 o'.A) ^ c

theorem IsPIsog.exists_eq_pow {N : ℕ} {s : S ⟶ Sp R} {c : ℕ} {o o' : Obj b N s} {ψ : o.A ⟶ o'.A}
    (h : IsPIsog c o o' ψ) : ∃ k : ℕ, c = p ^ k := h.1

theorem IsPIsog.pos {N : ℕ} {s : S ⟶ Sp R} {c : ℕ} {o o' : Obj b N s} {ψ : o.A ⟶ o'.A}
    (h : IsPIsog c o o' ψ) : 0 < c := by
  obtain ⟨k, rfl⟩ := h.1
  exact pow_pos (Fact.out : p.Prime).pos k

def KilledBy {N : ℕ} {s : S ⟶ Sp R} (o : Obj b N s) (v : Ideal (𝓞 D.F)) {T : Over S} (g : T ⟶ o.A) : Prop :=
  ∀ a ∈ v, g ≫ o.act.act (algebraMap (𝓞 D.F) D.O a) = 1

def IsTj {N : ℕ} {s : S ⟶ Sp R} (r : ℤ) (w : Ideal (𝓞 D.F)) (j : ℕ) (o o' : Obj b N s) (ψ : o.A ⟶ o'.A) : Prop :=
  ∀ (k : Type) [Field k] [IsAlgClosed k] [CharZero k] (x : Sp k ⟶ S),
    (∀ g : Over.mk x ⟶ o.A, g ≫ ψ = 1 → (∃ e : ℕ, KilledBy o (uIdeal D r ^ e) g) → KilledBy o w g) ∧
    Nat.card {g : Over.mk x ⟶ o.A // g ≫ ψ = 1 ∧ KilledBy o w g} = Ideal.absNorm w ^ (D.m * j)

structure TjCorr {N : ℕ} (F : RepFam b N) (r : ℤ) (w : Ideal (𝓞 D.F)) (j c : ℕ) where

  Y : Scheme.{0}

  s : Y ⟶ F.X

  t : Y ⟶ F.X
  st : s ≫ F.s = t ≫ F.s

  o : Obj b N (s ≫ F.s)

  o' : Obj b N (s ≫ F.s)
  ms : ObjMap o F.univ s
  mt : ObjMap o' F.univ t

  ψ : o.A ⟶ o'.A
  isog : IsPIsog c o o' ψ
  tj : IsTj r w j o o' ψ

theorem KilledBy.one {N : ℕ} {s : S ⟶ Sp R} (o : Obj b N s) (v : Ideal (𝓞 D.F)) (T : Over S) :
    KilledBy o v (1 : T ⟶ o.A) := fun a _ => by
  haveI := o.act.hom (algebraMap (𝓞 D.F) D.O a)
  exact one_comp _

theorem pReg_of_flat {Y : Scheme.{0}} (s : Y ⟶ Sp R) [Flat s] (hR : ∀ a : R, (p : R) * a = 0 → a = 0)
    (U : Y.Opens) (f : Γ(Y, U)) (hf : (p : Γ(Y, U)) * f = 0) : f = 0 := by
  refine Y.sheaf.eq_of_locally_eq' (fun V : {V : Y.affineOpens // V.1 ≤ U} => V.1.1) U
    (fun V => homOfLE V.2) ?_ f 0 fun V => ?_
  · intro y hy
    obtain ⟨_, ⟨V, hV, rfl⟩, hyV, hVU⟩ := Y.isBasis_affineOpens.exists_subset_of_mem_open hy U.isOpen
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨⟨V, hV⟩, hVU⟩, hyV⟩
  · have hfl : (s.appLE ⊤ V.1.1 le_top).hom.Flat :=
      HasRingHomProperty.appLE (P := @Flat) s inferInstance ⟨⊤, isAffineOpen_top _⟩ V.1 le_top
    have hp : (p : Γ(Sp R, ⊤)) ∈ nonZeroDivisors Γ(Sp R, ⊤) := by
      rw [mem_nonZeroDivisors_iff_left]
      intro a ha
      let e := (Scheme.ΓSpecIso (CommRingCat.of R)).commRingCatIsoToRingEquiv
      refine e.injective ((hR _ ?_).trans (map_zero e).symm)
      rw [← map_natCast e, ← map_mul, ha, map_zero]
    letI := (s.appLE ⊤ V.1.1 le_top).hom.toAlgebra
    haveI : Module.Flat Γ(Sp R, ⊤) Γ(Y, V.1.1) := hfl
    have hreg := Module.Flat.isSMulRegular_of_nonZeroDivisors (M := Γ(Y, V.1.1)) hp
    let ρ : Γ(Y, U) →+* Γ(Y, V.1.1) := (Y.presheaf.map (homOfLE V.2).op).hom
    show ρ f = ρ 0
    refine hreg ?_
    simp only [Algebra.smul_def, map_natCast, map_zero, mul_zero]
    rw [← map_natCast ρ, ← map_mul, hf, map_zero]

def IsWOrd {N : ℕ} {s : S ⟶ Sp R} (o : Obj b N s) (w : Ideal (𝓞 D.F)) {k : Type} [Field k] [IsAlgClosed k]
    (x : Sp k ⟶ S) : Prop :=
  CharP k p ∧ w.IsPrime ∧ (p : 𝓞 D.F) ∈ w ∧
    Nat.card {g : Over.mk x ⟶ o.A // KilledBy o w g} = Ideal.absNorm w ^ (D.m * (D.n - 1))

end GlobalTheory.UPel.HT.ES
