module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudTorusWeightZeroInvariantFieldCoeffs
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantFieldConstCoeffs
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.AwayToAwayRightEqOfComp
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NonemptyTorusExtensionOfIsGt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftsSubEqSumInvariantFields
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothRayQuotient
public import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsDerivationExtendOfFormallySmooth
public import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
public import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldExtendingAffineDerivation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueWeightDecompositionRaynaudAffineStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageProjectionAbelianPartStatement
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFormSec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSymmetricKodairaSpencerInvariantLiftsStatement
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightZeroCocycleEqLogDerivativeCombAddCobStatement
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.Tactic.Polynomial.Basic
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.BijectiveSmulChartSec
import Mathlib.RingTheory.PiTensorProduct
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoExtendsSemiAbelianDvrInducingFormal
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.RingTheory.WittVector.IsPoly
import Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB
import Mathlib.Tactic.ReduceModChar
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc
import Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.StalkMapInjectiveOfFlat
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombinationKillingFunctionsCoeffZe, Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferenceInvariantLiftsIsWeightZeroCechCocycle, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDerivationLiftRaynaudPreimageAffine, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionMul, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightPreservingLiftOfBaseDerivation, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionOfBasicOpens, Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightPreservingVectorFieldOnSmallerPreimages, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantLiftDerivationRaynaud, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantDerivationLiftsRaynaudCover, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasis, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasisStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombinationKillingFunctionsCoeffZe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombinationKillingFunctionsCoeffZe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantFieldConstCoeffs\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.AwayToAwayRightEqOfComp\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.InvCoefUniq

open TrivSqZeroExt (inl inr)

variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G] {n : ℕ}

theorem valR_coef_eq_zero [Smooth G.hom] (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) G)) {dd : Fin n → Fld G.left}
    (hd : ∀ a, IsInv G (v a) (dd a)) {W : G.left.Opens} (hW : IsAffineOpen W) (c : Fin n → Γ(G.left, W))
    (hc : ∀ f, ∑ a, c a * dd a W f = 0) (S : Type) [CommRing S] (g : Sp S ⟶ G.left) (hg : ⊤ ≤ g ⁻¹ᵁ W)
    (a : Fin n) : valR g W (c a) = 0 := by
  obtain ⟨φ', hφ'⟩ := Spec.map_surjective (R := CommRingCat.of R) (S := CommRingCat.of S) (g ≫ G.hom)
  let φ : R →+* S := φ'.hom
  have hφ : g ≫ G.hom = spMap φ := hφ'.symm
  letI : Algebra R S := φ.toAlgebra
  let z : ReciprocityTheory.ChartRestriction.G.Chart.sp (R₀ := R) S ⟶ G := Over.homMk g hφ
  let s : Fin n → S := fun b => valR g W (c b)
  obtain ⟨u, hb, hu⟩ := GlobalTheory.HeatMod.TorField.exists_isLieBasis v
  let e : Fin n → DualNumber S := fun b => inr (s b)
  have he : ∀ i j, e i * e j = 0 := fun _ _ => TrivSqZeroExt.inr_mul_inr _ _ _
  obtain ⟨a₁, a₂⟩ := GlobalTheory.ZH.CrdCalc.valR_spMap (GlobalTheory.SqZero.inlS R S).toRingHom g W hg
  obtain ⟨b₁, b₂⟩ := GlobalTheory.HeatMod.TorField.valR_prod hu hb.1 hd e he
    (ReciprocityTheory.ChartRestriction.G.Chart.spMap (GlobalTheory.SqZero.inlS R S) ≫ z) W a₁ Finset.univ
  have a₃ : ∀ x, valR (A := DualNumber S) (ReciprocityTheory.ChartRestriction.G.Chart.spMap (GlobalTheory.SqZero.inlS R S) ≫ z).left W x =
      inl (valR g W x) := a₂
  have key : ∀ f, ∑ i, s i * valR g W (dd i W f) = 0 := fun f => by
    have := congrArg (valR g W) (hc f)

    simpa [GlobalTheory.Points.valR_eq g W hg, map_sum, map_mul, s] using this
  have hP : GlobalTheory.SqZero.lieExp u e (fun i => he i i) *
      (ReciprocityTheory.ChartRestriction.G.Chart.spMap (GlobalTheory.SqZero.inlS R S) ≫ z) =
      ReciprocityTheory.ChartRestriction.G.Chart.spMap (GlobalTheory.SqZero.inlS R S) ≫ z := by
    refine Over.OverMorphism.ext (GlobalTheory.Points.ext_of_valR hW b₁ a₁ fun f => ?_)
    refine (b₂ f).trans ?_
    rw [add_eq_left]
    simp only [a₃, e]
    ext
    · simp [TrivSqZeroExt.fst_sum]
    · simpa [TrivSqZeroExt.snd_sum] using key f
  have h1 : GlobalTheory.SqZero.lieExp u e (fun i => he i i) = 1 := mul_eq_right.1 hP
  have h0 : GlobalTheory.SqZero.lieExp u (fun _ => (0 : DualNumber S)) (fun _ => mul_zero _) = 1 :=
    GlobalTheory.SqZero.lieExp_eq_one hb.1 _ (fun _ => rfl) _
  have hJ := GlobalTheory.SqZero.ker_fst_sq (R := R) (S := S) S
  have hz := ((GlobalTheory.SqZero.expBij (DualNumber S) hb) _ hJ).1 e (fun _ => 0)
    (fun i => by simp [RingHom.mem_ker, e]) (fun _ => zero_mem _) (fun i => he i i) (fun _ => mul_zero _)
    (h1.trans h0.symm)
  have := congrArg TrivSqZeroExt.snd (congrFun hz a)
  simpa [e, s] using this

theorem coef_eq_zero : ∀ (R : Type) [CommRing R] (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], Smooth G.hom → ∀ (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) G)) (dd : Fin n → Fld G.left), (∀ a, IsInv G (v a) (dd a)) → ∀ (W : G.left.Opens) (c : Fin n → Γ(G.left, W)), (∀ O, O ≤ W → ∀ f, ∑ a, rsT (c a) O * dd a O f = 0) → ∀ a, c a = 0 := by
  intro R _ G _ _ hs n v dd hd W c hc a
  haveI := hs
  refine GlobalTheory.KS.eq_of_rsT_eq (J := {W' : G.left.affineOpens // W'.1 ≤ W}) (fun W' => W'.1.1) (fun W' => W'.2)
    ?_ (c a) 0 fun W' => ?_
  · intro x hx
    obtain ⟨W', hW', hxW, hWU⟩ := exists_isAffineOpen_mem_and_subset hx
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨⟨W', hW'⟩, hWU⟩, hxW⟩
  · rw [GlobalTheory.KS.rsT_zero]
    exact GlobalTheory.Heat.Adjust.eq_zero_of_valR_points _ _ fun S _ g hg =>
      valR_coef_eq_zero v hd W'.1.2 (fun b => rsT (c b) W'.1.1) (hc W'.1.1 W'.2) S g hg a

end GlobalTheory.InvCoefUniq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombinationKillingFunctionsCoeffZe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferenceInvariantLiftsIsWeightZeroCechCocycle =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferenceInvariantLiftsIsWeightZeroCechCocycle", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.QuasicoherentCohomology.BijectiveSmulChartSec\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NonemptyTorusExtensionOfIsGt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombinationKillingFunctionsCoeffZe\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftsSubEqSumInvariantFields\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.DiffCoc

theorem rsT_rsT {Z : Scheme.{0}} {O₀ T : Z.Opens} (s : Γ(Z, O₀)) (hT : T ≤ O₀) (O : Z.Opens) (hO : O ≤ T) :
    rsT (rsT s T) O = rsT s O := by
  unfold rsT
  rw [dite_eq_left hT, dite_eq_left hO, dite_eq_left (hO.trans hT)]
  simp [resG]

theorem rsT_add {Z : Scheme.{0}} {O₀ : Z.Opens} (s t : Γ(Z, O₀)) (O : Z.Opens) (hO : O ≤ O₀) :
    rsT (s + t) O = rsT s O + rsT t O := by
  unfold rsT
  rw [dite_eq_left hO, dite_eq_left hO, dite_eq_left hO, map_add (f := _)]

theorem rsT_sub {Z : Scheme.{0}} {O₀ : Z.Opens} (s t : Γ(Z, O₀)) (O : Z.Opens) (hO : O ≤ O₀) :
    rsT (s - t) O = rsT s O - rsT t O := by
  unfold rsT
  rw [dite_eq_left hO, dite_eq_left hO, dite_eq_left hO, map_sub]

theorem isLift_mono {R : Type} [CommRing R] {G : Over (Sp R)} {D : R → R} {W W' : G.left.Opens} (h : W' ≤ W)
    {d : Fld G.left} (hd : IsLift G D W d) : IsLift G D W' d :=
  ⟨⟨fun O hO => hd.1.1 O (hO.trans h), fun O hO => hd.1.2.1 O (hO.trans h),
    fun O O' h' hO => hd.1.2.2 O O' h' (hO.trans h)⟩, fun O hO => hd.2 O (hO.trans h)⟩

theorem diff_isCoc : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [IsAdicComplete (maximalIdeal R) R] [Algebra ℚ R] (Dd : DegData R (maximalIdeal R)) (O : Type) [CommRing O] [StarRing O] [Module O Dd.toPre.X] (oa : Dd.toPre.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (J : Type) (V : J → Dd.toPre.P.A.left.Opens) (d : J → Fld Y.H.left), (∀ i, IsLift Y.H ⇑D (Y.q.left ⁻¹ᵁ V i) (d i)) → (∀ i, (∀ (α : Dd.toPre.X) (V' : Dd.toPre.P.A.left.Opens), Y.q.left ⁻¹ᵁ V' ≤ Y.q.left ⁻¹ᵁ V i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V') f → IsWt Y α (Y.q.left ⁻¹ᵁ V') (d i _ f))) → ∃ z : Fin n → C1 (fun i => Y.q.left ⁻¹ᵁ V i), (∀ a, IsCoc _ (z a)) ∧ (∀ a i i', IsWt Y 0 _ (z a i i')) ∧ ∀ i i' (W : Y.H.left.Opens), W ≤ Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' → ∀ f, d i W f - d i' W f = ∑ a, rsT (z a i i') W * dd a W f := by
  intro R _ _ _ _ _ _ Dd O _ _ _ oa Y n v dd hdd D J V d hlift hwt
  have hsm : Smooth Y.H.hom := (GlobalTheory.isSemiAbelian_of_isGt _ _ _ Y.isGt).smooth
  have hl : ∀ i i', Y.q.left ⁻¹ᵁ (V i ⊓ V i') ≤ Y.q.left ⁻¹ᵁ V i := fun i i' =>
    (inf_le_left : Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' ≤ Y.q.left ⁻¹ᵁ V i)
  have hr : ∀ i i', Y.q.left ⁻¹ᵁ (V i ⊓ V i') ≤ Y.q.left ⁻¹ᵁ V i' := fun i i' =>
    (inf_le_right : Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' ≤ Y.q.left ⁻¹ᵁ V i')
  have hex : ∀ i i', ∃ h : Fin n → Γ(Y.H.left, Y.q.left ⁻¹ᵁ (V i ⊓ V i')), (∀ a, IsWt Y 0 _ (h a)) ∧
      ∀ (O' : Y.H.left.Opens), O' ≤ Y.q.left ⁻¹ᵁ (V i ⊓ V i') → ∀ f,
        d i O' f - d i' O' f = ∑ a, rsT (h a) O' * dd a O' f := fun i i' =>
    GlobalTheory.VertCoeff.lifts_sub_eq_sum_invFields R Dd.toPre O oa Y n v dd hdd (V i ⊓ V i') D (d i) (d i')
      (isLift_mono (hl i i') (hlift i)) (isLift_mono (hr i i') (hlift i'))
      (fun α V' hV' f hf => hwt i α V' (fun x hx => (hV' hx).1) f hf)
      (fun α V' hV' f hf => hwt i' α V' (fun x hx => (hV' hx).2) f hf)
  choose h hw hh using hex
  refine ⟨fun a i i' => h i i' a, fun a i j k => ?_, fun a i i' => hw i i' a, fun i i' W hW f => hh i i' W hW f⟩

  let U : J → Y.H.left.Opens := fun i => Y.q.left ⁻¹ᵁ V i
  let T := U i ⊓ U j ⊓ U k
  have hij : T ≤ Y.q.left ⁻¹ᵁ (V i ⊓ V j) :=
    (le_inf (inf_le_left.trans inf_le_left) (inf_le_left.trans inf_le_right) : T ≤ U i ⊓ U j)
  have hjk : T ≤ Y.q.left ⁻¹ᵁ (V j ⊓ V k) :=
    (le_inf (inf_le_left.trans inf_le_right) inf_le_right : T ≤ U j ⊓ U k)
  have hik : T ≤ Y.q.left ⁻¹ᵁ (V i ⊓ V k) :=
    (le_inf (inf_le_left.trans inf_le_left) inf_le_right : T ≤ U i ⊓ U k)
  let c : Fin n → Γ(Y.H.left, T) := fun b =>
    rsT (h i j b) T + rsT (h j k b) T - rsT (h i k b) T
  have hc : ∀ O, O ≤ T → ∀ f, ∑ b, rsT (c b) O * dd b O f = 0 := by
    intro O hO f
    have e : ∀ b, rsT (c b) O = rsT (h i j b) O + rsT (h j k b) O - rsT (h i k b) O := fun b => by
      simp only [c]
      rw [rsT_sub _ _ _ hO, rsT_add _ _ _ hO, rsT_rsT _ hij _ hO, rsT_rsT _ hjk _ hO, rsT_rsT _ hik _ hO]
    simp only [e, sub_mul, add_mul, Finset.sum_sub_distrib, Finset.sum_add_distrib]
    rw [← hh i j O (hO.trans hij) f, ← hh j k O (hO.trans hjk) f, ← hh i k O (hO.trans hik) f]
    ring
  have h0 := _root_.GlobalTheory.InvCoefUniq.coef_eq_zero R Y.H hsm n v dd hdd T c hc a
  simp only [c] at h0
  exact (sub_eq_zero.1 h0)

end GlobalTheory.DiffCoc
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferenceInvariantLiftsIsWeightZeroCechCocycle =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDerivationLiftRaynaudPreimageAffine =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDerivationLiftRaynaudPreimageAffine", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothRayQuotient\npublic import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsDerivationExtendOfFormallySmooth\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.GenericIsoExtendsSemiAbelianDvrInducingFormal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.DenseInterior\nimport Formalism.LocalToGlobal.ProjectiveLattices.ErealAddIInf\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeA\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeB\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.LiftDer

theorem exists_lift_of_smooth (R : Type) [CommRing R] (X : Scheme.{0}) (f : X ⟶ Sp R) [Smooth f]
    (U : X.Opens) (hU : IsAffineOpen U) (D : Derivation ℤ R R) :
    ∃ δ : Γ(X, U) → Γ(X, U), (∀ a b, δ (a + b) = δ a + δ b) ∧ (∀ a b, δ (a * b) = a * δ b + b * δ a) ∧
      ∀ r, δ (constFn f U r) = constFn f U (D r) := by
  let g : R →+* Γ(X, U) :=
    (f.appLE ⊤ U (fun _ _ => trivial)).hom.comp (Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom
  have hg : g.Smooth := by
    refine RingHom.Smooth.comp (RingHom.Smooth.of_bijective ?_) ?_
    · exact ((Scheme.ΓSpecIso (CommRingCat.of R)).commRingCatIsoToRingEquiv.symm).bijective
    · exact HasRingHomProperty.appLE @Smooth f inferInstance ⟨⊤, isAffineOpen_top _⟩ ⟨U, hU⟩ _
  letI : Algebra R Γ(X, U) := g.toAlgebra
  haveI : Algebra.FormallySmooth R Γ(X, U) := hg.formallySmooth
  obtain ⟨d, hadd, hmul, hc⟩ := GlobalTheory.KS.exists_derivation_extend_of_formallySmooth R Γ(X, U) Γ(X, U)
    (RingHom.id _) (fun r => g (D r)) (fun a b => by simp) (fun a b => by
      simp only [Derivation.leibniz, smul_eq_mul, map_add (f := _), map_mul, RingHom.id_apply]
      rw [RingHom.algebraMap_toAlgebra])
  exact ⟨d, hadd, hmul, fun r => hc r⟩

theorem isAffineHom_q {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O]
    [Module O Q.X] {oa : Q.OAct O} (Y : Ray oa) : IsAffineHom Y.q.left :=
  GlobalTheory.RayEv.Ray.isAffineHom_q Y

theorem smooth_H {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O]
    [Module O Q.X] {oa : Q.OAct O} (Y : Ray oa) : Smooth Y.H.hom := by
  have h1 : Smooth Y.q.left := Y.smooth_q
  have := Q.P.smoothDim
  have h2 : Smooth Q.P.A.hom := SmoothOfRelativeDimension.smooth Q.P.g _
  rw [← Over.w Y.q]
  infer_instance

theorem exists_lift_preimage : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Q.P.A.left.affineOpens) (D : Derivation ℤ R R), ∃ δ : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1) → Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1), (∀ a b, δ (a + b) = δ a + δ b) ∧ (∀ a b, δ (a * b) = a * δ b + b * δ a) ∧ ∀ r, δ (constFn Y.H.hom _ r) = constFn Y.H.hom _ (D r) := by
  intro R _ _ Q O _ _ _ oa Y V D
  have := isAffineHom_q Y
  have := smooth_H Y
  exact exists_lift_of_smooth R Y.H.left Y.H.hom _ (V.2.preimage Y.q.left) D

end GlobalTheory.LiftDer
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDerivationLiftRaynaudPreimageAffine =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionMul =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionMul", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Heat.WtMul

open GlobalTheory.Heat.WtAlg

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O} {Y : Ray oa}

theorem c_add {S : Type} [CommRing S] {φ : R →+* S} (x x' : Over.mk (spMap φ) ⟶ Y.H) (c : Q.X → Sˣ)
    (hq : x' ≫ Y.q = x ≫ Y.q)
    (hc : ∀ χ y J, Good Q.P.L y J →
      val ((Y.Φ _ x').s χ) (𝟙 _) y J = gm (𝟙 (Over.mk (spMap φ)).left) y ⊤ (unitOn (c χ)) * val ((Y.Φ _ x).s χ) (𝟙 _) y J)
    (χ χ' : Q.X) : c (χ + χ') = c χ * c χ' := by
  have hu : unitOn (c (χ + χ')) = unitOn (c χ) * unitOn (c χ') := unit_ext fun y _ => by
    obtain ⟨J, hJ, -⟩ := exists_good Q.P.L Q.P.isLB y (K := PEmpty.{1}) PEmpty.elim PEmpty.elim
      (fun a => a.elim) (fun a => a.elim)
    have e₁ := GlobalTheory.TorusModel.cv_add (Y.Φ _ x) hJ χ χ'
    have e₂ := GlobalTheory.TorusModel.cv_add (Y.Φ _ x') hJ χ χ'
    rw [Ray.Φ_b] at e₁ e₂
    rw [hq] at e₂
    dsimp only [GlobalTheory.TorusModel.cv] at e₁ e₂
    rw [hc _ y J hJ, hc _ y J hJ, hc _ y J hJ, _root_.mul_assoc, e₁, _root_.mul_mul_mul_comm] at e₂
    rw [map_mul]
    exact mul_right_cancel e₂
  have := congrArg (fun u : (Γ(Sp S, ⊤))ˣ => (Scheme.ΓSpecIso (CommRingCat.of S)).hom.hom u.val) hu
  simp only [unitOn, Units.coe_map, Units.val_mul, map_mul] at this
  refine Units.ext ((Iso.inv_hom_id_apply _ _).symm.trans (this.trans ?_))
  exact congrArg₂ (· * ·) (Iso.inv_hom_id_apply _ _) (Iso.inv_hom_id_apply _ _)

theorem isWt_mul : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Y.H.left.Opens) (χ χ' : Q.X) (f g : Γ(Y.H.left, V)), IsWt Y χ V f → IsWt Y χ' V g → IsWt Y (χ + χ') V (f * g) := by
  intro R _ _ Q O _ _ _ oa Y V χ χ' f g hf hg S _ φ x x' c a a' ha ha' hV hV' hq hc
  rw [valR_mul'' _ _ hV', valR_mul'' _ _ hV, hg S φ x x' c a a' ha ha' hV hV' hq hc,
    hf S φ x x' c a a' ha ha' hV hV' hq hc, c_add x x' c hq hc, Units.val_mul]
  ring

end GlobalTheory.Heat.WtMul
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionMul =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightPreservingLiftOfBaseDerivation =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightPreservingLiftOfBaseDerivation", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueWeightDecompositionRaynaudAffineStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionMul\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.WtLift

variable {X A : Type} [AddCommGroup X] [CommRing A] (P : X → A → Prop)
  (hadd : ∀ χ a b, P χ a → P χ b → P χ (a + b)) (hzero : ∀ χ, P χ 0)
  (hmul : ∀ χ ψ a b, P χ a → P ψ b → P (χ + ψ) (a * b))
  (hdec : ∀ f : A, ∃! F : X →₀ A, (∀ χ, P χ (F χ)) ∧ f = F.sum (fun _ t => t))

include hdec in
def dec (f : A) : X →₀ A := (hdec f).exists.choose

include hdec in
theorem dec_spec (f : A) : (∀ χ, P χ (dec P hdec f χ)) ∧ f = (dec P hdec f).sum (fun _ t => t) :=
  (hdec f).exists.choose_spec

include hdec in
theorem dec_eq {f : A} {F : X →₀ A} (hF : ∀ χ, P χ (F χ)) (hs : f = F.sum (fun _ t => t)) : dec P hdec f = F :=
  (hdec f).unique (dec_spec P hdec f) ⟨hF, hs⟩

include hadd hdec in
theorem dec_add (a b : A) : dec P hdec (a + b) = dec P hdec a + dec P hdec b := by
  refine dec_eq P hdec (fun χ => ?_) ?_
  · rw [Finsupp.add_apply]; exact hadd _ _ _ ((dec_spec P hdec a).1 χ) ((dec_spec P hdec b).1 χ)
  · rw [Finsupp.sum_add_index' (fun _ => rfl) (fun _ _ _ => rfl), ← (dec_spec P hdec a).2, ← (dec_spec P hdec b).2]

include hzero hdec in
theorem dec_single {α : X} {f : A} (hf : P α f) : dec P hdec f = Finsupp.single α f := by
  classical
  refine dec_eq P hdec (fun χ => ?_) ?_
  · rw [Finsupp.single_apply]; split_ifs with h
    · exact h ▸ hf
    · exact hzero χ
  · rw [Finsupp.sum_single_index rfl]

include hzero hdec in
theorem dec_zero : dec P hdec (0 : A) = 0 := by
  rw [dec_single P hzero hdec (hzero 0), Finsupp.single_zero]

include hzero hmul hdec in
theorem dec_mul {χ : X} {f : A} (hf : P χ f) (h : A) (ψ : X) :
    dec P hdec (f * h) (χ + ψ) = f * dec P hdec h ψ := by
  set G : X →₀ A := Finsupp.mapDomain (fun ψ => χ + ψ) ((dec P hdec h).mapRange (f * ·) (mul_zero f)) with hG
  have hinj : Function.Injective (fun ψ : X => χ + ψ) := add_right_injective χ
  have hGv : ∀ ψ, G (χ + ψ) = f * dec P hdec h ψ := fun ψ => by
    rw [hG, Finsupp.mapDomain_apply_of_injective hinj, Finsupp.mapRange_apply]
  have key : dec P hdec (f * h) = G := by
    refine dec_eq P hdec (fun ω => ?_) ?_
    · have e : ω = χ + (ω - χ) := by abel
      rw [e, hGv]; exact hmul _ _ _ _ hf ((dec_spec P hdec h).1 _)
    · rw [hG, Finsupp.sum_mapDomain_index (fun _ => rfl) (fun _ _ _ => rfl),
        Finsupp.sum_mapRange_index (fun _ => rfl), ← Finsupp.mul_sum, ← (dec_spec P hdec h).2]
  rw [key, hGv]

variable (δ₀ : A → A)

def proj (f : A) : A := (dec P hdec f).sum (fun χ t => dec P hdec (δ₀ t) χ)

include hadd hzero hdec in
theorem proj_add (h0 : ∀ a b, δ₀ (a + b) = δ₀ a + δ₀ b) (a b : A) :
    proj P hdec δ₀ (a + b) = proj P hdec δ₀ a + proj P hdec δ₀ b := by
  have hz : δ₀ 0 = 0 := by
    have := h0 0 0; simp only [add_zero] at this; exact left_eq_add.mp this
  unfold proj
  rw [dec_add P hadd hdec, Finsupp.sum_add_index']
  · intro χ; rw [hz, dec_zero P hzero hdec, Finsupp.zero_apply]
  · intro χ s t; rw [h0, dec_add P hadd hdec, Finsupp.add_apply]

include hzero hdec in
theorem proj_of_wt (hz : δ₀ 0 = 0) {α : X} {f : A} (hf : P α f) : proj P hdec δ₀ f = dec P hdec (δ₀ f) α := by
  unfold proj; rw [dec_single P hzero hdec hf, Finsupp.sum_single_index]
  rw [hz, dec_zero P hzero hdec]; rfl

include hzero hdec in
theorem induction_wt (Qp : A → Prop) (q0 : Qp 0) (qadd : ∀ a b, Qp a → Qp b → Qp (a + b))
    (qw : ∀ χ a, P χ a → Qp a) (f : A) : Qp f := by
  rw [(dec_spec P hdec f).2, Finsupp.sum]
  exact Finset.sum_induction _ Qp qadd q0 (fun χ _ => qw χ _ ((dec_spec P hdec f).1 χ))

include hadd hzero hmul hdec in
theorem proj_mul (h0 : ∀ a b, δ₀ (a + b) = δ₀ a + δ₀ b) (h1 : ∀ a b, δ₀ (a * b) = a * δ₀ b + b * δ₀ a) (a b : A) :
    proj P hdec δ₀ (a * b) = a * proj P hdec δ₀ b + b * proj P hdec δ₀ a := by
  have hz : δ₀ 0 = 0 := by
    have := h0 0 0; simp only [add_zero] at this; exact left_eq_add.mp this
  have pz : proj P hdec δ₀ 0 = 0 := by
    unfold proj; rw [dec_zero P hzero hdec, Finsupp.sum_zero_index]
  have hom : ∀ χ ψ x y, P χ x → P ψ y →
      proj P hdec δ₀ (x * y) = x * proj P hdec δ₀ y + y * proj P hdec δ₀ x := by
    intro χ ψ x y hx hy
    rw [proj_of_wt P hzero hdec δ₀ hz (hmul _ _ _ _ hx hy), proj_of_wt P hzero hdec δ₀ hz hy,
      proj_of_wt P hzero hdec δ₀ hz hx, h1, dec_add P hadd hdec, Finsupp.add_apply, dec_mul P hzero hmul hdec hx,
      add_comm χ ψ, dec_mul P hzero hmul hdec hy]
  have padd := proj_add P hadd hzero hdec δ₀ h0

  have step : ∀ ψ y, P ψ y → ∀ x, proj P hdec δ₀ (x * y) = x * proj P hdec δ₀ y + y * proj P hdec δ₀ x := by
    intro ψ y hy
    refine induction_wt P hzero hdec _ ?_ ?_ (fun χ x hx => hom χ ψ x y hx hy)
    · rw [zero_mul, pz, zero_mul, mul_zero, add_zero]
    · intro x x' ex ex'; rw [add_mul, padd, padd, ex, ex']; ring
  revert b
  intro b
  refine induction_wt P hzero hdec (fun y => proj P hdec δ₀ (a * y) = a * proj P hdec δ₀ y + y * proj P hdec δ₀ a)
    ?_ ?_ (fun ψ y hy => step ψ y hy a) b
  · simp only [mul_zero, pz, zero_mul, add_zero]
  · intro y y' ey ey'; rw [mul_add, padd, ey, ey', padd]; ring

include hzero hdec in
theorem proj_wt (hz : δ₀ 0 = 0) {α : X} {f : A} (hf : P α f) : P α (proj P hdec δ₀ f) := by
  rw [proj_of_wt P hzero hdec δ₀ hz hf]; exact (dec_spec P hdec _).1 α

end GlobalTheory.WtLift

namespace GlobalTheory.WtLift

theorem exists_isWt_lift : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Q.P.A.left.affineOpens) (D : Derivation ℤ R R) (δ₀ : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1) → Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1)), (∀ a b, δ₀ (a + b) = δ₀ a + δ₀ b) → (∀ a b, δ₀ (a * b) = a * δ₀ b + b * δ₀ a) → (∀ r, δ₀ (constFn Y.H.hom _ r) = constFn Y.H.hom _ (D r)) → ∃ δ : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1) → Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1), (∀ a b, δ (a + b) = δ a + δ b) ∧ (∀ a b, δ (a * b) = a * δ b + b * δ a) ∧ (∀ r, δ (constFn Y.H.hom _ r) = constFn Y.H.hom _ (D r)) ∧ ∀ (α : Q.X) f, IsWt Y α _ f → IsWt Y α _ (δ f) := by
  intro R _ _ Q O _ _ _ oa Y V D δ₀ h0 h1 hc
  have hadd : ∀ (χ : Q.X) (a b : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1)), IsWt Y χ _ a → IsWt Y χ _ b → IsWt Y χ _ (a + b) :=
    fun χ a b ha hb => WtAlg.isWt_add ha hb
  have hzero : ∀ χ : Q.X, IsWt Y χ (Y.q.left ⁻¹ᵁ V.1) 0 := fun χ => WtAlg.isWt_zero (Y := Y) χ _
  have hmul : ∀ (χ ψ : Q.X) (a b : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1)), IsWt Y χ _ a → IsWt Y ψ _ b →
      IsWt Y (χ + ψ) _ (a * b) :=
    fun χ ψ a b ha hb => _root_.GlobalTheory.Heat.WtMul.isWt_mul R Q O oa Y _ χ ψ a b ha hb
  have hdec := _root_.GlobalTheory.Heat.WtDec.existsUnique_weights R Q O oa Y V.1 V.2
  have hz : δ₀ 0 = 0 := by
    have := h0 0 0; simp only [add_zero] at this; exact left_eq_add.mp this
  refine ⟨proj (fun χ f => IsWt Y χ _ f) hdec δ₀, proj_add _ hadd hzero hdec δ₀ h0,
    proj_mul _ hadd hzero hmul hdec δ₀ h0 h1, fun r => ?_, fun α f hf => proj_wt _ hzero hdec δ₀ hz hf⟩
  rw [proj_of_wt _ hzero hdec δ₀ hz (WtAlg.isWt_constFn (Y := Y) _ r), hc,
    dec_single _ hzero hdec (WtAlg.isWt_constFn (Y := Y) _ (D r)), Finsupp.single_eq_same]

end GlobalTheory.WtLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightPreservingLiftOfBaseDerivation =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionOfBasicOpens =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionOfBasicOpens", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.DivCalc\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\nimport Development.AbelianVarietyTheory.Proofs.ThetaShiftProofs.StalkMapInjectiveOfFlat\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Heat.WtLocal

open GlobalTheory.ZH.CrdCalc (valR_res valR_spMap)
open GlobalTheory.TorusModel (isPull_iff)

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O} (Y : Ray oa)

theorem isWt_of_local (α : Q.X) (V : Y.H.left.Opens) (f : Γ(Y.H.left, V))
    (h : ∀ (S : Type) [CommRing S] [IsLocalRing S] (φ : R →+* S) (x x' : Over.mk (spMap φ) ⟶ Y.H) (c : Q.X → Sˣ),
      ⊤ ≤ x.left ⁻¹ᵁ V → ⊤ ≤ x'.left ⁻¹ᵁ V → x' ≫ Y.q = x ≫ Y.q →
      (∀ χ y J, Good Q.P.L y J → val ((Y.Φ _ x').s χ) (𝟙 _) y J =
        gm (𝟙 (Over.mk (spMap φ)).left) y ⊤ (unitOn (c χ)) * val ((Y.Φ _ x).s χ) (𝟙 _) y J) →
      valR (A := S) x'.left V f = c α * valR (A := S) x.left V f) : IsWt Y α V f := by
  apply _root_.GlobalTheory.Heat.CoeffWt.isWt_of_local <;> assumption

end GlobalTheory.Heat.WtLocal

namespace GlobalTheory.Heat.WtLocal

open GlobalTheory.ZH.CrdCalc (valR_res)

theorem isWt_of_basicOpen : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Q.P.A.left.affineOpens) (V' : Q.P.A.left.Opens), V' ≤ V.1 → ∀ (α : Q.X) (f : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V')), (∀ (g : Γ(Q.P.A.left, V.1)) (h : Q.P.A.left.basicOpen g ≤ V'), IsWt Y α (Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) (resG Y.H.left (Y.q.left.preimage_mono h) f)) → IsWt Y α (Y.q.left ⁻¹ᵁ V') f := by
  intro R _ _ Q O _ _ _ oa Y V V' hV α f hf
  refine isWt_of_local Y α _ _ fun S _ _ φ x x' c hx hx' hq hc => ?_
  have e : x'.left ≫ Y.q.left = x.left ≫ Y.q.left := congrArg (fun q => q.left) hq
  have hp : Y.q.left (x'.left (closedPoint S)) ∈ V' := hx' trivial
  obtain ⟨g, hg, hpg⟩ := V.2.exists_basicOpen_le ⟨_, hp⟩ (hV hp)
  have m' : ⊤ ≤ x'.left ⁻¹ᵁ (Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) :=
    (Scheme.preimage_eq_top_of_closedPoint_mem (R := .of S) x'.left hpg).ge
  have m : ⊤ ≤ x.left ⁻¹ᵁ (Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) := by
    rw [← Scheme.Hom.comp_preimage, ← e]; exact m'
  have t := hf g hg S φ x x' c _ _ rfl rfl m m' hq hc
  exact (valR_res (R := S) x'.left _ m' f).symm.trans (t.trans (congrArg (_ * ·) (valR_res (R := S) x.left _ m f)))

end GlobalTheory.Heat.WtLocal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionOfBasicOpens =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightPreservingVectorFieldOnSmallerPreimages =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightPreservingVectorFieldOnSmallerPreimages", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueWeightDecompositionRaynaudAffineStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageProjectionAbelianPartStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsRaynaudTorusWeightFunctionOfBasicOpens\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorPreservesWeight\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.ThetaMetrics.MemRangeCompIffOfIsClosedImmersion\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Heat.WtSub

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O} {Y : Ray oa}

theorem isWt_res {α : Q.X} {U V : Y.H.left.Opens} (e : V ≤ U) {f : Γ(Y.H.left, U)} (hf : IsWt Y α U f) :
    IsWt Y α V (resG Y.H.left e f) := by
  intro S _ φ x x' c a a' ha ha' hV hV' hq hc
  have hU : ⊤ ≤ a ⁻¹ᵁ U := hV.trans (a.preimage_mono e)
  have hU' : ⊤ ≤ a' ⁻¹ᵁ U := hV'.trans (a'.preimage_mono e)
  rw [_root_.GlobalTheory.ZH.CrdCalc.valR_res a' e hV', _root_.GlobalTheory.ZH.CrdCalc.valR_res a e hV]
  exact hf S φ x x' c a a' ha ha' hU hU' hq hc

theorem isWt_inv {V : Y.H.left.Opens} (u : Γ(Y.H.left, V)ˣ) (hu : IsWt Y 0 V u.val) :
    IsWt Y 0 V (u⁻¹ : Γ(Y.H.left, V)ˣ).val := by
  intro S _ φ x x' c a a' ha ha' hV hV' hq hc
  have hc0 : c 0 = 1 := WtAlg.c_zero x x' c hc
  have e1 := hu S φ x x' c a a' ha ha' hV hV' hq hc
  rw [hc0, Units.val_one, _root_.one_mul] at e1
  rw [hc0, Units.val_one, _root_.one_mul]
  have m : ∀ b : Sp S ⟶ Y.H.left, ⊤ ≤ b ⁻¹ᵁ V →
      valR b V (u⁻¹ : Γ(Y.H.left, V)ˣ).val * valR b V u.val = 1 := by
    intro b hb
    rw [← WtAlg.valR_mul'' b V hb, Units.inv_mul, _root_.GlobalTheory.Points.valR_one b V hb]
  have m' : ∀ b : Sp S ⟶ Y.H.left, ⊤ ≤ b ⁻¹ᵁ V →
      valR b V u.val * valR b V (u⁻¹ : Γ(Y.H.left, V)ˣ).val = 1 := by
    intro b hb
    rw [← WtAlg.valR_mul'' b V hb, Units.mul_inv, _root_.GlobalTheory.Points.valR_one b V hb]
  calc valR a' V (u⁻¹ : Γ(Y.H.left, V)ˣ).val
        = valR a' V (u⁻¹ : Γ(Y.H.left, V)ˣ).val *
            (valR a V u.val * valR a V (u⁻¹ : Γ(Y.H.left, V)ˣ).val) := by rw [m' a hV, _root_.mul_one]
    _ = (valR a' V (u⁻¹ : Γ(Y.H.left, V)ˣ).val * valR a' V u.val) *
            valR a V (u⁻¹ : Γ(Y.H.left, V)ˣ).val := by rw [e1, _root_.mul_assoc]
    _ = valR a V (u⁻¹ : Γ(Y.H.left, V)ˣ).val := by rw [m a' hV', _root_.one_mul]

theorem isRaynaudTorusWeightFunction_zero_pow {V : Y.H.left.Opens} {g : Γ(Y.H.left, V)} (hg : IsWt Y 0 V g) (n : ℕ) : IsWt Y 0 V (g ^ n) := by
  induction n with
  | zero =>
    rw [pow_zero]
    have h1 := WtAlg.isWt_natCast (Y := Y) V 1
    rwa [Nat.cast_one] at h1
  | succ n ih =>
    rw [pow_succ']
    exact WtAlg.isRaynaudTorusWeightFunction_weightZero_mul hg ih

end GlobalTheory.Heat.WtSub

namespace GlobalTheory.Heat.WtSub

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O}

theorem isWt_basicOpen (Y : Ray oa) (V : Q.P.A.left.affineOpens) (d : Fld Y.H.left)
    (hd : IsField (Y.q.left ⁻¹ᵁ V.1) d)
    (hpres : ∀ (α : Q.X) f, IsWt Y α (Y.q.left ⁻¹ᵁ V.1) f → IsWt Y α _ (d _ f))
    (hdec : ∀ (W : Q.P.A.left.Opens), IsAffineOpen W → ∀ f : Γ(Y.H.left, Y.q.left ⁻¹ᵁ W),
      ∃! F : Q.X →₀ Γ(Y.H.left, Y.q.left ⁻¹ᵁ W), (∀ χ, IsWt Y χ _ (F χ)) ∧ f = F.sum (fun _ t => t))
    (hP : IsAffineOpen (Y.q.left ⁻¹ᵁ V.1))
    (g : Γ(Q.P.A.left, V.1)) (α : Q.X) (f : Γ(Y.H.left, Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g))
    (hf : IsWt Y α _ f) : IsWt Y α _ (d _ f) := by
  have hle : Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g ≤ Y.q.left ⁻¹ᵁ V.1 :=
    Y.q.left.preimage_mono (Q.P.A.left.basicOpen_le g)
  set G : Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1) := (Y.q.left.app V.1).hom g with hGdef
  have hG0 : IsWt Y 0 _ G := AbConst.isWt_app Y V.1 g
  have heq : Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g = Y.H.left.basicOpen G :=
    Scheme.preimage_basicOpen Y.q.left g
  let _ : Algebra Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1) Γ(Y.H.left, Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) :=
    (Y.H.left.presheaf.map (homOfLE hle).op).hom.toAlgebra
  have : IsLocalization.Away G Γ(Y.H.left, Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) :=
    hP.isLocalization_of_eq_basicOpen G (homOfLE hle) heq
  have halg : ∀ t, algebraMap Γ(Y.H.left, Y.q.left ⁻¹ᵁ V.1)
      Γ(Y.H.left, Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g) t = resG Y.H.left hle t := fun _ => rfl
  obtain ⟨n, a, ha⟩ := IsLocalization.Away.surj G f
  rw [← map_pow, halg, halg] at ha
  have hunit : IsUnit (resG Y.H.left hle (G ^ n)) := by
    rw [← halg, map_pow]
    exact (IsLocalization.Away.algebraMap_isUnit G).pow n
  have hGn0 : IsWt Y 0 _ (resG Y.H.left hle (G ^ n)) := isWt_res hle (isRaynaudTorusWeightFunction_zero_pow hG0 n)
  obtain ⟨F, ⟨hFw, hFa⟩, -⟩ := hdec V.1 V.2 a
  obtain ⟨F0, -, huniq⟩ := hdec (Q.P.A.left.basicOpen g) (V.2.basicOpen g) (f * resG Y.H.left hle (G ^ n))
  have hA : Finsupp.mapRange (resG Y.H.left hle) (map_zero _) F = F0 := by
    refine huniq _ ⟨fun χ => ?_, ?_⟩
    · rw [Finsupp.mapRange_apply]
      exact isWt_res hle (hFw χ)
    · rw [Finsupp.sum_mapRange_index (fun _ => rfl), ha, hFa, map_finsuppSum]
  have hB : Finsupp.single α (f * resG Y.H.left hle (G ^ n)) = F0 := by
    refine huniq _ ⟨fun χ => ?_, ?_⟩
    · by_cases hχ : α = χ
      · subst hχ
        rw [Finsupp.single_eq_same, _root_.mul_comm]
        exact WtAlg.isRaynaudTorusWeightFunction_weightZero_mul hGn0 hf
      · rw [Finsupp.single_eq_of_ne' hχ]
        exact WtAlg.isWt_zero _ _
    · rw [Finsupp.sum_single_index rfl]
  have hα : resG Y.H.left hle (F α) = f * resG Y.H.left hle (G ^ n) := by
    have h1 := DFunLike.congr_fun (hA.trans hB.symm) α
    rwa [Finsupp.mapRange_apply, Finsupp.single_eq_same] at h1
  obtain ⟨-, hmul, hres⟩ := hd
  have hdfG : IsWt Y α _ (d _ (f * resG Y.H.left hle (G ^ n))) := by
    rw [← hα, hres _ _ hle le_rfl]
    exact isWt_res hle (hpres α (F α) (hFw α))
  have hdG : IsWt Y 0 _ (d _ (resG Y.H.left hle (G ^ n))) := by
    rw [hres _ _ hle le_rfl]
    exact isWt_res hle (hpres 0 (G ^ n) (isRaynaudTorusWeightFunction_zero_pow hG0 n))
  have hGdf : IsWt Y α _ (resG Y.H.left hle (G ^ n) * d _ f) := by
    have e2 : resG Y.H.left hle (G ^ n) * d _ f =
        d _ (f * resG Y.H.left hle (G ^ n)) - f * d _ (resG Y.H.left hle (G ^ n)) := by
      rw [hmul _ hle]
      ring
    rw [e2, _root_.mul_comm f (d _ (resG Y.H.left hle (G ^ n)))]
    exact WtAlg.isWt_sub hdfG (WtAlg.isRaynaudTorusWeightFunction_weightZero_mul hdG hf)
  obtain ⟨u, hu⟩ := hunit
  have hu0 : IsWt Y 0 _ (u⁻¹ : Γ(Y.H.left, Y.q.left ⁻¹ᵁ Q.P.A.left.basicOpen g)ˣ).val := by
    refine isWt_inv u ?_
    rw [hu]
    exact hGn0
  have h2 := WtAlg.isRaynaudTorusWeightFunction_weightZero_mul hu0 hGdf
  rwa [← hu, ← _root_.mul_assoc, Units.inv_mul, _root_.one_mul] at h2

end GlobalTheory.Heat.WtSub

namespace GlobalTheory.Heat.WtSub

theorem isWt_field_of_le : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Q.P.A.left.affineOpens) (d : Fld Y.H.left), IsField (Y.q.left ⁻¹ᵁ V.1) d → (∀ (α : Q.X) f, IsWt Y α (Y.q.left ⁻¹ᵁ V.1) f → IsWt Y α _ (d _ f)) → ∀ (α : Q.X) (V' : Q.P.A.left.Opens), V' ≤ V.1 → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V') f → IsWt Y α (Y.q.left ⁻¹ᵁ V') (d _ f) := by
  intro R _ _ Q O _ _ _ oa Y V d hd hpres α V' hV' f hf
  apply _root_.GlobalTheory.Heat.WtLocal.isWt_of_basicOpen R Q O oa Y V V' hV' α (d _ f)
  intro g hg
  have hle : Y.q.left ⁻¹ᵁ V' ≤ Y.q.left ⁻¹ᵁ V.1 := Y.q.left.preimage_mono hV'
  obtain ⟨hadd, hmul, hres⟩ := hd
  rw [← hres _ _ (Y.q.left.preimage_mono hg) hle f]
  exact isWt_basicOpen Y V d ⟨hadd, hmul, hres⟩ hpres (fun W hW => _root_.GlobalTheory.Heat.WtDec.existsUnique_weights R Q O oa Y W hW)
    (_root_.GlobalTheory.RayEv.Ray.isAffineOpen_preimage_q R Q O oa Y V) g α _ (isWt_res _ hf)

end GlobalTheory.Heat.WtSub
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightPreservingVectorFieldOnSmallerPreimages =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantLiftDerivationRaynaud =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantLiftDerivationRaynaud", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsFormSec\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsLinearHomPull\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsDerivationLiftRaynaudPreimageAffine\npublic import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsVectorFieldExtendingAffineDerivation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightPreservingLiftOfBaseDerivation\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAffineOpenPreimageProjectionAbelianPartStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.WeightPreservingVectorFieldOnSmallerPreimages\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.Heat.HxLift

theorem exists_invLift : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (V : Q.P.A.left.affineOpens) (D : Derivation ℤ R R), ∃ d : Fld Y.H.left, IsLift Y.H ⇑D (Y.q.left ⁻¹ᵁ V.1) d ∧ ∀ (α : Q.X) (V' : Q.P.A.left.Opens), V' ≤ V.1 → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V') f → IsWt Y α (Y.q.left ⁻¹ᵁ V') (d _ f) := by
  intro R _ _ Q O _ _ _ oa Y V D
  obtain ⟨δ₀, h0a, h0m, h0c⟩ := _root_.GlobalTheory.LiftDer.exists_lift_preimage R Q O oa Y V D
  obtain ⟨δ, ha, hm, hc, hw⟩ := _root_.GlobalTheory.WtLift.exists_isWt_lift R Q O oa Y V D δ₀ h0a h0m h0c
  obtain ⟨d, hd, hdU⟩ := _root_.GlobalTheory.DerFieldExt.exists_field Y.H.left _ (_root_.GlobalTheory.RayEv.Ray.isAffineOpen_preimage_q R Q O oa Y V) δ ha hm
  refine ⟨d, ⟨hd, fun O' hO' r => ?_⟩, ?_⟩
  · rw [← GlobalTheory.ZH.FormSec.res_constFn Y.H.hom hO' r, ← GlobalTheory.ZH.FormSec.res_constFn Y.H.hom hO' (D r),
      hd.2.2 _ _ hO' le_rfl, hdU, hc]
  · refine _root_.GlobalTheory.Heat.WtSub.isWt_field_of_le R Q O oa Y V d hd (fun α f hf => ?_)
    rw [hdU]
    exact hw α f hf

end GlobalTheory.Heat.HxLift
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantLiftDerivationRaynaud =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantDerivationLiftsRaynaudCover =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantDerivationLiftsRaynaudCover", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantLiftDerivationRaynaud\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

theorem GlobalTheory.HeatInvLift.exists_invLift_cover : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [IsAdicComplete (maximalIdeal R) R] [Algebra ℚ R] (Dd : DegData R (maximalIdeal R)) (O : Type) [CommRing O] [StarRing O] [Module O Dd.toPre.X] (oa : Dd.toPre.OAct O) (Y : Ray oa) (D : Derivation ℤ R R), ∃ (J : Type) (V : J → Dd.toPre.P.A.left.Opens) (j : J → Dd.toPre.P.L.ι) (d : J → Fld Y.H.left), ⨆ i, V i = ⊤ ∧ (∀ i, V i ≤ Dd.toPre.P.L.U (j i)) ∧ (∀ i, IsLift Y.H ⇑D (Y.q.left ⁻¹ᵁ V i) (d i)) ∧ ∀ i, (∀ (α : Dd.toPre.X) (V' : Dd.toPre.P.A.left.Opens), Y.q.left ⁻¹ᵁ V' ≤ Y.q.left ⁻¹ᵁ V i → ∀ f, IsWt Y α (Y.q.left ⁻¹ᵁ V') f → IsWt Y α (Y.q.left ⁻¹ᵁ V') (d i _ f)) := by
  intro R _ _ _ _ _ _ Dd O _ _ _ oa Y D
  let J := {p : Dd.toPre.P.A.left.affineOpens × Dd.toPre.P.L.ι // p.1.1 ≤ Dd.toPre.P.L.U p.2}
  have H := fun i : J => _root_.GlobalTheory.Heat.HxLift.exists_invLift R Dd.toPre O oa Y i.1.1 D
  choose d hd using H
  refine ⟨J, fun i => i.1.1.1, fun i => i.1.2, d, ?_, fun i => i.2, fun i => (hd i).1, fun i α V' hV' f hf => ?_⟩
  · rw [eq_top_iff]
    intro x _
    have hx : x ∈ (⨆ k, Dd.toPre.P.L.U k) := by rw [Dd.toPre.P.isLB.cover]; trivial
    obtain ⟨k, hk⟩ := TopologicalSpace.Opens.mem_iSup.1 hx
    obtain ⟨_, ⟨V, hV, rfl⟩, hxV, hVk⟩ :=
      Dd.toPre.P.A.left.isBasis_affineOpens.exists_subset_of_mem_open hk (Dd.toPre.P.L.U k).isOpen
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨(⟨V, hV⟩, k), hVk⟩, hxV⟩
  · have e : Y.q.left ⁻¹ᵁ (V' ⊓ i.1.1.1) = Y.q.left ⁻¹ᵁ V' := by
      rw [Scheme.Hom.preimage_inf]; exact inf_eq_left.2 hV'
    have key := (hd i).2 α (V' ⊓ i.1.1.1) inf_le_right
    rw [e] at key
    exact key f hf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantDerivationLiftsRaynaudCover =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasis =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasis", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DifferenceInvariantLiftsIsWeightZeroCechCocycle\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSymmetricKodairaSpencerInvariantLiftsStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantDerivationLiftsRaynaudCover\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeightZeroCocycleEqLogDerivativeCombAddCobStatement\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.HeatInvLift

theorem rsT_pbT' {Z X : Scheme.{0}} (m : Z ⟶ X) {O₀ : X.Opens} {O₁ O₂ : Z.Opens} (h₁ : O₁ ≤ m ⁻¹ᵁ O₀) (h₂ : O₂ ≤ O₁)
    (s : Γ(X, O₀)) : rsT (pbT m s O₁) O₂ = pbT m s O₂ := by
  rw [_root_.GlobalTheory.KS.rsT_of_le h₂]
  unfold pbT
  rw [dif_pos h₁, dif_pos (h₂.trans h₁), ← CommRingCat.comp_apply, Scheme.Hom.appLE_map]

theorem rsT_constFn' {R : Type} [CommRing R] {Z : Scheme.{0}} (p : Z ⟶ Sp R) {O₀ O : Z.Opens} (h : O ≤ O₀) (a : R) :
    rsT (constFn p O₀ a) O = constFn p O a := by
  rw [_root_.GlobalTheory.KS.rsT_of_le h]
  exact congrArg (fun φ => φ.hom ((Scheme.ΓSpecIso (CommRingCat.of R)).inv.hom a))
    (Scheme.Hom.appLE_map p (U := ⊤) (V := O₀) (fun _ _ => trivial) (homOfLE h).op)

theorem rsT_field {Z : Scheme.{0}} {δ : ∀ W : Z.Opens, Γ(Z, W) → Γ(Z, W)} (hδ : IsField ⊤ δ) {O₀ O : Z.Opens}
    (h : O ≤ O₀) (s : Γ(Z, O₀)) : rsT (δ O₀ s) O = δ O (rsT s O) := by
  rw [_root_.GlobalTheory.KS.rsT_of_le h, _root_.GlobalTheory.KS.rsT_of_le h, hδ.2.2 O₀ O h le_top s]

theorem rsT_sum' {Z : Scheme.{0}} {O₀ : Z.Opens} {K : Type} (S : Finset K) (s : K → Γ(Z, O₀)) (O : Z.Opens) :
    rsT (∑ b ∈ S, s b) O = ∑ b ∈ S, rsT (s b) O := by
  unfold rsT; split_ifs <;> simp

end GlobalTheory.HeatInvLift

open GlobalTheory.HeatInvLift

namespace GlobalTheory.HeatInvLift

theorem exists_invLift_symmKS : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [IsAdicComplete (maximalIdeal R) R] [Algebra ℚ R] (Dd : DegData R (maximalIdeal R)) (O : Type) [CommRing O] [StarRing O] [Module O Dd.toPre.X] (oa : Dd.toPre.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ D : Derivation ℤ R R,
  ∃ (Θ : Matrix (Fin n) (Fin n) R) (J : Type) (V : J → Dd.toPre.P.A.left.Opens) (j : J → Dd.toPre.P.L.ι) (d : J → Fld Y.H.left),
    Θᵀ = Θ ∧ ⨆ i, V i = ⊤ ∧ (∀ i, V i ≤ Dd.toPre.P.L.U (j i)) ∧ (∀ i, IsLift Y.H ⇑D (Y.q.left ⁻¹ᵁ V i) (d i)) ∧
    (∀ i (α : Dd.toPre.X) (V' : Dd.toPre.P.A.left.Opens), Y.q.left ⁻¹ᵁ V' ≤ Y.q.left ⁻¹ᵁ V i → ∀ f,
      IsWt Y α (Y.q.left ⁻¹ᵁ V') f → IsWt Y α (Y.q.left ⁻¹ᵁ V') (d i _ f)) ∧
    ∀ i i' (W : Y.H.left.Opens), W ≤ Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' → ∀ f, d i W f - d i' W f =
      ∑ a, ∑ b, constFn Y.H.hom W (Θ a b) * dlg Y.H Y.q.left Dd.toPre.P.L (dd b) (j i) (j i') W * dd a W f := by
  intro R _ _ _ _ _ _ Dd O _ _ _ oa Y n v dd hdd D
  obtain ⟨J, V, j, d₀, hc, hle, hl₀, hw₀⟩ := _root_.GlobalTheory.HeatInvLift.exists_invLift_cover R Dd O oa Y D
  obtain ⟨z, hzc, hzw, hz⟩ := _root_.GlobalTheory.DiffCoc.diff_isCoc R Dd O oa Y n v dd hdd D J V d₀ hl₀ hw₀
  have H := fun a => _root_.GlobalTheory.PullbackWeightZero.exists_comb_dlg_add_cob R Dd O oa Y n v dd hdd J V j hc hle (z a) (hzc a) (hzw a)
  choose c y hyw hy using H
  have hA := fun i => _root_.GlobalTheory.Heat.Adjust.isLift_add_invComb R Dd O oa Y n v dd hdd D (V i) (d₀ i) (fun a => y a i) (hl₀ i) (hw₀ i) (fun a => hyw a i)
  have hrel : ∀ i i' (W : Y.H.left.Opens), W ≤ Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' → ∀ f,
      (d₀ i W f + ∑ a, rsT (y a i) W * dd a W f) - (d₀ i' W f + ∑ a, rsT (y a i') W * dd a W f) =
        ∑ a, ∑ b, constFn Y.H.hom W (Matrix.of c a b) * dlg Y.H Y.q.left Dd.toPre.P.L (dd b) (j i) (j i') W * dd a W f := by
    intro i i' W hW f
    rw [add_sub_add_comm, hz i i' W hW f]
    have hU : Y.q.left ⁻¹ᵁ V i ⊓ Y.q.left ⁻¹ᵁ V i' ≤
        Y.q.left ⁻¹ᵁ (Dd.toPre.P.L.U (j i) ⊓ Dd.toPre.P.L.U (j i')) :=
      fun x hx => ⟨hle i hx.1, hle i' hx.2⟩
    have key : ∀ a, rsT (z a i i') W = ∑ b, constFn Y.H.hom W (c a b) *
        dlg Y.H Y.q.left Dd.toPre.P.L (dd b) (j i) (j i') W + (rsT (y a i') W - rsT (y a i) W) := by
      intro a
      rw [hy a i i', _root_.GlobalTheory.KS.rsT_add, _root_.GlobalTheory.KS.rsT_sub, _root_.GlobalTheory.KS.rsT_rsT inf_le_right hW, _root_.GlobalTheory.KS.rsT_rsT inf_le_left hW]
      congr 1
      rw [rsT_sum']
      refine Finset.sum_congr rfl fun b _ => ?_
      rw [_root_.GlobalTheory.KS.rsT_mul, rsT_constFn' _ hW]
      congr 1
      unfold dlg
      rw [_root_.GlobalTheory.KS.rsT_mul, rsT_field (hdd b).1 hW, rsT_pbT' _ hU hW, rsT_pbT' _ hU hW]
    simp only [key, Matrix.of_apply, add_mul, sub_mul, Finset.sum_add_distrib, Finset.sum_sub_distrib, Finset.sum_mul]
    ring
  obtain ⟨Θ, hs, hΘ⟩ := _root_.GlobalTheory.InvLiftSymm.exists_symm_invLift R Dd O oa Y n v dd hdd D J V j
    (fun i W f => d₀ i W f + ∑ a, rsT (y a i) W * dd a W f) hc hle (fun i => (hA i).1) (fun i => (hA i).2)
    (Matrix.of c) hrel
  exact ⟨Θ, J, V, j, _, hs, hc, hle, fun i => (hA i).1, fun i => (hA i).2, hΘ⟩

end GlobalTheory.HeatInvLift
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasis =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasisStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasisStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasis\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsConnectionMatrixInvariantBasisStatement =====
