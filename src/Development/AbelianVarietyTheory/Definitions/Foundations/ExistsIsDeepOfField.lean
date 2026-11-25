module

public import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart
public import Formalism.LocalToGlobal.ProjectiveLattices.LiftLaSpec
public import Formalism.LocalToGlobal.Divisibility.GoodPartHermitianSpec
public import Formalism.LocalToGlobal.ProjectiveLattices.IsLevMove
public import Formalism.LocalToGlobal.ProjectiveLattices.RhoWApply
public import Mathlib.NumberTheory.NumberField.Discriminant.Basic
public import Mathlib.LinearAlgebra.FreeModule.IdealQuotient
public import Formalism.LocalToGlobal.ProjectiveLattices.CuspidalL2Subspace
public import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis
public import Development.AbelianVarietyTheory.Definitions.Foundations.ThetaExponentIdentities
public import Development.AbelianVarietyTheory.Definitions.Foundations.NonnegOfMemCStarSet
public import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFlatSecRankZero
public import Development.AbelianVarietyTheory.Proofs.GenericRegularity.MemRangeOfIsAlgebraicRatFun
public import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl
public import Development.AbelianVarietyTheory.Definitions.Divisors.IsLatBasisHtLatIffSpanEq
public import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SiegelSpaceAlgebraHolds
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
import Formalism.LocalToGlobal.ProjectiveLattices.CompFin

attribute [-instance]
  NormedSpace.toModule Submodule.normedSpace Submodule.seminormedAddCommGroup
  Submodule.normedAddCommGroup SubalgebraClass.toNormedAlgebra
  Subalgebra.isScalarTower_left Subalgebra.isScalarTower_mid
  Submonoid.instIsScalarTowerSubtypeMem Submonoid.instSMulCommClassSubtypeMem_1
  Subalgebra.smulCommClass_right Subalgebra.smulCommClass_left
  MulSemiringAction.toDistribMulAction
  RingHomClass.toLinearMapClassNNRat RingHomClass.toLinearMapClassRat
  NonUnitalAlgHomClass.instLinearMapClass
  NonUnitalAlgHomClass.instSemilinearMapClassOfNonUnitalAlgSemiHomClassOfClassRingHom
  Algebra.TensorProduct.instNonUnitalSemiring Algebra.TensorProduct.instNonUnitalRing
attribute [local instance high]
  Submodule.module TensorProduct.leftModule Algebra.TensorProduct.leftAlgebra

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes, Development.AbelianVarietyTheory.Definitions.Foundations.FacWithCsNonneg, Development.AbelianVarietyTheory.Definitions.Foundations.ExistsIsDeepOfField

-- ===== clump member: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.IsProbabilityMeasureMuPart\npublic import Formalism.LocalToGlobal.ProjectiveLattices.LiftLaSpec\npublic import Formalism.LocalToGlobal.Divisibility.GoodPartHermitianSpec\npublic import Formalism.LocalToGlobal.ProjectiveLattices.IsLevMove\npublic import Formalism.LocalToGlobal.ProjectiveLattices.RhoWApply\npublic import Mathlib.NumberTheory.NumberField.Discriminant.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.FreeModule.IdealQuotient\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CuspidalL2Subspace\npublic import Formalism.LocalToGlobal.ProjectiveLattices.FamilyUniformisationBasePointOrthogonalBis\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.HalfLatticeTypes

open NumberField IsDedekindDomain Module AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD Formalism.L2.Pj Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta
  Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.AllWt
open scoped TensorProduct

attribute [local instance] Over.cartesianMonoidalCategory

section Action

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}

abbrev Rs (l : Level H) : Type := 𝓞 E ⧸ l.Mb

theorem half_ne_bot (l : Level H) : l.Mb ≠ ⊥ := fun h => by
  have h1 := l.prod
  rw [h, Ideal.bot_mul, eq_comm, Ideal.span_singleton_eq_bot, Nat.cast_eq_zero] at h1
  have := l.three_le
  omega

instance (l : Level H) : Finite (Rs l) := Ideal.finiteQuotientOfFreeOfNeBot _ (half_ne_bot l)

abbrev Gz (l : Level H) (r : ℕ) : Type := GL (Fin r) (Rs l)

instance (l : Level H) (r : ℕ) : Fintype (Gz l r) := Fintype.ofFinite _

variable {l l' : Level H} {r : ℕ}

def Reads (e : Basis (Fin r) (Rs l) (LaMod Dw l)) (γ : LaMod Dw l' ≃ₗ[𝓞 E] LaMod Dw l')
    (g : Matrix (Fin r) (Fin r) (Rs l)) : Prop :=
  ∀ a : Dw.La, (Submodule.Quotient.mk (liftLa γ a) : LaMod Dw l) = Matrix.toLin e e g (Submodule.Quotient.mk a)

def IsUnip {R : Type} [CommRing R] (u : Matrix (Fin r) (Fin r) R) : Prop :=
  (∀ i, u i i = 1) ∧ ∀ i j, j < i → u i j = 0

def superSum {R : Type} [CommRing R] (u : Matrix (Fin r) (Fin r) R) : R :=
  ∑ i : Fin r, ∑ j : Fin r, if (j : ℕ) = i + 1 then u i j else 0

variable (Xo' : Moduli Dw l') (c' : Coeff l') {K : Type} [Field K] (ι : K →+* c'.F)
  (e : Basis (Fin r) (Rs l) (LaMod Dw l))


set_option synthInstance.maxHeartbeats 400000 in
def typeSub (ψ₀ : AddChar (Rs l) K) : Submodule c'.F (Rul Xo' c') where
  carrier := {f | ∀ (γ : LaMod Dw l' ≃ₗ[𝓞 E] LaMod Dw l') (u : Matrix (Fin r) (Fin r) (Rs l)), Reads e γ u → IsUnip u →
    ∀ (p : TRing c'.F) (y y' : FrPt Xo' c' p.R), levR (liftLa γ, LinearMap.id) y y' →
      f p y' = ι (ψ₀ (-superSum u)) • f p y}
  zero_mem' := fun γ u _ _ p y y' _ => by simp
  add_mem' := fun {f g} hf hg γ u h1 h2 p y y' h => by
    simp only [Pi.add_apply, hf γ u h1 h2 p y y' h, hg γ u h1 h2 p y y' h, smul_add]
  smul_mem' := fun a f hf γ u h1 h2 p y y' h => by
    simp only [Pi.smul_apply, hf γ u h1 h2 p y y' h]
    exact smul_comm _ _ _

def MoveG (g : Gz l r) {S : Type} [CommRing S] [Algebra c'.F S] (y y' : FrPt Xo' c' S) : Prop :=
  ∃ γ : LaMod Dw l' ≃ₗ[𝓞 E] LaMod Dw l', Reads e γ g ∧
    (∀ q ∈ l.Mb • (⊤ : Submodule (𝓞 E) (LaMod Dw l')), γ q = q) ∧ levR (liftLa γ, LinearMap.id) y y'

def actG (g : Gz l r) : Rul Xo' c' →ₗ[c'.F] Rul Xo' c' :=
  actL (K := c'.F) (fun S _ _ => FrPt Xo' c' S)
    (fun {S : Type} [CommRing S] [Algebra c'.F S] (g' : Gz l r) (y y' : FrPt Xo' c' S) => MoveG Xo' c' e g' y y') g


variable {Xo' c'} {n : ℕ} (U' : ∀ σ : c'.F →+* ℂ, Unf Xo' c' σ n)



end Action

section Record

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

variable (T : CoreJ D) (i : Fin D.R.m)

variable {T i} {l' : Level T.Q.H} {Xo' : Moduli (T.Q.Dw ((i : ℕ) + 1)) l'} {c' : Coeff l'}

end Record

end GlobalTheory.IndefiniteRowSideFullHecke.HalfLatticeTypes
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Foundations.FacWithCsNonneg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Foundations.FacWithCsNonneg", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ThetaExponentIdentities\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.NonnegOfMemCStarSet\npublic import Development.AbelianVarietyTheory.BlockTheory.DivisorBase.HalfLatticeTypes\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.ExistsFlatSecRankZero\npublic import Development.AbelianVarietyTheory.Proofs.GenericRegularity.MemRangeOfIsAlgebraicRatFun\nimport Formalism.LocalToGlobal.ProjectiveLattices.CompFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.SlopeRec

open NumberField Finset Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.L2.Indef.Tree GlobalTheory.IndefiniteRowSideFullHecke.DescentConstants Formalism.HN
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt
open Formalism.L2.Pj hiding kap
open GlobalTheory.CompHt hiding rhoB

variable {D : D7} {L : SizeData₂ D} {P : ParameterChoice' D L} (Q : ParamsT D L P) {T : Par D} {j : ℕ} {l : Level T.H}
  {Xo : Moduli (T.Dw j) l} {c : Coeff l} (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ D.R.r)
  (dict : ∀ σ, GA D (D.sp.W j) → Σ k, Frame ((U σ).X k).Ψ D.R.r)

abbrev gKap (T : Par D) (j : ℕ) : WTZ D.host.E := thetaExp D (T.Dw j) (kap D j)

abbrev gKapMinus (T : Par D) (j : ℕ) : WTZ D.host.E := thetaExp D (T.Dw j) (kapMinus D j)

abbrev gTw (T : Par D) (j : ℕ) : WTZ D.host.E := plainExp D (T.Dw j) (twW D j)

abbrev nrmAt (G : WTZ D.host.E) : (c.F →+* ℂ) → cuspW Xo c U G → ℝ := normW U (xiR D) (fun _ => D.sp.W j) dict G

set_option synthInstance.maxHeartbeats 100000

variable [StarRing c.F] (h : T.Pins) (hj : InR D j) (CI C2 : ℝ) (Vs : ValFam Xo c) (Hb : Type) [Fintype Hb]
  (NN : Submodule (𝓞 c.F) (cuspW Xo c U (gKap T j)))
  (Ph : cuspW Xo c U (gKapMinus T j) →ₗ[c.F] (Hb → cuspW Xo c U (gKap T j)))
  (e : cuspW Xo c U (gKap T j) →ₗ[c.F] cuspW Xo c U (gKap T j)) (g : ℕ)

variable {U dict}

end GlobalTheory.SlopeRec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Foundations.FacWithCsNonneg =====

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.Foundations.ExistsIsDeepOfField =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.Foundations.ExistsIsDeepOfField", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.FacWithCsNonneg\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.MemLevEigenIffTransl\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.IsLatBasisHtLatIffSpanEq\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CuspMulOf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FundamentalDomains.SiegelSpaceAlgebraHolds\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.SlopeRec

open NumberField Finset Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.L2.Indef.Tree GlobalTheory.IndefiniteRowSideFullHecke.DescentConstants Formalism.HN
open ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt
open Formalism.L2.Pj hiding kap
open GlobalTheory.CompHt hiding rhoB
open GlobalTheory.LevDesc GlobalTheory.IndefiniteRowSideFullHecke.LevelCuspCharacters

variable {D : D7} {L : SizeData₂ D} {P : ParameterChoice' D L} (Q : ParamsT D L P)

section Deep

variable (T : CoreJ D) (j : ℕ) {l : Level T.Q.H} (Xo : Moduli (T.Q.Dw j) l) (c : Coeff l)
  (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ D.R.r) (dict : ∀ σ, GA D (D.sp.W j) → Σ k, Frame ((U σ).X k).Ψ D.R.r)



variable {Q T j Xo c U dict}

end Deep

section Restrict

variable {K M M' : Type} [Field K] [AddCommGroup M] [Module K M] [AddCommGroup M'] [Module K M']


open Classical in
def restrictOr (φ : M →ₗ[K] M') (C : Submodule K M) (C' : Submodule K M') : C →ₗ[K] C' :=
  if h : ∀ x ∈ C, φ x ∈ C' then φ.restrict h else 0

end Restrict

section Keeps

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l} {r : ℕ} {U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r}

theorem mul_mem_cuspW {G G' : WTZ E} (hG : Even G.2) (hG' : Even G'.2) {f g : Rul Xo c} (hf : f ∈ cuspW Xo c U G)
    (hg : g ∈ cuspW Xo c U G') : f * g ∈ cuspW Xo c U (G + G') := by
  rw [mem_cuspW] at hf hg ⊢
  refine ⟨?_, fun σ hσ => ?_⟩
  · rw [show exZ Dw (G + G') = exZ Dw G + exZ Dw G' from funext fun i => exZ_add _ _ _]
    exact mul_mem_secZ hf.1 hg.1
  · rw [AllWt.rdU_mul, show modelWt (U σ) (G + G') = fun k => modelWt (U σ) G k + modelWt (U σ) G' k from
      funext (modelWt_add (U σ) hG hG')]
    exact holSub_mul siegelSpaceAlgebra_holds (hf.2 σ hσ) (hg.2 σ hσ)

theorem levPh_mem_cuspW {G G' : WTZ E} (hG : Even G.2) (hG' : Even G'.2) (hK : KeepsCusp U (G + G'))
    (hK' : KeepsCusp U G') {S : Subgroup (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms.LevelAut Dw l)} (χ : S →* (c.F)ˣ) {u f : Rul Xo c}
    (hu : u ∈ cuspW Xo c U G') (hf : f ∈ cuspW Xo c U G) (h : S) : levPh Xo c S χ u f h ∈ cuspW Xo c U (G + G') := by
  rw [levPh_apply, levTr_apply]
  exact Submodule.sum_mem _ fun g _ => Submodule.smul_mem _ _ (hK _ _ (mul_mem_cuspW hG hG' hf (hK' _ _ hu)))


end Keeps


set_option genInjectivity false in
set_option genSizeOfSpec false in
structure LiftData (T : CoreJ D) (i : Fin D.R.m) : Type 1 where

  l : Level T.Q.H
  typeLevel : IsTypeLevel l

  Xo : Moduli (T.Q.Dw ((i : ℕ) + 1)) l

  c : Coeff l

  U : ∀ σ : c.F →+* ℂ, Unf Xo c σ D.R.r

  dict : ∀ σ, GA D (D.sp.W ((i : ℕ) + 1)) → Σ k, Frame ((U σ).X k).Ψ D.R.r

  fr : TypeFrame (T.Q.Dw ((i : ℕ) + 1)) l

  ψ : ∀ v : Sq D.host, AddChar (ZMod (D.host.g v.1)) c.F

  om : ∀ k : Fin 2, (ZMod (D.host.g k))ˣ →* (c.F)ˣ

  u₀ : cuspW Xo c U (gTw T.Q ((i : ℕ) + 1))

namespace LiftData

variable {T : CoreJ D} {i : Fin D.R.m} (Y : LiftData T i)

abbrev Hb : Subgroup (GlobalTheory.IndefiniteRowSideFullHecke.LevelStructureAutomorphisms.LevelAut (T.Q.Dw ((i : ℕ) + 1)) Y.l) := grpHR Y.fr

abbrev V (G : WTZ D.host.E) : Submodule Y.c.F (Rul Y.Xo Y.c) := cuspW Y.Xo Y.c Y.U G

def NN : Submodule (𝓞 Y.c.F) (Y.V (gKap T.Q ((i : ℕ) + 1))) := latN Y.fr Y.U _ Y.ψ

set_option synthInstance.maxHeartbeats 400000 in
def Ph : Y.V (gKapMinus T.Q ((i : ℕ) + 1)) →ₗ[Y.c.F] (Y.Hb → Y.V (gKap T.Q ((i : ℕ) + 1))) :=
  LinearMap.pi fun h => restrictOr (LinearMap.proj h ∘ₗ levPh Y.Xo Y.c Y.Hb (chiHR Y.fr Y.ψ) Y.u₀) _ _

def eGood : Y.V (gKap T.Q ((i : ℕ) + 1)) →ₗ[Y.c.F] Y.V (gKap T.Q ((i : ℕ) + 1)) :=
  restrictOr (goodOp Y.Xo Y.c Y.typeLevel Y.fr Y.om i) _ _

variable (h : T.Q.Pins) (hK : KeepsCusp Y.U (gKap T.Q ((i : ℕ) + 1))) (he : IsIdempotentElem (goodIdemTw Y.om i))
include h hK he

end LiftData

variable {T : CoreJ D} (h : T.Q.Pins) {i : Fin D.R.m} (Y : LiftData T i) [StarRing Y.c.F] (CI C2 : ℝ)


end GlobalTheory.SlopeRec
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.Foundations.ExistsIsDeepOfField =====
