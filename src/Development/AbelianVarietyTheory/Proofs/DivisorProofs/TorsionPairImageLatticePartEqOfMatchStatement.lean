module

public import Development.AbelianVarietyTheory.Definitions.Divisors.ExtId
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionMapWelldefinedAdditiveCharacters
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.MemOfNonempty
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
import Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatch, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatchStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatch =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatch", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusExtensionMapWelldefinedAdditiveCharacters\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllUniformizationLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.MemOfNonempty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg GlobalTheory.TChart GlobalTheory.UT GlobalTheory.Mum.Two
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.TInj

noncomputable section

namespace GlobalTheory.TInj
attribute [local instance] GlobalTheory.TorusExt.gtGroup

theorem qImg_lattice : ∀ (V : Type) [CommRing V] [IsDomain V] [CharZero V] (J : Ideal V), AdmBase V J → ∀ (D₁ D₂ : DegData V J) (b : D₁.toPre.P.A ⟶ D₂.toPre.P.A) (φ : D₁.toPre.X ≃+ D₂.toPre.X) (F : Type) [Field F] [IsAlgClosed F] [Algebra (FractionRing V) F], Match D₁.toPre D₂.toPre b φ F → ∀ (k : ℕ) (p : QkPt D₁.toPre F k) (p' : QkPt D₂.toPre F k), Act D₁.toPre D₂.toPre b φ.symm.toAddMonoidHom p.g p'.g → p'.y = φ p.y := by
  intro V _ _ _ J hJ D₁ D₂ b φ F _ _ _ hM k p p' hA
  obtain ⟨hmon, -, -, hnrm, hlast⟩ := hM
  obtain ⟨hex, hadd, -⟩ := GlobalTheory.Mum.Two.act_two_hom V D₁.toPre D₂.toPre b φ.symm.toAddMonoidHom hmon hnrm F
  choose α hα hαu using hex
  let f : GtPtF D₁.toPre F →+ GtPtF D₂.toPre F := AddMonoidHom.mk' α fun x y =>
    (GlobalTheory.TorusExt.isAdd_iff_eq _ _ _).1
      (hadd x y (x + y) (α x) (α y) (α (x + y)) ((GlobalTheory.TorusExt.isAdd_iff_eq _ _ _).2 rfl) (hα x) (hα y) (hα _))
  obtain ⟨h₁, hn₁, hi₁⟩ := p.eq
  obtain ⟨h₂, hn₂, hi₂⟩ := p'.eq
  obtain ⟨g', hg'A, hg'I⟩ := hlast p.y h₁ hi₁
  have e₁ : h₁ = k • p.g := (GlobalTheory.TorusExt.isNsmul_iff_eq _ _ _).1 hn₁
  have e₂ : h₂ = k • p'.g := (GlobalTheory.TorusExt.isNsmul_iff_eq _ _ _).1 hn₂
  have ep : p'.g = f p.g := hαu p.g p'.g hA
  have eg : g' = f h₁ := hαu h₁ g' hg'A
  have : g' = h₂ := by rw [eg, e₁, map_nsmul, ← ep, e₂]
  rw [← this] at hi₂
  exact GlobalTheory.IotaInj.main GlobalTheory.firstFiveLaws V J hJ D₂ F p'.y (φ p.y) g' hi₂ hg'I

end GlobalTheory.TInj

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatch =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatchStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatchStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.ExtId\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatch\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.GalRigidOfSurjective\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.ZM GlobalTheory.SiegelTor GlobalTheory.TorRef GlobalTheory.PolDeg GlobalTheory.TChart GlobalTheory.UT GlobalTheory.Mum.Two
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.TInj

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorsionPairImageLatticePartEqOfMatchStatement =====
