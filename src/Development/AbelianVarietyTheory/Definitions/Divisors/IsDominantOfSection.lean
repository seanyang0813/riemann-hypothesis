module

public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsValuationSubringDominatingSubring
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ValRSpMapFromSpecStalk
import Development.AbelianVarietyTheory.Proofs.CovolumeBounds.IsProjOverCompOfIsClosedImmersion
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.InterPolyProdSum

@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry TopologicalSpace
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.Cartier GlobalTheory.ProjVar GlobalTheory.FlagBundle GlobalTheory.GoodMetric GlobalTheory.QCoh

namespace GlobalTheory.FlagPush

def IsPull {Z W : Scheme.{0}} [IsIntegral Z] [IsIntegral W] (q : Z ⟶ W) [IsDominant q] (D : CartierDiv Z)
    (E : CartierDiv W) : Prop :=
  ∀ y b, E.IsEqn y b → ∀ x, q x = y → D.IsEqn x (Units.map (functionFieldMap q).toMonoidHom b)

variable {F : Type} [Field F]

structure Dbl (Y : Var F) where

  Z : Scheme.{0}
  [integral : IsIntegral Z]

  p₁ : Z ⟶ Y.X

  p₂ : Z ⟶ Y.X

  δ : Y.X ⟶ Z
  str_eq : p₁ ≫ Y.str = p₂ ≫ Y.str
  proj : IsProjOver (p₁ ≫ Y.str)
  closed : IsClosedImmersion δ
  δ₁ : δ ≫ p₁ = 𝟙 _
  δ₂ : δ ≫ p₂ = 𝟙 _
  diag : ∀ (K : Type) [Field K] (w : Sp K ⟶ Z), w ≫ p₁ = w ≫ p₂ → w (IsLocalRing.closedPoint K) ∈ Set.range δ

attribute [instance] Dbl.integral Dbl.closed

theorem isDominant_of_section {Z W : Scheme.{0}} {p : Z ⟶ W} {s : W ⟶ Z} (h : s ≫ p = 𝟙 _) : IsDominant p :=
  ⟨Function.Surjective.denseRange fun y => ⟨s y, by rw [← Scheme.Hom.comp_apply, h]; rfl⟩⟩

namespace Dbl

variable {Y : Var F} (W : Dbl Y)

instance : IsDominant W.p₁ := isDominant_of_section W.δ₁

instance : IsDominant W.p₂ := isDominant_of_section W.δ₂

def α₁ : Y.Fn →+* W.Z.functionField := functionFieldMap W.p₁

def α₂ : Y.Fn →+* W.Z.functionField := functionFieldMap W.p₂

def num {n : ℕ} (y : Fin n → CartierDiv W.Z) : ℤ :=
  letI := algebraΓOfHom (W.p₁ ≫ Y.str)
  interNum F (structureModule W.Z) fun i => toLB (y i)

def Small : Prop := topologicalKrullDim W.Z ≤ (Y.dim + 1 : ℕ)

def triv (Y : Var F) : Dbl Y where
  Z := Y.X
  p₁ := 𝟙 _
  p₂ := 𝟙 _
  δ := 𝟙 _
  str_eq := rfl
  proj := by rw [Category.id_comp]; exact Y.isProjOver
  closed := inferInstance
  δ₁ := Category.id_comp _
  δ₂ := Category.id_comp _
  diag _ _ _ _ := ⟨_, rfl⟩

end Dbl

section Square

open CategoryTheory.Limits

def Dbl.prod (Y : Var F) : Dbl Y where
  Z := pullback Y.str Y.str
  integral := by
    have : IsLocallyNoetherian Y.X := LocallyOfFiniteType.isLocallyNoetherian Y.str
    exact GeometricallyIntegral.isIntegral_of_isLocallyNoetherian (pullback.fst Y.str Y.str)
  p₁ := pullback.fst _ _
  p₂ := pullback.snd _ _
  δ := pullback.diagonal Y.str
  str_eq := pullback.condition
  proj := ProjSpace.isProjOver_pullback Y.isProjOver Y.isProjOver
  closed := inferInstance
  δ₁ := pullback.diagonal_fst _
  δ₂ := pullback.diagonal_snd _
  diag K _ w h := ⟨(w ≫ pullback.fst _ _) (IsLocalRing.closedPoint K), by
    have e : (w ≫ pullback.fst _ _) ≫ pullback.diagonal Y.str = w := by
      apply pullback.hom_ext <;> simp [h]
    exact (Scheme.Hom.comp_apply _ _ _).symm.trans
      (congrArg (fun u : Sp K ⟶ _ => u (IsLocalRing.closedPoint K)) e)⟩

end Square

def GenPair (Y : Var F) {K : Type} [Field K] (ψ₁ ψ₂ : Y.Fn →+* K) : Prop :=
  ψ₁.comp (algebraMap F Y.Fn) = ψ₂.comp (algebraMap F Y.Fn) ∧
    ∃ (V : ValuationSubring K) (v₁ v₂ : Sp V ⟶ Y.X), spMap (algebraMap V K) ≫ v₁ = spMap ψ₁ ≫ (ratOf Y).pt ∧
      spMap (algebraMap V K) ≫ v₂ = spMap ψ₂ ≫ (ratOf Y).pt ∧
      spMap (IsLocalRing.residue V) ≫ v₁ = spMap (IsLocalRing.residue V) ≫ v₂ ∧
      v₁ (IsLocalRing.closedPoint V) = genericPoint Y.X

variable {ι : Type} {m : ι → ℕ}

def AlmostLow (τ : ι) (a b : Fin (m τ)) {K : Type} [Field K] (C : Mat m K) : Prop :=
  (∀ σ, (C σ).det ≠ 0) ∧ C τ a b ≠ 0 ∧
    ∀ σ (i j : Fin (m σ)), i < j → ¬ ((⟨σ, i⟩ : Root m) = ⟨τ, a⟩ ∧ (⟨σ, j⟩ : Root m) = ⟨τ, b⟩) → C σ i j = 0


open Classical in
def shear (τ : ι) (a b : Fin (m τ)) {K : Type} [CommRing K] (t : K) : Mat m K := fun σ =>
  1 + Matrix.of fun i j => if (⟨σ, i⟩ : Root m) = ⟨τ, a⟩ ∧ (⟨σ, j⟩ : Root m) = ⟨τ, b⟩ then t else 0

def minor (τ : ι) (a b : Fin (m τ)) {K : Type} [CommRing K] (C : Mat m K) : K :=
  C τ a a * C τ b b - C τ a b * C τ b a

end GlobalTheory.FlagPush
