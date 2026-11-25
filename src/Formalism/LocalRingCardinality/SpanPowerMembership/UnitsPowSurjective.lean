module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Mathlib.GroupTheory.Divisible
public import Mathlib.RingTheory.WittVector.Teichmuller
public import Mathlib.SetTheory.Cardinal.Continuum
public import Mathlib.FieldTheory.IsAlgClosed.Classification
public import Mathlib.RingTheory.Algebraic.Cardinality
public import Mathlib.RingTheory.Localization.Cardinality
public import Mathlib.RingTheory.WittVector.Compare
import Mathlib.Tactic.TypeStar
public import Mathlib.Algebra.Category.Grp.Injective
public import Mathlib.Analysis.Complex.Cardinality
public import Mathlib.RingTheory.RootsOfUnity.Complex
public import Mathlib.RingTheory.RootsOfUnity.EnoughRootsOfUnity
public import Mathlib.Analysis.Complex.Polynomial.Basic
public import Mathlib.RingTheory.Flat.FaithfullyFlat.Algebra
public import Mathlib.RingTheory.Flat.TorsionFree
public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.RootsOfUnity.AlgebraicallyClosed
public import Mathlib.RingTheory.SimpleRing.Principal
public import Mathlib.RingTheory.WittVector.Domain

@[expose] public section

noncomputable section

namespace Formalism.BasicNotions.Examples₂

open Cardinal

section ToC

variable (p : ℕ) [Fact p.Prime]

theorem teich_charZero : CharZero (WittVector p (AlgebraicClosure (ZMod p))) := by
  exact charZero_of_injective_ringHom
    (f := (WittVector.map (algebraMap (ZMod p) (AlgebraicClosure (ZMod p)))).comp
      (WittVector.equiv p).symm.toRingHom)
    ((WittVector.map_injective _ (algebraMap (ZMod p) (AlgebraicClosure (ZMod p))).injective).comp
      (WittVector.equiv p).symm.injective)

theorem teich_card_Fbar : #(AlgebraicClosure (ZMod p)) = ℵ₀ := by
  refine le_antisymm ?_ (Cardinal.aleph0_le_mk _)
  exact (Algebra.IsAlgebraic.cardinalMk_le_max (ZMod p) (AlgebraicClosure (ZMod p))).trans
    (max_le Cardinal.mk_le_aleph0 le_rfl)

def teichCoeffEquiv (R : Type) : WittVector p R ≃ (ℕ → R) where
  toFun x := x.coeff
  invFun f := WittVector.mk p f
  left_inv x := by ext n; rfl
  right_inv f := by funext n; rfl

theorem mk_wittVector : #(WittVector p (AlgebraicClosure (ZMod p))) = 𝔠 := by
  simpa [teich_card_Fbar] using Cardinal.mk_congr (teichCoeffEquiv p (AlgebraicClosure (ZMod p)))

abbrev TeichOm : Type :=
  AlgebraicClosure (FractionRing (WittVector p (AlgebraicClosure (ZMod p))))

theorem teich_card_Om : #(TeichOm p) = 𝔠 := by
  have hK : #(FractionRing (WittVector p (AlgebraicClosure (ZMod p)))) = 𝔠 := by
    rw [Cardinal.mk_fractionRing, mk_wittVector]
  apply le_antisymm
  · refine (Algebra.IsAlgebraic.cardinalMk_le_max
      (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))) (TeichOm p)).trans ?_
    rw [hK]
    exact max_le le_rfl Cardinal.aleph0_le_continuum
  · rw [← hK]
    exact Cardinal.mk_le_of_injective
      (algebraMap (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))) (TeichOm p)).injective

def teichWOm : WittVector p (AlgebraicClosure (ZMod p)) →+* TeichOm p :=
  (algebraMap (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))) (TeichOm p)).comp
    (algebraMap (WittVector p (AlgebraicClosure (ZMod p)))
      (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))))

theorem teichWOm_injective : Function.Injective (teichWOm p) :=
  (algebraMap (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))) (TeichOm p)).injective.comp
    (IsFractionRing.injective (WittVector p (AlgebraicClosure (ZMod p)))
      (FractionRing (WittVector p (AlgebraicClosure (ZMod p)))))

theorem teich_Om_charZero : CharZero (TeichOm p) :=
  haveI := teich_charZero p
  charZero_of_injective_ringHom (teichWOm_injective p)

theorem teich_Om_equiv : Nonempty (TeichOm p ≃+* ℂ) := by
  have := teich_Om_charZero p
  apply IsAlgClosed.ringEquiv_of_equiv_of_charZero
  · rw [teich_card_Om]; exact Cardinal.aleph0_lt_continuum
  · apply Cardinal.eq.1
    rw [teich_card_Om, Cardinal.mk_complex]

end ToC

end Formalism.BasicNotions.Examples₂
