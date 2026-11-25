module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideMultiplicityFamily
public import Formalism.LocalToGlobal.NormalizedHeckeFactors.HeckeStdTwOfStd
public import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.FiniteDimensionalMram
public import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverPoly
public import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverThm
public import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverEta
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsLevel
public import Formalism.LocalToGlobal.GaloisLevelStructure.TiedHecke
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceHeckeOperatorScalarOnSpherical
public import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteCosetsHeckeSetAtSplitPlaceOutsideLevel
public import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeckeOpen
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoeffMonicPolySum
public import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverAct
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SplitExEveryDatum
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt
import Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.Objects
import Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs
import Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceOutsideNonHyperspecialOfLocalisation, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotypicHeckeOperatorHyperspecialActsByScalar, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExist, Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExistStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceOutsideNonHyperspecialOfLocalisation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceOutsideNonHyperspecialOfLocalisation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SideMultiplicityFamily\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial

noncomputable section

namespace GlobalTheory.SplitOutPlace



theorem not_mem_gPl_qPl : ∀ (D : D7) (cf : CharFrame D) (C : NChoice D) (tp : TupTied D cf C) (Pl : PlSide D) (M : MtFam D) (big : D.what₂.places.Pl → Finset ℂ) (X : LocNd (lay0 D)) (T : LocTw X) (Sp : NdSpec Pl M C big X T) (i : X.nd.Loc) (w : PlE D.host) (s : SplitPlace D.host.E), SplitOut X.nd i w → IsConjPl D.host w s.w → s.v ∉ gPl D ∪ qPl D (tp.tup (D.what₂.muTw (X.nd.w i)) ⟨X.nd.j i - 1, by have := X.nd.j_range i; omega⟩) := by
  intro D cf C tp Pl M big X T Sp i w s hso hc hmem
  obtain ⟨-, hl, hS, hQ⟩ := hso

  have hp : ∀ (w' : PlE D.host), NG.OverPl w' s.v → ∀ p : ℕ, w' ∈ placesOver D.host.E p →
      w ∈ placesOver D.host.E p := by
    intro w' hover p hp
    have h1 : algebraMap (𝓞 (maximalRealSubfield D.host.E)) (𝓞 D.host.E) (p : 𝓞 (maximalRealSubfield D.host.E)) ∈
        w'.asIdeal := by rw [map_natCast]; exact hp
    have h2 : (p : 𝓞 (maximalRealSubfield D.host.E)) ∈ s.v.asIdeal := by
      rw [← hover]; exact h1
    have h3 : algebraMap (𝓞 (maximalRealSubfield D.host.E)) (𝓞 D.host.E) (p : 𝓞 (maximalRealSubfield D.host.E)) ∈
        s.w.asIdeal := by
      rw [← Ideal.mem_comap, s.w_under]; exact h2
    rw [map_natCast] at h3
    exact (hc (p : 𝓞 D.host.E) (p : 𝓞 D.host.E) (by simp)).2 h3
  have hi : i ∈ X.nd.locs (X.nd.j i) (X.nd.w i) := (X.nd.locs_mem _ _ i).2 ⟨rfl, rfl⟩
  have hg : s.v ∉ gPl D := by
    rintro ⟨w', hover, k, hk⟩
    apply hS
    refine (X.nd.S_def i w).2 ⟨?_, hl⟩
    have hw := hp w' hover _ hk
    fin_cases k
    · exact Or.inl hw
    · exact Or.inr (Or.inl hw)
  rcases hmem with hm | hm
  · exact hg hm
  obtain ⟨w', hover, hw'⟩ := GlobalTheory.FitHecke.qPl_sub tp (X.nd.w i) (X.nd.w_tw i)
    ⟨X.nd.j i - 1, by have := X.nd.j_range i; omega⟩ hm
  rcases hw' with hCQ | hpd
  · apply hQ
    rw [← Sp.Qc_eq (X.nd.j i) (X.nd.w i)] at hCQ
    have hsw : s.w ∈ Sp.B.Qc (X.nd.j i) (X.nd.w i) :=
      Sp.B.Qc_over (X.nd.j i) (X.nd.w i) w' s.w hCQ ⟨s.v, hover, s.w_under⟩
    rw [Sp.Q_eq _ _ i hi]
    exact Sp.B.Qc_conj (X.nd.j i) (X.nd.w i) w s.w hsw hc
  · apply hS
    refine (X.nd.S_def i w).2 ⟨?_, hl⟩
    rw [X.nd.w_l i] at hpd
    exact Or.inr (Or.inr (hp w' hover _ hpd))

end GlobalTheory.SplitOutPlace
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceOutsideNonHyperspecialOfLocalisation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex", "h": "module\n\npublic import Formalism.LocalToGlobal.NormalizedHeckeFactors.HeckeStdTwOfStd\npublic import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.FiniteDimensionalMram\npublic import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverPoly\npublic import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverThm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.Objects\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\nimport Formalism.LocalToGlobal.UnitaryNorms.IsUnitaryNormOf\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial

noncomputable section

namespace GlobalTheory.PtLocalEig

theorem jointKer_fin_finrank {K C : Type} [Field K] [Field C] (φ : K →+* C) {ι : Type} [Fintype ι] {G : Type}
    (Mg : G → Matrix ι ι K) (s : Finset G) :
    Module.finrank K ↥(⨅ g ∈ s, LinearMap.ker (Matrix.mulVecLin (Mg g))) =
      Module.finrank C ↥(⨅ g ∈ s, LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ))) := by
  classical
  let R : Matrix (↥s × ι) ι K := Matrix.of fun p b => Mg p.1.1 p.2 b
  have stack : ∀ {F : Type} [Field F] (N : G → Matrix ι ι F),
      (⨅ g ∈ s, LinearMap.ker (Matrix.mulVecLin (N g))) =
        LinearMap.ker (Matrix.mulVecLin (Matrix.of fun (p : ↥s × ι) b => N p.1.1 p.2 b)) := by
    intro F _ N
    ext c
    simp only [Submodule.mem_iInf, LinearMap.mem_ker, Matrix.mulVecLin_apply]
    constructor
    · intro h
      funext p
      have := congrFun (h p.1.1 p.1.2) p.2
      simpa [Matrix.mulVecLin_apply, Matrix.mulVec, dotProduct, Matrix.of_apply] using this
    · intro h g hg
      funext a
      have := congrFun h (⟨g, hg⟩, a)
      simpa [Matrix.mulVecLin_apply, Matrix.mulVec, dotProduct, Matrix.of_apply] using this
  have rn : ∀ {F : Type} [Field F] (N : Matrix (↥s × ι) ι F),
      N.rank + Module.finrank F (LinearMap.ker N.mulVecLin) = Fintype.card ι := by
    intro F _ N
    have := LinearMap.finrank_range_add_finrank_ker N.mulVecLin
    rw [Module.finrank_fintype_fun_eq_card, Matrix.finrank_range_mulVecLin N] at this
    exact this
  have h1 := rn R
  have h2 := rn (R.map φ)
  rw [GlobalTheory.Core.Rk.rank_map_field] at h2
  rw [stack Mg, stack (fun g => (Mg g).map φ)]
  have e : (Matrix.of fun (p : ↥s × ι) b => ((Mg p.1.1).map φ) p.2 b) = R.map φ := by
    ext p b
    rfl
  rw [e]
  change Module.finrank K ↥(LinearMap.ker (Matrix.mulVecLin R)) = _
  omega

theorem jointKer_finrank {K C : Type} [Field K] [Field C] (φ : K →+* C) {ι : Type} [Fintype ι] {G : Type}
    (Mg : G → Matrix ι ι K) :
    Module.finrank K ↥(⨅ g, LinearMap.ker (Matrix.mulVecLin (Mg g))) =
      Module.finrank C ↥(⨅ g, LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ))) := by
  classical
  let kK : Finset G → Submodule K (ι → K) := fun s => ⨅ g ∈ s, LinearMap.ker (Matrix.mulVecLin (Mg g))
  let kC : Finset G → Submodule C (ι → C) := fun s => ⨅ g ∈ s, LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ))
  have heq : ∀ s, Module.finrank K (kK s) = Module.finrank C (kC s) := fun s => jointKer_fin_finrank φ Mg s
  have hex : ∃ m, ∃ s : Finset G, Module.finrank K (kK s) = m := ⟨_, ∅, rfl⟩
  obtain ⟨s, hs⟩ := Nat.find_spec hex
  have hmin : ∀ s' : Finset G, Module.finrank K (kK s) ≤ Module.finrank K (kK s') := fun s' =>
    hs ▸ Nat.find_min' hex ⟨s', rfl⟩
  have hminC : ∀ s' : Finset G, Module.finrank C (kC s) ≤ Module.finrank C (kC s') := fun s' => by
    rw [← heq, ← heq]; exact hmin s'
  have hK : (⨅ g, LinearMap.ker (Matrix.mulVecLin (Mg g))) = kK s := by
    apply le_antisymm
    · exact le_iInf₂ fun g _ => iInf_le _ g
    · refine le_iInf fun g => ?_
      have hins : kK (insert g s) = LinearMap.ker (Matrix.mulVecLin (Mg g)) ⊓ kK s := by
        simp only [kK, Finset.iInf_insert]
      have hle : kK (insert g s) ≤ kK s := by rw [hins]; exact inf_le_right
      have h := Submodule.eq_of_le_of_finrank_le hle (hmin _)
      rw [← h, hins]
      exact inf_le_left
  have hC : (⨅ g, LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ))) = kC s := by
    apply le_antisymm
    · exact le_iInf₂ fun g _ => iInf_le _ g
    · refine le_iInf fun g => ?_
      have hins : kC (insert g s) = LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ)) ⊓ kC s := by
        simp only [kC, Finset.iInf_insert]
      have hle : kC (insert g s) ≤ kC s := by rw [hins]; exact inf_le_right
      have h := Submodule.eq_of_le_of_finrank_le hle (hminC _)
      rw [← h, hins]
      exact inf_le_left
  rw [hK, hC]
  exact heq s

end GlobalTheory.PtLocalEig

namespace GlobalTheory.PtLocalEig

theorem eig_dim : ∀ (D : D7) (M : MtFam D) (B : NLocBase D M) (j : ℕ) (w : D.what₂.places.Pl) (μ : D.what₂.Tup) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m), μ = D.what₂.muTw w → ∀ (φ : FractionRing (B.Oc j w) →+* ℂ), (∀ x, φ (B.ec j w x) = D.what₂.embLL x) → ∀ (κ : PlE D.host → ℕ → FractionRing (B.Oc j w)) (E : Submodule ℂ (D.what₂.Mt μ j)), (∀ v k, GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → ∃ (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), IsConjPl D.host v s.w ∧ IsUnif D.host.E s.v ϖ) → (∀ v k (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → IsConjPl D.host v s.w → IsUnif D.host.E s.v ϖ → ∀ (c : ℂ) (f f' : GAf D.host.E D.R.nV → (M μ j h1 h2).wt.W), NG.tN (M μ j h1 h2).J s ϖ k (c • f + f') = c • NG.tN (M μ j h1 h2).J s ϖ k f + NG.tN (M μ j h1 h2).J s ϖ k f') → (∀ y, y ∈ E ↔ ∀ v k (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → IsConjPl D.host v s.w → IsUnif D.host.E s.v ϖ → NG.tN (M μ j h1 h2).J s ϖ k ((M μ j h1 h2).real y) = φ (κ v k) • (M μ j h1 h2).real y) → Module.finrank (FractionRing (B.Oc j w)) ↥(⨅ (v : PlE D.host) (k : ℕ) (_ : GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k), Module.End.eigenspace (B.hK j w v k) (κ v k)) = Module.finrank ℂ E := by
  intro D M B j w μ h1 h2 hμ φ hφ κ E hex hadd hE
  subst hμ
  classical
  haveI := Formalism.L2.finite_chooseBasisIndex (D := D) j w
  haveI := Fintype.ofFinite (Module.Free.ChooseBasisIndex D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j))
  let b := Module.Free.chooseBasis D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j)
  have hjb := D.what₂.jMt_basis (D.what₂.muTw w) j b
  let bC := Module.Basis.mk hjb.1 hjb.2.ge
  have hb := B.iV_basis j w b
  let bV := Module.Basis.mk hb.1 hb.2.ge
  have hbC : ∀ a, bC a = D.what₂.jMt (D.what₂.muTw w) j (b a) := fun a => by simp [bC]
  have hbV : ∀ a, bV a = B.iV j w (b a) := fun a => by simp [bV]
  have rC : ∀ x r, bC.repr (D.what₂.jMt (D.what₂.muTw w) j x) r = D.what₂.embLL (b.repr x r) :=
    fun x r => Formalism.L2.NCov.repr_transport D.what₂.embLL (D.what₂.jMt (D.what₂.muTw w) j) b hjb.1 hjb.2 x r
  have rV : ∀ x r, bV.repr (B.iV j w x) r = B.ec j w (b.repr x r) :=
    fun x r => Formalism.L2.NCov.repr_transport (B.ec j w) (B.iV j w) b hb.1 hb.2 x r
  let A : PlE D.host → ℕ → Matrix (Module.Free.ChooseBasisIndex D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j))
      (Module.Free.ChooseBasisIndex D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j)) D.what₂.LL :=
    fun v k => LinearMap.toMatrix b b (B.hL j w v k)
  let G := {p : PlE D.host × ℕ // Formalism.L2.GenAt D (D.what₂.places.resChar w) (B.Qc j w) p.1 p.2}
  let Mg : G → Matrix (Module.Free.ChooseBasisIndex D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j))
      (Module.Free.ChooseBasisIndex D.what₂.LL (D.what₂.MtL (D.what₂.muTw w) j)) (FractionRing (B.Oc j w)) :=
    fun g => (A g.1.1 g.1.2).map (B.ec j w) - κ g.1.1 g.1.2 • 1
  set Mw := M (D.what₂.muTw w) j h1 h2 with hMw

  have hV : ∀ v k (hvk : Formalism.L2.GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k) c,
      B.hK j w v k (bV.equivFun.symm c) = κ v k • bV.equivFun.symm c ↔ Matrix.mulVec (Mg ⟨(v, k), hvk⟩) c = 0 := by
    intro v k hvk c
    have hmat : LinearMap.toMatrix bV bV (B.hK j w v k) = (A v k).map (B.ec j w) := by
      ext r c'
      rw [LinearMap.toMatrix_apply, Matrix.map_apply, hbV, B.hK_def, rV]
      simp only [A, LinearMap.toMatrix_apply]
    have hr := LinearMap.toMatrix_mulVec_repr bV bV (B.hK j w v k) (bV.equivFun.symm c)
    rw [hmat] at hr
    have hc : ⇑(bV.repr (bV.equivFun.symm c)) = c := by
      rw [← Module.Basis.equivFun_apply, LinearEquiv.apply_symm_apply]
    rw [hc] at hr
    rw [← bV.equivFun.injective.eq_iff, map_smul, LinearEquiv.apply_symm_apply, Module.Basis.equivFun_apply, ← hr]
    simp only [Mg, Matrix.sub_mulVec, Matrix.smul_mulVec, Matrix.one_mulVec, sub_eq_zero]
  have hPV : (⨅ (v : PlE D.host) (k : ℕ) (_ : Formalism.L2.GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k),
      Module.End.eigenspace (B.hK j w v k) (κ v k)).map (bV.equivFun : B.V j w →ₗ[FractionRing (B.Oc j w)] _) =
      ⨅ g : G, LinearMap.ker (Matrix.mulVecLin (Mg g)) := by
    ext c
    rw [Submodule.mem_map_equiv]
    simp only [Submodule.mem_iInf, Module.End.mem_eigenspace_iff, LinearMap.mem_ker, Matrix.mulVecLin_apply]
    constructor
    · rintro h ⟨⟨v, k⟩, hvk⟩
      exact (hV v k hvk c).1 (h v k hvk)
    · intro h v k hvk
      exact (hV v k hvk c).2 (h ⟨⟨v, k⟩, hvk⟩)

  have hCk : ∀ v k (hvk : Formalism.L2.GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k) (y : D.what₂.Mt (D.what₂.muTw w) j),
      (∀ (s : ReciprocityTheory.Aut.SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)),
        IsConjPl D.host v s.w → Formalism.AUTREP.IsUnif D.host.E s.v ϖ →
        Formalism.L2.NG.tN Mw.J s ϖ k (Mw.real y) = φ (κ v k) • Mw.real y) ↔
      Matrix.mulVec ((Mg ⟨(v, k), hvk⟩).map φ) (bC.equivFun y) = 0 := by
    intro v k hvk y
    obtain ⟨s0, ϖ0, hc0, hu0⟩ := hex v k hvk
    let tC : Module.End ℂ (D.what₂.Mt (D.what₂.muTw w) j) :=
      bC.constr ℂ fun a => D.what₂.jMt (D.what₂.muTw w) j (B.hL j w v k (b a))
    have hagree : ∀ (s : ReciprocityTheory.Aut.SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)),
        IsConjPl D.host v s.w → Formalism.AUTREP.IsUnif D.host.E s.v ϖ →
        ∀ x, Formalism.L2.NG.tN Mw.J s ϖ k (Mw.real x) = Mw.real (tC x) := by
      intro s ϖ hc hu
      have hadd' := hadd v k s ϖ hvk hc hu
      have htN0 : Formalism.L2.NG.tN Mw.J s ϖ k (0 : Formalism.AUTREP.GAf D.host.E D.R.nV → Mw.wt.W) = 0 := by
        have := hadd' 1 0 0
        rw [one_smul, add_zero, one_smul] at this
        simpa using this
      let Lt : D.what₂.Mt (D.what₂.muTw w) j →ₗ[ℂ] (Formalism.AUTREP.GAf D.host.E D.R.nV → Mw.wt.W) :=
        { toFun := fun y => Formalism.L2.NG.tN Mw.J s ϖ k (Mw.real y)
          map_add' := fun y y' => by
            have := hadd' 1 (Mw.real y) (Mw.real y')
            rw [one_smul, one_smul] at this
            simp only [map_add (f := _)]
            exact this
          map_smul' := fun c y => by
            have := hadd' c (Mw.real y) 0
            rw [add_zero, htN0, add_zero] at this
            simp only [map_smul, RingHom.id_apply]
            exact this }
      have hLt : Lt = Mw.real.comp tC := bC.ext fun a => by
        have e := bC.constr_basis ℂ (fun a => D.what₂.jMt (D.what₂.muTw w) j (B.hL j w v k (b a))) a
        show Formalism.L2.NG.tN Mw.J s ϖ k (Mw.real (bC a)) =
          Mw.real ((bC.constr ℂ fun a => D.what₂.jMt (D.what₂.muTw w) j (B.hL j w v k (b a))) (bC a))
        rw [e, hbC a]
        exact (B.hL_def j w h1 h2 v k s ϖ hvk hc hu (b a)).symm
      intro x
      exact LinearMap.congr_fun hLt x
    have hmat : LinearMap.toMatrix bC bC tC = (A v k).map D.what₂.embLL := by
      ext r c
      rw [LinearMap.toMatrix_apply, Matrix.map_apply]
      have e := bC.constr_basis ℂ (fun a => D.what₂.jMt (D.what₂.muTw w) j (B.hL j w v k (b a))) c
      show bC.repr ((bC.constr ℂ fun a => D.what₂.jMt (D.what₂.muTw w) j (B.hL j w v k (b a))) (bC c)) r = _
      rw [e, rC]
      simp only [A, LinearMap.toMatrix_apply]
    have hMg : (Mg ⟨(v, k), hvk⟩).map φ = (A v k).map D.what₂.embLL - φ (κ v k) • 1 := by
      ext r c
      simp only [Mg, Matrix.map_apply, Matrix.sub_apply, Matrix.smul_apply, Matrix.one_apply, smul_eq_mul]
      split_ifs <;> simp [hφ]
    have hvec : tC y = φ (κ v k) • y ↔ Matrix.mulVec ((Mg ⟨(v, k), hvk⟩).map φ) (bC.equivFun y) = 0 := by
      rw [hMg, Matrix.sub_mulVec, ← hmat, Matrix.smul_mulVec, Matrix.one_mulVec, sub_eq_zero,
        Module.Basis.equivFun_apply, LinearMap.toMatrix_mulVec_repr, ← Finsupp.coe_smul, ← map_smul]
      exact ⟨fun h => by rw [h], fun h => bC.repr.injective (DFunLike.coe_injective h)⟩
    constructor
    · intro h
      apply hvec.1
      apply Mw.real_inj
      rw [← hagree s0 ϖ0 hc0 hu0, h s0 ϖ0 hc0 hu0, map_smul]
    · intro h s ϖ hc hu
      rw [hagree s ϖ hc hu, hvec.2 h, map_smul]
  have hPC : E.map (bC.equivFun : D.what₂.Mt (D.what₂.muTw w) j →ₗ[ℂ] _) =
      ⨅ g : G, LinearMap.ker (Matrix.mulVecLin ((Mg g).map φ)) := by
    ext d
    rw [Submodule.mem_map_equiv, hE]
    simp only [Submodule.mem_iInf, LinearMap.mem_ker, Matrix.mulVecLin_apply]
    constructor
    · rintro h ⟨⟨v, k⟩, hvk⟩
      have := (hCk v k hvk (bC.equivFun.symm d)).1 (fun s ϖ hc hu => h v k s ϖ hvk hc hu)
      rwa [LinearEquiv.apply_symm_apply] at this
    · intro h v k s ϖ hvk hc hu
      refine (hCk v k hvk _).2 ?_ s ϖ hc hu
      rw [LinearEquiv.apply_symm_apply]
      exact h ⟨⟨v, k⟩, hvk⟩
  rw [← LinearEquiv.finrank_map_eq bV.equivFun, hPV, ← LinearEquiv.finrank_map_eq bC.equivFun E, hPC]
  exact jointKer_finrank φ Mg

end GlobalTheory.PtLocalEig
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq\npublic import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverEta\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverThm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.HeightCounting

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX
  NumberField IsDedekindDomain Polynomial Module Module.End

section Gen
variable {R : Ranks} {H : Host R} {what₂ : Rows.Data R}

theorem heckeEig_mem_iff_gens (N : NData R H what₂) (i : N.Loc) (x : N.X i)
    (y : TensorProduct (N.O i) (FractionRing (N.O i)) (N.Mt i)) :
    y ∈ heckeEig (N.T i) (N.act i) x ↔ ∀ v k, SplitOut N i v → 1 ≤ k → k ≤ R.nV →
      ((N.act i (N.hT i v k)).baseChange (FractionRing (N.O i))) y =
        algebraMap (N.O i) (FractionRing (N.O i)) ((N.hT i v k : N.X i → N.O i) x) • y := by
  constructor
  · intro hy v k _ _ _
    exact mem_eigenspace_iff.1 ((Submodule.mem_iInf _).1 hy (N.hT i v k))
  · intro hy
    refine (Submodule.mem_iInf _).2 fun f => mem_eigenspace_iff.2 ?_
    obtain ⟨f, hf⟩ := f
    have hf' := hf
    rw [← N.T_gen i] at hf'
    suffices key : ∀ g (hg' : g ∈ Algebra.adjoin (N.O i) {g : N.X i → N.O i | ∃ v k, IsSplitPl H v ∧
        v ∉ placesOver H.E (N.l i) ∧ v ∉ N.S i ∧ v ∉ N.Q i ∧ 1 ≤ k ∧ k ≤ R.nV ∧
        g = (N.hT i v k : N.X i → N.O i)}), ∀ hg : g ∈ N.T i,
        ((N.act i ⟨g, hg⟩).baseChange (FractionRing (N.O i))) y =
          algebraMap (N.O i) (FractionRing (N.O i)) (g x) • y from key f hf' hf
    intro g hg'
    induction hg' using Algebra.adjoin_induction with
    | mem g hg0 =>
      intro hg
      obtain ⟨v, k, h1, h2, h3, h4, h5, h6, rfl⟩ := hg0
      exact hy v k ⟨h1, h2, h3, h4⟩ h5 h6
    | algebraMap r =>
      intro hg
      have e : (⟨algebraMap (N.O i) (N.X i → N.O i) r, hg⟩ : N.T i) =
          algebraMap (N.O i) (N.T i) r := rfl
      rw [e, AlgHom.commutes, Algebra.algebraMap_eq_smul_one, LinearMap.baseChange_smul,
        LinearMap.baseChange_one]
      simp [algebraMap_smul]
    | add g g' hg1 hg2 ih1 ih2 =>
      intro hg
      have m1 : g ∈ N.T i := N.T_gen i ▸ hg1
      have m2 : g' ∈ N.T i := N.T_gen i ▸ hg2
      have e : (⟨g + g', hg⟩ : N.T i) = ⟨g, m1⟩ + ⟨g', m2⟩ := rfl
      rw [e, map_add (f := _), LinearMap.baseChange_add, LinearMap.add_apply, ih1 m1, ih2 m2, Pi.add_apply, map_add (f := _),
        add_smul]
    | mul g g' hg1 hg2 ih1 ih2 =>
      intro hg
      have m1 : g ∈ N.T i := N.T_gen i ▸ hg1
      have m2 : g' ∈ N.T i := N.T_gen i ▸ hg2
      have e : (⟨g * g', hg⟩ : N.T i) = ⟨g, m1⟩ * ⟨g', m2⟩ := rfl
      rw [e, map_mul, LinearMap.baseChange_mul, Module.End.mul_apply, ih2 m2, LinearMap.map_smul, ih1 m1,
        smul_smul, Pi.mul_apply, map_mul, mul_comm]

end Gen

section Spec
variable {D : D7} {Pl : PlSide D} {M : MtFam D} {C : NChoice D} {big : D.what₂.places.Pl → Finset ℂ}
  {X : LocNd (lay0 D)} {T : LocTw X}

theorem genAt_iff_splitOut (Sp : NdSpec Pl M C big X T) {j : ℕ} {w : D.what₂.places.Pl} {i : X.nd.Loc}
    (h : i ∈ X.nd.locs j w) (v : PlE D.host) (k : ℕ) :
    (SplitOut X.nd i v ∧ 1 ≤ k ∧ k ≤ D.R.nV) ↔ GenAt D (D.what₂.places.resChar w) (Sp.B.Qc j w) v k := by
  obtain ⟨-, h2⟩ := (X.nd.locs_mem j w i).1 h
  have hl : X.nd.l i = D.what₂.places.resChar w := by rw [← X.nd.w_l i, h2]
  have hS : v ∈ X.nd.S i ↔ v ∈ placesS D (D.what₂.places.resChar w) := by
    rw [X.nd.S_def, hl]; rfl
  unfold SplitOut GenAt
  rw [hS, ← Sp.Q_eq j w i h, hl]
  tauto

theorem mult_eq_finrank_jointEig (D : D7) (Pl : PlSide D) (M : MtFam D) (C : NChoice D)
    (big : D.what₂.places.Pl → Finset ℂ) (X : LocNd (lay0 D)) (T : LocTw X) (Sp : NdSpec Pl M C big X T) (j : ℕ)
    (w : D.what₂.places.Pl) (i : X.nd.Loc) (h : i ∈ X.nd.locs j w) (x : X.nd.X i) :
    X.nd.mult i x = Module.finrank (FractionRing (Sp.B.Oc j w)) ↥(⨅ (v : PlE D.host) (k : ℕ)
      (_ : GenAt D (D.what₂.places.resChar w) (Sp.B.Qc j w) v k),
      Module.End.eigenspace (Sp.B.hK j w v k) (algebraMap (Sp.B.Oc j w) (FractionRing (Sp.B.Oc j w))
        (Sp.phO j w i h ((X.nd.hT i v k : X.nd.X i → X.nd.O i) x)))) := by
  set Fam := (⨅ (v : PlE D.host) (k : ℕ) (_ : GenAt D (D.what₂.places.resChar w) (Sp.B.Qc j w) v k),
      Module.End.eigenspace (Sp.B.hK j w v k) (algebraMap (Sp.B.Oc j w) (FractionRing (Sp.B.Oc j w))
        (Sp.phO j w i h ((X.nd.hT i v k : X.nd.X i → X.nd.O i) x)))) with hFam_def
  have hFam : ∀ e, e ∈ Fam ↔ ∀ v k, GenAt D (D.what₂.places.resChar w) (Sp.B.Qc j w) v k →
      Sp.B.hK j w v k e = algebraMap (Sp.B.Oc j w) (FractionRing (Sp.B.Oc j w))
        (Sp.phO j w i h ((X.nd.hT i v k : X.nd.X i → X.nd.O i) x)) • e := by
    intro e
    simp only [Fam, Submodule.mem_iInf, mem_eigenspace_iff]
  have hval : ∀ v k (hvk : GenAt D (D.what₂.places.resChar w) (Sp.B.Qc j w) v k),
      algebraMap (Sp.B.Oc j w) (FractionRing (Sp.B.Oc j w))
        (Sp.phO j w i h ((X.nd.hT i v k : X.nd.X i → X.nd.O i) x)) =
      NCov.pt (Sp.ptX j w i h x).1 ⟨Sp.B.hK j w v k, Algebra.subset_adjoin ⟨v, k, hvk, rfl⟩⟩ := by
    intro v k hvk
    simp only [NCov.pt]
    rw [Sp.ptX_hT j w i h x v k hvk]
  have hE : ∀ e, e ∈ Fam ↔ e ∈ NCov.E (Formalism.L2.heckeAlg Sp.B j w) (Sp.ptX j w i h x).1 := by
    intro e
    rw [hFam, NCov.mem_E_iff]
    constructor
    · rintro hy _ ⟨v, k, hvk, rfl⟩
      rw [← hval v k hvk]
      exact hy v k hvk
    · intro hy v k hvk
      rw [hval v k hvk]
      exact hy _ ⟨v, k, hvk, rfl⟩
  have hpsi : ∀ y, y ∈ heckeEig (X.nd.T i) (X.nd.act i) x ↔ Sp.Psi j w i h y ∈ Fam := by
    intro y
    rw [heckeEig_mem_iff_gens, hFam]
    constructor
    · intro hy v k hvk
      obtain ⟨hso, hk1, hk2⟩ := (genAt_iff_splitOut Sp h v k).2 hvk
      have e := congrArg (Sp.Psi j w i h) (hy v k hso hk1 hk2)
      rw [Sp.act_hK j w i h v k hvk, LinearMap.map_smulₛₗ] at e
      rw [e]
      congr 1
      exact Sp.phK_alg j w i h _
    · intro hy v k hso hk1 hk2
      have hvk := (genAt_iff_splitOut Sp h v k).1 ⟨hso, hk1, hk2⟩
      apply Sp.Psi_inj j w i h
      rw [Sp.act_hK j w i h v k hvk, LinearMap.map_smulₛₗ, hy v k hvk]
      congr 1
      exact (Sp.phK_alg j w i h _).symm
  let f : ↥(heckeEig (X.nd.T i) (X.nd.act i) x) →ₛₗ[(Sp.phK j w i h).toRingHom] Sp.B.V j w :=
    (Sp.Psi j w i h).comp (heckeEig (X.nd.T i) (X.nd.act i) x).subtype
  change Module.finrank _ ↥(heckeEig (X.nd.T i) (X.nd.act i) x) = _
  refine finrank_eq_of_semilinear (Sp.phK j w i h) f Fam ?_ ?_
  · intro a b hab
    exact Subtype.ext (Sp.Psi_inj j w i h hab)
  · intro e
    constructor
    · intro he
      have hp : e ∈ NCov.part (Formalism.L2.heckeAlg Sp.B j w) (Sp.mx j w i) := by
        have := NCov.E_le_part (Formalism.L2.heckeAlg Sp.B j w) (Sp.ptX j w i h x).1 ((hE e).1 he)
        rwa [(Sp.ptX j w i h x).2.1] at this
      obtain ⟨z, rfl⟩ := (Sp.Psi_range j w i h e).1 hp
      exact ⟨⟨z, (hpsi z).2 he⟩, rfl⟩
    · rintro ⟨⟨z, hz⟩, rfl⟩
      exact (hpsi z).1 hz

end Spec

end GlobalTheory.HeightCounting
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotypicHeckeOperatorHyperspecialActsByScalar =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotypicHeckeOperatorHyperspecialActsByScalar", "h": "module\n\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsLevel\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.TiedHecke\npublic import Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SplitPlaceHeckeOperatorScalarOnSpherical\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteCosetsHeckeSetAtSplitPlaceOutsideLevel\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NStageTrivialCharacterCoeffEqAlt\nimport Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.Objects\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.TypesDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial

noncomputable section

namespace GlobalTheory.IsoTypScalar

variable {L : Type} [Field L] [NumberField L] [IsCMField L] {n : ℕ} {W : Type} [AddCommGroup W] [Module ℂ W]

theorem heckeD_eq_sum_of {v : HeightOneSpectrum (𝓞 (maximalRealSubfield L))} {J : Subgroup (GAf L n)}
    (hJ : ∀ κ, TrivOutside {v} κ → (κ ∈ J ↔ κ ∈ Umax L n)) {D : Set (GAf L n)} (hD : ∀ x ∈ D, TrivOutside {v} x)
    {R : Finset (GAf L n)} (h1 : ∀ γ ∈ R, γ ∈ D) (h2 : ∀ x ∈ D, ∃! γ, γ ∈ R ∧ γ⁻¹ * x ∈ Umax L n)
    {f : GAf L n → W} (hf : ∀ κ ∈ Umax L n, TrivOutside {v} κ → NG.rt L n κ f = f) :
    NG.heckeD J D f = ∑ γ ∈ R, NG.rt L n γ f := by
  classical
  have tr : ∀ x ∈ D, ∀ y ∈ D, TrivOutside {v} (x⁻¹ * y) := fun x hx y hy =>
    GlobalTheory.HeckeScalarSph.triv_mul (GlobalTheory.HeckeScalarSph.triv_inv (hD x hx)) (hD y hy)
  funext g
  rw [Finset.sum_apply, NG.heckeD, finsum_eq_sum_of_support_subset (s := R.image fun x : GAf L n => (x : GAf L n ⧸ J)),
    Finset.sum_image]
  · refine Finset.sum_congr rfl fun γ hγ => ?_
    have hc : ∃ x ∈ D, (x : GAf L n ⧸ J) = γ := ⟨γ, h1 γ hγ, rfl⟩
    rw [dite_eq_left hc]
    have ht := tr γ (h1 γ hγ) _ hc.choose_spec.1
    have hu : γ⁻¹ * hc.choose ∈ Umax L n := (hJ _ ht).1 (QuotientGroup.eq.1 hc.choose_spec.2.symm)
    have := congrFun (hf _ hu ht) (g * γ)
    refine Eq.trans ?_ this
    show f _ = f _
    congr 1
    group
  · intro γ hγ δ hδ e
    exact (h2 δ (h1 δ hδ)).unique ⟨hγ, (hJ _ (tr γ (h1 γ hγ) δ (h1 δ hδ))).1 (QuotientGroup.eq.1 e)⟩
      ⟨hδ, by rw [inv_mul_cancel]; exact one_mem _⟩
  · intro c hc
    by_cases h : ∃ x ∈ D, (x : GAf L n ⧸ J) = c
    · obtain ⟨x, hx, rfl⟩ := h
      obtain ⟨γ, ⟨hγ, e⟩, -⟩ := h2 x hx
      exact Finset.mem_coe.2 (Finset.mem_image.2 ⟨γ, hγ, QuotientGroup.eq.2 ((hJ _ (tr γ (h1 γ hγ) x hx)).2 e)⟩)
    · exact absurd (dite_eq_right h) hc

theorem isoTyp_scalar (a : NG.AlgWt L n) (J : Subgroup (GAf L n)) (χ : J →* ℂˣ)
    (B : Set (HeightOneSpectrum (𝓞 (maximalRealSubfield L))))
    (hyp : NG.HypOutside J χ B) (S : Submodule ℂ (GAf L n → a.W)) (hS : NG.IsIrrRep a.ρ S) (s : SplitPlace L)
    (ϖ : s.v.adicCompletion (maximalRealSubfield L)) (k : ℕ) (hsB : s.v ∉ B) (hϖ : IsUnif L s.v ϖ) :
    ∃ c : ℂ, ∀ f ∈ NG.isoTyp a.ρ S, f ∈ NG.TypeSp a.ρ J χ → NG.tN J s ϖ k f = c • f := by
  classical
  have tc : ∀ κ : GAf L n, TrivOutside {s.v} κ → TrivOutside Bᶜ κ := fun κ hκ v hv =>
    hκ v fun h => hv (by rw [Set.mem_compl_iff, Set.mem_singleton_iff.1 h]; exact hsB)
  have hJU : ∀ κ, TrivOutside {s.v} κ → (κ ∈ J ↔ κ ∈ Umax L n) := fun κ hκ => (hyp κ (tc κ hκ)).1
  have hfin : ((fun x : GAf L n => (x : GAf L n ⧸ Umax L n)) '' tSet L n s ϖ k).Finite :=
    _root_.GlobalTheory.TSetFin.finite_image_tSet L n (Umax L n) 1 ∅ (fun κ _ => ⟨Iff.rfl, fun _ => MonoidHom.one_apply _⟩) s ϖ k
      (Set.notMem_empty _) hϖ
  obtain ⟨R, hR1, hR2⟩ := GlobalTheory.HeckeScalarSph.exists_reps (Umax L n) _ hfin
  have hD : ∀ x ∈ tSet L n s ϖ k, TrivOutside {s.v} x := fun _ hx => hx.1
  set q : ℂ := ((s.q : ℂ) ^ (k * (n - 1)))⁻¹ with hq
  have hJeq : ∀ f : GAf L n → a.W, (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) →
      NG.tN J s ϖ k f = q • ∑ γ ∈ R, NG.rt L n γ f := fun f hf => by
    rw [NG.tN, heckeD_eq_sum_of hJU hD hR1 hR2 hf]
  have hUeq : ∀ f : GAf L n → a.W, (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) →
      NG.tN (Umax L n) s ϖ k f = q • ∑ γ ∈ R, NG.rt L n γ f := fun f hf => by
    rw [NG.tN, GlobalTheory.HeckeScalarSph.heckeD_eq_sum (v := s.v) hD hR1 hR2 hf]
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.HeckeScalarSph.tN_scalar L n a S hS s ϖ k hϖ
  have hS0 : ∀ f ∈ S, (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) →
      q • ∑ γ ∈ R, NG.rt L n γ f = c • f := fun f hf hx => (hUeq f hx).symm.trans (hc f hf hx)

  have hiso : ∀ S' : Submodule ℂ (GAf L n → a.W), NG.IsoRep S S' → ∀ f ∈ S',
      (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) → q • ∑ γ ∈ R, NG.rt L n γ f = c • f := by
    rintro S' ⟨T, hT⟩ f hf hfx
    set g : S := T.symm ⟨f, hf⟩ with hg
    have hTg : ((T g : S') : GAf L n → a.W) = f := by simp [g]
    have hgx : ∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ (g : GAf L n → a.W) = g := by
      intro κ h1 h2
      have e := hT κ g ⟨NG.rt L n κ (g : GAf L n → a.W), hS.1.stable κ _ g.2⟩ rfl
      rw [hTg, hfx κ h1 h2] at e
      have e2 : T ⟨NG.rt L n κ (g : GAf L n → a.W), hS.1.stable κ _ g.2⟩ = T g := Subtype.ext (e.trans hTg.symm)
      exact congrArg Subtype.val (T.injective e2)
    have key : (c • g : S) = q • ∑ γ ∈ R, (⟨NG.rt L n γ (g : GAf L n → a.W), hS.1.stable γ _ g.2⟩ : S) := by
      apply Subtype.ext
      rw [Submodule.coe_smul, Submodule.coe_smul, Submodule.coe_sum]
      exact (hS0 g g.2 hgx).symm
    have hterm : ∀ γ : GAf L n,
        ((T ⟨NG.rt L n γ (g : GAf L n → a.W), hS.1.stable γ _ g.2⟩ : S') : GAf L n → a.W) = NG.rt L n γ f := by
      intro γ
      rw [hT γ g _ rfl, hTg]
    have := congrArg (fun u : S => ((T u : S') : GAf L n → a.W)) key
    set_option synthInstance.maxHeartbeats 100000 in
      simp only [map_smul, map_sum, Submodule.coe_smul, Submodule.coe_sum, hTg, hterm] at this
    exact this.symm

  have hsum : ∀ t : Finset (Submodule ℂ (GAf L n → a.W)),
      (↑t : Set (Submodule ℂ (GAf L n → a.W))) ⊆ {S' | NG.IsIrrRep a.ρ S' ∧ NG.IsoRep S S'} →
      (∀ h, ∀ f ∈ ⨆ S' ∈ t, S', NG.rt L n h f ∈ ⨆ S' ∈ t, S') ∧
      ∀ f ∈ ⨆ S' ∈ t, S', (∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f) →
        q • ∑ γ ∈ R, NG.rt L n γ f = c • f := by
    intro t
    induction t using Finset.induction_on with
    | empty =>
      intro _
      simp only [Finset.notMem_empty, iSup_false, iSup_bot, Submodule.mem_bot]
      refine ⟨fun h f hf => ?_, fun f hf _ => ?_⟩
      · rw [hf, map_zero]
      · simp [hf]
    | insert S₁ t hS₁ ih =>
      intro hs
      rw [Finset.coe_insert, Set.insert_subset_iff] at hs
      obtain ⟨hst, hfx⟩ := ih hs.2
      have h1 := hs.1
      rw [Finset.iSup_insert]
      refine ⟨fun h f hf => ?_, fun f hf hfix => ?_⟩
      · obtain ⟨x, hx, y, hy, rfl⟩ := Submodule.mem_sup.1 hf
        rw [map_add (f := _)]
        exact Submodule.add_mem_sup (h1.1.1.stable h x hx) (hst h y hy)
      · by_cases hd : S₁ ⊓ (⨆ S' ∈ t, S') = ⊥
        · obtain ⟨x, hx, y, hy, rfl⟩ := Submodule.mem_sup.1 hf
          have hxy : ∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ x = x ∧ NG.rt L n κ y = y := by
            intro κ hκ hκ'
            have e := hfix κ hκ hκ'
            rw [map_add (f := _)] at e
            have e1 : NG.rt L n κ x - x = y - NG.rt L n κ y := by
              rw [sub_eq_sub_iff_add_eq_add, e, add_comm]
            have hm : NG.rt L n κ x - x ∈ S₁ ⊓ (⨆ S' ∈ t, S') :=
              ⟨S₁.sub_mem (h1.1.1.stable κ x hx) hx, e1 ▸ Submodule.sub_mem _ hy (hst κ y hy)⟩
            rw [hd, Submodule.mem_bot] at hm
            refine ⟨sub_eq_zero.1 hm, ?_⟩
            rw [hm] at e1
            exact (sub_eq_zero.1 e1.symm).symm
          simp only [map_add (f := _), Finset.sum_add_distrib, smul_add]
          rw [hiso S₁ h1.2 x hx fun κ h h' => (hxy κ h h').1, hfx y hy fun κ h h' => (hxy κ h h').2]
        · have hsub : NG.IsSubrep a.ρ (S₁ ⊓ (⨆ S' ∈ t, S')) :=
            ⟨inf_le_left.trans h1.1.1.le, fun h f hf => ⟨h1.1.1.stable h f hf.1, hst h f hf.2⟩⟩
          have heq : S₁ ⊓ (⨆ S' ∈ t, S') = S₁ := (h1.1.2.2 _ hsub inf_le_left).resolve_left hd
          have hle : S₁ ≤ ⨆ S' ∈ t, S' := heq ▸ inf_le_right
          exact hfx f ((sup_le hle le_rfl) hf) hfix
  refine ⟨c, fun f hf hT => ?_⟩
  have hfix : ∀ κ ∈ Umax L n, TrivOutside {s.v} κ → NG.rt L n κ f = f := by
    intro κ h1 h2
    have hκ : κ ∈ J := (hJU κ h2).2 h1
    have e := hT.2 ⟨κ, hκ⟩
    rw [(hyp κ (tc κ h2)).2 hκ] at e
    simpa using e
  rw [hJeq f hfix]
  unfold NG.isoTyp at hf
  obtain ⟨t, ht, hft⟩ := Submodule.mem_sSup_iff_exists_finset.1 hf
  exact (hsum t ht).2 f hft hfix

theorem main : ∀ (D : D7) (μ : D.what₂.Tup) (j : ℕ) (Mr : MtReal D μ j) (B : Set (HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)))), NG.IsProdLevel Mr.J → NG.HypOutside Mr.J Mr.χ B → ∀ (S : Submodule ℂ (GAf D.host.E D.R.nV → Mr.wt.W)), NG.IsIrrRep Mr.wt.ρ S → ∀ (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)) (k : ℕ), s.v ∉ B → IsUnif D.host.E s.v ϖ → 1 ≤ k → k ≤ D.R.nV → ∃ c : ℂ, ∀ y ∈ (NG.isoTyp Mr.wt.ρ S).comap Mr.real, NG.tN Mr.J s ϖ k (Mr.real y) = c • Mr.real y := by
  intro D μ j Mr B _ hyp S hS s ϖ k hsB hϖ _ _
  obtain ⟨c, hc⟩ := isoTyp_scalar Mr.wt Mr.J Mr.χ B hyp S hS s ϖ k hsB hϖ
  refine ⟨c, fun y hy => hc _ (Submodule.mem_comap.1 hy) ?_⟩
  rw [← Mr.real_range]
  exact ⟨y, rfl⟩

end GlobalTheory.IsoTypScalar

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotypicHeckeOperatorHyperspecialActsByScalar =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RingSpecNormalisedCharacterEq\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SplitPlaceOutsideNonHyperspecialOfLocalisation\nimport Formalism.LocalToGlobal.NormalizedHeckeFactors.HeckeStdTwOfStd\nimport Formalism.LocalToGlobal.ProjectiveLattices.HalfOneAddSqrtNegIsIntegral\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace\nimport Formalism.LocalToGlobal.GaloisLevelStructure.DefsLevel\nimport Formalism.LocalToGlobal.GaloisLevelStructure.TiedHecke\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsotypicHeckeOperatorHyperspecialActsByScalar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial

namespace GlobalTheory.AutPts

theorem l0 : ∀ (D : D7) (cf : CharFrame D) (C : NChoice D) (tp : TupTied D cf C) (Pl : PlSide D) (M : MtFam D) (big : D.what₂.places.Pl → Finset ℂ) (X : LocNd (lay0 D)) (T : LocTw X) (Sp : NdSpec Pl M C big X T) (i : X.nd.Loc) (w : PlE D.host) (s : SplitPlace D.host.E), SplitOut X.nd i w → IsConjPl D.host w s.w → s.v ∉ gPl D ∪ qPl D (tp.tup (D.what₂.muTw (X.nd.w i)) ⟨X.nd.j i - 1, by have := X.nd.j_range i; omega⟩) := _root_.GlobalTheory.SplitOutPlace.not_mem_gPl_qPl
theorem l1 : ∀ (D : D7) (μ : D.what₂.Tup) (j : ℕ) (Mr : MtReal D μ j) (B : Set (HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)))), NG.IsProdLevel Mr.J → NG.HypOutside Mr.J Mr.χ B → ∀ (S : Submodule ℂ (GAf D.host.E D.R.nV → Mr.wt.W)), NG.IsIrrRep Mr.wt.ρ S → ∀ (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)) (k : ℕ), s.v ∉ B → IsUnif D.host.E s.v ϖ → 1 ≤ k → k ≤ D.R.nV → ∃ c : ℂ, ∀ y ∈ (NG.isoTyp Mr.wt.ρ S).comap Mr.real, NG.tN Mr.J s ϖ k (Mr.real y) = c • Mr.real y := _root_.GlobalTheory.IsoTypScalar.main
theorem l2b : ∀ (D : D7) (M : MtFam D) (B : NLocBase D M) (j : ℕ) (w : D.what₂.places.Pl) (μ : D.what₂.Tup) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m), μ = D.what₂.muTw w → ∀ (φ : FractionRing (B.Oc j w) →+* ℂ), (∀ x, φ (B.ec j w x) = D.what₂.embLL x) → ∀ (κ : PlE D.host → ℕ → FractionRing (B.Oc j w)) (E : Submodule ℂ (D.what₂.Mt μ j)), (∀ v k, GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → ∃ (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), IsConjPl D.host v s.w ∧ IsUnif D.host.E s.v ϖ) → (∀ v k (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → IsConjPl D.host v s.w → IsUnif D.host.E s.v ϖ → ∀ (c : ℂ) (f f' : GAf D.host.E D.R.nV → (M μ j h1 h2).wt.W), NG.tN (M μ j h1 h2).J s ϖ k (c • f + f') = c • NG.tN (M μ j h1 h2).J s ϖ k f + NG.tN (M μ j h1 h2).J s ϖ k f') → (∀ y, y ∈ E ↔ ∀ v k (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k → IsConjPl D.host v s.w → IsUnif D.host.E s.v ϖ → NG.tN (M μ j h1 h2).J s ϖ k ((M μ j h1 h2).real y) = φ (κ v k) • (M μ j h1 h2).real y) → Module.finrank (FractionRing (B.Oc j w)) ↥(⨅ (v : PlE D.host) (k : ℕ) (_ : GenAt D (D.what₂.places.resChar w) (B.Qc j w) v k), Module.End.eigenspace (B.hK j w v k) (κ v k)) = Module.finrank ℂ E := _root_.GlobalTheory.PtLocalEig.eig_dim

theorem genAt_iff' {D : D7} {Pl : PlSide D} {M : MtFam D} {C : NChoice D} {big : D.what₂.places.Pl → Finset ℂ}
    {X : LocNd (lay0 D)} {T : LocTw X} (Sp : NdSpec Pl M C big X T) (i : X.nd.Loc) (v : PlE D.host) (k : ℕ) :
    GenAt D (D.what₂.places.resChar (X.nd.w i)) (Sp.B.Qc (X.nd.j i) (X.nd.w i)) v k ↔
      (SplitOut X.nd i v ∧ 1 ≤ k ∧ k ≤ D.R.nV) := by
  have h : i ∈ X.nd.locs (X.nd.j i) (X.nd.w i) := (X.nd.locs_mem _ _ i).2 ⟨rfl, rfl⟩
  have hl : X.nd.l i = D.what₂.places.resChar (X.nd.w i) := (X.nd.w_l i).symm
  have hS : v ∈ X.nd.S i ↔ v ∈ placesS D (D.what₂.places.resChar (X.nd.w i)) := by
    rw [X.nd.S_def, hl]; rfl
  unfold SplitOut GenAt
  rw [hS, Sp.Q_eq _ _ i h, hl]
  tauto

theorem mem_iSup_iff {V Wf : Type} [AddCommGroup V] [Module ℂ V] [AddCommGroup Wf] [Module ℂ Wf] {ι : Type}
    [Finite ι] (real : V →ₗ[ℂ] Wf) (hreal : Function.Injective real) (typ : ι → Submodule ℂ V)
    (hind : iSupIndep typ) (htop : ⨆ P, typ P = ⊤) {Par : Type} (Good : Par → Prop) (op : Par → Wf → Wf)
    (hlin : ∀ p, Good p → ∀ (c : ℂ) (f f' : Wf), op p (c • f + f') = c • op p f + op p f')
    (hsc : ∀ P p, Good p → ∃ c : ℂ, ∀ y ∈ typ P, op p (real y) = c • real y) (lam : Par → ℂ) (Q : ι → Prop)
    (hQ : ∀ P, Q P ↔ ∀ p, Good p → ∀ y ∈ typ P, op p (real y) = lam p • real y) (y : V) :
    y ∈ (⨆ P ∈ {P | Q P}, typ P) ↔ ∀ p, Good p → op p (real y) = lam p • real y := by
  classical
  have hop0 : ∀ p, Good p → op p 0 = 0 := fun p hp => by
    have h := hlin p hp 1 0 0
    rw [one_smul, add_zero, one_smul] at h
    exact (add_eq_left.1 h.symm)
  have hopadd : ∀ p, Good p → ∀ f f' : Wf, op p (f + f') = op p f + op p f' := fun p hp f f' => by
    simpa using hlin p hp 1 f f'
  have hopsmul : ∀ p, Good p → ∀ (c : ℂ) (f : Wf), op p (c • f) = c • op p f := fun p hp c f => by
    simpa [hop0 p hp] using hlin p hp c f 0
  let Es : Submodule ℂ V :=
    { carrier := {y | ∀ p, Good p → op p (real y) = lam p • real y}
      zero_mem' := fun p hp => by simp [hop0 p hp]
      add_mem' := fun {a b} ha hb p hp => by
        simp only [map_add (f := _), hopadd p hp, ha p hp, hb p hp, smul_add]
      smul_mem' := fun c a ha p hp => by
        simp only [map_smul, hopsmul p hp, ha p hp, smul_comm c (lam p)] }
  show y ∈ _ ↔ y ∈ Es
  constructor
  · intro hy
    refine (iSup₂_le fun P hP => ?_ : (⨆ P ∈ {P | Q P}, typ P) ≤ Es) hy
    intro z hz p hp
    exact (hQ P).1 hP p hp z hz
  · intro hy
    have hy' : y ∈ ⨆ P, typ P := by rw [htop]; trivial
    obtain ⟨f, hf, hsum⟩ := (Submodule.mem_iSup_iff_exists_finsupp typ y).1 hy'
    rw [← hsum]
    refine Submodule.finsuppSum_mem _ _ _ _ fun P hPs => ?_
    by_cases h0 : f P = 0
    · rw [h0]; exact Submodule.zero_mem _
    refine (le_iSup₂ (f := fun P (_ : P ∈ {P | Q P}) => typ P) P ?_) (hf P)
    show Q P
    refine (hQ P).2 fun p hp => ?_
    obtain ⟨c, hc⟩ := hsc P p hp
    choose cc hcc using fun P' => hsc P' p hp

    have hz : ∑ P' ∈ f.support, (cc P' - lam p) • f P' = 0 := by
      apply hreal

      rw [map_zero, map_sum]
      have e1 : ∀ P' ∈ f.support, real ((cc P' - lam p) • f P') = op p (real (f P')) - lam p • real (f P') := by
        intro P' _
        rw [map_smul, hcc P' _ (hf P'), sub_smul]
      rw [Finset.sum_congr rfl e1, Finset.sum_sub_distrib, ← Finset.smul_sum]
      have e2 : ∀ s : Finset ι, op p (real (∑ P' ∈ s, f P')) = ∑ P' ∈ s, op p (real (f P')) := by
        intro s
        induction s using Finset.induction_on with
        | empty => simp [hop0 p hp]
        | insert a s ha ih => rw [Finset.sum_insert ha, Finset.sum_insert ha, map_add (f := _), hopadd p hp, ih]
      have e3 : (∑ P' ∈ f.support, f P') = y := hsum
      have e4 : ∑ P' ∈ f.support, op p (real (f P')) = op p (real y) := by rw [← e2, e3]
      have e5 : ∑ P' ∈ f.support, real (f P') = real y := by rw [← e3, map_sum]
      rw [e4, e5, hy p hp, sub_self]
    have hz' := ((iSupIndep_iff_finsetSum_eq_zero_imp_eq_zero typ).1 hind) f.support
      (fun P' => (cc P' - lam p) • f P') (fun P' _ => Submodule.smul_mem _ _ (hf P')) hz P
      (Finsupp.mem_support_iff.2 h0)
    have hcl : cc P = lam p := by
      rcases smul_eq_zero.1 hz' with h | h
      · exact sub_eq_zero.1 h
      · exact absurd h h0
    intro z hz
    rw [hcc P z hz, hcl]

end GlobalTheory.AutPts

namespace GlobalTheory.AutPts


end GlobalTheory.AutPts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExist =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExist", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeckeOpen\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeEigensystemMultiplicities\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoeffMonicPolySum\npublic import Formalism.LocalToGlobal.GaloisLevelStructure.DefsAut\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FiniteCosetsHeckeSetAtSplitPlaceOutsideLevel\npublic import Formalism.LocalToGlobal.NormalizedHeckeFactors.CoverAct\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SplitExEveryDatum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FinrankJointEigenspaceCoefficientFieldComplex\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HeckeMultiplicityEqFinrankJointEigenspace\n\n"}
section -- clump:auto
@[expose] public section



section
open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.ConjugateSelfDual ReciprocityTheory.Gal ReciprocityTheory.Aut Formalism.AUTREP Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX GlobalTheory.HeightCounting NumberField IsDedekindDomain Polynomial
namespace GlobalTheory.AutPts
end GlobalTheory.AutPts
namespace GlobalTheory.AutPts


theorem automorphic_points_exist : ∀ (D : D7) (cf : CharFrame D) (jE : D.host.E →+* Qb) (A : _root_.GlobalTheory.HeightCounting.CharFrameHostEmbedding D cf jE) (low : Finset ℕ) (Pq : HeightOneSpectrum (𝓞 (maximalRealSubfield D.host.E)) → PlE D.host) (S : RatDat D.ntw) (hL : ∀ j, ℕ → PlE D.host → Module.End D.what₂.LL (S.WL j)) (eig : ℕ → D.what₂.FT → ℕ → PlE D.host → ↥D.LL0) (θ : ∀ kk : Fin 2, Multiplicative (ZMod (D.host.g kk)) →* (↥D.LL0)ˣ) (Bs : SideB D cf A.row low Pq S hL eig θ) (M : MtFam D) (C : NChoice D) (tp : TupTied D cf C) (hCS : ChoiceSide D cf M Bs.exp C tp) (hMI : MtInput D M tp.tup C.Q) (hstar : ∀ x : D.LL0, star (x : D.what₂.LL) ∈ D.LL0) (hE : ∀ j g, ∃ z : ℤ, eExp D j g = z) (hsp : ∀ v, v ∈ placesOver D.host.E D.host.pde ∨ v ∈ placesOver D.host.E D.host.pde' → IsSplitPl D.host v) (hCh : GlobalTheory.RowTie.ChebSplit D.nd) (big : D.what₂.places.Pl → Finset ℂ) (X : LocNd (lay0 D)) (T : LocTw X) (Sp : NdSpec A.pl M C big X T) (i : X.nd.Loc) (ι : Type) [Finite ι] (F : ι → Submodule ℂ (GAf D.host.E D.R.nV → (mlX M X i).wt.W)) (irr : ∀ P, NG.IsIrrRep (mlX M X i).wt.ρ (F P)) (hinj : ∀ P P', NG.IsoRep (F P) (F P') → P = P') (hsurj : ∀ S', NG.IsIrrRep (mlX M X i).wt.ρ S' → (NG.isoTyp (mlX M X i).wt.ρ S').comap (mlX M X i).real ≠ ⊥ → ∃ P, NG.IsoRep (F P) S') (hne : ∀ P, (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real ≠ ⊥) (hind : iSupIndep (fun P => (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real)) (htop : ⨆ P, (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real = ⊤) (ptV : ι → Option (X.nd.X i)), (∀ P x, ptV P = some x ↔ (∀ (w : PlE D.host) (k : ℕ) (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)), SplitOut X.nd i w → IsConjPl D.host w s.w → IsUnif D.host.E s.v ϖ → 1 ≤ k → k ≤ D.R.nV → ∀ y ∈ ((NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real), NG.tN (mlX M X i).J s ϖ k ((mlX M X i).real y) = (((qCast (X.nd.w_l i) (A.pl.ι (X.nd.w i))).toRingHom.comp (Sp.iq i)).comp (algebraMap (X.nd.O i) (FractionRing (X.nd.O i)))) ((X.nd.hT i w k : X.nd.X i → X.nd.O i) x) • (mlX M X i).real y)) → (∀ x, ∃ P, ptV P = some x) ∧ ∀ x, X.nd.mult i x = Module.finrank ℂ ↥(⨆ P ∈ {P | ptV P = some x}, ((NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real)) := by
  intro D cf jE A low Pq S hL eig θ Bs M C tp hCS hMI hstar hE hsp hCh big X T Sp i ι _ F irr hinj hsurj hne hind
    htop ptV hpt
  classical
  have hmem : i ∈ X.nd.locs (X.nd.j i) (X.nd.w i) := (X.nd.locs_mem _ _ i).2 ⟨rfl, rfl⟩
  have hj1 : X.nd.j i - 1 + 1 = X.nd.j i := by have := X.nd.j_range i; omega
  let jf : Fin D.R.m := ⟨X.nd.j i - 1, by have := X.nd.j_range i; omega⟩
  let B := gPl D ∪ qPl D (tp.tup (D.what₂.muTw (X.nd.w i)) jf)
  have hprod : NG.IsProdLevel (mlX M X i).J :=
    _root_.GlobalTheory.FitHecke.mt_transport M (fun _ _ Mr => NG.IsProdLevel Mr.J) (X.nd.mu_w i).symm hj1 _ _ _ _ (hMI.prod (X.nd.w i) jf)
  have hhyp : NG.HypOutside (mlX M X i).J (mlX M X i).χ B :=
    _root_.GlobalTheory.FitHecke.mt_transport M (fun _ _ Mr => NG.HypOutside Mr.J Mr.χ B) (X.nd.mu_w i).symm hj1 _ _ _ _ (hMI.hyp (X.nd.w i) jf)
  have hbad : ∀ w (s : SplitPlace D.host.E), SplitOut X.nd i w → IsConjPl D.host w s.w → s.v ∉ B :=
    fun w s hw hc => l0 D cf C tp A.pl M big X T Sp i w s hw hc
  have hlin : ∀ w k (s : SplitPlace D.host.E) (ϖ : s.v.adicCompletion (maximalRealSubfield D.host.E)),
      SplitOut X.nd i w → IsConjPl D.host w s.w → IsUnif D.host.E s.v ϖ → ∀ (c : ℂ) (f f' : GAf D.host.E D.R.nV → (mlX M X i).wt.W),
      NG.tN (mlX M X i).J s ϖ k (c • f + f') = c • NG.tN (mlX M X i).J s ϖ k f + NG.tN (mlX M X i).J s ϖ k f' := by
    intro w k s ϖ hw hc hu c f f'
    have hfin := _root_.GlobalTheory.TSetFin.finite_image_tSet D.host.E D.R.nV (mlX M X i).J (mlX M X i).χ B hhyp s ϖ k (hbad w s hw hc) hu
    simp only [NG.tN]
    rw [GlobalTheory.PtLocalEig.heckeD_add _ _ _ _ hfin c f f', smul_add, smul_comm]
  let Par := PlE D.host × ℕ × (Σ s : SplitPlace D.host.E, s.v.adicCompletion (maximalRealSubfield D.host.E))
  let Good : Par → Prop := fun p => SplitOut X.nd i p.1 ∧ IsConjPl D.host p.1 p.2.2.1.w ∧
    IsUnif D.host.E p.2.2.1.v p.2.2.2 ∧ 1 ≤ p.2.1 ∧ p.2.1 ≤ D.R.nV
  let op : Par → (GAf D.host.E D.R.nV → (mlX M X i).wt.W) → (GAf D.host.E D.R.nV → (mlX M X i).wt.W) :=
    fun p => NG.tN (mlX M X i).J p.2.2.1 p.2.2.2 p.2.1
  let io : X.nd.O i →+* ℂ := ((qCast (X.nd.w_l i) (A.pl.ι (X.nd.w i))).toRingHom.comp (Sp.iq i)).comp
    (algebraMap (X.nd.O i) (FractionRing (X.nd.O i)))
  let lam : X.nd.X i → Par → ℂ := fun x p => io ((X.nd.hT i p.1 p.2.1 : X.nd.X i → X.nd.O i) x)
  have hdec : ∀ x y, y ∈ (⨆ P ∈ {P | ptV P = some x}, (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real) ↔
      ∀ p, Good p → op p ((mlX M X i).real y) = lam x p • (mlX M X i).real y := by
    intro x y
    refine mem_iSup_iff (mlX M X i).real (mlX M X i).real_inj _ hind htop Good op
      (fun p hp => hlin _ _ _ _ hp.1 hp.2.1 hp.2.2.1) (fun P p hp => ?_) (lam x) (fun P => ptV P = some x)
      (fun P => ?_) y
    · exact l1 D (X.nd.mu i) (X.nd.j i) (mlX M X i) B hprod hhyp (F P) (irr P) p.2.2.1 p.2.2.2 p.2.1
        (hbad _ _ hp.1 hp.2.1) hp.2.2.1 hp.2.2.2.1 hp.2.2.2.2
    · rw [hpt P x]
      constructor
      · rintro h ⟨w, k, s, ϖ⟩ ⟨hw, hc, hu, hk1, hk2⟩ z hz
        exact h w k s ϖ hw hc hu hk1 hk2 z hz
      · intro h w k s ϖ hw hc hu hk1 hk2 z hz
        exact h ⟨w, k, s, ϖ⟩ ⟨hw, hc, hu, hk1, hk2⟩ z hz
  have hinjC : Function.Injective (Sp.iotaC (X.nd.j i) (X.nd.w i)) := by
    intro a b hab
    obtain ⟨a', rfl⟩ := (Sp.phO _ _ i hmem).surjective a
    obtain ⟨b', rfl⟩ := (Sp.phO _ _ i hmem).surjective b
    rw [← Sp.iotaC_coh, ← Sp.iotaC_coh] at hab
    have hio : Function.Injective io :=
      (qCast (X.nd.w_l i) (A.pl.ι (X.nd.w i))).injective.comp ((Sp.iq i).injective.comp
        (IsFractionRing.injective (X.nd.O i) (FractionRing (X.nd.O i))))
    rw [hio hab]
  let φ : FractionRing (Sp.B.Oc (X.nd.j i) (X.nd.w i)) →+* ℂ := IsFractionRing.lift hinjC
  have hφalg : ∀ z, φ (algebraMap _ _ z) = Sp.iotaC _ _ z := fun z => IsFractionRing.lift_algebraMap hinjC z
  have hφK : φ.comp (Sp.phK _ _ i hmem).toRingHom =
      (qCast (X.nd.w_l i) (A.pl.ι (X.nd.w i))).toRingHom.comp (Sp.iq i) := by
    apply IsLocalization.ringHom_ext (nonZeroDivisors (X.nd.O i))
    ext z
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingEquiv.coe_toRingHom, Sp.phK_alg, hφalg]
    rw [← Sp.iotaC_coh]
  have hφ : ∀ y, φ (Sp.B.ec _ _ y) = D.what₂.embLL y := by
    intro y
    rw [← Sp.phK_emb _ _ i hmem y, ← Sp.iq_LL i y]
    exact congrArg (fun f : FractionRing (X.nd.O i) →+* ℂ => f (X.nd.embK i y)) hφK
  have hdim : ∀ x, X.nd.mult i x = Module.finrank ℂ
      ↥(⨆ P ∈ {P | ptV P = some x}, (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real) := by
    intro x
    rw [_root_.GlobalTheory.HeightCounting.mult_eq_finrank_jointEig D A.pl M C big X T Sp (X.nd.j i) (X.nd.w i) i hmem x]
    refine _root_.GlobalTheory.PtLocalEig.eig_dim D M Sp.B (X.nd.j i) (X.nd.w i) (X.nd.mu i) (X.nd.j_range i).1 (X.nd.j_range i).2 (X.nd.mu_w i) φ hφ
      (fun v k => algebraMap _ _ (Sp.phO _ _ i hmem ((X.nd.hT i v k : X.nd.X i → X.nd.O i) x))) _ ?_ ?_ ?_
    · intro v k hvk
      exact _root_.GlobalTheory.SplitConjPlace.splitEx_all D v hvk.1
    · intro v k s ϖ hvk hc hu c f f'
      exact hlin v k s ϖ ((genAt_iff' Sp i v k).1 hvk).1 hc hu c f f'
    · intro y
      rw [hdec x y]
      constructor
      · intro h v k s ϖ hvk hc hu
        obtain ⟨hv, hk1, hk2⟩ := (genAt_iff' Sp i v k).1 hvk
        have e := h ⟨v, k, s, ϖ⟩ ⟨hv, hc, hu, hk1, hk2⟩
        rw [hφalg, ← Sp.iotaC_coh]
        exact e
      · rintro h ⟨v, k, s, ϖ⟩ ⟨hv, hc, hu, hk1, hk2⟩
        have e := h v k s ϖ ((genAt_iff' Sp i v k).2 ⟨hv, hk1, hk2⟩) hc hu
        rw [hφalg, ← Sp.iotaC_coh] at e
        exact e
  refine ⟨fun x => ?_, hdim⟩
  by_contra hno
  push_neg at hno
  have hbot : (⨆ P ∈ {P | ptV P = some x}, (NG.isoTyp (mlX M X i).wt.ρ (F P)).comap (mlX M X i).real) = ⊥ :=
    eq_bot_iff.2 (iSup₂_le fun P hP => absurd hP (hno P))
  have h0 := hdim x
  rw [hbot, finrank_bot] at h0
  have hne0 := X.nd.eig_ne i x
  apply hne0
  have : Module.Finite (FractionRing (X.nd.O i)) (TensorProduct (X.nd.O i) (FractionRing (X.nd.O i)) (X.nd.Mt i)) :=
    inferInstance
  exact Submodule.finrank_eq_zero.1 h0
end GlobalTheory.AutPts
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExist =====

-- ===== clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExistStatement =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExistStatement", "h": "module\n\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.HeckeOpen\npublic import Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExist\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section



end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.ThetaCorrespondence.ThetaPairLifts.ThirdPlaceSeries.AutomorphicPointsExistStatement =====
