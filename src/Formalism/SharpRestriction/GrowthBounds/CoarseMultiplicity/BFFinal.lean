module

public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFDefs
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj
public import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SymInt
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.GTheta
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymVarInlFst
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CoarseMultAt
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.WeightWLet
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFTrueDeg
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.ExpFactIoExp
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FTDefs
public import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymbolFormOfOrthogonality
import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockMonomial
import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.MemIntPolOfCoeff
import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.TopOddNeEnd
import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Kummer
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.SharpRestriction.GrowthBounds.RootWeights.ExponentFactorialAddSingleOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SatBlock, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BlockForm, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFCoarse, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Imports, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LevOfSymVar, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockEqSum, Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFFinal

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SatBlock =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SatBlock", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFDefs\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.BlockInj\npublic import Formalism.SharpRestriction.GrowthBounds.BinomialRatio.SymInt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

section

variable {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] {N r : ℕ} [NeZero r] (D : BlockData N)

def beF (v : BVar N r D.T.t) : MvPolynomial (BVar N r D.T.t) (KK O) :=
  match v with
  | Sum.inl a => X (Sum.inl a)
  | Sum.inr (_, false) => 1
  | Sum.inr (i, true) => X (Sum.inr (i, true))

def giF (v : BVar N r D.T.t) : MvPolynomial (BVar N r D.T.t) (KK O) :=
  match v with
  | Sum.inl a => X (Sum.inl a)
  | Sum.inr (i, false) => X (Sum.inr (i, false))
  | Sum.inr (i, true) => X (Sum.inr (i, true)) - qq (O := O) (r := r) D i

theorem qq_fix (f : BVar N r D.T.t → MvPolynomial (BVar N r D.T.t) (KK O)) (hf : ∀ a, f (Sum.inl a) = X (Sum.inl a))
    (i : Fin (D.T.t + 1)) : aeval f (qq (O := O) (r := r) D i) = qq (O := O) (r := r) D i := by
  refine Fin.lastCases ?_ (fun i' => ?_) i
  · simp [qq, xiVar, hf]
  · simp [qq, hf]

theorem qq_int (i : Fin (D.T.t + 1)) : qq (O := O) (r := r) D i ∈ IntAlg O (BVar N r D.T.t) := by
  refine Fin.lastCases ?_ (fun i' => ?_) i
  · simp only [qq, Fin.lastCases_last]
    exact Subalgebra.sum_mem _ fun c _ => (IntAlg O _).mul_mem (X_mem_intAlg O _) (X_mem_intAlg O _)
  · simp only [qq, Fin.lastCases_castSucc]
    exact Subalgebra.sum_mem _ fun c _ => (IntAlg O _).mul_mem (X_mem_intAlg O _) (X_mem_intAlg O _)

theorem gi_be_tau (P : MvPolynomial (BVar N r D.T.t) (KK O)) :
    aeval (giF (O := O) (r := r) D) (aeval (beF (O := O) (r := r) D) (tau D P)) = aeval (beF (O := O) (r := r) D) P := by
  have h : ((aeval (giF (O := O) (r := r) D)).comp ((aeval (beF (O := O) (r := r) D)).comp (tau D))) =
      aeval (beF (O := O) (r := r) D) := by
    apply MvPolynomial.algHom_ext
    rintro (a | ⟨i, _ | _⟩)
    · simp [tau, tauF, beF, giF]
    · simp [tau, tauF, beF]
    · simp only [AlgHom.comp_apply, tau, aeval_X, tauF, map_add (f := _), map_mul, beF, one_mul, giF]
      rw [qq_fix D (beF D) (fun _ => rfl), qq_fix D (giF D) (fun _ => rfl)]
      ring
  exact DFunLike.congr_fun h P

theorem ppi_be (P : MvPolynomial (BVar N r D.T.t) (KK O)) :
    ppi D (aeval (beF (O := O) (r := r) D) P) = ppi D P := by
  have h : (ppi (O := O) (r := r) D).comp (aeval (beF (O := O) (r := r) D)) = ppi D := by
    apply MvPolynomial.algHom_ext
    rintro (a | ⟨i, _ | _⟩)
    · simp [beF]
    · simp [beF, ppi, piF]
    · simp [beF]
  exact DFunLike.congr_fun h P

theorem ppi_int (q : MvPolynomial (BVar N r D.T.t) O) (e : (Fin (D.T.t + 1) ⊕ Fin r) →₀ ℕ) :
    AddMonoidAlgebra.coeff (ppi (O := O) (r := r) D (map (algebraMap O (KK O)) q)) e ∈ IntAlg O (Fin N × Fin r) := by
  classical
  induction q using MvPolynomial.induction_on generalizing e with
  | C a =>
    rw [map_C]
    have : ppi (O := O) (r := r) D (C (algebraMap O (KK O) a)) = C (C (algebraMap O (KK O) a)) := by
      simp [ppi, MvPolynomial.algebraMap_eq]
    rw [this, coeff_C]
    split_ifs
    · exact ⟨C a, by simp⟩
    · exact (IntAlg O _).zero_mem
  | add p q hp hq =>
    rw [map_add (f := _), map_add (f := _), MvPolynomial.coeff_add]
    exact (IntAlg O _).add_mem (hp e) (hq e)
  | mul_X p v hp =>
    rw [map_mul, map_mul, map_X]
    have hv : ppi (O := O) (r := r) D (X v) = piF D v := by simp [ppi]
    rw [hv]
    rcases v with ⟨a, c⟩ | ⟨i, _ | _⟩
    · refine Fin.lastCases ?_ (fun a' => ?_) a
      · simp only [piF, Fin.lastCases_last]
        rw [coeff_mul_X']
        split_ifs
        · exact hp _
        · exact (IntAlg O _).zero_mem
      · simp only [piF, Fin.lastCases_castSucc]
        rw [mul_comm, coeff_C_mul]
        exact (IntAlg O _).mul_mem (X_mem_intAlg O _) (hp e)
    · simp only [piF, mul_one]
      exact hp e
    · simp only [piF]
      rw [coeff_mul_X']
      split_ifs
      · exact hp _
      · exact (IntAlg O _).zero_mem

theorem sat_block (x : MvPolynomial (BVar N r D.T.t) (KK O))
    (hx : x ∈ Submodule.span (KK O) ((D.SSZ O (r := r) : Submodule O (MvPolynomial (BVar N r D.T.t) (KK O))) :
      Set (MvPolynomial (BVar N r D.T.t) (KK O)))) (hi : x ∈ IntPol O (BVar N r D.T.t)) : x ∈ D.SSZ O (r := r) := by
  classical
  rw [span_eq_range] at hx
  obtain ⟨v, rfl⟩ := hx
  have hv := Ltot_apply D v
  set B := ∑ i : ↥(IF (r := r) D), base D i.1.1 i.1.2 (v i : MvPolynomial (Fin N × Fin r) (KK O)) with hB
  have hT : Ltot D v = tau D B := by

    rw [hv, hB, map_sum]
    exact Finset.sum_congr rfl fun i _ => ell_eq_tau D _ _ _
  have h1 : aeval (beF (O := O) (r := r) D) B ∈ IntAlg O (BVar N r D.T.t) := by
    rw [← gi_be_tau D B, ← hT]
    refine aeval_mem_intAlg O _ ?_ (aeval_mem_intAlg O _ ?_ (intPol_le O hi))
    · rintro (a | ⟨i, _ | _⟩)
      · exact X_mem_intAlg O _
      · exact X_mem_intAlg O _
      · exact (IntAlg O _).sub_mem (X_mem_intAlg O _) (qq_int D i)
    · rintro (a | ⟨i, _ | _⟩)
      · exact X_mem_intAlg O _
      · exact (IntAlg O _).one_mem
      · exact X_mem_intAlg O _
  obtain ⟨q, hq⟩ := h1
  have hq' : map (algebraMap O (KK O)) q = aeval (beF (O := O) (r := r) D) B := hq
  have hint : ∀ i0 : ↥(IF (r := r) D), (v i0 : MvPolynomial (Fin N × Fin r) (KK O)) ∈ IntAlg O (Fin N × Fin r) := by
    intro i0
    have h2 := ppi_int D q (eExp D i0.1.1 i0.1.2)

    rw [hq', ppi_be, hB, map_sum] at h2
    simp only [ppi_base] at h2
    rw [coeff_sum, Finset.sum_eq_single i0] at h2
    · rwa [coeff_monomial, if_pos rfl] at h2
    · intro b _ hb
      rw [coeff_monomial, if_neg]
      intro he
      obtain ⟨e1, e2⟩ := eExp_inj D he
      exact hb (Subtype.ext (Sigma.ext e1 (heq_of_eq e2)))
    · intro h
      exact absurd (Finset.mem_univ _) h
  rw [hv]
  refine Submodule.sum_mem _ fun i _ => ?_
  have hi' := i.2
  unfold IF at hi'
  rw [Finset.mem_sigma] at hi'
  have hlv := (mem_Lv D _).1 hi'.1
  have hβ := Finset.Nat.mem_antidiagonalTuple.1 hi'.2
  obtain ⟨q0, hq0⟩ := hint i
  unfold BlockData.SSZ
  refine Submodule.subset_span ?_
  simp only [Set.mem_iUnion]
  refine ⟨i.1.1.1, i.1.1.2, hlv, (v i : MvPolynomial (Fin N × Fin r) (KK O)), ⟨(v i).2, ⟨q0, hq0⟩⟩,
    xiMon (KK O) N r D.T.t i.1.2, xiMon_mem D _ _ hβ, ?_⟩
  rw [ell_apply]
  simp only [pre, mul_assoc]

end

theorem satAt : SatAt := fun _ _ _ _ _ _ _ D x hx hi => sat_block D x hx hi

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SatBlock =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BlockForm =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BlockForm", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LeadingExponentHomogeneous\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.GTheta\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockMonomial\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.MemIntPolOfCoeff\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SatBlock\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymVarInlFst\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.TopOddNeEnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G

def RestKapNum : Prop := TransportedAlt fun C0 CYb Cde Ck CD Cb CE1 CE2 _ Cc => KapNumAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc

theorem restBlockForm_of {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) (hK : RestKapNum) : RestBlockForm := by
  have h17 : TransportedAlt fun _ _ _ _ _ _ _ _ Cm _ => (17 : ℝ) ≤ Cm :=
    TransportedAlt.of_explicit (fun _ => 1) (fun _ _ => 17) (fun _ _ _ _ _ => 1)
      fun _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ _ h _ _ _ _ _ _ _ _ _ _ => h
  refine TransportedAlt.mono ?_ ((thr_std.and h17).and hK)
  rintro C0 CYb Cde Ck CD Cb CE1 CE2 Cm Cc ⟨⟨⟨_, hstd⟩, hCm⟩, hKa⟩
  exact blockFormAt_of hCm hstd ioFockAt eigAt (homAt _ _ _ _ _ _ _ _ _) dvdAt satAt (gThetaAt D)
    (factAt_of h52 (kapAt_of hKa))

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BlockForm =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFCoarse =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFCoarse", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.CoarseMultAt\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.WeightWLet\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFTrueDeg\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockMonomial\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Kummer\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymVarInlFst\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial

section

variable (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT))

theorem symbol_variable_first_columns (b : SegBlock (segS X.TT j) X.m) (v : BV C0 CE1 CE2 X j) (h : mu0 C0 CE1 CE2 X j b v ≠ 0) :
    (symVar C0 CE1 CE2 X j v).2 = 0 ∨ (symVar C0 CE1 CE2 X j v).2 = Fin.succ 0 := by
  rcases v with ⟨a, c⟩ | ⟨l, bo⟩
  · right
    have hc : c = 0 := by
      by_contra hc
      exact h (by show mu0F C0 CE1 CE2 X j b (Sum.inl (a, c)) = 0; simp [mu0F, hc])
    subst hc
    simp only [symVar]
    split_ifs <;> rfl
  · left
    simp only [symVar]
    split_ifs <;> rfl

theorem card_supp_le (b : SegBlock (segS X.TT j) X.m) (x : X.TT × Bool) :
    open Classical in
    (Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => (symVar C0 CE1 CE2 X j v).1 = x ∧
      mu0 C0 CE1 CE2 X j b v ≠ 0)).card ≤ 2 := by
  classical
  have hsub : (Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => (symVar C0 CE1 CE2 X j v).1 = x ∧
      mu0 C0 CE1 CE2 X j b v ≠ 0)) ⊆
      (Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => symVar C0 CE1 CE2 X j v = (x, 0))) ∪
      (Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => symVar C0 CE1 CE2 X j v = (x, Fin.succ 0))) := by
    intro v hv
    obtain ⟨h1, h2⟩ := (Finset.mem_filter.1 hv).2
    rcases symbol_variable_first_columns C0 CE1 CE2 X j b v h2 with h | h
    · exact Finset.mem_union_left _ (Finset.mem_filter.2 ⟨Finset.mem_univ _, Prod.ext h1 h⟩)
    · exact Finset.mem_union_right _ (Finset.mem_filter.2 ⟨Finset.mem_univ _, Prod.ext h1 h⟩)
  have hone : ∀ y, (Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => symVar C0 CE1 CE2 X j v = y)).card ≤ 1 := by
    intro y
    refine Finset.card_le_one.2 fun v hv v' hv' => ?_
    exact symVar_inj C0 CE1 CE2 X j (((Finset.mem_filter.1 hv).2).trans ((Finset.mem_filter.1 hv').2).symm)
  calc _ ≤ _ := Finset.card_le_card hsub
    _ ≤ _ := Finset.card_union_le _ _
    _ ≤ 1 + 1 := Nat.add_le_add (hone _) (hone _)

theorem cdeg_le_tdeg (hp : 0 < X.p) (b : SegBlock (segS X.TT j) X.m) (x : X.TT × Bool) :
    cdeg C0 CE1 CE2 X j b x ≤ tdeg C0 CE1 CE2 X j b x := by
  classical
  rw [← sum_fiber C0 CE1 CE2 X j b (mu0 C0 CE1 CE2 X j b) (leading_exponent_homogeneous C0 CE1 CE2 X j b) x]
  set μ0 := mu0 C0 CE1 CE2 X j b
  have hco : ∀ c : Fin (X.m + 1), (μ0.sum fun v n => Finsupp.single (symVar C0 CE1 CE2 X j v)
      (symLev X.p C0 CE1 CE2 X j v * n)) (x, c) =
      ∑ v : BV C0 CE1 CE2 X j, if symVar C0 CE1 CE2 X j v = (x, c) then symLev X.p C0 CE1 CE2 X j v * μ0 v else 0 := by
    intro c
    rw [Finsupp.sum_apply, Finsupp.sum_fintype _ _ (fun v => by simp)]
    refine Finset.sum_congr rfl fun v _ => ?_
    rw [Finsupp.single_apply]
  have hswap : (∑ c : Fin (X.m + 1), ∑ v : BV C0 CE1 CE2 X j,
      (if symVar C0 CE1 CE2 X j v = (x, c) then symLev X.p C0 CE1 CE2 X j v * μ0 v else 0)) =
      ∑ v : BV C0 CE1 CE2 X j, if (symVar C0 CE1 CE2 X j v).1 = x then symLev X.p C0 CE1 CE2 X j v * μ0 v else 0 := by
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun v _ => ?_
    by_cases h : (symVar C0 CE1 CE2 X j v).1 = x
    · rw [if_pos h, Finset.sum_eq_single (symVar C0 CE1 CE2 X j v).2]
      · rw [if_pos (Prod.ext h rfl : symVar C0 CE1 CE2 X j v = (x, (symVar C0 CE1 CE2 X j v).2))]
      · intro c _ hc
        rw [if_neg (fun e => hc (by rw [e]))]
      · intro hh; exact absurd (Finset.mem_univ _) hh
    · rw [if_neg h]
      exact Finset.sum_eq_zero fun c _ => if_neg (fun e => h (by rw [e]))
  calc (∑ v ∈ Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => (symVar C0 CE1 CE2 X j v).1 = x), μ0 v)
      = ∑ v : BV C0 CE1 CE2 X j, if (symVar C0 CE1 CE2 X j v).1 = x then μ0 v else 0 := Finset.sum_filter _ _
    _ ≤ ∑ v : BV C0 CE1 CE2 X j, if (symVar C0 CE1 CE2 X j v).1 = x then symLev X.p C0 CE1 CE2 X j v * μ0 v else 0 := by
        refine Finset.sum_le_sum fun v _ => ?_
        split_ifs
        · exact Nat.le_mul_of_pos_left _ (symLev_pos C0 CE1 CE2 X hp j v)
        · exact le_rfl
    _ = ∑ c : Fin (X.m + 1), (μ0.sum fun v n => Finsupp.single (symVar C0 CE1 CE2 X j v)
          (symLev X.p C0 CE1 CE2 X j v * n)) (x, c) := by
        rw [Finset.sum_congr rfl fun c _ => hco c, hswap]
    _ ≤ tdeg C0 CE1 CE2 X j b x := by
        unfold tdeg multideg ioExp
        refine Finset.sum_le_sum fun c _ => ?_
        rw [Finsupp.add_apply]
        exact Nat.le_add_left _ _

end

theorem coarseMultAt_of {C0 CYb Cde Ck CD Cb CE1 CE2 Cc : ℝ} (hO : OPlusAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc) :
    CoarseMultAt C0 CYb Cde Ck CD Cb CE1 CE2 Cc := by
  classical
  intro X _ hD1 hH hc j b hb
  have hp : 0 < X.p := hD1.1.pos
  have ho := hO X hD1 hH hc j b hb
  set μ0 := mu0 C0 CE1 CE2 X j b with hμ0
  let F : X.TT × Bool → Finset (BV C0 CE1 CE2 X j) :=
    fun x => Finset.univ.filter (fun v : BV C0 CE1 CE2 X j => (symVar C0 CE1 CE2 X j v).1 = x)
  let s : X.TT × Bool → Finset (BV C0 CE1 CE2 X j) := fun x => (F x).filter (fun v => μ0 v ≠ 0)
  have hfac : ∀ x, (cdeg C0 CE1 CE2 X j b x).factorial =
      (∏ v ∈ F x, (μ0 v).factorial) * Nat.multinomial (s x) μ0 := by
    intro x
    rw [← sum_fiber C0 CE1 CE2 X j b μ0 (leading_exponent_homogeneous C0 CE1 CE2 X j b) x]
    show (∑ v ∈ F x, μ0 v).factorial = _
    rw [← Finset.sum_filter_ne_zero, ← Finset.prod_filter_of_ne (p := fun v => μ0 v ≠ 0)
      (fun v _ hv h0 => hv (by rw [h0]; rfl))]
    exact (Nat.multinomial_spec _ _).symm
  have hE : expFact μ0 = ∏ x : X.TT × Bool, ∏ v ∈ F x, (μ0 v).factorial := by
    unfold expFact
    rw [Finsupp.prod_fintype _ _ (fun _ => rfl)]
    exact (Finset.prod_fiberwise Finset.univ (fun v => (symVar C0 CE1 CE2 X j v).1) (fun v => (μ0 v).factorial)).symm
  have hE0 : expFact μ0 ≠ 0 := by
    unfold expFact; exact Finsupp.prod_ne_zero_iff.2 fun _ _ => Nat.factorial_ne_zero _
  have hM0 : ∀ x ∈ (Finset.univ : Finset (X.TT × Bool)), Nat.multinomial (s x) μ0 ≠ 0 :=
    fun x _ => (Nat.multinomial_pos _ _).ne'
  rw [Finset.prod_congr rfl (fun x _ => hfac x), Finset.prod_mul_distrib, ← hE,
    Nat.factorization_mul hE0 (Finset.prod_ne_zero_iff.2 hM0), Finsupp.add_apply, Nat.factorization_prod hM0,
    Finsupp.finsetSum_apply]
  refine Nat.add_le_add_left ?_ _
  calc (∑ x : X.TT × Bool, (Nat.multinomial (s x) μ0).factorization X.p)
      ≤ ∑ x : X.TT × Bool, Nat.log X.p (cdeg C0 CE1 CE2 X j b x) := by
        refine Finset.sum_le_sum fun x _ => (multinomial_val X.p (s x) μ0).trans ?_
        have hc2 : (s x).card ≤ 2 := by
          have := card_supp_le C0 CE1 CE2 X j b x
          simp only [s, F, Finset.filter_filter]
          convert this
        rw [Finset.sum_filter_ne_zero]
        show ((s x).card - 1) * Nat.log X.p (∑ v ∈ F x, μ0 v) ≤ _
        rw [sum_fiber C0 CE1 CE2 X j b μ0 (leading_exponent_homogeneous C0 CE1 CE2 X j b) x]
        calc ((s x).card - 1) * Nat.log X.p (cdeg C0 CE1 CE2 X j b x) ≤ 1 * Nat.log X.p (cdeg C0 CE1 CE2 X j b x) :=
              Nat.mul_le_mul_right _ (by omega)
          _ = _ := one_mul _
    _ ≤ ∑ x : X.TT × Bool, Nat.log X.p (tdeg C0 CE1 CE2 X j b x) :=
        Finset.sum_le_sum fun x _ => Nat.log_mono_right (cdeg_le_tdeg C0 CE1 CE2 X j hp b x)
    _ = lgSeg X j := by
        rw [sum_tdeg C0 CE1 CE2 X j (Nat.log X.p) (Nat.log_zero_right _) b hb ho]
        unfold lgSeg
        rw [Finset.sum_add_distrib]

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFCoarse =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Imports =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Imports", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial

section

variable (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT))

def ωoL (l0 : Fin (X.seg C0 CE1 CE2 j).t) : Fin (2 * segS X.TT j + 1 + 1) → ℕ :=
  fun a => if (a : ℕ) = 2 * (uTop (X.seg C0 CE1 CE2 j) l0 : ℕ) then 1 else 0

def ωo (l0 : Fin (X.seg C0 CE1 CE2 j).t) : BV C0 CE1 CE2 X j → ℕ
  | Sum.inl (a, _) => ωoL C0 CE1 CE2 X j l0 a
  | Sum.inr (l, β) => if (l : ℕ) = (l0 : ℕ) ∧ β = true then 1 else 0

def ωpL : Fin (2 * segS X.TT j + 1 + 1) → ℕ := fun a => if (a : ℕ) = 2 * segS X.TT j then 1 else 0

def ωp : BV C0 CE1 CE2 X j → ℕ
  | Sum.inl (a, _) => ωpL X j a
  | Sum.inr (l, β) => if (l : ℕ) = (X.seg C0 CE1 CE2 j).t ∧ β = true then 1 else 0

theorem ωo_bal (l0 : Fin (X.seg C0 CE1 CE2 j).t) :
    Balanced X.m (X.seg C0 CE1 CE2 j) (ωo C0 CE1 CE2 X j l0) (ωoL C0 CE1 CE2 X j l0) := by
  refine ⟨fun a c => rfl, fun l => ?_, ?_⟩
  · have hi := (uTop (X.seg C0 CE1 CE2 j) l).2
    have hu : ∀ l' : Fin (X.seg C0 CE1 CE2 j).t, ((uTop (X.seg C0 CE1 CE2 j) l' : Fin _) : ℕ) =
        (X.seg C0 CE1 CE2 j).sigma + l' := fun _ => rfl
    have v0 : ((finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ)) : Fin _) : ℕ) =
        2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) := Nat.min_eq_left (by omega)
    have v1 : ((finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) + 1) : Fin _) : ℕ) =
        2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) + 1 := Nat.min_eq_left (by omega)
    simp only [ωo, ωoL, v0, v1, Fin.val_castSucc]
    by_cases hl : (l : ℕ) = (l0 : ℕ)
    · rw [if_neg (by simp), if_pos (by simp [hl]), if_pos (by rw [hu, hu]; omega), if_neg (by rw [hu, hu]; omega)]
    · rw [if_neg (by simp), if_neg (by simp [hl]), if_neg (by rw [hu, hu]; omega), if_neg (by rw [hu, hu]; omega)]
  · have hi := (uTop (X.seg C0 CE1 CE2 j) l0).2
    simp only [ωo, ωoL, Fin.val_castSucc, Fin.val_last]
    rw [if_neg (by simp), if_neg (by intro h; have := l0.2; omega), if_neg (by omega), if_neg (by omega)]

theorem ωp_bal : Balanced X.m (X.seg C0 CE1 CE2 j) (ωp C0 CE1 CE2 X j) (ωpL X j) := by
  refine ⟨fun a c => rfl, fun l => ?_, ?_⟩
  · have hi := (uTop (X.seg C0 CE1 CE2 j) l).2
    have v0 : ((finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ)) : Fin _) : ℕ) =
        2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) := Nat.min_eq_left (by omega)
    have v1 : ((finPos (2 * segS X.TT j + 1) (2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) + 1) : Fin _) : ℕ) =
        2 * (uTop (X.seg C0 CE1 CE2 j) l : ℕ) + 1 := Nat.min_eq_left (by omega)
    simp only [ωp, ωpL, v0, v1, Fin.val_castSucc]
    rw [if_neg (by simp), if_neg (by intro h; have := l.2; omega), if_neg (by omega), if_neg (by omega)]
  · simp only [ωp, ωpL, Fin.val_castSucc, Fin.val_last]
    simp

theorem omB_ωo (b : SegBlock (segS X.TT j) X.m) (l0 : Fin (X.seg C0 CE1 CE2 j).t) :
    OmB X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) (segAPlus X.TT X.aT j) b (ωo C0 CE1 CE2 X j l0)
      (ωoL C0 CE1 CE2 X j l0) = b.o (uTop (X.seg C0 CE1 CE2 j) l0) := by
  classical
  have hi := (uTop (X.seg C0 CE1 CE2 j) l0).2
  unfold OmB
  have s1 : ∑ l : Fin (X.seg C0 CE1 CE2 j).t, (coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l) -
      b.o (uTop (X.seg C0 CE1 CE2 j) l)) * ωo C0 CE1 CE2 X j l0 (Sum.inr (Fin.castSucc l, false)) = 0 :=
    Finset.sum_eq_zero fun l _ => by simp [ωo]
  have s2 : ωo C0 CE1 CE2 X j l0 (Sum.inr (Fin.last _, false)) = 0 := by simp [ωo]
  have s3 : ∑ a : Fin (2 * segS X.TT j + 1), (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a *
      ωoL C0 CE1 CE2 X j l0 (Fin.castSucc a) = b.o (uTop (X.seg C0 CE1 CE2 j) l0) := by
    rw [Finset.sum_eq_single (⟨2 * (uTop (X.seg C0 CE1 CE2 j) l0 : ℕ), by omega⟩ : Fin (2 * segS X.TT j + 1))]
    · simp only [ωoL, Fin.val_castSucc, if_true, mul_one]
      rw [segment_chain_degree_even X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b _ (uTop (X.seg C0 CE1 CE2 j) l0) rfl,
        if_neg (by show ¬ ((X.seg C0 CE1 CE2 j).sigma + (l0 : ℕ) < (X.seg C0 CE1 CE2 j).sigma); omega)]
    · intro a _ ha
      simp only [ωoL, Fin.val_castSucc]
      rw [if_neg (fun h => ha (Fin.ext h)), mul_zero]
    · intro h; exact absurd (Finset.mem_univ _) h
  have s4 : ωoL C0 CE1 CE2 X j l0 (Fin.last _) = 0 := by
    simp only [ωoL, Fin.val_last]
    rw [if_neg (by omega)]
  rw [s1, s2, s3, s4]
  ring

theorem omB_ωp (b : SegBlock (segS X.TT j) X.m) :
    OmB X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) (segAPlus X.TT X.aT j) b (ωp C0 CE1 CE2 X j) (ωpL X j) = b.oPlus := by
  classical
  unfold OmB
  have s1 : ∑ l : Fin (X.seg C0 CE1 CE2 j).t, (coarseA X.p (X.seg C0 CE1 CE2 j) b (uTop (X.seg C0 CE1 CE2 j) l) -
      b.o (uTop (X.seg C0 CE1 CE2 j) l)) * ωp C0 CE1 CE2 X j (Sum.inr (Fin.castSucc l, false)) = 0 :=
    Finset.sum_eq_zero fun l _ => by simp [ωp]
  have s2 : ωp C0 CE1 CE2 X j (Sum.inr (Fin.last _, false)) = 0 := by simp [ωp]
  have s3 : ∑ a : Fin (2 * segS X.TT j + 1), (segChain X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b).deg a *
      ωpL X j (Fin.castSucc a) = b.oPlus := by
    rw [Finset.sum_eq_single (⟨2 * segS X.TT j, by omega⟩ : Fin (2 * segS X.TT j + 1))]
    · simp only [ωpL, Fin.val_castSucc, if_true, mul_one]
      exact chain_deg_U X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b _ rfl
    · intro a _ ha
      simp only [ωpL, Fin.val_castSucc]
      rw [if_neg (fun h => ha (Fin.ext h)), mul_zero]
    · intro h; exact absurd (Finset.mem_univ _) h
  have s4 : ωpL X j (Fin.last _) = 0 := by
    simp only [ωpL, Fin.val_last]
    rw [if_neg (by omega)]
  rw [s1, s2, s3, s4]
  ring

end

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Imports =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LevOfSymVar =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LevOfSymVar", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFDefs\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.ExpFactIoExp\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.TopOddNeEnd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial

section

variable (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT))

theorem lev_of_symVar (v : BV C0 CE1 CE2 X j) (i : Fin (segS X.TT j)) (h : (symVar C0 CE1 CE2 X j v).1.1 = topOdd X j i) :
    symLev X.p C0 CE1 CE2 X j v = (X.seg C0 CE1 CE2 j).P X.p i := by
  rcases v with ⟨a, c⟩ | ⟨l, bo⟩
  · by_cases ha : (a : ℕ) < 2 * segS X.TT j
    · simp only [symVar, symLev, dif_pos ha] at h ⊢
      rw [topOdd_inj X j h]
    · simp only [symVar, dif_neg ha] at h
      exact absurd h.symm (topOdd_ne_end X j i)
  · by_cases hl : (l : ℕ) < (X.seg C0 CE1 CE2 j).t
    · simp only [symVar, symLev, dif_pos hl] at h ⊢
      rw [topOdd_inj X j h]
    · simp only [symVar, dif_neg hl] at h
      exact absurd h.symm (topOdd_ne_end X j i)

theorem coarse_dvd (μ : BV C0 CE1 CE2 X j →₀ ℕ) (i : Fin (segS X.TT j)) (β : Bool) (c : Fin (X.m + 1)) :
    (X.seg C0 CE1 CE2 j).P X.p i ∣
      (μ.sum fun v n => Finsupp.single (symVar C0 CE1 CE2 X j v) (symLev X.p C0 CE1 CE2 X j v * n)) ((topOdd X j i, β), c) := by
  classical
  rw [Finsupp.sum_apply]
  refine Finset.dvd_sum fun v _ => ?_
  show _ ∣ (Finsupp.single (symVar C0 CE1 CE2 X j v) (symLev X.p C0 CE1 CE2 X j v * μ v)) ((topOdd X j i, β), c)
  rw [Finsupp.single_apply]
  split_ifs with h
  · rw [lev_of_symVar C0 CE1 CE2 X j v i (by rw [h])]
    exact dvd_mul_right _ _
  · exact dvd_zero _

theorem coarse_spec (μ : BV C0 CE1 CE2 X j →₀ ℕ) (i : Fin (segS X.TT j)) (β : Bool)
    (hi : (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma) :
    (μ.sum fun v n => Finsupp.single (symVar C0 CE1 CE2 X j v) (symLev X.p C0 CE1 CE2 X j v * n))
      ((topOdd X j i, β), 0) = 0 := by
  classical
  rw [Finsupp.sum_apply]
  refine Finset.sum_eq_zero fun v _ => ?_
  show (Finsupp.single (symVar C0 CE1 CE2 X j v) (symLev X.p C0 CE1 CE2 X j v * μ v)) ((topOdd X j i, β), 0) = 0
  rw [Finsupp.single_apply, if_neg]
  intro h
  rcases v with ⟨a, c⟩ | ⟨l, bo⟩
  · simp only [symVar] at h
    split_ifs at h <;> exact Fin.succ_ne_zero _ (congrArg Prod.snd h)
  · simp only [symVar] at h
    split_ifs at h with hl
    · have e := topOdd_inj X j (congrArg (fun z => z.1.1) h)
      have : (X.seg C0 CE1 CE2 j).sigma + (l : ℕ) = (i : ℕ) := congrArg Fin.val e
      omega
    · exact topOdd_ne_end X j i (congrArg (fun z => z.1.1) h).symm

theorem ioExp_mod (b : SegBlock (segS X.TT j) X.m)
    (hb : Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b) (μ : BV C0 CE1 CE2 X j →₀ ℕ)
    (i : Fin (segS X.TT j)) (β : Bool) (c : Fin (X.m + 1)) :
    ioExp C0 CE1 CE2 X j b μ ((topOdd X j i, β), c) % (X.seg C0 CE1 CE2 j).P X.p i =
      if β then b.rz i c else b.ry i c := by
  unfold ioExp
  rw [Finsupp.add_apply, baseExp_odd]
  obtain ⟨k, hk⟩ := coarse_dvd C0 CE1 CE2 X j μ i β c
  rw [hk]
  have hlt : (if β then b.rz i c else b.ry i c) < (X.seg C0 CE1 CE2 j).P X.p i := by
    split_ifs
    · exact (hb.1.1 i c).1
    · exact (hb.1.1 i c).2
  set P := (X.seg C0 CE1 CE2 j).P X.p i
  have e1 : ∀ (cond : Prop) [Decidable cond] (T : ℕ), (if cond then P * T else 0) = P * (if cond then T else 0) := by
    intro cond _ T
    split_ifs <;> simp
  rw [e1, add_assoc, ← mul_add, Nat.add_mul_mod_self_left, Nat.mod_eq_of_lt hlt]

end

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LevOfSymVar =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockEqSum =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockEqSum", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFDefs\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.FTDefs\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.ExpFactIoExp\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.Imports\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockMonomial\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.LevOfSymVar\nimport Formalism.SharpRestriction.GrowthBounds.RootWeights.ExponentFactorialAddSingleOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

open Formalism.MainNotions.G MvPolynomial

section

variable (C0 CE1 CE2 : ℝ) (X : Loc) [NeZero X.m] (j : Fin (numSeg X.TT))

theorem hom_of_ssz {O : Type} [CommRing O] [IsDomain O] (b : SegBlock (segS X.TT j) X.m) (mm : ℝ)
    (u : MvPolynomial (BV C0 CE1 CE2 X j) (KK O)) (hu : u ∈ sszB O C0 CE1 CE2 X j mm b) (μ : BV C0 CE1 CE2 X j →₀ ℕ)
    (hμ : μ ∈ u.support) : HomExp C0 CE1 CE2 X j b μ := by
  intro ω ωL hB
  obtain ⟨h1, h2, h3⟩ := hB
  have hw := ssz_wh O X.p _ _ _ mm b ω ωL h1 h2 h3 u hu (mem_support_iff.1 hμ)
  rw [Finsupp.weight_apply, Finsupp.sum_fintype _ (fun i c => c • ω i) (fun _ => zero_smul _ _)] at hw
  simpa [smul_eq_mul] using hw

theorem sep (hp : 0 < X.p) (b b' : SegBlock (segS X.TT j) X.m)
    (hb : Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b)
    (hb' : Kept X.p X.m (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b') (μ μ' : BV C0 CE1 CE2 X j →₀ ℕ)
    (hμ : HomExp C0 CE1 CE2 X j b μ) (hμ' : HomExp C0 CE1 CE2 X j b' μ')
    (he : ioExp C0 CE1 CE2 X j b μ = ioExp C0 CE1 CE2 X j b' μ') : b = b' := by
  classical
  have hrz : ∀ i c, b.rz i c = b'.rz i c := by
    intro i c
    have h1 := ioExp_mod C0 CE1 CE2 X j b hb μ i true c
    have h2 := ioExp_mod C0 CE1 CE2 X j b' hb' μ' i true c
    rw [he, if_pos rfl] at h1
    rw [if_pos rfl] at h2
    exact h1.symm.trans h2
  have hry : ∀ i c, b.ry i c = b'.ry i c := by
    intro i c
    have h1 := ioExp_mod C0 CE1 CE2 X j b hb μ i false c
    have h2 := ioExp_mod C0 CE1 CE2 X j b' hb' μ' i false c
    rw [he, if_neg Bool.false_ne_true] at h1
    rw [if_neg Bool.false_ne_true] at h2
    exact h1.symm.trans h2
  have hrz' : b.rz = b'.rz := funext fun i => funext fun c => hrz i c
  have hry' : b.ry = b'.ry := funext fun i => funext fun c => hry i c
  have hA : ∀ i, coarseA X.p (X.seg C0 CE1 CE2 j) b i = coarseA X.p (X.seg C0 CE1 CE2 j) b' i := by
    intro i; unfold coarseA; rw [hrz']
  have hC : ∀ i, coarseC X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b i =
      coarseC X.p (X.seg C0 CE1 CE2 j) (segATop X.TT X.aT j) b' i := by
    intro i; unfold coarseC; rw [hry']
  have hS : ∀ i : Fin (segS X.TT j), (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma → b.w i = b'.w i ∧ b.sg i = b'.sg i := by
    intro i hi
    have hP : 0 < (X.seg C0 CE1 CE2 j).P X.p i := pow_pos hp _
    have k1 := hb.2.2.1 i hi
    have k1' := hb'.2.2.1 i hi
    have v1 := congrArg (fun e => e ((topOdd X j i, true), (0 : Fin (X.m + 1)))) he
    have v2 := congrArg (fun e => e ((topOdd X j i, false), (0 : Fin (X.m + 1)))) he
    simp only [ioExp, Finsupp.add_apply] at v1 v2
    rw [coarse_spec C0 CE1 CE2 X j μ i true hi, coarse_spec C0 CE1 CE2 X j μ' i true hi, add_zero, add_zero,
      baseExp_odd, baseExp_odd, if_pos rfl, if_pos rfl, if_pos (⟨hi, rfl⟩ : _ ∧ _), if_pos (⟨hi, rfl⟩ : _ ∧ _),
      if_pos rfl, if_pos rfl, hrz i 0, hA i] at v1
    rw [coarse_spec C0 CE1 CE2 X j μ i false hi, coarse_spec C0 CE1 CE2 X j μ' i false hi, add_zero, add_zero,
      baseExp_odd, baseExp_odd, if_neg Bool.false_ne_true, if_neg Bool.false_ne_true, if_pos (⟨hi, rfl⟩ : _ ∧ _),
      if_pos (⟨hi, rfl⟩ : _ ∧ _), if_neg Bool.false_ne_true, if_neg Bool.false_ne_true, hry i 0] at v2
    have w1 := Nat.eq_of_mul_eq_mul_left hP (Nat.add_left_cancel v1)
    have w2 := Nat.eq_of_mul_eq_mul_left hP (Nat.add_left_cancel v2)
    have a1 := k1.2.1
    have a2 := k1'.2.1
    rw [hA i] at a1
    exact ⟨by omega, w2⟩
  have hbase : baseExp C0 CE1 CE2 X j b = baseExp C0 CE1 CE2 X j b' := by
    unfold baseExp
    rw [hrz', hry']
    congr 1
    refine Finset.sum_congr rfl fun i _ => ?_
    split_ifs with hi
    · rw [(hS i hi).1, (hS i hi).2, hA i]
    · rfl
  have hμμ : μ = μ' := by
    unfold ioExp at he
    rw [hbase] at he
    have h' := add_left_cancel he
    ext v0
    have := DFunLike.congr_fun h' (symVar C0 CE1 CE2 X j v0)
    rw [coarse_eval, coarse_eval] at this
    exact Nat.eq_of_mul_eq_mul_left (symLev_pos C0 CE1 CE2 X hp j v0) this
  subst hμμ
  have ho : ∀ l, b.o (uTop (X.seg C0 CE1 CE2 j) l) = b'.o (uTop (X.seg C0 CE1 CE2 j) l) := by
    intro l
    rw [← omB_ωo C0 CE1 CE2 X j b l, ← omB_ωo C0 CE1 CE2 X j b' l, ← hμ _ _ (ωo_bal C0 CE1 CE2 X j l),
      ← hμ' _ _ (ωo_bal C0 CE1 CE2 X j l)]
  have hoP : b.oPlus = b'.oPlus := by
    rw [← omB_ωp C0 CE1 CE2 X j b, ← omB_ωp C0 CE1 CE2 X j b', ← hμ _ _ (ωp_bal C0 CE1 CE2 X j),
      ← hμ' _ _ (ωp_bal C0 CE1 CE2 X j)]
  have hofun : b.o = b'.o := funext fun i => by
    by_cases hi : (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma
    · rw [(hb.2.2.1 i hi).1, (hb'.2.2.1 i hi).1]
    · have hl : (i : ℕ) - (X.seg C0 CE1 CE2 j).sigma < (X.seg C0 CE1 CE2 j).t := by
        have := i.2; unfold SegData.t; omega
      have e : uTop (X.seg C0 CE1 CE2 j) ⟨(i : ℕ) - (X.seg C0 CE1 CE2 j).sigma, hl⟩ = i :=
        Fin.ext (by show (X.seg C0 CE1 CE2 j).sigma + ((i : ℕ) - (X.seg C0 CE1 CE2 j).sigma) = i; omega)
      rw [← e]
      exact ho _
  have hwfun : b.w = b'.w := funext fun i => by
    by_cases hi : (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma
    · exact (hS i hi).1
    · rw [(hb.2.1 i (not_lt.1 hi)).2.2.1, (hb'.2.1 i (not_lt.1 hi)).2.2.1]
  have hsgfun : b.sg = b'.sg := funext fun i => by
    by_cases hi : (i : ℕ) < (X.seg C0 CE1 CE2 j).sigma
    · exact (hS i hi).2
    · rw [(hb.2.1 i (not_lt.1 hi)).2.2.2, (hb'.2.1 i (not_lt.1 hi)).2.2.2]
  cases b
  cases b'
  simp only at hrz' hry' hofun hwfun hsgfun hoP
  rw [hrz', hry', hofun, hwfun, hsgfun, hoP]

theorem ioBlock_eq_sum (K : Type) [Field K] (b : SegBlock (segS X.TT j) X.m) (t : MvPolynomial (BV C0 CE1 CE2 X j) K) :
    ioBlock K X.p C0 CE1 CE2 X j b t = ∑ μ ∈ t.support, monomial (ioExp C0 CE1 CE2 X j b μ) (t.coeff μ) := by
  let f : MvPolynomial (BV C0 CE1 CE2 X j) K →ₗ[K] MvPolynomial ((X.TT × Bool) × Fin (X.m + 1)) K :=
    (LinearMap.mulLeft K (digitMon K C0 CE1 CE2 X j b * sTopMon K X.p C0 CE1 CE2 X j b)).comp
      (aeval (fun v => (MvPolynomial.X (symVar C0 CE1 CE2 X j v) :
        MvPolynomial ((X.TT × Bool) × Fin (X.m + 1)) K) ^ symLev X.p C0 CE1 CE2 X j v)).toLinearMap
  have hf : ∀ t, ioBlock K X.p C0 CE1 CE2 X j b t = f t := fun _ => rfl

  conv_lhs => rw [hf, ← t.support_sum_monomial_coeff, map_sum]
  exact Finset.sum_congr rfl fun μ _ => by rw [← hf, ioBlock_monomial]

end

theorem orthAt (C0 CE1 CE2 : ℝ) : OrthAt C0 CE1 CE2 := by
  classical
  intro X _ O _ _ mm hD1 j b b' hb hb' hne s hs s' hs'
  have hp : 0 < X.p := hD1.1.pos
  rw [ioBlock_eq_sum C0 CE1 CE2 X j (KK O) b s, Formalism.MainNotions.G.GLWeightTheory.fock_form_finset_sum _ _ _ (support_sum)]
  refine Finset.sum_eq_zero fun e he => ?_
  obtain ⟨μ, hμ, he'⟩ := Finset.mem_biUnion.1 he
  have hem := support_monomial_subset he'
  rw [Finset.mem_singleton] at hem
  subst hem
  have h0 : AddMonoidAlgebra.coeff (ioBlock (KK O) X.p C0 CE1 CE2 X j b' s') (ioExp C0 CE1 CE2 X j b μ) = 0 := by
    rw [ioBlock_eq_sum C0 CE1 CE2 X j (KK O) b' s', coeff_sum]
    refine Finset.sum_eq_zero fun μ' hμ' => ?_
    rw [coeff_monomial, if_neg]
    intro h
    exact hne (sep C0 CE1 CE2 X j hp b' b hb' hb μ' μ (hom_of_ssz C0 CE1 CE2 X j b' mm s' hs' μ' hμ')
      (hom_of_ssz C0 CE1 CE2 X j b mm s hs μ hμ) h).symm
  rw [h0, mul_zero, zero_mul]

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockEqSum =====

-- ===== clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFFinal =====
-- clump-header: {"m": "Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFFinal", "h": "module\n\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.SymbolFormOfOrthogonality\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BlockForm\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFCoarse\nimport Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFTrueDeg\npublic import Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.IoBlockEqSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.MainNotions.ColumnSystems.Pf

theorem symbol_form_of_block_parts {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) (hK : RestKapNum) (hO : RestOPlus) : RestForm :=
  symbol_form_of_orthogonality (restBlockForm_of h52 hK) orthAt hO

theorem restKapNum_of {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) (hO : RestOPlus) : RestKapNum := by
  unfold RestKapNum TransportedAlt
  unfold RestOPlus TransportedAlt at hO
  intro Cc hCc
  obtain ⟨T0, hT0, h0⟩ := hO Cc hCc
  refine ⟨T0, hT0, fun C0 hC0 => ?_⟩
  obtain ⟨T1, hT1, h1⟩ := h0 C0 hC0
  refine ⟨T1, hT1, fun CE1 CE2 Cm hE1 hE2 hCm => ?_⟩
  obtain ⟨T2, hT2, h2⟩ := h1 CE1 CE2 Cm hE1 hE2 hCm
  refine ⟨T2, hT2, fun CYb Cde Ck CD Cb ha hb hc hd he => ?_⟩
  have hOP := h2 CYb Cde Ck CD Cb ha hb hc hd he
  exact kapNumAt_of h52 (trueDegAt_of hOP) (coarseMultAt_of hOP)

theorem restForm_of_oplus {D : Formalism.BasicNotions.D7} (h52 : Formalism.MainNotions.CovariantDegrees.FactorialUnitDecomposition D) (hO : RestOPlus) : RestForm :=
  symbol_form_of_block_parts h52 (restKapNum_of h52 hO) hO

end Formalism.MainNotions.ColumnSystems.Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.SharpRestriction.GrowthBounds.CoarseMultiplicity.BFFinal =====
