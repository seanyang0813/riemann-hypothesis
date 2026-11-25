module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.GoodSetupCountEqZeroOffBadPlaces
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
import Development.AbelianVarietyTheory.Definitions.Divisors.LevelOfOfSameBut
import Development.AbelianVarietyTheory.Definitions.Divisors.TupleReadBaseTupleEqFamily

@[expose] public section

noncomputable section
open NumberField IsDedekindDomain
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Indef.Tree Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Cx
open Formalism.IndefR.FWT GlobalTheory.BigTop GlobalTheory.OntoChain GlobalTheory.RealIndexBound GlobalTheory.OnTies GlobalTheory.SeriesTie
open GlobalTheory.BigOn GlobalTheory.BigOn.Exp Formalism.L2.Theta GlobalTheory.ExportSeries
open scoped TensorProduct


namespace GlobalTheory.BigOn.Exp

abbrev smallInt (D : D7) : Subring ℂ := ((Formalism.L2.Host.embLL0 D).comp (algebraMap (𝓞 ↥D.LL0) ↥D.LL0)).range

theorem span_mono_subring {M : Type} [AddCommGroup M] [Module ℂ M] {O O' : Subring ℂ} (hO : O ≤ O') (S : Set M) {x : M}
    (hx : x ∈ Submodule.span O S) : x ∈ Submodule.span O' S := by
  induction hx using Submodule.span_induction with
  | mem y hy => exact Submodule.subset_span hy
  | zero => exact zero_mem _
  | add _ _ _ _ h1 h2 => exact add_mem h1 h2
  | smul a y _ h => exact Submodule.smul_mem _ (⟨a, hO a.2⟩ : O') h

theorem lat_mono {D : D7} {N : NData D.R D.host D.what₂} {X : NTw D.R D.host D.what₂ D.LL0 N} (ρ : Setup X) (i : X.Tw) (j : Fin D.R.m)
    (b : Bool) {O O' : Subring ℂ} (hO : O ≤ O') (h : GA D (Vc D j)) {P : PolF D (Wc D j).rank (Vc D j).rank}
    (hP : P ∈ ρ.lat i j b O h) : P ∈ ρ.lat i j b O' h :=
  ⟨hP.1, span_mono_subring hO _ hP.2⟩

theorem smallInt_le {D : D7} {N : NData D.R D.host D.what₂} {X : NTw D.R D.host D.what₂ D.LL0 N} {ρ : Setup X} (hρ : ρ.Good) (i : X.Tw)
    (b : Bool) : smallInt D ≤ (ρ.eO i b).range := by
  rintro _ ⟨a, rfl⟩
  exact (hρ.isCoefRing i b).int a

theorem exists_inv_of_root {O : Type} [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (u : FractionRing O) (n : ℕ) (hn : n ≠ 0)
    (hu : u ^ n = 1) : ∃ o : O, algebraMap O (FractionRing O) o = u⁻¹ := by
  have h1 : IsIntegral O (u⁻¹ ^ n) := by rw [inv_pow, hu, inv_one]; exact isIntegral_one
  exact IsIntegrallyClosed.isIntegral_iff.1 (IsIntegral.of_pow (Nat.pos_of_ne_zero hn) h1)

end GlobalTheory.BigOn.Exp
