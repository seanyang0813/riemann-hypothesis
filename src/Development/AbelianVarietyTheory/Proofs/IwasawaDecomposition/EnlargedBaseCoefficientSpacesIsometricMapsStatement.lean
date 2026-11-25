module

public import Formalism.LocalToGlobal.IndefiniteReal.Bridge
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ClassPresBasic
public import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs
public import Formalism.LocalToGlobal.IndefiniteReal.BridgeTie
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAdelicSplit
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemClosureUnitary
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BrgStdR
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousActP
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsIntegralOfLine
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBaseEnlargementFixedCoefFieldOfCoeffEnlargemen
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NVNeZero
public import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.TotallyPositiveExponents
public import Development.AbelianVarietyTheory.Counterexamples.RotationExamples.OneLeAPlLast
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OrthogonalSumCoefficientLatticeIsLatticeAndDual
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseWeightEqForcedLiftWeight
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousCoeffBlockAct
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAdelicReadingDecoratedLatticeForms
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
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
import Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsDiscriminantTwelfthRootOfIdealLatticeIffDelta1
import Formalism.LocalToGlobal.Divisibility.CoefModLemmas
import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardLiftReadingOfDecoratedLatticePresentatio
import Formalism.LocalToGlobal.Columns.AdelicLemmas

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsomVec, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdSideUnique, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvTrUnitaryOne, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMaps, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMapsStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsomVec =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsomVec", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.Bridge\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ClassPresBasic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\nimport Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\nimport Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links GlobalTheory.Mem GlobalTheory.Mem.R3
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.GsdIso

open Formalism.L2.Col Formalism.IndefR.Bridge

theorem exists_isom_vec : ∀ {K : Type} [Field K] [NumberField K] [StarRing K] (S : Formalism.L2.Col.GSD K) (ok : S.Ok) {G Γ W : Type} [Group G] [Group Γ] [NormedAddCommGroup W] [InnerProductSpace ℂ W] (ι : Γ →* G) (σ : K →+* ℂ) (ρ : Γ →* Module.End ℂ W) (J : Subgroup G) (χ : J →* ℂˣ) (P : Bridge.ClassPres ι (S.toCSD ok) σ ρ J χ) (c : S.V →ₛₗ[σ] W) (d : G → S.D),
  (∀ (φ : S.EqFun) (h : G), P.extL (S.res ok φ) h = c (φ.1 (d h))) → (∃ φ : S.EqFun, φ ≠ 0) → ∃ v : S.V, c v ≠ 0 ∧ inner ℂ (c v) (c v) = σ (S.pair v v) := by
  classical
  intro K _ _ _ S ok G Γ W _ _ _ _ ι σ ρ J χ P c d H hne
  obtain ⟨φ, hφ⟩ := hne
  obtain ⟨k, hk⟩ : ∃ k, φ.1 (S.outSec.rep k) ≠ 0 := by
    by_contra h
    push_neg at h
    exact hφ ((S.res ok).map_eq_zero_iff.1 (Subtype.ext (funext h)))
  set x := φ.1 (S.outSec.rep k) with hx
  have vi := (S.res ok φ).2 k
  let f : (S.toCSD ok).Forms := ⟨Pi.single k x, fun c' γ => by
    by_cases h : c' = k
    · subst h
      rw [Pi.single_eq_same]
      exact vi γ
    · rw [Pi.single_eq_of_ne h, map_zero]⟩
  have H1 := H ((S.res ok).symm f) (P.y k)
  rw [ClassPres.extL_apply, LinearEquiv.apply_symm_apply, GlobalTheory.PresBasic.ext_y] at H1
  have e2 : ((S.res ok).symm f).1 (d (P.y k)) =
      S.ρ (S.outSec.mv (d (P.y k))) ((Pi.single k x : S.Cl → S.V) (S.cls (d (P.y k)))) := rfl
  rw [e2] at H1
  have hfk : ((f : S.Cl → S.V)) k = x := by simp [f]
  rw [hfk] at H1
  have hc0 : P.coef x ≠ 0 := fun h => hk (GlobalTheory.PresBasic.coef_injective P (h.trans (map_zero _).symm))
  have hc : S.cls (d (P.y k)) = k := by
    by_contra h
    rw [Pi.single_eq_of_ne h, map_zero, map_zero] at H1
    exact hc0 H1
  rw [hc, Pi.single_eq_same] at H1
  refine ⟨S.ρ (S.outSec.mv (d (P.y k))) x, H1 ▸ hc0, ?_⟩
  rw [← H1, P.coef_pair, ok.inv]

end GlobalTheory.Mem.GsdIso
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsomVec =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdSideUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdSideUnique", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.BridgeTie\npublic import Formalism.LocalToGlobal.IndefiniteReal.LinksDefs\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAdelicSplit\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.MemClosureUnitary\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsDiscriminantTwelfthRootOfIdealLatticeIffDelta1\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\nimport Development.AbelianVarietyTheory.Definitions.Foundations.RayPrimes\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.L2.Theta Formalism.L2.Col Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.R3
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.StdUnique

theorem closed_eq_univ {D : D7} (V : HSp D) (C : Set (GA D V)) (hC : IsClosed C) (hQ : ∀ γ ∈ GQ V, γ ∈ C)
    (hf : ∀ h, ∀ k ∈ GfC V, h ∈ C → h * k ∈ C) (h : GA D V) : h ∈ C := by
  obtain ⟨e, he⟩ := GlobalTheory.Mem.VolSplit.exists_adelic_split D.host.F D.host.E D.sp.cm.sig V.rank V.gram
  have hfin : ∀ h : GA D V, (e h).2 = 1 → h ∈ GinfC V := fun h H =>
    MonoidHom.mem_ker.2 (Units.ext ((he h).1.symm.trans (by rw [H]; rfl)))
  have hinf : ∀ h : GA D V, (e h).1 = 1 → h ∈ GfC V := fun h H =>
    MonoidHom.mem_ker.2 (Units.ext ((he h).2.symm.trans (by rw [H]; rfl)))
  have hu : e.symm ((e h).1, 1) ∈ C := by
    by_contra hn
    obtain ⟨γ, hγ, k, hk, hU, -⟩ := GlobalTheory.RealApprox.weak_approx_real V _ (hfin _ (by rw [e.apply_symm_apply])) Cᶜ
      hC.isOpen_compl hn
    exact hU (hf γ k hk (hQ γ hγ))
  have hk : e.symm (1, (e h).2) ∈ GfC V := hinf _ (by rw [e.apply_symm_apply])
  have := hf _ _ hk hu
  rwa [← map_mul, Prod.mk_mul_mk, mul_one, one_mul, Prod.mk.eta, e.symm_apply_apply] at this

variable {D : D7} {V : HSp D} (c : CoefA V) (hc : c.Is)
include hc

theorem bot_or_top (U : Submodule ℂ c.W) (hU : ∀ γ ∈ GQ V, ∀ w ∈ U, c.ρ γ w ∈ U) : U = ⊥ ∨ U = ⊤ := by
  refine hc.2.2.2.2 U fun h => ?_
  rintro _ ⟨w, hw, rfl⟩
  refine closed_eq_univ V {h | c.ρ h w ∈ U} (U.closed_of_finiteDimensional.preimage (hc.2.2.1 w))
    (fun γ hγ => hU γ hγ w hw) (fun h k hk H => ?_) h
  show c.ρ (h * k) w ∈ U
  rw [map_mul, hc.1 k hk, mul_one]
  exact H


omit hc in
theorem exists_ratMat (γ : GQ V) : ∃ γE, Bridge.IsRatMat V γ γE := by
  obtain ⟨γ, ⟨g, -, hg⟩⟩ := γ
  exact ⟨g, hg.symm⟩

omit hc

end GlobalTheory.Mem.StdUnique

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdSideUnique =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvTrUnitaryOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvTrUnitaryOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.BrgStdR\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousActP\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsIntegralOfLine\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StdSideUnique\nimport Formalism.LocalToGlobal.Divisibility.CoefModLemmas\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links GlobalTheory.Mem GlobalTheory.Mem.R3
open scoped InnerProductSpace ComplexOrder Matrix
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.CoefIso

theorem bcVV_rhoVr {E K : Type} [Field E] [NumberField E] [Field K] [NumberField K] {ι : Type} [Fintype ι] {n : ℕ}
    (σ : K →+* ℂ) (emb : ι → E →+* K) (lam : ι → DomWeight n) (g : GL (Fin n) E) (v : VV K lam) :
    GlobalTheory.CoefSpace.bcVV σ lam (rhoVr emb lam g v) =
      rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) (GlobalTheory.CoefSpace.bcVV σ lam v) := by
  apply Subtype.ext
  show MvPolynomial.map σ (actP lam (invTrK (embGL emb g)) v.1) =
    actP lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) (MvPolynomial.map σ v.1)
  rw [GlobalTheory.CoefSpace.map_actP]
  congr 2

theorem invTr_unitary_one {n : ℕ} (U : GL (Fin n) ℂ) (hU : (U : Matrix (Fin n) (Fin n) ℂ)ᴴ * U = 1) :
    ((inside₂ ℂ n U : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)ᴴ * (1 : Matrix (Fin n) (Fin n) ℂ) *
      ((inside₂ ℂ n U : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) = 1 := by
  have hi : ((U⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) = (U : Matrix (Fin n) (Fin n) ℂ)ᴴ := by
    calc ((U⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)
        = ((U : Matrix (Fin n) (Fin n) ℂ)ᴴ * U) * ((U⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ) := by
          rw [hU, Matrix.one_mul]
      _ = (U : Matrix (Fin n) (Fin n) ℂ)ᴴ := by
          rw [Matrix.mul_assoc, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.mul_one]
  show (((U⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)ᵀ)ᴴ * 1 * ((U⁻¹ : GL (Fin n) ℂ) : Matrix (Fin n) (Fin n) ℂ)ᵀ = 1
  have e : (((U : Matrix (Fin n) (Fin n) ℂ)ᴴ)ᵀ)ᴴ = (U : Matrix (Fin n) (Fin n) ℂ)ᵀ := by
    ext i j
    simp
  rw [hi, Matrix.mul_one, e, ← Matrix.transpose_mul, hU, Matrix.transpose_one]

theorem ratMat_unitary {D : D7} (V : HSp D) (hg : V.gram = 1) (γ : GQ V) (γE : GL (Fin V.rank) D.host.E)
    (h : Bridge.IsRatMat V γ γE) (φ : D.host.E →+* ℂ) :
    ((Formalism.UG.bc φ γE : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ)ᴴ *
      ((Formalism.UG.bc φ γE : GL (Fin V.rank) ℂ) : Matrix (Fin V.rank) (Fin V.rank) ℂ) = 1 := by
  obtain ⟨γ, ⟨g, hgU, hgm⟩⟩ := γ
  have e1 : Formalism.UG.bc (incA D) g = Formalism.UG.bc (incA D) γE := hgm.trans h
  have e2 : g = γE := Units.ext (Matrix.ext fun i j =>
    (Algebra.TensorProduct.includeRight_injective (NumberField.AdeleRing.algebraMap_injective (𝓞 D.host.F) D.host.F))
      (congrArg (fun u => (Units.val u) i j) e1))
  subst e2
  have hu : Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g : Matrix (Fin V.rank) (Fin V.rank) D.host.E) * V.gram *
      (g : Matrix (Fin V.rank) (Fin V.rank) D.host.E) = V.gram := hgU
  rw [hg, Matrix.mul_one] at hu
  have hc : ((g : Matrix (Fin V.rank) (Fin V.rank) D.host.E).map φ)ᴴ =
      (Formalism.UG.cT (D.sp.cm.sig : D.host.E →+* D.host.E) (g : Matrix (Fin V.rank) (Fin V.rank) D.host.E)).map φ := by
    ext i j
    simp only [Matrix.conjTranspose_apply, Matrix.map_apply, Formalism.UG.cT, Matrix.transpose_apply]
    exact (D.sp.cm.cmUnram.2.1 φ _).symm
  rw [bc_coe, hc, ← Matrix.map_mul, hu, Matrix.map_one _ (map_zero _) (map_one _)]



theorem coef_iso : ∀ (D : D7) (V : HSp D) (n : ℕ), V.rank = n → V.gram = 1 → ∀ (c : CoefA V), c.Is → ∀ {K ι : Type} [Field K] [NumberField K] [Fintype ι] (σ : K →+* ℂ) (emb : ι → (D.host.E →+* K)) (lam : ι → DomWeight n) (c0 : VV K lam →ₛₗ[σ] c.W), Nonempty (VVIdx lam) →
  (∀ (γ : GQ V) (γE : GL (Fin V.rank) D.host.E) (g : GL (Fin n) D.host.E), Bridge.IsRatMat V γ γE → MatEq γE g → ∀ v, c0 (rhoVr emb lam g v) = c.coef.ρ γ (c0 v)) →
  (LinearIndependent ℂ fun i => c0 (bVV K lam i)) →
  ∃ (e : VV ℂ lam ≃ₗ[ℂ] c.W) (s : ℝ), 0 < s ∧ (∀ v, c0 v = (s : ℂ) • e (GlobalTheory.CoefSpace.bcVV σ lam v)) ∧
    (∀ x y, inner ℂ (e x) (e y) = pairK lam (fun _ => 1) x y) ∧
    ∀ (γ : GQ V) (γE : GL (Fin V.rank) D.host.E) (g : GL (Fin n) D.host.E), Bridge.IsRatMat V γ γE → MatEq γE g →
      ∀ x, e (rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) x) = c.coef.ρ γ (e x) := by
  intro D V n hn hg c hc K ι _ _ _ σ emb lam c0 hne hint hli
  subst hn
  classical
  have hMat : ∀ γ : GQ V, ∃ γE, Bridge.IsRatMat V γ γE ∧ MatEq γE γE := fun γ => by
    obtain ⟨γE, h⟩ := GlobalTheory.Mem.StdUnique.exists_ratMat γ
    exact ⟨γE, h, rfl, fun i j i' j' hi hj => by rw [Fin.ext hi, Fin.ext hj]⟩
  have hmem : ∀ v, c0 v ∈ Submodule.span ℂ (Set.range fun i => c0 (bVV K lam i)) := by
    intro v
    have hv : v ∈ Submodule.span K (Set.range (bVV K lam)) := by rw [(bVV K lam).span_eq]; trivial
    induction hv using Submodule.span_induction with
    | mem x hx => obtain ⟨i, rfl⟩ := hx; exact Submodule.subset_span ⟨i, rfl⟩
    | zero => simp
    | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
    | smul a x _ hx => rw [map_smulₛₗ]; exact Submodule.smul_mem _ _ hx
  obtain ⟨i₀⟩ := hne
  have htop : Submodule.span ℂ (Set.range fun i => c0 (bVV K lam i)) = ⊤ := by
    refine (GlobalTheory.Mem.StdUnique.bot_or_top c hc _ fun γ hγ w hw => ?_).resolve_left fun h0 => ?_
    · obtain ⟨γE, h1, h2⟩ := hMat ⟨γ, hγ⟩
      have hle : (Submodule.span ℂ (Set.range fun i => c0 (bVV K lam i))).map (c.ρ γ) ≤
          Submodule.span ℂ (Set.range fun i => c0 (bVV K lam i)) := by
        rw [Submodule.map_span_le]
        rintro _ ⟨i, rfl⟩
        rw [show c.ρ γ (c0 (bVV K lam i)) = c.coef.ρ ⟨γ, hγ⟩ (c0 (bVV K lam i)) from rfl,
          ← hint ⟨γ, hγ⟩ γE γE h1 h2]
        exact hmem _
      exact hle ⟨w, hw, rfl⟩
    · have := hmem (bVV K lam i₀)
      rw [h0, Submodule.mem_bot] at this
      exact hli.ne_zero i₀ this
  let b1 : Module.Basis (VVIdx lam) ℂ (VV ℂ lam) :=
    Module.Basis.mk (GlobalTheory.CoefSpace.bcVV_indep σ lam) (GlobalTheory.CoefSpace.bcVV_span σ lam).ge
  let b2 : Module.Basis (VVIdx lam) ℂ c.W := Module.Basis.mk hli htop.ge
  have hb1 : ∀ i, b1 i = GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i) := fun i => Module.Basis.mk_apply _ _ i
  have hb2 : ∀ i, b2 i = c0 (bVV K lam i) := fun i => Module.Basis.mk_apply _ _ i
  obtain ⟨e0, he0b⟩ : ∃ e0 : VV ℂ lam ≃ₗ[ℂ] c.W, ∀ i, e0 (b1 i) = b2 i :=
    ⟨b1.equiv b2 (Equiv.refl _), fun i => by simp⟩
  have he0 : ∀ v, e0 (GlobalTheory.CoefSpace.bcVV σ lam v) = c0 v := by
    intro v
    have : (e0.toLinearMap.comp (GlobalTheory.CoefSpace.bcVV σ lam) : VV K lam →ₛₗ[σ] c.W) = c0 :=
      (bVV K lam).ext fun i => by
        rw [LinearMap.comp_apply, LinearEquiv.coe_coe, ← hb1, he0b, hb2]
    exact LinearMap.congr_fun this v
  have hR : ∀ (γ : GQ V) (γE g : GL (Fin V.rank) D.host.E), Bridge.IsRatMat V γ γE → MatEq γE g → ∀ x,
      e0 (rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) x) = c.ρ γ (e0 x) := by
    intro γ γE g h1 h2 x
    have : e0.toLinearMap.comp (rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g)) =
        (c.ρ γ).comp e0.toLinearMap := b1.ext fun i => by
      rw [LinearMap.comp_apply, LinearMap.comp_apply, hb1, ← bcVV_rhoVr, LinearEquiv.coe_coe, he0, he0,
        hint γ γE g h1 h2]
      rfl
    exact LinearMap.congr_fun this x
  have hP : ∀ (γ : GQ V) (γE g : GL (Fin V.rank) D.host.E), Bridge.IsRatMat V γ γE → MatEq γE g → ∀ x y : VV ℂ lam,
      pairK lam (fun _ => 1) (rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) x)
        (rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) g) y) = pairK lam (fun _ => 1) x y := by
    intro γ γE g h1 h2
    obtain rfl : γE = g := Units.ext (Matrix.ext fun i j => h2.2 i j i j rfl rfl)
    exact pairInv ℂ ι V.rank lam (fun _ => 1) _ fun τ =>
      invTr_unitary_one (Formalism.UG.bc (σ.comp (emb τ)) γE) (ratMat_unitary V hg γ γE h1 _)
  have hgr : GlobalTheory.CoefSpace.gramOf (fun _ : ι => (1 : GL (Fin V.rank) ℂ)) = fun _ => 1 := by
    funext τ
    simp [GlobalTheory.CoefSpace.gramOf]
  let S : c.W →ₗ[ℂ] GlobalTheory.CoefSpace.HV lam (fun _ => (1 : GL (Fin V.rank) ℂ)) := e0.symm.toLinearMap
  have hS : ∀ w, S w = e0.symm w := fun _ => rfl
  let T : Module.End ℂ c.W := (LinearMap.adjoint S).comp S
  have hT : ∀ w w', inner ℂ w (T w') = pairK lam (fun _ => 1) (e0.symm w) (e0.symm w') := by
    intro w w'
    show inner ℂ w (LinearMap.adjoint S (S w')) = _
    rw [LinearMap.adjoint_inner_right, GlobalTheory.CoefSpace.inner_HV, hgr]
    rfl
  have hBinv : ∀ (γ : GQ V) a b, pairK lam (fun _ => 1) (e0.symm (c.ρ γ a)) (e0.symm (c.ρ γ b)) =
      pairK lam (fun _ => 1) (e0.symm a) (e0.symm b) := by
    intro γ a b
    obtain ⟨γE, h1, h2⟩ := hMat γ
    have key : ∀ a, e0.symm (c.ρ γ a) = rhoK lam (invTrK fun τ => Formalism.UG.bc (σ.comp (emb τ)) γE) (e0.symm a) :=
      fun a => by rw [LinearEquiv.symm_apply_eq, hR γ γE γE h1 h2, LinearEquiv.apply_symm_apply]
    rw [key, key, hP γ γE γE h1 h2]
  have hcomm : ∀ (γ : GQ V) x, T (c.ρ γ x) = c.ρ γ (T x) := by
    intro γ x
    refine ext_inner_left ℂ fun w => ?_
    have hinv : c.ρ γ (c.ρ (γ⁻¹ : GQ V) w) = w := by
      rw [← Module.End.mul_apply, ← map_mul, ← Subgroup.coe_mul, mul_inv_cancel, Subgroup.coe_one, map_one,
        Module.End.one_apply]
    calc inner ℂ w (T (c.ρ γ x)) = inner ℂ (c.ρ γ (c.ρ (γ⁻¹ : GQ V) w)) (T (c.ρ γ x)) := by rw [hinv]
      _ = pairK lam (fun _ => 1) (e0.symm (c.ρ (γ⁻¹ : GQ V) w)) (e0.symm x) := by rw [hT, hBinv]
      _ = inner ℂ (c.ρ (γ⁻¹ : GQ V) w) (T x) := (hT _ _).symm
      _ = inner ℂ (c.ρ γ (c.ρ (γ⁻¹ : GQ V) w)) (c.ρ γ (T x)) := (hc.2.1 _ _ _).symm
      _ = inner ℂ w (c.ρ γ (T x)) := by rw [hinv]
  obtain ⟨μ, hμ⟩ := GlobalTheory.Mem.RowCoord.scalar_of_comm_rat c hc T hcomm
  have hx₀ : GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀) ≠ 0 := by
    rw [← hb1]
    exact b1.ne_zero i₀
  have hpos := GlobalTheory.CoefSpace.pairK_pos lam (fun _ => 1) _ hx₀
  rw [hgr] at hpos
  have h1 := hT (e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀))) (e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀)))
  have hsq : inner ℂ (e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀))) (e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀))) =
      ((‖e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀))‖ ^ 2 : ℝ) : ℂ) := by
    rw [inner_self_eq_norm_sq_to_K]; norm_cast
  rw [hμ, inner_smul_right, LinearEquiv.symm_apply_apply, hsq] at h1
  rw [← h1] at hpos
  have hn : 0 < ‖e0 (GlobalTheory.CoefSpace.bcVV σ lam (bVV K lam i₀))‖ ^ 2 :=
    pow_pos (norm_pos_iff.2 (e0.map_ne_zero_iff.2 hx₀)) 2
  obtain ⟨hre, him⟩ := Complex.lt_def.1 hpos
  simp only [Complex.re_mul_ofReal, Complex.im_mul_ofReal, Complex.zero_re, Complex.zero_im] at hre him
  have hm : 0 < μ.re := (pos_iff_pos_of_mul_pos hre).2 hn
  have hμr : ((μ.re : ℝ) : ℂ) = μ := Complex.ext rfl (by
    rw [Complex.ofReal_im]
    exact ((mul_eq_zero.1 him.symm).resolve_right hn.ne').symm)
  have hr : 0 < Real.sqrt μ.re := Real.sqrt_pos.2 hm
  have hr0 : ((Real.sqrt μ.re : ℝ) : ℂ) ≠ 0 := by exact_mod_cast hr.ne'
  obtain ⟨e, he⟩ : ∃ e : VV ℂ lam ≃ₗ[ℂ] c.W, ∀ x, e x = ((Real.sqrt μ.re : ℝ) : ℂ) • e0 x :=
    ⟨e0.trans (LinearEquiv.smulOfNeZero ℂ c.W _ hr0), fun _ => rfl⟩
  refine ⟨e, (Real.sqrt μ.re)⁻¹, inv_pos.2 hr, fun v => ?_, fun x y => ?_, fun γ γE g h1 h2 x => ?_⟩
  · rw [he, he0, smul_smul, ← Complex.ofReal_mul, inv_mul_cancel₀ hr.ne', Complex.ofReal_one, one_smul]
  · rw [he, he, inner_smul_left, inner_smul_right, Complex.conj_ofReal, ← mul_assoc, ← Complex.ofReal_mul,
      Real.mul_self_sqrt hm.le, hμr, ← inner_smul_right, ← hμ, hT, LinearEquiv.symm_apply_apply,
      LinearEquiv.symm_apply_apply]
  · rw [he, he, hR γ γE g h1 h2]
    exact ((c.ρ γ).map_smul _ _).symm

end GlobalTheory.Mem.CoefIso
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvTrUnitaryOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMaps =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMaps", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBaseEnlargementFixedCoefFieldOfCoeffEnlargemen\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NVNeZero\npublic import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.TotallyPositiveExponents\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousActP\npublic import Development.AbelianVarietyTheory.Counterexamples.RotationExamples.OneLeAPlLast\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsReframeVStdOfPosDef\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.OrthogonalSumCoefficientLatticeIsLatticeAndDual\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseWeightEqForcedLiftWeight\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ContinuousCoeffBlockAct\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsAdelicReadingDecoratedLatticeForms\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsomVec\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.InvTrUnitaryOne\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.StandardLiftReadingOfDecoratedLatticePresentatio\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.RsCoef

theorem glue {α β : Type} {a : α} {b c : β} (h2 : c = b) (h1 : HEq a b) : HEq a c := h2 ▸ h1

theorem coef_of_iso {D : D7} (V : HSp D) (c : CoefA V) {n : ℕ} (h : n = V.rank) (j : ℕ) (lam : D.what₂.Tau → DomWeight n)
    (hlam : ∀ τ a, (lam τ).w a = (Bridge.lamLdef (D := D) V.rank j τ).w (Fin.cast h a))
    (e : VV ℂ lam ≃ₗ[ℂ] c.W) (hinn : ∀ x y, inner ℂ (e x) (e y) = pairK lam (fun _ => 1) x y)
    (hie : ∀ (γ : GQ V) (γE : GL (Fin V.rank) D.host.E) (g : GL (Fin n) D.host.E), Bridge.IsRatMat V γ γE → MatEq γE g →
      ∀ x, e (rhoK lam (invTrK fun τ => Formalism.UG.bc (tauE D τ) g) x) = c.coef.ρ γ (e x))
    (J : Matrix (Fin V.rank) (Fin V.rank) D.host.E) (hJ : J = 1) :
    ∃ c0 : VV D.what₂.LL (fun τ => Bridge.lamLdef (D := D) V.rank j τ) →ₛₗ[D.what₂.embLL] c.W,
      Bridge.CoefMapTie V c.coef c0 (rhoVr (labLL D) _) ∧
      (∀ x y, inner ℂ (c0 x) (c0 y) = D.what₂.embLL (pairVr (labLL D) _ J x y)) ∧
      ∀ (v' : VV D.what₂.LL (fun τ => Bridge.lamLdef (D := D) V.rank j τ)) (x : VV ℂ lam),
        HEq (MvPolynomial.map D.what₂.embLL v'.1) x.1 → c0 v' = e x := by
  subst h
  have hl : lam = fun τ => Bridge.lamLdef (D := D) V.rank j τ := by
    funext τ
    have h1 := hlam τ
    rcases hw : lam τ with ⟨w1, hw1⟩
    rcases hw' : Bridge.lamLdef (D := D) V.rank j τ with ⟨w2, hw2⟩
    rw [hw, hw'] at h1
    have : w1 = w2 := funext fun a => by simpa using h1 a
    subst this
    rfl
  subst hl
  refine ⟨e.toLinearMap.comp (GlobalTheory.CoefSpace.bcVV D.what₂.embLL _), ⟨fun γ γE hr v => ?_, ?_, ?_⟩, fun x y => ?_,
    fun v' x hx => ?_⟩
  · show e (GlobalTheory.CoefSpace.bcVV _ _ (rhoVr (labLL D) _ γE v)) = c.coef.ρ γ (e (GlobalTheory.CoefSpace.bcVV _ _ v))
    rw [GlobalTheory.Mem.CoefIso.bcVV_rhoVr]
    have ht : (fun τ => Formalism.UG.bc (D.what₂.embLL.comp (labLL D τ)) γE) = fun τ => Formalism.UG.bc (tauE D τ) γE :=
      funext fun τ => by rw [show D.what₂.embLL.comp (labLL D τ) = tauE D τ from GlobalTheory.ThetaFiresProbe.labE_fixed τ]
    rw [ht]
    exact hie γ γE γE hr ⟨rfl, fun a b a' b' ha hb => by rw [Fin.ext ha, Fin.ext hb]⟩ _
  · exact (GlobalTheory.CoefSpace.bcVV_indep D.what₂.embLL _).map' e.toLinearMap (LinearEquiv.ker e)
  · have hs := congrArg (Submodule.map e.toLinearMap)
      (GlobalTheory.CoefSpace.bcVV_span D.what₂.embLL (fun τ => Bridge.lamLdef (D := D) V.rank j τ))
    rw [Submodule.map_span, Submodule.map_top, LinearEquiv.range, ← Set.range_comp] at hs
    exact hs
  · subst hJ
    show inner ℂ (e _) (e _) = _
    rw [hinn, pairVr, ← GlobalTheory.CoefModel.pairK_mapVV D.what₂.embLL _ D.starLL_cx]
    have h1 : (fun τ => (gramKd (labLL D) (1 : Matrix (Fin V.rank) (Fin V.rank) D.host.E) τ).map D.what₂.embLL) =
        fun _ => (1 : Matrix (Fin V.rank) (Fin V.rank) ℂ) := by
      funext τ
      simp [gramKd]
    rw [h1]
    rfl
  · show e (GlobalTheory.CoefSpace.bcVV _ _ v') = e x
    congr 1
    exact Subtype.ext (eq_of_heq hx)

theorem cast_one {A : Type} [CommRing A] {a b : ℕ} (h : a = b) (y : GL (Fin a) A) :
    LiftBrg.castGL h (y * 1) = (1 : GL (Fin b) A)⁻¹ * LiftBrg.castGL h y * 1 * 1 := by
  simp only [mul_one, inv_one, one_mul]

theorem scale_eq_one {W : Type} [NormedAddCommGroup W] [InnerProductSpace ℂ W] {s : ℝ} (hs : 0 < s) {x : W} (h0 : (s : ℂ) • x ≠ 0)
    (h : inner ℂ ((s : ℂ) • x) ((s : ℂ) • x) = inner ℂ x x) : s = 1 := by
  have hx : x ≠ 0 := fun e => h0 (by rw [e, smul_zero])
  have hne : inner ℂ x x ≠ 0 := fun e => hx (inner_self_eq_zero.1 e)
  rw [inner_smul_left, inner_smul_right, Complex.conj_ofReal, ← mul_assoc] at h
  have h2 : ((s : ℂ) * s) = 1 := (mul_eq_right₀ hne).1 h
  have h3 : s * s = 1 := by exact_mod_cast h2
  nlinarith

theorem pair_bc {K E ι : Type} [Field K] [NumberField K] [StarRing K] [Field E] [NumberField E] [StarRing E] [Fintype ι] {n : ℕ} (σ : K →+* ℂ)
    (hσ : ∀ x, σ (star x) = star (σ x)) (emb : ι → (E →+* K)) (lam : ι → DomWeight n) (x y : VV K lam) :
    σ (pairVr emb lam 1 x y) = pairK lam (fun _ => 1) (GlobalTheory.CoefSpace.bcVV σ lam x) (GlobalTheory.CoefSpace.bcVV σ lam y) := by
  rw [pairVr, ← GlobalTheory.CoefModel.pairK_mapVV σ _ hσ]
  have h1 : (fun τ => (gramKd emb (1 : Matrix (Fin n) (Fin n) E) τ).map σ) = fun _ => (1 : Matrix (Fin n) (Fin n) ℂ) := by
    funext τ
    simp [gramKd]
  rw [h1]
  rfl

theorem read_iso {K : Type} [Field K] [NumberField K] [StarRing K] (S : Formalism.L2.Col.GSD K) (ok : S.Ok) {G Γ W : Type} [Group G] [Group Γ]
    [NormedAddCommGroup W] [InnerProductSpace ℂ W] {ι : Γ →* G} {σ : K →+* ℂ} {ρ : Γ →* Module.End ℂ W} {J : Subgroup G} {χ : J →* ℂˣ}
    (P : Bridge.ClassPres ι (S.toCSD ok) σ ρ J χ) (c : S.V →ₛₗ[σ] W) (d : G → S.D) (u : S.V → W) {s : ℝ} (hs : 0 < s)
    (hc : ∀ v, c v = (s : ℂ) • u v) (hu : ∀ v, inner ℂ (u v) (u v) = σ (S.pair v v))
    (hr : ∀ (φ : S.EqFun) (h : G), P.extL (S.res ok φ) h = c (φ.1 (d h))) (φ : S.EqFun) (h : G) :
    P.extL (S.res ok φ) h = u (φ.1 (d h)) := by
  by_cases hφ : φ = 0
  · have h0 : c (φ.1 (d h)) = 0 := by rw [hφ]; exact map_zero c
    have h1 := hc (φ.1 (d h))
    rw [h0] at h1
    rw [hr, h0]
    exact ((smul_eq_zero.1 h1.symm).resolve_left (by exact_mod_cast hs.ne')).symm
  · obtain ⟨v, hv0, hv⟩ := GlobalTheory.Mem.GsdIso.exists_isom_vec S ok ι σ ρ J χ P c d hr ⟨φ, hφ⟩
    rw [hc] at hv0 hv
    rw [hr, hc, scale_eq_one hs hv0 (hv.trans (hu v).symm), Complex.ofReal_one, one_smul]



theorem std_iso {X : Stages} {px : PreX X.B.toPre} {I : Col2.ColIn X.B px} {hX : X.B.fields.Ok} {T : TwDat X.B} {Wt : Set X.B.places.Pl}
    (z : Dat X I hX T Wt) (hS : z.Std) (i : Fin X.toD7.R.m) (hg : (Vc X.toD7 i).gram = 1) :
    ∃ e : VV ℂ (X.B.wts.lamV ((i : ℕ) + 1)) ≃ₗ[ℂ] (z.R.cV i).W,
      (∀ x y, inner ℂ (e x) (e y) = pairK (X.B.wts.lamV ((i : ℕ) + 1)) (fun _ => 1) x y) ∧
      (∀ (γ : GQ (Vc X.toD7 i)) (γE : GL (Fin (Vc X.toD7 i).rank) X.toD7.host.E)
          (g : GL (Fin X.B.R.nV) X.toD7.host.E), Bridge.IsRatMat (Vc X.toD7 i) γ γE → MatEq γE g →
        ∀ x, e (rhoK (X.B.wts.lamV ((i : ℕ) + 1)) (invTrK fun τ => Formalism.UG.bc (tauE X.toD7 τ) g) x) =
          (z.R.cV i).coef.ρ γ (e x)) ∧
      ∀ (t : TupU I (usedOf I T Wt)) (ok : (Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).Ok) (φ : (Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).EqFun) (h : Bridge.Gf (Vc X.toD7 i)),
        z.R.B.jL i t ((Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).res ok φ) h =
          e (GlobalTheory.CoefSpace.bcVV X.B.embLL (X.B.wts.lamV ((i : ℕ) + 1)) (φ.1 (LiftBrg.ptL X I (usedOf I T Wt) i t 1 1 h))) := by
  have hh := hS.2 i
  unfold BrgStdV StdSide at hh
  refine hh.elim fun c hh => ?_
  have hint := hh.1
  have hread := hh.2.1
  have hli := hh.2.2.1
  refine hh.2.2.2.elim fun hcm hx => ?_
  have hlab : ∀ τ, X.B.embLL.comp (X.B.fields.emb τ) = tauE X.toD7 τ := fun τ =>
    GlobalTheory.ThetaFiresProbe.labE_fixed (D := X.toD7) τ
  refine (GlobalTheory.Mem.CoefIso.coef_iso X.toD7 (Vc X.toD7 i) X.B.R.nV
    (LiftBrg.rkEq X i).symm hg (z.R.cV i)
    (z.pins.char.base.models.cV i) (K := X.B.fields.K) X.B.embLL X.B.fields.emb
    (X.B.wts.lamV ((i : ℕ) + 1)) c (GlobalTheory.TestLat.SumLat.idx_nonempty _)
    (fun γ γE g h1 h2 v => hint γ γE g h1 h2 v) hli).elim fun e he => he.elim fun s he => ?_
  have hβ : z.R.toLevCh.βV i = 1 := z.lev.beta.1 i
  have hrd : ∀ (t : TupU I (usedOf I T Wt)) (ok : (Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).Ok) (φ : (Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).EqFun) (h : Bridge.Gf (Vc X.toD7 i)),
      z.R.B.jL i t ((Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)).res ok φ) h = c (φ.1 (LiftBrg.ptL X I (usedOf I T Wt) i t 1 1 h)) := by
    intro t ok φ h
    refine (hx h).elim fun x hm => ?_
    refine (hread hcm t ⟨⟨ok⟩, φ⟩ h x hm).trans (congrArg (fun d => c (φ.1 d)) ?_)
    have hm' := hm
    rw [hβ] at hm'
    have hx' := LiftBrg.castGL_of_matEq (LiftBrg.rkEq X i).symm _ _ hm'
    rw [Formalism.L2.Col.decoPt_mk]
    unfold LiftBrg.ptL
    refine congrArg (Formalism.L2.Col.decoOf ∅ _) (hx'.trans ?_)
    exact cast_one (LiftBrg.rkEq X i).symm (Formalism.UG.bc (swapAE X.toD7) (h : GL (Fin (Vc X.toD7 i).rank) _))
  refine ⟨e, he.2.2.1, fun γ γE g h1 h2 x => ?_, fun t ok φ h => ?_⟩
  · have h5 := he.2.2.2 γ γE g h1 h2 x
    have h3 : (fun τ => Formalism.UG.bc (X.B.embLL.comp (X.B.fields.emb τ)) g) = fun τ => Formalism.UG.bc (tauE X.toD7 τ) g :=
      funext fun τ => congrArg (fun a => Formalism.UG.bc a g) (hlab τ)
    have h4 := (congrArg (fun q => e (rhoK (X.B.wts.lamV ((i : ℕ) + 1)) (invTrK q) x)) h3).symm
    exact @Eq.trans _ _ _ ((z.R.cV i).coef.ρ γ (e x)) h4 h5
  · exact (by exact ((read_iso (Formalism.L2.Col.mtKGSD (Pr := X.B.primes px) X.B.wts I.Ch I.sel t.1 ((i : ℕ) + 1)) ok (G := Bridge.Gf (Vc X.toD7 i)) (Γ := GQ (Vc X.toD7 i)) (W := (z.R.cV i).W)
      (ι := Bridge.ratF (Vc X.toD7 i)) (σ := X.B.embLL) (ρ := (z.R.cV i).coef.ρ) (J := (LiftBrg.envL X I hX (usedOf I T Wt) z.Xg z.tr z.R.toLevCh z.R.cV i t).lev.J) (χ := (LiftBrg.envL X I hX (usedOf I T Wt) z.Xg z.tr z.R.toLevCh z.R.cV i t).lev.χ) ((z.R.B.L i t).pres) c (fun h => LiftBrg.ptL X I (usedOf I T Wt) i t 1 1 h)
      (fun v => e (GlobalTheory.CoefSpace.bcVV X.B.embLL (X.B.wts.lamV ((i : ℕ) + 1)) v)) he.1 he.2.1
      (fun v => (he.2.2.1 _ _).trans (pair_bc X.B.embLL X.B.starLL_cx X.B.fields.emb _ v v).symm) (hrd t ok) φ h) :))



theorem rs_coef : ∀ {B B' : Base} {f : Fr B.toPre} {f' : Fr B'.toPre} {T : TwDat B} {T' : TwDat B'} {w : ColW B f T} {w' : ColW B' f' T'}
  {Z : w.Lt} {Z' : w'.Lt} {hX : B.fields.Ok} {hX' : B'.fields.Ok} {Wt : Set B.places.Pl} {Wt' : Set B'.places.Pl}
  (z : Dat (w.st Z) w.I hX T Wt), Enl0 B B' → HEq f' f → HEq w'.px w.px → z.Std → ∃ (cV' : ∀ i', CoefA (Vc (w'.st Z').toD7 i')) (c0L' : ∀ i' : Fin (w'.st Z').toD7.R.m, VV (w'.st Z').toD7.what₂.LL (fun τ => Bridge.lamLdef (Vc (w'.st Z').toD7 i').rank ((i' : ℕ) + 1) τ) →ₛₗ[(w'.st Z').toD7.what₂.embLL] (cV' i').W),
    (∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → HEq (cV' i').W (z.R.cV i).W ∧ HEq (cV' i').ρ (z.R.cV i).ρ ∧ HEq (cV' i').nW (z.R.cV i).nW ∧ HEq (cV' i').iW (z.R.cV i).iW) ∧ (∀ i', (cV' i').Is) ∧
    (∀ i', Bridge.CoefMapTie (Vc (w'.st Z').toD7 i') (cV' i').coef (c0L' i') (rhoVr (labLL (w'.st Z').toD7) _)) ∧
    (∀ i' x y, inner ℂ (c0L' i' x) (c0L' i' y) = (w'.st Z').toD7.what₂.embLL (pairVr (labLL (w'.st Z').toD7) _
      (if (w'.st Z').toD7.sp.Vneg ((i' : ℕ) + 1) then -(Vc (w'.st Z').toD7 i').gram else (Vc (w'.st Z').toD7 i').gram) x y)) ∧
    ∀ (i : Fin (w.st Z).toD7.R.m) (i' : Fin (w'.st Z').toD7.R.m), (i : ℕ) = i' → ∀ (ok : (Formalism.L2.Col.mtKGSD (Pr := B.primes w.px) B.wts w.I.Ch w.I.sel (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))).1 ((i : ℕ) + 1)).Ok) (φ : (Formalism.L2.Col.mtKGSD (Pr := B.primes w.px) B.wts w.I.Ch w.I.sel (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))).1 ((i : ℕ) + 1)).EqFun)
      (h : Bridge.Gf (Vc (w.st Z).toD7 i)) (v' : VV (w'.st Z').toD7.what₂.LL (fun τ => Bridge.lamLdef (Vc (w'.st Z').toD7 i').rank ((i' : ℕ) + 1) τ)),
      HEq (MvPolynomial.map (w'.st Z').toD7.what₂.embLL v'.1)
        (MvPolynomial.map (B.embLL : B.fields.K →+* ℂ) (φ.1 (LiftBrg.ptL (w.st Z) w.I (usedOf w.I T Wt) i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))) 1 1 h)).1) →
      HEq (c0L' i' v') (z.R.B.jL i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))) ((Formalism.L2.Col.mtKGSD (Pr := B.primes w.px) B.wts w.I.Ch w.I.sel (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))).1 ((i : ℕ) + 1)).res ok φ) h) := by
  intro B B' f f' T T' w w' Z Z' hX hX' Wt Wt' z hE hf hp hS
  choose e he1 he2 he3 using fun i => std_iso z hS i (GlobalTheory.Mem.R3.BrgRead.gram_V (w.st Z) w.ok.spaces i)
  obtain ⟨hPre, -, -, -⟩ := hE
  rcases B' with ⟨P'⟩
  change P' = B.toPre at hPre
  subst hPre
  let cp : ∀ i' : Fin (w'.st Z').toD7.R.m, CoefA (Vc (w'.st Z').toD7 i') := fun i' =>
    @CoefA.mk (w'.st Z').toD7 (Vc (w'.st Z').toD7 i') (z.R.cV i').W (z.R.cV i').nW (z.R.cV i').iW (z.R.cV i').fW
      ((z.R.cV i').ρ)
  have hG := fun i' : Fin (w'.st Z').toD7.R.m => coef_of_iso (D := (w'.st Z').toD7) (Vc (w'.st Z').toD7 i')
    (cp i') (n := B.R.nV) (LiftBrg.rkEq (w.st Z) i') ((i' : ℕ) + 1)
    (B.wts.lamV ((i' : ℕ) + 1)) (GlobalTheory.Mem.LiftWt.lamV_eq_lamLdef (w.st Z) i')
    (e i') (he1 i') (he2 i')
    (if (w'.st Z').toD7.sp.Vneg ((i' : ℕ) + 1) then -(Vc (w'.st Z').toD7 i').gram else (Vc (w'.st Z').toD7 i').gram)
    (by
      rw [GlobalTheory.StdFrame.neg_eq_false_of_posDef _ i' (B.V_posDef ((i' : ℕ) + 1) (by omega) i'.2)]
      simp only [Bool.false_eq_true, if_false]
      exact GlobalTheory.Mem.R3.BrgRead.gram_V (w'.st Z') w'.ok.spaces i')
  choose c0 hc1 hc2 hc3 using hG
  refine ⟨cp, c0, ?_, fun i' => (z.pins.char.base.models.cV i'), hc1, hc2, ?_⟩
  · rintro i ⟨i', hi'⟩ hi
    dsimp only at hi
    subst hi
    exact ⟨HEq.rfl, HEq.rfl, HEq.rfl, HEq.rfl⟩
  · rintro i ⟨i', hi'⟩ hi
    dsimp only at hi
    subst hi
    intro ok φ h v' hv
    have h1 := hc3 ⟨i, hi'⟩ v' ((by exact ((GlobalTheory.CoefSpace.bcVV B.embLL (B.wts.lamV ((i : ℕ) + 1))
      (φ.1 (LiftBrg.ptL (w.st Z) w.I (usedOf w.I T Wt) i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))) 1 1 h))) :))) hv
    have h2 := he3 i (mu0F (X := B.fields) (tuOf w.I (usedOf w.I T Wt))) ok φ h
    exact glue (a := c0 ⟨i, hi'⟩ v') h2 (heq_of_eq h1)

end GlobalTheory.Mem.RsCoef

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMaps =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMapsStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMapsStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsBaseEnlargementFixedCoefFieldOfCoeffEnlargemen\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NVNeZero\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMaps\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EnlargedBaseCoefficientSpacesIsometricMapsStatement =====
