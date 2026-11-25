module

public import Development.WeilBound.RepresentationTheoryGL.TwistedFactors.LocalBaseChange.ElementaryCosets.CosetMap
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalConjugationInvolutiveValuationPreservingStatement
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IwahoriAndMaximalCompactCriteriaStatement
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedIwahoriFirstIdentity
public import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.IwFacts
import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MonomialOfConjTorus
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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
import Mathlib.Tactic.Linter.Style
import GroundTheory.GlobalFields.LocalFieldAtPlace
import Mathlib.Algebra.Order.Star.Int

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DiagonalTorusCommutative, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.ThetaFacts, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContrOf, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContr, Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.ContrId

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DiagonalTorusCommutative =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DiagonalTorusCommutative", "h": "module\n\nimport Development.AutomorphicSpectrum.Proofs.BlockDecomposition.MonomialOfConjTorus\npublic import Development.WeilBound.RepresentationTheoryGL.TwistedFactors.LocalBaseChange.ElementaryCosets.CosetMap\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL ValuativeRel PositivityTheory.Lbc

namespace GlobalTheory.CompanionTheory.LbElem.TorComm

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem stdBlocks_ones_eq (N : ℕ) (a : Fin N) (i : Fin (ones N a)) :
    stdBlocks (ones N) (sum_ones N) ⟨a, i⟩ = a := by
  have hi : (i : ℕ) = 0 := by
    have := i.isLt
    simp only [ones] at this
    omega
  apply Fin.ext
  rw [stdBlocks_val]
  simp [ones, hi]

theorem offDiag_of_mem {N : ℕ} {x : GL (Fin N) k} (hx : x ∈ Tor k N) {i j : Fin N} (hij : i ≠ j) :
    (x : Matrix (Fin N) (Fin N) k) i j = 0 := by
  apply GlobalTheory.CompanionTheory.LbElem.ConjMonomial.tor_offDiag <;> assumption

theorem mem_of_offDiag {N : ℕ} (x : GL (Fin N) k)
    (h : ∀ i j : Fin N, i ≠ j → (x : Matrix (Fin N) (Fin N) k) i j = 0) : x ∈ Tor k N := by
  apply GlobalTheory.CompanionTheory.LbElem.ConjMonomial.mem_tor_of_offDiag <;> assumption

theorem eq_diagonal {N : ℕ} (M : Matrix (Fin N) (Fin N) k)
    (h : ∀ i j : Fin N, i ≠ j → M i j = 0) : M = Matrix.diagonal fun i => M i i := by
  ext a b
  by_cases hab : a = b
  · subst hab
    simp
  · rw [Matrix.diagonal_apply_ne _ hab]
    exact h a b hab

theorem mul_comm_of_mem {N : ℕ} {a b : GL (Fin N) k} (ha : a ∈ Tor k N) (hb : b ∈ Tor k N) :
    a * b = b * a := by
  apply Units.ext
  rw [Units.val_mul, Units.val_mul,
    eq_diagonal (a : Matrix (Fin N) (Fin N) k) (fun i j hij => offDiag_of_mem ha hij),
    eq_diagonal (b : Matrix (Fin N) (Fin N) k) (fun i j hij => offDiag_of_mem hb hij),
    Matrix.diagonal_mul_diagonal, Matrix.diagonal_mul_diagonal]
  congr 1
  funext i
  exact mul_comm _ _

theorem tor_comm_and_mem_iff : ∀ {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k]
    [IsNonarchimedeanLocalField k], ∀ (N : ℕ),
    (∀ a ∈ PositivityTheory.Lbc.Tor k N, ∀ b ∈ PositivityTheory.Lbc.Tor k N, a * b = b * a) ∧
      ∀ x : GL (Fin N) k, x ∈ PositivityTheory.Lbc.Tor k N ↔
        ∀ i j : Fin N, i ≠ j → (x : Matrix (Fin N) (Fin N) k) i j = 0 := by
  intro k _ _ _ _ N
  exact ⟨fun a ha b hb => mul_comm_of_mem ha hb,
    fun x => ⟨fun hx i j hij => offDiag_of_mem hx hij, mem_of_offDiag x⟩⟩

end GlobalTheory.CompanionTheory.LbElem.TorComm

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DiagonalTorusCommutative =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.ThetaFacts =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.ThetaFacts", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsUnifAt\npublic import Development.WeilBound.RepresentationTheoryGL.TwistedFactors.LocalBaseChange.ElementaryCosets.CosetMap\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LocalConjugationInvolutiveValuationPreservingStatement\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsNormalisedThetaSub\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.DiagonalTorusCommutative\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.IwahoriAndMaximalCompactCriteriaStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Polynomial Matrix
open GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG GlobalTheory.PRep GlobalTheory.SmGL
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem thL_eq_thetaGL (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) : thL n w = GlobalTheory.CuspRep.thetaGL n (cj w) := by
  unfold thL
  rw [if_neg hw]

theorem cj_cj' (w : Pl E) (x : w.adicCompletion E) : cj w (cj w x) = x := (GlobalTheory.T.localConjugation_involutive_valuation_preserving E w).1 x

theorem v_cj' (w : Pl E) (x : w.adicCompletion E) : Valued.v (cj w x) = Valued.v x := (GlobalTheory.T.localConjugation_involutive_valuation_preserving E w).2 x

theorem continuous_cj' (w : Pl E) : Continuous (cj w) := by
  unfold cj
  split_ifs with h
  · exact h.choose_spec.1
  · exact continuous_id

theorem thL_apply (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) (g : GLw n w) (i j : Fin n) :
    (thL n w g).val i j = (-1) ^ ((i : ℕ) + j) * cj w ((g⁻¹).val j.rev i.rev) := by
  rw [thL_eq_thetaGL w hw]
  exact GlobalTheory.ThetaPull.thetaGL_apply _ g i j

theorem thL_invol (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) (g : GLw n w) : thL n w (thL n w g) = g := by
  rw [thL_eq_thetaGL w hw]
  exact GlobalTheory.ThetaPull.thetaGL_thetaGL _ (cj_cj' w) g

theorem continuous_thL (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) : Continuous (thL n w) := by
  rw [thL_eq_thetaGL w hw]
  exact GlobalTheory.ThetaPull.continuous_thetaGL _ (continuous_cj' w)

def thLAut (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) : MulAut (GLw n w) where
  toFun := thL n w
  invFun := thL n w
  left_inv := thL_invol w hw n
  right_inv := thL_invol w hw n
  map_mul' := (thL n w).map_mul

theorem thLAut_sq (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) : thLAut w hw n ^ 2 = 1 := by
  refine MulEquiv.ext fun g => ?_
  rw [pow_two, MulAut.mul_apply, MulAut.one_apply]
  exact thL_invol w hw n g

theorem continuous_thLAut (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) : Continuous (thLAut w hw n) :=
  continuous_thL w hw n

section Entries

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def zeroOne (N : ℕ) (a : Fin N) : Fin (PositivityTheory.Lbc.ones N a) := ⟨0, by simp [PositivityTheory.Lbc.ones]⟩

theorem nup_entries {N : ℕ} {g : GL (Fin N) k} (hg : g ∈ PositivityTheory.Lbc.Nup k N) :
    (∀ i j : Fin N, j < i → (g : Matrix (Fin N) (Fin N) k) i j = 0) ∧
      ∀ i, (g : Matrix (Fin N) (Fin N) k) i i = 1 := by
  obtain ⟨h1, h2⟩ := mem_unipRad.1 hg
  refine ⟨fun i j hij => ?_, fun i => ?_⟩
  · have := (mem_parab_iff.1 h1) i j (zeroOne N i) (zeroOne N j) hij
    rwa [_root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq, _root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq] at this
  · have := h2 i (zeroOne N i) (zeroOne N i)
    rwa [_root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq, Matrix.one_apply_eq] at this

theorem nlo_entries {N : ℕ} {g : GL (Fin N) k} (hg : g ∈ PositivityTheory.Lbc.Nlo k N) :
    (∀ i j : Fin N, i < j → (g : Matrix (Fin N) (Fin N) k) i j = 0) ∧
      ∀ i, (g : Matrix (Fin N) (Fin N) k) i i = 1 := by
  obtain ⟨h1, h2⟩ := (mem_unipRadLower k).1 hg
  refine ⟨fun i j hij => ?_, fun i => ?_⟩
  · have := ((mem_parabLower_iff k).1 h1) i j (zeroOne N i) (zeroOne N j) hij
    rwa [_root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq, _root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq] at this
  · have := h2 i (zeroOne N i) (zeroOne N i)
    rwa [_root_.GlobalTheory.CompanionTheory.LbElem.TorComm.stdBlocks_ones_eq, Matrix.one_apply_eq] at this


end Entries

theorem neg_one_pow_add_self {R : Type} [Ring R] (i : ℕ) : (-1 : R) ^ (i + i) = 1 := by
  rw [← two_mul, pow_mul, neg_one_sq, one_pow]

theorem v_sign_cj (w : Pl E) (m : ℕ) (x : w.adicCompletion E) :
    Valued.v ((-1) ^ m * cj w x) = Valued.v x := by
  rw [map_mul, map_pow, Valuation.map_neg, map_one, one_pow, one_mul, v_cj']

theorem thL_mem_iwGL (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) {g : GLw n w} (hg : g ∈ iwGL n w) :
    thL n w g ∈ iwGL n w := by
  have hE := fun x : GLw n w => (GlobalTheory.T.iwahori_and_maximal_compact_criteria E w n x).1
  obtain ⟨g1, g2, -⟩ := (hE g).1 hg
  obtain ⟨-, -, h3⟩ := (hE g⁻¹).1 (inv_mem hg)
  refine (hE _).2 ⟨fun i j => ?_, fun i j => ?_, fun i j hij => ?_⟩
  · rw [thL_apply w hw, v_sign_cj]
    exact g2 _ _
  · rw [← map_inv, thL_apply w hw, v_sign_cj, inv_inv]
    exact g1 _ _
  · rw [thL_apply w hw, v_sign_cj]
    exact h3 _ _ (Fin.rev_lt_rev.2 hij)

theorem thL_mem_Nup (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) {g : GLw n w}
    (hg : g ∈ PositivityTheory.Lbc.Nup (w.adicCompletion E) n) : thL n w g ∈ PositivityTheory.Lbc.Nup (w.adicCompletion E) n := by
  obtain ⟨h0, h1⟩ := nup_entries (inv_mem hg)
  refine GlobalTheory.CompanionTheory.LbElem.IwahoriLDU.mem_Nup_of _ (fun i j hij => ?_) (fun i => ?_)
  · show (thL n w g).val i j = 0
    rw [thL_apply w hw, h0 _ _ (Fin.rev_lt_rev.2 hij), map_zero, mul_zero]
  · show (thL n w g).val i i = 1
    rw [thL_apply w hw, h1, map_one, mul_one, neg_one_pow_add_self]

theorem thL_mem_Nlo (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) {g : GLw n w}
    (hg : g ∈ PositivityTheory.Lbc.Nlo (w.adicCompletion E) n) : thL n w g ∈ PositivityTheory.Lbc.Nlo (w.adicCompletion E) n := by
  obtain ⟨h0, h1⟩ := nlo_entries (inv_mem hg)
  refine GlobalTheory.CompanionTheory.LbElem.IwahoriLDU.mem_Nlo_of _ (fun i j hij => ?_) (fun i => ?_)
  · show (thL n w g).val i j = 0
    rw [thL_apply w hw, h0 _ _ (Fin.rev_lt_rev.2 hij), map_zero, mul_zero]
  · show (thL n w g).val i i = 1
    rw [thL_apply w hw, h1, map_one, mul_one, neg_one_pow_add_self]

theorem thL_mem_Tor (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) {g : GLw n w}
    (hg : g ∈ PositivityTheory.Lbc.Tor (w.adicCompletion E) n) : thL n w g ∈ PositivityTheory.Lbc.Tor (w.adicCompletion E) n := by
  have hT := fun x : GLw n w => (_root_.GlobalTheory.CompanionTheory.LbElem.TorComm.tor_comm_and_mem_iff (k := w.adicCompletion E) n).2 x
  have h0 := (hT g⁻¹).1 (inv_mem hg)
  refine (hT _).2 fun i j hij => ?_
  show (thL n w g).val i j = 0
  rw [thL_apply w hw, h0 _ _ (fun h => hij (Fin.rev_injective h).symm), map_zero, mul_zero]

theorem map_eq_of_invol {G : Type} [Group G] (θ : MulAut G) (hθ : ∀ g, θ (θ g) = g) (H : Subgroup G)
    (hH : ∀ g ∈ H, θ g ∈ H) : H.map θ.toMonoidHom = H := by
  ext x
  constructor
  · rintro ⟨y, hy, rfl⟩
    exact hH y hy
  · intro hx
    exact ⟨θ x, hH x hx, hθ x⟩

theorem thLAut_map_iwGL (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) :
    (iwGL n w).map (thLAut w hw n).toMonoidHom = iwGL n w :=
  map_eq_of_invol _ (thL_invol w hw n) _ fun _ hg => thL_mem_iwGL w hw n hg

theorem thLAut_map_Nup (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) :
    (PositivityTheory.Lbc.Nup (w.adicCompletion E) n).map (thLAut w hw n).toMonoidHom = PositivityTheory.Lbc.Nup (w.adicCompletion E) n :=
  map_eq_of_invol _ (thL_invol w hw n) _ fun _ hg => thL_mem_Nup w hw n hg

theorem thLAut_map_Nlo (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) :
    (PositivityTheory.Lbc.Nlo (w.adicCompletion E) n).map (thLAut w hw n).toMonoidHom = PositivityTheory.Lbc.Nlo (w.adicCompletion E) n :=
  map_eq_of_invol _ (thL_invol w hw n) _ fun _ hg => thL_mem_Nlo w hw n hg

theorem thLAut_map_Tor (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) :
    (PositivityTheory.Lbc.Tor (w.adicCompletion E) n).map (thLAut w hw n).toMonoidHom = PositivityTheory.Lbc.Tor (w.adicCompletion E) n :=
  map_eq_of_invol _ (thL_invol w hw n) _ fun _ hg => thL_mem_Tor w hw n hg

theorem thL_tdiag (w : Pl E) (hw : ¬ IsSplitAt w) (ϖ : (w.adicCompletion E)ˣ)
    (hϖ : cj w (ϖ : w.adicCompletion E) = ϖ) (n : ℕ) (y : Fin n → ℤ) :
    thL n w (tdiag ϖ y) = tdiag ϖ (fun i => -y i.rev) := by
  apply Units.ext
  ext i j
  rw [thL_apply w hw]
  unfold tdiag
  rw [← map_inv, GlobalTheory.SmGL.val_diagT, GlobalTheory.SmGL.val_diagT]
  by_cases h : i = j
  · subst h
    rw [diagonal_apply_eq, diagonal_apply_eq]
    simp only [Pi.inv_apply]
    rw [← _root_.zpow_neg, Units.val_zpow_eq_zpow_val, map_zpow₀, hϖ, neg_one_pow_add_self, one_mul]
  · rw [diagonal_apply_ne _ (fun e => h (Fin.rev_injective e).symm), diagonal_apply_ne _ h, map_zero, mul_zero]

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.ThetaFacts =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContrOf =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContrOf", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.TwistedFactors.LocalBaseChange.ElementaryCosets.CosetMap\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistedIwahoriFirstIdentity\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.IwFacts\nimport GroundTheory.GlobalFields.LocalFieldAtPlace\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.PRep GlobalTheory.SmGL ValuativeRel Matrix

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

section General

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

theorem tl_iw_goodT_two (n : ℕ) (θ : MulAut (GL (Fin n) k)) (t : GL (Fin n) k) (ht : t ∈ PositivityTheory.Lbc.Tor k n)
    (hinc : PositivityTheory.Lbc.IncrV k n t) (hθt : θ t ∈ PositivityTheory.Lbc.Tor k n) (hinc' : PositivityTheory.Lbc.IncrV k n (θ t))
    (hN : PositivityTheory.Lbc.IncrV k n (t * θ t)) : PositivityTheory.Lbc.GoodT k n (iwahori k (Fin n)) θ 2 t := by
  refine ⟨ht, fun i hi => ?_, ?_⟩
  · interval_cases i
    · simpa using (iw_domT_strDomT n t ht hinc).1
    · simpa using (iw_domT_strDomT n (θ t) hθt hinc').1
  · have e : PositivityTheory.Lbc.tnorm θ 2 t = t * θ t := by
      simp [PositivityTheory.Lbc.tnorm, List.ofFn_succ]
    rw [e]
    exact (iw_domT_strDomT n _ (Subgroup.mul_mem _ ht hθt) hN).2

end General

section Completion

open NumberField IsDedekindDomain GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem tl_tdiag_mul {w : Pl E} {n : ℕ} (ϖ : (w.adicCompletion E)ˣ) (a b : Fin n → ℤ) :
    GlobalTheory.BCT.tdiag ϖ a * GlobalTheory.BCT.tdiag ϖ b = GlobalTheory.BCT.tdiag ϖ (a + b) := by
  unfold GlobalTheory.BCT.tdiag
  rw [← map_mul]
  congr 1
  funext i
  exact (_root_.zpow_add ϖ (a i) (b i)).symm

private theorem valued_v_lt_one_of_ordL_eq_one (w : Pl E) (ϖ : (w.adicCompletion E)ˣ) (hϖ : ordL (ϖ : w.adicCompletion E) = 1) :
    Valued.v (ϖ : w.adicCompletion E) < 1 := by
  have h0 : Valued.v (ϖ : w.adicCompletion E) ≠ 0 := by simp
  unfold ordL at hϖ
  rw [dite_eq_right h0] at hϖ
  have h1 : Multiplicative.toAdd (WithZero.unzero h0) = -1 := by linarith
  have h2 : WithZero.unzero h0 = Multiplicative.ofAdd (-1 : ℤ) := by rw [← h1]; rfl
  rw [← WithZero.coe_unzero h0, h2, ← WithZero.coe_one, WithZero.coe_lt_coe]
  exact Multiplicative.ofAdd_lt.mpr (by norm_num)

private theorem incrV_tdiag_of_strictAnti_of_ordL_eq_one (w : Pl E) (n : ℕ) (ϖ : (w.adicCompletion E)ˣ)
    (hϖ : ordL (ϖ : w.adicCompletion E) = 1) (a : Fin n → ℤ) (ha : StrictAnti a) :
    PositivityTheory.Lbc.IncrV (w.adicCompletion E) n (GlobalTheory.BCT.tdiag ϖ a) := by
  show PositivityTheory.Lbc.IncrV _ n (diagT _ (Fin n) fun i => ϖ ^ a i)
  apply diagT_incrV
  intro i j hij
  rw [(ValuativeRel.isEquiv (valuation (w.adicCompletion E)) Valued.v).lt_iff_lt]
  simp only [Units.val_zpow_eq_zpow_val, map_zpow₀]
  have hpos : 0 < Valued.v (ϖ : w.adicCompletion E) := by
    rw [zero_lt_iff]
    simp
  exact zpow_lt_zpow_right_of_lt_one₀ hpos (valued_v_lt_one_of_ordL_eq_one w ϖ hϖ) (ha hij)

theorem tl_goodT_of (w : Pl E) (n : ℕ) (θ : MulAut (GLw n w)) (ϖ : (w.adicCompletion E)ˣ)
    (hϖ : ordL (ϖ : w.adicCompletion E) = 1) (y : Fin n → ℤ) (hy : StrictAnti y)
    (hθ : θ (GlobalTheory.BCT.tdiag ϖ y) = GlobalTheory.BCT.tdiag ϖ (fun i => -y (Fin.rev i))) :
    PositivityTheory.Lbc.GoodT (w.adicCompletion E) n (iwGL n w) θ 2 (GlobalTheory.BCT.tdiag ϖ y) := by
  have hrev : StrictAnti (fun i => -y (Fin.rev i)) := fun i j hij =>
    neg_lt_neg (hy (Fin.rev_lt_rev.mpr hij))
  have hsum : StrictAnti (y + fun i => -y (Fin.rev i)) := hy.add hrev
  have h1 : θ (GlobalTheory.BCT.tdiag ϖ y) ∈ PositivityTheory.Lbc.Tor (w.adicCompletion E) n := by
    rw [hθ]
    exact diagT_mem_Tor n _
  have h2 : PositivityTheory.Lbc.IncrV (w.adicCompletion E) n (θ (GlobalTheory.BCT.tdiag ϖ y)) := by
    rw [hθ]
    exact incrV_tdiag_of_strictAnti_of_ordL_eq_one w n ϖ hϖ _ hrev
  have h3 : PositivityTheory.Lbc.IncrV (w.adicCompletion E) n (GlobalTheory.BCT.tdiag ϖ y * θ (GlobalTheory.BCT.tdiag ϖ y)) := by
    rw [hθ, tl_tdiag_mul]
    exact incrV_tdiag_of_strictAnti_of_ordL_eq_one w n ϖ hϖ _ hsum
  exact tl_iw_goodT_two n θ (GlobalTheory.BCT.tdiag ϖ y) (diagT_mem_Tor n _) (incrV_tdiag_of_strictAnti_of_ordL_eq_one w n ϖ hϖ y hy) h1 h2 h3

theorem tl_contr_of (w : Pl E) (ϖ : (w.adicCompletion E)ˣ) (hϖ : ordL (ϖ : w.adicCompletion E) = 1) (n : ℕ)
    (θ : MulAut (GLw n w)) (hadm : PositivityTheory.Lbc.admitted (w.adicCompletion E) n (iwGL n w) θ 2)
    (y : Fin n → ℤ) (hy : StrictAnti y)
    (hθ : θ (GlobalTheory.BCT.tdiag ϖ y) = GlobalTheory.BCT.tdiag ϖ (fun i => -y (Fin.rev i)))
    (δ : GLw n w) (hδ : GlobalTheory.BCT.dcos n w (GlobalTheory.BCT.tdiag ϖ y) δ ≠ 0) :
    ∃ m ∈ iwGL n w, ∃ τ ∈ TO n w, m⁻¹ * δ * θ m = GlobalTheory.BCT.tdiag ϖ y * τ := by
  have hmem : δ ∈ PositivityTheory.Lbc.dcos (iwGL n w) (GlobalTheory.BCT.tdiag ϖ y) := by
    unfold GlobalTheory.BCT.dcos at hδ
    split_ifs at hδ with h
    · exact h
    · exact absurd rfl hδ
  obtain ⟨j, hj, κ, hκ, hg⟩ := (_root_.GlobalTheory.CompanionTheory.Lbc.Contraction.e1 (k := w.adicCompletion E)) n (iwGL n w) θ 2 (GlobalTheory.BCT.tdiag ϖ y)
    hadm (tl_goodT_of w n θ ϖ hϖ y hy hθ) δ hmem
  refine ⟨j⁻¹, (iwGL n w).inv_mem hj, κ, iw_tor_TO w n κ hκ, ?_⟩
  rw [hg, map_inv]
  group

end Completion

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContrOf =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContr =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContr", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.ThetaFacts\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.HilbertNinetyNorms.IwFacts\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContrOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Polynomial Matrix
open GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

namespace PositivityTheory.Rg.Bc.ArchbcB.B.M4

variable {E : Type} [Field E] [NumberField E] [IsCMField E]

theorem iwahori_unitary_involution_admissible (w : Pl E) (hw : ¬ IsSplitAt w) (n : ℕ) :
    PositivityTheory.Lbc.admitted (w.adicCompletion E) n (iwGL n w) (thLAut w hw n) 2 :=
  ⟨iw_isOpen n, iw_isCompact n, iw_hasIwahoriFact n, continuous_thLAut w hw n, two_pos, thLAut_sq w hw n,
    thLAut_map_iwGL w hw n, thLAut_map_Nup w hw n, thLAut_map_Nlo w hw n, thLAut_map_Tor w hw n⟩

theorem contr_tw_tl (hU : Unr E) (w : Pl E) (hw : ¬ IsSplitAt w) (ϖ : (w.adicCompletion E)ˣ) (hϖ : IsUnifAt ϖ) (n : ℕ)
    (y : Fin n → ℤ) (hy : StrictAnti y) (δ : GLw n w) (hδ : dcos n w (tdiag ϖ y) δ ≠ 0) :
    ∃ m ∈ iwGL n w, ∃ τ ∈ TO n w, m⁻¹ * δ * thL n w m = tdiag ϖ y * τ :=
  tl_contr_of w ϖ hϖ.1 n (thLAut w hw n) (iwahori_unitary_involution_admissible w hw n) y hy (thL_tdiag w hw ϖ hϖ.2 n y) δ hδ

end PositivityTheory.Rg.Bc.ArchbcB.B.M4
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContr =====

-- ===== clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.ContrId =====
-- clump-header: {"m": "Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.ContrId", "h": "module\n\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.OneCoset\npublic import Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.TlContr\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Polynomial Matrix
open GlobalTheory.BCT GlobalTheory.UnitaryBC Formalism.UG
open scoped Classical

attribute [local instance] GlobalTheory.LocalData.complRel GlobalTheory.LocalData.isLocalField

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.RepresentationTheoryGL.ArchimedeanBaseChange.ArchimedeanBaseChangeProof.IwahoriFactorisation.TwistedConjugationNorms.ContrId =====
