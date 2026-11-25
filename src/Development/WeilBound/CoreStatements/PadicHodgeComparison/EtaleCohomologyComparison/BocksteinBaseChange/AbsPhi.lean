module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.ThetaSetupAlgebraMaps
import Mathlib.Algebra.Module.StablyFree.Basic
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
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
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

set_option backward.isDefEq.respectTransparency false


noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)}

structure PerC (R : Per l K) : Type 1 where
  C : Type
  K₀ : Type
  [ringC : CommRing C]
  [fieldK : Field K₀]
  c : R.A →+* C
  ι : C →+* R.B
  k : K₀ →+* C

attribute [instance] PerC.ringC PerC.fieldK

variable {R : Per l K}

structure Iso (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) (K₀ : Type) [Field K₀] : Type 2 where
  D : Model l K → ℕ → Type 1
  [ab : ∀ M j, AddCommGroup (D M j)]
  [md : ∀ M j, Module K₀ (D M j)]

attribute [instance] Iso.ab Iso.md

variable (G : Model l K → Prop) (C : PerC R) (I : Iso l K C.K₀)

variable {G} in
structure BPhi {D : Dat R} (β : BMap G D) where
  pull : ∀ {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : D.Ch M} {b : D.Ch N}, D.Mo u hu a b →
    ∀ j, (D.H' b).N j →+ (D.H' a).N j
  nat : ∀ {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : D.Ch M} {b : D.Ch N} (m : D.Mo u hu a b),
    G M → G N → ∀ (j : ℕ) (x : (D.H' b).N j), β.β' a j (pull m j x) = D.pullA m j (β.β' b j x)
  inj : ∀ {M : Model l K} (a : D.Ch M), G M → ∀ j : ℕ, ∃ n : ℕ, ∀ x, β.β' a j x = 0 → R.t ^ n • x = 0

structure FMap (D : Dat R)
    (pull : ∀ {M N : Model l K} {u : M.X ⟶ N.X} {hu : u ≫ N.p = M.p} {a : D.Ch M} {b : D.Ch N}, D.Mo u hu a b →
      ∀ j, (D.H' b).N j →+ (D.H' a).N j) where
  k : ℕ
  ψ : ∀ {M : Model l K} (a : D.Ch M) (j : ℕ), (D.H' a).N j →+ (Module.Dual C.K₀ (I.D M j) →+ C.C)
  fin : ∀ (M : Model l K), G M → ∀ j : ℕ, FiniteDimensional C.K₀ (I.D M j)
  fac : ∀ {M : Model l K} (a : D.Ch M), G M → ∀ (j : ℕ) {m : ℕ} (b : Module.Basis (Fin m) C.K₀ (I.D M j)),
    ∃ w : Fin m → ((D.H' a).N j →+ R.B) → R.B,
      (∀ f, GMod.Fn R (D.H' a) j f → ∀ (s : Fin m) (σ : K.fixingSubgroup), R.σ σ (w s f) = w s f) ∧
      ∀ x f, GMod.Fn R (D.H' a) j f → f ((D.phi' a j)^[k] x) = ∑ s, C.ι (ψ a j x (b.coord s)) * w s f

def FactorisationSpanProperty : Prop := ∀ (l : ℕ) [Fact l.Prime] (K : IntermediateField ℚ_[l] (PadicAlgCl l)) (R : Per l K) (G : Model l K → Prop)
  (C : PerC R) (I : Iso l K C.K₀) (D : Dat R) (β : BMap G D) (β₁ : BPhi β), FMap G C I D β₁.pull → D.Span G C.ι.range

theorem fac : FactorisationSpanProperty := by
  intro l _ K R G C I D β β₁ F M hM a j
  have := F.fin M hM j
  obtain ⟨w, hw, h⟩ := F.fac a hM j (Module.finBasis _ _)
  exact ⟨F.k, _, w, hw, fun x => ⟨_, fun s => ⟨_, rfl⟩, h x⟩⟩

end CrystallineSemistableComparison
