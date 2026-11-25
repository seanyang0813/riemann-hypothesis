module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeSite
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeLiftRatioMemIdeal
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem
public import Mathlib.RingTheory.Adjoin.FG
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Mathlib.Algebra.Polynomial.Lifts
public import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
public import Mathlib.RingTheory.Polynomial.ScaleRoots
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs
public import Mathlib.RingTheory.AlgebraicIndependent.Defs
public import Mathlib.Algebra.MvPolynomial.Degrees
public import Mathlib.LinearAlgebra.Matrix.Block
public import Mathlib.LinearAlgebra.Basis.Basic
public import Mathlib.LinearAlgebra.Basis.VectorSpace
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowKNeZeroOf
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.EffectiveEpi.Comp
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Basify
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Init
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Order.CompletePartialOrder
import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
import Mathlib.Tactic.ENatToNat
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.RingTheory.SimpleRing.Principal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactA, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactC, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactB, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExact, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidChartPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ChartExt, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.InfinityCoordAlgebraicIndependent, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidResPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResR, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidStmt, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactA =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactA", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.EffectiveEpi.Comp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb.LX

attribute [local instance] MvPolynomial.gradedAlgebra

variable {K : Type} [Field K] {N : ℕ}

theorem range_sub_awayι {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) :
    Set.range z ⊆ Set.range (Proj.awayι (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f hf hd) := by
  rintro _ ⟨x, rfl⟩
  have hx : z x ∈ Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f := h (Set.mem_univ x)
  rw [← Proj.opensRange_awayι _ f hf hd] at hx
  exact hx

def liftA {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) :
    HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f →+* A :=
  (Spec.preimage (IsOpenImmersion.lift (Proj.awayι _ f hf hd) z (range_sub_awayι z hf hd h))).hom

theorem liftA_spec {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) :
    Spec.map (CommRingCat.ofHom (liftA z hf hd h)) ≫ Proj.awayι _ f hf hd = z := by
  unfold liftA
  rw [CommRingCat.ofHom_hom, Spec.map_preimage, IsOpenImmersion.lift_fac]

theorem liftA_unique {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f)
    (φ : HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f →+* A)
    (hφ : Spec.map (CommRingCat.ofHom φ) ≫ Proj.awayι _ f hf hd = z) : φ = liftA z hf hd h := by
  have h1 : Spec.map (CommRingCat.ofHom φ) = Spec.map (CommRingCat.ofHom (liftA z hf hd h)) := by
    rw [← cancel_mono (Proj.awayι (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f hf hd), hφ, liftA_spec]
  exact congrArg CommRingCat.Hom.hom (Spec.map_injective h1)

theorem liftA_comp {A A' : Type} [CommRing A] [CommRing A'] (ρ : A →+* A') (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) (h' : ⊤ ≤ (Spec.map (CommRingCat.ofHom ρ) ≫ z) ⁻¹ᵁ Proj.basicOpen _ f) :
    liftA (Spec.map (CommRingCat.ofHom ρ) ≫ z) hf hd h' = ρ.comp (liftA z hf hd h) := by
  symm
  apply liftA_unique
  rw [CommRingCat.ofHom_comp, Spec.map_comp, Category.assoc, liftA_spec]

theorem liftA_awayMap {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f g x : MvPolynomial (Fin (N + 1)) K} {d d' : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (hg : g ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d') (hx : x = f * g)
    (hxd : x ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (d + d')) (hdd : 0 < d + d')
    (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) (h' : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ x) :
    (liftA z hxd hdd h').comp (HomogeneousLocalization.awayMap _ hg hx) = liftA z hf hd h := by
  apply liftA_unique
  rw [CommRingCat.ofHom_comp, Spec.map_comp, Category.assoc, Proj.SpecMap_awayMap_awayι]
  exact liftA_spec z hxd hdd h'

theorem awayToSection_appLE {A : CommRingCat.{0}}
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d)
    (φ : CommRingCat.of (HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f) ⟶ A)
    (h : ⊤ ≤ (Spec.map φ ≫ Proj.awayι _ f hf hd) ⁻¹ᵁ Proj.basicOpen _ f) :
    Proj.awayToSection _ f ≫ (Spec.map φ ≫ Proj.awayι _ f hf hd).appLE (Proj.basicOpen _ f) ⊤ h ≫
      (Scheme.ΓSpecIso A).hom = φ := by
  obtain ⟨w, hw⟩ : ∃ w, w = Spec.map φ ≫
    (Proj.basicOpenIsoSpec (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f hf hd).inv := ⟨_, rfl⟩
  have e1 : Spec.map φ ≫ Proj.awayι _ f hf hd = w ≫ (Proj.basicOpen _ f).ι := by
    rw [hw, Category.assoc, Proj.basicOpenIsoSpec_inv_ι]
  have e2 : w ≫ Proj.basicOpenToSpec _ f = Spec.map φ := by
    rw [hw, ← Proj.basicOpenIsoSpec_hom _ f hf hd, Category.assoc, Iso.inv_hom_id, Category.comp_id]
  have e3 : ∀ (z : Spec A ⟶ PSpace K N) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) (hz : z = w ≫ (Proj.basicOpen _ f).ι),
      z.appLE (Proj.basicOpen _ f) ⊤ h = (Proj.basicOpen _ f).topIso.inv ≫ w.appTop := by
    intro z h hz
    subst hz
    rw [← Scheme.Hom.appLE_comp_appLE w _ _ ⊤ ⊤ (by simp) le_top, Scheme.Opens.ι_appLE, Scheme.Opens.topIso_inv]
    congr 1
  rw [e3 _ h e1]
  have e4 := Scheme.ΓSpecIso_naturality φ
  rw [← e2, Scheme.Hom.comp_appTop] at e4
  have e5 := Proj.basicOpenToSpec_app_top (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f
  change (Proj.basicOpenToSpec _ f).appTop = _ at e5
  rw [e5] at e4
  simp only [Category.assoc] at e4
  simpa only [Category.assoc] using (cancel_epi _).1 e4

theorem liftA_eval {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f : MvPolynomial (Fin (N + 1)) K} {d : ℕ} (hf : f ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d)
    (hd : 0 < d) (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f)
    (a : HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f) :
    GlobalTheory.Cris.evalAt z (Proj.basicOpen _ f) h ((Proj.awayToSection _ f).hom a) = liftA z hf hd h a := by
  have key : ∀ (z' : Spec (CommRingCat.of A) ⟶ PSpace K N) (h' : ⊤ ≤ z' ⁻¹ᵁ Proj.basicOpen _ f)
      (hz : Spec.map (CommRingCat.ofHom (liftA z hf hd h)) ≫ Proj.awayι _ f hf hd = z'),
      Proj.awayToSection _ f ≫ z'.appLE (Proj.basicOpen _ f) ⊤ h' ≫
        (Scheme.ΓSpecIso (CommRingCat.of A)).hom = CommRingCat.ofHom (liftA z hf hd h) := by
    intro z' h' hz
    subst hz
    exact awayToSection_appLE hf hd _ h'
  exact congrArg (fun ψ => CommRingCat.Hom.hom ψ a) (key z h (liftA_spec z hf hd h))

theorem le_basicOpen_mul {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f g : MvPolynomial (Fin (N + 1)) K}
    (hf : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) (hg : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ g) :
    ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (f * g) := by
  rw [Proj.basicOpen_mul]
  intro p hp
  exact ⟨hf hp, hg hp⟩

theorem liftA_eval_mul {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N)
    {f g x : MvPolynomial (Fin (N + 1)) K} {d' n : ℕ}
    (hg : g ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K d') (hx : x = f * g)
    (hxd : x ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K n) (hn : 0 < n)
    (h : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ f) (h' : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ x)
    (a : HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) f) :
    GlobalTheory.Cris.evalAt z (Proj.basicOpen _ f) h ((Proj.awayToSection _ f).hom a) =
      liftA z hxd hn h' (HomogeneousLocalization.awayMap _ hg hx a) := by
  rw [← liftA_eval]
  have e : Proj.awayToSection _ f ≫ z.appLE (Proj.basicOpen _ f) ⊤ h =
      CommRingCat.ofHom (HomogeneousLocalization.awayMap _ hg hx) ≫ Proj.awayToSection _ x ≫
        z.appLE (Proj.basicOpen _ x) ⊤ h' := by
    rw [← Category.assoc, Proj.awayMap_awayToSection, Category.assoc, Scheme.Hom.map_appLE]
  exact congrArg (fun ψ => (Scheme.ΓSpecIso (CommRingCat.of A)).hom.hom (CommRingCat.Hom.hom ψ a)) e

def yx {m e : ℕ} (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (j : Fin (N + 1))
    (k : Fin m) : ChartR K N j :=
  HomogeneousLocalization.Away.mk _ (X_mem K N j) e (y k)
    (by simpa using (MvPolynomial.mem_homogeneousSubmodule e (y k)).2 (hy k))

theorem liftA_yx_isUnit {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N) {m e : ℕ}
    (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (j : Fin (N + 1)) (k : Fin m)
    (hj : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (MvPolynomial.X j)) (hk : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (y k)) :
    IsUnit (liftA z (X_mem K N j) one_pos hj (yx y hy j k)) := by
  have hyk := (MvPolynomial.mem_homogeneousSubmodule e (y k)).2 (hy k)
  have hxd : MvPolynomial.X j * y k ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (1 + e) :=
    SetLike.mul_mem_graded (X_mem K N j) hyk
  have hx := le_basicOpen_mul z hj hk
  rw [← liftA_awayMap z (X_mem K N j) one_pos hyk rfl hxd (by omega) hj hx, RingHom.comp_apply]
  apply IsUnit.map
  have hX : (MvPolynomial.X j : MvPolynomial (Fin (N + 1)) K) ^ (1 + e) ∈
      MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (1 • (1 + e)) := by
    simpa using SetLike.pow_mem_graded (1 + e) (X_mem K N j)
  refine IsUnit.of_mul_eq_one (HomogeneousLocalization.Away.mk _ hxd 1 _ hX) ?_
  apply HomogeneousLocalization.val_injective
  unfold yx
  rw [HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.val_mul, HomogeneousLocalization.val_one,
    HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk, Localization.mk_mul,
    ← Localization.mk_one, Localization.mk_eq_mk_iff]
  apply Localization.r_of_eq
  simp only [Submonoid.coe_mul, Submonoid.coe_one]
  ring

theorem liftA_yx_change {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N) {m e : ℕ}
    (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (j j' : Fin (N + 1)) (k : Fin m)
    (hj : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (MvPolynomial.X j)) (hj' : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (MvPolynomial.X j')) :
    liftA z (X_mem K N j) one_pos hj (yx y hy j k) =
      liftA z (X_mem K N j') one_pos hj' (yx y hy j' k) * liftA z (X_mem K N j) one_pos hj (ratio K N j j') ^ e := by
  have hxd : (MvPolynomial.X j * MvPolynomial.X j' : MvPolynomial (Fin (N + 1)) K) ∈
      MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (1 + 1) :=
    SetLike.mul_mem_graded (X_mem K N j) (X_mem K N j')
  have hx := le_basicOpen_mul z hj hj'
  rw [← liftA_awayMap z (X_mem K N j) one_pos (X_mem K N j') rfl hxd (by omega) hj hx,
    ← liftA_awayMap z (X_mem K N j') one_pos (X_mem K N j) (mul_comm _ _) hxd (by omega) hj' hx]
  simp only [RingHom.comp_apply]
  rw [← map_pow, ← map_mul]
  congr 1
  apply HomogeneousLocalization.val_injective
  unfold yx ratio
  rw [HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk,
    HomogeneousLocalization.val_mul, HomogeneousLocalization.val_pow,
    HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk,
    Localization.mk_pow, Localization.mk_mul, Localization.mk_eq_mk_iff]
  apply Localization.r_of_eq
  simp only [Submonoid.coe_mul, SubmonoidClass.coe_pow]
  ring

theorem liftA_yx_quot {A : Type} [CommRing A] (z : Spec (CommRingCat.of A) ⟶ PSpace K N) {m e : ℕ}
    (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (j : Fin (N + 1)) (k k' : Fin m)
    (hj : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (MvPolynomial.X j)) (hk' : ⊤ ≤ z ⁻¹ᵁ Proj.basicOpen _ (y k')) :
    liftA z (X_mem K N j) one_pos hj (yx y hy j k) =
      liftA z (X_mem K N j) one_pos hj (yx y hy j k') *
        GlobalTheory.Cris.evalAt z (Proj.basicOpen _ (y k')) hk'
          ((Proj.awayToSection _ (y k')).hom
            (HomogeneousLocalization.Away.mk _ ((MvPolynomial.mem_homogeneousSubmodule e (y k')).2 (hy k')) 1 (y k)
              (by simpa using (MvPolynomial.mem_homogeneousSubmodule e (y k)).2 (hy k)))) := by
  have hyk := (MvPolynomial.mem_homogeneousSubmodule e (y k')).2 (hy k')
  have hxd : MvPolynomial.X j * y k' ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (1 + e) :=
    SetLike.mul_mem_graded (X_mem K N j) hyk
  have hx := le_basicOpen_mul z hj hk'
  rw [liftA_eval_mul z (X_mem K N j) (mul_comm _ _) hxd (by omega) hk' hx,
    ← liftA_awayMap z (X_mem K N j) one_pos hyk rfl hxd (by omega) hj hx]
  simp only [RingHom.comp_apply]
  rw [← map_mul]
  congr 1
  apply HomogeneousLocalization.val_injective
  unfold yx
  rw [HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk,
    HomogeneousLocalization.val_mul,
    HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk,
    Localization.mk_mul, Localization.mk_eq_mk_iff]
  apply Localization.r_of_eq
  simp only [Submonoid.coe_mul]
  ring

end CrystallineSemistableComparison.Pb.LX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactA =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactC =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactC", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ConeSite\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactA\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.CompanionTheory.ConeZcls (ub ub_mul ub_nat ub_isUnit exists_unit_lift pt_map)

namespace CrystallineSemistableComparison.Pb.LX

attribute [local instance] MvPolynomial.gradedAlgebra

section Pts
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}

theorem inU_map_c {V : X.Opens} {T T' : Thick (smFun X q)} (f : T ⟶ T') (h : InU V T) : InU V T' := by
  intro x _
  have e := pt_map f
  have hx : (Spec.map (CommRingCat.ofHom (Ideal.quotientMap T'.J f.φ f.hle)) x) ∈ pt T ⁻¹ᵁ V := h (Set.mem_univ _)
  change (pt T') x ∈ V
  rw [← e]
  exact hx

theorem inU_inf_left {V W : X.Opens} {T : Thick (smFun X q)} (h : InU (V ⊓ W) T) : InU V T :=
  inU_mono q inf_le_left h

theorem inU_inf_right {V W : X.Opens} {T : Thick (smFun X q)} (h : InU (V ⊓ W) T) : InU W T :=
  inU_mono q inf_le_right h

end Pts

variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {N : ℕ}
  (i : X ⟶ PSpace K N) {m e : ℕ} (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (s : ℕ)

theorem wK_tf {k : Fin m} {T : Thick (smFun X q)} (h : wK q i y s k T) : TF 1 s T := h.1

theorem wK_uy {k : Fin m} {T : Thick (smFun X q)} (h : wK q i y s k T) : InU (uy i y k) T := by
  obtain ⟨-, V, ⟨j, rfl⟩, hV⟩ := h
  exact inU_inf_left hV

theorem wK_wch {k : Fin m} {T : Thick (smFun X q)} (h : wK q i y s k T) : ∃ j, InU (wch i j) T := by
  obtain ⟨-, V, ⟨j, rfl⟩, hV⟩ := h
  exact ⟨j, inU_inf_right hV⟩

theorem wK_le_wU (k : Fin m) : wK q i y s k ≤ wU q i y s := fun _ h => ⟨k, h⟩

theorem wU_wch {T : Thick (smFun X q)} (h : wU q i y s T) : ∃ j, InU (wch i j) T := by
  obtain ⟨k, hk⟩ := h
  exact wK_wch i y s hk

def lj (T : Thick (smFun X q)) (j : Fin (N + 1)) (h : InU (wch i j) T) : ChartR K N j →+* T.B ⧸ T.J :=
  liftA (pt T ≫ i) (X_mem K N j) one_pos h

theorem lj_spec (T : Thick (smFun X q)) (j : Fin (N + 1)) (h : InU (wch i j) T) :
    pt T ≫ i = Spec.map (CommRingCat.ofHom (lj i T j h)) ≫ chart K N j :=
  (liftA_spec (pt T ≫ i) (X_mem K N j) one_pos h).symm

def az (T : Thick (smFun X q)) (j : Fin (N + 1)) (h : InU (wch i j) T) :
    Spec (CommRingCat.of (T.B ⧸ T.J)) ⟶ pullback i (chart K N j) :=
  pullback.lift (pt T) (Spec.map (CommRingCat.ofHom (lj i T j h))) (lj_spec i T j h)

theorem lj_comp {T T' : Thick (smFun X q)} (f : T ⟶ T') (j : Fin (N + 1)) (h : InU (wch i j) T) (h' : InU (wch i j) T') :
    lj i T' j h' = (Ideal.quotientMap T'.J f.φ f.hle).comp (lj i T j h) := by
  have e : pt T' ≫ i = Spec.map (CommRingCat.ofHom (Ideal.quotientMap T'.J f.φ f.hle)) ≫ (pt T ≫ i) := by
    rw [← Category.assoc, pt_map f]
  unfold lj
  have key := liftA_comp (Ideal.quotientMap T'.J f.φ f.hle) (pt T ≫ i) (X_mem K N j) one_pos h (e ▸ h')
  refine Eq.trans ?_ key
  congr 1

section O1
variable {D : E.LineData X}

def sO (hD : IsTautologicalLineAt D N i) (j : Fin (N + 1)) : pullback i (chart K N j) ⟶ D.Y := hD.2.choose j

theorem sO_f (hD : IsTautologicalLineAt D N i) (j : Fin (N + 1)) : sO i hD j ≫ D.f = pullback.fst _ _ :=
  hD.2.choose_spec.choose j

theorem sO_u (hD : IsTautologicalLineAt D N i) {V : Scheme.{0}} (j k : Fin (N + 1)) (a : V ⟶ pullback i (chart K N j))
    (b : V ⟶ pullback i (chart K N k)) (h : a ≫ pullback.fst _ _ = b ≫ pullback.fst _ _)
    (h' : (a ≫ sO i hD j) ≫ D.f = (b ≫ sO i hD k) ≫ D.f) :
    ((D.u (a ≫ sO i hD j) (b ≫ sO i hD k) h' : Γ(V, ⊤)ˣ) : Γ(V, ⊤)) =
      (a ≫ pullback.snd _ _).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of (ChartR K N j))).inv.hom (ratio K N j k)) :=
  hD.2.choose_spec.choose_spec V j k a b h

theorem ub_congr {A : Type} [CommRing A] {a a' b b' : Spec (CommRingCat.of A) ⟶ D.Y} (ha : a = a') (hb : b = b')
    (h : a ≫ D.f = b ≫ D.f) (h' : a' ≫ D.f = b' ≫ D.f) : ub (D := D) a b h = ub (D := D) a' b' h' := by
  subst ha hb; rfl

theorem az_f (hD : IsTautologicalLineAt D N i) (T : Thick (smFun X q)) (j : Fin (N + 1)) (h : InU (wch i j) T) :
    (az i T j h ≫ sO i hD j) ≫ D.f = pt T := by
  rw [Category.assoc, sO_f]
  exact pullback.lift_fst _ _ _

theorem az_f' (hD : IsTautologicalLineAt D N i) (T : Thick (smFun X q)) (j : Fin (N + 1)) (h : InU (wch i j) T) :
    az i T j h ≫ sO i hD j ≫ D.f = pt T := by
  rw [sO_f]
  exact pullback.lift_fst _ _ _

def jc (c : (wU q i y s).FullSubcategory) : Fin (N + 1) := (wU_wch i y s c.property).choose

theorem hjc (c : (wU q i y s).FullSubcategory) : InU (wch i (jc i y s c)) c.obj := (wU_wch i y s c.property).choose_spec

def AU (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (c : (wU q i y s).FullSubcategory) : (c.obj.B ⧸ c.obj.J)ˣ :=
  Units.map (Scheme.ΓSpecIso (CommRingCat.of (c.obj.B ⧸ c.obj.J))).hom.hom.toMonoidHom
    (D.u (az i c.obj (jc i y s c) (hjc i y s c) ≫ sO i hD (jc i y s c)) (Λ.p c) ((az_f i hD _ _ _).trans (Λ.hp c).symm))

def μ (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (k : Fin m) (c : (wU q i y s).FullSubcategory) : c.obj.B ⧸ c.obj.J :=
  lj i c.obj (jc i y s c) (hjc i y s c) (yx y hy (jc i y s c) k) *
    (((AU i y s hD Λ c)⁻¹ ^ e : (c.obj.B ⧸ c.obj.J)ˣ) : c.obj.B ⧸ c.obj.J)

theorem μ_isUnit (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (k : Fin m) (c : (wU q i y s).FullSubcategory)
    (hk : InU (uy i y k) c.obj) : IsUnit (μ i y hy s hD Λ k c) :=
  (liftA_yx_isUnit (pt c.obj ≫ i) y hy _ k (hjc i y s c) hk).mul (Units.isUnit _)

def vv (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (k : Fin m) (c : (wU q i y s).FullSubcategory)
    (hk : InU (uy i y k) c.obj) : c.obj.Bˣ :=
  (exists_unit_lift c.obj _ (μ_isUnit i y hy s hD Λ k c hk)).choose

theorem vv_spec (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (k : Fin m) (c : (wU q i y s).FullSubcategory)
    (hk : InU (uy i y k) c.obj) :
    Ideal.Quotient.mk c.obj.J ((vv i y hy s hD Λ k c hk : c.obj.Bˣ) : c.obj.B) = μ i y hy s hD Λ k c :=
  (exists_unit_lift c.obj _ (μ_isUnit i y hy s hD Λ k c hk)).choose_spec

end O1

section E
variable {D : E.LineData X}

theorem gamma_specMap {R S : Type} [CommRing R] [CommRing S] (ψ : R →+* S) (r : R) :
    (Scheme.ΓSpecIso (CommRingCat.of S)).hom.hom
      ((Spec.map (CommRingCat.ofHom ψ)).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom r)) = ψ r := by
  have e := Scheme.ΓSpecIso_naturality (CommRingCat.ofHom ψ)
  change ((Spec.map (CommRingCat.ofHom ψ)).appTop ≫ (Scheme.ΓSpecIso (CommRingCat.of S)).hom).hom _ = _
  rw [e]
  simp

theorem eps_mem (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D) (k : Fin m) {c c' : (wU q i y s).FullSubcategory}
    (φ : c ⟶ c') (hk : InU (uy i y k) c.obj) (hk' : InU (uy i y k) c'.obj) :
    (((show c'.obj.Bˣ from Λ.w φ) ^ e * vv i y hy s hD Λ k c' hk' *
        (Units.map (show c.obj ⟶ c'.obj from (wU q i y s).ι.map φ).φ.toMonoidHom (vv i y hy s hD Λ k c hk))⁻¹ :
          c'.obj.Bˣ) : c'.obj.B) - 1 ∈ c'.obj.J := by
  set f : c.obj ⟶ c'.obj := (wU q i y s).ι.map φ with hf
  set Q := Ideal.quotientMap c'.obj.J f.φ f.hle with hQ
  have hj : InU (wch i (jc i y s c)) c.obj := hjc i y s c
  have hj' : InU (wch i (jc i y s c')) c'.obj := hjc i y s c'
  have hjT : InU (wch i (jc i y s c)) c'.obj := inU_map_c f hj
  have hpt : Spec.map (CommRingCat.ofHom Q) ≫ pt c.obj = pt c'.obj := pt_map f

  have h1 : (Spec.map (CommRingCat.ofHom Q) ≫ Λ.p c) ≫ D.f = Λ.p c' ≫ D.f := by
    rw [Category.assoc, Λ.hp, Λ.hp]; exact hpt
  have ew : Ideal.Quotient.mk c'.obj.J ((show c'.obj.Bˣ from Λ.w φ) : c'.obj.B) =
      ub (D := D) (Spec.map (CommRingCat.ofHom Q) ≫ Λ.p c) (Λ.p c') h1 := Λ.hw φ h1

  have h2 : (Spec.map (CommRingCat.ofHom Q) ≫ (az i c.obj _ hj ≫ sO i hD (jc i y s c))) ≫ D.f =
      (Spec.map (CommRingCat.ofHom Q) ≫ Λ.p c) ≫ D.f := by
    simp only [Category.assoc, az_f']
    rw [Λ.hp]
    rfl
  have eA : Q (((AU i y s hD Λ c : (c.obj.B ⧸ c.obj.J)ˣ)) : c.obj.B ⧸ c.obj.J) =
      ub (D := D) (Spec.map (CommRingCat.ofHom Q) ≫ (az i c.obj _ hj ≫ sO i hD (jc i y s c)))
        (Spec.map (CommRingCat.ofHom Q) ≫ Λ.p c) h2 :=
    (ub_nat Q _ _ _ h2).symm

  have h3 : (Spec.map (CommRingCat.ofHom Q) ≫ (az i c.obj _ hj ≫ sO i hD (jc i y s c))) ≫ D.f =
      (az i c'.obj _ hj' ≫ sO i hD (jc i y s c')) ≫ D.f := by
    simp only [Category.assoc, az_f']
    exact hpt
  have h4 : (az i c'.obj _ hj' ≫ sO i hD (jc i y s c')) ≫ D.f = Λ.p c' ≫ D.f := by
    rw [az_f, Λ.hp]
    rfl
  have hcoc : ub (D := D) _ _ h2 * ub (D := D) _ _ h1 = ub (D := D) _ _ h3 * ub (D := D) _ _ h4 := by
    rw [ub_mul, ub_mul]

  have h5 : (Spec.map (CommRingCat.ofHom Q) ≫ az i c.obj _ hj) ≫ pullback.fst _ _ = az i c'.obj _ hj' ≫ pullback.fst _ _ := by
    rw [Category.assoc]
    unfold az
    rw [pullback.lift_fst, pullback.lift_fst, hpt]
  have h3' : ((Spec.map (CommRingCat.ofHom Q) ≫ az i c.obj _ hj) ≫ sO i hD (jc i y s c)) ≫ D.f =
      (az i c'.obj _ hj' ≫ sO i hD (jc i y s c')) ≫ D.f := by
    rw [Category.assoc]; exact h3
  have eR : ub (D := D) _ _ h3 = lj i c'.obj _ hjT (ratio K N (jc i y s c) (jc i y s c')) := by
    rw [ub_congr (Category.assoc _ _ _).symm rfl h3 h3']
    unfold ub
    rw [sO_u i hD _ _ _ _ h5 h3']
    have e6 : (Spec.map (CommRingCat.ofHom Q) ≫ az i c.obj _ hj) ≫ pullback.snd _ _ =
        Spec.map (CommRingCat.ofHom (lj i c'.obj _ hjT)) := by
      rw [Category.assoc]
      unfold az
      rw [pullback.lift_snd, ← Spec.map_comp, ← CommRingCat.ofHom_comp]
      exact congrArg (fun ψ => Spec.map (CommRingCat.ofHom ψ)) (lj_comp i f _ hj hjT).symm
    rw [e6]
    exact gamma_specMap _ _

  have hY : lj i c'.obj _ hjT (yx y hy (jc i y s c) k) =
      lj i c'.obj _ hj' (yx y hy (jc i y s c') k) * lj i c'.obj _ hjT (ratio K N (jc i y s c) (jc i y s c')) ^ e :=
    liftA_yx_change (pt c'.obj ≫ i) y hy (jc i y s c) (jc i y s c') k hjT hj'
  have eY : Q (lj i c.obj _ hj (yx y hy (jc i y s c) k)) = lj i c'.obj _ hjT (yx y hy (jc i y s c) k) :=
    (RingHom.congr_fun (lj_comp i f _ hj hjT) _).symm

  have key : Ideal.Quotient.mk c'.obj.J ((show c'.obj.Bˣ from Λ.w φ) : c'.obj.B) ^ e * μ i y hy s hD Λ k c' =
      Q (μ i y hy s hD Λ k c) := by
    set U := Units.map Q.toMonoidHom (AU i y s hD Λ c) with hU
    have hUv : (U : c'.obj.B ⧸ c'.obj.J) = ub (D := D) _ _ h2 := eA
    set A' := AU i y s hD Λ c' with hA'
    have hA'v : (A' : c'.obj.B ⧸ c'.obj.J) = ub (D := D) _ _ h4 := rfl
    set W := Ideal.Quotient.mk c'.obj.J ((show c'.obj.Bˣ from Λ.w φ) : c'.obj.B) with hWdef
    set R := lj i c'.obj _ hjT (ratio K N (jc i y s c) (jc i y s c')) with hR
    have hc : (U : c'.obj.B ⧸ c'.obj.J) * W = R * A' := by
      rw [hUv, hA'v, ew, ← eR]; exact hcoc
    have hW : W = ((U⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) * (R * A') := by
      rw [← hc, ← mul_assoc, Units.inv_mul, one_mul]
    have hQμ : Q (μ i y hy s hD Λ k c) = lj i c'.obj _ hjT (yx y hy (jc i y s c) k) *
        (((U⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J)) ^ e := by
      unfold μ
      rw [map_mul, eY, Units.val_pow_eq_pow_val, map_pow]
      rfl
    rw [hQμ]
    unfold μ
    rw [← hA', hY, hW, Units.val_pow_eq_pow_val]
    have hA : (A' : c'.obj.B ⧸ c'.obj.J) ^ e * ((A'⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) ^ e = 1 := by
      rw [← mul_pow, Units.mul_inv, one_pow]
    calc (((U⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) * (R * A')) ^ e *
          (lj i c'.obj _ hj' (yx y hy (jc i y s c') k) * ((A'⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) ^ e)
        = lj i c'.obj _ hj' (yx y hy (jc i y s c') k) * R ^ e * ((U⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) ^ e *
          ((A' : c'.obj.B ⧸ c'.obj.J) ^ e * ((A'⁻¹ : (c'.obj.B ⧸ c'.obj.J)ˣ) : c'.obj.B ⧸ c'.obj.J) ^ e) := by ring
      _ = _ := by rw [hA, mul_one]

  have hv := vv_spec i y hy s hD Λ k c hk
  have hv' := vv_spec i y hy s hD Λ k c' hk'
  have hfv : Ideal.Quotient.mk c'.obj.J
      ((Units.map f.φ.toMonoidHom (vv i y hy s hD Λ k c hk) : c'.obj.Bˣ) : c'.obj.B) = Q (μ i y hy s hD Λ k c) := by
    rw [← hv]; rfl
  have hinv : Ideal.Quotient.mk c'.obj.J
      (((Units.map f.φ.toMonoidHom (vv i y hy s hD Λ k c hk))⁻¹ : c'.obj.Bˣ) : c'.obj.B) * Q (μ i y hy s hD Λ k c) = 1 := by
    rw [← hfv, ← map_mul, Units.inv_mul, map_one]
  rw [← Ideal.Quotient.eq_zero_iff_mem, map_sub, map_one, sub_eq_zero, Units.val_mul, Units.val_mul,
    Units.val_pow_eq_pow_val, map_mul, map_mul, map_pow, hv', key, mul_comm]
  exact hinv

end E

end CrystallineSemistableComparison.Pb.LX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactC =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactB =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactB", "h": "module\n\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeCocycleClassIndependent\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ConeLiftRatioMemIdeal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb.LX

variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {C : Type 1} [Category.{0} C]
  {g : C ⥤ Thick (smFun X q)} {D : E.LineData X}

def epsE (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e : ℕ) {c c' : C} (φ : c ⟶ c') : (g.obj c').Bˣ :=
  Λ.w φ ^ e * v c' * (Units.map (g.map φ).φ.toMonoidHom (v c))⁻¹

def bE (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e s : ℕ) : CH.Cn (g ⋙ O (smFun X q)) 1 :=
  fun τ => (show (g.obj (τ.obj (Fin.last 1))).B from
    plogK (g.obj (τ.obj (Fin.last 1))).δ s (((epsE Λ v e (τ.map' 0 1) : (g.obj (τ.obj (Fin.last 1))).Bˣ) :
      (g.obj (τ.obj (Fin.last 1))).B) - 1))

theorem grpE_add {G : Type} [AddCommGroup G] (a b c x y z : G) (e : ℕ) :
    e • a + y + -z + (e • b + x + -y) + -(e • c + x + -z) = e • (a + b + -c) := by
  simp only [smul_add, smul_neg]; abel

theorem grpE {G : Type} [CommGroup G] (a b c x y z : G) (e : ℕ) :
    a ^ e * y * z⁻¹ * (b ^ e * x * y⁻¹) * (c ^ e * x * z⁻¹)⁻¹ = (a * b * c⁻¹) ^ e :=
  @grpE_add (Additive G) _ a b c x y z e

theorem grpS_add {G : Type} [AddCommGroup G] (a x x' y y' : G) :
    (a + x + -y) + -(a + x' + -y') = (x + -x') + -(y + -y') := by abel

theorem grpS {G : Type} [CommGroup G] (a x x' y y' : G) :
    (a * x * y⁻¹) * (a * x' * y'⁻¹)⁻¹ = (x * x'⁻¹) * (y * y'⁻¹)⁻¹ :=
  @grpS_add (Additive G) _ a x x' y y'

theorem plog_pow [CharZero K] (T : Thick (smFun X q)) (s : ℕ) (hs : T.pdPow s = ⊥) (a : T.Bˣ)
    (ha : (a : T.B) - 1 ∈ T.J) (n : ℕ) :
    ((a ^ n : T.Bˣ) : T.B) - 1 ∈ T.J ∧
      plogK T.δ s (((a ^ n : T.Bˣ) : T.B) - 1) = n • plogK T.δ s ((a : T.B) - 1) := by
  induction n with
  | zero => simp [GlobalTheory.CompanionTheory.ConeZcls.plogK_zero, T.J.zero_mem]
  | succ n ih =>
    rw [pow_succ]
    refine ⟨GlobalTheory.CompanionTheory.ConeZcls.mul_sub_mem T _ _ ih.1 ha, ?_⟩
    rw [GlobalTheory.CompanionTheory.ConeZcls.plog_mul T s hs _ _ ih.1 ha, ih.2, succ_nsmul]

theorem epsE_rr (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e : ℕ) {c₀ c₁ c₂ : C} (φ : c₀ ⟶ c₁) (ψ : c₁ ⟶ c₂)
    (χ : c₀ ⟶ c₂) (hχ : χ = φ ≫ ψ) :
    Units.map (g.map ψ).φ.toMonoidHom (epsE Λ v e φ) * epsE Λ v e ψ * (epsE Λ v e χ)⁻¹ =
      GlobalTheory.CompanionTheory.ConeZcls.rr Λ φ ψ χ ^ e := by
  subst hχ
  have h : Units.map (g.map (φ ≫ ψ)).φ.toMonoidHom (v c₀) =
      Units.map (g.map ψ).φ.toMonoidHom (Units.map (g.map φ).φ.toMonoidHom (v c₀)) := by
    rw [g.map_comp]; rfl
  unfold epsE GlobalTheory.CompanionTheory.ConeZcls.rr
  rw [h]
  simp only [map_mul, map_inv, map_pow]
  exact grpE _ _ _ _ _ _ e

def lE (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e s : ℕ) {c c' : C} (φ : c ⟶ c') : (g.obj c').B :=
  plogK (g.obj c').δ s (((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1)

theorem log_rr [CharZero K] (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e s : ℕ) (hs : ∀ c, (g.obj c).pdPow s = ⊥)
    (hε : ∀ {c c' : C} (φ : c ⟶ c'), ((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J)
    {c₀ c₁ c₂ : C} (φ : c₀ ⟶ c₁) (ψ : c₁ ⟶ c₂) (χ : c₀ ⟶ c₂) (hχ : χ = φ ≫ ψ)
    (hr : ((GlobalTheory.CompanionTheory.ConeZcls.rr Λ φ ψ χ : (g.obj c₂).Bˣ) : (g.obj c₂).B) - 1 ∈ (g.obj c₂).J) :
    e • plogK (g.obj c₂).δ s (((GlobalTheory.CompanionTheory.ConeZcls.rr Λ φ ψ χ : (g.obj c₂).Bˣ) : (g.obj c₂).B) - 1) =
      (g.map ψ).φ (lE Λ v e s φ) + lE Λ v e s ψ - lE Λ v e s χ := by
  have e0 := hε φ
  have e1 := hε ψ
  have e2 := hε χ
  have e0' : ((Units.map (g.map ψ).φ.toMonoidHom (epsE Λ v e φ) : (g.obj c₂).Bˣ) : (g.obj c₂).B) - 1 ∈ (g.obj c₂).J := by
    have := (g.map ψ).hle e0
    simpa using this
  have hm : plogK (g.obj c₂).δ s (((Units.map (g.map ψ).φ.toMonoidHom (epsE Λ v e φ) : (g.obj c₂).Bˣ) :
      (g.obj c₂).B) - 1) = (g.map ψ).φ (lE Λ v e s φ) := by
    unfold lE
    rw [GlobalTheory.CompanionTheory.ConeZcls.plogK_map (g.map ψ) s e0]
    simp
  rw [← (plog_pow (g.obj c₂) s (hs _) _ hr e).2, ← epsE_rr Λ v e φ ψ χ hχ,
    GlobalTheory.CompanionTheory.ConeZcls.plog_mul _ s (hs _) _ _ (GlobalTheory.CompanionTheory.ConeZcls.mul_sub_mem _ _ _ e0' e1)
      (GlobalTheory.CompanionTheory.ConeZcls.inv_sub _ _ e2),
    GlobalTheory.CompanionTheory.ConeZcls.plog_mul _ s (hs _) _ _ e0' e1, GlobalTheory.CompanionTheory.ConeZcls.plog_inv _ s (hs _) _ e2, hm]
  unfold lE
  ring

theorem epsE_div (Λ : CLiftK g D) (v v' : ∀ c, (g.obj c).Bˣ) (e : ℕ) {c c' : C} (φ : c ⟶ c') :
    epsE Λ v e φ * (epsE Λ v' e φ)⁻¹ =
      (v c' * (v' c')⁻¹) * (Units.map (g.map φ).φ.toMonoidHom (v c * (v' c)⁻¹))⁻¹ := by
  unfold epsE
  simp only [map_mul, map_inv]
  exact grpS _ _ _ _ _

theorem lE_sub [CharZero K] (Λ : CLiftK g D) (v v' : ∀ c, (g.obj c).Bˣ) (e s : ℕ) (hs : ∀ c, (g.obj c).pdPow s = ⊥)
    {c c' : C} (φ : c ⟶ c')
    (e1 : ((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J)
    (e2 : ((epsE Λ v' e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J) :
    lE Λ v e s φ - lE Λ v' e s φ =
      plogK (g.obj c').δ s (((v c' * (v' c')⁻¹ : (g.obj c').Bˣ) : (g.obj c').B) *
        Ring.inverse ((g.map φ).φ (((v c * (v' c)⁻¹ : (g.obj c).Bˣ) : (g.obj c).B))) - 1) := by
  have hR : Ring.inverse ((g.map φ).φ (((v c * (v' c)⁻¹ : (g.obj c).Bˣ) : (g.obj c).B))) =
      (((Units.map (g.map φ).φ.toMonoidHom (v c * (v' c)⁻¹))⁻¹ : (g.obj c').Bˣ) : (g.obj c').B) := by
    rw [← Ring.inverse_unit]; rfl
  unfold lE
  rw [hR, ← Units.val_mul, ← epsE_div Λ v v' e φ,
    GlobalTheory.CompanionTheory.ConeZcls.plog_mul _ s (hs _) _ _ e1 (GlobalTheory.CompanionTheory.ConeZcls.inv_sub _ _ e2),
    GlobalTheory.CompanionTheory.ConeZcls.plog_inv _ s (hs _) _ e2, sub_eq_add_neg]

theorem zK_smul_eq_d [CharZero K] (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e s : ℕ) (hs : ∀ c, (g.obj c).pdPow s = ⊥)
    (hε : ∀ {c c' : C} (φ : c ⟶ c'), ((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J) :
    e • zK Λ s = CH.d _ 1 (bE Λ v e s) := by
  funext σ
  have hr : ((GlobalTheory.CompanionTheory.ConeZcls.rr Λ (σ.map' 0 1) (σ.map' 1 2) (σ.map' 0 2) : (g.obj (σ.obj (Fin.last 2))).Bˣ) :
      (g.obj (σ.obj (Fin.last 2))).B) - 1 ∈ (g.obj (σ.obj (Fin.last 2))).J := _root_.GlobalTheory.CompanionTheory.ConeUnit.r_sub_one Λ σ
  have key := log_rr Λ v e s hs hε (σ.map' 0 1) (σ.map' 1 2) (σ.map' 0 2) (GlobalTheory.CompanionTheory.ConeZcls.composable_arrows_map_zero_two σ) hr
  have h0 : ((g ⋙ O (smFun X q)).map (GlobalTheory.CatH.toLast 0 σ)).hom (bE Λ v e s (GlobalTheory.CatH.face 0 σ)) =
      (show (g.obj (σ.obj (Fin.last 2))).B from lE Λ v e s (σ.map' 1 2)) :=
    GlobalTheory.CompanionTheory.ConeZcls.map_self (g ⋙ O (smFun X q)) σ (Fin.last 2) _ _
  have h1 : ((g ⋙ O (smFun X q)).map (GlobalTheory.CatH.toLast 1 σ)).hom (bE Λ v e s (GlobalTheory.CatH.face 1 σ)) =
      (show (g.obj (σ.obj (Fin.last 2))).B from lE Λ v e s (σ.map' 0 2)) :=
    GlobalTheory.CompanionTheory.ConeZcls.map_self (g ⋙ O (smFun X q)) σ (Fin.last 2) _ _
  have h2 : ((g ⋙ O (smFun X q)).map (GlobalTheory.CatH.toLast 2 σ)).hom (bE Λ v e s (GlobalTheory.CatH.face 2 σ)) =
      (show (g.obj (σ.obj (Fin.last 2))).B from (g.map (σ.map' 1 2)).φ (lE Λ v e s (σ.map' 0 1))) := rfl
  have hd : CH.d (g ⋙ O (smFun X q)) 1 (bE Λ v e s) σ =
      ∑ i : Fin 3, (-1 : ℤ) ^ (i : ℕ) • ((g ⋙ O (smFun X q)).map (GlobalTheory.CatH.toLast i σ)).hom
        (bE Λ v e s (GlobalTheory.CatH.face i σ)) := rfl
  rw [Pi.smul_apply, hd, Fin.sum_univ_three]
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two, pow_zero, pow_one, one_smul, neg_smul, even_two, Even.neg_pow, one_pow]
  rw [h0, h1, h2]
  refine key.trans ?_
  have fin : ∀ a b c : (g.obj (σ.obj (Fin.last 2))).B, a + b - c = b + -c + a := fun a b c => by abel
  exact fin _ _ _

theorem bE_mem (Λ : CLiftK g D) (v : ∀ c, (g.obj c).Bˣ) (e s : ℕ)
    (hε : ∀ {c c' : C} (φ : c ⟶ c'), ((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J)
    (τ : ComposableArrows C 1) : (show (g.obj (τ.obj (Fin.last 1))).B from bE Λ v e s τ) ∈ (g.obj (τ.obj (Fin.last 1))).J := by
  change plogK (g.obj (τ.obj (Fin.last 1))).δ s (((epsE Λ v e (τ.map' 0 1) : (g.obj (τ.obj (Fin.last 1))).Bˣ) :
    (g.obj (τ.obj (Fin.last 1))).B) - 1) ∈ _
  exact Ideal.sum_mem _ fun k _ => Ideal.mul_mem_left _ _ ((g.obj (τ.obj (Fin.last 1))).δ.dpow_mem (Nat.succ_ne_zero k)
    (hε (τ.map' 0 1)))

theorem bE_sub [CharZero K] (Λ : CLiftK g D) (v v' : ∀ c, (g.obj c).Bˣ) (e s : ℕ) (hs : ∀ c, (g.obj c).pdPow s = ⊥)
    (hε : ∀ {c c' : C} (φ : c ⟶ c'), ((epsE Λ v e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J)
    (hε' : ∀ {c c' : C} (φ : c ⟶ c'), ((epsE Λ v' e φ : (g.obj c').Bˣ) : (g.obj c').B) - 1 ∈ (g.obj c').J)
    (τ : ComposableArrows C 1) :
    (show (g.obj (τ.obj (Fin.last 1))).B from bE Λ v e s τ - bE Λ v' e s τ) =
      plogK (g.obj (τ.obj (Fin.last 1))).δ s
        (((v (τ.obj (Fin.last 1)) * (v' (τ.obj (Fin.last 1)))⁻¹ : (g.obj (τ.obj (Fin.last 1))).Bˣ) :
            (g.obj (τ.obj (Fin.last 1))).B) *
          Ring.inverse (show (g.obj (τ.obj (Fin.last 1))).B from (g.map (τ.map' 0 1)).φ
            (((v (τ.obj 0) * (v' (τ.obj 0))⁻¹ : (g.obj (τ.obj 0)).Bˣ) : (g.obj (τ.obj 0)).B))) - 1) :=
  lE_sub Λ v v' e s hs (τ.map' 0 1) (hε (τ.map' 0 1)) (hε' (τ.map' 0 1))

end CrystallineSemistableComparison.Pb.LX
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactB =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExact =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExact", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactC\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExactB\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.CechDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry GlobalTheory.LogCris ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

variable {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ}

namespace LX

section Fam
variable {K : Type} [Field K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)} {N : ℕ} {D : E.LineData X}
  (i : X ⟶ PSpace K N) {m e : ℕ} (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e) (s : ℕ)
  (hD : IsTautologicalLineAt D N i) (Λ : CLiftK (wU q i y s).ι D)

def vV (k : Fin m) (V : ObjectProperty (Thick (smFun X q))) (hV : V ≤ wU q i y s) (hk : ∀ T, V T → InU (uy i y k) T) :
    ∀ c : V.FullSubcategory, ((ObjectProperty.ιOfLE hV ⋙ (wU q i y s).ι).obj c).Bˣ :=
  fun c => vv i y hy s hD Λ k ((ObjectProperty.ιOfLE hV).obj c) (hk _ c.property)

theorem vV_eps (k : Fin m) (V : ObjectProperty (Thick (smFun X q))) (hV : V ≤ wU q i y s)
    (hk : ∀ T, V T → InU (uy i y k) T) {c c' : V.FullSubcategory} (φ : c ⟶ c') :
    ((epsE (Λ.precomp (ObjectProperty.ιOfLE hV)) (vV i y hy s hD Λ k V hV hk) e φ :
        ((ObjectProperty.ιOfLE hV ⋙ (wU q i y s).ι).obj c').Bˣ) : ((ObjectProperty.ιOfLE hV ⋙ (wU q i y s).ι).obj c').B) - 1 ∈
      ((ObjectProperty.ιOfLE hV ⋙ (wU q i y s).ι).obj c').J :=
  eps_mem i y hy s hD Λ k ((ObjectProperty.ιOfLE hV).map φ) (hk _ c.property) (hk _ c'.property)

end Fam

theorem evalAt_comp_appLE {A : Type} [CommRing A] {Y Z : Scheme.{0}} (x : Spec (CommRingCat.of A) ⟶ Y) (f : Y ⟶ Z)
    (U : Z.Opens) (h : ⊤ ≤ x ⁻¹ᵁ (f ⁻¹ᵁ U)) (h' : ⊤ ≤ (x ≫ f) ⁻¹ᵁ U) (a : Γ(Z, U)) :
    GlobalTheory.Cris.evalAt (x ≫ f) U h' a = GlobalTheory.Cris.evalAt x (f ⁻¹ᵁ U) h (f.appLE U (f ⁻¹ᵁ U) le_rfl a) := by
  unfold GlobalTheory.Cris.evalAt
  rw [← Scheme.Hom.appLE_comp_appLE x f U (f ⁻¹ᵁ U) ⊤ le_rfl h]
  rfl

theorem mem_pdP_one {B : Type} [CommRing B] {J : Ideal B} (δ : DividedPowers J) {x : B} (hx : x ∈ J) : x ∈ pdP δ 1 := by
  have h := dpow_mem_pdP δ 1 hx
  rwa [δ.dpow_one hx] at h

theorem mem_thFil_one {K : Type} [CommRing K] {X : Scheme.{0}} {q : X ⟶ Spec (CommRingCat.of K)}
    {T : Thick (smFun X q)} {x : T.B} (hx : x ∈ T.J) :
    (show (thA (smFun X q)).obj T from x) ∈ (thFil (smFun X q) 1).S T :=
  mem_pdP_one T.δ hx

end LX

open LX

theorem firstChern_local_exact [CharZero K] (q : X ⟶ Spec (CommRingCat.of K)) (D : E.LineData X) (i : X ⟶ PSpace K N)
    (hD : IsTautologicalLineAt D N i) {m e : ℕ} (y : Fin m → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e)
    (s : ℕ) (Λ : CLiftK (ObjectProperty.ι fun T : Thick (smFun X q) => ∃ k, wK q i y s k T) D) :
    ∃ b : ∀ k, CH.Cn (CH.modF ((wK q i y s k).ι ⋙ thA (smFun X q))) 1,
      (∀ k σ, b k σ ∈ (thFil (smFun X q) 1).S _) ∧
      (∀ k, resB (thA (smFun X q)) (fun T h => ⟨k, h⟩ : wK q i y s k ≤ fun T : Thick (smFun X q) => ∃ k', wK q i y s k' T)
        (e • zK Λ s) = CH.d _ 1 (b k)) ∧
      ∀ k k', ∃ ĝ : ∀ T : (capS (wK q i y s) {k, k'}).FullSubcategory, T.obj.B,
        (∀ T (h : InU (uy i y k') T.obj),
          Ideal.Quotient.mk _ (ĝ T) = ev T.obj h ((i.appLE _ (uy i y k') le_rfl).hom (yQ y hy k k'))) ∧
        resB (thA (smFun X q)) (fun T h => h k (by simp) : capS (wK q i y s) {k, k'} ≤ wK q i y s k) (b k) -
          resB (thA (smFun X q)) (fun T h => h k' (by simp) : capS (wK q i y s) {k, k'} ≤ wK q i y s k') (b k') =
          dlogC (capS (wK q i y s) {k, k'}) s ĝ := by
  classical
  have hsk : ∀ k (c : (wK q i y s k).FullSubcategory), c.obj.pdPow s = ⊥ := fun k c => (wK_tf i y s c.property).1
  refine ⟨fun k => bE (Λ.precomp (ObjectProperty.ιOfLE (wK_le_wU i y s k)))
      (vV i y hy s hD Λ k (wK q i y s k) (wK_le_wU i y s k) (fun T h => wK_uy i y s h)) e s, ?_, ?_, ?_⟩
  · intro k σ
    exact mem_thFil_one (bE_mem (Λ.precomp (ObjectProperty.ιOfLE (wK_le_wU i y s k)))
      (vV i y hy s hD Λ k (wK q i y s k) (wK_le_wU i y s k) (fun T h => wK_uy i y s h)) e s
      (vV_eps i y hy s hD Λ k (wK q i y s k) (wK_le_wU i y s k) (fun T h => wK_uy i y s h)) σ)
  · intro k
    exact zK_smul_eq_d (Λ.precomp (ObjectProperty.ιOfLE (wK_le_wU i y s k)))
      (vV i y hy s hD Λ k (wK q i y s k) (wK_le_wU i y s k) (fun T h => wK_uy i y s h)) e s (hsk k)
      (vV_eps i y hy s hD Λ k (wK q i y s k) (wK_le_wU i y s k) (fun T h => wK_uy i y s h))
  · intro k k'
    have hkk : k ∈ ({k, k'} : Finset (Fin m)) := by simp
    have hkk' : k' ∈ ({k, k'} : Finset (Fin m)) := by simp
    have hcU : capS (wK q i y s) {k, k'} ≤ wU q i y s := fun T h => wK_le_wU i y s k T (h k hkk)
    have hc1 : ∀ T, capS (wK q i y s) {k, k'} T → InU (uy i y k) T := fun T h => wK_uy i y s (h k hkk)
    have hc2 : ∀ T, capS (wK q i y s) {k, k'} T → InU (uy i y k') T := fun T h => wK_uy i y s (h k' hkk')
    refine ⟨fun T => (show T.obj.B from ((vV i y hy s hD Λ k _ hcU hc1 T * (vV i y hy s hD Λ k' _ hcU hc2 T)⁻¹ :
        ((ObjectProperty.ιOfLE hcU ⋙ (wU q i y s).ι).obj T).Bˣ) : ((ObjectProperty.ιOfLE hcU ⋙ (wU q i y s).ι).obj T).B)),
      ?_, ?_⟩
    · intro T h
      set c : (wU q i y s).FullSubcategory := (ObjectProperty.ιOfLE hcU).obj T
      have h1 := vv_spec i y hy s hD Λ k c (hc1 _ T.property)
      have h2 := vv_spec i y hy s hD Λ k' c (hc2 _ T.property)
      have hq : lj i c.obj (jc i y s c) (hjc i y s c) (yx y hy (jc i y s c) k) =
          lj i c.obj (jc i y s c) (hjc i y s c) (yx y hy (jc i y s c) k') *
            ev c.obj h ((i.appLE _ (uy i y k') le_rfl).hom (yQ y hy k k')) := by
        refine (liftA_yx_quot (pt c.obj ≫ i) y hy (jc i y s c) k k' (hjc i y s c) h).trans ?_
        congr 1
        exact evalAt_comp_appLE (pt c.obj) i _ h h _
      change Ideal.Quotient.mk c.obj.J (((vv i y hy s hD Λ k c (hc1 _ T.property) *
        (vv i y hy s hD Λ k' c (hc2 _ T.property))⁻¹ : c.obj.Bˣ) : c.obj.B)) = _
      rw [Units.val_mul, map_mul, h1]
      have h3 : Ideal.Quotient.mk c.obj.J ((vv i y hy s hD Λ k' c (hc2 _ T.property) : c.obj.Bˣ) : c.obj.B) *
          Ideal.Quotient.mk c.obj.J (((vv i y hy s hD Λ k' c (hc2 _ T.property))⁻¹ : c.obj.Bˣ) : c.obj.B) = 1 := by
        rw [← map_mul, Units.mul_inv, map_one]
      rw [h2] at h3
      unfold μ at h3 ⊢
      rw [hq]
      calc lj i c.obj (jc i y s c) (hjc i y s c) (yx y hy (jc i y s c) k') *
              ev c.obj h ((i.appLE _ (uy i y k') le_rfl).hom (yQ y hy k k')) *
              (((AU i y s hD Λ c)⁻¹ ^ e : (c.obj.B ⧸ c.obj.J)ˣ) : c.obj.B ⧸ c.obj.J) *
            Ideal.Quotient.mk c.obj.J (((vv i y hy s hD Λ k' c (hc2 _ T.property))⁻¹ : c.obj.Bˣ) : c.obj.B)
          = ev c.obj h ((i.appLE _ (uy i y k') le_rfl).hom (yQ y hy k k')) *
            (lj i c.obj (jc i y s c) (hjc i y s c) (yx y hy (jc i y s c) k') *
              (((AU i y s hD Λ c)⁻¹ ^ e : (c.obj.B ⧸ c.obj.J)ˣ) : c.obj.B ⧸ c.obj.J) *
            Ideal.Quotient.mk c.obj.J (((vv i y hy s hD Λ k' c (hc2 _ T.property))⁻¹ : c.obj.Bˣ) : c.obj.B)) := by ring
        _ = _ := by rw [h3, mul_one]; rfl
    · funext τ
      exact bE_sub (Λ.precomp (ObjectProperty.ιOfLE hcU)) (vV i y hy s hD Λ k _ hcU hc1) (vV i y hy s hD Λ k' _ hcU hc2)
        e s (fun c => (wK_tf i y s (c.property k hkk)).1)
        (vV_eps i y hy s hD Λ k _ hcU hc1) (vV_eps i y hy s hD Λ k' _ hcU hc2) τ

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExact =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidChartPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidChartPf", "h": "module\n\npublic import Mathlib.RingTheory.Adjoin.FG\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Lifts\npublic import Mathlib.RingTheory.IntegralClosure.Algebra.Basic\npublic import Mathlib.RingTheory.Polynomial.ScaleRoots\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

open Polynomial

variable {K : Type} [Field K] {R : Type} [CommRing R] [IsDomain R] [Algebra K R]

theorem chart_ext_scale (A T : Subalgebra K R) (w : R) (hwA : w ∈ A)
    (hscale : ∀ x ∈ T, ∃ N : ℕ, w ^ N * x ∈ A) (g : R) (hg : IsIntegral T g) :
    ∃ N : ℕ, IsIntegral A (w ^ N * g) := by
  obtain ⟨p, hpm, hp⟩ := hg
  have hmono : ∀ (x : R) (n m : ℕ), n ≤ m → w ^ n * x ∈ A → w ^ m * x ∈ A := by
    intro x n m hnm hx
    have : w ^ m * x = w ^ (m - n) * (w ^ n * x) := by
      rw [← mul_assoc, ← pow_add, Nat.sub_add_cancel hnm]
    rw [this]
    exact A.mul_mem (A.pow_mem hwA _) hx
  have hc : ∀ i : ℕ, ∃ n : ℕ, w ^ n * ((p.coeff i : T) : R) ∈ A := fun i =>
    hscale _ (p.coeff i).2
  choose n hn using hc
  set N : ℕ := ∑ i ∈ Finset.range (p.natDegree + 1), n i with hN
  have hcN : ∀ i ≤ p.natDegree, w ^ N * ((p.coeff i : T) : R) ∈ A := by
    intro i hi
    refine hmono _ (n i) N ?_ (hn i)
    exact Finset.single_le_sum (f := n) (fun _ _ => Nat.zero_le _)
      (Finset.mem_range.2 (Nat.lt_succ_of_le hi))
  set P : R[X] := p.map (algebraMap T R) with hP
  have hPm : P.Monic := hpm.map _
  have hPdeg : P.natDegree = p.natDegree := hpm.natDegree_map _
  have hPcoeff : ∀ i, P.coeff i = ((p.coeff i : T) : R) := fun i => by
    rw [hP, coeff_map]; rfl
  set Q : R[X] := P.scaleRoots (w ^ N) with hQ
  have hQm : Q.Monic := (monic_scaleRoots_iff _).2 hPm
  have hQlift : Q ∈ lifts (algebraMap A R) := by
    rw [lifts_iff_coeff_lifts]
    intro i
    have hmem : Q.coeff i ∈ A := by
      rw [hQ, coeff_scaleRoots, hPdeg, hPcoeff]
      rcases lt_trichotomy i p.natDegree with hlt | heq | hgt
      · have h1 : (w ^ N) ^ (p.natDegree - i) = (w ^ N) ^ (p.natDegree - i - 1) * w ^ N := by
          rw [← pow_succ]; congr 1; omega
        rw [h1, mul_comm, mul_assoc]
        exact A.mul_mem (A.pow_mem (A.pow_mem hwA _) _) (hcN i hlt.le)
      · subst heq
        have : p.coeff p.natDegree = 1 := hpm.coeff_natDegree
        rw [this, Nat.sub_self, pow_zero, mul_one]
        exact A.one_mem
      · rw [coeff_eq_zero_of_natDegree_lt hgt]
        simp only [ZeroMemClass.coe_zero, zero_mul]
        exact A.zero_mem
    exact ⟨⟨_, hmem⟩, rfl⟩
  obtain ⟨q, hqQ, -, hqm⟩ := lifts_and_degree_eq_and_monic hQlift hQm
  refine ⟨N, q, hqm, ?_⟩
  rw [← eval_map, hqQ, hQ, scaleRoots_eval_mul, hP, eval_map, hp, mul_zero]

theorem chart_ext_pf (A T B0 Bu : Subalgebra K R) (hAT : A ≤ T) (hAB0 : A ≤ B0) (hB0 : B0 ≤ Bu) (hTBu : T ≤ Bu)
    (hB0FG : B0.FG) (hB0Int : ∀ b ∈ B0, IsIntegral A b) (hBuFG : Bu.FG) (hBuInt : ∀ b ∈ Bu, IsIntegral T b)
    (hFrac : ∀ r : R, ∃ b ∈ Bu, ∃ b' ∈ Bu, b' ≠ 0 ∧ r * b' = b)
    (w : R) (hwA : w ∈ A) (hw0 : w ≠ 0) (hscale : ∀ x ∈ T, ∃ N : ℕ, w ^ N * x ∈ A) :
    ∃ B' : Subalgebra K R, B0 ≤ B' ∧ B'.FG ∧ (∀ b ∈ B', IsIntegral A b) ∧
      ∀ r : R, ∃ b ∈ B', ∃ b' ∈ B', b' ≠ 0 ∧ r * b' = b := by
  classical
  obtain ⟨t, ht⟩ := hB0FG
  obtain ⟨s, hs⟩ := hBuFG
  have hkey : ∀ g : R, ∃ N : ℕ, g ∈ Bu → IsIntegral A (w ^ N * g) := by
    intro g
    by_cases hg : g ∈ Bu
    · obtain ⟨N, hN⟩ := chart_ext_scale A T w hwA hscale g (hBuInt g hg)
      exact ⟨N, fun _ => hN⟩
    · exact ⟨0, fun h => absurd h hg⟩
  choose N hN using hkey
  set u : Finset R := t ∪ s.image (fun g => w ^ N g * g) with hu
  set B' : Subalgebra K R := Algebra.adjoin K (u : Set R) with hB'
  have htB' : B0 ≤ B' := by
    rw [← ht, hB']
    exact Algebra.adjoin_mono (by rw [hu, Finset.coe_union]; exact Set.subset_union_left)
  have hwB' : w ∈ B' := htB' (hAB0 hwA)
  have hgen : ∀ g ∈ s, w ^ N g * g ∈ B' := by
    intro g hg
    apply Algebra.subset_adjoin
    rw [hu, Finset.coe_union]
    exact Or.inr (Finset.mem_coe.2 (Finset.mem_image_of_mem _ hg))
  have hsBu : ∀ g ∈ s, g ∈ Bu := fun g hg => by
    rw [← hs]; exact Algebra.subset_adjoin (Finset.mem_coe.2 hg)

  have hpow : ∀ b ∈ Bu, ∃ L : ℕ, w ^ L * b ∈ B' := by
    intro b hb
    rw [← hs] at hb
    induction hb using Algebra.adjoin_induction with
    | mem x hx => exact ⟨N x, hgen x (Finset.mem_coe.1 hx)⟩
    | algebraMap k => exact ⟨0, by rw [pow_zero, one_mul]; exact B'.algebraMap_mem k⟩
    | add x y _ _ ihx ihy =>
      obtain ⟨L1, h1⟩ := ihx
      obtain ⟨L2, h2⟩ := ihy
      refine ⟨L1 + L2, ?_⟩
      have : w ^ (L1 + L2) * (x + y) = w ^ L2 * (w ^ L1 * x) + w ^ L1 * (w ^ L2 * y) := by ring
      rw [this]
      exact B'.add_mem (B'.mul_mem (B'.pow_mem hwB' _) h1) (B'.mul_mem (B'.pow_mem hwB' _) h2)
    | mul x y _ _ ihx ihy =>
      obtain ⟨L1, h1⟩ := ihx
      obtain ⟨L2, h2⟩ := ihy
      refine ⟨L1 + L2, ?_⟩
      have : w ^ (L1 + L2) * (x * y) = (w ^ L1 * x) * (w ^ L2 * y) := by ring
      rw [this]
      exact B'.mul_mem h1 h2
  refine ⟨B', htB', ⟨u, hB'.symm⟩, ?_, ?_⟩
  · intro b hb
    rw [hB'] at hb
    induction hb using Algebra.adjoin_induction with
    | mem x hx =>
      rw [hu, Finset.coe_union] at hx
      rcases hx with hx | hx
      · apply hB0Int
        rw [← ht]
        exact Algebra.subset_adjoin hx
      · obtain ⟨g, hg, rfl⟩ := Finset.mem_image.1 (Finset.mem_coe.1 hx)
        exact hN g (hsBu g hg)
    | algebraMap k =>
      have hk : algebraMap K R k ∈ A := A.algebraMap_mem k
      have : algebraMap K R k = algebraMap A R ⟨_, hk⟩ := rfl
      rw [this]
      exact isIntegral_algebraMap
    | add x y _ _ ihx ihy => exact ihx.add ihy
    | mul x y _ _ ihx ihy => exact ihx.mul ihy
  · intro r
    obtain ⟨b, hb, b', hb', hb'0, hrb⟩ := hFrac r
    obtain ⟨L1, h1⟩ := hpow b hb
    obtain ⟨L2, h2⟩ := hpow b' hb'
    refine ⟨w ^ (L1 + L2) * b, ?_, w ^ (L1 + L2) * b', ?_, ?_, ?_⟩
    · have : w ^ (L1 + L2) * b = w ^ L2 * (w ^ L1 * b) := by ring
      rw [this]; exact B'.mul_mem (B'.pow_mem hwB' _) h1
    · have : w ^ (L1 + L2) * b' = w ^ L1 * (w ^ L2 * b') := by ring
      rw [this]; exact B'.mul_mem (B'.pow_mem hwB' _) h2
    · exact mul_ne_zero (pow_ne_zero _ hw0) hb'0
    · rw [← hrb]; ring

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidChartPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ChartExt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ChartExt", "h": "module\n\npublic import Mathlib.RingTheory.Adjoin.FG\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidChartPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ChartExt =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.InfinityCoordAlgebraicIndependent =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.InfinityCoordAlgebraicIndependent", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.MvPolynomial.Degrees\npublic import Mathlib.LinearAlgebra.Matrix.Block\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

variable {K R : Type} [Field K] [CommRing R] [Algebra K R] {n : ℕ}

def u0 (t : Fin (n + 1) → Rˣ) : Fin (n + 1) → Rˣ :=
  Fin.cases (t 0)⁻¹ fun j => t j.succ * (t 0)⁻¹

def infinityDerivation (t : Fin (n + 1) → Rˣ) (D : Fin (n + 1) → Derivation K R R) : Fin (n + 1) → Derivation K R R :=
  Fin.cases (-((t 0 : R) • ∑ k, (t k : R) • D k)) fun j => (t 0 : R) • D j.succ

theorem derivation_sum_apply {ι : Type} (s : Finset ι) (f : ι → Derivation K R R) (x : R) :
    (∑ k ∈ s, f k) x = ∑ k ∈ s, f k x := by
  classical
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih => simp [Finset.sum_insert ha, ih]

theorem infinityDerivation_coord (t : Fin (n + 1) → Rˣ) (D : Fin (n + 1) → Derivation K R R)
    (hD : ∀ k j, D k (t j) = if k = j then 1 else 0) (j l : Fin (n + 1)) :
    infinityDerivation t D j (u0 t l) = if j = l then 1 else 0 := by
  have huv : (t 0 : R) * (((t 0)⁻¹ : Rˣ) : R) = 1 := (t 0).mul_inv
  have hinv : ∀ k, D k (((t 0)⁻¹ : Rˣ) : R) = -(((t 0)⁻¹ : Rˣ) : R) ^ 2 * D k (t 0) := fun k => by
    rw [Derivation.leibniz_of_mul_eq_one (D k) (Units.inv_mul (t 0)), smul_eq_mul]
  induction j using Fin.cases <;> induction l using Fin.cases
  · simp only [infinityDerivation, u0, Fin.cases_zero, Derivation.neg_apply, Derivation.smul_apply, derivation_sum_apply, smul_eq_mul, hinv, hD]
    simp
    linear_combination ((t 0 : R) * (((t 0)⁻¹ : Rˣ) : R) + 1) * huv
  · simp only [infinityDerivation, u0, Fin.cases_zero, Fin.cases_succ, Derivation.neg_apply, Derivation.smul_apply,
      derivation_sum_apply, smul_eq_mul, Units.val_mul, Derivation.leibniz, hinv, hD]
    simp [show ∀ i : Fin n, (0 : Fin (n + 1)) = i.succ ↔ False from fun i => ⟨fun h => Fin.succ_ne_zero i h.symm, False.elim⟩]
    linear_combination ((t _ : R) * ((t 0 : R) * (((t 0)⁻¹ : Rˣ) : R) + 1)) * huv
  · simp [infinityDerivation, u0, smul_eq_mul, hinv, hD, (Fin.succ_ne_zero _)]
  · simp only [infinityDerivation, u0, Fin.cases_succ, Derivation.smul_apply, smul_eq_mul, Units.val_mul, Derivation.leibniz,
      hinv, hD]
    simp [Fin.succ_ne_zero]

theorem jacobian_infinityDerivation (t : Fin (n + 1) → Rˣ) (D : Fin (n + 1) → Derivation K R R) (B : Subalgebra K R) :
    ∀ y ∈ jacS B D id, ∃ y' ∈ jacS B (infinityDerivation t D) id, y = -(((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) * y' := by
  set C : Matrix (Fin (n + 1)) (Fin (n + 1)) R := Matrix.of fun j k =>
    Fin.cases (fun k => -((t 0 : R) * t k)) (fun j k => if j.succ = k then (t 0 : R) else 0) j k with hC
  have hCdet : C.det = -(t 0 : R) ^ (n + 2) := by
    rw [Matrix.det_of_isUpperTriangular]
    · rw [Fin.prod_univ_succ]
      simp [hC, Finset.prod_const, pow_succ]
      ring
    · intro i k hki
      induction i using Fin.cases with
      | zero => exact absurd hki (Fin.not_lt_zero k)
      | succ i =>
        simp only [id] at hki
        simp only [hC, Matrix.of_apply, Fin.cases_succ]
        rw [if_neg (show i.succ ≠ k from fun h => by subst h; exact lt_irrefl _ hki)]
  have hM : ∀ bs : Fin (n + 1) → B, (Matrix.of fun k l => infinityDerivation t D (id k) ((bs l : R))) =
      C * Matrix.of fun k l => D (id k) ((bs l : R)) := by
    intro bs; ext j l
    simp only [Matrix.of_apply, id, Matrix.mul_apply, hC]
    induction j using Fin.cases with
    | zero => simp [infinityDerivation, Finset.mul_sum, mul_assoc]
    | succ j => simp [infinityDerivation]
  have huv : (t 0 : R) * (((t 0)⁻¹ : Rˣ) : R) = 1 := (t 0).mul_inv
  intro y hy
  have key : jacS B D id ≤ (jacS B (infinityDerivation t D) id).map (AddMonoidHom.mulLeft (-(((t 0)⁻¹ : Rˣ) : R) ^ (n + 2))) := by
    refine (AddSubgroup.closure_le _).2 ?_
    rintro _ ⟨b, bs, rfl⟩
    refine ⟨(b : R) * (Matrix.of fun k l => infinityDerivation t D (id k) ((bs l : R))).det,
      AddSubgroup.subset_closure ⟨b, bs, rfl⟩, ?_⟩
    simp only [AddMonoidHom.coe_mulLeft, hM, Matrix.det_mul, hCdet]
    have hp : (((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) * (t 0 : R) ^ (n + 2) = 1 := by
      rw [← mul_pow, mul_comm, huv, one_pow]
    linear_combination ((b : R) * (Matrix.of fun k l => D (id k) ((bs l : R))).det) * hp
  obtain ⟨y', hy', rfl⟩ := key hy
  exact ⟨y', hy', rfl⟩

section torus

theorem tpow_single {d : ℕ} (t : Fin d → Rˣ) (k : Fin d) (z : ℤ) : tpow t (Pi.single k z) = ((t k ^ z : Rˣ) : R) := by
  unfold tpow
  rw [Fintype.prod_eq_single k (fun j hj => by simp [Pi.single_apply, hj])]
  simp

theorem tpow_mem {d : ℕ} (t : Fin d → Rˣ) (S : Finset (Fin (d + 1))) {m : Fin d → ℤ} (hm : m ∈ expS S) :
    tpow t m ∈ torusS K t S :=
  Algebra.subset_adjoin ⟨m, hm, rfl⟩

theorem torusS_le_span {d : ℕ} (t : Fin d → Rˣ) (S : Finset (Fin (d + 1))) :
    (torusS K t S : Set R) ⊆ Submodule.span K (tpow t '' expS S) := by
  let M : Submonoid R :=
    { carrier := tpow t '' expS S
      one_mem' := ⟨0, ⟨fun k _ => le_refl 0, fun _ => by simp⟩, by simp [tpow]⟩
      mul_mem' := by
        rintro _ _ ⟨m, hm, rfl⟩ ⟨m', hm', rfl⟩
        refine ⟨m + m', ⟨fun k hk => ?_, fun h0 => ?_⟩, CrystallineSemistableComparison.Pb.ra_tpow_add t m m'⟩
        · have := hm.1 k hk; have := hm'.1 k hk; simp only [Pi.add_apply]; omega
        · have := hm.2 h0; have := hm'.2 h0; simp only [Pi.add_apply, Finset.sum_add_distrib]; omega }
  intro x hx
  have hx' : x ∈ Subalgebra.toSubmodule (Algebra.adjoin K (tpow t '' expS S)) := hx
  rw [Algebra.adjoin_eq_span] at hx'
  exact Submodule.span_mono (Submonoid.closure_le (S := M).2 le_rfl) hx'

theorem mem_exponentSet_zero_iff {n : ℕ} (m : Fin (n + 1) → ℤ) :
    m ∈ expS (Finset.univ.erase (0 : Fin (n + 2))) ↔ ∑ k, m k ≤ 0 := by
  simp [expS, Fin.succ_ne_zero]

def infinityExponent {n : ℕ} (e : Fin (n + 1) → ℕ) : Fin (n + 1) → ℤ := Fin.cons (-(∑ i, (e i : ℤ))) fun j => (e j.succ : ℤ)

theorem sum_u0Exp {n : ℕ} (e : Fin (n + 1) → ℕ) : ∑ k, infinityExponent e k = -(e 0 : ℤ) := by
  simp [infinityExponent, Fin.sum_univ_succ]

theorem infinityCoord_prod_pow (t : Fin (n + 1) → Rˣ) (e : Fin (n + 1) → ℕ) :
    (((∏ i, u0 t i ^ e i : Rˣ)) : R) = tpow t (infinityExponent e) := by
  unfold tpow infinityExponent
  congr 1
  rw [Fin.prod_univ_succ, Fin.prod_univ_succ]
  simp only [u0, Fin.cases_zero, Fin.cases_succ, Fin.cons_zero, Fin.cons_succ, mul_pow, Finset.prod_mul_distrib,
    Finset.prod_pow_eq_pow_sum, zpow_natCast, Fin.sum_univ_succ, zpow_neg]
  rw [← Nat.cast_sum, ← Nat.cast_add, zpow_natCast, pow_add, mul_inv]
  simp only [inv_pow]
  ac_rfl

end torus

theorem infinityCoord_monomial_eq (t : Fin (n + 1) → Rˣ) (N : ℕ) (α : Fin (n + 1) → ℕ) (hα : ∑ i, α i ≤ N) :
    (t 0 : R) ^ N * ∏ i, (u0 t i : R) ^ α i =
      ∏ i, (t i : R) ^ (Fin.cons (N - ∑ i, α i) (fun j => α j.succ) : Fin (n + 1) → ℕ) i := by
  have huv : (t 0 : R) * (((t 0)⁻¹ : Rˣ) : R) = 1 := (t 0).mul_inv
  rw [Fin.prod_univ_succ, Fin.prod_univ_succ]
  simp only [u0, Fin.cases_zero, Fin.cases_succ, Fin.cons_zero, Fin.cons_succ, Units.val_mul, mul_pow,
    Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum]
  rw [Fin.sum_univ_succ] at hα ⊢
  obtain ⟨k, hk⟩ : ∃ k, N = k + α 0 + ∑ j : Fin n, α j.succ := ⟨N - (α 0 + ∑ j : Fin n, α j.succ), by omega⟩
  have hk' : N - (α 0 + ∑ j : Fin n, α j.succ) = k := by omega
  rw [hk', hk]
  calc (t 0 : R) ^ (k + α 0 + ∑ j : Fin n, α j.succ) *
        ((((t 0)⁻¹ : Rˣ) : R) ^ α 0 * ((∏ j : Fin n, (t j.succ : R) ^ α j.succ) *
          (((t 0)⁻¹ : Rˣ) : R) ^ ∑ j : Fin n, α j.succ))
      = (t 0 : R) ^ k * (∏ j : Fin n, (t j.succ : R) ^ α j.succ) *
          ((t 0 : R) * (((t 0)⁻¹ : Rˣ) : R)) ^ α 0 *
          ((t 0 : R) * (((t 0)⁻¹ : Rˣ) : R)) ^ ∑ j : Fin n, α j.succ := by ring
    _ = _ := by rw [huv, one_pow, one_pow, mul_one, mul_one]

theorem infinityCoord_mem_torus (t : Fin (n + 1) → Rˣ) (j : Fin (n + 1)) :
    (u0 t j : R) ∈ torusS K t (Finset.univ.erase 0) := by
  have h := infinityCoord_prod_pow t (Pi.single j 1)
  rw [Fintype.prod_eq_single j (fun i hi => by simp [Pi.single_apply, hi])] at h
  simp only [Pi.single_eq_same, pow_one] at h
  rw [h]
  exact tpow_mem t _ ((mem_exponentSet_zero_iff _).2 (by rw [sum_u0Exp]; exact neg_nonpos.2 (Nat.cast_nonneg _)))

theorem infinityCoord_inv_mem (t : Fin (n + 1) → Rˣ) (j : Fin n) :
    (((u0 t j.succ)⁻¹ : Rˣ) : R) ∈ torusS K t (Finset.univ.erase 0) := by
  have h : (((u0 t j.succ)⁻¹ : Rˣ) : R) = tpow t (Pi.single 0 1 + Pi.single j.succ (-1)) := by
    rw [CrystallineSemistableComparison.Pb.ra_tpow_add, tpow_single, tpow_single, ← Units.val_mul]
    congr 1
    simp [u0, mul_comm]
  rw [h]
  exact tpow_mem t _ ((mem_exponentSet_zero_iff _).2 (by simp [Finset.sum_add_distrib]))

theorem infinityCoord_algebraicIndependent (t : Fin (n + 1) → Rˣ) (ht : AlgebraicIndependent K fun k => (t k : R)) :
    Function.Injective (MvPolynomial.aeval fun k => (u0 t k : R) : MvPolynomial (Fin (n + 1)) K →ₐ[K] R) := by
  classical
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro f hf
  set N := f.totalDegree
  let deg : (Fin (n + 1) →₀ ℕ) → ℕ := fun α => ∑ i, α i
  have hdeg : ∀ α ∈ f.support, deg α ≤ N := by
    intro α hα
    have := MvPolynomial.le_totalDegree hα
    refine le_trans (le_of_eq ?_) this
    simp only [deg]
    rw [Finsupp.sum_fintype _ _ (fun _ => rfl)]
  let h : (Fin (n + 1) →₀ ℕ) → (Fin (n + 1) →₀ ℕ) := fun α =>
    Finsupp.equivFunOnFinite.symm (Fin.cons (N - deg α) (fun j => α j.succ))
  have hinj : ∀ α ∈ f.support, ∀ β ∈ f.support, h α = h β → α = β := by
    intro α hα β hβ hab
    have h0 := DFunLike.congr_fun hab 0
    have hs : ∀ j : Fin n, α j.succ = β j.succ := fun j => by
      simpa [h] using DFunLike.congr_fun hab j.succ
    simp only [h, deg, Fin.sum_univ_succ] at h0
    rw [Finsupp.coe_equivFunOnFinite_symm, Finsupp.coe_equivFunOnFinite_symm, Fin.cons_zero, Fin.cons_zero] at h0
    have ha := hdeg α hα; have hb := hdeg β hβ
    simp only [deg, Fin.sum_univ_succ] at ha hb
    have hsum : ∑ j : Fin n, α j.succ = ∑ j : Fin n, β j.succ := Finset.sum_congr rfl fun j _ => hs j
    ext i
    induction i using Fin.cases with
    | zero => omega
    | succ j => exact hs j
  let g : MvPolynomial (Fin (n + 1)) K := ∑ α ∈ f.support, MvPolynomial.monomial (h α) (f.coeff α)
  have hu : ∀ α : Fin (n + 1) →₀ ℕ, MvPolynomial.aeval (fun k => (u0 t k : R)) (MvPolynomial.monomial α (1 : K)) =
      ∏ i, (u0 t i : R) ^ α i := fun α => by
    rw [MvPolynomial.aeval_monomial, map_one, one_mul, Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
  have htm : ∀ α : Fin (n + 1) →₀ ℕ, MvPolynomial.aeval (fun k => (t k : R)) (MvPolynomial.monomial α (1 : K)) =
      ∏ i, (t i : R) ^ α i := fun α => by
    rw [MvPolynomial.aeval_monomial, map_one, one_mul, Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
  have hg : MvPolynomial.aeval (fun k => (t k : R)) g = (t 0 : R) ^ N * MvPolynomial.aeval (fun k => (u0 t k : R)) f := by
    conv_rhs => rw [← MvPolynomial.support_sum_monomial_coeff f]

    simp only [g, map_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun α hα => ?_
    rw [← mul_one (f.coeff α), ← smul_eq_mul, ← MvPolynomial.smul_monomial, ← MvPolynomial.smul_monomial,
      map_smul, map_smul, hu, htm, mul_smul_comm, infinityCoord_monomial_eq t N α (hdeg α hα)]
    rfl
  rw [hf, mul_zero] at hg
  have hg0 : g = 0 := ht (hg.trans (map_zero _).symm)
  ext β
  rw [MvPolynomial.coeff_zero]
  by_contra hβ
  have hβ' : β ∈ f.support := MvPolynomial.mem_support_iff.2 hβ
  have := congrArg (AddMonoidAlgebra.coeff · (h β)) hg0
  rw [MvPolynomial.coeff_zero, MvPolynomial.coeff_sum, Finset.sum_eq_single β] at this
  · rw [MvPolynomial.coeff_monomial, if_pos rfl] at this
    exact hβ this
  · intro α hα hne
    rw [MvPolynomial.coeff_monomial, if_neg (fun e => hne (hinj α hα β hβ' e))]
  · intro hn; exact absurd hβ' hn

theorem infinityCoord_localization (t : Fin (n + 1) → Rˣ) (ht : AlgebraicIndependent K fun k => (t k : R)) :
    Function.Injective (MvPolynomial.aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0))) :
      MvPolynomial (Fin (n + 1)) K →ₐ[K] torusS K t (Finset.univ.erase 0)) ∧
    ∀ a : torusS K t (Finset.univ.erase 0), ∃ f g : MvPolynomial (Fin (n + 1)) K,
      IsUnit (MvPolynomial.aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0))) g) ∧
      a * MvPolynomial.aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0))) g =
        MvPolynomial.aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0))) f := by
  classical
  have hval : ∀ p : MvPolynomial (Fin (n + 1)) K,
      ((MvPolynomial.aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0))) p :
        torusS K t (Finset.univ.erase 0)) : R) = MvPolynomial.aeval (fun k => (u0 t k : R)) p := fun p =>
    DFunLike.congr_fun (MvPolynomial.comp_aeval (fun k => (⟨u0 t k, infinityCoord_mem_torus t k⟩ : torusS K t (Finset.univ.erase 0)))
      (torusS K t (Finset.univ.erase 0)).val) p
  refine ⟨fun p q hpq => infinityCoord_algebraicIndependent t ht (by rw [← hval, ← hval, hpq]), ?_⟩
  have key : ∀ x ∈ Submodule.span K (tpow t '' expS (Finset.univ.erase (0 : Fin (n + 2)))),
      ∃ (f : MvPolynomial (Fin (n + 1)) K) (e : Fin n → ℕ),
        x * ∏ j, (u0 t j.succ : R) ^ e j = MvPolynomial.aeval (fun k => (u0 t k : R)) f := by
    intro x hx
    induction hx using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨m, hm, rfl⟩ := hx
      have hm' := (mem_exponentSet_zero_iff m).1 hm
      refine ⟨MvPolynomial.monomial (Finsupp.equivFunOnFinite.symm
          (Fin.cons (Int.toNat (-∑ k, m k)) fun j => Int.toNat (m j.succ) : Fin (n + 1) → ℕ)) 1,
        fun j => Int.toNat (-m j.succ), ?_⟩
      rw [MvPolynomial.aeval_monomial, map_one, one_mul, Finsupp.prod_fintype _ _ (fun _ => pow_zero _)]
      have e1 : ∏ j : Fin n, (u0 t j.succ : R) ^ Int.toNat (-m j.succ) =
          (((∏ i, u0 t i ^ (Fin.cons 0 (fun j => Int.toNat (-m j.succ)) : Fin (n + 1) → ℕ) i : Rˣ)) : R) := by
        rw [Fin.prod_univ_succ]; simp
      have e2 : ∏ i, (u0 t i : R) ^ (Finsupp.equivFunOnFinite.symm
          (Fin.cons (Int.toNat (-∑ k, m k)) fun j => Int.toNat (m j.succ) : Fin (n + 1) → ℕ)) i =
          (((∏ i, u0 t i ^ (Fin.cons (Int.toNat (-∑ k, m k)) fun j => Int.toNat (m j.succ) : Fin (n + 1) → ℕ) i : Rˣ))
            : R) := by
        simp
      rw [e1, e2, infinityCoord_prod_pow, infinityCoord_prod_pow, ← CrystallineSemistableComparison.Pb.ra_tpow_add]
      congr 1
      have h1 : ∑ j : Fin n, ((Int.toNat (m j.succ) : ℕ) : ℤ) - ∑ j : Fin n, ((Int.toNat (-m j.succ) : ℕ) : ℤ) =
          ∑ j : Fin n, m j.succ := by
        rw [← Finset.sum_sub_distrib]; exact Finset.sum_congr rfl fun j _ => Int.toNat_sub_toNat_neg _
      have h2 : ∑ k, m k = m 0 + ∑ j : Fin n, m j.succ := Fin.sum_univ_succ _
      have h4 : ((Int.toNat (-∑ k, m k) : ℕ) : ℤ) = -∑ k, m k := Int.toNat_of_nonneg (by linarith)
      funext i
      induction i using Fin.cases with
      | zero =>
        rw [h2] at h4
        simp only [infinityExponent, Fin.sum_univ_succ, Fin.cons_zero, Fin.cons_succ, Pi.add_apply]
        push_cast
        linarith
      | succ j =>
        simp only [infinityExponent, Fin.cons_succ, Pi.add_apply]
        omega
    | zero => exact ⟨0, 0, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨f1, e1, h1⟩ := hx
      obtain ⟨f2, e2, h2⟩ := hy
      refine ⟨f1 * ∏ j : Fin n, MvPolynomial.X j.succ ^ e2 j + f2 * ∏ j : Fin n, MvPolynomial.X j.succ ^ e1 j,
        e1 + e2, ?_⟩
      simp only [map_add (f := _), map_mul, map_prod, map_pow, MvPolynomial.aeval_X, Pi.add_apply, pow_add,
        Finset.prod_mul_distrib]
      rw [← h1, ← h2]; ring
    | smul c x _ hx =>
      obtain ⟨f, e, h⟩ := hx
      exact ⟨c • f, e, by rw [map_smul, ← h, smul_mul_assoc]⟩
  intro a
  obtain ⟨f, e, h⟩ := key a.1 (torusS_le_span t _ a.2)
  refine ⟨f, ∏ j : Fin n, MvPolynomial.X j.succ ^ e j, ?_, ?_⟩
  · rw [map_prod]
    refine Finset.prod_induction _ IsUnit (fun _ _ => IsUnit.mul) isUnit_one (fun j _ => ?_)
    rw [map_pow, MvPolynomial.aeval_X]
    refine IsUnit.pow _ (IsUnit.of_mul_eq_one ⟨_, infinityCoord_inv_mem t j⟩ (Subtype.ext ?_))
    simp
  · apply Subtype.ext
    rw [Subalgebra.coe_mul, hval, hval, ← h]
    simp [map_prod]

theorem infinityCoord_span_residue (t : Fin (n + 1) → Rˣ) :
    ∀ a ∈ torusS K t (Finset.univ.erase 0), (((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) * a ∈
      Submodule.span K (tpow t '' {m | ∑ k, m k < -((n : ℤ) + 1)}) := by
  intro a ha
  have hc : (((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) = tpow t (Pi.single 0 (-((n : ℤ) + 2))) := by
    rw [tpow_single, ← Units.val_pow_eq_pow_val]
    congr 1
  have key : Submodule.span K (tpow t '' expS (Finset.univ.erase (0 : Fin (n + 2)))) ≤
      (Submodule.span K (tpow t '' {m | ∑ k, m k < -((n : ℤ) + 1)})).comap
        (LinearMap.mulLeft K ((((t 0)⁻¹ : Rˣ) : R) ^ (n + 2))) := by
    refine Submodule.span_le.2 ?_
    rintro _ ⟨m, hm, rfl⟩
    have hm' := (mem_exponentSet_zero_iff m).1 hm
    refine Submodule.subset_span ⟨m + Pi.single 0 (-((n : ℤ) + 2)), ?_, ?_⟩
    · simp only [Set.mem_ofPred_eq, Pi.add_apply, Finset.sum_add_distrib]
      simp
      linarith
    · rw [CrystallineSemistableComparison.Pb.ra_tpow_add, ← hc, LinearMap.mulLeft_apply, mul_comm]
  exact key (torusS_le_span t _ ha)

theorem infinityCoord_span_residue_ne (t : Fin (n + 1) → Rˣ) :
    ∀ a ∈ torusS K t (Finset.univ.erase 0), (((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) * a ∈
      Submodule.span K (tpow t '' {m | m ≠ fun _ => -1}) := by
  intro a ha
  refine Submodule.span_mono (Set.image_mono ?_) (infinityCoord_span_residue t a ha)
  intro m hm heq
  subst heq
  simp at hm

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.InfinityCoordAlgebraicIndependent =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidResPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidResPf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Basis.Basic\npublic import Mathlib.LinearAlgebra.Basis.VectorSpace\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

variable {K : Type} [Field K] {R : Type} [CommRing R] [Algebra K R] {n : ℕ}

theorem resRPf_tpow_add (t : Fin (n + 1) → Rˣ) (m m' : Fin (n + 1) → ℤ) :
    tpow t (m + m') = tpow t m * tpow t m' := by
  simp only [tpow, Pi.add_apply, zpow_add, Finset.prod_mul_distrib, Units.val_mul]

theorem resRPf_tpow_negOne (t : Fin (n + 1) → Rˣ) :
    tpow t (fun _ => -1) = (((∏ k, t k)⁻¹ : Rˣ) : R) := by
  unfold tpow
  congr 1
  simp only [zpow_neg_one, Finset.prod_inv_distrib]

theorem resRPf_tpow_single (t : Fin (n + 1) → Rˣ) (k : Fin (n + 1)) :
    tpow t (-Pi.single k (1 : ℤ)) = (((t k)⁻¹ : Rˣ) : R) := by
  unfold tpow
  congr 1
  rw [Finset.prod_eq_single k]
  · simp
  · intro j _ hj
    simp [hj]
  · intro h
    exact absurd (Finset.mem_univ k) h

theorem resRPf_linInd (t : Fin (n + 1) → Rˣ) (ht : AlgebraicIndependent K fun k => (t k : R)) :
    LinearIndependent K (tpow t) := by
  classical
  rw [linearIndependent_iff']
  intro s g hg m0 hm0
  set N : ℤ := ∑ m ∈ s, ∑ j, |m j| with hN
  have hbound : ∀ m ∈ s, ∀ j, 0 ≤ m j + N := by
    intro m hm j
    have h1 : |m j| ≤ ∑ j, |m j| :=
      Finset.single_le_sum (f := fun j => |m j|) (fun j _ => abs_nonneg _) (Finset.mem_univ j)
    have h2 : ∑ j, |m j| ≤ N :=
      Finset.single_le_sum (f := fun m : Fin (n + 1) → ℤ => ∑ j, |m j|)
        (fun m _ => Finset.sum_nonneg (fun j _ => abs_nonneg _)) hm
    have h3 := neg_abs_le (m j)
    linarith
  let e : (Fin (n + 1) → ℤ) → (Fin (n + 1) →₀ ℕ) :=
    fun m => Finsupp.equivFunOnFinite.symm (fun j => (m j + N).toNat)
  have he : ∀ m ∈ s, tpow t (m + fun _ => N) =
      MvPolynomial.aeval (fun k => (t k : R)) (MvPolynomial.monomial (e m) (1 : K)) := by
    intro m hm
    rw [MvPolynomial.aeval_monomial, map_one, one_mul, Finsupp.prod_fintype _ _ (fun i => pow_zero _)]
    unfold tpow
    rw [Units.coe_prod]
    refine Finset.prod_congr rfl (fun j _ => ?_)
    simp only [e, Finsupp.coe_equivFunOnFinite_symm, Pi.add_apply]
    conv_lhs => rw [← Int.toNat_of_nonneg (hbound m hm j)]
    rw [zpow_natCast, Units.val_pow_eq_pow_val]
  have hmul : ∑ m ∈ s, g m • tpow t (m + fun _ => N) = 0 := by
    simp_rw [resRPf_tpow_add, ← smul_mul_assoc]
    rw [← Finset.sum_mul, hg, zero_mul]
  have hpoly : ∑ m ∈ s, MvPolynomial.monomial (e m) (g m) = 0 := by
    apply algebraicIndependent_iff_injective_aeval.1 ht

    rw [map_sum, map_zero, ← hmul]
    refine Finset.sum_congr rfl (fun m hm => ?_)
    rw [he m hm]
    simp only [MvPolynomial.aeval_monomial, map_one, one_mul, Algebra.smul_def]
  have hinj : ∀ m ∈ s, ∀ m' ∈ s, e m = e m' → m = m' := by
    intro m hm m' hm' h
    funext j
    have h0 := DFunLike.congr_fun h j
    simp only [e, Finsupp.coe_equivFunOnFinite_symm] at h0
    have h1 := hbound m hm j
    have h2 := hbound m' hm' j
    omega
  have hc := congrArg (AddMonoidAlgebra.coeff · (e m0)) hpoly
  rw [MvPolynomial.coeff_sum, MvPolynomial.coeff_zero, Finset.sum_eq_single m0] at hc
  · simpa [MvPolynomial.coeff_monomial] using hc
  · intro m hm hne
    rw [MvPolynomial.coeff_monomial, if_neg (fun h => hne (hinj m hm m0 hm0 h))]
  · intro h
    exact absurd hm0 h

def resRPfLogD (D : Derivation K R R) : Rˣ →* Multiplicative R where
  toFun u := Multiplicative.ofAdd ((((u⁻¹ : Rˣ)) : R) * D (u : R))
  map_one' := by simp
  map_mul' u v := by
    rw [← ofAdd_add]
    congr 1
    have hu : (((u⁻¹ : Rˣ)) : R) * u = 1 := Units.inv_mul u
    have hv : (((v⁻¹ : Rˣ)) : R) * v = 1 := Units.inv_mul v
    simp only [mul_inv_rev, Units.val_mul, Derivation.leibniz, smul_eq_mul]
    linear_combination ((((v⁻¹ : Rˣ)) : R) * D (v : R)) * hu + ((((u⁻¹ : Rˣ)) : R) * D (u : R)) * hv

theorem resRPfLogD_apply (D : Derivation K R R) (u : Rˣ) :
    Multiplicative.toAdd (resRPfLogD D u) = (((u⁻¹ : Rˣ)) : R) * D (u : R) := rfl

theorem resRPf_logD (t : Fin (n + 1) → Rˣ) (D : Derivation K R R) (m : Fin (n + 1) → ℤ) :
    (((∏ j, t j ^ m j)⁻¹ : Rˣ) : R) * D (tpow t m) =
      ∑ j, m j • ((((t j)⁻¹ : Rˣ) : R) * D (t j : R)) := by
  have h := congrArg Multiplicative.toAdd (map_prod (resRPfLogD D) (fun j => t j ^ m j) Finset.univ)
  simp only [map_zpow, toAdd_prod, toAdd_zpow, resRPfLogD_apply] at h
  exact h

theorem resRPf_Dk (t : Fin (n + 1) → Rˣ) (D : Fin (n + 1) → Derivation K R R)
    (hD : ∀ k j, D k (t j) = if k = j then 1 else 0) (k : Fin (n + 1)) (m : Fin (n + 1) → ℤ) :
    D k (tpow t m) = m k • tpow t (m - Pi.single k (1 : ℤ)) := by
  have h := resRPf_logD t (D k) m
  simp only [hD, mul_ite, mul_one, mul_zero, smul_ite, smul_zero, Finset.sum_ite_eq, Finset.mem_univ,
    if_true] at h
  have hU : tpow t m * (((∏ j, t j ^ m j)⁻¹ : Rˣ) : R) = 1 := Units.mul_inv _
  calc D k (tpow t m) = tpow t m * ((((∏ j, t j ^ m j)⁻¹ : Rˣ) : R) * D k (tpow t m)) := by
        rw [← mul_assoc, hU, one_mul]
    _ = tpow t m * (m k • (((t k)⁻¹ : Rˣ) : R)) := by rw [h]
    _ = m k • tpow t (m - Pi.single k (1 : ℤ)) := by
        rw [mul_smul_comm, sub_eq_add_neg, resRPf_tpow_add, resRPf_tpow_single]

theorem res_R_pf (t : Fin (n + 1) → Rˣ) (ht : AlgebraicIndependent K fun k => (t k : R))
    (D : Fin (n + 1) → Derivation K R R) (hD : ∀ k j, D k (t j) = if k = j then 1 else 0) :
    ∃ res : R →ₗ[K] K, res (((∏ k, t k)⁻¹ : Rˣ) : R) = 1 ∧
      (∀ x ∈ Submodule.span K (tpow t '' {m | m ≠ fun _ => -1}), res x = 0) ∧
      ∀ k, ∀ x ∈ torusS K t Finset.univ, res (D k x) = 0 := by
  classical
  have hli := resRPf_linInd (K := K) t ht
  obtain ⟨res, hres⟩ := LinearMap.exists_extend ((Module.Basis.span hli).coord (fun _ => -1))
  have hval : ∀ m, res (tpow t m) = if m = (fun _ => -1) then 1 else 0 := by
    intro m
    have h1 : tpow t m = ((Module.Basis.span hli m : Submodule.span K (Set.range (tpow t))) : R) :=
      congrArg Subtype.val (Module.Basis.span_apply hli m).symm
    have h2 := LinearMap.congr_fun hres (Module.Basis.span hli m)
    rw [LinearMap.comp_apply, Submodule.subtype_apply] at h2
    rw [h1, h2, Module.Basis.coord_apply, Module.Basis.repr_self, Finsupp.single_apply]
  refine ⟨res, ?_, ?_, ?_⟩
  · rw [← resRPf_tpow_negOne, hval, if_pos rfl]
  · intro x hx
    have hle : Submodule.span K (tpow t '' {m | m ≠ fun _ => -1}) ≤ LinearMap.ker res := by
      rw [Submodule.span_le]
      rintro _ ⟨m, hm, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, hval, if_neg hm]
    exact hle hx
  · intro k x hx
    have hx' : x ∈ Submodule.span K (Set.range (tpow t)) := by
      have h1 : x ∈ Subalgebra.toSubmodule (torusS K t Finset.univ) := hx
      rw [torusS, Algebra.adjoin_eq_span] at h1
      refine Submodule.span_mono ?_ h1
      intro y hy
      let M : Submonoid R :=
        { carrier := Set.range (tpow t)
          mul_mem' := by
            rintro _ _ ⟨a, rfl⟩ ⟨b, rfl⟩
            exact ⟨a + b, resRPf_tpow_add t a b⟩
          one_mem' := ⟨0, by simp [tpow]⟩ }
      exact (Submonoid.closure_le (S := M)).2 (Set.image_subset_range _ _) hy
    have hker : Submodule.span K (Set.range (tpow t)) ≤ LinearMap.ker (res ∘ₗ (D k : R →ₗ[K] R)) := by
      rw [Submodule.span_le]
      rintro _ ⟨m, rfl⟩
      rw [SetLike.mem_coe, LinearMap.mem_ker, LinearMap.comp_apply, Derivation.coeFn_coe,
        resRPf_Dk t D hD k m, map_zsmul, hval]
      by_cases h : m - Pi.single k (1 : ℤ) = fun _ => -1
      · have h' := congr_fun h k
        simp only [Pi.sub_apply, Pi.single_eq_same] at h'
        have h0 : m k = 0 := by omega
        rw [h0, zero_smul]
      · rw [if_neg h, smul_zero]
    have h2 := hker hx'
    rwa [LinearMap.mem_ker, LinearMap.comp_apply, Derivation.coeFn_coe] at h2

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidResPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResR =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResR", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidResPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResR =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidStmt =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidStmt", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs\npublic import Mathlib.RingTheory.Adjoin.FG\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ChartExt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.InfinityCoordAlgebraicIndependent\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResR\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TorusMemFldF\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.TraceChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RaTpowSinglePow\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

namespace CrystallineSemistableComparison.Pb

theorem resid_alg : ∀ (K : Type) [Field K] [CharZero K] (n : ℕ) (R : Type) [CommRing R] [IsDomain R] [Algebra K R]
    (t : Fin (n + 1) → Rˣ), AlgebraicIndependent K (fun k => (t k : R)) →
    ∀ (D : Fin (n + 1) → Derivation K R R), (∀ k j, D k (t j) = if k = j then 1 else 0) →
    ∀ (B : Finset (Fin (n + 2)) → Subalgebra K R), (∀ S, S.Nonempty → torusS K t S ≤ B S) → (∀ S, S.Nonempty → (B S).FG) →
    (∀ S, S.Nonempty → ∀ b ∈ B S, IsIntegral (torusS K t S) b) → (∀ i, B (Finset.univ.erase i) ≤ B Finset.univ) →
    (∀ r : R, ∃ b ∈ B Finset.univ, ∃ b' ∈ B Finset.univ, b' ≠ 0 ∧ r * b' = b) →
    ∀ (ω : Fin (n + 2) → R) (η : Fin (n + 1) → R), (∀ i, ω i ∈ jacS (B (Finset.univ.erase i)) D id) →
      (∀ k, η k ∈ jacS (B Finset.univ) D (Fin.succAbove k)) →
      ((∏ k, t k)⁻¹ : Rˣ) ≠ (∑ i, ω i + ∑ k : Fin (n + 1), (-1 : R) ^ (k : ℕ) * D k (η k) : R) :=
  by
  intro K _ _ n R _ _ _ t ht D hD B hTB hFG hInt hMono hFrac ω η hω hη heq
  have hne : ∀ i : Fin (n + 2), (Finset.univ.erase i).Nonempty := fun i => by
    rw [← Finset.card_pos, Finset.card_erase_of_mem (Finset.mem_univ _)]
    simp
  have hune : (Finset.univ : Finset (Fin (n + 2))).Nonempty := Finset.univ_nonempty
  have hfin : FiniteDimensional (fldF K t) (FractionRing R) :=
    _root_.CrystallineSemistableComparison.Pb.fldF_findim_pf t (B Finset.univ) (hTB _ hune) (hFG _ hune) (hInt _ hune) hFrac
  obtain ⟨res, hres1, hres0, hresD⟩ := _root_.CrystallineSemistableComparison.Pb.res_R_pf t ht D hD

  let Φ : R →+ FractionRing R :=
    ((algebraMap (fldF K t) (FractionRing R)).toAddMonoidHom.comp
      (Algebra.trace (fldF K t) (FractionRing R)).toAddMonoidHom).comp
      (algebraMap R (FractionRing R)).toAddMonoidHom
  have hΦ : ∀ x, Φ x = algebraMap (fldF K t) (FractionRing R)
      (Algebra.trace (fldF K t) (FractionRing R) (algebraMap R (FractionRing R) x)) := fun _ => rfl

  have hchart : ∀ i : Fin (n + 2), ∃ B' : Subalgebra K R, B (Finset.univ.erase i) ≤ B' ∧
      torusS K t (Finset.univ.erase i) ≤ B' ∧ B'.FG ∧
      (∀ b ∈ B', IsIntegral (torusS K t (Finset.univ.erase i)) b) ∧
      ∀ r : R, ∃ b ∈ B', ∃ b' ∈ B', b' ≠ 0 ∧ r * b' = b := fun i => by
    obtain ⟨w, hwA, hw0, hscale⟩ := torus_scale (K := K) t i
    obtain ⟨B', hB', hFG', hInt', hFrac'⟩ := _root_.CrystallineSemistableComparison.Pb.chart_ext_pf (torusS K t (Finset.univ.erase i)) (torusS K t Finset.univ)
      (B (Finset.univ.erase i)) (B Finset.univ) (torusS_le_univ t _) (hTB _ (hne i)) (hMono i) (hTB _ hune)
      (hFG _ (hne i)) (hInt _ (hne i)) (hFG _ hune) (hInt _ hune) hFrac w hwA hw0 hscale
    exact ⟨B', hB', (hTB _ (hne i)).trans hB', hFG', hInt', hFrac'⟩

  have hω' : ∀ i, ∃ a : R, Φ (ω i) = algebraMap R (FractionRing R) a ∧ res a = 0 := by
    intro i
    obtain ⟨B', hB', hTB', hFG', hInt', hFrac'⟩ := hchart i
    induction i using Fin.cases with
    | zero =>
      obtain ⟨y', hy', hyeq⟩ := jacobian_infinityDerivation t D (B (Finset.univ.erase 0)) (ω 0) (hω 0)
      obtain ⟨hinj, hloc⟩ := infinityCoord_localization t ht
      obtain ⟨a', ha'S, ha'⟩ := trace_chart t (Finset.univ.erase 0) (fun k => ⟨u0 t k, infinityCoord_mem_torus t k⟩) hinj hloc
        (torusS_frac t _ (hne 0)) B' hTB' hFG' hInt' hFrac' (infinityDerivation t D) (fun k j => infinityDerivation_coord t D hD k j) id
        Function.injective_id y' (jacS_mono _ _ hB' _ _ hy')
      set c : R := -(((t 0)⁻¹ : Rˣ) : R) ^ (n + 2) with hc
      have hcT : c ∈ torusS K t Finset.univ := neg_mem (pow_mem (inv_mem_univ t 0) _)
      let cF : fldF K t := ⟨algebraMap R (FractionRing R) c, torus_mem_fldF t Finset.univ c hcT⟩
      refine ⟨c * a', ?_, ?_⟩
      · rw [hΦ, hyeq, RingHom.map_mul (algebraMap R (FractionRing R)) c y']
        have h1 : algebraMap R (FractionRing R) c * algebraMap R (FractionRing R) y' =
            cF • algebraMap R (FractionRing R) y' := rfl
        rw [h1, LinearMap.map_smul, smul_eq_mul, RingHom.map_mul, ha', RingHom.map_mul]
        rfl
      · rw [hc, neg_mul, map_neg, hres0 _ (infinityCoord_span_residue_ne t a' ha'S), neg_zero]
    | succ k =>
      have h0 : (0 : Fin (n + 2)) ∈ Finset.univ.erase k.succ :=
        Finset.mem_erase.mpr ⟨(Fin.succ_ne_zero k).symm, Finset.mem_univ _⟩
      obtain ⟨hinj, hloc⟩ := torusS_loc t ht _ h0
      obtain ⟨a, haS, ha⟩ := trace_chart t (Finset.univ.erase k.succ)
        (fun k => ⟨t k, t_mem_torusS t _ h0 k⟩) hinj hloc
        (torusS_frac t _ (hne _)) B' hTB' hFG' hInt' hFrac' D (fun k j => hD k j) id
        Function.injective_id (ω k.succ) (jacS_mono _ _ hB' _ _ (hω k.succ))
      exact ⟨a, ha, hres0 _ (torusS_succ_span t k a haS)⟩

  have hη' : ∀ k, ∃ b : R, Φ (D k (η k)) = algebraMap R (FractionRing R) b ∧ res b = 0 := by
    intro k
    obtain ⟨hinj, hloc⟩ := torusS_loc t ht Finset.univ (Finset.mem_univ 0)
    obtain ⟨b, hbT, hb⟩ := trace_chart t Finset.univ (fun k => ⟨t k, t_mem_torusS t _ (Finset.mem_univ 0) k⟩)
      hinj hloc (torusS_frac t _ hune) (B Finset.univ) (hTB _ hune) (hFG _ hune) (hInt _ hune) hFrac D
      (fun k j => hD k j) (Fin.succAbove k) Fin.succAbove_right_injective (η k) (hη k)
    have hDc : ∀ j, D k (t j : R) ∈ Set.range (algebraMap K R) := fun j => by
      rw [hD]
      split_ifs
      · exact ⟨1, map_one _⟩
      · exact ⟨0, map_zero _⟩
    exact ⟨D k b, trace_deriv t (D k) hDc (η k) b hbT hb, hresD k b hbT⟩
  choose a ha using hω'
  choose b hb using hη'

  have : Module.Free (fldF K t) (FractionRing R) := Module.Free.of_divisionRing _ _
  have hp : (((∏ k, t k)⁻¹ : Rˣ) : R) ∈ torusS K t Finset.univ := prod_inv_mem t
  let pF : fldF K t := ⟨algebraMap R (FractionRing R) (((∏ k, t k)⁻¹ : Rˣ) : R), torus_mem_fldF t _ _ hp⟩
  have hsign : ∀ (k : Fin (n + 1)) (x : R), (-1 : R) ^ (k : ℕ) * x = ((-1 : ℤ) ^ (k : ℕ)) • x := fun k x => by
    rw [zsmul_eq_mul]
    push_cast
    rfl
  have hrel : Module.finrank (fldF K t) (FractionRing R) • (((∏ k, t k)⁻¹ : Rˣ) : R) =
      ∑ i, a i + ∑ k : Fin (n + 1), ((-1 : ℤ) ^ (k : ℕ)) • b k := by
    apply IsFractionRing.injective R (FractionRing R)
    have h1 := congrArg Φ heq

    simp only [map_add (f := _), map_sum, hsign] at h1

    rw [map_nsmul, map_add (f := _), map_sum, map_sum]
    simp only [map_zsmul]
    simp only [map_zsmul, fun i => (ha i).1, fun k => (hb k).1] at h1
    rw [← h1, hΦ]
    have h2 : algebraMap R (FractionRing R) (((∏ k, t k)⁻¹ : Rˣ) : R) =
        algebraMap (fldF K t) (FractionRing R) pF := rfl
    rw [h2, Algebra.trace_algebraMap, map_nsmul]
  have hres := congrArg res hrel

  rw [map_nsmul, hres1, map_add (f := _), map_sum, map_sum] at hres
  simp only [map_zsmul, fun i => (ha i).2, fun k => (hb k).2, smul_zero, Finset.sum_const_zero, add_zero,
    nsmul_eq_mul, mul_one] at hres
  rw [Nat.cast_eq_zero] at hres
  exact (Module.finrank_pos (R := fldF K t) (M := FractionRing R)).ne' hres

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidStmt =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.LocExact\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowKNeZeroOf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ResidStmt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry

namespace CrystallineSemistableComparison.Pb

theorem powK_ne_zero_main {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [ConnectedSpace X] (d : ℕ) [SmoothOfRelativeDimension d q] (D : E.LineData X) (hD : IsTautologicalLine q D) (c : HdR q 2)
    (hc : IsFirstChernDeRham q D c) : powK q c d ≠ 0 :=
  powK_ne_zero_of (by intro K _ _ X q _ n _ N i hci hiq; exact geo_setup q n N i hci hiq) resid_alg
    (by intro K _ X N _ q D i hD m e y hy s Λ; exact firstChern_local_exact q D i hD y hy s Λ) q d D hD c hc

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop =====
