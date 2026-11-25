module

public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StImageDimLe
public import ReciprocityTheory.CommutativeAlgebra.PolynomialHeights.HeightAddRingKrullDimQuotientMvPolynomialField
public import Mathlib.RingTheory.AlgebraicIndependent.Basic
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpen
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpenPoly
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.ImportsAlt
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenFixed
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedPointsCountPrime
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StDominantFibreBound
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StSameOrdersLiftCentre
public import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StBranchOffHypersurface
public import GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.CentredDiscCoverCurveHolds
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.MvPolynomial.Funext
import Mathlib.RingTheory.KrullDimension.Field
import Mathlib.RingTheory.KrullDimension.Polynomial
import Mathlib.Topology.Algebra.MvPolynomial

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImageDimLe, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPoly, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPolyFull, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedPointsCountPrime, GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PSameOrdersLiftCentre, GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.IsolatedPointsCountPrime

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImageDimLe =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImageDimLe", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StImageDimLe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Finiteness.ModuleFinitePresentation\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.CommutativeAlgebra.PolynomialHeights.HeightAddRingKrullDimQuotientMvPolynomialField\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial

noncomputable section

theorem ImageDimLe.proof : ImageDimLe.Statement := by
  intro n m P Q hP
  set φ : MvPolynomial (Fin m) ℂ →ₐ[ℂ] MvPolynomial (Fin n) ℂ ⧸ P :=
    (Ideal.Quotient.mkₐ ℂ P).comp (aeval Q) with hφ
  have : P.IsPrime := hP
  have : (RingHom.ker φ).IsPrime := RingHom.ker_isPrime φ
  obtain ⟨s, hs1, hs2⟩ :=
    ReciprocityTheory.CA.exists_dim_trdeg_field (K := ℂ) (A := MvPolynomial (Fin m) ℂ ⧸ RingHom.ker φ)
  obtain ⟨t, ht1, ht2⟩ :=
    ReciprocityTheory.CA.exists_dim_trdeg_field (K := ℂ) (A := MvPolynomial (Fin n) ℂ ⧸ P)
  have hle : Algebra.trdeg ℂ (MvPolynomial (Fin m) ℂ ⧸ RingHom.ker φ) ≤
      Algebra.trdeg ℂ (MvPolynomial (Fin n) ℂ ⧸ P) :=
    trdeg_le_of_injective (Ideal.kerLiftAlg φ) (Ideal.kerLiftAlg_injective φ)
  rw [hs2, ht2] at hle
  have hst : s ≤ t := by exact_mod_cast hle
  rw [hs1, ht1]
  exact_mod_cast hst

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImageDimLe =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPoly =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPoly", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpen\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpenPoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial Topology Filter Matrix ComplexSets

noncomputable section

namespace IsolatedFibreOpenPoly

variable {n d : ℕ}

def graphSubst (p : Fin d → MvPolynomial (Fin n) ℂ) :
    MvPolynomial (Fin (n + d)) ℂ →ₐ[ℂ] MvPolynomial (Fin n) ℂ :=
  aeval (Fin.append X p)

def graphIdeal (P : Ideal (MvPolynomial (Fin n) ℂ)) (p : Fin d → MvPolynomial (Fin n) ℂ) :
    Ideal (MvPolynomial (Fin (n + d)) ℂ) :=
  P.comap (graphSubst p)

def graphPt (p : Fin d → MvPolynomial (Fin n) ℂ) (x : Fin n → ℂ) : Fin (n + d) → ℂ :=
  Fin.append x fun i => eval x (p i)

def firstPart (z : Fin (n + d) → ℂ) : Fin n → ℂ :=
  fun j => z (Fin.castAdd d j)

def lastRows (n d : ℕ) : Matrix (Fin d) (Fin (n + d)) ℂ :=
  fun i j => if j = Fin.natAdd n i then 1 else 0

theorem lastRows_mulVec (z : Fin (n + d) → ℂ) : lastRows n d *ᵥ z = fun i => z (Fin.natAdd n i) := by
  funext i
  simp [lastRows, Matrix.mulVec, dotProduct, ite_mul]

theorem firstPart_graphPt (p : Fin d → MvPolynomial (Fin n) ℂ) (x : Fin n → ℂ) :
    firstPart (graphPt p x) = x := by
  funext j
  simp [firstPart, graphPt, Fin.append_left]

theorem graphPt_natAdd (p : Fin d → MvPolynomial (Fin n) ℂ) (x : Fin n → ℂ) (i : Fin d) :
    graphPt p x (Fin.natAdd n i) = eval x (p i) := by
  simp [graphPt, Fin.append_right]

theorem continuous_firstPart : Continuous (firstPart : (Fin (n + d) → ℂ) → Fin n → ℂ) :=
  continuous_pi fun _ => continuous_apply _

theorem eval_graphSubst (p : Fin d → MvPolynomial (Fin n) ℂ) (x : Fin n → ℂ)
    (q : MvPolynomial (Fin (n + d)) ℂ) : eval x (graphSubst p q) = eval (graphPt p x) q := by
  induction q using MvPolynomial.induction_on with
  | C a => simp [graphSubst]
  | add q r hq hr => simp only [map_add (f := _), hq, hr]
  | mul_X q i hq =>
    simp only [map_mul, graphSubst, aeval_X, eval_X]
    congr 1
    refine Fin.addCases (fun j => ?_) (fun j => ?_) i
    · simp [graphPt, Fin.append_left]
    · simp [graphPt, Fin.append_right]

theorem graphSubst_rename (p : Fin d → MvPolynomial (Fin n) ℂ) (q : MvPolynomial (Fin n) ℂ) :
    graphSubst p (rename (Fin.castAdd d) q) = q := by
  rw [graphSubst, aeval_rename]
  have h : (Fin.append X p ∘ Fin.castAdd d : Fin n → MvPolynomial (Fin n) ℂ) = X := by
    funext j
    simp [Fin.append_left]
  rw [h, aeval_X_left_apply]

theorem graphSubst_surjective (p : Fin d → MvPolynomial (Fin n) ℂ) :
    Function.Surjective (graphSubst p) :=
  fun q => ⟨rename (Fin.castAdd d) q, graphSubst_rename p q⟩

theorem isPrime_graphIdeal {P : Ideal (MvPolynomial (Fin n) ℂ)} (hP : P.IsPrime)
    (p : Fin d → MvPolynomial (Fin n) ℂ) : (graphIdeal P p).IsPrime := by
  have := hP
  unfold graphIdeal
  infer_instance

theorem ringKrullDim_graphIdeal (P : Ideal (MvPolynomial (Fin n) ℂ)) (p : Fin d → MvPolynomial (Fin n) ℂ) :
    ringKrullDim (MvPolynomial (Fin (n + d)) ℂ ⧸ graphIdeal P p) =
      ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ P) := by
  set f : MvPolynomial (Fin (n + d)) ℂ →+* MvPolynomial (Fin n) ℂ ⧸ P :=
    (Ideal.Quotient.mk P).comp (graphSubst p).toRingHom with hf
  have hsurj : Function.Surjective f :=
    Ideal.Quotient.mk_surjective.comp (graphSubst_surjective p)
  have hker : graphIdeal P p = RingHom.ker f := by
    rw [hf, ← RingHom.comap_ker, Ideal.mk_ker]
    rfl
  exact ringKrullDim_eq_of_ringEquiv
    ((Ideal.quotEquivOfEq hker).trans (RingHom.quotientKerEquivOfSurjective hsurj))

theorem graphPt_mem {P : Ideal (MvPolynomial (Fin n) ℂ)} (p : Fin d → MvPolynomial (Fin n) ℂ)
    {x : Fin n → ℂ} (hx : x ∈ zeroSet P) : graphPt p x ∈ IndefiniteRowSideFullHecke.ComplexSets.zeroLocus (graphIdeal P p) := by
  intro q hq
  rw [← eval_graphSubst]
  exact hx _ hq

theorem firstPart_mem {P : Ideal (MvPolynomial (Fin n) ℂ)} {p : Fin d → MvPolynomial (Fin n) ℂ}
    {z : Fin (n + d) → ℂ} (hz : z ∈ IndefiniteRowSideFullHecke.ComplexSets.zeroLocus (graphIdeal P p)) :
    firstPart z ∈ zeroSet P := by
  intro q hq
  have h := hz (rename (Fin.castAdd d) q) (by
    show graphSubst p (rename (Fin.castAdd d) q) ∈ P
    rw [graphSubst_rename]
    exact hq)
  rw [eval_rename] at h
  exact h

theorem natAdd_of_mem {P : Ideal (MvPolynomial (Fin n) ℂ)} {p : Fin d → MvPolynomial (Fin n) ℂ}
    {z : Fin (n + d) → ℂ} (hz : z ∈ IndefiniteRowSideFullHecke.ComplexSets.zeroLocus (graphIdeal P p)) (i : Fin d) :
    z (Fin.natAdd n i) = eval (firstPart z) (p i) := by
  have h := hz (X (Fin.natAdd n i) - rename (Fin.castAdd d) (p i)) (by
    show graphSubst p (X (Fin.natAdd n i) - rename (Fin.castAdd d) (p i)) ∈ P
    rw [map_sub, graphSubst_rename, graphSubst, aeval_X, Fin.append_right, sub_self]
    exact P.zero_mem)
  rw [map_sub, eval_X, eval_rename, sub_eq_zero] at h
  exact h

theorem eq_graphPt_of_mem {P : Ideal (MvPolynomial (Fin n) ℂ)} {p : Fin d → MvPolynomial (Fin n) ℂ}
    {z : Fin (n + d) → ℂ} (hz : z ∈ IndefiniteRowSideFullHecke.ComplexSets.zeroLocus (graphIdeal P p)) :
    z = graphPt p (firstPart z) := by
  funext k
  refine Fin.addCases (fun j => ?_) (fun i => ?_) k
  · simp [graphPt, firstPart, Fin.append_left]
  · rw [natAdd_of_mem hz i, graphPt_natAdd]

theorem proof (hOpen : IndefiniteRowSideFullHecke.ComplexSets.IsolatedFibreOpen.Statement) : IsolatedFibreOpenPoly.Statement := by
  intro n d P p x hP hdim hx ⟨W, hW, hiso⟩ W' hW'
  have hV : IndefiniteRowSideFullHecke.ComplexSets.IsAffVariety (graphIdeal P p) d :=
    ⟨isPrime_graphIdeal hP p, by rw [ringKrullDim_graphIdeal]; exact hdim⟩
  have hAx : lastRows n d *ᵥ graphPt p x = fun i => eval x (p i) := by
    rw [lastRows_mulVec]
    funext i
    exact graphPt_natAdd p x i
  have hN : ∀ U ∈ 𝓝 x, firstPart ⁻¹' U ∈ 𝓝 (graphPt p x) := fun U hU =>
    continuous_firstPart.continuousAt.preimage_mem_nhds (by rw [firstPart_graphPt]; exact hU)
  have hisoG : ∀ z ∈ firstPart ⁻¹' W, z ∈ IndefiniteRowSideFullHecke.ComplexSets.zeroLocus (graphIdeal P p) →
      lastRows n d *ᵥ z = lastRows n d *ᵥ graphPt p x → z = graphPt p x := by
    intro z hzW hz hAz
    have hfz : firstPart z = x := by
      refine hiso _ ⟨firstPart_mem hz, hzW⟩ fun i => ?_
      have h := congrFun hAz i
      rw [lastRows_mulVec, lastRows_mulVec] at h
      simp only at h
      rw [natAdd_of_mem hz, graphPt_natAdd] at h
      exact h
    rw [eq_graphPt_of_mem hz, hfz]
  have h := hOpen (n + d) d (graphIdeal P p) (lastRows n d) (graphPt p x) hV (graphPt_mem p hx)
    ⟨firstPart ⁻¹' W, hN W hW, hisoG⟩ (firstPart ⁻¹' W') (hN W' hW')
  rw [hAx] at h
  refine Filter.mem_of_superset h ?_
  rintro _ ⟨z, ⟨hz, hzW'⟩, rfl⟩
  refine ⟨firstPart z, ⟨firstPart_mem hz, hzW'⟩, ?_⟩
  show (fun i => eval (firstPart z) (p i)) = lastRows n d *ᵥ z
  rw [lastRows_mulVec]
  funext i
  exact (natAdd_of_mem hz i).symm

end IsolatedFibreOpenPoly

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPoly =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPolyFull =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPolyFull", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpenPoly\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.ImportsAlt\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenFixed\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPoly\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

theorem IsolatedFibreOpenPoly.full : IsolatedFibreOpenPoly.Statement :=
  IsolatedFibreOpenPoly.proof
    (IndefiniteRowSideFullHecke.ComplexSets.IsolatedFibreOpenOfGeneric.proof
      (IndefiniteRowSideFullHecke.ComplexSets.GenericProjectionFinite.equiv.mp ComplexSets.GenericProjectionFinite.full)
      IndefiniteRowSideFullHecke.ComplexSets.FiniteMapOpen.full)

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPolyFull =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedPointsCountPrime =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedPointsCountPrime", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedPointsCountPrime\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedFibreOpenPoly\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StDominantFibreBound\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StImageDimLe\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.Assembly\nimport Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.KrullDimension.Field\nimport Mathlib.RingTheory.KrullDimension.Polynomial\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Algebra.MvPolynomial\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial Topology ComplexSets

noncomputable section

theorem IsolatedPointsCountPrime.exists_dim_eq {n : ℕ} (J : Ideal (MvPolynomial (Fin n) ℂ)) [J.IsPrime] :
    ∃ d : ℕ, ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) = d := by
  have h0 : 0 ≤ ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) := ringKrullDim_nonneg_of_nontrivial
  have h1 := ringKrullDim_quotient_le J
  rw [MvPolynomial.ringKrullDim_of_isNoetherianRing_of_finite, ringKrullDim_eq_zero_of_field,
    Nat.card_eq_fintype_card, Fintype.card_fin, zero_add] at h1
  generalize ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) = x at h0 h1 ⊢
  induction x using WithBot.recBotCoe with
  | bot => simp at h0
  | coe k =>
    induction k using ENat.recTopCoe with
    | top =>
      exfalso
      have h2 : ((⊤ : ℕ∞) : WithBot ℕ∞) ≤ ((n : ℕ∞) : WithBot ℕ∞) := h1
      exact absurd (WithBot.coe_le_coe.1 h2) (by simp)
    | coe k => exact ⟨k, rfl⟩

theorem IsolatedPointsCountPrime.eval_aeval {n m : ℕ} (Q : Fin m → MvPolynomial (Fin n) ℂ)
    (f : MvPolynomial (Fin m) ℂ) (x : Fin n → ℂ) :
    eval x (aeval Q f) = eval (fun i => eval x (Q i)) f := by
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p p' hp hp' => rw [map_add (f := _), map_add (f := _), hp, hp', map_add (f := _)]
  | mul_X p i hp => rw [map_mul, map_mul, hp, aeval_X, map_mul, eval_X]

theorem IsolatedPointsCountPrime.exists_eval_ne_zero {d : ℕ} {Δ : MvPolynomial (Fin d) ℂ} (hΔ : Δ ≠ 0)
    {w : Fin d → ℂ} {S : Set (Fin d → ℂ)} (hS : S ∈ 𝓝 w) : ∃ w' ∈ S, eval w' Δ ≠ 0 := by
  obtain ⟨ε, hε, hball⟩ := Metric.mem_nhds_iff.1 hS
  by_contra h
  simp only [not_exists, not_and, not_not] at h
  apply hΔ
  refine funext_set (fun i => Metric.ball (w i) ε)
    (fun i => infinite_of_mem_nhds (w i) (Metric.ball_mem_nhds (w i) hε)) (fun y hy => ?_)
  rw [map_zero]
  refine h y (hball ?_)
  rw [ball_pi w hε]
  exact hy

theorem IsolatedPointsCountPrime.proof (hOpen : IsolatedFibreOpenPoly.Statement)
    (hDom : DominantFibreBound.Statement) (hDim : ImageDimLe.Statement) :
    IsolatedPointsCountPrime.Statement := by
  classical
  intro n m P hP Q

  have hKp : (RingHom.ker ((Ideal.Quotient.mkₐ ℂ P).comp (aeval Q))).IsPrime := RingHom.ker_isPrime _
  set K := RingHom.ker ((Ideal.Quotient.mkₐ ℂ P).comp (aeval Q)) with hK
  obtain ⟨d, hd⟩ := IsolatedPointsCountPrime.exists_dim_eq P
  obtain ⟨r, hr⟩ := IsolatedPointsCountPrime.exists_dim_eq K
  have hrd : r ≤ d := by
    have h := hDim n m P Q hP
    rw [← hK, hr, hd] at h
    exact_mod_cast h
  obtain ⟨B, hB⟩ := (GenericProjectionFinite.full m r K hKp hr).2.1
  have hfib := FibreBound.full m r K B hKp hr hB

  set Qm : (Fin n → ℂ) → (Fin m → ℂ) := fun x i => eval x (Q i) with hQm
  have hQZ : ∀ x ∈ zeroSet P, Qm x ∈ zeroSet K := by
    intro x hx f hf
    have hf' : aeval Q f ∈ P := by
      rw [hK, RingHom.mem_ker] at hf
      change Ideal.Quotient.mk P (aeval Q f) = 0 at hf
      exact Ideal.Quotient.eq_zero_iff_mem.mp hf
    rw [← IsolatedPointsCountPrime.eval_aeval]
    exact hx _ hf'
  have hQc : Continuous Qm := continuous_pi fun i => MvPolynomial.continuous_eval _

  set q : Fin r → MvPolynomial (Fin n) ℂ := fun i => aeval Q (linPoly B i) with hq
  have hqe : ∀ x, (fun i => eval x (q i)) = B.mulVec (Qm x) := by
    intro x
    funext i

    simp only [hq, IsolatedPointsCountPrime.eval_aeval, linPoly, map_sum, map_mul, eval_C, eval_X,
    Matrix.mulVec, dotProduct, hQm]

  have step1 : ∀ z x, x ∈ isolatedFibrePts P Q z →
      ∃ W ∈ 𝓝 x, ∀ x' ∈ zeroSet P ∩ W, (∀ i, eval x' (q i) = eval x (q i)) → x' = x := by
    rintro z x ⟨hxP, hxQ, V, hV, hiso⟩
    have hQx : Qm x = z := funext hxQ
    have hfin : (fibre K B (B.mulVec z) \ {z}).Finite := (hfib (B.mulVec z)).2.1.subset Set.sdiff_subset
    have hO : (fibre K B (B.mulVec z) \ {z})ᶜ ∈ 𝓝 (Qm x) := by
      rw [hQx]
      exact hfin.isClosed.compl_mem_nhds fun h => h.2 rfl
    refine ⟨V ∩ Qm ⁻¹' (fibre K B (B.mulVec z) \ {z})ᶜ,
      Filter.inter_mem hV (hQc.continuousAt.preimage_mem_nhds hO), ?_⟩
    rintro x' ⟨hx'P, hx'V, hx'O⟩ hx'q
    refine hiso x' ⟨hx'P, hx'V⟩ fun i => congrFun (?_ : Qm x' = z) i
    have h1 : B.mulVec (Qm x') = B.mulVec z := by
      rw [← hqe, ← hQx, ← hqe]
      funext i
      exact hx'q i
    by_contra hne
    exact hx'O ⟨⟨hQZ x' hx'P, h1⟩, hne⟩
  rcases lt_or_eq_of_le hrd with hlt | rfl
  ·
    refine ⟨0, fun z => ?_⟩
    suffices isolatedFibrePts P Q z = ∅ by simp [this]
    refine Set.eq_empty_of_forall_notMem fun x hx => ?_
    obtain ⟨W, hW, hiso⟩ := step1 z x hx
    set p : Fin d → MvPolynomial (Fin n) ℂ := fun i => if h : (i : ℕ) < r then q ⟨i, h⟩ else 0 with hp
    have hiso' : ∃ W ∈ 𝓝 x, ∀ x' ∈ zeroSet P ∩ W, (∀ i, eval x' (p i) = eval x (p i)) → x' = x :=
      ⟨W, hW, fun x' hx' h => hiso x' hx' fun i => by
        simpa [hp, i.isLt] using h ⟨i, i.isLt.trans hlt⟩⟩
    have himg := hOpen n d P p x hP hd hx.1 hiso' Set.univ Filter.univ_mem
    set px : Fin d → ℂ := fun i => eval x (p i) with hpx
    set j : Fin d := ⟨r, hlt⟩
    have hsub : (fun x' : Fin n → ℂ => fun i => eval x' (p i)) '' (zeroSet P ∩ Set.univ) ⊆
        {w | w j = 0} := by
      rintro _ ⟨y, -, rfl⟩
      simp [hp, j]
    have hc : Continuous fun t : ℂ => Function.update px j t := continuous_const.update j continuous_id
    have h1 : (fun t : ℂ => Function.update px j t) ⁻¹' {w | w j = 0} ∈ 𝓝 (px j) := by
      refine hc.continuousAt.preimage_mem_nhds ?_
      rw [Function.update_eq_self]
      exact Filter.mem_of_superset himg hsub
    have h2 : (fun t : ℂ => Function.update px j t) ⁻¹' {w | w j = 0} ⊆ {0} := by
      intro t ht
      simpa using ht
    exact (infinite_of_mem_nhds (px j) (Filter.mem_of_superset h1 h2)) (Set.finite_singleton 0)
  ·
    have hinj : Function.Injective ((Ideal.Quotient.mkₐ ℂ P).comp (aeval q)) := by
      have hcomp : aeval q = (aeval Q).comp (pullback B) := by
        apply MvPolynomial.algHom_ext
        intro i
        simp [hq, pullback]
      intro a b hab
      apply hB.injective
      simp only [projHom, AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk, Ideal.Quotient.eq] at hab ⊢
      rw [hcomp, AlgHom.comp_apply, AlgHom.comp_apply, ← map_sub] at hab
      rw [hK, RingHom.mem_ker, AlgHom.comp_apply, Ideal.Quotient.mkₐ_eq_mk, Ideal.Quotient.eq_zero_iff_mem]
      exact hab
    obtain ⟨e, Δ, hΔ, hbound⟩ := hDom n r P q hP hd hinj
    refine ⟨e, fun z => ?_⟩
    by_contra hlt
    rw [not_le] at hlt
    obtain ⟨t, hts, htc⟩ := Set.exists_subset_encard_eq (Order.add_one_le_of_lt hlt)
    have htc' : t.encard = ((e + 1 : ℕ) : ℕ∞) := by rw [htc]; push_cast; rfl
    have htf : t.Finite := Set.finite_of_encard_eq_coe htc'
    obtain ⟨U, hUo, hUd⟩ := htf.t2_separation
    have hw : ∀ x ∈ t, (fun x' : Fin n → ℂ => fun i => eval x' (q i)) '' (zeroSet P ∩ U x) ∈
        𝓝 (B.mulVec z) := by
      intro x hx
      have hx' := hts hx
      obtain ⟨W, hW, hiso⟩ := step1 z x hx'
      have h := hOpen n r P q x hP hd hx'.1 ⟨W, hW, hiso⟩ (U x) ((hUo x).2.mem_nhds (hUo x).1)
      have e1 : (fun i => eval x (q i)) = B.mulVec z := by
        rw [hqe]
        congr 1
        exact funext hx'.2.1
      rwa [e1] at h
    have hI := (Filter.biInter_mem htf).2 hw
    obtain ⟨w', hw'I, hΔw'⟩ := IsolatedPointsCountPrime.exists_eval_ne_zero hΔ hI
    have hpick : ∀ x ∈ t, ∃ y, y ∈ zeroSet P ∩ U x ∧ (fun i => eval y (q i)) = w' :=
      fun x hx => Set.mem_iInter₂.1 hw'I x hx
    choose! g hg1 hg2 using hpick
    have hinjg : Set.InjOn g t := by
      intro x hx y hy hxy
      by_contra hne
      refine Set.disjoint_left.1 (hUd hx hy hne) (hg1 x hx).2 ?_
      rw [hxy]
      exact (hg1 y hy).2
    have himg : g '' t ⊆ {x | x ∈ zeroSet P ∧ ∀ i, eval x (q i) = w' i} := by
      rintro _ ⟨x, hx, rfl⟩
      exact ⟨(hg1 x hx).1, fun i => congrFun (hg2 x hx) i⟩
    have hle := (Set.encard_le_encard himg).trans (hbound w' hΔw')
    rw [hinjg.encard_image, htc'] at hle
    have hle' : e + 1 ≤ e := by exact_mod_cast hle
    omega

end

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedPointsCountPrime =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PSameOrdersLiftCentre =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PSameOrdersLiftCentre", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StSameOrdersLiftCentre\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StBranchOffHypersurface\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights

open MvPolynomial ComplexSets Filter Topology GroundTheory.Heights₂.Heights.IndefiniteRowSideFullHecke.ComplexSets

theorem eventually_const_mem_ball_one {r : ℝ} (hr : 0 < r) :
    ∀ᶠ τ in 𝓝 (0 : ℂ), (fun _ : Fin 1 ↦ τ) ∈ Metric.ball (0 : Fin 1 → ℂ) r := by
  have hc : Continuous (fun τ : ℂ ↦ (fun _ : Fin 1 ↦ τ)) := continuous_pi fun _ ↦ continuous_id
  exact hc.continuousAt.preimage_mem_nhds (Metric.ball_mem_nhds (0 : Fin 1 → ℂ) hr)

theorem analyticAt_comp_const_one {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] [CompleteSpace E]
    {φ : (Fin 1 → ℂ) → E} {r : ℝ} (hr : 0 < r) (hφ : DifferentiableOn ℂ φ (Metric.ball 0 r)) :
    AnalyticAt ℂ (fun τ : ℂ ↦ φ (fun _ ↦ τ)) 0 := by
  have hc : Differentiable ℂ (fun τ : ℂ ↦ (fun _ : Fin 1 ↦ τ)) :=
    differentiable_pi.2 fun _ ↦ differentiable_id
  exact DifferentiableOn.analyticAt (s := (fun τ : ℂ ↦ (fun _ : Fin 1 ↦ τ)) ⁻¹' Metric.ball 0 r)
    (hφ.comp hc.differentiableOn fun _ h ↦ h) (eventually_const_mem_ball_one hr)

theorem analyticAt_eval_of_analyticAt_zero {n : ℕ} {F : ℂ → Fin n → ℂ} (hF : AnalyticAt ℂ F 0)
    (p : MvPolynomial (Fin n) ℂ) : AnalyticAt ℂ (fun τ ↦ eval (F τ) p) 0 := by
  induction p using MvPolynomial.induction_on with
  | C a => simpa using analyticAt_const
  | add p q hp hq => simp only [map_add (f := _)]; exact hp.add hq
  | mul_X p i hp => simp only [map_mul, eval_X]; exact hp.mul (analyticAt_pi_iff.mp hF i)

theorem branchOrder_ne_top_of_not_mem (hB : BranchOffHypersurface.Statement) {n : ℕ}
    {J : Ideal (MvPolynomial (Fin n) ℂ)} {q : Fin n → ℂ} (γ : VarBranch J 1 q) (hJ : J.IsPrime)
    (hdim : ringKrullDim (MvPolynomial (Fin n) ℂ ⧸ J) = (1 : ℕ)) {b : MvPolynomial (Fin n) ℂ} (hb : b ∉ J) :
    branchOrder γ b ≠ ⊤ := by
  intro htop
  obtain ⟨ε, hε, hεb⟩ := Metric.eventually_nhds_iff_ball.1 (analyticOrderAt_eq_top.1 htop)
  have hU : Metric.ball (0 : Fin 1 → ℂ) (min ε γ.radius) ⊆ Metric.ball 0 γ.radius :=
    Metric.ball_subset_ball (min_le_right _ _)
  obtain ⟨t, ht, hne⟩ := hB n 1 J b _ γ.toFun hJ hdim hb Metric.isOpen_ball
    ⟨0, Metric.mem_ball_self (lt_min hε γ.radius_pos)⟩ (γ.differentiableOn.mono hU) (γ.injOn.mono hU)
    fun t ht ↦ γ.mapsTo (hU ht)
  have ht0 : (fun _ : Fin 1 ↦ t 0) = t := funext fun i ↦ by rw [Subsingleton.elim i 0]
  apply hne
  rw [← ht0]
  apply hεb
  rw [Metric.mem_ball, dist_zero_right] at ht ⊢
  exact lt_of_le_of_lt (norm_le_pi_norm t 0) (lt_of_lt_of_le ht (min_le_left _ _))

theorem SameOrdersLiftCentre.proof (hB : BranchOffHypersurface.Statement) : SameOrdersLiftCentre.Statement := by
  intro n J q M γ γ' Γ Γ' hJ hdim hΓd hΓ hΓ'd hΓ' hord
  funext s
  rcases s with j | i
  · have e := congrFun (hΓ 0 (Metric.mem_ball_self γ.radius_pos)).2 j
    have e' := congrFun (hΓ' 0 (Metric.mem_ball_self γ'.radius_pos)).2 j
    simp only [firstCoords] at e e'
    rw [e, e', γ.map_zero, γ'.map_zero]
  obtain ⟨a, b, hb, hab⟩ := M.birational i

  have key : ∀ (c : VarBranch J 1 q) (L : (Fin 1 → ℂ) → Fin n ⊕ Fin M.m → ℂ),
      DifferentiableOn ℂ L (Metric.ball 0 c.radius) →
      (∀ τ ∈ Metric.ball 0 c.radius, L τ ∈ zeroSetIn M.ideal ∧ firstCoords (L τ) = c.toFun τ) → ∀ l : ℂ,
      branchOrder c (a - C l * b) =
        branchOrder c b + analyticOrderAt (fun τ : ℂ ↦ L (fun _ ↦ τ) (Sum.inr i) - l) 0 := by
    intro c L hLd hL l
    have hLa : AnalyticAt ℂ (fun τ : ℂ ↦ L (fun _ ↦ τ) (Sum.inr i) - l) 0 :=
      ((analyticAt_pi_iff.mp (analyticAt_comp_const_one c.radius_pos hLd)) (Sum.inr i)).sub analyticAt_const
    have hBa := analyticAt_eval_of_analyticAt_zero (analyticAt_comp_const_one c.radius_pos c.differentiableOn) b
    rw [branchOrder, branchOrder, ← analyticOrderAt_mul hBa hLa]
    apply analyticOrderAt_congr
    filter_upwards [eventually_const_mem_ball_one c.radius_pos] with τ hτ
    have h := (hL _ hτ).1 _ hab
    simp only [eval_sub, eval_mul, eval_X, eval_rename] at h
    change eval (firstCoords (L fun _ ↦ τ)) b * _ - eval (firstCoords (L fun _ ↦ τ)) a = 0 at h
    rw [(hL _ hτ).2] at h
    simp only [eval_sub, eval_mul, eval_C, Pi.mul_apply]
    linear_combination -h
  set l := Γ 0 (Sum.inr i)
  have k1 := key γ Γ hΓd hΓ l
  have k2 := key γ' Γ' hΓ'd hΓ' l
  rw [← hord, ← hord] at k2
  have heq := WithTop.add_left_cancel (branchOrder_ne_top_of_not_mem hB γ hJ hdim hb) (k1.symm.trans k2)
  have hGa : AnalyticAt ℂ (fun τ : ℂ ↦ Γ (fun _ ↦ τ) (Sum.inr i) - l) 0 :=
    ((analyticAt_pi_iff.mp (analyticAt_comp_const_one γ.radius_pos hΓd)) (Sum.inr i)).sub analyticAt_const
  have hG'a : AnalyticAt ℂ (fun τ : ℂ ↦ Γ' (fun _ ↦ τ) (Sum.inr i) - l) 0 :=
    ((analyticAt_pi_iff.mp (analyticAt_comp_const_one γ'.radius_pos hΓ'd)) (Sum.inr i)).sub analyticAt_const
  have hz : analyticOrderAt (fun τ : ℂ ↦ Γ (fun _ ↦ τ) (Sum.inr i) - l) 0 ≠ 0 :=
    hGa.analyticOrderAt_ne_zero.2 (sub_self _)
  rw [heq] at hz
  exact (sub_eq_zero.1 (hG'a.analyticOrderAt_ne_zero.1 hz)).symm

end GroundTheory.Heights₂.Heights
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PSameOrdersLiftCentre =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.IsolatedPointsCountPrime =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.IsolatedPointsCountPrime", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StIsolatedPointsCountPrime\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.StSameOrdersLiftCentre\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PImageDimLe\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedFibreOpenPolyFull\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PIsolatedPointsCountPrime\npublic import GroundTheory.HeightsAndTheta.Heights.ComplexAnalyticSets.PSameOrdersLiftCentre\npublic import GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.CentredDiscCoverCurveHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

theorem GroundTheory.Heights₂.Heights.AutoClose.IsolatedPointsCountPrime : GroundTheory.Heights₂.Heights.IsolatedPointsCountPrime.Statement :=
  @GroundTheory.Heights₂.Heights.IsolatedPointsCountPrime.proof GroundTheory.Heights₂.Heights.IsolatedFibreOpenPoly.full GroundTheory.Heights₂.Heights.AutoClose.DominantFibreBound GroundTheory.Heights₂.Heights.ImageDimLe.proof

theorem GroundTheory.Heights₂.Heights.AutoClose.SameOrdersLiftCentre : GroundTheory.Heights₂.Heights.SameOrdersLiftCentre.Statement :=
  @GroundTheory.Heights₂.Heights.SameOrdersLiftCentre.proof GroundTheory.Heights₂.Heights.AutoClose.branchOffHypersurface_holds
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.LocalFiniteness.IsolatedPointsCountPrime =====
