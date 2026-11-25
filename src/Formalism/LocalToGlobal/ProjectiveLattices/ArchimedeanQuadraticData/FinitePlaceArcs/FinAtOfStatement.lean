module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc
public import Formalism.LocalToGlobal.ProjectiveLattices.CuspidalL2Subspace
public import Formalism.LocalToGlobal.ProjectiveLattices.SectionOfLineBundleOne
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt
public import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.FunDef
public import ReciprocityTheory.SemistableReduction.ComapInclusionIsLocalHom

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.ArcDatumIsArcPointBasis, Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinitePlaceArcs.FinAtOfStatement

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.ArcDatumIsArcPointBasis =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.ArcDatumIsArcPointBasis", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.RigidArc\npublic import Formalism.LocalToGlobal.ProjectiveLattices.CuspidalL2Subspace\npublic import Formalism.LocalToGlobal.ProjectiveLattices.SectionOfLineBundleOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.QAt

open CategoryTheory NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions ReciprocityTheory.ChartRestriction.G.FreeQuotientRank
open scoped TensorProduct

variable {D : D7} {T : Core D}

structure ArcDatumAt (T : Core D) (j : ℕ) (K₁ : Type) [Field K₁] [Algebra T.Q.c.F K₁]
    [Algebra T.Q.c.F (ArcS (T.Q.Dw j) K₁)] where

  Wp : ValuationSubring ℂ
  Y : Model (T.Q.Xo j) T.Q.c (T.Q.c.V Wp).subtype
  a : ArcIn (T.Q.Dw j) T.Q.l (RingHom.id T.Q.c.F) K₁ (algebraMap T.Q.c.F K₁)
  χ : Sp (PowerSeries K₁) ⟶ Y.X

  chiOver : χ ≫ Y.s = spMap ((PowerSeries.C (R := K₁)).comp
    ((algebraMap T.Q.c.F K₁).comp (T.Q.c.V Wp).subtype))
  W : ArcWit Y (a.restrict (T.Q.c.V Wp).subtype) (Ideal.span {PowerSeries.X}) (PowerSeries.C (R := K₁))
    PowerSeries.X χ
  e : ∀ τ, Fin ((T.Q.Dw j).mult τ) →
    ReciprocityTheory.ChartRestriction.G.Out.GtPt (a.restrict (T.Q.c.V Wp).subtype).D₀ (epsR K₁)
  yF : FrPt (T.Q.Xo j) T.Q.c (ArcS (T.Q.Dw j) K₁)

  th : (a.restrict (T.Q.c.V Wp).subtype).D₀.P.L.Sec
  arcDatum_isArc_point_basis : IsArcPointPowerSeries Y (a.restrict (T.Q.c.V Wp).subtype) χ W e yF
  isArc3 : IsArcPt3At Y (a.restrict (T.Q.c.V Wp).subtype) χ W yF th
  μ : ArcLt (T.Q.Dw j) →₀ ℕ
  jj : ℤ

end Formalism.L2.Pj.QAt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.ArcDatumIsArcPointBasis =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinitePlaceArcs.FinAtOfStatement =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinitePlaceArcs.FinAtOfStatement", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.ArcDatumIsArcPointBasis\npublic import Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.ArcLineFunctions.FunDef\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.Rationality.QuotSt\npublic import ReciprocityTheory.SemistableReduction.ComapInclusionIsLocalHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.QAt

open NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj Formalism.MainNotions Formalism.MainNotions.WeightAlgebra Formalism.BasicNotions ReciprocityTheory.ChartRestriction.G.FreeQuotientRank
open scoped TensorProduct

structure FinSite (K₁ : Type) [Field K₁] [NumberField K₁] (w : HeightOneSpectrum (𝓞 K₁)) where
  K : Type
  [nf : NormedField K]
  [um : IsUltrametricDist K]
  [cs : CompleteSpace K]
  ι : K₁ →+* K
  r : ℝ
  r_pos : 0 < r
  r_lt : r < 1
  norm_ι : ∀ x : K₁, x ≠ 0 → ‖ι x‖ = r ^ ordAt w x
  K₀ : Subfield K
  res : ReciprocityTheory.MultiplicativeHeights.ResidueFieldInfiniteOn (K₀ : Set K)
  S : Set K
  S_disc : ∀ t ∈ S, 0 < ‖t‖ ∧ ‖t‖ < 1
  S_dense : ∀ ρ : ℝ, 0 < ρ → ρ < 1 → ∀ ε > (0 : ℝ), ∃ t ∈ S, |‖t‖ - ρ| < ε
  S_units : ∀ t ∈ S, ∀ τ ∈ K₀, ‖τ‖ = 1 → t * τ ∈ S

attribute [instance] FinSite.nf FinSite.um FinSite.cs

def lcoeffPoly {ι K₁ : Type} [Field K₁] (P : MvPolynomial ι (LaurentSeries K₁)) (m : ℤ) : MvPolynomial ι K₁ :=
  ∑ μ ∈ P.support, MvPolynomial.monomial μ ((P.coeff μ).coeff m)

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H}

def frameSub {K : Type} [Field K] (Bm : ∀ τ : E →+* ℂ, Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) K)
    (lam : ∀ τ : E →+* ℂ, Fin (Dw.mult τ) → K) (Y : ArcLt Dw → K) : ArcLt Dw → K :=
  fun x => (∑ l, Y ⟨x.1, x.2.1, l⟩ * Bm x.1 l x.2.2) * (lam x.1 x.2.2)⁻¹

variable {D : D7} {T : Core D} {j : ℕ}

def FinLocalAt {K₁ : Type} [Field K₁] [NumberField K₁] [Algebra T.Q.c.F K₁]
    [Algebra T.Q.c.F (ArcS (T.Q.Dw j) K₁)] (d : ArcDatumAt T j K₁) (w : HeightOneSpectrum (𝓞 K₁)) (n : ℕ)
    (vth : ℤ) (vη : ∀ τ : D.host.E →+* ℂ, Fin ((T.Q.Dw j).mult τ) → ℤ) (m : ℕ) (Fs : Set (T.R j)) : Prop :=
  ∃ (Z : FinSite K₁ w) (γ : Z.K) (lam : ∀ τ : D.host.E →+* ℂ, Fin ((T.Q.Dw j).mult τ) → Z.K)
    (A Bm : ∀ τ : D.host.E →+* ℂ, Matrix (Fin ((T.Q.Dw j).mult τ)) (Fin ((T.Q.Dw j).mult τ)) Z.K),
    (γ ≠ 0 ∧ ‖γ‖ = Z.r ^ vth) ∧
    (∀ τ k, lam τ k ≠ 0 ∧ ‖lam τ k‖ = Z.r ^ vη τ k) ∧
    ((∀ τ, A τ * Bm τ = 1) ∧ ∀ τ k l, ‖A τ k l‖ ≤ Z.r ^ (-(m : ℤ))) ∧
    ∀ F ∈ Fs, ∀ t ∈ Z.S, ∀ Y : ArcLt (T.Q.Dw j) → Z.K, (∀ x, Y x ∈ Z.K₀ ∧ ‖Y x‖ ≤ 1) →
      ‖∏ τ : D.host.E →+* ℂ, (Matrix.of fun i l : Fin ((T.Q.Dw j).mult τ) => Y ⟨τ, i, l⟩).det‖ = 1 →
      Filter.Tendsto (fun k : ℤ => ‖MvPolynomial.eval (frameSub Bm lam Y)
          (MvPolynomial.map Z.ι (lcoeffPoly (arcNum (evR (T.Q.Xo j) T.Q.c F d.yF)) k)) * t ^ k‖)
        Filter.cofinite (nhds 0) ∧
      ‖(γ ^ n)⁻¹ * ∑' k : ℤ, MvPolynomial.eval (frameSub Bm lam Y)
          (MvPolynomial.map Z.ι (lcoeffPoly (arcNum (evR (T.Q.Xo j) T.Q.c F d.yF)) k)) * t ^ k‖ ≤ 1

variable {h : LawsCore T} {ka : WeightFamilies.Wt D j} {CR Tt cc : ℝ}

end Formalism.L2.Pj.QAt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.ArchimedeanQuadraticData.FinitePlaceArcs.FinAtOfStatement =====
