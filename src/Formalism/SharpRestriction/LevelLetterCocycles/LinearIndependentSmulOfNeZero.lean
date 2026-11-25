module

public import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow
public import Formalism.SharpRestriction.LevelLetterCocycles.BlochKatoPhases
public import Formalism.SharpRestriction.LevelLetterCocycles.IntegralHeckeForms
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Formalism.CyclotomicNorms.StatementTW
public import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral
import Mathlib.FieldTheory.Galois.Profinite
import Mathlib.RingTheory.Invariant.Profinite
import Mathlib.RingTheory.Valuation.LocalSubring
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.LevelLetterCocycles.LatticeVariant, Formalism.SharpRestriction.LevelLetterCocycles.LinearIndependentSmulOfNeZero

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LatticeVariant =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LatticeVariant", "h": "module\n\npublic import Formalism.LocalRingCardinality.RhoDetPrimeEqMuTildeMulChiPow\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.SharpRestriction.LevelLetterCocycles.BlochKatoPhases\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IntegralHeckeForms\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open scoped TensorProduct

namespace Formalism.MainNotions.LatticeVariant

open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (psiAt nval SetHyp PsiOk partA partAT partC partD)

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} (Y : NExp D.R D.host D.what₂ D.LL0 N X)

abbrev LamO (X : NTw D.R D.host D.what₂ D.LL0 N) (i : X.Tw) (Q : Finset (PlE D.host)) (M : ℕ) : Type :=
  AddMonoidAlgebra (X.O i) (DelQM D.host (X.l i) Q M)

def ConjCl (Q : Finset (PlE D.host)) : Prop := ∀ P ∈ Q, ∀ P', IsConjPl D.host P P' → P' ∈ Q

def DelOn (i : X.Tw) (Q : Finset (PlE D.host)) (M : ℕ) : Prop :=
  ∀ (P : PlE D.host) (hP : P ∈ Q) (A' : ValuationSubring N.Om), IsPlaceOver A' P →
    ∃ σ ∈ Ine (F := D.host.E) A', Multiplicative.toAdd (Y.delU i Q M σ) ⟨P, hP⟩ = 1

variable {Y}

variable (Y)

variable (bkP : Formalism.MainNotions.BlochKatoReduction.Gen.BKPh X)






end Formalism.MainNotions.LatticeVariant

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LatticeVariant =====

-- ===== clump member: Formalism.SharpRestriction.LevelLetterCocycles.LinearIndependentSmulOfNeZero =====
-- clump-header: {"m": "Formalism.SharpRestriction.LevelLetterCocycles.LinearIndependentSmulOfNeZero", "h": "module\n\npublic import Formalism.SharpRestriction.LevelLetterCocycles.LatticeVariant\npublic import Formalism.SharpRestriction.LevelLetterCocycles.IntegralHeckeForms\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.FieldTheory.Galois.Profinite\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Invariant.Profinite\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.Valuation.LocalSubring\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.CyclotomicNorms.StatementTW\npublic import Formalism.PadicSubsetSums.CentralIdempotents.CentralIdempotentIntegral\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.LatticeVariant

open Formalism.IrreducibleCountingLemmas.TW

section GT

open Formalism.CyclotomicNorms (vl)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)

end GT

section Cons

open Formalism.MainNotions.IntegralHeckeForms (IsLatIn)
open scoped TensorProduct

variable {D : Formalism.BasicNotions.D7} {N : Formalism.BasicNotions.NData D.R D.host D.what₂}
  {X : Formalism.BasicNotions.NTw D.R D.host D.what₂ D.LL0 N} {Y : Formalism.BasicNotions.NExp D.R D.host D.what₂ D.LL0 N X}

end Cons

section Open

open Formalism.MainNotions.BlochKatoReduction.Gen (SetHyp PsiOk partAT partC partD)

variable (D : Formalism.BasicNotions.D7) (bkP : Formalism.MainNotions.BlochKatoReduction.BK D) (N0 : D.ntw.Tw → ℕ)

end Open

section Lattice

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} (Y : NExp D.R D.host D.what₂ D.LL0 N X)

def AdmQ (i : X.Tw) (Q : Finset (PlE D.host)) (M : ℕ) : Prop :=
  (∀ P ∈ Q, IsSplitPl D.host P) ∧ Disjoint Q (X.S0 i) ∧ ConjCl Q ∧ DelOn Y i Q M ∧ Formalism.MainNotions.IntegralHeckeForms.ClsQ (D := D) Q

structure Pack (i : X.Tw) (j : ℕ) (b : Bool) where
  B : Submodule (X.O i) (Y.Fm i j b)
  A : Module.End (X.O i) (Y.Fm i j b)
  S : Finset (Y.Dat i j b)
  c : ℕ
  fg : B.FG
  hkB : ∀ k P, HkIdx i k P → B.map (hkO Y i j b k P) ≤ B
  comm : ∀ k P, HkIdx i k P → A ∘ₗ hkO Y i j b k P = hkO Y i j b k P ∘ₗ A
  li : LinearIndependent (X.O i) (fun a : ↥S => A (Y.th i j b a))
  spn : Submodule.span (FractionRing (X.O i)) ((fun a => A (Y.th i j b a)) '' ↑S) =
    Submodule.span (FractionRing (X.O i)) (B : Set (Y.Fm i j b))
  t2 : ∀ Q M, AdmQ Y i Q M → ∀ a ∈ S, Disjoint Q (Y.lev i j b a) →
    ((X.l i : X.O i) ^ c) • (A.rTensor (LamO X i Q M)) (Y.thU i j b Q M a) ∈
      LinearMap.range (B.subtype.rTensor (LamO X i Q M))
  t3 : T3 Y i j b B

variable {Y} {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b)

def Pack.Th : Submodule (X.O i) (Y.Fm i j b) :=
  Submodule.span (X.O i) ((fun a => p.A (Y.th i j b a)) '' ↑p.S)

def Pack.y (Q : Finset (PlE D.host)) (M k : ℕ)
    (χ : Multiplicative (DelQM D.host (X.l i) Q M) →* (X.Ok i k)ˣ) (a : Y.Dat i j b) :
    X.Ok i k ⊗[X.O i] Y.Fm i j b :=
  (p.A.baseChange (X.Ok i k)) (specU Y i j b Q M k χ (Y.thU i j b Q M a))

def Pack.v : ℝ := sIdx (X.l i) p.B p.Th + (p.c : ℝ) * p.S.card

end Lattice

section Asm0

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}

end Asm0

section Chain

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO)
open scoped TensorProduct

variable {D : Formalism.BasicNotions.D7}

variable {N : NData D.R D.host D.what₂} {X : NTw D.R D.host D.what₂ D.LL0 N}

variable (Y : NExp D.R D.host D.what₂ D.LL0 N X)

variable {Y}



end Chain

section CrdAll

open scoped TensorProduct

section Coord

variable {O Fm : Type} [CommRing O] [AddCommGroup Fm] [Module O Fm]

variable {B : Submodule O Fm} {d : ℕ} (β : Module.Basis (Fin d) O B)
  (Λ : Type) [CommRing Λ] [Algebra O Λ]


variable {Λ}

end Coord

section Free

open Formalism.MainNotions.IntegralHeckeForms (IsLatIn)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)

variable {R W : Type} [CommRing R] [IsDomain R] [IsDiscreteValuationRing R] [AddCommGroup W] [Module R W]

variable {d : ℕ} {e : Fin d → W}

end Free

section BaseCh

variable {O Fm : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [AddCommGroup Fm] [Module O Fm]
  {B : Submodule O Fm} {d : ℕ} (β : Module.Basis (Fin d) O B)
  (R' : Type) [CommRing R'] [IsDomain R'] [Algebra O R']

end BaseCh

section Det

open Formalism.MainNotions.IntegralHeckeForms (IsLatIn)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)

variable {O Fm : Type} [CommRing O] [AddCommGroup Fm] [Module O Fm]
  {B : Submodule O Fm} {d : ℕ} (β : Module.Basis (Fin d) O B)

variable {Λ : Type} [CommRing Λ] [Algebra O Λ] [Module.Flat O Λ]

end Det

section Det2

open Formalism.MainNotions.IntegralHeckeForms (IsLatIn)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)

variable {O Fm : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] [AddCommGroup Fm] [Module O Fm]
  {B : Submodule O Fm} {d : ℕ} (β : Module.Basis (Fin d) O B)

end Det2

end CrdAll

section Alg

open Polynomial

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O]
  [IsAlgClosed (IsLocalRing.ResidueField O)]

end Alg

section Asm1

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct
open Classical

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}
  {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b)

variable {n : ℕ} (β : Module.Basis (Fin n) (X.O i) p.B)

variable (es : Fin n ≃ ↥p.S)

end Asm1

section K4

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct
open Classical

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}
  {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b)

variable {n : ℕ} (β : Module.Basis (Fin n) (X.O i) p.B)

end K4

section Asm2

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct
open Classical

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}
  {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b)

variable {n : ℕ} (β : Module.Basis (Fin n) (X.O i) p.B) (es : Fin n ≃ ↥p.S)


def Pack.x (a : Y.Dat i j b) : Y.Fm i j b := ((X.l i : X.O i) ^ p.c) • p.A (Y.th i j b a)

end Asm2

section Asm3

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (nval)
open scoped TensorProduct
open Classical

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}
  {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b) {n : ℕ} (β : Module.Basis (Fin n) (X.O i) p.B)
  (es : Fin n ≃ ↥p.S)

end Asm3

section Fin

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions
open Formalism.MainNotions.IntegralHeckeForms (HkIdx hkO TwOK T3 IsLatIn sIdx specU)
open Formalism.MainNotions.BlochKatoReduction.Gen (psiAt nval SetHyp PsiOk partA partAT partC partD)
open scoped TensorProduct

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}


end Fin

section Asm4

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions

variable {D : Formalism.BasicNotions.D7} {N : NData D.R D.host D.what₂}
  {X : NTw D.R D.host D.what₂ D.LL0 N} {Y : NExp D.R D.host D.what₂ D.LL0 N X}
  {i : X.Tw} {j : ℕ} {b : Bool} (p : Pack Y i j b)

end Asm4

section FrobAll

section Frob

open Polynomial

theorem val_le_one_of_isIntegral {R Ω : Type} [CommRing R] [Field Ω] [Algebra R Ω] (A : ValuationSubring Ω)
    (hR : ∀ r : R, A.valuation (algebraMap R Ω r) ≤ 1) {y : Ω} (hy : IsIntegral R y) :
    A.valuation y ≤ 1 := by
  let φ : R →+* A := (algebraMap R Ω).codRestrict A.toSubring
    (fun r => (A.valuation_le_one_iff _).1 (hR r))
  obtain ⟨p, hpm, hp⟩ := hy
  have h1 : IsIntegral A y := by
    refine ⟨p.map φ, hpm.map φ, ?_⟩
    rw [Polynomial.eval₂_map]
    exact hp
  obtain ⟨a, ha⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral h1
  rw [← ha]
  exact A.valuation_le_one a

theorem exists_primitive_at {R Ω : Type} (F : Type) [CommRing R] [IsDedekindDomain R] [Field F] [Algebra R F]
    [IsFractionRing R F] [Field Ω] [Algebra F Ω] [Algebra R Ω] [IsScalarTower R F Ω]
    [Algebra.IsAlgebraic F Ω] (P : Ideal R) [P.IsPrime] (x : Ω) :
    ∃ g : R[X], aeval x g = 0 ∧ ∃ j, g.coeff j ∉ P := by
  have hx : IsAlgebraic R x :=
    (IsFractionRing.isAlgebraic_iff R F Ω).2 (Algebra.IsAlgebraic.isAlgebraic x)
  obtain ⟨p, hp0, hpx⟩ := hx
  set I : Ideal R := Ideal.span (Set.range p.coeff) with hI
  have hI0 : I ≠ ⊥ := by
    intro h
    apply hp0
    ext k
    have : p.coeff k ∈ I := Ideal.subset_span ⟨k, rfl⟩
    rw [h] at this
    simpa using this
  have hinv : (I : FractionalIdeal (nonZeroDivisors R) F) * (I : FractionalIdeal (nonZeroDivisors R) F)⁻¹ = 1 :=
    FractionalIdeal.coe_ideal_mul_inv I hI0
  have hint : ∀ t ∈ (I : FractionalIdeal (nonZeroDivisors R) F)⁻¹, ∀ a ∈ I,
      ∃ c : R, algebraMap R F c = algebraMap R F a * t := by
    intro t ht a ha
    have h1 : algebraMap R F a * t ∈
        (I : FractionalIdeal (nonZeroDivisors R) F) * (I : FractionalIdeal (nonZeroDivisors R) F)⁻¹ :=
      FractionalIdeal.mul_mem_mul ((FractionalIdeal.mem_coeIdeal _).2 ⟨a, ha, rfl⟩) ht
    rw [hinv] at h1
    exact (FractionalIdeal.mem_one_iff _).1 h1
  have hex : ∃ t ∈ (I : FractionalIdeal (nonZeroDivisors R) F)⁻¹, ∃ k, ∀ c : R,
      algebraMap R F c = algebraMap R F (p.coeff k) * t → c ∉ P := by
    by_contra hcon
    push Not at hcon
    have hle : (I : FractionalIdeal (nonZeroDivisors R) F) * (I : FractionalIdeal (nonZeroDivisors R) F)⁻¹ ≤
        (P : FractionalIdeal (nonZeroDivisors R) F) := by
      rw [FractionalIdeal.mul_le]
      intro a' ha' t ht
      obtain ⟨a, ha, rfl⟩ := (FractionalIdeal.mem_coeIdeal _).1 ha'
      clear ha'
      rw [hI] at ha
      induction ha using Submodule.span_induction with
      | mem a h =>
        obtain ⟨k, rfl⟩ := h
        obtain ⟨c, hc, hcP⟩ := hcon t ht k
        rw [← hc]
        exact (FractionalIdeal.mem_coeIdeal _).2 ⟨c, hcP, rfl⟩
      | zero => simp
      | add a b _ _ ha hb => rw [map_add (f := _), add_mul]; exact Submodule.add_mem _ ha hb
      | smul r a _ ha =>
        rw [smul_eq_mul, map_mul, mul_assoc, ← Algebra.smul_def]
        exact Submodule.smul_mem _ r ha
    rw [hinv] at hle
    have h1 : (1 : F) ∈ (P : FractionalIdeal (nonZeroDivisors R) F) := hle (FractionalIdeal.one_mem_one _)
    obtain ⟨c, hc, hc1⟩ := (FractionalIdeal.mem_coeIdeal _).1 h1
    have : c = 1 := IsFractionRing.injective R F (by rw [hc1, map_one])
    rw [this] at hc
    exact (Ideal.IsPrime.ne_top inferInstance) ((Ideal.eq_top_iff_one P).2 hc)
  obtain ⟨t, ht, k0, hk0⟩ := hex
  choose c hc using fun k => hint t ht (p.coeff k) (Ideal.subset_span ⟨k, rfl⟩)
  refine ⟨∑ k ∈ Finset.range (p.natDegree + 1), C (c k) * X ^ k, ?_, k0, ?_⟩
  · have h2 : aeval x p = ∑ k ∈ Finset.range (p.natDegree + 1), algebraMap R Ω (p.coeff k) * x ^ k := by
      rw [aeval_eq_sum_range]
      simp [Algebra.smul_def]
    have h3 : ∀ k, algebraMap R Ω (c k) = algebraMap R Ω (p.coeff k) * algebraMap F Ω t := by
      intro k
      rw [IsScalarTower.algebraMap_apply R F Ω, hc k, map_mul, ← IsScalarTower.algebraMap_apply R F Ω]

    simp only [map_sum, map_mul, aeval_C, map_pow, aeval_X, h3]
    have : ∑ k ∈ Finset.range (p.natDegree + 1), algebraMap R Ω (p.coeff k) * algebraMap F Ω t * x ^ k =
        algebraMap F Ω t * ∑ k ∈ Finset.range (p.natDegree + 1), algebraMap R Ω (p.coeff k) * x ^ k := by
      rw [Finset.mul_sum]
      exact Finset.sum_congr rfl fun k _ => by ring
    rw [this, ← h2, hpx, mul_zero]
  · have h4 : (∑ k ∈ Finset.range (p.natDegree + 1), C (c k) * X ^ k).coeff k0 =
        if k0 ∈ Finset.range (p.natDegree + 1) then c k0 else 0 := by
      simp only [finsetSum_coeff, coeff_C_mul, coeff_X_pow, mul_ite, mul_one, mul_zero]
      rw [Finset.sum_ite_eq]
    rw [h4]
    split_ifs with h5
    · exact hk0 _ (hc k0)
    · exfalso
      have h6 : p.coeff k0 = 0 := by
        apply coeff_eq_zero_of_natDegree_lt
        simp only [Finset.mem_range, not_lt] at h5
        omega
      exact hk0 0 (by rw [h6]; simp) (zero_mem P)

end Frob

section Frob2

open Polynomial

variable {R Ω : Type} [CommRing R] [Field Ω] [Algebra R Ω] (A : ValuationSubring Ω)

theorem not_lt_one_add {a y : Ω} (ha : ¬ A.valuation a < 1) (hy : A.valuation y < 1) :
    ¬ A.valuation (a + y) < 1 := by
  intro h
  apply ha
  have : a = (a + y) - y := by ring
  rw [this]
  exact Valuation.map_sub_lt _ h hy

theorem exists_mul_integral {x : Ω} (hx : A.valuation x ≤ 1) :
    ∀ (n : ℕ) (g : (integralClosure R Ω)[X]), g.natDegree ≤ n → aeval x g = 0 →
      (∃ j, ¬ A.valuation ((g.coeff j : integralClosure R Ω) : Ω) < 1) →
      ∃ s : integralClosure R Ω, ¬ A.valuation (s : Ω) < 1 ∧ IsIntegral R ((s : Ω) * x) := by
  intro n
  induction n with
  | zero =>
    intro g hd hg ⟨j, hj⟩
    exfalso
    have h0 : g = C (g.coeff 0) := eq_C_of_natDegree_le_zero hd
    rw [h0, aeval_C] at hg
    have h1 : g.coeff 0 = 0 := by
      have : ((g.coeff 0 : integralClosure R Ω) : Ω) = 0 := hg
      exact Subtype.ext this
    rw [h1, map_zero] at h0
    rw [h0] at hj
    simp at hj
  | succ n ih =>
    intro g hd hg ⟨j, hj⟩
    set c := g.leadingCoeff with hc
    have hint : IsIntegral R ((c : Ω) * x) := by
      have h1 : IsIntegral (integralClosure R Ω) (c • x) := isIntegral_leadingCoeff_smul g x hg
      have h2 : IsIntegral R (c • x) := isIntegral_trans _ h1
      exact h2
    by_cases hcv : A.valuation (c : Ω) < 1
    · set d := g.natDegree with hdd
      have hjd : j ≠ d := by
        rintro rfl
        exact hj hcv
      have hd0 : d ≠ 0 := by
        intro h0
        have h1 : g = C (g.coeff 0) := eq_C_of_natDegree_le_zero (le_of_eq h0)
        have h2 : g.coeff j = 0 := by
          rw [h1, coeff_C, if_neg (by rw [h0] at hjd; exact hjd)]
        rw [h2] at hj
        simp at hj
      let y : integralClosure R Ω := ⟨(c : Ω) * x, hint⟩
      have hy : A.valuation (y : Ω) < 1 := by
        show A.valuation ((c : Ω) * x) < 1
        rw [map_mul]
        exact mul_lt_one_of_lt_of_le hcv hx
      refine ih (g.eraseLead + C y * X ^ (d - 1)) ?_ ?_ ⟨j, ?_⟩
      · refine (natDegree_add_le _ _).trans (max_le ?_ ?_)
        · exact (eraseLead_natDegree_le g).trans (by omega)
        · exact (natDegree_C_mul_X_pow_le _ _).trans (by omega)
      · have h1 : aeval x g = aeval x g.eraseLead + (c : Ω) * x ^ d := by
          conv_lhs => rw [← eraseLead_add_C_mul_X_pow g]
          rw [map_add (f := _), map_mul, aeval_C, map_pow, aeval_X]
          rfl
        rw [map_add (f := _), map_mul, aeval_C, map_pow, aeval_X]
        have h2 : (algebraMap (integralClosure R Ω) Ω) y * x ^ (d - 1) = (c : Ω) * x ^ d := by
          show (c : Ω) * x * x ^ (d - 1) = (c : Ω) * x ^ d
          rw [mul_assoc, ← pow_succ', Nat.sub_add_cancel (Nat.one_le_iff_ne_zero.2 hd0)]
        rw [h2, ← h1, hg]
      · rw [coeff_add, eraseLead_coeff_of_ne _ hjd, coeff_C_mul, coeff_X_pow]
        split_ifs with h
        · rw [mul_one]
          exact not_lt_one_add A hj hy
        · rw [mul_zero, add_zero]
          exact hj
    · exact ⟨c, hcv, hint⟩

end Frob2

section Frob3

open Polynomial Pointwise

variable {R F Ω : Type} [CommRing R] [IsDedekindDomain R] [Field F] [Algebra R F] [IsFractionRing R F]
  [Field Ω] [Algebra F Ω] [Algebra R Ω] [IsScalarTower R F Ω]

theorem exists_rep (F : Type) [Field F] [Algebra R F] [IsFractionRing R F] [Algebra F Ω] [IsScalarTower R F Ω]
    [Algebra.IsAlgebraic F Ω] (A : ValuationSubring Ω) (P : Ideal R) [P.IsPrime]
    (hP : ∀ r : R, A.valuation (algebraMap R Ω r) < 1 ↔ r ∈ P) {x : Ω} (hx : A.valuation x ≤ 1) :
    ∃ b s : integralClosure R Ω, ¬ A.valuation (s : Ω) < 1 ∧ (s : Ω) * x = b := by
  obtain ⟨g, hg, j, hj⟩ := exists_primitive_at F P x
  obtain ⟨s, hs, hi⟩ := exists_mul_integral A hx (g.map (algebraMap R (integralClosure R Ω))).natDegree
    (g.map (algebraMap R (integralClosure R Ω))) le_rfl (by rw [aeval_map_algebraMap]; exact hg)
    ⟨j, by
      rw [coeff_map]
      intro h
      exact hj ((hP _).1 h)⟩
  exact ⟨⟨_, hi⟩, s, hs, rfl⟩

@[reducible] def actB (R F Ω : Type) [CommRing R] [Field F] [Algebra R F] [Field Ω] [Algebra F Ω] [Algebra R Ω]
    [IsScalarTower R F Ω] : MulSemiringAction (Ω ≃ₐ[F] Ω) (integralClosure R Ω) where
  smul g b := ⟨g b, (b.2 : IsIntegral R (b : Ω)).map (g.toAlgHom.restrictScalars R)⟩
  one_smul _ := Subtype.ext rfl
  mul_smul _ _ _ := Subtype.ext rfl
  smul_zero g := Subtype.ext (map_zero g)
  smul_add g _ _ := Subtype.ext (map_add g _ _)
  smul_one g := Subtype.ext (map_one g)
  smul_mul g _ _ := Subtype.ext (map_mul g _ _)

theorem val_le_one_map [Algebra.IsAlgebraic F Ω] (A : ValuationSubring Ω) (P : Ideal R) [P.IsPrime]
    (hR : ∀ r : R, A.valuation (algebraMap R Ω r) ≤ 1)
    (hP : ∀ r : R, A.valuation (algebraMap R Ω r) < 1 ↔ r ∈ P) (τ : Ω ≃ₐ[F] Ω)
    (hτ : ∀ b : integralClosure R Ω, A.valuation (τ (b : Ω)) < 1 ↔ A.valuation (b : Ω) < 1)
    {x : Ω} (hx : A.valuation x ≤ 1) : A.valuation (τ x) ≤ 1 := by
  obtain ⟨b, s, hs, hsx⟩ := exists_rep F A P hP hx
  have hi : ∀ b : integralClosure R Ω, A.valuation (τ (b : Ω)) ≤ 1 := fun b =>
    val_le_one_of_isIntegral A hR ((b.2 : IsIntegral R (b : Ω)).map (τ.toAlgHom.restrictScalars R))
  have h1 : A.valuation (τ (s : Ω)) = 1 :=
    le_antisymm (hi s) (not_lt.1 fun h => hs ((hτ s).1 h))
  have h2 : τ (s : Ω) * τ x = τ (b : Ω) := by rw [← map_mul, hsx]
  have h3 := congrArg A.valuation h2
  rw [map_mul, h1, one_mul] at h3
  rw [h3]
  exact hi b

end Frob3

section Frob4

open Polynomial Pointwise

variable {R F Ω : Type} [CommRing R] [IsDedekindDomain R] [Field F] [Algebra R F] [IsFractionRing R F]
  [Field Ω] [Algebra F Ω] [Algebra R Ω] [IsScalarTower R F Ω]

theorem exists_frob_generic [IsGalois F Ω] (A : ValuationSubring Ω) (P : Ideal R) [P.IsMaximal] [Finite (R ⧸ P)]
    (hR : ∀ r : R, A.valuation (algebraMap R Ω r) ≤ 1)
    (hP : ∀ r : R, A.valuation (algebraMap R Ω r) < 1 ↔ r ∈ P) :
    ∃ σ : Ω ≃ₐ[F] Ω, σ ∈ A.decompositionSubgroup F ∧
      ∀ x, A.valuation x ≤ 1 → A.valuation (σ x - x ^ Nat.card (R ⧸ P)) < 1 := by
  let _ := actB R F Ω
  have hsm : ∀ (g : Ω ≃ₐ[F] Ω) (b : integralClosure R Ω), ((g • b : integralClosure R Ω) : Ω) = g (b : Ω) :=
    fun _ _ => rfl
  have : SMulCommClass (Ω ≃ₐ[F] Ω) R (integralClosure R Ω) := ⟨fun g r b => Subtype.ext (by
    show g (r • (b : Ω)) = r • g (b : Ω)
    rw [Algebra.smul_def, Algebra.smul_def, map_mul, IsScalarTower.algebraMap_apply R F Ω, g.commutes])⟩
  let _ : TopologicalSpace (integralClosure R Ω) := ⊥
  have : DiscreteTopology (integralClosure R Ω) := ⟨rfl⟩
  have : ContinuousSMul (Ω ≃ₐ[F] Ω) (integralClosure R Ω) := by
    rw [continuousSMul_iff_stabilizer_isOpen]
    intro b
    have h := stabilizer_isOpen_of_isIntegral (K := F) (L := Ω) (b : Ω)
    have he : (MulAction.stabilizer (Ω ≃ₐ[F] Ω) b : Set (Ω ≃ₐ[F] Ω)) =
        (MulAction.stabilizer (Ω ≃ₐ[F] Ω) (b : Ω) : Set (Ω ≃ₐ[F] Ω)) := by
      ext g
      simp only [SetLike.mem_coe, MulAction.mem_stabilizer_iff]
      exact Subtype.ext_iff
    rw [he]
    exact h
  have : Algebra.IsInvariant R (integralClosure R Ω) (Ω ≃ₐ[F] Ω) := ⟨fun b hb => by
    have h1 : (b : Ω) ∈ Set.range (algebraMap F Ω) :=
      (InfiniteGalois.mem_range_algebraMap_iff_fixed (k := F) (K := Ω) (b : Ω)).2
        fun g => congrArg Subtype.val (hb g)
    obtain ⟨k, hk⟩ := h1
    have h2 : IsIntegral R k := by
      have h3 : IsIntegral R (algebraMap F Ω k) := hk ▸ b.2
      exact (isIntegral_algebraMap_iff ).1 h3
    obtain ⟨a, ha⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral h2
    refine ⟨a, Subtype.ext ?_⟩
    show algebraMap R Ω a = (b : Ω)
    rw [IsScalarTower.algebraMap_apply R F Ω, ha, hk]⟩
  let ψ : integralClosure R Ω →+* A := (algebraMap (integralClosure R Ω) Ω).codRestrict A.toSubring
    (fun b => (A.valuation_le_one_iff _).1 (val_le_one_of_isIntegral A hR b.2))
  let Q : Ideal (integralClosure R Ω) := (IsLocalRing.maximalIdeal A).comap ψ
  have : Q.IsPrime := Ideal.comap_isPrime ψ _
  have hQ : ∀ b : integralClosure R Ω, b ∈ Q ↔ A.valuation (b : Ω) < 1 := fun b => by
    show ψ b ∈ IsLocalRing.maximalIdeal A ↔ _
    rw [A.valuation_lt_one_iff]
    rfl
  have : Q.LiesOver P := ⟨by
    ext r
    rw [Ideal.under, Ideal.mem_comap, hQ, ← hP]
    rfl⟩
  have hsurj := Ideal.Quotient.stabilizerHom_surjective_of_profinite (G := Ω ≃ₐ[F] Ω) P Q
  have : Q.IsMaximal := Ideal.IsMaximal.of_liesOver_isMaximal Q P
  let _ : Field (R ⧸ P) := Ideal.Quotient.field P
  let _ : Field (integralClosure R Ω ⧸ Q) := Ideal.Quotient.field Q
  let _ : Fintype (R ⧸ P) := Fintype.ofFinite _
  have : Algebra.IsAlgebraic (R ⧸ P) (integralClosure R Ω ⧸ Q) := Algebra.IsIntegral.isAlgebraic
  obtain ⟨⟨σ, hσ⟩, hσF⟩ := hsurj (FiniteField.frobeniusAlgEquivOfAlgebraic (R ⧸ P) (integralClosure R Ω ⧸ Q))
  have hq : Fintype.card (R ⧸ P) = Nat.card (R ⧸ P) := (Nat.card_eq_fintype_card).symm
  have h1 : ∀ b : integralClosure R Ω, A.valuation (σ (b : Ω) - (b : Ω) ^ Nat.card (R ⧸ P)) < 1 := by
    intro b
    have h := DFunLike.congr_fun hσF (Ideal.Quotient.mk Q b)
    rw [Ideal.Quotient.stabilizerHom_apply, FiniteField.coe_frobeniusAlgEquivOfAlgebraic] at h
    have h' : Ideal.Quotient.mk Q (σ • b) = Ideal.Quotient.mk Q (b ^ Fintype.card (R ⧸ P)) := by
      rw [map_pow]; exact h
    rw [Ideal.Quotient.eq, hQ, hq] at h'
    exact h'
  have h2 : ∀ b : integralClosure R Ω, A.valuation (σ (b : Ω)) < 1 ↔ A.valuation (b : Ω) < 1 := by
    intro b
    have hσ' : σ • Q = Q := hσ
    rw [← hQ b, ← hsm, ← hQ (σ • b)]
    conv_lhs => rw [← hσ']
    exact Ideal.smul_mem_pointwise_smul_iff
  have h3 : ∀ b : integralClosure R Ω, A.valuation (σ⁻¹ (b : Ω)) < 1 ↔ A.valuation (b : Ω) < 1 := by
    intro b
    have := h2 (σ⁻¹ • b)
    rw [hsm] at this
    rw [← this]
    have e : σ (σ⁻¹ (b : Ω)) = (b : Ω) := by
      show (σ * σ⁻¹) (b : Ω) = b
      rw [mul_inv_cancel]; rfl
    rw [e]
  have hst : ∀ x, A.valuation x ≤ 1 → A.valuation (σ x) ≤ 1 := fun x hx =>
    val_le_one_map A P hR hP σ h2 hx
  have hst' : ∀ x, A.valuation x ≤ 1 → A.valuation (σ⁻¹ x) ≤ 1 := fun x hx =>
    val_le_one_map A P hR hP σ⁻¹ h3 hx
  refine ⟨σ, ?_, ?_⟩
  · show σ • A = A
    ext x
    rw [ValuationSubring.mem_pointwise_smul_iff_inv_smul_mem, ← A.valuation_le_one_iff, ← A.valuation_le_one_iff]
    constructor
    · intro h
      have := hst _ h
      have e : σ (σ⁻¹ • x) = x := by
        show (σ * σ⁻¹) x = x
        rw [mul_inv_cancel]; rfl
      rwa [e] at this
    · intro h
      exact hst' x h
  · intro x hx
    obtain ⟨b, s, hs, hsx⟩ := exists_rep F A P hP hx
    set q := Nat.card (R ⧸ P) with hqq
    have hi : ∀ b : integralClosure R Ω, A.valuation (b : Ω) ≤ 1 := fun b => val_le_one_of_isIntegral A hR b.2
    have hs1 : A.valuation (s : Ω) = 1 := le_antisymm (hi s) (not_lt.1 hs)
    have hσs1 : A.valuation (σ (s : Ω)) = 1 :=
      le_antisymm (hst _ (hi s)) (not_lt.1 fun h => hs ((h2 s).1 h))
    have key : (σ (s : Ω) * (s : Ω) ^ q) * (σ x - x ^ q) =
        (σ (b : Ω) - (b : Ω) ^ q) * (s : Ω) ^ q - (b : Ω) ^ q * (σ (s : Ω) - (s : Ω) ^ q) := by
      have e1 : σ (b : Ω) = σ (s : Ω) * σ x := by rw [← hsx, map_mul]
      have e2 : (b : Ω) ^ q = (s : Ω) ^ q * x ^ q := by rw [← hsx, mul_pow]
      rw [e1, e2]
      ring
    have hv := congrArg A.valuation key
    rw [map_mul, map_mul, map_pow, hσs1, hs1, one_pow, one_mul, one_mul] at hv
    rw [hv]
    refine Valuation.map_sub_lt _ ?_ ?_
    · rw [map_mul, map_pow, hs1, one_pow, mul_one]
      exact h1 b
    · rw [map_mul, map_pow]
      rw [mul_comm]
      exact mul_lt_one_of_lt_of_le (h1 s) (pow_le_one₀ zero_le (hi b))

end Frob4

section Frob5

open NumberField IsDedekindDomain

theorem exists_isFrob {F Ω : Type} [Field F] [NumberField F] [Field Ω] [Algebra F Ω] [IsAlgClosure F Ω]
    (A : ValuationSubring Ω) (v : HeightOneSpectrum (𝓞 F)) (h : Formalism.ConjugateSelfDual.IsPlaceOver A v) :
    ∃ σ : Formalism.ConjugateSelfDual.G F Ω, Formalism.ConjugateSelfDual.IsFrob A (Formalism.ConjugateSelfDual.normV v) σ := by
  have : Algebra.IsAlgebraic F Ω := IsAlgClosure.isAlgebraic
  have : IsAlgClosed Ω := IsAlgClosure.isAlgClosed F
  have : IsGalois F Ω := ⟨⟩
  have : v.asIdeal.IsMaximal := v.isMaximal
  have : Finite (𝓞 F ⧸ v.asIdeal) := Ideal.finiteQuotientOfFreeOfNeBot v.asIdeal v.ne_bot
  have hR : ∀ r : 𝓞 F, A.valuation (algebraMap (𝓞 F) Ω r) ≤ 1 := by
    intro r
    have h1 : IsIntegral ℤ (algebraMap (𝓞 F) Ω r) := (RingOfIntegers.isIntegral r).map
      ((IsScalarTower.toAlgHom ℤ (𝓞 F) Ω))
    refine val_le_one_of_isIntegral A (R := ℤ) (fun n => ?_) h1
    rw [A.valuation_le_one_iff]
    rw [eq_intCast]
    exact intCast_mem A n
  exact exists_frob_generic (R := 𝓞 F) (F := F) A v.asIdeal hR h

end Frob5

end FrobAll

section Final

open Formalism.BasicNotions

end Final

end Formalism.MainNotions.LatticeVariant

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.LevelLetterCocycles.LinearIndependentSmulOfNeZero =====
