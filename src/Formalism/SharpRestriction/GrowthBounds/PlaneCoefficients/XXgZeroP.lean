module

public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.DigOKAddInl
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.MemLin
public import Formalism.SharpRestriction.GrowthBounds.Lemma5aAt
public import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.MaxTwistDegreePderivLeAddOne
public import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom
import Formalism.SharpRestriction.GrowthBounds.ScaleEdges.DvdOfAdd
import Formalism.SharpRestriction.GrowthBounds.RootWeights.TwistSubEqMatrixSubst
import Formalism.SharpRestriction.GrowthBounds.SourceCleaning
import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.TMemLaurentFiltration
import Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TouchCOfMem, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValuationGeOfLeAddOne, Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TouchCOfMem =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TouchCOfMem", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.DigOKAddInl\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.MemLin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.DvdOfAdd\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory

variable {p : ℕ} {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} (Dt : SignedChainData p O r J)

theorem Pof_inl (j0 : ZMod J) (l : Fin (Dt.nL j0)) (a0 : Fin r) : Pof Dt (⟨j0, Sum.inl l⟩, a0) = 1 := rfl

theorem Pof_inr (j0 : ZMod J) (m0 a0 : Fin r) : Pof Dt (⟨j0, Sum.inr m0⟩, a0) = Dt.P j0 m0 := rfl

private theorem X_mul_monomialPlaneCoefficients {σ R : Type} [CommSemiring R] (w : σ) (mo : σ →₀ ℕ) (c : R) :
    (X w : MvPolynomial σ R) * monomial mo c = monomial (Finsupp.single w 1 + mo) c := by
  rw [monomial_single_add, pow_one]

private theorem liftMon_eq_add_single_of_eq_off (mo mo' : TL J Dt.nL r × Fin r →₀ ℕ) (v : TL J Dt.nL r × Fin r) (d : ℕ)
    (h1 : ∀ w, w ≠ v → mo' w = mo w) (h2 : mo' v / Pof Dt v = mo v / Pof Dt v + d) :
    liftMon Dt mo' = liftMon Dt mo + Finsupp.single (Dt.liftVar v) d := by
  unfold liftMon
  rw [← Finsupp.mapDomain_single, ← Finsupp.mapDomain_add]
  congr 1
  ext w
  simp only [liftE, Finsupp.onFinset_apply, Finsupp.add_apply, Finsupp.single_apply]
  split_ifs with hw
  · subst hw
    exact h2
  · rw [h1 w (Ne.symm hw), add_zero]

private theorem digOK_iff_of_eq_off_inl (j0 : ZMod J) (l : Fin (Dt.nL j0)) (a0 : Fin r)
    (rho : (ZMod J × Fin r) × Fin r → ℕ) (mo mo' : TL J Dt.nL r × Fin r →₀ ℕ)
    (h1 : ∀ w, w ≠ (⟨j0, Sum.inl l⟩, a0) → mo' w = mo w) :
    Dt.digOK rho mo' ↔ Dt.digOK rho mo := by
  unfold SignedChainData.digOK
  refine forall_congr' fun j => forall_congr' fun m => forall_congr' fun a => ?_
  rw [h1]
  intro h
  simp only [Prod.mk.injEq, Sigma.mk.inj_iff] at h
  obtain ⟨⟨rfl, h⟩, -⟩ := h
  simp at h

theorem Fdig_mul_inl (j0 : ZMod J) (l : Fin (Dt.nL j0)) (a0 : Fin r) (rho : (ZMod J × Fin r) × Fin r → ℕ)
    (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (X (⟨j0, Sum.inl l⟩, a0) * H) = X (Dt.liftVar (⟨j0, Sum.inl l⟩, a0)) * Dt.Fdig rho H := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inl l⟩, a0) : TL J Dt.nL r × Fin r) →
        (Finsupp.single ((⟨j0, Sum.inl l⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo : TL J Dt.nL r × Fin r →₀ ℕ) w
          = mo w := by
      intro w hw
      simp [Ne.symm hw]
    rw [X_mul_monomialPlaneCoefficients, Fdig_mono, Fdig_mono]
    by_cases hd : Dt.digOK rho mo
    · rw [if_pos ((digOK_iff_of_eq_off_inl Dt j0 l a0 rho mo _ e1).2 hd), if_pos hd, X_mul_monomialPlaneCoefficients,
        liftMon_eq_add_single_of_eq_off Dt mo _ _ 1 e1 (by simp [Pof_inl, add_comm]), add_comm]
    · rw [if_neg (fun h => hd ((digOK_iff_of_eq_off_inl Dt j0 l a0 rho mo _ e1).1 h)), if_neg hd, mul_zero]
  · rw [mul_add, Fdig_add, Fdig_add, hp, hq, mul_add]

private theorem inr_pair_ne_of_ne {j j0 : ZMod J} {m m0 a a0 : Fin r} (hk : ((j, m), a) ≠ ((j0, m0), a0)) :
    ((⟨j, Sum.inr m⟩, a) : TL J Dt.nL r × Fin r) ≠ (⟨j0, Sum.inr m0⟩, a0) := by
  intro he
  apply hk
  simp only [Prod.mk.injEq, Sigma.mk.inj_iff] at he
  obtain ⟨⟨rfl, he⟩, rfl⟩ := he
  simp at he
  subst he
  rfl

private theorem digOK_iff_update_of_eq_off_inr (j0 : ZMod J) (m0 a0 : Fin r) (rho : (ZMod J × Fin r) × Fin r → ℕ) (x : ℕ)
    (mo mo' : TL J Dt.nL r × Fin r →₀ ℕ)
    (h1 : ∀ w, w ≠ ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) → mo' w = mo w)
    (h2 : mo' (⟨j0, Sum.inr m0⟩, a0) % Dt.P j0 m0 = rho ((j0, m0), a0) ↔
      mo (⟨j0, Sum.inr m0⟩, a0) % Dt.P j0 m0 = x) :
    Dt.digOK rho mo' ↔ Dt.digOK (Function.update rho ((j0, m0), a0) x) mo := by
  unfold SignedChainData.digOK
  constructor
  · intro h j m a
    by_cases hk : ((j, m), a) = ((j0, m0), a0)
    · simp only [Prod.mk.injEq] at hk
      obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hk
      rw [Function.update_self]
      exact h2.1 (h _ _ _)
    · rw [Function.update_of_ne hk, ← h1 _ (inr_pair_ne_of_ne (Dt := Dt) hk)]
      exact h j m a
  · intro h j m a
    by_cases hk : ((j, m), a) = ((j0, m0), a0)
    · simp only [Prod.mk.injEq] at hk
      obtain ⟨⟨rfl, rfl⟩, rfl⟩ := hk
      have h3 := h j m a
      rw [Function.update_self] at h3
      exact h2.2 h3
    · have h3 := h j m a
      rw [Function.update_of_ne hk] at h3
      rw [h1 _ (inr_pair_ne_of_ne (Dt := Dt) hk)]
      exact h3

private theorem one_add_mod_div_cases (a P : ℕ) (hP : 0 < P) :
    (a % P + 1 < P ∧ (1 + a) % P = a % P + 1 ∧ (1 + a) / P = a / P) ∨
    (a % P + 1 = P ∧ (1 + a) % P = 0 ∧ (1 + a) / P = a / P + 1) := by
  have ha := Nat.mod_add_div a P
  have hs := Nat.mod_lt a hP
  rcases Nat.lt_or_ge (a % P + 1) P with h | h
  · left
    have e : 1 + a = (a % P + 1) + P * (a / P) := by omega
    rw [e, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt h, Nat.add_mul_div_left _ _ hP, Nat.div_eq_of_lt h,
      zero_add]
    exact ⟨h, rfl, rfl⟩
  · right
    have e : 1 + a = 0 + P * (a / P + 1) := by rw [Nat.mul_add]; omega
    rw [e, Nat.add_mul_mod_self_left, Nat.add_mul_div_left _ _ hP]
    simp
    omega

private theorem mod_div_cases_of_sub_one (a P : ℕ) (hP : 0 < P) (ha : 1 ≤ a) :
    ((a - 1) % P + 1 < P ∧ a % P = (a - 1) % P + 1 ∧ a / P = (a - 1) / P) ∨
    ((a - 1) % P + 1 = P ∧ a % P = 0 ∧ a / P = (a - 1) / P + 1) := by
  have := one_add_mod_div_cases (a - 1) P hP
  rwa [Nat.add_sub_cancel' ha] at this

theorem Fdig_der_inl (j0 : ZMod J) (l : Fin (Dt.nL j0)) (a0 : Fin r) (rho : (ZMod J × Fin r) × Fin r → ℕ)
    (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (pderiv (⟨j0, Sum.inl l⟩, a0) H) = pderiv (Dt.liftVar (⟨j0, Sum.inl l⟩, a0)) (Dt.Fdig rho H) := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inl l⟩, a0) : TL J Dt.nL r × Fin r) →
        (mo - Finsupp.single ((⟨j0, Sum.inl l⟩, a0) : TL J Dt.nL r × Fin r) 1 : TL J Dt.nL r × Fin r →₀ ℕ) w
          = mo w := by
      intro w hw
      simp [Ne.symm hw]
    rw [pderiv_monomial, Fdig_mono, Fdig_mono]
    by_cases hd : Dt.digOK rho mo
    · rw [if_pos ((digOK_iff_of_eq_off_inl Dt j0 l a0 rho mo _ e1).2 hd), if_pos hd, pderiv_monomial,
        _root_.Formalism.MainNotions.PairMembershipBlocks.liftMon_w, Pof_inl, Nat.div_one]
      rcases Nat.eq_zero_or_pos (mo (⟨j0, Sum.inl l⟩, a0)) with h0 | h0
      · simp [h0]
      · congr 1
        have e2 := liftMon_eq_add_single_of_eq_off Dt (mo - Finsupp.single ((⟨j0, Sum.inl l⟩, a0) : TL J Dt.nL r × Fin r) 1) mo
          (⟨j0, Sum.inl l⟩, a0) 1 (fun w hw => (e1 w hw).symm)
          (by simp only [Pof_inl, Nat.div_one, Finsupp.tsub_apply, Finsupp.single_eq_same]; omega)
        rw [e2, add_tsub_cancel_right]
    · rw [if_neg (fun h => hd ((digOK_iff_of_eq_off_inl Dt j0 l a0 rho mo _ e1).1 h)), if_neg hd, map_zero]
  · rw [map_add (f := _), Fdig_add, Fdig_add, hp, hq, map_add (f := _)]

section Tau

variable (j0 : ZMod J) (m0 a0 : Fin r) (hP : 0 < Dt.P j0 m0) (rho : (ZMod J × Fin r) × Fin r → ℕ)

include hP

theorem Fdig_big (h : Dt.P j0 m0 ≤ rho ((j0, m0), a0)) (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho H = 0 := by
  unfold SignedChainData.Fdig
  apply Finset.sum_eq_zero
  intro mo hmo
  have h3 := (Finset.mem_filter.1 hmo).2 j0 m0 a0
  have h4 := Nat.mod_lt (mo (⟨j0, Sum.inr m0⟩, a0)) hP
  omega

theorem Fdig_mul_zero (h : rho ((j0, m0), a0) = 0) (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (X (⟨j0, Sum.inr m0⟩, a0) * H) =
      X (Dt.liftVar (⟨j0, Sum.inr m0⟩, a0)) * Dt.Fdig (Function.update rho ((j0, m0), a0) (Dt.P j0 m0 - 1)) H := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) →
        (Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo : TL J Dt.nL r × Fin r →₀ ℕ) w = mo w := by
      intro w hw
      simp [Ne.symm hw]
    have hv1 : (Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo : TL J Dt.nL r × Fin r →₀ ℕ) ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) = 1 + mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) := by simp
    rw [X_mul_monomialPlaneCoefficients, Fdig_mono, Fdig_mono]
    rcases one_add_mod_div_cases (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) (Dt.P j0 m0) hP with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
    · have hn : ¬ Dt.digOK rho (Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo) := by
        intro hd
        have := hd j0 m0 a0
        rw [hv1, h2, h] at this
        omega
      have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho (Dt.P j0 m0 - 1) mo _ e1 (by
        rw [hv1, h2, h]
        constructor <;> intro <;> omega)
      rw [if_neg hn, if_neg (fun h' => hn (hd.2 h')), mul_zero]
    · have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho (Dt.P j0 m0 - 1) mo _ e1 (by
        rw [hv1, h2, h]
        constructor <;> intro <;> omega)
      by_cases hd' : Dt.digOK (Function.update rho ((j0, m0), a0) (Dt.P j0 m0 - 1)) mo
      · rw [if_pos (hd.2 hd'), if_pos hd', X_mul_monomialPlaneCoefficients,
          liftMon_eq_add_single_of_eq_off Dt mo _ _ 1 e1 (by rw [hv1, Pof_inr, h3]), add_comm]
      · rw [if_neg (fun h' => hd' (hd.1 h')), if_neg hd', mul_zero]
  · rw [mul_add, Fdig_add, Fdig_add, hp, hq, mul_add]

theorem Fdig_mul_pos (h1 : 0 < rho ((j0, m0), a0)) (h2 : rho ((j0, m0), a0) < Dt.P j0 m0)
    (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (X (⟨j0, Sum.inr m0⟩, a0) * H) =
      Dt.Fdig (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) - 1)) H := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) →
        (Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo : TL J Dt.nL r × Fin r →₀ ℕ) w = mo w := by
      intro w hw
      simp [Ne.symm hw]
    have hv1 : (Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 + mo : TL J Dt.nL r × Fin r →₀ ℕ) ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) = 1 + mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) := by simp
    rw [X_mul_monomialPlaneCoefficients, Fdig_mono, Fdig_mono]
    rcases one_add_mod_div_cases (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) (Dt.P j0 m0) hP with ⟨k1, k2, k3⟩ | ⟨k1, k2, k3⟩
    · have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho (rho ((j0, m0), a0) - 1) mo _ e1 (by
        rw [hv1, k2]
        constructor <;> intro <;> omega)
      by_cases hd' : Dt.digOK (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) - 1)) mo
      · rw [if_pos (hd.2 hd'), if_pos hd',
          liftMon_eq_add_single_of_eq_off Dt mo _ _ 0 e1 (by rw [hv1, Pof_inr, k3, add_zero]), Finsupp.single_zero, add_zero]
      · rw [if_neg (fun h' => hd' (hd.1 h')), if_neg hd']
    · have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho (rho ((j0, m0), a0) - 1) mo _ e1 (by
        rw [hv1, k2]
        constructor <;> intro <;> omega)
      have hn : ¬ Dt.digOK (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) - 1)) mo := by
        intro hd'
        have := hd' j0 m0 a0
        rw [Function.update_self] at this
        omega
      rw [if_neg (fun h' => hn (hd.1 h')), if_neg hn]
  · rw [mul_add, Fdig_add, Fdig_add, hp, hq]

theorem Fdig_der_lt (h : rho ((j0, m0), a0) + 1 < Dt.P j0 m0) (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (pderiv (⟨j0, Sum.inr m0⟩, a0) H) =
      ((rho ((j0, m0), a0) + 1 : ℕ) : KK O) • Dt.Fdig (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) + 1)) H +
      ((Dt.P j0 m0 : ℕ) : KK O) • (X (Dt.liftVar (⟨j0, Sum.inr m0⟩, a0)) * pderiv (Dt.liftVar (⟨j0, Sum.inr m0⟩, a0))
        (Dt.Fdig (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) + 1)) H)) := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) →
        (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 : TL J Dt.nL r × Fin r →₀ ℕ) w = mo w := by
      intro w hw
      simp [Ne.symm hw]
    have hv1 : (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 : TL J Dt.nL r × Fin r →₀ ℕ) ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) = mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) - 1 := by simp
    rw [pderiv_monomial, Fdig_mono, Fdig_mono]
    rcases Nat.eq_zero_or_pos (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) with ha | ha
    · have hn' : ¬ Dt.digOK (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) + 1)) mo := by
        intro hd
        have := hd j0 m0 a0
        rw [Function.update_self, ha, Nat.zero_mod] at this
        omega
      rw [if_neg hn', ha]
      simp
    · rcases mod_div_cases_of_sub_one (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) (Dt.P j0 m0) hP ha with ⟨k1, k2, k3⟩ | ⟨k1, k2, k3⟩
      · have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho (rho ((j0, m0), a0) + 1) mo _ e1 (by
          rw [hv1, k2]
          constructor <;> intro <;> omega)
        by_cases hd' : Dt.digOK (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) + 1)) mo
        · have hk : mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) % Dt.P j0 m0 = rho ((j0, m0), a0) + 1 := by
            have := hd' j0 m0 a0
            rwa [Function.update_self] at this
          have hL := liftMon_eq_add_single_of_eq_off Dt (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1) mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 0 (fun w hw => (e1 w hw).symm)
            (by rw [hv1, Pof_inr, k3, add_zero])
          rw [Finsupp.single_zero, add_zero] at hL
          rw [if_pos (hd.2 hd'), if_pos hd', pderiv_monomial, _root_.Formalism.MainNotions.PairMembershipBlocks.liftMon_w, Pof_inr, ← hL, X_mul_monomialPlaneCoefficients]
          have hc : ((rho ((j0, m0), a0) + 1 : ℕ) : KK O) + ((Dt.P j0 m0 : ℕ) : KK O) *
              ((mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) / Dt.P j0 m0 : ℕ) : KK O) = ((mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) : ℕ) : KK O) := by
            rw [← Nat.cast_mul, ← Nat.cast_add, ← hk, Nat.mod_add_div]
          rcases Nat.eq_zero_or_pos (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) / Dt.P j0 m0) with hq | hq
          · rw [hq] at hc ⊢
            simp only [Nat.cast_zero, mul_zero, map_zero, smul_zero, add_zero, smul_monomial] at hc ⊢
            rw [smul_eq_mul, ← hc, mul_comm]
          · have hLv : liftMon Dt mo (Dt.liftVar ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) = mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) / Dt.P j0 m0 := by rw [_root_.Formalism.MainNotions.PairMembershipBlocks.liftMon_w, Pof_inr]
            have hs : Finsupp.single (Dt.liftVar ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) 1 + (liftMon Dt mo - Finsupp.single (Dt.liftVar ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) 1) = liftMon Dt mo := by
              ext w
              simp only [Finsupp.add_apply, Finsupp.tsub_apply, Finsupp.single_apply]
              split_ifs with hw
              · subst hw
                omega
              · simp
            rw [hs, smul_monomial, smul_monomial, ← map_add (f := _), smul_eq_mul, smul_eq_mul, ← hc]
            congr 1
            ring
        · rw [if_neg (fun h' => hd' (hd.1 h')), if_neg hd']
          simp
      · have hn' : ¬ Dt.digOK (Function.update rho ((j0, m0), a0) (rho ((j0, m0), a0) + 1)) mo := by
          intro hd
          have := hd j0 m0 a0
          rw [Function.update_self, k2] at this
          omega
        have hn : ¬ Dt.digOK rho (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1) := by
          intro hd
          have := hd j0 m0 a0
          rw [hv1] at this
          omega
        rw [if_neg hn, if_neg hn']
        simp
  · simp only [map_add (f := _), Fdig_add, hp, hq, smul_add, mul_add]
    abel

theorem Fdig_der_eq (h : rho ((j0, m0), a0) + 1 = Dt.P j0 m0) (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) :
    Dt.Fdig rho (pderiv (⟨j0, Sum.inr m0⟩, a0) H) =
      ((Dt.P j0 m0 : ℕ) : KK O) • pderiv (Dt.liftVar (⟨j0, Sum.inr m0⟩, a0))
        (Dt.Fdig (Function.update rho ((j0, m0), a0) 0) H) := by
  refine MvPolynomial.induction_on' H (fun mo c => ?_) (fun p q hp hq => ?_)
  · have e1 : ∀ w : TL J Dt.nL r × Fin r, w ≠ ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) →
        (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 : TL J Dt.nL r × Fin r →₀ ℕ) w = mo w := by
      intro w hw
      simp [Ne.symm hw]
    have hv1 : (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 : TL J Dt.nL r × Fin r →₀ ℕ) ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) = mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) - 1 := by simp
    rw [pderiv_monomial, Fdig_mono, Fdig_mono]
    rcases Nat.eq_zero_or_pos (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) with ha | ha
    · by_cases hd' : Dt.digOK (Function.update rho ((j0, m0), a0) 0) mo
      · rw [if_pos hd', pderiv_monomial, _root_.Formalism.MainNotions.PairMembershipBlocks.liftMon_w, Pof_inr, ha]
        simp
      · rw [if_neg hd', ha]
        simp
    · rcases mod_div_cases_of_sub_one (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) (Dt.P j0 m0) hP ha with ⟨k1, k2, k3⟩ | ⟨k1, k2, k3⟩
      · have hn' : ¬ Dt.digOK (Function.update rho ((j0, m0), a0) 0) mo := by
          intro hd
          have := hd j0 m0 a0
          rw [Function.update_self, k2] at this
          omega
        have hn : ¬ Dt.digOK rho (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1) := by
          intro hd
          have := hd j0 m0 a0
          rw [hv1] at this
          omega
        rw [if_neg hn, if_neg hn']
        simp
      · have hd := digOK_iff_update_of_eq_off_inr Dt j0 m0 a0 rho 0 mo _ e1 (by
          rw [hv1, k2]
          constructor <;> intro <;> omega)
        by_cases hd' : Dt.digOK (Function.update rho ((j0, m0), a0) 0) mo
        · have hL := liftMon_eq_add_single_of_eq_off Dt (mo - Finsupp.single ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1) mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) 1 (fun w hw => (e1 w hw).symm)
            (by rw [hv1, Pof_inr, k3])
          have hc : ((Dt.P j0 m0 : ℕ) : KK O) * ((mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) / Dt.P j0 m0 : ℕ) : KK O) = ((mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r) : ℕ) : KK O) := by
            rw [← Nat.cast_mul]
            congr 1
            have := Nat.mod_add_div (mo ((⟨j0, Sum.inr m0⟩, a0) : TL J Dt.nL r × Fin r)) (Dt.P j0 m0)
            rw [k2, zero_add] at this
            exact this
          rw [if_pos (hd.2 hd'), if_pos hd', pderiv_monomial, _root_.Formalism.MainNotions.PairMembershipBlocks.liftMon_w, Pof_inr, hL, add_tsub_cancel_right,
            smul_monomial, smul_eq_mul, ← hc]
          congr 1
          ring
        · rw [if_neg (fun h' => hd' (hd.1 h')), if_neg hd']
          simp
  · simp only [map_add (f := _), Fdig_add, hp, hq, smul_add]

end Tau

theorem Fdig_der_ex (hP : ∀ j m, 0 < Dt.P j m) (v0 : TL J Dt.nL r × Fin r) (rho : (ZMod J × Fin r) × Fin r → ℕ) :
    ∃ (c1 c2 c3 : KK O) (rho1 rho2 : (ZMod J × Fin r) × Fin r → ℕ), (c2 ≠ 0 → Dt.trueLet.vec v0.1 = true) ∧
      ∀ H, Dt.Fdig rho (pderiv v0 H) = c1 • Dt.Fdig rho1 H +
        c2 • (X (Dt.liftVar v0) * pderiv (Dt.liftVar v0) (Dt.Fdig rho1 H)) +
        c3 • pderiv (Dt.liftVar v0) (Dt.Fdig rho2 H) := by
  rcases v0 with ⟨⟨j, l | m⟩, a⟩
  · refine ⟨0, 0, 1, rho, rho, fun h => absurd rfl h, fun H => ?_⟩
    rw [Fdig_der_inl]
    simp
  · have hPm := hP j m
    rcases lt_trichotomy (rho ((j, m), a) + 1) (Dt.P j m) with h | h | h
    · refine ⟨((rho ((j, m), a) + 1 : ℕ) : KK O), ((Dt.P j m : ℕ) : KK O), 0,
        Function.update rho ((j, m), a) (rho ((j, m), a) + 1), rho, fun _ => rfl, fun H => ?_⟩
      rw [Fdig_der_lt Dt j m a hPm rho h H]
      simp
    · refine ⟨0, 0, ((Dt.P j m : ℕ) : KK O), rho, Function.update rho ((j, m), a) 0,
        fun h => absurd rfl h, fun H => ?_⟩
      rw [Fdig_der_eq Dt j m a hPm rho h H]
      simp
    · refine ⟨0, 0, 0, rho, rho, fun h => absurd rfl h, fun H => ?_⟩
      rw [Fdig_big Dt j m a hPm rho (by omega)]
      simp

theorem Fdig_mul_ex (hP : ∀ j m, 0 < Dt.P j m) (v0 : TL J Dt.nL r × Fin r) (rho : (ZMod J × Fin r) × Fin r → ℕ) :
    ∃ (c1 c2 : KK O) (rho1 rho2 : (ZMod J × Fin r) × Fin r → ℕ),
      ∀ H, Dt.Fdig rho (X v0 * H) = c1 • Dt.Fdig rho1 H + c2 • (X (Dt.liftVar v0) * Dt.Fdig rho2 H) := by
  rcases v0 with ⟨⟨j, l | m⟩, a⟩
  · refine ⟨0, 1, rho, rho, fun H => ?_⟩
    rw [Fdig_mul_inl]
    simp
  · have hPm := hP j m
    by_cases h0 : rho ((j, m), a) = 0
    · refine ⟨0, 1, rho, Function.update rho ((j, m), a) (Dt.P j m - 1), fun H => ?_⟩
      rw [Fdig_mul_zero Dt j m a hPm rho h0 H]
      simp
    · by_cases h1 : rho ((j, m), a) < Dt.P j m
      · refine ⟨1, 0, Function.update rho ((j, m), a) (rho ((j, m), a) - 1), rho, fun H => ?_⟩
        rw [Fdig_mul_pos Dt j m a hPm rho (Nat.pos_of_ne_zero h0) h1 H]
        simp
      · refine ⟨0, 0, rho, rho, fun H => ?_⟩
        rw [Fdig_big Dt j m a hPm rho (by omega)]
        simp

theorem modelLet_vec (v0 : TL J Dt.nL r × Fin r) : Dt.modelLet.vec (Dt.liftVar v0).1 = Dt.trueLet.vec v0.1 := by
  rcases v0 with ⟨⟨j, l | m⟩, a⟩ <;> rfl

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TouchCOfMem =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValuationGeOfLeAddOne =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValuationGeOfLeAddOne", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.Lemma5aAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport Formalism.SharpRestriction.GrowthBounds.DualFockLinear.IsMultiHom\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.TwistSubEqMatrixSubst\nimport Formalism.SharpRestriction.GrowthBounds.ScaleEdges.DvdOfAdd\nimport Formalism.SharpRestriction.GrowthBounds.SourceCleaning\nimport Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.MaxTwistDegreePderivLeAddOne\nimport Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.TMemLaurentFiltration\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory
open Formalism.MainNotions.TestSideWords.TwistedFiltration.G2

section Gen

variable {σ R : Type*} [CommRing R]

theorem X_mul_mono (v : σ) (mo : σ →₀ ℕ) (c : R) : X v * monomial mo c = monomial (mo + Finsupp.single v 1) c := by
  rw [X, monomial_mul, one_mul, add_comm]

theorem pderiv_add_single (w : σ) (L : σ →₀ ℕ) (c : R) :
    pderiv w (monomial (L + Finsupp.single w 1) c) = monomial L (c * ((L w : R) + 1)) := by
  rw [pderiv_monomial, add_tsub_cancel_right, Finsupp.add_apply, Finsupp.single_eq_same]
  push_cast
  rfl

theorem pderiv_mono_zero (w : σ) (L : σ →₀ ℕ) (c : R) (h : L w = 0) : pderiv w (monomial L c) = 0 := by
  rw [pderiv_monomial, h, Nat.cast_zero, mul_zero, map_zero]

theorem exists_add_single (w : σ) (L : σ →₀ ℕ) (h : L w ≠ 0) : ∃ L', L = L' + Finsupp.single w 1 := ⟨L - Finsupp.single w 1,
  (tsub_add_cancel_of_le (Finsupp.single_le_iff.mpr (Nat.one_le_iff_ne_zero.mpr h))).symm⟩

end Gen

section PolS

variable {R : Type} [CommRing R] {ι : Type} {n : ℕ}

theorem multideg_add_single (mo : ι × Fin n →₀ ℕ) (x0 : ι) (a : Fin n) (i : ι) :
    multideg (mo + Finsupp.single (x0, a) 1) i = multideg mo i + if i = x0 then 1 else 0 := by
  unfold multideg
  simp only [Finsupp.add_apply, Finset.sum_add_distrib]
  congr 1
  by_cases h : i = x0
  · subst h
    simp [Finsupp.single_apply]
  · simp [h]

theorem mem_Pol' {d : ι → ℕ} {F : MvPolynomial (ι × Fin n) R} :
    F ∈ Pol R n d ↔ ∀ m ∈ F.support, ∀ i, multideg m i = d i := by
  unfold Pol
  rw [mem_restrictSupport_iff]
  constructor
  · intro h m hm
    exact h hm
  · intro h m hm
    exact h m hm

theorem mono_mem_Pol {d : ι → ℕ} (m : ι × Fin n →₀ ℕ) (c : R) (h : ∀ i, multideg m i = d i) :
    monomial m c ∈ Pol R n d := by
  rw [mem_Pol']
  intro m' hm'
  have h1 := support_monomial_subset hm'
  rw [Finset.mem_singleton] at h1
  rw [h1]
  exact h

theorem Pol_pderiv {d d' : ι → ℕ} (x0 : ι) (a : Fin n) (h0 : d' x0 = d x0 + 1) (h1 : ∀ i, i ≠ x0 → d' i = d i)
    {H : MvPolynomial (ι × Fin n) R} (hH : H ∈ Pol R n d') : pderiv (x0, a) H ∈ Pol R n d := by
  rw [mem_Pol'] at hH

  rw [H.as_sum, map_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  by_cases hz : m (x0, a) = 0
  · rw [pderiv_mono_zero _ _ _ hz]
    exact Submodule.zero_mem _
  · obtain ⟨m', rfl⟩ := exists_add_single _ m hz
    rw [pderiv_add_single]
    apply mono_mem_Pol
    intro i
    have hi := hH _ hm i
    rw [multideg_add_single] at hi
    by_cases hix : i = x0
    · subst hix
      simp at hi
      omega
    · simp [hix] at hi
      rw [hi, h1 i hix]

theorem Pol_X_mul {d d' : ι → ℕ} (x0 : ι) (a : Fin n) (h0 : d x0 = d' x0 + 1) (h1 : ∀ i, i ≠ x0 → d' i = d i)
    {H : MvPolynomial (ι × Fin n) R} (hH : H ∈ Pol R n d') : X (x0, a) * H ∈ Pol R n d := by
  rw [mem_Pol'] at hH
  rw [H.as_sum, Finset.mul_sum]
  refine Submodule.sum_mem _ fun m hm => ?_
  rw [X_mul_mono]
  apply mono_mem_Pol
  intro i
  rw [multideg_add_single, hH m hm i]
  by_cases hix : i = x0
  · subst hix
    simp
    omega
  · simp [hix]
    exact h1 i hix

end PolS

theorem valuation_ge_of_le_add_one {x y : WithTop ℤ} {t t' : ℝ} (h : x ≤ y + ((1 : ℤ) : WithTop ℤ)) (hx : geZ x t') (ht : t + 1 ≤ t') :
    geZ y t := by
  intro k hk
  rw [hk] at h
  have h' : x ≤ ((k + 1 : ℤ) : WithTop ℤ) := by
    rw [WithTop.coe_add]
    exact h
  induction x using WithTop.recTopCoe with
  | top => simp at h'
  | coe k'' =>
    have h2 := hx k'' rfl
    have h3 : (k'' : ℝ) ≤ (k : ℝ) + 1 := by exact_mod_cast WithTop.coe_le_coe.mp h'
    linarith

section ValOp

variable {Kf : Type} [Field Kf] {ι : Type} {n : ℕ} [NeZero n] (LL : Letters ι) (S : Set ι)

end ValOp

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValuationGeOfLeAddOne =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.NoOpStep\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.TouchCOfMem\npublic import Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.ValuationGeOfLeAddOne\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.DerivativeValuationBounds\npublic import Formalism.SharpRestriction.GrowthBounds.TwistedSubstitution.TwistedMonomialFiltration.MaxTwistDegreePderivLeAddOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial Finset Classical

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords Formalism.MainNotions.G.GLWeightTheory
open Formalism.MainNotions.TestSideWords.TwistedFiltration.G2

variable {p : ℕ} [Fact p.Prime] {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {r J : ℕ} [NeZero J]
  [NeZero r] (Dt : SignedChainData p O r J)

theorem twoPow_pos (j : ZMod J) (m : Fin r) : 0 < Dt.P j m := pow_pos (Nat.Prime.pos Fact.out) _

theorem XXg_zeroP (d : TL J Dt.nL r → ℕ) (th : ∀ j, Fin (Dt.nch j) → ℝ) (thL : ZMod J → Fin r → ℝ) :
    XXg Dt d th thL 0 := by
  refine ⟨Submodule.zero_mem _, fun rho j i => ?_, fun j mm _ => ?_⟩
  · rw [Fdig_zero, valS_zero_eq_top]; exact geZ_top _
  · rw [valS_zero_eq_top]; exact geZ_top _

private theorem touchC_of_liftVar_mem_chainML (x0 : TL J Dt.nL r) (a : Fin r) (j : ZMod J) (i : Fin (Dt.nch j))
    (h : (Dt.liftVar (x0, a)).1 ∈ Dt.chainML j i) : touchC Dt x0 j i := by
  obtain ⟨j', y⟩ := x0
  obtain ⟨z, hz, hzz⟩ := h
  rcases y with l | m <;> rcases z with l' | m'
  · simp only [Formalism.MainNotions.PlaneGramData.SignedChainData.levToML, Formalism.MainNotions.PlaneGramData.SignedChainData.liftVar] at hzz
    injection hzz with h1 h2
    subst h1
    cases h2
    exact Or.inl ⟨l', rfl, hz⟩
  · simp [Formalism.MainNotions.PlaneGramData.SignedChainData.levToML, Formalism.MainNotions.PlaneGramData.SignedChainData.liftVar] at hzz
  · simp [Formalism.MainNotions.PlaneGramData.SignedChainData.levToML, Formalism.MainNotions.PlaneGramData.SignedChainData.liftVar] at hzz
  · simp only [Formalism.MainNotions.PlaneGramData.SignedChainData.levToML, Formalism.MainNotions.PlaneGramData.SignedChainData.liftVar] at hzz
    injection hzz with h1 h2
    subst h1 h2
    exact Or.inr ⟨m', rfl⟩

theorem plDer' (x0 : TL J Dt.nL r) (a : Fin r) (d d' : TL J Dt.nL r → ℕ) (h0 : d' x0 = d x0 + 1)
    (h1 : ∀ i, i ≠ x0 → d' i = d i) (th th' : ∀ j, Fin (Dt.nch j) → ℝ) (thL thL' : ZMod J → Fin r → ℝ)
    (t1 : ∀ j i, th j i ≤ th' j i)
    (t2 : ∀ j i, touchC Dt x0 j i → Dt.trueLet.vec x0 = true → th j i + 1 ≤ th' j i)
    (t3 : ∀ j m, thL j m ≤ thL' j m)
    (t4 : ∀ j m, x0 ∈ Dt.TSet j m → Dt.trueLet.vec x0 = true → thL j m + 1 ≤ thL' j m)
    (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) (hH : XXg Dt d' th' thL' H) :
    XXg Dt d th thL (pderiv (x0, a) H) := by
  obtain ⟨hP, hC, hT⟩ := hH
  refine ⟨Pol_pderiv x0 a h0 h1 hP, fun rho j i => ?_, fun j m hm => ?_⟩
  · obtain ⟨c1, c2, c3, rho1, rho2, hc2, hF⟩ := Fdig_der_ex Dt (twoPow_pos Dt) (x0, a) rho
    rw [hF]
    have e1 : geZ (valS Dt.modelLet (Dt.chainML j i) (c1 • Dt.Fdig rho1 H)) (th j i) :=
      geZ_anti (t1 j i) (geZ_mono (valS_smul_ge _ _ _ _) (hC rho1 j i))
    have e2 : geZ (valS Dt.modelLet (Dt.chainML j i)
        (c2 • (X (Dt.liftVar (x0, a)) * pderiv (Dt.liftVar (x0, a)) (Dt.Fdig rho1 H)))) (th j i) := by
      by_cases hc : c2 = 0
      · rw [hc, zero_smul, valS_zero_eq_top]
        exact geZ_top _
      have hv : Dt.trueLet.vec x0 = true := hc2 hc
      refine geZ_mono (valS_smul_ge _ _ _ _) (geZ_mono (valS_X_mul_of _ _ _ _ ?_) ?_)
      · intro _
        rw [modelLet_vec]
        exact hv
      by_cases hs : (Dt.liftVar (x0, a)).1 ∈ Dt.chainML j i
      · exact valuation_ge_of_le_add_one (valS_pderiv _ _ _ _) (hC rho1 j i) (t2 j i (touchC_of_liftVar_mem_chainML Dt x0 a j i hs) hv)
      · exact geZ_anti (t1 j i)
          (geZ_mono (valS_pderiv_of _ _ _ _ (fun h => absurd h hs)) (hC rho1 j i))
    have e3 : geZ (valS Dt.modelLet (Dt.chainML j i)
        (c3 • pderiv (Dt.liftVar (x0, a)) (Dt.Fdig rho2 H))) (th j i) := by
      refine geZ_mono (valS_smul_ge _ _ _ _) ?_
      by_cases hb : (Dt.liftVar (x0, a)).1 ∈ Dt.chainML j i ∧ Dt.trueLet.vec x0 = true
      · exact valuation_ge_of_le_add_one (valS_pderiv _ _ _ _) (hC rho2 j i) (t2 j i (touchC_of_liftVar_mem_chainML Dt x0 a j i hb.1) hb.2)
      · refine geZ_anti (t1 j i) (geZ_mono (valS_pderiv_of _ _ _ _ ?_) (hC rho2 j i))
        intro hs
        rw [modelLet_vec]
        by_contra hc
        exact hb ⟨hs, by simpa using hc⟩
    exact geZ_mono (flt_valS_add _ _ _ _) (geZ_min (geZ_mono (flt_valS_add _ _ _ _) (geZ_min e1 e2)) e3)
  · by_cases hb : x0 ∈ Dt.TSet j m ∧ Dt.trueLet.vec x0 = true
    · exact valuation_ge_of_le_add_one (valS_pderiv _ _ H (x0, a)) (hT j m hm) (t4 j m hb.1 hb.2)
    · refine geZ_anti (t3 j m) (geZ_mono (valS_pderiv_of _ _ H (x0, a) ?_) (hT j m hm))
      intro hs
      by_contra hc
      exact hb ⟨hs, by simpa using hc⟩

theorem plMul' (x0 : TL J Dt.nL r) (a : Fin r) (d d' : TL J Dt.nL r → ℕ) (h0 : d x0 = d' x0 + 1)
    (h1 : ∀ i, i ≠ x0 → d' i = d i) (th th' : ∀ j, Fin (Dt.nch j) → ℝ) (thL thL' : ZMod J → Fin r → ℝ)
    (t1 : ∀ j i, th j i ≤ th' j i)
    (t2 : ∀ j i, touchC Dt x0 j i → Dt.trueLet.vec x0 = false → th j i + 1 ≤ th' j i)
    (t3 : ∀ j m, thL j m ≤ thL' j m)
    (t4 : ∀ j m, x0 ∈ Dt.TSet j m → Dt.trueLet.vec x0 = false → thL j m + 1 ≤ thL' j m)
    (H : MvPolynomial (TL J Dt.nL r × Fin r) (KK O)) (hH : XXg Dt d' th' thL' H) :
    XXg Dt d th thL (X (x0, a) * H) := by
  obtain ⟨hP, hC, hT⟩ := hH
  refine ⟨Pol_X_mul x0 a h0 h1 hP, fun rho j i => ?_, fun j m hm => ?_⟩
  · obtain ⟨c1, c2, rho1, rho2, hF⟩ := Fdig_mul_ex Dt (twoPow_pos Dt) (x0, a) rho
    rw [hF]
    have e1 : geZ (valS Dt.modelLet (Dt.chainML j i) (c1 • Dt.Fdig rho1 H)) (th j i) :=
      geZ_anti (t1 j i) (geZ_mono (valS_smul_ge _ _ _ _) (hC rho1 j i))
    have e2 : geZ (valS Dt.modelLet (Dt.chainML j i)
        (c2 • (X (Dt.liftVar (x0, a)) * Dt.Fdig rho2 H))) (th j i) := by
      refine geZ_mono (valS_smul_ge _ _ _ _) ?_
      by_cases hb : (Dt.liftVar (x0, a)).1 ∈ Dt.chainML j i ∧ Dt.trueLet.vec x0 = false
      · exact valuation_ge_of_le_add_one (valS_X_mul _ _ _ _) (hC rho2 j i) (t2 j i (touchC_of_liftVar_mem_chainML Dt x0 a j i hb.1) hb.2)
      · refine geZ_anti (t1 j i) (geZ_mono (valS_X_mul_of _ _ _ _ ?_) (hC rho2 j i))
        intro hs
        rw [modelLet_vec]
        by_contra hc
        exact hb ⟨hs, by simpa using hc⟩
    exact geZ_mono (flt_valS_add _ _ _ _) (geZ_min e1 e2)
  · by_cases hb : x0 ∈ Dt.TSet j m ∧ Dt.trueLet.vec x0 = false
    · exact valuation_ge_of_le_add_one (valS_X_mul _ _ H (x0, a)) (hT j m hm) (t4 j m hb.1 hb.2)
    · refine geZ_anti (t3 j m) (geZ_mono (valS_X_mul_of _ _ H (x0, a) ?_) (hT j m hm))
      intro hs
      by_contra hc
      exact hb ⟨hs, by simpa using hc⟩

end Formalism.MainNotions.PairMembershipBlocks

namespace Formalism.MainNotions.PairMembershipBlocks

open Formalism.MainNotions.G Formalism.GradedWeylDivisibility Formalism.MainNotions.SourceCleaning Formalism.MainNotions.Pf14 Formalism.MainNotions.PlaneGramData Formalism.MainNotions.TestSideCounting Formalism.MainNotions.TestSideWords

theorem plDer : PlDer := by
  intro p _ O _ _ _ r J _ _ Dt x0 a d th th' thL thL' hD H hH
  exact plDer' Dt x0 a d (Function.update d x0 (d x0 + 1)) (by simp)
    (fun i hi => by simp [Function.update_of_ne hi]) th th' thL thL' hD.1
    (fun j i h _ => hD.2.1 j i h) hD.2.2.1 (fun j m h _ => hD.2.2.2 j m h) H hH

theorem plMul : PlMul := by
  intro p _ O _ _ _ r J _ _ Dt x0 a d th th' thL thL' hD hd H hH
  exact plMul' Dt x0 a d (Function.update d x0 (d x0 - 1)) (by simp; omega)
    (fun i hi => by simp [Function.update_of_ne hi]) th th' thL thL' hD.1
    (fun j i h _ => hD.2.1 j i h) hD.2.2.1 (fun j m h _ => hD.2.2.2 j m h) H hH

theorem plEul : PlEul := by
  intro p _ O _ _ _ r J _ _ Dt x0 a d th th' thL thL' hD H hH
  rcases Nat.eq_zero_or_pos (d x0) with hz | hpos
  · have hvars : (x0, a) ∉ H.vars := by
      intro hv
      obtain ⟨m, hm, hma⟩ := (MvPolynomial.mem_vars_iff_mem_support _).1 hv
      have hdeg := (mem_Pol'.1 hH.1) m hm x0
      rw [hz] at hdeg
      have hle : m (x0, a) ≤ multideg m x0 :=
        Finset.single_le_sum (f := fun c => m (x0, c)) (fun _ _ => Nat.zero_le _) (Finset.mem_univ a)
      rw [hdeg] at hle
      exact (Finsupp.mem_support_iff.1 hma) (by omega)
    rw [MvPolynomial.pderiv_eq_zero_of_notMem_vars hvars, mul_zero]
    exact XXg_zeroP Dt d th thL
  · have e0 : d x0 = Function.update d x0 (d x0 - 1) x0 + 1 := by simp; omega
    have e1 : ∀ i, i ≠ x0 → Function.update d x0 (d x0 - 1) i = d i :=
      fun i hi => by simp [Function.update_of_ne hi]
    have e1' : ∀ i, i ≠ x0 → d i = Function.update d x0 (d x0 - 1) i :=
      fun i hi => (e1 i hi).symm
    cases hv : Dt.trueLet.vec x0
    · have hD1 := plDer' Dt x0 a (Function.update d x0 (d x0 - 1)) d e0 e1' th' th' thL' thL'
        (fun _ _ => le_rfl) (fun _ _ _ hf => by simp [hv] at hf) (fun _ _ => le_rfl)
        (fun _ _ _ hf => by simp [hv] at hf) H hH
      exact plMul' Dt x0 a d (Function.update d x0 (d x0 - 1)) e0 e1 th th' thL thL' hD.1
        (fun j i h _ => hD.2.1 j i h) hD.2.2.1 (fun j m h _ => hD.2.2.2 j m h) _ hD1
    · have hD1 := plDer' Dt x0 a (Function.update d x0 (d x0 - 1)) d e0 e1' th th' thL thL' hD.1
        (fun j i h _ => hD.2.1 j i h) hD.2.2.1 (fun j m h _ => hD.2.2.2 j m h) H hH
      exact plMul' Dt x0 a d (Function.update d x0 (d x0 - 1)) e0 e1 th th thL thL
        (fun _ _ => le_rfl) (fun _ _ _ hf => by simp [hv] at hf) (fun _ _ => le_rfl)
        (fun _ _ _ hf => by simp [hv] at hf) _ hD1

end Formalism.MainNotions.PairMembershipBlocks
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.PlaneCoefficients.XXgZeroP =====
