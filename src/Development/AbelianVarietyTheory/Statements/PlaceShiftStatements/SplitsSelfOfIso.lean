module

public import Development.AbelianVarietyTheory.Definitions.Divisors.IdTower
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Morphisms.SchemeTheoreticallyDominant
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

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace GlobalTheory.GalV

def VFin : Prop := ∀ (l : ℕ) [Fact l.Prime] (k : Type) [Field k] [IsAlgClosed k], IsUnit (l : k) → ∀ {X : Scheme.{0}}
  (p : X ⟶ Spec (CommRingCat.of k)) [IsProper p] (n i : ℤ),
  Module.Finite ℤ_[l] (Hl l (sch.obj X) n i) ∧ FiniteDimensional ℚ_[l] (HQ l (sch.obj X) n i)

def VInv : Prop := ∀ (l : ℕ) [Fact l.Prime] {Y X : Scheme.{0}} (f : Y ⟶ X) [IsFinite f] [Etale f] [Surjective f] (G : Type) [Fintype G]
  (a : G → (Y ⟶ Y)) (ha : ∀ g, a g ≫ f = f),
  IsIso (Sigma.desc (fun g => pullback.lift (a g) (𝟙 Y) (by rw [ha g, Category.id_comp])) : ∐ (fun _ : G => Y) ⟶ pullback f f) → ∀ n i : ℤ, Function.Injective (pullHQ l (sch.map f) n i) ∧
  LinearMap.range (pullHQ l (sch.map f) n i) = ⨅ g, LinearMap.ker (pullHQ l (sch.map (a g)) n i - LinearMap.id)

end GlobalTheory.GalV

namespace GlobalTheory.GalV.GaloisTowerConditions

variable {k : Type} [Field k] (Ω : Type) [Field Ω] [Algebra k Ω]

theorem geomMap_isIso {X Y : Scheme.{0}} {p : X ⟶ Spec (CommRingCat.of k)} {q : Y ⟶ Spec (CommRingCat.of k)}
    (u : X ⟶ Y) [IsIso u] (hu : u ≫ q = p) : IsIso (GlobalTheory.Et.geomMap Ω p u hu) := by
  refine ⟨⟨GlobalTheory.Et.geomMap Ω q (inv u) (by simp [← hu]), ?_, ?_⟩⟩
  · apply pullback.hom_ext
    · simp only [GlobalTheory.Et.geomMap, Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, IsIso.hom_inv_id, Category.comp_id, Category.id_comp]
    · simp only [GlobalTheory.Et.geomMap, Category.assoc, pullback.lift_snd, Category.id_comp]
  · apply pullback.hom_ext
    · simp only [GlobalTheory.Et.geomMap, Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc, IsIso.inv_hom_id, Category.comp_id, Category.id_comp]
    · simp only [GlobalTheory.Et.geomMap, Category.assoc, pullback.lift_snd, Category.id_comp]

instance isIso_idTower_sΩ (g : (HTower.idTower k).Γ) : IsIso ((HTower.idTower k).sΩ Ω g) :=
  geomMap_isIso Ω (k := k) (𝟙 _) rfl

end GlobalTheory.GalV.GaloisTowerConditions

end
