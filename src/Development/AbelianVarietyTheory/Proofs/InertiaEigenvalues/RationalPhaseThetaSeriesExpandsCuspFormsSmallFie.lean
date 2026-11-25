module

public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LFunctionPositiveConductorFourEight
public import Formalism.LocalToGlobal.IndefiniteReal.OneMapT
public import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.RatDatOfReal
public import Formalism.SharpRestriction.Divisibility.LiftErrorLocal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DictionaryCharacterTrivialOnPrincipalLevel
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGoodCoverLevelOneOverSmallField
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelDatumReferenceTupleSmallField
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftDatumThetaSeriesRightInvariantCoreLevel
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsRatScalarMulIff
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolomorphicCuspSectionsLeSpanAlgebraicCuspForms
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KapTopLastPosRun
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HolomorphicSectionsSpanRestriction
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.TameHeckeCharTrivialOnFiniteUnitsCongOne
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAlgebraMapOfSigRFixed
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
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DictionaryCharacterRightInvariantCoreLevel, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RationalPhaseThetaSeriesExpandsCuspFormsSmallFie

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DictionaryCharacterRightInvariantCoreLevel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DictionaryCharacterRightInvariantCoreLevel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LFunctionPositiveConductorFourEight\npublic import Formalism.LocalToGlobal.IndefiniteReal.OneMapT\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.RatDatOfReal\npublic import Formalism.SharpRestriction.Divisibility.LiftErrorLocal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DictionaryCharacterTrivialOnPrincipalLevel\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.TameHeckeCharTrivialOnFiniteUnitsCongOne\nimport Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsAlgebraMapOfSigRFixed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.MuLevelMul



theorem mu_mul_level : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 I0 T0 : Type) (A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T0 D.R.m), GlobalTheory.NT.RayField → ∀ (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (Rl : RealDat3 D A3 T.Q.c.F) (cG : G0 Rl.Pg D.R.r ≃* G0g D.nd) (S : NX.RatDat D.ntw) (YS : NX.NExpRealS Rl cG S) (F : Face D A3.A) (κ : ∀ j : Fin D.R.m, WeightFamilies.Wt D ((j : ℕ) + 1)) (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (O : ∀ j, OMDat T.toCore Rl.toRealDat j Unit (fun _ => A3.A.μ0)), LawsJ T → GlobalTheory.Hk3.Core Rl.toRealDat F → Nonempty (FWTie T Rl.toRealDat κ v₀) → TieIn T Rl.toRealDat κ v₀ → IoExt Rl.toRealDat → QGuard Rl.toRealDat → IsGalois ℚ D.LL0 → Formalism.L2.Host.ValLL0 D Rl.C → RayIn D (D.host.g 0 * D.host.g 1 * D.host.pde * D.host.pde') (embLL0 D).fieldRange → (∀ (k : Fin 2) (z : ℂ), z ^ (D.host.g k * (D.host.g k - 1)) = 1 → z ∈ (embLL0 D).fieldRange) → ∀ (j : Fin D.R.m) (hV : T.V ((j : ℕ) + 1) T.σ₀ = Wc D j), OMPins T Rl.toRealDat κ v₀ O j → GlobalTheory.IndefiniteRowSideFullHecke.OrthonormalLatticeThetaValues.FramePin T Rl.toRealDat j T.σ₀ hV → ∀ k ∈ T.Kf ((j : ℕ) + 1) T.σ₀, ∀ g, T.mu ((j : ℕ) + 1) T.σ₀ (g * k) = T.mu ((j : ℕ) + 1) T.σ₀ g := by
  intro D Γ _ _ Pl0 I0 T0 A3 _ T _ Rl cG S YS F κ v₀ O hJ hC _ hT _ _ _ _ _ _ j hV _ _ k hk g
  have hj := inR j
  have hσ : GoodEmb T.Q.c T.σ₀ := T.toCore.good_σ₀
  obtain ⟨τ, hτ⟩ := GlobalTheory.MuLevel.exists_ext (L := D.what₂.LL) T.σ₀
  obtain ⟨hf, hk'⟩ := (hJ.levelK _ hj _ hσ k).1 hk
  have hodd : Odd (D.host.g 0 * D.host.g 1) := hJ.pins.2.1.1 ▸ T.Q.l.odd
  obtain ⟨y, hy, hu, hc⟩ := GlobalTheory.MuLevel.exists_root_of_level _ _ hodd k hf hk'
  have hm := Rl.C.isMu0 j
  have h1 : Rl.mu0 ((j : ℕ) + 1) y = 1 := by
    refine GlobalTheory.tame_heckeChar_eq_one_of_finUnit D _ _ (hC.lev.mu0 j) hm.tame _
      (fun P hP => hm.unr P fun a ha => hP ?_) y hu hc
    rw [Nat.cast_mul]
    fin_cases a
    · exact Ideal.mul_mem_right _ _ ha
    · exact Ideal.mul_mem_left _ _ ha
  have hg : GoodEmb T.Q.c (τ.comp (algebraMap T.Q.c.F D.what₂.LL)) := hτ ▸ hσ
  obtain ⟨z, hz1, hz2⟩ := (hT.chiR j τ hg).2.2.2.1 y hu.1
  have h2 : algebraMap T.Q.c.F D.what₂.LL z = 1 :=
    D.what₂.embLL.injective (by rw [← hz1, h1, map_one, Circle.coe_one])
  have hχ : T.chiW ((j : ℕ) + 1) T.σ₀ y = 1 := by
    rw [hτ] at hz2
    apply Subtype.ext
    rw [hz2, h2, map_one, Circle.coe_one]
  have hMV := hJ.muVal _ hj _ hσ
  obtain ⟨x, hx⟩ := hMV.1 g
  have hxy : IsDetRoot _ (g * k) (x * y) := (GlobalTheory.Member.isDetRoot_laws D _).2.2.2 g k x y hx hy
  rw [hMV.2 _ _ hxy, hMV.2 g x hx, map_mul, hχ, mul_one]

end GlobalTheory.MuLevelMul
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DictionaryCharacterRightInvariantCoreLevel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RationalPhaseThetaSeriesExpandsCuspFormsSmallFie =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RationalPhaseThetaSeriesExpandsCuspFormsSmallFie", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsRatScalarMulIff\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.LFunctionPositiveConductorFourEight\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.ConjTupRefl\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HolomorphicCuspSectionsLeSpanAlgebraicCuspForms\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.KapTopLastPosRun\npublic import Formalism.LocalToGlobal.IndefiniteReal.OneMapT\npublic import Development.AbelianVarietyTheory.BlockTheory.NonGaloisCusps.RationalRayLevels\npublic import Formalism.LocalToGlobal.IndefiniteReal.DoubleCosetOperators.RatDatOfReal\npublic import Formalism.SharpRestriction.Divisibility.LiftErrorLocal\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.DictionaryCharacterRightInvariantCoreLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ExistsGoodCoverLevelOneOverSmallField\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IntFormsSubset\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.HolomorphicSectionsSpanRestriction\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsLevelDatumReferenceTupleSmallField\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.LiftDatumThetaSeriesRightInvariantCoreLevel\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.MemCuspFormsOfReadingBoundedCuspidalHolomorphicStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.FWT Formalism.IndefR.Links IsDedekindDomain NumberField GlobalTheory.ExportSeries Formalism.L2.Pj GlobalTheory.CoverRead GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels GlobalTheory.ConjTwist
open Formalism.L2.Host (embLL0)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar



noncomputable section

namespace GlobalTheory.SeriesTie.RatExpand

variable {D : D7}

theorem castDict_sum_smul {V W : HSp D} (e : V = W) {m : ℕ} (a : Fin m → ℂ) (ψ : Fin m → GA D V → ℂ) (g : GA D W) :
    castDict e (∑ i, a i • ψ i) g = ∑ i, a i * castDict e (ψ i) g := by
  subst e
  simp [castDict, Finset.sum_apply]

theorem castDict_phiJ {T : CoreJ D} {j : ℕ} {W : HSp D} {σ : T.Q.c.F →+* ℂ} (hσ : σ = T.σ₀) (h1 : T.V j σ = W)
    (h2 : T.V j T.σ₀ = W) (a : (D.host.E →+* ℂ) × ℕ → ℕ) (f : T.R j) (g : GA D W) :
    (h1 ▸ T.phiJ j σ a f : GA D W → ℂ) g = castDict h2 (T.phiJ j T.σ₀ a f) g := by
  subst hσ
  subst h1
  rfl

theorem mem_ratVec {G : Type} [Group G] [Fintype G] {Pl0 T1 : Type} {A : FamIn D.what₂.LL G Pl0 T1 D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (j : Fin D.R.m)
    (c0 : VsV D j D.what₂.LL →ₛₗ[D.what₂.embLL] (R.cV j).W) (v : VsV D j D.what₂.LL)
    (hv : ∀ m, ∃ q : ℚ, AddMonoidAlgebra.coeff (v : Pol D.what₂.LL D.what₂.Tau (Vc D j).rank) m = (q : D.what₂.LL))
    (k : Subfield ℂ) : c0 v ∈ GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels.ratVec R j c0 k := by
  refine Submodule.subset_span ⟨v, fun m => ?_, rfl⟩
  obtain ⟨q, hq⟩ := hv m
  rw [hq, map_ratCast]
  exact SubfieldClass.ratCast_mem k q

theorem expands_of_isRatPhase : ∀ (D : D7) (Γ : Type) [Group Γ] [Fintype Γ] (Pl0 I0 T0 : Type) (A3 : FamIn3 D.what₂.LL Γ Pl0 I0 (List ℕ) T0 D.R.m), GlobalTheory.NT.RayField → ∀ (T : CoreJ D) [Algebra T.Q.c.F D.what₂.LL] (Rl : RealDat3 D A3 T.Q.c.F) (cG : G0 Rl.Pg D.R.r ≃* G0g D.nd) (S : NX.RatDat D.ntw) (YS : NX.NExpRealS Rl cG S) (F : Face D A3.A) (κ : ∀ j : Fin D.R.m, WeightFamilies.Wt D ((j : ℕ) + 1)) (v₀ : ∀ (j : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (Rl.MW j σ).Vec) (O : ∀ j, OMDat T.toCore Rl.toRealDat j Unit (fun _ => A3.A.μ0)), 8 * D.R.f * D.R.r + 4 ≤ D.R.nV → LawsJ T → GlobalTheory.Hk3.Core Rl.toRealDat F → Nonempty (FWTie T Rl.toRealDat κ v₀) → TieIn T Rl.toRealDat κ v₀ → IoExt Rl.toRealDat → QGuard Rl.toRealDat → IsGalois ℚ D.LL0 → Formalism.L2.Host.ValLL0 D Rl.C → RayIn D (D.host.g 0 * D.host.g 1 * D.host.pde * D.host.pde') (embLL0 D).fieldRange → (∀ (k : Fin 2) (z : ℂ), z ^ (D.host.g k * (D.host.g k - 1)) = 1 → z ∈ (embLL0 D).fieldRange) → ∀ (j : Fin D.R.m) (hV : T.V ((j : ℕ) + 1) T.σ₀ = Wc D j), OMPins T Rl.toRealDat κ v₀ O j → GlobalTheory.IndefiniteRowSideFullHecke.OrthonormalLatticeThetaValues.FramePin T Rl.toRealDat j T.σ₀ hV → ∀ gramR c0R c0L, Bridge.FamTie Rl.B Rl.pl (Rl.Sb : Set (Formalism.L2.DIV.Pl D.host.E)) Rl.Q (labLL D) (fun τ => Bridge.lamRdef (Ptw D) τ) (fun j τ => Bridge.lamLdef (Vc D j).rank ((j : ℕ) + 1) τ) gramR c0R c0L → CoefficientBaseChange Rl.toRealDat j (O j).jL (inC (O j).c') (c0L j) (O j).c0' → ∀ (u : ∀ ρ, lowT (Rl.MW j (sg0 D A3.A)) ρ), (∀ ρ, (u ρ : (Rl.MW j (sg0 D A3.A)).sm ρ) = v₀ j _ ρ) → ∀ (ph₀ : ℂ), GlobalTheory.SeriesTie.IsRatPhase T Rl.toRealDat j hV (κ j) u (c0L j) ph₀ → ∀ (c : VsV D j ℂ →ₗ[ℂ] (Rl.cV j).W), ExtC Rl.toRealDat j (inC (O j).c') (O j).c0' c → ∀ (v : VsV D j D.what₂.LL), (∀ m, ∃ q : ℚ, AddMonoidAlgebra.coeff (v : Pol D.what₂.LL D.what₂.Tau (Vc D j).rank) m = (q : D.what₂.LL)) → ∀ (x : VsV D j ℂ), (x : Pol ℂ D.what₂.Tau (Vc D j).rank) = MvPolynomial.map D.what₂.embLL (v : Pol D.what₂.LL D.what₂.Tau (Vc D j).rank) → ∀ h ∈ GfC (Vc D j), ∃ (n : ℕ) (e : Fin n → ℂ) (f : Fin n → T.toCore.cuspA ((j : ℕ) + 1) (wtA (κ j)) (κ j).n), Expands (O j) (κ j) (fun g => ph₀ * ser Rl.toRealDat j A3.A.μ0 (Rl.vP j A3.A.μ0) u h (c x) g) e f ∧ ∀ k, e k ∈ (embLL0 D).fieldRange := by
  intro D Γ _ _ Pl0 I0 T0 A3 hRF T _ Rl cG S YS F κ v₀ O hnV hT hcore hfw hti hio hQ hgal hval hray hroots j hV hpins hfp
    gramR c0R c0L hft hbc u hu ph₀ hph c hc v hv x hx h hh
  have hInR : Formalism.L2.Pj.InR D ((j : ℕ) + 1) := ⟨by omega, by have := j.2; omega⟩
  have hlast : (κ j).LastPos := fun τ i hi => by
    rw [(hti.kap j τ).1 i]
    exact GlobalTheory.LiftWeight.kapTop_lastPos D j τ i hi
  have hn : 8 * D.R.f * D.R.r + 4 ≤ (κ j).n := by
    rw [(hti.kap j (D.eTau.symm 1)).2.2]
    exact hnV

  obtain ⟨C, hpd, hfr, hgood⟩ := _root_.GlobalTheory.CoverSmall.exists_goodCover_small D Γ Pl0 I0 T0 A3 hRF T Rl cG S YS F κ v₀ O hT hcore hfw hti hio hQ hgal hval hray hroots j hV
    hpins hfp (κ j).n
  have hser := hph C hgood hfr.ge
  have hdat : GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels.IsLevDatum Rl.toRealDat.ψ (Vc D j) (Wc D j) (Rl.toRealDat.ΛV j) (Rl.toRealDat.ΛW j)
      (T.Q.l.M * C.d.pd) C.σ₂.fieldRange (Rl.toRealDat.vacP j) (Rl.toRealDat.vP j A3.A.μ0) := by
    rw [hpd, mul_one, hfr]
    exact _root_.GlobalTheory.RefDatumLev.isLevDatum_ref D Γ Pl0 I0 T0 A3 hRF T Rl cG S YS F κ v₀ O hT hcore hfw hti hio hQ hgal hval hray hroots j hV hpins hfp

  have hcx : c x = c0L j v := by
    obtain ⟨v', hv', he⟩ := hbc v
    refine (hc v' x ?_).trans he
    rw [hx, hv', MvPolynomial.map_map, hpins.2.lift.field]
  have hw : c x ∈ GlobalTheory.IndefiniteRowSideFullHecke.RationalRayLevels.ratVec Rl.toRealDat j (c0L j) C.σ₂.fieldRange := by
    rw [hcx]
    exact mem_ratVec Rl.toRealDat j (c0L j) v hv _
  obtain ⟨φ', hφ'm, hφ'e⟩ := (hser h hh _ hdat (c x) hw).1

  have hspan : Formalism.L2.Pj.holSub0 (T.U ((j : ℕ) + 1) T.σ₀).X (laU (T.U ((j : ℕ) + 1) T.σ₀) (wtA (κ j)) (κ j).n) ≤
      Submodule.span ℂ (rdU (T.U ((j : ℕ) + 1) T.σ₀) '' {f | f ∈ sec (T.Q.Xo ((j : ℕ) + 1)) T.Q.c (wtA (κ j)) (κ j).n ∧
        rdU (T.U ((j : ℕ) + 1) T.σ₀) f ∈ Formalism.L2.Pj.holSub0 (T.U ((j : ℕ) + 1) T.σ₀).X
          (laU (T.U ((j : ℕ) + 1) T.σ₀) (wtA (κ j)) (κ j).n)}) := by
    refine (GlobalTheory.OntoCore.holSub0_le_span_cuspA D T hT _ hInR (κ j) hlast hn T.σ₀ T.toCore.good_σ₀).trans
      (Submodule.span_mono (Set.image_mono fun f hf => ⟨Formalism.L2.Pj.cusp_le_sec _ _ _ _ _ hf, ?_, ?_⟩))
    · exact ((Formalism.L2.Pj.mem_cusp _ _ _ _ _ f).1 hf).2 T.σ₀ T.toCore.good_σ₀
    · exact Formalism.L2.Pj.rdU_mem_offZero _ _
  have hmu := _root_.GlobalTheory.MuLevelMul.mu_mul_level D Γ Pl0 I0 T0 A3 hRF T Rl cG S YS F κ v₀ O hT hcore hfw hti hio hQ hgal hval hray hroots j hV hpins hfp
  have hinv := _root_.GlobalTheory.SeriesTie.LevelInv.ser_right_inv_levelK D Γ Pl0 I0 T0 A3 hRF T Rl cG S YS F κ v₀ O hT hcore hfw hti hio hQ hgal hval hray hroots j hV hpins hfp
    u h hh (c x) ph₀ φ' hφ'e
  obtain ⟨m, xs, ψ, hψ, hφeq⟩ := _root_.GlobalTheory.CoverFormDesc.cover_form_desc D T hT _ hInR T.σ₀ T.toCore.good_σ₀ C hgood.1 (wtA (κ j)) (κ j).n
    (dom_wtA _) (hgood.2.1 _ (dom_wtA _)) hspan hmu φ' hφ'm hinv
  have hψ' : ∀ k, ∃ f, (f ∈ sec (T.Q.Xo ((j : ℕ) + 1)) T.Q.c (wtA (κ j)) (κ j).n ∧
      rdU (T.U ((j : ℕ) + 1) T.σ₀) f ∈ Formalism.L2.Pj.holSub0 (T.U ((j : ℕ) + 1) T.σ₀).X
        (laU (T.U ((j : ℕ) + 1) T.σ₀) (wtA (κ j)) (κ j).n)) ∧ T.phiJ ((j : ℕ) + 1) T.σ₀ (wtA (κ j)) f = ψ k := hψ
  choose fs hfs using hψ'
  let f' : Fin m → T.toCore.cuspA ((j : ℕ) + 1) (wtA (κ j)) (κ j).n := fun k =>
    ⟨fs k, _root_.GlobalTheory.CuspOfReading.mem_cuspA_of_rdU_mem_holSub0 D T hT _ hInR (κ j) hlast hn (fs k) (hfs k).1.1 (hfs k).1.2⟩
  refine ⟨m, fun k => C.σ₂ (xs k), f', fun g => ?_, fun k => by rw [← hfr]; exact ⟨xs k, rfl⟩⟩
  show ph₀ * ser Rl.toRealDat j A3.A.μ0 (Rl.vP j A3.A.μ0) u h (c x) g = _
  rw [show ph₀ * ser Rl.toRealDat j A3.A.μ0 (Rl.vP j A3.A.μ0) u h (c x) g = castDict hV φ' g from
    (congrFun hφ'e g).symm, hφeq, castDict_sum_smul]
  refine Finset.sum_congr rfl fun k _ => ?_
  congr 1
  rw [← (hfs k).2]
  exact ((Formalism.IndefR.FWT.phi_cE T Rl.toRealDat O j (wtA (κ j)) (fs k) g).trans
    (castDict_phiJ (sOv_eq _ _ _) (O j).hV hV _ _ g)).symm

end GlobalTheory.SeriesTie.RatExpand
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RationalPhaseThetaSeriesExpandsCuspFormsSmallFie =====
