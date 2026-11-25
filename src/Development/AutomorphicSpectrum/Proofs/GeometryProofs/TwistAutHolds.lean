module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt
public import Mathlib.Algebra.Module.Projective
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TwistedModuleFiniteProjectiveRank
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.SabMapId
public import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.Imports
public import Development.AutomorphicSpectrum.Statements.GeometryStatements.PadicIntegersHenselianFiniteResidue
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistOkAll
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
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Tactic.Linter.Style
import Mathlib.Topology.Sheaves.Init
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.Spread

section
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem moduli_isReduced : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H)
    (l : Level H) (Xo : Moduli D l), IsReduced Xo.X := by
  intro E _ _ _ H D l Xo
  have := Xo.smooth
  have : Smooth Xo.s := SmoothOfRelativeDimension.smooth D.dim _
  exact isReduced_of_smooth Xo.s

end GlobalTheory.CompanionTheory.Ar
end


-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliTwistAutomorphism, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ObjMapComp, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSectionLevel, Development.WeilBound.CoreStatements.HomogeneousNonvanishing.TwBack, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistInverseIso, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonempty, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonemptyStatement, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistObjMapFunctorial, Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistAutHolds

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliTwistAutomorphism =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliTwistAutomorphism", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliIsReduced\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem moduli_twist_phi : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H)
    (l : Level H) (Xo : Moduli D l) (g : HostAut H) (a : TwIso D g) (h : TwOK Xo.univ g a),
    ∃ Φ : Xo.X ⟶ Xo.X, Φ ≫ Xo.s = Xo.s ∧ Nonempty (ObjMap (twistObj Xo.univ g a h) Xo.univ Φ) := by
  intro E _ _ _ H D l Xo g a h
  obtain ⟨f, ⟨hf, ho⟩, -⟩ :=
    Xo.rep Xo.X Xo.s (moduli_isReduced E H D l Xo) (twistObj Xo.univ g a h)
  exact ⟨f, hf, ho⟩

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliTwistAutomorphism =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ObjMapComp =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ObjMapComp", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PullCub\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.SabComp\nimport Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem objMap_exists_comp : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (B : Type) [CommRing B] (b : Base l B) (S : Scheme.{0}) (s : S ⟶ Sp B) (S' S'' : Scheme.{0}) (s' : S' ⟶ Sp B) (s'' : S'' ⟶ Sp B) (o : Obj D l b s) (o' : Obj D l b s') (o'' : Obj D l b s'') (f : S' ⟶ S) (f' : S'' ⟶ S') (m : ObjMap o' o f) (m' : ObjMap o'' o' f'), ∃ n : ObjMap o'' o (f' ≫ f), n.toSABMap.φ = m'.toSABMap.φ ≫ m.toSABMap.φ := by
  intro E _ _ _ H D l B _ b S s S' S'' s' s'' o o' o'' f f' m m'
  obtain ⟨n, hn⟩ := sabComp pullCubComp E H S S' S'' o.t o'.t o''.t f f' m.toSABMap m'.toSABMap
  have hn' : n.cm.F = m'.cm.F ≫ m.cm.F := hn
  refine ⟨{ toSABMap := n, eta := fun x => ?_, etaA := fun x => ?_ }, hn⟩
  · rw [hn', ← Category.assoc, m'.eta, Category.assoc, m.eta, Category.assoc]
  · rw [hn', ← Category.assoc, m'.etaA, Category.assoc, m.etaA, Category.assoc]

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ObjMapComp =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSectionLevel =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSectionLevel", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.ProIsoAt\npublic import Mathlib.Algebra.Module.Projective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open NumberField TensorProduct GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

variable {O : Type} [CommRing O] {L L' : Type} [AddCommGroup L] [Module O L] [AddCommGroup L']
  [Module O L'] {B : LinearMap.BilinForm ℤ L} {B' : LinearMap.BilinForm ℤ L'}

theorem ProIso.exists_section_level [Module.Projective O L'] (f : ProIso O B B') (n : ℕ) :
    ∃ h : L' →ₗ[O] L, 0 < n → ∀ y, ∃ e, f.a n (h y) = y + n • e := by
  by_cases hn : 0 < n
  · let Ψ : L × L' →ₗ[O] L' := (f.a n).coprod (n • LinearMap.id)
    have hΨ : ∀ p : L × L', Ψ p = f.a n p.1 + n • p.2 := fun p => by
      simp only [Ψ, LinearMap.coprod_apply, LinearMap.smul_apply, LinearMap.id_apply]
    have hsurj : Function.Surjective Ψ := fun y => by
      obtain ⟨x, e, hxe⟩ := f.3 n hn y
      exact ⟨(x, e), by rw [hΨ, hxe]⟩
    obtain ⟨s, hs⟩ := Module.projective_lifting_property Ψ LinearMap.id hsurj
    refine ⟨LinearMap.fst O L L' ∘ₗ s, fun _ y => ⟨-(s y).2, ?_⟩⟩
    have hy := LinearMap.congr_fun hs y
    rw [LinearMap.comp_apply, hΨ, LinearMap.id_apply] at hy
    rw [LinearMap.comp_apply, LinearMap.fst_apply, smul_neg, ← sub_eq_add_neg,
      eq_sub_iff_add_eq, hy]
  · exact ⟨0, fun h => absurd h hn⟩

theorem ProIso.congr_of_map_congr (f : ProIso O B B') {n : ℕ} (hn : 0 < n) {x x' : L} {e : L'}
    (h : f.a n x = f.a n x' + n • e) : ∃ d, x = x' + n • d := by
  obtain ⟨d, hd⟩ := (f.inj n hn (x - x')).1 ⟨e, by rw [map_sub, h]; abel⟩
  exact ⟨d, by rw [← hd]; abel⟩

theorem ProIso.exists_isInv (O : Type) [CommRing O] (L L' : Type) [AddCommGroup L] [Module O L]
    [AddCommGroup L'] [Module O L'] (B : LinearMap.BilinForm ℤ L) (B' : LinearMap.BilinForm ℤ L')
    [Module.Projective O L'] (f : ProIso O B B') : ∃ g : ProIso O B' B, f.IsInv g := by
  choose h hh using fun n => GlobalTheory.CompanionTheory.Ar.ProIso.exists_section_level f n
  have hA : ∀ n, 0 < n → ∀ x : L, ∃ d, h n (f.a n x) = x + n • d := fun n hn x => by
    obtain ⟨e, he⟩ := hh n hn (f.a n x)
    exact GlobalTheory.CompanionTheory.Ar.ProIso.congr_of_map_congr f hn he
  refine ⟨⟨h, fun n hn y => ⟨?_, ?_⟩, fun n hn x => ?_, fun n hn x y => ?_,
    fun n m hn hm y => ?_⟩, ?_⟩
  · rintro ⟨z, hz⟩
    obtain ⟨e, he⟩ := hh n hn y
    rw [hz, map_nsmul] at he
    exact ⟨f.a n z - e, by rw [smul_sub, he]; abel⟩
  · rintro ⟨z, rfl⟩
    exact ⟨h n z, map_nsmul _ _ _⟩
  · obtain ⟨d, hd⟩ := hA n hn x
    exact ⟨f.a n x, -d, by rw [hd, smul_neg]; abel⟩
  · obtain ⟨e₁, he₁⟩ := hh n hn x
    obtain ⟨e₂, he₂⟩ := hh n hn y
    have d₁ := f.4 n hn (h n x) (h n y)
    have d₂ : (n : ℤ) ∣ B' (f.a n (h n x)) (f.a n (h n y)) - B' x y := by
      rw [he₁, he₂]
      simp only [map_add (f := _), map_nsmul, LinearMap.add_apply, LinearMap.smul_apply, nsmul_eq_mul]
      exact ⟨B' x e₂ + B' e₁ y + n * B' e₁ e₂, by ring⟩
    have key : B (h n x) (h n y) - B' x y =
        (B' (f.a n (h n x)) (f.a n (h n y)) - B' x y) -
          (B' (f.a n (h n x)) (f.a n (h n y)) - B (h n x) (h n y)) := by ring
    rw [key]
    exact dvd_sub d₂ d₁
  · obtain ⟨e₁, he₁⟩ := hh (n * m) (Nat.mul_pos hn hm) y
    obtain ⟨e₂, he₂⟩ := f.5 n m hn hm (h (n * m) y)
    obtain ⟨e₃, he₃⟩ := hh n hn y
    refine GlobalTheory.CompanionTheory.Ar.ProIso.congr_of_map_congr f hn
      (e := m • e₁ - e₂ - e₃) ?_
    have h12 : f.a n (h (n * m) y) = y + (n * m) • e₁ - n • e₂ :=
      eq_sub_of_add_eq (he₂.symm.trans he₁)
    rw [h12, he₃, smul_sub, smul_sub, smul_smul]
    abel
  · show (∀ n, 0 < n → ∀ x : L, ∃ e, h n (f.a n x) = x + n • e) ∧
      ∀ n, 0 < n → ∀ y : L', ∃ e, f.a n (h n y) = y + n • e
    exact ⟨hA, hh⟩

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSectionLevel =====

-- ===== clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.TwBack =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.HomogeneousNonvanishing.TwBack", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.ExistsSectionLevel\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.TwistedModuleFiniteProjectiveRank\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.SabMapId\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace PositivityTheory.UnitarySelfGeneration

section
variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
  {B : Type} [CommRing B] {b : Base l B} {S : Scheme.{0}} {s : S ⟶ Sp B}

theorem tb_eta (o : Obj D l b s) (x e : D.La) : o.eta (x + l.M • e) = o.eta x := by
  have hM : (l.M : 𝓞 E) ∈ l.Mb := by
    have h := Ideal.mem_span_singleton_self (l.M : 𝓞 E)
    rw [← l.prod] at h
    exact Ideal.mul_le_left h
  rw [o.eta_add, o.eta_ker (l.M • e), _root_.mul_one]
  rw [← Nat.cast_smul_eq_nsmul (𝓞 E)]
  exact Submodule.smul_mem_smul hM trivial

theorem tb_etaA (o : Obj D l b s) (x e : D.La) : o.etaA (x + l.A • e) = o.etaA x := by
  rw [o.etaA_add, o.etaA_ker, _root_.mul_one]

theorem tb_map (t : SAB H S) (g g' : HostAut H) (h : ∀ a, g.s (g'.s a) = a) :
    ∃ m : SABMap (twistSAB (twistSAB t g) g') t (𝟙 S), m.φ = 𝟙 t.G.left := by
  obtain ⟨m, hm⟩ := _root_.GlobalTheory.CompanionTheory.Ar.exists_sabMap_id E H S t
  refine ⟨⟨m.cm, m.cart, m.base, fun a => ?_, m.lin⟩, hm⟩
  have := m.act a
  show (t.act.act (g.s (g'.s a))).left ≫ m.cm.F = _
  rw [h]
  exact this
end

theorem tw_back : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : HostAut H) (a : TwIso D g), ∃ a' : TwIso D g.symm, ∀ (l : Level H) (B : Type) [CommRing B] (b : Base l B) (S : Scheme.{0}) (s : S ⟶ Sp B) (o : Obj D l b s), (∀ (h : TwOK o g a) (h' : TwOK (twistObj o g a h) g.symm a'), Nonempty (ObjMap (twistObj (twistObj o g a h) g.symm a' h') o (𝟙 S))) ∧ ∀ (h : TwOK o g.symm a') (h' : TwOK (twistObj o g.symm a' h) g a), Nonempty (ObjMap (twistObj (twistObj o g.symm a' h) g a h') o (𝟙 S)) := by
  intro E _ _ _ H D g a
  have := D.fin
  have := D.proj
  obtain ⟨h1, h2, h3⟩ := _root_.GlobalTheory.CompanionTheory.Ar.TwModule.twMod_finite_projective_finrank (𝓞 E) g.s D.La
  obtain ⟨f, hf1, hf2⟩ := ProIso.exists_isInv (𝓞 E) D.La (TwMod g.s D.La) D.EF (twForm D g) a
  have k1 : ∀ c, g.s (g.symm.s c) = c := fun c => RingOfIntegers.ext (g.σ.apply_symm_apply c)
  have k2 : ∀ c, g.symm.s (g.s c) = c := fun c => RingOfIntegers.ext (g.σ.symm_apply_apply c)
  let a' : TwIso D g.symm :=
    { a := fun n =>
        { toFun := fun x => f.a n x
          map_add' := fun x y => (f.a n).map_add x y
          map_smul' := fun c x => by
            have e := (f.a n).map_smul (g.symm.s c) x
            refine Eq.trans (congrArg (f.a n) ?_) e
            show c • x = g.s (g.symm.s c) • x
            rw [k1] }
      inj := f.inj
      surj := f.surj
      isom := f.isom
      compat := f.compat }
  refine ⟨a', fun l B _ b S s o => ⟨fun h h' => ?_, fun h h' => ?_⟩⟩
  · have hM : 0 < l.M := lt_of_lt_of_le (by norm_num) l.three_le
    obtain ⟨m, hm⟩ := tb_map o.t g g.symm k1
    refine ⟨⟨m, fun x => ?_, fun x => ?_⟩⟩
    · obtain ⟨e, he⟩ := hf2 l.M hM x
      have : o.eta (a.a l.M (f.a l.M x)) = o.eta x := (congrArg o.eta he).trans (tb_eta o x e)
      exact (congrArg₂ (fun u v => u.left ≫ v) this hm).trans ((Category.comp_id _).trans (Category.id_comp _).symm)
    · obtain ⟨e, he⟩ := hf2 l.A l.A_pos x
      have : o.etaA (a.a l.A (f.a l.A x)) = o.etaA x := (congrArg o.etaA he).trans (tb_etaA o x e)
      exact (congrArg₂ (fun u v => u.left ≫ v) this hm).trans ((Category.comp_id _).trans (Category.id_comp _).symm)
  · have hM : 0 < l.M := lt_of_lt_of_le (by norm_num) l.three_le
    obtain ⟨m, hm⟩ := tb_map o.t g.symm g k2
    refine ⟨⟨m, fun x => ?_, fun x => ?_⟩⟩
    · obtain ⟨e, he⟩ := hf1 l.M hM x
      have : o.eta (f.a l.M (a.a l.M x)) = o.eta x := (congrArg o.eta he).trans (tb_eta o x e)
      exact (congrArg₂ (fun u v => u.left ≫ v) this hm).trans ((Category.comp_id _).trans (Category.id_comp _).symm)
    · obtain ⟨e, he⟩ := hf1 l.A l.A_pos x
      have : o.etaA (f.a l.A (a.a l.A x)) = o.etaA x := (congrArg o.etaA he).trans (tb_etaA o x e)
      exact (congrArg₂ (fun u v => u.left ≫ v) this hm).trans ((Category.comp_id _).trans (Category.id_comp _).symm)

end PositivityTheory.UnitarySelfGeneration
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.HomogeneousNonvanishing.TwBack =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistInverseIso =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistInverseIso", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.TwBack\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem twBack : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : HostAut H) (a : TwIso D g), ∃ a' : TwIso D g.symm, ∀ (l : Level H) (B : Type) [CommRing B] (b : Base l B) (S : Scheme.{0}) (s : S ⟶ Sp B) (o : Obj D l b s), (∀ (h : TwOK o g a) (h' : TwOK (twistObj o g a h) g.symm a'), Nonempty (ObjMap (twistObj (twistObj o g a h) g.symm a' h') o (𝟙 S))) ∧ ∀ (h : TwOK o g.symm a') (h' : TwOK (twistObj o g.symm a' h) g a), Nonempty (ObjMap (twistObj (twistObj o g.symm a' h) g a h') o (𝟙 S)) :=
  @PositivityTheory.UnitarySelfGeneration.tw_back

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistInverseIso =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonempty =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonempty", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.WeilBound.CoreStatements.HomogeneousNonvanishing.Imports\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem tw_iso_nonempty : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : HostAut H), Nonempty (TwIso D g) :=
  PositivityTheory.UnitarySelfGeneration.tw_iso

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonempty =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonemptyStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonemptyStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonempty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

theorem _root_.GlobalTheory.T.twist_iso_nonempty : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (g : HostAut H), Nonempty (TwIso D g) := by
  first | exact @GlobalTheory.CompanionTheory.Ar.tw_iso_nonempty
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonemptyStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistObjMapFunctorial =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistObjMapFunctorial", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

namespace GlobalTheory.CompanionTheory.Ar

theorem objMap_twist : ∀ (E : Type) [Field E] [NumberField E] [IsCMField E] (H : Host E) (D : Datum H) (l : Level H) (B : Type) [CommRing B] (b : Base l B) (S : Scheme.{0}) (s : S ⟶ Sp B) (S' : Scheme.{0}) (s' : S' ⟶ Sp B) (o : Obj D l b s) (o' : Obj D l b s') (f : S' ⟶ S) (m : ObjMap o' o f) (g : HostAut H) (a : TwIso D g) (h : TwOK o g a) (h' : TwOK o' g a), ∃ n : ObjMap (twistObj o' g a h') (twistObj o g a h) f, n.toSABMap = twistMap m.toSABMap g  := by
  intro E _ _ _ H D l B _ b S s S' s' o o' f m g a h h'
  exact ⟨{ toSABMap := twistMap m.toSABMap g
           eta := fun x => m.eta (a.a l.M x)
           etaA := fun x => m.etaA (a.a l.A x) }, rfl⟩

end GlobalTheory.CompanionTheory.Ar
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistObjMapFunctorial =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistAutHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistAutHolds", "h": "module\n\npublic import Development.AutomorphicSpectrum.Statements.GeometryStatements.PadicIntegersHenselianFiniteResidue\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.PushInvertible\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliIsReduced\npublic import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.AdelicGroupAlgebraActionInjective\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ModuliTwistAutomorphism\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.TwoWeightEqOneAddRoot\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ObjMapComp\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistInverseIso\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistIsoNonemptyStatement\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistObjMapFunctorial\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistOkAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.TwistAutProof

open AlgebraicGeometry CategoryTheory NumberField ReciprocityTheory.ChartRestriction.G.Geo.Tor GlobalTheory.CompanionTheory.Ar

theorem eq_of_objMap {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {D : Datum H} {l : Level H}
    (Xo : Moduli D l) {S : Scheme.{0}} (s' : S ⟶ Sp (KA l)) (hS : IsReduced S) (o : Obj D l (baseKA l) s')
    (f₁ f₂ : S ⟶ Xo.X) (h₁ : f₁ ≫ Xo.s = s') (h₂ : f₂ ≫ Xo.s = s') (m₁ : ObjMap o Xo.univ f₁)
    (m₂ : ObjMap o Xo.univ f₂) : f₁ = f₂ :=
  (Xo.rep S s' hS o).unique ⟨h₁, ⟨m₁⟩⟩ ⟨h₂, ⟨m₂⟩⟩

theorem twistAut : TwistAut := by
  intro E _ _ _ H D l Xo g
  refine ⟨GlobalTheory.T.twist_iso_nonempty E H D g, fun a => ?_⟩
  have hred : IsReduced Xo.X := _root_.GlobalTheory.CompanionTheory.Ar.moduli_isReduced E H D l Xo
  obtain ⟨a', hback⟩ := _root_.GlobalTheory.CompanionTheory.Ar.twBack E H D g a
  have h : TwOK Xo.univ g a := _root_.GlobalTheory.CompanionTheory.Ar.TwistOk.twOK_obj E H D l _ (baseKA l) Xo.X Xo.s Xo.univ g a
  have h' : TwOK Xo.univ g.symm a' := _root_.GlobalTheory.CompanionTheory.Ar.TwistOk.twOK_obj E H D l _ (baseKA l) Xo.X Xo.s Xo.univ g.symm a'
  obtain ⟨Φ, hΦ, ⟨m⟩⟩ := _root_.GlobalTheory.CompanionTheory.Ar.moduli_twist_phi E H D l Xo g a h
  obtain ⟨Ψ, hΨ, ⟨m'⟩⟩ := _root_.GlobalTheory.CompanionTheory.Ar.moduli_twist_phi E H D l Xo g.symm a' h'
  obtain ⟨back₁, back₂⟩ := hback l _ (baseKA l) Xo.X Xo.s Xo.univ

  have e₁ : Φ ≫ Ψ = 𝟙 Xo.X := by
    have k : TwOK (twistObj Xo.univ g a h) g.symm a' :=
      _root_.GlobalTheory.CompanionTheory.Ar.TwistOk.twOK_obj E H D l _ (baseKA l) Xo.X Xo.s _ g.symm a'
    obtain ⟨n, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.objMap_twist E H D l _ (baseKA l) Xo.X Xo.s Xo.X Xo.s _ _ Φ m g.symm a' h' k
    obtain ⟨n', -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.objMap_exists_comp E H D l _ (baseKA l) Xo.X Xo.s Xo.X Xo.X Xo.s Xo.s _ _ _ Ψ Φ m' n
    obtain ⟨i⟩ := back₁ h k
    exact eq_of_objMap Xo Xo.s hred _ _ _ (by rw [Category.assoc, hΨ, hΦ]) (Category.id_comp _) n' i

  have e₂ : Ψ ≫ Φ = 𝟙 Xo.X := by
    have k : TwOK (twistObj Xo.univ g.symm a' h') g a :=
      _root_.GlobalTheory.CompanionTheory.Ar.TwistOk.twOK_obj E H D l _ (baseKA l) Xo.X Xo.s _ g a
    obtain ⟨n, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.objMap_twist E H D l _ (baseKA l) Xo.X Xo.s Xo.X Xo.s _ _ Ψ m' g a h k
    obtain ⟨n', -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.objMap_exists_comp E H D l _ (baseKA l) Xo.X Xo.s Xo.X Xo.X Xo.s Xo.s _ _ _ Φ Ψ m n
    obtain ⟨i⟩ := back₂ h' k
    exact eq_of_objMap Xo Xo.s hred _ _ _ (by rw [Category.assoc, hΦ, hΨ]) (Category.id_comp _) n' i
  exact ⟨h, ⟨Φ, Ψ, e₁, e₂⟩, hΦ, ⟨m⟩⟩

end GlobalTheory.CompanionTheory.Ar.TwistAutProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.TwistAutHolds =====
