module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PointHeight
public import Development.AbelianVarietyTheory.Definitions.Divisors.SmoothOfRelativeDimensionPspace
public import Development.AbelianVarietyTheory.Definitions.Divisors.IrreducibleOfIrreducibleMap
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Real
import Mathlib.Algebra.Ring.IsFormallyReal
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
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Basify
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

@[expose] public section

noncomputable section

namespace GlobalTheory.Adelic

open CategoryTheory AlgebraicGeometry TopologicalSpace MvPolynomial NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open ReciprocityTheory.ChartRestriction.G.Out (nonzeroLocus)
open GlobalTheory.ChowHt

section Sizes

variable {F K : Type} [Field F] [Field K] {N n : ℕ}

def archSize (A : Matrix (Fin N) (Fin N) ℂ) (y : Fin N → ℂ) : ℝ := Real.sqrt (∑ i, ‖∑ j, A j i * y j‖ ^ 2)

theorem archSize_pos {A : Matrix (Fin N) (Fin N) ℂ} (hA : A.det ≠ 0) {y : Fin N → ℂ} (hy : y ≠ 0) :
    0 < archSize A y := by
  refine Real.sqrt_pos.2 ((Finset.sum_nonneg fun _ _ => sq_nonneg _).lt_of_ne' fun h => hy ?_)
  refine Matrix.eq_zero_of_vecMul_eq_zero hA (funext fun i => ?_)
  have := (Finset.sum_eq_zero_iff_of_nonneg fun _ _ => sq_nonneg _).1 h i (Finset.mem_univ i)
  simpa [Matrix.vecMul, dotProduct, mul_comm] using this

theorem norm_pairing_le {A : Matrix (Fin N) (Fin N) ℂ} (hA : A.det ≠ 0) (u y : Fin N → ℂ) :
    ‖∑ j, u j * y j‖ ≤ frameNorm A u * archSize A y := by
  have e : ∑ j, u j * y j = ∑ i, A⁻¹.mulVec u i * ∑ j, A j i * y j := by
    conv_lhs => rw [← Matrix.one_mulVec u, ← A.mul_nonsing_inv hA.isUnit, ← Matrix.mulVec_mulVec]
    generalize A⁻¹.mulVec u = c
    simp only [Matrix.mulVec, dotProduct, Finset.sum_mul, Finset.mul_sum]
    rw [Finset.sum_comm]
    exact Finset.sum_congr rfl fun i _ => Finset.sum_congr rfl fun j _ => by ring
  rw [e]
  refine (norm_sum_le _ _).trans ?_
  simp only [norm_mul]
  exact Real.sum_mul_le_sqrt_mul_sqrt _ _ _

variable {Ω : Type} [Field Ω] [Algebra F Ω]

abbrev coordField (F : Type) [Field F] [Algebra F Ω] (y : Fin N → Ω) : IntermediateField F Ω :=
  IntermediateField.adjoin F (Set.range y)

instance numberField_coordField [NumberField F] [Algebra.IsAlgebraic F Ω] (y : Fin N → Ω) :
    NumberField (coordField F y) :=
  have : FiniteDimensional F (coordField F y) :=
    IntermediateField.finiteDimensional_adjoin fun x _ => (Algebra.IsAlgebraic.isAlgebraic x).isIntegral
  NumberField.of_module_finite F _

def vecHeight [NumberField F] [Algebra.IsAlgebraic F Ω] (w : Matrix (Fin N) (Fin n) F)
    (A : (F →+* ℂ) → Matrix (Fin N) (Fin N) ℂ) (y : Fin N → Ω) : ℝ :=
  pointHeight w A (K := coordField F y) fun j => ⟨y j, IntermediateField.subset_adjoin _ _ ⟨j, rfl⟩⟩

end Sizes

structure HermSys (F : Type) [Field F] [NumberField F] extends LinSys F where

  n : ℕ

  w : Matrix (Fin N) (Fin n) F

  A : (F →+* ℂ) → Matrix (Fin N) (Fin N) ℂ

  abelian₂ : ℝ

namespace HermSys

variable {F : Type} [Field F] [NumberField F] (T : HermSys F)

def lattice : Submodule (𝓞 F) (Fin T.N → F) := Submodule.span (𝓞 F) (Set.range T.w.col)

def normAt {E : Type} [Field E] [Algebra F E] (τ : E →+* ℂ) (u : Fin T.N → E) : ℝ :=
  frameNorm (T.A (τ.comp (algebraMap F E))) fun j => τ (u j)

def Spans : Prop := Submodule.span F (Set.range T.w.col) = ⊤

structure IsAlgebraicData : Prop where

  variety : T.IsVariety

  indep : T.Indep

  spans : T.Spans

  bpf : T.BasePointFree

def Hermitian : Prop := ∀ σ, (T.A σ).det ≠ 0

def ConjInvariant : Prop := ConjCompat T.A

def NormsLe : Prop := ∀ (k : Fin T.n) (σ : F →+* ℂ), T.normAt σ (T.w.col k) ≤ T.abelian₂

def IntGenerates : Prop := ∀ u ∈ T.lattice, u ∈ Submodule.span ℤ (Set.range T.w.col)

structure ShortGenerators : Prop where

  int : T.IntGenerates

  le : T.NormsLe

  one_le : 1 ≤ T.abelian₂

def IsHeight (h : ℝ) : Prop :=
  ∃ (d : ℕ) (f : MvPolynomial (Fin (T.D + 1) × Fin T.N) F), 0 < d ∧ IsChowForm T.imageIdeal T.D d f ∧
    ((T.D : ℝ) + 1) * d * h = formHeight d T.w T.A f

theorem isHeight_iff {h : ℝ} : T.IsHeight h ↔ ∃ (d : ℕ) (f : MvPolynomial (Fin (T.D + 1) × Fin T.N) F),
    IsChowForm T.imageIdeal T.D d f ∧ ((T.D : ℝ) + 1) * d * h = formHeight d T.w T.A f :=
  ⟨fun ⟨d, f, _, hf⟩ => ⟨d, f, hf⟩, fun ⟨d, f, hf, e⟩ => ⟨d, f, hf.isChowFormInt.pos, hf, e⟩⟩

theorem isHeight_of_isChowForm {d : ℕ} {f : MvPolynomial (Fin (T.D + 1) × Fin T.N) F}
    (hf : IsChowForm T.imageIdeal T.D d f) : T.IsHeight (formHeight d T.w T.A f / (((T.D : ℝ) + 1) * d)) :=
  T.isHeight_iff.2 ⟨d, f, hf, mul_div_cancel₀ _
    (mul_ne_zero (by positivity) (Nat.cast_ne_zero.2 hf.isChowFormInt.pos.ne'))⟩

def baseChange (E : Type) [Field E] [NumberField E] [Algebra F E] : HermSys E where
  toLinSys := T.toLinSys.baseChange E
  n := T.n
  w := T.w.map (algebraMap F E)
  A τ := T.A (τ.comp (algebraMap F E))
  abelian₂ := T.abelian₂

section Norms

variable {K : Type} [Field K] {φ : F →+* K} {σ : F →+* ℂ}

variable {T}

end Norms

def ptHeight {Ω : Type} [Field Ω] [Algebra F Ω] [Algebra.IsAlgebraic F Ω] (x : T.Pt Ω) : ℝ :=
  vecHeight T.w T.A (T.coords x.1)

abbrev geomPts (E : Type) [Field E] [Algebra F E] (I : (T.toLinSys.baseChange E).Y.IdealSheafData) :
    Set ((T.toLinSys.baseChange E).Pt (AlgebraicClosure E)) :=
  (T.toLinSys.baseChange E).subPts I (AlgebraicClosure E)

def cycleHeight (E : Type) [Field E] [Algebra F E] [FiniteDimensional F E]
    (I : (T.toLinSys.baseChange E).Y.IdealSheafData) : ℝ :=
  haveI : Algebra.IsAlgebraic F (AlgebraicClosure E) := Algebra.IsAlgebraic.trans F E _
  ∑ᶠ x ∈ T.geomPts E I, T.ptHeight (LinSys.toBase x)

abbrev linSection (E : Type) [Field E] [Algebra F E] (s : Fin T.D → Fin T.N → E) :
    (T.toLinSys.baseChange E).Y.IdealSheafData :=
  (T.toLinSys.baseChange E).cut s

end HermSys

structure Tuple (F : Type) [Field F] [NumberField F] extends HermSys F where

  bd : Closeds Y

  j₀ : ℕ

  th : (lbPow L j₀).Sec

namespace Tuple

variable {F : Type} [Field F] [NumberField F] (T : Tuple F)

def U : T.Y.Opens := T.bd.compl

structure IsGeometric : Prop where

  alg : T.IsAlgebraicData

  bd_ne : T.bd ≠ ⊤

structure IsBirationalOffBoundary : Prop where

  birational : T.Birational

  noContract : T.NoContract T.bd

  one_le : 1 ≤ T.j₀

  th_ne : T.th ≠ 0

  th_vanish : ∀ y ∈ T.bd, y ∉ nonzeroLocus T.th

def theta (h : ℝ) : ℝ := T.n * T.D * T.j₀ * T.del * (2 + |h| + Real.log T.abelian₂)

def InOpen (E : Type) [Field E] [Algebra F E] (I : (T.toLinSys.baseChange E).Y.IdealSheafData) : Prop :=
  ∀ y ∈ I.support, T.toLinSys.bcFst E y ∈ T.U

structure IsGoodSection (E : Type) [Field E] [Algebra F E] (s : Fin T.D → Fin T.N → E) : Prop where

  finiteEtale : (T.toLinSys.baseChange E).IsFiniteEtaleSub (T.linSection E s)

  inOpen : T.InOpen E (T.linSection E s)

theorem IsGoodSection.finite_geomPts {T : Tuple F} {E : Type} [Field E] [Algebra F E] {s : Fin T.D → Fin T.N → E}
    (h : T.IsGoodSection E s) : (T.geomPts E (T.linSection E s)).Finite :=
  h.finiteEtale.finite.finite_subPts _

end Tuple

abbrev projTuple (M : ℕ) : Tuple ℚ where
  toLinSys := projSys ℚ M
  n := M + 1
  w := 1
  A _ := 1
  abelian₂ := 1
  bd := (ProjSpace.chart ℚ M (Fin.last M)).compl
  j₀ := 1
  th := secToPow (ProjSpace.coord ℚ M (Fin.last M)) 1

namespace projTuple

variable (M : ℕ)

theorem spans : (projTuple M).Spans := top_le_iff.1 fun u _ => by
  rw [pi_eq_sum_univ' u]
  refine Submodule.sum_mem _ fun k _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨k, ?_⟩)
  funext j
  simp [Matrix.one_apply, Pi.single_apply]

end projTuple

end GlobalTheory.Adelic
