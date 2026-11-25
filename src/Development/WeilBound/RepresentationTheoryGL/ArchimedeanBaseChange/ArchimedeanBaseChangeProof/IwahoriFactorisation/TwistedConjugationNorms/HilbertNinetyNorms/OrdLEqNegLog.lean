module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupport
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IwahoriAndMaximalCompactCriteriaStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriFactsStatement
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeightExponentStrictlyAntitoneStatement
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.Hilbert90NormOneUnitsOfUnrOfNotSplit
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
import Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdealWeight

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupportStatement, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.OrdLEqNegLog

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupportStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupportStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupport\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Matrix Polynomial GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG
open scoped Classical
attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

theorem _root_.GlobalTheory.T.unitary_iwahori_orbital_support : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E], Unr E → ∀ (w : Pl E), ¬ IsSplitAt w → ∀ (n : ℕ) (b : GLw n w), IsWitt n w b → ∀ (ϖ : (w.adicCompletion E)ˣ), IsUnifAt ϖ → ∀ (l : Fin (n / 2) → ℤ), Cone l → ∀ (γ : UL n w) (u : Fin n → (w.adicCompletion E)ˣ), (∀ i, ordL (u i : w.adicCompletion E) = wexp n l i) → γ.1 = b * GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin n) u * b⁻¹ → ∀ x ∈ iwU n w b, ∀ z ∈ iwU n w b, fU n w b ϖ l (x * γ * z) = 1 := by
  first | exact @GlobalTheory.CompanionTheory.DiagCoset.fU_diag
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupportStatement =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.OrdLEqNegLog =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.OrdLEqNegLog", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IwahoriAndMaximalCompactCriteriaStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriFactsStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.UnitaryIwahoriOrbitalSupportStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.WeightExponentStrictlyAntitoneStatement\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.Hilbert90NormOneUnitsOfUnrOfNotSplit\nimport Development.AbelianVarietyTheory.Definitions.Divisors.SimpleTwistedTraceFormulaStable\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.PlaceConjugationPropertiesCmField\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIdealWeight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Polynomial Matrix
open GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG GlobalTheory.CuspRep
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

section Ord

variable {L : Type} [Field L] [Valued L (WithZero (Multiplicative ℤ))]

theorem ordL_eq_neg_log' (x : L) : ordL x = -WithZero.log (Valued.v x) := by
  unfold ordL
  split_ifs with h
  · simp [h]
  · rw [WithZero.toAdd_unzero_eq_log]

theorem ordL_inv'' {x : L} (hx : x ≠ 0) : ordL x⁻¹ = -ordL x := by
  have h := _root_.GlobalTheory.BorelUMod.v_eq_exp (inv_ne_zero hx)
  rw [map_inv₀, _root_.GlobalTheory.BorelUMod.v_eq_exp hx, ← WithZero.exp_neg, WithZero.exp_inj] at h
  linarith

theorem v_eq_one_of_ordL {x : L} (hx : x ≠ 0) (h : ordL x = 0) : Valued.v x = 1 := by
  rw [_root_.GlobalTheory.BorelUMod.v_eq_exp hx, h, neg_zero, WithZero.exp_zero]

theorem ordL_zpow_units (x : Lˣ) (k : ℤ) : ordL ((x ^ k : Lˣ) : L) = k * ordL (x : L) := by
  have hx : (x : L) ≠ 0 := x.ne_zero
  have h := _root_.GlobalTheory.BorelUMod.v_eq_exp ((x ^ k).ne_zero)
  rw [Units.val_zpow_eq_zpow_val, map_zpow₀, _root_.GlobalTheory.BorelUMod.v_eq_exp hx, ← WithZero.exp_zsmul, WithZero.exp_inj] at h
  rw [Units.val_zpow_eq_zpow_val]
  simp only [smul_eq_mul] at h
  linarith

end Ord

def cjU (w : Pl E) : (w.adicCompletion E)ˣ →* (w.adicCompletion E)ˣ := Units.map (cj w).toMonoidHom

@[simp] theorem cjU_val (w : Pl E) (x : (w.adicCompletion E)ˣ) : ((cjU w x : (w.adicCompletion E)ˣ) : w.adicCompletion E) = cj w x :=
  rfl

theorem ordL_cj (hU : Unr E) (w : Pl E) (x : w.adicCompletion E) : ordL (cj w x) = ordL x := by
  rw [ordL_eq_neg_log', ordL_eq_neg_log', (_root_.GlobalTheory.ConjAtPlace.main E hU w).2.2.1 x]

theorem thL_diagT (w : Pl E) (hw : ¬ IsSplitAt w) (a : ℕ) (d : Fin a → (w.adicCompletion E)ˣ) :
    thL a w (GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) d) =
      GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) (fun i => (cjU w (d i.rev))⁻¹) := by
  have hth : ∀ g : GLw a w,
      thL a w g = PhiU a _ * invT a _ (GeneralLinearGroup.map (cj w) g) * (PhiU a _)⁻¹ := by
    intro g; simp only [thL, if_neg hw]; rfl
  rw [hth, mul_inv_eq_iff_eq_mul]
  apply Units.ext
  have h1 : ((invT a _ (GeneralLinearGroup.map (cj w) (GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) d)) : GLw a w) :
      Matrix (Fin a) (Fin a) (w.adicCompletion E)) = Matrix.diagonal fun i => cj w (((d i)⁻¹ : (w.adicCompletion E)ˣ) : w.adicCompletion E) := by
    change ((((GeneralLinearGroup.map (cj w) (GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) d))⁻¹ : GLw a w) :
      Matrix (Fin a) (Fin a) (w.adicCompletion E)))ᵀ = _
    rw [← map_inv, ← map_inv]
    change ((GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) d⁻¹ : GLw a w).val.map (cj w))ᵀ = _
    rw [GlobalTheory.SmGL.val_diagT, diagonal_map (map_zero _), diagonal_transpose]
    rfl
  rw [Units.val_mul, Units.val_mul, h1, GlobalTheory.SmGL.val_diagT]
  change GlobalTheory.Tw.Phi a _ * _ = _ * GlobalTheory.Tw.Phi a _
  ext i j
  rw [mul_diagonal, diagonal_mul]
  simp only [GlobalTheory.Tw.Phi, Matrix.of_apply]
  split_ifs with hij
  · have hj : j = i.rev := Fin.ext (by rw [Fin.val_rev]; omega)
    subst hj
    simp [mul_comm]
  · simp

theorem csr_root (w : Pl E) (hw : ¬ IsSplitAt w) (Q : (w.adicCompletion E)[X]) (hQ : Q ≠ 0) (hcsr : IsCsr w Q)
    (u : w.adicCompletion E) (hu0 : u ≠ 0) (hu : Q.eval u = 0) : Q.eval (cj w u)⁻¹ = 0 := by
  have hc : C (cj w (Q.coeff 0)) * Q = (Q.map (cj w)).reverse := hcsr.resolve_left hw
  have hcu : cj w u ≠ 0 := (map_ne_zero (cj w)).2 hu0
  let _ : Invertible (cj w u) := invertibleOfNonzero hcu
  have h2 : (Q.map (cj w)).eval (cj w u) = 0 := by rw [eval_map, eval₂_at_apply, hu, map_zero]
  have h1 : ((Q.map (cj w)).reverse).eval (cj w u)⁻¹ = 0 := by
    have := (eval₂_reverse_eq_zero_iff (RingHom.id _) (cj w u) (Q.map (cj w))).2 h2
    rwa [invOf_eq_inv] at this
  rw [← hc, eval_mul, eval_C] at h1
  have h0 : cj w (Q.coeff 0) ≠ 0 := by
    intro h
    rw [h, C_0, zero_mul] at hc
    exact hQ ((Polynomial.map_eq_zero (cj w)).1 (reverse_eq_zero.1 hc.symm))
  exact (mul_eq_zero.1 h1).resolve_left h0

theorem root_pair (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) {m : ℕ} (v : Fin m → ℤ) (hv : Function.Injective v)
    (hvr : ∀ i, v i.rev = -v i) (Q : (w.adicCompletion E)[X]) (hQ : IsCsr w Q) (u : Fin m → w.adicCompletion E)
    (hQu : Q = ∏ i, (X - C (u i))) (hu0 : ∀ i, u i ≠ 0) (huv : ∀ i, ordL (u i) = v i) (i : Fin m) :
    u i.rev = (cj w (u i))⁻¹ := by
  have hQ0 : Q ≠ 0 := by
    rw [hQu]; exact (monic_prod_of_monic _ _ fun j _ => monic_X_sub_C (u j)).ne_zero
  have hr := csr_root w hw Q hQ0 hQ (u i) (hu0 i)
    (by rw [hQu, eval_prod]; exact Finset.prod_eq_zero (Finset.mem_univ i) (by simp))
  rw [hQu, eval_prod, Finset.prod_eq_zero_iff] at hr
  obtain ⟨j, -, hj⟩ := hr
  rw [eval_sub, eval_X, eval_C, sub_eq_zero] at hj
  have hvj : v j = v i.rev := by
    rw [← huv j, ← hj, ordL_inv'' ((_root_.map_ne_zero _).2 (hu0 i)), ordL_cj hU, huv, hvr]
  rw [← hv hvj]
  exact hj.symm

theorem nv_strictAnti {a : ℕ} {y : Fin a → ℤ} (hy : StrictAnti y) : StrictAnti (nv y) := by
  intro i j hij
  have h1 := hy hij
  have h2 := hy (Fin.rev_lt_rev.2 hij)
  simp only [nv]
  linarith

theorem nv_rev {a : ℕ} (y : Fin a → ℤ) (i : Fin a) : nv y i.rev = -nv y i := by
  simp [nv]

theorem nrmL_eq (w : Pl E) (hw : ¬ IsSplitAt w) (a : ℕ) (g : GLw a w) : nrmL a w g = g * thL a w g := by
  simp only [nrmL, thL, if_neg hw]

theorem ex_tw (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (ϖ : (w.adicCompletion E)ˣ) (hϖ : IsUnifAt ϖ) (a : ℕ)
    (y : Fin a → ℤ) (u : Fin a → w.adicCompletion E) (hu0 : ∀ i, u i ≠ 0) (hu : ∀ i, ordL (u i) = nv y i)
    (hrev : ∀ i, u i.rev = (cj w (u i))⁻¹) :
    ∃ τ : Fin a → (w.adicCompletion E)ˣ, (∀ i, Valued.v (τ i : w.adicCompletion E) = 1) ∧
      (nrmL a w (tdiag ϖ y * GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) τ)).val = Matrix.diagonal u := by
  set U : Fin a → (w.adicCompletion E)ˣ := fun i => Units.mk0 (u i) (hu0 i) with hUdef
  set P : Fin a → (w.adicCompletion E)ˣ := fun i => ϖ ^ y i with hPdef
  have hcϖ : cjU w ϖ = ϖ := Units.ext hϖ.2
  have hcP : ∀ i, cjU w (P i) = P i := fun i => by simp only [hPdef, map_zpow, hcϖ]
  have hcc : ∀ x, cj w (cj w x) = x := (_root_.GlobalTheory.ConjAtPlace.main E hU w).2.1
  have hUr : ∀ i, U i.rev = (cjU w (U i))⁻¹ := fun i => Units.ext (by simp [hUdef, hrev])
  have hoP : ∀ i, ordL (P i : w.adicCompletion E) = y i := fun i => by
    rw [hPdef, ordL_zpow_units, hϖ.1, mul_one]
  set c : Fin a → (w.adicCompletion E)ˣ := fun i => U i * P i.rev * (P i)⁻¹ with hcdef
  have hcv : ∀ i, Valued.v (c i : w.adicCompletion E) = 1 := fun i => by
    apply v_eq_one_of_ordL (c i).ne_zero
    simp only [hcdef, Units.val_mul]
    rw [_root_.Formalism.UG.P.fSatake_ord_mul (mul_ne_zero (U i).ne_zero (P i.rev).ne_zero) (P i)⁻¹.ne_zero,
      _root_.Formalism.UG.P.fSatake_ord_mul (U i).ne_zero (P i.rev).ne_zero, Units.val_inv_eq_inv_val, ordL_inv'' (P i).ne_zero, hoP, hoP]
    simp only [hUdef, Units.val_mk0, hu, nv]
    ring
  have hmid : ∀ i, i.rev = i → ∃ Z : (w.adicCompletion E)ˣ, Valued.v (Z : w.adicCompletion E) = 1 ∧
      c i * cjU w Z = Z := fun i hi => by
    have h1 : (c i : w.adicCompletion E) * cj w (c i) = 1 := by
      have : c i = U i := by simp only [hcdef, hi, mul_inv_cancel_right]
      rw [this]
      have h2 := hUr i
      rw [hi] at h2
      have h3 : U i * cjU w (U i) = 1 := by rw [← inv_inv (cjU w (U i)), ← h2, mul_inv_cancel]
      simpa using congrArg Units.val h3
    obtain ⟨z, hz, hz'⟩ := norm_one_eq_unit_div_conj hU w hw _ h1
    have hz0 : z ≠ 0 := by intro h; rw [h, map_zero] at hz; exact zero_ne_one hz
    exact ⟨Units.mk0 z hz0, hz, Units.ext (by simpa using hz')⟩
  let τ : Fin a → (w.adicCompletion E)ˣ := fun i =>
    if h : i < i.rev then c i else if h' : i.rev = i then Classical.choose (hmid i h') else 1
  have hτv : ∀ i, Valued.v (τ i : w.adicCompletion E) = 1 := fun i => by
    simp only [τ]
    split_ifs with h h'
    · exact hcv i
    · exact (Classical.choose_spec (hmid i h')).1
    · simp
  refine ⟨τ, hτv, ?_⟩
  have key : ∀ i, P i * τ i * (cjU w (P i.rev * τ i.rev))⁻¹ = U i := by
    intro i
    rcases lt_trichotomy i i.rev with h | h | h
    · have e1 : τ i = c i := by simp only [τ, dif_pos h]
      have e2 : τ i.rev = 1 := by
        have hn : ¬ i.rev < i.rev.rev := by rw [Fin.rev_rev]; exact not_lt.2 h.le
        have hn' : ¬ i.rev.rev = i.rev := by rw [Fin.rev_rev]; exact h.ne
        simp only [τ, dif_neg hn, dif_neg hn']
      rw [e1, e2, mul_one, hcP, hcdef]
      apply Units.ext
      simp only [Units.val_mul, Units.val_inv_eq_inv_val]
      field_simp
    · have hi : i.rev = i := h.symm
      obtain ⟨hZv, hZ⟩ := Classical.choose_spec (hmid i hi)
      have hn : ¬ i < i.rev := by rw [hi]; exact lt_irrefl i
      have e1 : τ i = Classical.choose (hmid i hi) := by simp only [τ, dif_neg hn, dif_pos hi]
      have hc : c i = U i := by simp only [hcdef, hi, mul_inv_cancel_right]
      have hU' : U i = Classical.choose (hmid i hi) * (cjU w (Classical.choose (hmid i hi)))⁻¹ := by
        rw [← hc]; exact eq_mul_inv_of_mul_eq hZ
      rw [hi, e1, hU', map_mul, hcP]
      apply Units.ext
      simp only [Units.val_mul, Units.val_inv_eq_inv_val]
      field_simp
    · have hn : ¬ i < i.rev := not_lt.2 h.le
      have hn' : ¬ i.rev = i := h.ne
      have e1 : τ i = 1 := by simp only [τ, dif_neg hn, dif_neg hn']
      have hp : i.rev < i.rev.rev := by rw [Fin.rev_rev]; exact h
      have e2 : τ i.rev = c i.rev := by simp only [τ, dif_pos hp]
      have h3 := hUr i.rev
      rw [Fin.rev_rev] at h3
      rw [e1, e2, mul_one, hcdef]
      simp only [Fin.rev_rev]
      rw [h3, map_mul, map_mul, map_mul, map_inv, hcP, hcP]
      apply Units.ext
      simp only [Units.val_mul, Units.val_inv_eq_inv_val]
      field_simp
  rw [nrmL_eq w hw, show tdiag ϖ y = GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) P from rfl, ← map_mul,
    thL_diagT w hw, ← map_mul, GlobalTheory.SmGL.val_diagT]
  congr 1
  funext i
  simpa [hUdef] using congrArg Units.val (key i)

theorem ext_pf (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (ϖ : (w.adicCompletion E)ˣ) (hϖ : IsUnifAt ϖ) (a : ℕ)
    (y : Fin a → ℤ) (hy : StrictAnti y) (Q : (w.adicCompletion E)[X]) (hm : Q.Monic) (hQ : IsCsr w Q)
    (hv : HasVals Q (nv y)) :
    ∃ δ : GLw a w, dcos a w (tdiag ϖ y) δ ≠ 0 ∧ (nrmL a w δ).val.charpoly = Q := by
  obtain ⟨u, hQu, hu⟩ := hv
  have hu0 : ∀ i, u i ≠ 0 := fun i => (hu i).1
  have huv : ∀ i, ordL (u i) = nv y i := fun i => (hu i).2
  have hpair := root_pair hU w hw (nv y) (nv_strictAnti hy).injective (nv_rev y) Q hQ u hQu hu0 huv
  obtain ⟨τ, hτ, hN⟩ := ex_tw hU w hw ϖ hϖ a y u hu0 huv hpair
  refine ⟨tdiag ϖ y * GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin a) τ, ?_, ?_⟩
  · unfold dcos
    rw [if_pos ⟨1, one_mem _, _, _root_.GlobalTheory.CompanionTheory.DiagCoset.diagT_mem_iwGL w a τ hτ, by rw [one_mul]⟩]
    exact one_ne_zero
  · rw [hN, charpoly_diagonal, hQu]

theorem exu_pf (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) (b : GLw n w) (hb : IsWitt n w b)
    (ϖ : (w.adicCompletion E)ˣ) (hϖ : IsUnifAt ϖ) (l : Fin (n / 2) → ℤ) (hl : Cone l) (Q : (w.adicCompletion E)[X])
    (hm : Q.Monic) (hQ : IsCsr w Q) (hv : HasVals Q (wexp n l)) :
    ∃ γ : UL n w, fU n w b ϖ l γ ≠ 0 ∧ γ.1.val.charpoly = Q := by
  obtain ⟨u, hQu, hu⟩ := hv
  have hu0 : ∀ i, u i ≠ 0 := fun i => (hu i).1
  have huv : ∀ i, ordL (u i) = wexp n l i := fun i => (hu i).2
  obtain ⟨hwa, hwr⟩ := GlobalTheory.T.weight_exponent_strictly_antitone n l hl
  have hpair := root_pair hU w hw (wexp n l) hwa.injective hwr Q hQ u hQu hu0 huv
  set U : Fin n → (w.adicCompletion E)ˣ := fun i => Units.mk0 (u i) (hu0 i) with hUdef
  obtain ⟨hw1, -, -, hw4⟩ := GlobalTheory.T.unitary_iwahori_facts E hU w hw n b hb
  have hD : GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin n) U ∈ UJ (cj w) (antiJ (w.adicCompletion E) n) := by
    rw [hw4]
    intro i
    simp only [hUdef, Units.val_mk0]
    rw [hpair i, mul_inv_cancel₀ ((_root_.map_ne_zero _).2 (hu0 i))]
  have hγ := (hw1 _).2 hD
  refine ⟨⟨_, hγ⟩, ?_, ?_⟩
  · have h1 := GlobalTheory.T.unitary_iwahori_orbital_support E hU w hw n b hb ϖ hϖ l hl ⟨_, hγ⟩ U (fun i => by simpa [hUdef] using huv i) rfl
      1 (one_mem _) 1 (one_mem _)
    rw [one_mul, mul_one] at h1
    rw [h1]
    exact one_ne_zero
  · change (b * GlobalTheory.SmGL.diagT (w.adicCompletion E) (Fin n) U * b⁻¹ : GLw n w).val.charpoly = Q
    rw [Units.val_mul, Units.val_mul, Matrix.coe_units_inv, charpoly_units_conj, GlobalTheory.SmGL.val_diagT, charpoly_diagonal, hQu]
    simp [hUdef]

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.OrdLEqNegLog =====
