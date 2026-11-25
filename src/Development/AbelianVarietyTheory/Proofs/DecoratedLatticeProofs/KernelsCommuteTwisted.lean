module

public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairOperatorStatement
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
import Mathlib.LinearAlgebra.Matrix.FiniteDimensional
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Analysis.CStarAlgebra.Classes
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.TwistedOperators.IndicatorIdentity, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.KernelsCommuteTwisted

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.IndicatorIdentity =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.TwistedOperators.IndicatorIdentity", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairOperatorStatement\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Matrix IsLocalRing
open scoped Pointwise
open GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity GlobalTheory.PairOp

noncomputable section
namespace GlobalTheory.KernelComm

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n n' : Type}

section Indicator
open scoped Classical

variable [Fintype n'] (q : Unif k) {P₁ : Pair k n'} {e₁ : n' → k} (he : P₁.HasVal e₁ 1) (Q : Pair k n)
  (x : Matrix n n' k)
include he



end Indicator

theorem card_withKer (q : Unif k) (L : Submodule 𝒪[k] (n → k)) [L.IsLattice k] :
    (withKer L).card = (withLat L).card := by
  classical
  by_cases hfull : L.IsFullLattice k
  · letI : L.IsFullLattice k := hfull
    letI := Fintype.ofFinite (Red L)
    letI := Fintype.ofFinite (Module.Dual 𝓀[k] (Red L))
    have hc : Fintype.card (Red L) = Fintype.card (Module.Dual 𝓀[k] (Red L)) := by
      rw [← Nat.card_eq_fintype_card, ← Nat.card_eq_fintype_card, Module.natCard_eq_pow_finrank (K := 𝓀[k]),
        Module.natCard_eq_pow_finrank (K := 𝓀[k]) (V := Module.Dual 𝓀[k] (Red L)), Subspace.dual_finrank_eq]
    rw [Finset.card_eq_sum_ones, Finset.card_eq_sum_ones, sum_withKer L q, sum_withLat L]
    simp [hc]
  · have hk : withKer L = ∅ := Finset.eq_empty_iff_forall_notMem.mpr (by
      intro P hP
      apply hfull
      rw [← mem_withKer.mp hP]
      exact P.ker_isLat)
    have hl : withLat L = ∅ := Finset.eq_empty_iff_forall_notMem.mpr (by
      intro P hP
      apply hfull
      rw [← mem_withLat.mp hP]
      exact P.isLat)
    simp [hk, hl]

variable [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']

theorem exists_det (q : Unif k) (P : Pair k n) :
    ∃ d : GL n k, d • P.ker = P.lat ∧ Matrix.GeneralLinearGroup.det d = q.unit⁻¹ := by
  obtain ⟨i⟩ : Nonempty n := by
    by_contra h
    haveI := not_nonempty_iff.1 h
    exact P.fn_ne (LinearMap.ext fun y => by rw [Subsingleton.elim y 0]; simp)
  obtain ⟨a, rfl⟩ := MulAction.exists_smul_eq (GL n k) (stdPair k i) P
  have hdet : (Matrix.diagonal (Function.update (1 : n → k) i (q.1 : k))).det = (q.1 : k) := by
    simp [Matrix.det_diagonal, Finset.prod_update_of_mem]
  let d : GL n k := Matrix.GeneralLinearGroup.mkOfDetNeZero _ (hdet ▸ q.ne_zero)
  have hd : ∀ (y : n → k) j, (d • y) j = Function.update (1 : n → k) i (q.1 : k) j * y j := fun y j =>
    Matrix.mulVec_diagonal _ _ _
  have h1 : d⁻¹ • (stdPair k i).ker = (stdPair k i).lat := by
    ext y
    rw [mem_smul_iff, inv_inv, Pair.mem_ker, stdPair_hasVal]
    change _ ↔ y ∈ stdLat k n
    rw [mem_stdLat]
    constructor
    · rintro ⟨h, h0⟩ j
      by_cases hj : j = i
      · subst hj
        obtain ⟨s, hs⟩ := q.mem_max_iff.1 ((residue_eq_zero_iff _).1 h0)
        have h2 : (q.1 : k) * y j = q.1 * s := by simpa [hd] using congrArg Subtype.val hs
        rw [mul_left_cancel₀ q.ne_zero h2]
        exact s.2
      · simpa [hd, hj] using h j
    · intro h
      refine ⟨fun j => ?_, (residue_eq_zero_iff _).2 (q.mem_max_iff.2 ⟨⟨y i, h i⟩, Subtype.ext (by simp [hd])⟩)⟩
      by_cases hj : j = i
      · subst hj
        simpa [hd] using mul_mem q.1.2 (h j)
      · simpa [hd, hj] using h j
  refine ⟨a * d⁻¹ * a⁻¹, by rw [Pair.smul_ker, Pair.smul_lat, mul_smul, mul_smul, inv_smul_smul, h1], ?_⟩
  rw [map_mul, map_mul, map_inv, map_inv, mul_inv_cancel_comm, _root_.inv_inj]
  exact Units.ext hdet

theorem valuation_det (q : Unif k) (P : Pair k n) {g : GL n k} (hg : g • P.ker = P.lat) :
    valuation k ((Matrix.GeneralLinearGroup.det g * q.unit : kˣ) : k) = 1 := by
  obtain ⟨d, hd, hdet⟩ := exists_det q P
  have := valuation_det_of_fix P.ker (h := d⁻¹ * g) (by rw [mul_smul, hg, ← hd, inv_smul_smul])
  rwa [map_mul, map_inv, hdet, inv_inv, mul_comm] at this

variable {V' V : Type} [AddCommGroup V'] [Module ℂ V'] [AddCommGroup V] [Module ℂ V]
  {μ : kˣ →* ℂˣ} {π' : Representation ℂ (GL n' k) V'} {π : Representation ℂ (GL n k) V}
  {θ : V' →ₗ[ℂ] SB (Matrix n n' k) →ₗ[ℂ] V}
  (hμ : IsUnram μ) (hθ : IsEquivTheta μ π' π θ) (P₀ : Pair k n') (Q₀ : Pair k n)

theorem eq_of_base {φ φ' : Form k n V} (h : φ ∈ EqForm π) (h' : φ' ∈ EqForm π) (e : φ Q₀ = φ' Q₀) : φ = φ' := by
  ext Q
  obtain ⟨g, rfl⟩ := MulAction.exists_smul_eq (GL n k) Q₀ Q
  rw [h g, h' g, e]

end GlobalTheory.KernelComm
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.TwistedOperators.IndicatorIdentity =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.KernelsCommuteTwisted =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.KernelsCommuteTwisted", "h": "module\n\npublic import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.IndicatorFunctionIdentity\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IndicatorIdentity\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.PairOperatorStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ValuativeRel Matrix IsLocalRing
open scoped Pointwise
open GlobalTheory.LatPair GlobalTheory.SplitWeil GlobalTheory.IndefiniteRowSideFullHecke.IndicatorFunctionIdentity GlobalTheory.PairOp

noncomputable section
namespace GlobalTheory.KernelCommTw

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  {n n' : Type} [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n']
  {V' V : Type} [AddCommGroup V'] [Module ℂ V'] [AddCommGroup V] [Module ℂ V]

def IsTwEquiv (l' l : kˣ →* ℂˣ) (π' : Representation ℂ (GL n' k) V') (π : Representation ℂ (GL n k) V)
    (θ : V' →ₗ[ℂ] SB (Matrix n n' k) →ₗ[ℂ] V) : Prop :=
  ∀ (g : GL n' k) (h : GL n k) (v : V') (Ψ Ψ' : SB (Matrix n n' k)),
    (∀ x, Ψ'.1 x = (l' (Matrix.GeneralLinearGroup.det g) : ℂ) * (l (Matrix.GeneralLinearGroup.det h) : ℂ) *
      Ψ.1 ((h⁻¹ : GL n k).val * x * g.val)) → θ (π' g v) Ψ' = π h (θ v Ψ)

variable {l' l : kˣ →* ℂˣ} {π' : Representation ℂ (GL n' k) V'} {π : Representation ℂ (GL n k) V}
  {θ : V' →ₗ[ℂ] SB (Matrix n n' k) →ₗ[ℂ] V}

theorem unram_val {χ : kˣ →* ℂˣ} (hχ : IsUnram χ) (u z : kˣ) (hz : valuation k ((z * u : kˣ) : k) = 1) :
    (χ z : ℂ) = (χ u : ℂ)⁻¹ := by
  have := congrArg (fun w : ℂˣ => (w : ℂ)) (hχ _ hz)
  simp only [map_mul, Units.val_mul, Units.val_one] at this
  exact eq_inv_of_mul_eq_one_left this

theorem theta_mem (hl : IsUnram l) (hθ : IsTwEquiv l' l π' π θ) (P₀ : Pair k n') (Q₀ : Pair k n) (v : V') :
    θ v (phiOneSB P₀ Q₀) ∈ levelVec π Q₀ := fun h hh => by
  have hv := valuation_det_of_fix Q₀.lat (h := h) (by rw [← Pair.smul_lat, hh])
  have := hθ 1 h v (phiOneSB P₀ Q₀) (phiOneSB P₀ Q₀) fun x => by
    have e := phiOne_smul (x := x) (P := P₀) (Q := Q₀) 1 h
    rw [one_smul, hh] at e
    simp only [phiOneSB, map_one, hl _ hv, Units.val_one, one_mul]
    simpa using e
  simpa using this.symm

variable (hl : IsUnram l) (hθ : IsTwEquiv l' l π' π θ) (P₀ : Pair k n') (Q₀ : Pair k n)

def KK : Form k n' V' →ₗ[ℂ] Form k n V :=
  (EqForm π).subtype ∘ₗ (evalEquiv π Q₀).symm.toLinearMap ∘ₗ
    LinearMap.codRestrict _ (θ.flip (phiOneSB P₀ Q₀) ∘ₗ LinearMap.proj P₀) fun φ => theta_mem hl hθ P₀ Q₀ (φ P₀)

theorem KK_mem (φ : Form k n' V') : KK hl hθ P₀ Q₀ φ ∈ EqForm π := formOf_mem _ _ _

theorem KK_smul (φ : Form k n' V') (h : GL n k) :
    KK hl hθ P₀ Q₀ φ (h • Q₀) = π h (θ (φ P₀) (phiOneSB P₀ Q₀)) := formOf_smul π Q₀ _ h

theorem KK_move (hl' : IsUnram l') {φ : Form k n' V'} (hφ : φ ∈ EqForm π') (u : kˣ) (g : GL n' k) (h : GL n k)
    (hg : valuation k ((Matrix.GeneralLinearGroup.det g * u : kˣ) : k) = 1)
    (hh : valuation k ((Matrix.GeneralLinearGroup.det h * u : kˣ) : k) = 1) :
    KK hl hθ P₀ Q₀ φ (h • Q₀) = ((l' u : ℂ) * (l u : ℂ))⁻¹ • θ (φ (g • P₀)) (phiOneSB (g • P₀) (h • Q₀)) := by
  rw [KK_smul, hφ g, ← map_smul]
  refine (hθ g h _ _ _ fun x => ?_).symm
  simp only [phiOneSB, Submodule.coe_smul, Pi.smul_apply, smul_eq_mul, phiOne_smul, unram_val hl' u _ hg,
    unram_val hl u _ hh]
  rw [mul_inv]

theorem KK_same (hl' : IsUnram l') {φ : Form k n' V'} (hφ : φ ∈ EqForm π') {P : Pair k n'} {Q : Pair k n}
    (hP : P.lat = P₀.lat) (hQ : Q.lat = Q₀.lat) : KK hl hθ P₀ Q₀ φ Q = θ (φ P) (phiOneSB P Q) := by
  obtain ⟨g, rfl⟩ := MulAction.exists_smul_eq (GL n' k) P₀ P
  obtain ⟨h, rfl⟩ := MulAction.exists_smul_eq (GL n k) Q₀ Q
  rw [KK_move hl hθ P₀ Q₀ hl' hφ 1 g h (by simpa only [mul_one] using valuation_det_of_fix _ hP)
    (by simpa only [mul_one] using valuation_det_of_fix _ hQ)]
  simp

theorem KK_up (hl' : IsUnram l') (q : Unif k) {φ : Form k n' V'} (hφ : φ ∈ EqForm π') {P : Pair k n'}
    {Q : Pair k n} (hP : P.ker = P₀.lat) (hQ : Q.ker = Q₀.lat) :
    KK hl hθ P₀ Q₀ φ Q = ((l' q.unit : ℂ) * (l q.unit : ℂ))⁻¹ • θ (φ P) (phiOneSB P Q) := by
  obtain ⟨g, rfl⟩ := MulAction.exists_smul_eq (GL n' k) P₀ P
  obtain ⟨h, rfl⟩ := MulAction.exists_smul_eq (GL n k) Q₀ Q
  rw [Pair.smul_ker] at hP hQ
  exact KK_move hl hθ P₀ Q₀ hl' hφ q.unit g h (GlobalTheory.KernelComm.valuation_det q _ hP)
    (GlobalTheory.KernelComm.valuation_det q _ hQ)

theorem U_KK (hl' : IsUnram l') (q : Unif k) {φ : Form k n' V'} (hφ : φ ∈ EqForm π') :
    U q (KK hl hθ P₀ Q₀ φ) = ((l' q.unit : ℂ) * (l q.unit : ℂ))⁻¹ • KK hl hθ P₀ Q₀ (U q φ) := by
  classical
  refine GlobalTheory.KernelComm.eq_of_base Q₀ (U_mem_EqForm q (KK_mem hl hθ P₀ Q₀ φ))
    (Submodule.smul_mem _ _ (KK_mem hl hθ P₀ Q₀ _)) ?_
  have h1 : ∀ P₁ ∈ withKer P₀.lat, U q (KK hl hθ P₀ Q₀ φ) Q₀ =
      ((l' q.unit : ℂ) * (l q.unit : ℂ))⁻¹ •
        ∑ P ∈ withLat P₀.lat, if cross q P₁ P = 1 then θ (φ P₁) (phiOneSB P Q₀) else 0 := fun P₁ hP => by
    rw [mem_withKer] at hP

    rw [U_apply, Finset.sum_congr rfl fun Q₁ hQ =>
    KK_up hl hθ P₀ Q₀ hl' q hφ hP (mem_withKer.1 (Finset.mem_filter.1 hQ).1), ← Finset.smul_sum,
    ← Finset.sum_filter, ← map_sum, ← map_sum, ← hP]
    congr 2
    refine Subtype.ext (funext fun x => ?_)
    simp only [Submodule.coe_sum, Finset.sum_apply, phiOneSB]
    have htarget {e₁ : n' → k} (he : P₁.HasVal e₁ 1) (Q : Pair k n) (x : Matrix n n' k) :
        ∑ Q₁ ∈ withKer Q.lat with cross q Q₁ Q = 1, phiOne P₁ Q₁ x = midInd q P₁.ker e₁ Q x := by
      have hm : ∀ Q₁ : Pair k n, Maps P₁ Q₁ x ↔ (∀ y ∈ P₁.ker, x *ᵥ y ∈ Q₁.ker) ∧ Q₁.HasVal (x *ᵥ e₁) 1 := fun Q₁ => by
        rw [maps_iff_glue he Q₁.hasVal_vec, Pair.hasVal_one_iff Q₁.hasVal_vec]
      rw [midInd, mulVec_smul]
      split_ifs with h
      · have hg : IsGlue Q.lat (x *ᵥ e₁) := (isGlue_iff q).2 ⟨Q.isLat, fun h0 =>
          one_ne_zero (h.2.unique (Pair.mem_ker.1 (Pair.smul_mem_ker q.mem_max h0))), h.2.mem⟩
        rw [Finset.sum_eq_single_of_mem (glue hg)]
        · exact if_pos ((hm _).2 ⟨by rw [glue_ker]; exact h.1, glue_hasVal hg⟩)
        · exact Finset.mem_filter.2 ⟨mem_withKer.2 (glue_ker hg),
            (cross_hasVal q (glue_ker hg).symm (glue_hasVal hg)).unique h.2⟩
        · exact fun Q₁ h1 h2 => if_neg fun h3 =>
            h2 ((eq_glue_iff hg).2 ⟨mem_withKer.1 (Finset.mem_filter.1 h1).1, ((hm _).1 h3).2⟩)
      · refine Finset.sum_eq_zero fun Q₁ h1 => if_neg fun h3 => h ?_
        obtain ⟨h1, h2⟩ := Finset.mem_filter.1 h1
        rw [mem_withKer] at h1
        exact ⟨h1 ▸ ((hm _).1 h3).1, h2 ▸ cross_hasVal q h1.symm ((hm _).1 h3).2⟩
    
    have hsource {e₁ : n' → k} (he : P₁.HasVal e₁ 1) (Q : Pair k n) (x : Matrix n n' k) :
        midInd q P₁.ker e₁ Q x = ∑ P ∈ withLat P₁.ker with cross q P₁ P = 1, phiOne P Q x := by
      rw [midInd]
      have hq : q.1 • e₁ ∈ P₁.ker := Pair.smul_mem_ker q.mem_max he.mem
      split_ifs with h
      · let f : P₁.ker →ₗ[𝒪[k]] 𝓀[k] := Q.fn ∘ₗ ((Matrix.mulVecLin x).restrictScalars 𝒪[k]).restrict h.1
        have hf : ∀ y : P₁.ker, Q.HasVal (x *ᵥ y) (f y) := fun y => ⟨h.1 y y.2, rfl⟩
        have h1 : f ⟨_, hq⟩ = 1 := (hf ⟨_, hq⟩).unique h.2
        let R : Pair k n' := ⟨P₁.ker, P₁.ker_isLat, f, fun h0 => by simp [h0] at h1⟩
        have hR : Maps R Q x := ⟨h.1, fun _ => rfl⟩
        rw [Finset.sum_eq_single_of_mem R]
        · exact (if_pos hR).symm
        · exact Finset.mem_filter.2 ⟨mem_withLat.2 rfl, (cross_hasVal q (P := R) rfl he).unique ⟨hq, h1⟩⟩
        · refine fun P hP h2 => if_neg fun h3 => h2 (Pair.ext fun y a => ?_)
          have hl : P.lat = R.lat := mem_withLat.1 (Finset.mem_filter.1 hP).1
          rw [maps_iff_hasVal] at hR h3
          constructor
          · intro hy
            have h4 := R.hasVal_fn ⟨y, hl ▸ hy.mem⟩
            exact (hR _ _ h4).unique (h3 _ _ hy) ▸ h4
          · intro hy
            have h4 := P.hasVal_fn ⟨y, hl ▸ hy.mem⟩
            exact (h3 _ _ h4).unique (hR _ _ hy) ▸ h4
      · refine (Finset.sum_eq_zero fun P h1 => if_neg fun h3 => h ?_).symm
        obtain ⟨h1, h2⟩ := Finset.mem_filter.1 h1
        rw [mem_withLat] at h1
        exact ⟨h1 ▸ h3.1, maps_iff_hasVal.1 h3 _ _ (h2 ▸ cross_hasVal q h1 he)⟩
    exact (htarget P₁.hasVal_vec Q₀ x).trans (hsource P₁.hasVal_vec Q₀ x)
  have h2 : ∀ P ∈ withLat P₀.lat, KK hl hθ P₀ Q₀ (U q φ) Q₀ =
      ∑ P₁ ∈ withKer P₀.lat, if cross q P₁ P = 1 then θ (φ P₁) (phiOneSB P Q₀) else 0 := fun P hP => by
    rw [mem_withLat] at hP

    rw [KK_same hl hθ P₀ Q₀ hl' (U_mem_EqForm q hφ) hP rfl, U_apply, map_sum, LinearMap.sum_apply, hP,
    Finset.sum_filter]
  have h3 := Finset.sum_congr rfl h1
  rw [← Finset.smul_sum, Finset.sum_comm, ← Finset.sum_congr rfl h2, Finset.sum_const, Finset.sum_const,
    GlobalTheory.KernelComm.card_withKer q, smul_comm, ← Nat.cast_smul_eq_nsmul ℂ, ← Nat.cast_smul_eq_nsmul ℂ] at h3
  refine smul_right_injective V ?_ h3
  exact_mod_cast (Finset.card_pos.2 ⟨P₀, mem_withLat.2 rfl⟩).ne'

theorem KK_dia (hl' : IsUnram l') (s : 𝓀[k]ˣ) {φ : Form k n' V'} (hφ : φ ∈ EqForm π') :
    KK hl hθ P₀ Q₀ (dia s φ) = dia s (KK hl hθ P₀ Q₀ φ) := by
  refine GlobalTheory.KernelComm.eq_of_base Q₀ (KK_mem hl hθ P₀ Q₀ _) (dia_mem_EqForm s (KK_mem hl hθ P₀ Q₀ φ)) ?_
  rw [dia_apply, KK_same hl hθ P₀ Q₀ hl' hφ (P := s • P₀) (Q := s • Q₀) rfl rfl,
    KK_same hl hθ P₀ Q₀ hl' (dia_mem_EqForm s hφ) rfl rfl, dia_apply]
  congr 1
  exact Subtype.ext (phiOne_dia s).symm

theorem KK_ram (hl' : IsUnram l') {φ : Form k n' V'} (hφ : φ ∈ EqForm π') (h : φ ∈ Mram k n' V') :
    KK hl hθ P₀ Q₀ φ ∈ Mram k n V := by
  have : Nm (KK hl hθ P₀ Q₀ φ) = KK hl hθ P₀ Q₀ (Nm φ) := by

    simp only [Nm, LinearMap.sum_apply, map_sum, KK_dia hl hθ P₀ Q₀ hl' _ hφ]
  rw [show Nm φ = 0 from h, map_zero] at this
  exact this

theorem FFStar_KK (hl' : IsUnram l') (q : Unif k) (χ : AddChar 𝓀[k] ℂ) {φ : Form k n' V'} (hφ : φ ∈ EqForm π')
    (h : φ ∈ Mram k n' V') :
    FFStar q χ (KK hl hθ P₀ Q₀ φ) = ((l' q.unit : ℂ) * (l q.unit : ℂ))⁻¹ • KK hl hθ P₀ Q₀ (FFStar q χ φ) := by
  have h1 : GsStar χ (KK hl hθ P₀ Q₀ φ) = KK hl hθ P₀ Q₀ (GsStar χ φ) := by

    simp only [GsStar, LinearMap.sum_apply, LinearMap.smul_apply, map_sum, map_smul, KK_dia hl hθ P₀ Q₀ hl' _ hφ]
  have h2 : GsStar χ φ ∈ EqForm π' := by
    simp only [GsStar, LinearMap.sum_apply, LinearMap.smul_apply]
    exact sum_mem fun c _ => Submodule.smul_mem _ _ (dia_mem_EqForm _ hφ)
  rw [FFStar_eq_U_GsStar q χ h, FFStar_eq_U_GsStar q χ (KK_ram hl hθ P₀ Q₀ hl' hφ h), h1,
    U_KK hl hθ P₀ Q₀ hl' q h2]

theorem KK_FFStar (hl' : IsUnram l') (q : Unif k) (χ : AddChar 𝓀[k] ℂ) {φ : Form k n' V'} (hφ : φ ∈ EqForm π')
    (h : φ ∈ Mram k n' V') :
    KK hl hθ P₀ Q₀ (FFStar q χ φ) = ((l' q.unit : ℂ) * (l q.unit : ℂ)) • FFStar q χ (KK hl hθ P₀ Q₀ φ) := by
  rw [FFStar_KK hl hθ P₀ Q₀ hl' q χ hφ h, smul_smul, mul_inv_cancel₀ (mul_ne_zero (Units.ne_zero _)
    (Units.ne_zero _)), one_smul]

end GlobalTheory.KernelCommTw

namespace GlobalTheory.KernelCommTw

theorem kernelsCommuteTwisted : ∀ (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] (n n' : Type) [Fintype n] [DecidableEq n] [Fintype n'] [DecidableEq n'] (q : Unif k) (ψ : AddChar k Circle) (hψ : HasConductor ψ 1) (l' l : kˣ →* ℂˣ), IsUnram l' → IsUnram l → ∀ (P₀ : Pair k n') (Q₀ : Pair k n), ∃ c : ℂ, c ≠ 0 ∧ ∀ (V' V : Type) [AddCommGroup V'] [Module ℂ V'] [AddCommGroup V] [Module ℂ V] (π' : Representation ℂ (GL n' k) V') (π : Representation ℂ (GL n k) V) (θ : V' →ₗ[ℂ] SB (Matrix n n' k) →ₗ[ℂ] V), (∀ (g : GL n' k) (h : GL n k) (v : V') (Ψ Ψ' : SB (Matrix n n' k)), (∀ x, Ψ'.1 x = (l' (Matrix.GeneralLinearGroup.det g) : ℂ) * (l (Matrix.GeneralLinearGroup.det h) : ℂ) * Ψ.1 ((h⁻¹ : GL n k).val * x * g.val)) → θ (π' g v) Ψ' = π h (θ v Ψ)) → ∃ K : EqForm π' →ₗ[ℂ] EqForm π, (∀ φ, (K φ).1 Q₀ = θ (φ.1 P₀) (phiOneSB P₀ Q₀)) ∧ (∀ (s : 𝓀[k]ˣ) φ, (K ⟨dia s φ.1, dia_mem_EqForm s φ.2⟩).1 = dia s (K φ).1) ∧ ∀ φ : EqForm π', φ.1 ∈ Mram k n' V' → (K φ).1 ∈ Mram k n V ∧ (K ⟨FFStar q (resChar ψ hψ q) φ.1, FFStar_mem_EqForm q _ φ.2⟩).1 = c • FFStar q (resChar ψ hψ q) (K φ).1 := by
  intro k _ _ _ _ n n' _ _ _ _ q ψ hψ l' l hl' hl P₀ Q₀
  refine ⟨(l' q.unit : ℂ) * (l q.unit : ℂ), mul_ne_zero (Units.ne_zero _) (Units.ne_zero _), ?_⟩
  intro V' V _ _ _ _ π' π θ hθ
  refine ⟨LinearMap.codRestrict (EqForm π) (KK hl hθ P₀ Q₀ ∘ₗ (EqForm π').subtype)
    fun φ => KK_mem hl hθ P₀ Q₀ φ.1, fun φ => ?_, fun s φ => KK_dia hl hθ P₀ Q₀ hl' s φ.2, fun φ h =>
      ⟨KK_ram hl hθ P₀ Q₀ hl' φ.2 h, KK_FFStar hl hθ P₀ Q₀ hl' q _ φ.2 h⟩⟩
  show KK hl hθ P₀ Q₀ φ.1 Q₀ = _
  simpa using KK_smul hl hθ P₀ Q₀ φ.1 1

end GlobalTheory.KernelCommTw
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.KernelsCommuteTwisted =====
