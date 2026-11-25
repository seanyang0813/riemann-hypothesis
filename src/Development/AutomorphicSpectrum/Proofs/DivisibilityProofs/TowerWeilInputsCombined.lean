module

public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting
public import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPolynomialEval
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero
public import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget
public import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop
public import Mathlib.Data.Nat.Choose.Multinomial
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LowerBoundOfBaseSetting
public import Development.WeilBound.CoreStatements.FlagImmersions.ExistsWord
public import GroundTheory.HeightsAndTheta.Heights.Intersections.PBlockRatioAlg
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE
public import Formalism.DegreeFormula.PointDegree.PowSum
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialShiftTotal
public import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone
public import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic
public import Mathlib.CategoryTheory.Category.Basic
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalLinRootPower
public import Mathlib.Basic.Real.Basic
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound
public import Mathlib.Algebra.MvPolynomial.Funext
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterSt
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDivSupp
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenFibreExists
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt
public import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem
import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightI9Properties, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightLabelInvariant, Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.DegreeTautologicalLineProjectiveLine, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightTestBound, Development.WeilBound.CoreStatements.FlagImmersions.MeanSlopeOfProportionalVolume, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MeanSlopeProportionalVolume, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GapNonnegOfDominant, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerI3OfSemipositiveNef, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT1Limit, Development.WeilBound.CoreStatements.FlagImmersions.DegFlSymmetryInvariance, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeSymmetries, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremBAveraged, Development.WeilBound.CoreStatements.FlagImmersions.DegLApply, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AntisymmetricPerturbationBound, Development.WeilBound.CoreStatements.FlagImmersions.AntisymmetryTowerTheorem, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremB, Development.AutomorphicSpectrum.Proofs.GeometryProofs.DivSuppArithHolds, Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueRationalStatement, Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilInputsCombined

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightI9Properties =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightI9Properties", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPolynomialEval\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem flag_gap_eq_sub {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (lam : Wt Ψ N) (τ : Ψ) (a : Fin N)
    (h : (a : ℕ) + 1 < N) :
    PB.gap (fun x : Ψ × Fin N => lam x.1 x.2) (τ, a) = lam τ a - lam τ ⟨(a : ℕ) + 1, h⟩ := by
  simp [PB.gap, PB.gapX, h]

theorem flag_dim_eq_antisymmetric_degree (Ψ : Type) [Fintype Ψ] (N : ℕ) :
    dimFl Ψ N = GroundTheory.Heights₂.Heights.antisymDegree Ψ N := by
  simp [dimFl, GroundTheory.Heights₂.Heights.antisymDegree, Nat.choose_two_right]

theorem flag_height_I9 : PB.FlagHeight → PB.Inputs → ∀ II : IntersectionSystem, IsFullIntersectionSystem II →
    ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) [Nonempty Ψ], 2 ≤ N →
      I9 (Ψ := Ψ) (N := N) (hhFl Ψ N II) := by
  intro hFH hIn II hII Ψ _ _ N _ hN
  have hA : IsArithVar (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N) (dimFl Ψ N + 1) := by
    rw [flag_dim_eq_antisymmetric_degree]
    exact (_root_.GlobalTheory.CompanionTheory.Ar.PB.flag_isArithVar_and_image Ψ N hN).1
  have hev : ∀ lam : Wt Ψ N, hhFl Ψ N II (linRoot lam ^ (dimFl Ψ N + 1)) =
      eval (fun x => lam x.1 x.2) (PB.hFlPoly Ψ N II) := fun lam =>
    _root_.GlobalTheory.CompanionTheory.Ar.Top.hhFl_linRoot_pow II hII Ψ N lam hN hA
  obtain ⟨-, hgap, hdom⟩ := hFH hIn II hII Ψ N hN
  refine ⟨?_, ?_, ?_⟩
  · rintro lam - ⟨τ, a, b, hab, heq⟩
    have h : (a : ℕ) + 1 < N := hab ▸ b.2
    have hb : b = ⟨(a : ℕ) + 1, h⟩ := Fin.ext hab
    rw [hev]
    refine hgap _ (τ, a) h ?_
    rw [flag_gap_eq_sub lam τ a h, ← hb, heq, sub_self]
  · intro lam hlam
    rw [hev]
    refine hdom _ fun p hp => ?_
    obtain ⟨τ, a⟩ := p
    rw [flag_gap_eq_sub lam τ a hp, sub_nonneg]
    exact hlam τ a ⟨(a : ℕ) + 1, hp⟩ (Fin.le_def.2 (Nat.le_succ _))
  · intro τ Q hQ
    exact _root_.GlobalTheory.CompanionTheory.Ar.Top.hhFl_pk_one_mul II hII Ψ N τ Q hN hA hQ

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightI9Properties =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightLabelInvariant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightLabelInvariant", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.LowerBoundOfBaseSetting\npublic import Development.WeilBound.CoreStatements.FlagImmersions.ExistsWord\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.PHFlProdLinear\npublic import GroundTheory.HeightsAndTheta.Heights.Intersections.PBlockRatioAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top
open GroundTheory.Heights₂.Heights.LowerBoundFree (FlBlock FlIdx PFl xLine xDeg yFl fsHerm ΩFl refNorm)
open ReciprocityTheory.ChartRestriction.G.AI.I1 (IsBlockMap pullDeg)
open ReciprocityTheory.ChartRestriction.G.AI.I4 (imageZ IsPullHerm blockFnField)

namespace GlobalTheory.CompanionTheory.Ar.Top.HhLabel

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def blockMap (σ : Equiv.Perm Ψ) : FlBlock Ψ N → FlBlock Ψ N := fun q => (σ q.1, q.2)

def coordMap (σ : Equiv.Perm Ψ) : (Σ q : FlBlock Ψ N, FlIdx Ψ N q) → (Σ q : FlBlock Ψ N, FlIdx Ψ N q) :=
  fun p => ⟨(σ p.1.1, p.1.2), p.2⟩

theorem blockMap_bijective (σ : Equiv.Perm Ψ) : Function.Bijective (blockMap (N := N) σ) := by
  refine ⟨?_, ?_⟩
  · rintro ⟨τ, i⟩ ⟨τ', i'⟩ h
    simp only [blockMap, Prod.mk.injEq] at h
    rw [σ.injective h.1, h.2]
  · rintro ⟨τ, i⟩
    exact ⟨(σ.symm τ, i), by simp [blockMap]⟩

theorem coordMap_injective (σ : Equiv.Perm Ψ) : Function.Injective (coordMap (N := N) σ) := by
  rintro ⟨⟨τ, i⟩, A⟩ ⟨⟨τ', i'⟩, A'⟩ h
  simp only [coordMap, Sigma.mk.inj_iff, Prod.mk.injEq] at h
  obtain ⟨⟨h1, rfl⟩, h2⟩ := h
  obtain rfl := σ.injective h1
  cases eq_of_heq h2
  rfl

theorem coordMap_surjective (σ : Equiv.Perm Ψ) : Function.Surjective (coordMap (N := N) σ) := by
  rintro ⟨⟨τ, i⟩, A⟩
  refine ⟨⟨(σ.symm τ, i), A⟩, Sigma.ext (by simp [coordMap]) HEq.rfl⟩

theorem isBlockMap (σ : Equiv.Perm Ψ) : IsBlockMap (blockMap (N := N) σ) (coordMap σ) :=
  ⟨(blockMap_bijective σ).1, coordMap_injective σ, fun _ => rfl, fun q _ => coordMap_surjective σ q⟩

def matEquiv (N : ℕ) (σ : Equiv.Perm Ψ) : (Ψ × Fin N × Fin N) ≃ (Ψ × Fin N × Fin N) :=
  Equiv.prodCongr σ (Equiv.refl _)

def fieldAut (σ : Equiv.Perm Ψ) : ΩFl Ψ N ≃+* ΩFl Ψ N :=
  IsFractionRing.ringEquivOfRingEquiv (renameEquiv ℚ (matEquiv N σ)).toRingEquiv

theorem yFl_coordMap (σ : Equiv.Perm Ψ) (p : Σ q : FlBlock Ψ N, FlIdx Ψ N q) :
    yFl Ψ N (coordMap σ p) = fieldAut σ (yFl Ψ N p) := by
  unfold yFl fieldAut
  rw [IsFractionRing.ringEquivOfRingEquiv_algebraMap]
  congr 1
  show _ = (renameEquiv ℚ (matEquiv N σ)).toRingEquiv.toRingHom _
  rw [RingHom.map_det]
  congr 1
  refine Matrix.ext fun a b => ?_
  exact (rename_X (R := ℚ) (matEquiv N σ) (p.1.1, Fin.castLE (GroundTheory.Heights₂.Heights.LowerBoundFree.step_le p.1.2) a, p.2.1 b)).symm

theorem mCoordIdeal_ringHom {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)] {Ω₀ Ω : Type} [Field Ω₀] [Field Ω]
    (i : Ω₀ →+* Ω) (y₀ : (Σ k, J k) → Ω₀) : mCoordIdeal (fun p => i (y₀ p)) = mCoordIdeal y₀ := by
  have key : ∀ f : MRing J, mConeMap (fun p => i (y₀ p)) f = MvPolynomial.map i (mConeMap y₀ f) := by
    intro f
    induction f using MvPolynomial.induction_on with
    | C a => simp [mConeMap]
    | add p q hp hq => simp only [map_add (f := _), hp, hq]
    | mul_X p n hp => simp only [map_mul, hp]; simp [mConeMap]
  ext f
  show mConeMap _ f = 0 ↔ mConeMap _ f = 0
  rw [key]
  exact map_eq_zero_iff _ (MvPolynomial.map_injective i i.injective)

theorem imageZ_PFl (σ : Equiv.Perm Ψ) : imageZ (coordMap σ) (PFl Ψ N) = PFl Ψ N := by
  unfold PFl
  rw [← GroundTheory.Heights₂.Heights.Inter.BlockRatioAlgebraic.mCoordIdeal_comp_v (isBlockMap σ),
    ← mCoordIdeal_ringHom (fieldAut (N := N) σ : ΩFl Ψ N →+* ΩFl Ψ N) (yFl Ψ N)]
  congr 1
  funext p
  exact yFl_coordMap σ p

theorem blockFnField_coordMap (σ : Equiv.Perm Ψ) :
    blockFnField (yFl Ψ N ∘ coordMap σ) = blockFnField (yFl Ψ N) := by
  unfold blockFnField
  congr 1
  ext t
  constructor
  · rintro ⟨p, q, hpq, rfl⟩
    exact ⟨coordMap σ p, coordMap σ q, by simp [coordMap, hpq], rfl⟩
  · rintro ⟨p, q, hpq, rfl⟩
    obtain ⟨p', rfl⟩ := coordMap_surjective σ p
    obtain ⟨q', rfl⟩ := coordMap_surjective σ q
    exact ⟨p', q', (blockMap_bijective σ).1 hpq, rfl⟩

theorem xDeg_blockMap (σ : Equiv.Perm Ψ) (p : Ψ × Fin N) (q : FlBlock Ψ N) :
    xDeg Ψ N (σ p.1, p.2) (blockMap σ q) = xDeg Ψ N p q := by
  by_cases h : q.1 = p.1 <;> simp [xDeg, blockMap, h]

theorem isPullHerm_xLine (σ : Equiv.Perm Ψ) (p : Ψ × Fin N) :
    IsPullHerm (blockMap σ) (coordMap σ) (xLine Ψ N p) (xLine Ψ N (σ p.1, p.2)) := by
  refine ⟨?_, fun z' => ?_⟩
  · show xDeg Ψ N (σ p.1, p.2) = pullDeg (blockMap σ) (xDeg Ψ N p)
    funext q
    obtain ⟨q', rfl⟩ := (blockMap_bijective σ).2 q
    unfold pullDeg
    rw [(blockMap_bijective σ).1.extend_apply, xDeg_blockMap]
  · show refNorm (xDeg Ψ N (σ p.1, p.2)) z' = refNorm (xDeg Ψ N p) fun r => z' (coordMap σ r)
    unfold refNorm
    refine (Fintype.prod_bijective (blockMap σ) (blockMap_bijective σ) _ _ fun k => ?_).symm
    rw [xDeg_blockMap]
    rfl

theorem degree_mapDomain {J J' : Type} (f : J → J') (m : J →₀ ℕ) : (m.mapDomain f).degree = m.degree := by
  induction m using Finsupp.induction_linear with
  | zero => simp
  | add a b ha hb => rw [Finsupp.mapDomain_add, map_add (f := _), map_add (f := _), ha, hb]
  | single a n => simp [Finsupp.mapDomain_single, Finsupp.degree_single]

end GlobalTheory.CompanionTheory.Ar.Top.HhLabel

namespace GlobalTheory.CompanionTheory.Ar.Top


open HhLabel in
theorem hhFl_labelInv : ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ]
    (N : ℕ) [Nonempty Ψ], 2 ≤ N → IsArithVar (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N) (dimFl Ψ N + 1) →
    LabelInv (Ψ := Ψ) (N := N) (hhFl Ψ N II) := by
  intro II hII Ψ _ _ N _ _ hP σ F
  have key : ∀ w : Fin (dimFl Ψ N + 1) → Ψ × Fin N,
      II (FlBlock Ψ N) (FlIdx Ψ N) (PFl Ψ N) (dimFl Ψ N + 1) (fun k => xLine Ψ N (σ (w k).1, (w k).2)) =
        II (FlBlock Ψ N) (FlIdx Ψ N) (PFl Ψ N) (dimFl Ψ N + 1) (fun k => xLine Ψ N (w k)) := by
    intro w
    have himg := imageZ_PFl (N := N) σ
    have hPF := hII.2.2.1 (FlBlock Ψ N) (FlIdx Ψ N) (FlBlock Ψ N) (FlIdx Ψ N) (blockMap σ) (coordMap σ) (ΩFl Ψ N)
      (yFl Ψ N) (dimFl Ψ N + 1) (fun k => xLine Ψ N (w k)) (fun k => xLine Ψ N (σ (w k).1, (w k).2))
      (isBlockMap σ) hP (by show IsArithVar (imageZ (coordMap σ) (PFl Ψ N)) _; rw [himg]; exact hP)
      (fun _ => GroundTheory.Heights₂.Heights.LowerBoundFree.FlagHeightMultilinear.isSmoothHerm_fsHerm _)
      (fun j => isPullHerm_xLine σ (w j))
    rw [blockFnField_coordMap, IntermediateField.relfinrank_self, Nat.cast_one, one_mul] at hPF
    exact hPF.trans (congrArg (fun P => II (FlBlock Ψ N) (FlIdx Ψ N) P (dimFl Ψ N + 1) fun k => xLine Ψ N (w k)) himg)
  induction F using MvPolynomial.induction_on' with
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), map_add (f := _), hp, hq]
  | monomial m c =>
    rw [rename_monomial]
    by_cases hm : m.degree = dimFl Ψ N + 1
    · obtain ⟨w, rfl⟩ := RootFieldNumerics.HH.exists_word _ m hm
      have hmap : (∑ k, Finsupp.single (w k) (1 : ℕ)).mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) =
          ∑ k, Finsupp.single (σ (w k).1, (w k).2) 1 := by
        rw [Finsupp.mapDomain_finsetSum]
        simp only [Finsupp.mapDomain_single]
      have hwd := RootFieldNumerics.HH.hhFl_word II hII.1 hP (fun k => (σ (w k).1, (w k).2)) c
      rw [hmap, hwd, RootFieldNumerics.HH.hhFl_word II hII.1 hP w c, key w]
    · rw [HhModel.hhFl_monomial_of_ne II _ _ (by rwa [degree_mapDomain]), HhModel.hhFl_monomial_of_ne II _ _ hm]

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightLabelInvariant =====

-- ===== clump member: Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.DegreeTautologicalLineProjectiveLine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.DegreeTautologicalLineProjectiveLine", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Formalism.DegreeFormula.PointDegree.PowSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial

namespace GlobalTheory.CompanionTheory.Ar.Top.Model

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem degFl_pk_mul (τ : Ψ) (k : ℕ) (hk : 1 ≤ k) (Q : RP Ψ N) : degFl (pk τ k * Q) = 0 :=
  Formalism.DegreeFormula.degreePowerSumMulEqZero Ψ N τ k Q hk

theorem degFl_add (P Q : RP Ψ N) : degFl (P + Q) = degFl P + degFl Q := by
  simp only [degFl, MvPolynomial.coeff_add, mul_add, Finset.sum_add_distrib]

end GlobalTheory.CompanionTheory.Ar.Top.Model
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.DegreeTautologicalLineProjectiveLine =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightTestBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightTestBound", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.DegreeTautologicalLineProjectiveLine\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightPowerSumOneZero\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestPolynomialShiftTotal\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\npublic import Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop\npublic import ReciprocityTheory.GeometryOfNumbers.LatticeCovolumes.GramSt\nimport Formalism.DegreeFormula.PointDegree.PowSum\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top.HhTestProof


open scoped ComplexOrder MatrixOrder in
theorem det_one_add_bound {a b : ℕ} (Z : Matrix (Fin a) (Fin b) ℂ) (hZ : ∀ i k, ‖Z i k‖ = 1) :
    0 < (1 + Z * Z.conjTranspose).det.re ∧ (1 + Z * Z.conjTranspose).det.re ≤ (1 + (b : ℝ)) ^ a := by
  have hA : (1 + Z * Z.conjTranspose).PosDef :=
    Matrix.PosDef.one.add_posSemidef (Matrix.posSemidef_self_mul_conjTranspose Z)
  refine ⟨(Complex.pos_iff.mp hA.det_pos).1, ?_⟩
  refine (ReciprocityTheory.GeometryOfNumbersTheory.gramSt_hadamard hA).trans (le_of_eq ?_)
  have hd : ∀ i : Fin a, (((1 : Matrix (Fin a) (Fin a) ℂ) + Z * Z.conjTranspose) i i).re = 1 + (b : ℝ) := by
    intro i
    have h1 : (Z * Z.conjTranspose) i i = ∑ k, Z i k * star (Z i k) := by
      simp [Matrix.mul_apply, Matrix.conjTranspose_apply]
    have h2 : ∀ k, (Z i k * star (Z i k)).re = 1 := by
      intro k
      have := Complex.mul_conj (Z i k)
      rw [Complex.star_def, this, Complex.normSq_eq_norm_sq, hZ]
      simp
    rw [Matrix.add_apply, Matrix.one_apply_eq, Complex.add_re, Complex.one_re, h1, Complex.re_sum,
      Finset.sum_congr rfl fun k _ => h2 k]
    simp
  rw [Finset.prod_congr rfl fun i _ => hd i]
  simp

theorem half_log_det_le {j m N : ℕ} (hN : j + m = N) (Z : Matrix (Fin m) (Fin j) ℂ) (hZ : ∀ i k, ‖Z i k‖ = 1) :
    1 / 2 * Real.log (1 + Z * Z.conjTranspose).det.re ≤ ((min j m : ℕ) : ℝ) / 2 * Real.log ((N : ℝ) + 1) := by
  have hNr : (j : ℝ) + m = N := by exact_mod_cast hN
  have key : ∀ (c d : ℕ), c + d = N → ∀ x : ℝ, 0 < x → x ≤ (1 + (d : ℝ)) ^ c →
      1 / 2 * Real.log x ≤ (c : ℝ) / 2 * Real.log ((N : ℝ) + 1) := by
    intro c d hcd x hx hle
    have hcdr : (c : ℝ) + d = N := by exact_mod_cast hcd
    have h1 : Real.log x ≤ (c : ℝ) * Real.log (1 + (d : ℝ)) := by
      have := Real.log_le_log hx hle
      rwa [Real.log_pow] at this
    have h2 : Real.log (1 + (d : ℝ)) ≤ Real.log ((N : ℝ) + 1) := by
      apply Real.log_le_log (by positivity)
      have : (0 : ℝ) ≤ c := Nat.cast_nonneg c
      linarith
    have h3 : (c : ℝ) * Real.log (1 + (d : ℝ)) ≤ (c : ℝ) * Real.log ((N : ℝ) + 1) :=
      mul_le_mul_of_nonneg_left h2 (Nat.cast_nonneg c)
    linarith
  rcases le_total m j with h | h
  · rw [min_eq_right h]
    obtain ⟨h0, h1⟩ := det_one_add_bound Z hZ
    exact key m j (by omega) _ h0 h1
  · rw [min_eq_left h]
    have hcomm : (1 + Z * Z.conjTranspose).det = (1 + Z.conjTranspose * Z).det :=
      Matrix.det_one_add_mul_comm _ _
    have hZ' : ∀ i k, ‖Z.conjTranspose i k‖ = 1 := by
      intro i k
      simp [Matrix.conjTranspose_apply, hZ]
    obtain ⟨h0, h1⟩ := det_one_add_bound Z.conjTranspose hZ'
    rw [Matrix.conjTranspose_conjTranspose] at h0 h1
    rw [hcomm]
    exact key j m (by omega) _ h0 h1

section Poly

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def negX : RP Ψ N →ₐ[ℝ] RP Ψ N := aeval fun x => -X x

theorem negX_monomial (m : Ψ × Fin N →₀ ℕ) (c : ℝ) :
    negX (monomial m c : RP Ψ N) = monomial m ((-1) ^ m.degree * c) := by
  have h1 : (m.prod fun i k => (-X i : RP Ψ N) ^ k) =
      C ((-1) ^ m.degree) * m.prod fun i k => (X i : RP Ψ N) ^ k := by
    rw [Finsupp.prod, Finsupp.prod]
    have : ∀ i ∈ m.support, (-X i : RP Ψ N) ^ m i = C ((-1) ^ m i) * X i ^ m i := by
      intro i _
      rw [neg_pow, map_pow, map_neg, map_one]
    rw [Finset.prod_congr rfl this, Finset.prod_mul_distrib, ← map_prod,
      Finset.prod_pow_eq_pow_sum]
    rfl
  rw [negX, aeval_monomial, h1, monomial_eq (a := (-1) ^ m.degree * c), map_mul, algebraMap_eq]
  ring

theorem coeff_negX (m : Ψ × Fin N →₀ ℕ) (F : RP Ψ N) :
    AddMonoidAlgebra.coeff (negX F) m = (-1) ^ m.degree * AddMonoidAlgebra.coeff F m := by
  induction F using MvPolynomial.induction_on' with
  | monomial u c =>
    rw [negX_monomial, coeff_monomial, coeff_monomial]
    split_ifs with h
    · rw [h]
    · simp
  | add p q hp hq => rw [map_add (f := _), MvPolynomial.coeff_add, MvPolynomial.coeff_add, hp, hq]; ring

end Poly

section Funs

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def hR (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (II : IntersectionSystem) : RP Ψ N →ₗ[ℝ] ℝ :=
  (basisMonomials (Ψ × Fin N) ℝ).constr ℝ fun m => GroundTheory.Heights₂.Heights.LowerBoundFree.hFlMono Ψ N II m

theorem hR_monomial (II : IntersectionSystem) (m : Ψ × Fin N →₀ ℕ) (c : ℝ) :
    hR Ψ N II (monomial m c) = c * GroundTheory.Heights₂.Heights.LowerBoundFree.hFlMono Ψ N II m := by
  have h : (monomial m c : RP Ψ N) = c • basisMonomials (Ψ × Fin N) ℝ m := by
    simp [smul_monomial]
  rw [h, map_smul, hR, Module.Basis.constr_basis, smul_eq_mul]

theorem hhFl_eq (II : IntersectionSystem) (F : RP Ψ N) : hhFl Ψ N II F = hR Ψ N II (negX F) := by
  induction F using MvPolynomial.induction_on' with
  | monomial u c => rw [negX_monomial, _root_.GlobalTheory.CompanionTheory.Ar.Top.HhModel.hhFl_monomial, hR_monomial]; ring
  | add p q hp hq => rw [map_add (f := _), map_add (f := _), map_add (f := _), hp, hq]

theorem hFl_eq (II : IntersectionSystem) (G : GroundTheory.Heights₂.Heights.LowerBoundFree.RootPoly Ψ N) :
    GroundTheory.Heights₂.Heights.LowerBoundFree.hFl Ψ N II G = hR Ψ N II (map (algebraMap ℚ ℝ) G) := by
  conv_rhs => rw [G.as_sum]

  rw [map_sum, map_sum, GroundTheory.Heights₂.Heights.LowerBoundFree.hFl]
  refine Finset.sum_congr rfl fun m _ => ?_
  rw [map_monomial, hR_monomial]
  rfl

def flR (F : RP Ψ N) : ℝ :=
  ∑ σ : Ψ → Equiv.Perm (Fin N), (∏ τ, ((Equiv.Perm.sign (σ τ) : ℤ) : ℝ)) * F.coeff (permExp σ)

theorem degFl_eq_flR (F : RP Ψ N) : degFl F = flR (negX F) := by
  rw [degFl, flR, Finset.mul_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  have hd : (permExp σ).degree = dimFl Ψ N := Formalism.DegreeFormula.PPowSum.degree_permExp σ
  rw [coeff_negX, hd]
  ring

theorem flagInt_eq (G : GroundTheory.Heights₂.Heights.LowerBoundFree.RootPoly Ψ N) :
    ((GroundTheory.Heights₂.Heights.LowerBoundFree.flagInt Ψ N G : ℚ) : ℝ) = flR (map (algebraMap ℚ ℝ) G) := by
  rw [GroundTheory.Heights₂.Heights.LowerBoundFree.flagInt, GroundTheory.Heights₂.Heights.LowerBoundFree.antisym, coeff_sum,
    flR, Rat.cast_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  have hinj : Function.Injective (GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct Ψ N σ) := by
    rintro ⟨a, i⟩ ⟨b, k⟩ h
    simp only [GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct, Prod.mk.injEq] at h
    obtain ⟨rfl, h⟩ := h
    simp [(σ a).injective h]
  have hm : GroundTheory.Heights₂.Heights.LowerBoundFree.rhoMono Ψ N =
      (permExp σ).mapDomain (GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct Ψ N σ) := by
    ext ⟨τ, i⟩
    have : (τ, i) = GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct Ψ N σ (τ, (σ τ).symm i) := by
      simp [GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct]
    rw [this, Finsupp.mapDomain_apply_of_injective hinj]
    simp [GroundTheory.Heights₂.Heights.LowerBoundFree.rhoMono, permExp, GroundTheory.Heights₂.Heights.LowerBoundFree.weylAct]
  rw [MvPolynomial.coeff_smul, hm, coeff_rename_mapDomain _ hinj, smul_eq_mul, Rat.cast_mul, coeff_map]
  congr 1
  simp [GroundTheory.Heights₂.Heights.LowerBoundFree.weylSign]

end Funs

section Test

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def muR (j : ℕ) : RP Ψ N := map (algebraMap ℚ ℝ) (GroundTheory.Heights₂.Heights.LowerBoundFree.muPoly Ψ N j)

def vR (j : ℕ) : RP Ψ N := map (algebraMap ℚ ℝ) (GroundTheory.Heights₂.Heights.LowerBoundFree.vandBlocks Ψ N j)

theorem muR_eq (j : ℕ) : (muR j : RP Ψ N) = ∑ τ, ∑ i ∈ Finset.univ.filter (fun i : Fin N => j ≤ (i : ℕ)), X (τ, i) := by

  rw [muR, GroundTheory.Heights₂.Heights.LowerBoundFree.muPoly, map_sum, Finset.sum_filter, Fintype.sum_prod_type]
  refine Finset.sum_congr rfl fun τ _ => ?_
  rw [Finset.sum_filter]
  refine Finset.sum_congr rfl fun i _ => ?_
  by_cases h : (i : ℕ) < j
  · simp [h, Nat.not_le.mpr h]
  · simp [h, Nat.le_of_not_lt h]

theorem negX_muR (j : ℕ) : negX (muR j : RP Ψ N) = -muR j := by

  rw [muR_eq, negX, map_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun τ _ => ?_

  rw [map_sum, ← Finset.sum_neg_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [aeval_X]

theorem negX_fibClass (j : ℕ) : negX (fibClass j : RP Ψ N) = vR j := by
  rw [fibClass, vR, GroundTheory.Heights₂.Heights.LowerBoundFree.vandBlocks, negX, map_prod, map_prod]
  refine Finset.prod_congr rfl fun τ _ => ?_
  rw [map_prod, map_prod]
  refine Finset.prod_congr rfl fun ab _ => ?_
  simp only [map_sub, aeval_X, map_X]
  ring

def sAll : RP Ψ N := ∑ τ, pk τ 1

theorem muSmall_of_le {j : ℕ} (h : N - j ≤ j) : (muSmall j : RP Ψ N) = muR j := by
  rw [muSmall, if_pos h, muR_eq]

theorem muR_sub_muSmall {j : ℕ} (h : ¬ N - j ≤ j) : (muR j : RP Ψ N) - muSmall j = sAll := by
  rw [muSmall, if_neg h, muR_eq, sAll, sub_neg_eq_add, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun τ _ => ?_
  rw [pk, pkLow, Finset.sum_filter, Finset.sum_filter, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  by_cases h : (i : ℕ) < j
  · simp [h, Nat.not_le.mpr h]
  · simp [h, Nat.le_of_not_lt h]

theorem degFl_sAll_mul (Q : RP Ψ N) : degFl ((sAll : RP Ψ N) * Q) = 0 := by
  rw [sAll, Finset.sum_mul]
  refine Finset.sum_induction _ (fun x : RP Ψ N => degFl x = 0) ?_ ?_ ?_
  · intro a b ha hb
    rw [Model.degFl_add, ha, hb, add_zero]
  · simp [degFl]
  · intro τ _
    exact Model.degFl_pk_mul τ 1 le_rfl Q

theorem muR_homog (j : ℕ) : (muR j : RP Ψ N).IsHomogeneous 1 := by
  rw [muR_eq]
  exact IsHomogeneous.sum _ _ _ fun τ _ => IsHomogeneous.sum _ _ _ fun i _ => isHomogeneous_X _ _

theorem fibClass_homog (j : ℕ) : ∃ d, (fibClass j : RP Ψ N).IsHomogeneous d := by
  refine ⟨_, IsHomogeneous.prod _ _ _ fun τ _ => IsHomogeneous.prod _ _ (fun _ => 1) fun ab _ => ?_⟩
  exact (isHomogeneous_X _ _).sub (isHomogeneous_X _ _)

end Test

section Main

open GroundTheory.Heights₂.Heights.LowerBoundFree (FA Jint fib dimN)

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem dimN_eq (j : ℕ) : dimN Ψ N j = dimX Ψ N j := by
  rw [dimN, dimX, Nat.mul_assoc]

theorem negX_pow_mul (k j : ℕ) :
    negX ((muR j : RP Ψ N) ^ k * fibClass j) = ((-1 : ℝ) ^ k) • ((muR j : RP Ψ N) ^ k * vR j) := by
  rw [map_mul, map_pow, negX_muR, negX_fibClass, neg_pow, smul_eq_C_mul, map_pow, map_neg, map_one]
  ring

theorem map_FA (j : ℕ) (cf : ℚ) :
    map (algebraMap ℚ ℝ) (FA Ψ N j cf) = (cf : ℝ) • ((muR j : RP Ψ N) ^ (dimN Ψ N j + 1) * vR j) := by
  rw [FA, fib, map_mul, map_pow, map_mul, map_C, smul_eq_C_mul]
  change _ * (C ((cf : ℝ)) * _) = _
  rw [muR, vR]
  ring

theorem map_J (j : ℕ) (cf : ℚ) :
    map (algebraMap ℚ ℝ) ((GroundTheory.Heights₂.Heights.LowerBoundFree.muPoly Ψ N j) ^ (dimN Ψ N j) *
      fib Ψ N j cf) = (cf : ℝ) • ((muR j : RP Ψ N) ^ (dimN Ψ N j) * vR j) := by
  rw [fib, map_mul, map_pow, map_mul, map_C, smul_eq_C_mul]
  change _ * (C ((cf : ℝ)) * _) = _
  rw [muR, vR]
  ring

theorem hhFl_muR (II : IntersectionSystem) (j : ℕ) :
    hhFl Ψ N II ((muR j : RP Ψ N) ^ (dimX Ψ N j + 1) * fibClass j) =
      -GroundTheory.Heights₂.Heights.LowerBoundFree.hFl Ψ N II (FA Ψ N j ((-1) ^ dimX Ψ N j)) := by
  rw [hhFl_eq, negX_pow_mul, hFl_eq, map_FA, dimN_eq, map_smul, map_smul, smul_eq_mul, smul_eq_mul]
  push_cast
  ring

theorem degFl_muR (j : ℕ) :
    degFl ((muR j : RP Ψ N) ^ dimX Ψ N j * fibClass j) = ((Jint Ψ N j ((-1) ^ dimX Ψ N j) : ℚ) : ℝ) := by
  rw [degFl_eq_flR, negX_pow_mul, Jint, flagInt_eq, map_J, dimN_eq]
  push_cast
  rfl

theorem testDeg_eq (j : ℕ) :
    testDeg Ψ N j = ((Jint Ψ N j ((-1) ^ dimX Ψ N j) : ℚ) : ℝ) := by
  rw [← degFl_muR, testDeg]
  by_cases h : N - j ≤ j
  · rw [muSmall_of_le h]
  · have e := geom_sum₂_mul (muR j : RP Ψ N) (muSmall j) (dimX Ψ N j)
    rw [muR_sub_muSmall h] at e
    have e2 : (muR j : RP Ψ N) ^ dimX Ψ N j * fibClass j = muSmall j ^ dimX Ψ N j * fibClass j +
        sAll * ((∑ i ∈ Finset.range (dimX Ψ N j), (muR j : RP Ψ N) ^ i * muSmall j ^ (dimX Ψ N j - 1 - i)) *
          fibClass j) := by
      rw [← mul_assoc, mul_comm sAll, e]
      ring
    rw [e2, Model.degFl_add, degFl_sAll_mul, add_zero]

theorem degree_count {j d : ℕ} (hn : dimX Ψ N j ≠ 0)
    (hT : (testPoly j : RP Ψ N).IsHomogeneous (dimFl Ψ N + 1)) (hdeg : 0 < testDeg Ψ N j)
    (hf : (fibClass j : RP Ψ N).IsHomogeneous d) : dimX Ψ N j + d = dimFl Ψ N := by
  have h0 : (muSmall j : RP Ψ N) ^ dimX Ψ N j * fibClass j ≠ 0 := by
    intro h
    rw [testDeg, h] at hdeg
    simp [degFl] at hdeg
  have hM : (muSmall j : RP Ψ N) ≠ 0 := by
    intro h
    rw [h, zero_pow hn, zero_mul] at h0
    exact h0 rfl
  have hT0 : (testPoly j : RP Ψ N) ≠ 0 := by
    rw [testPoly, pow_succ', mul_assoc]
    exact mul_ne_zero hM h0
  have h2 : (testPoly j : RP Ψ N).IsHomogeneous (1 * (dimX Ψ N j + 1) + d) :=
    ((_root_.RootFieldNumerics.TF.mu_homog' j).pow _).mul hf
  have := h2.inj_right hT hT0
  omega

theorem hhFl_test (II : IntersectionSystem) {j d : ℕ}
    (hkill : ∀ τ (Q : RP Ψ N), Q.IsHomogeneous (dimFl Ψ N) → hhFl Ψ N II (pk τ 1 * Q) = 0)
    (hf : (fibClass j : RP Ψ N).IsHomogeneous d) (hd : dimX Ψ N j + d = dimFl Ψ N) :
    hhFl Ψ N II (testPoly j) = hhFl Ψ N II ((muR j : RP Ψ N) ^ (dimX Ψ N j + 1) * fibClass j) := by
  rw [testPoly]
  by_cases h : N - j ≤ j
  · rw [muSmall_of_le h]
  · have e := geom_sum₂_mul (muR j : RP Ψ N) (muSmall j) (dimX Ψ N j + 1)
    rw [muR_sub_muSmall h] at e
    set Q : RP Ψ N := (∑ i ∈ Finset.range (dimX Ψ N j + 1),
      (muR j : RP Ψ N) ^ i * muSmall j ^ (dimX Ψ N j + 1 - 1 - i)) * fibClass j with hQ
    have e2 : (muR j : RP Ψ N) ^ (dimX Ψ N j + 1) * fibClass j =
        muSmall j ^ (dimX Ψ N j + 1) * fibClass j + sAll * Q := by
      rw [hQ, ← mul_assoc, mul_comm sAll, e]
      ring
    have hQh : Q.IsHomogeneous (dimFl Ψ N) := by
      rw [← hd, hQ]
      refine IsHomogeneous.mul ?_ hf
      refine IsHomogeneous.sum _ _ _ fun i hi => ?_
      have hi' := Finset.mem_range.mp hi
      have := ((muR_homog (Ψ := Ψ) (N := N) j).pow i).mul ((_root_.RootFieldNumerics.TF.mu_homog' (Ψ := Ψ) (N := N) j).pow (dimX Ψ N j + 1 - 1 - i))
      have e3 : 1 * i + 1 * (dimX Ψ N j + 1 - 1 - i) = dimX Ψ N j := by omega
      rwa [e3] at this

    rw [e2, map_add (f := _), sAll, Finset.sum_mul, map_sum, Finset.sum_eq_zero fun τ _ => hkill τ Q hQh, add_zero]

end Main

theorem hhTestBound_hhFl : GroundTheory.Heights₂.Heights.LowerBoundFree.GrassmannianHeightZTwo.Statement → PB.Inputs →
    ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ)
      [Nonempty Ψ] (j : ℕ), 1 ≤ j → j < N → HhTestBound j (hhFl Ψ N II) := by
  intro hZ2 _ II hII Ψ _ _ N _ j hj hjN
  have hN : 2 ≤ N := by omega
  obtain ⟨hT, hdeg, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.testPoly_facts Ψ N j hj hjN
  have hA : IsArithVar (GroundTheory.Heights₂.Heights.LowerBoundFree.PFl Ψ N) (dimFl Ψ N + 1) := by
    have := (_root_.GlobalTheory.CompanionTheory.Ar.PB.flag_isArithVar_and_image Ψ N hN).1
    rwa [GroundTheory.Heights₂.Heights.antisymDegree, Nat.choose_two_right] at this
  have hkill : ∀ τ (Q : RP Ψ N), Q.IsHomogeneous (dimFl Ψ N) → hhFl Ψ N II (pk τ 1 * Q) = 0 :=
    fun τ Q hQ => _root_.GlobalTheory.CompanionTheory.Ar.Top.hhFl_pk_one_mul II hII Ψ N τ Q hN hA hQ
  have hn : dimX Ψ N j ≠ 0 := by
    have h1 : 0 < Fintype.card Ψ := Fintype.card_pos
    have h2 : 0 < N - j := by omega
    exact (Nat.mul_pos h1 (Nat.mul_pos (by omega) h2)).ne'
  obtain ⟨d, hf⟩ := fibClass_homog (Ψ := Ψ) (N := N) j
  have hd := degree_count hn hT hdeg hf
  have hJ := testDeg_eq (Ψ := Ψ) (N := N) j
  have hJ0 : 0 < GroundTheory.Heights₂.Heights.LowerBoundFree.Jint Ψ N j ((-1) ^ dimX Ψ N j) := by
    rw [hJ] at hdeg
    exact_mod_cast hdeg
  have hb := hZ2 II Ψ N j ((-1) ^ dimX Ψ N j) (((min j (N - j) : ℕ) : ℝ) / 2 * Real.log ((N : ℝ) + 1))
    hII.1 hN hj (by omega) hJ0
    (fun Z hZ => half_log_det_le (by omega) Z hZ)
  rw [HhTestBound, hhFl_test II hkill hf hd, hhFl_muR, hJ]
  rw [dimN_eq] at hb
  refine hb.trans (le_of_eq ?_)
  push_cast
  ring

end GlobalTheory.CompanionTheory.Ar.Top.HhTestProof
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightTestBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.MeanSlopeOfProportionalVolume =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.MeanSlopeOfProportionalVolume", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem mean_slope_of_proportional_volume : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (C rd Lval : ℝ), T.Proportional → T.VolEq → T.T2 II C rd Lval → T.MeanSlope II C rd Lval := by
  intro II Ψ _ _ N T C rd Lval hP hV hT u g hu B hB hB0 hbad
  have hfd : 0 < flagDeg u := (_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N u).2.1 hu.2.1
  obtain ⟨c0⟩ := T.neC
  have hv : 0 < T.vol c0 := hP.1 c0
  have hvc : ∀ c, T.vol c = T.vol c0 := fun c => hV c c0
  have hcard : (0:ℝ) < Fintype.card T.Comp := by exact_mod_cast Fintype.card_pos
  have hvolT : T.volT = Fintype.card T.Comp * T.vol c0 := by
    rw [RootTower.volT, Finset.sum_congr rfl fun c _ => hvc c]
    simp [Finset.sum_const, Finset.card_univ, nsmul_eq_mul]
  have hD : (0:ℝ) < (dimFl Ψ N : ℝ) + 1 := by positivity
  have key : (∑ c, T.slope II B c u) / Fintype.card T.Comp
      = T.PB II B u / (((dimFl Ψ N : ℝ) + 1) * (T.volT * flagDeg u)) := by
    have hs : ∀ c, T.slope II B c u
        = T.PPc II B c (linRoot u ^ (dimFl Ψ N + 1)) / (((dimFl Ψ N : ℝ) + 1) * (T.vol c0 * flagDeg u)) := by
      intro c
      rw [RootTower.slope, hvc c]
    rw [Finset.sum_congr rfl fun c _ => hs c, ← Finset.sum_div, RootTower.PB, RootTower.PPt, hvolT,
      div_div]
    congr 1
    ring
  have hpos : 0 < ((dimFl Ψ N : ℝ) + 1) * (T.volT * flagDeg u) := by
    rw [hvolT]
    exact mul_pos hD (mul_pos (mul_pos hcard hv) hfd)
  rw [key, le_div_iff₀ hpos]
  have h := hT u g hu B hB hB0 hbad
  linarith

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.MeanSlopeOfProportionalVolume =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MeanSlopeProportionalVolume =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MeanSlopeProportionalVolume", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.MeanSlopeOfProportionalVolume\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem mean_slope_of_volume_eq : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (C rd Lval : ℝ), T.Proportional → T.VolEq → T.T2 II C rd Lval → T.MeanSlope II C rd Lval :=
  @RootFieldNumerics.mean_slope_of_proportional_volume

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MeanSlopeProportionalVolume =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GapNonnegOfDominant =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GapNonnegOfDominant", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem gap_nonneg_of_dominant {Ψ : Type} [Fintype Ψ] {N : ℕ} {j : ℕ} (hj1 : 1 ≤ j) (hjN : j < N)
    {mu : Wt Ψ N} (hd : Dominant mu) (τ : Ψ) : 0 ≤ gap j mu τ := by
  have h1 : j - 1 < N := by omega
  have hle : mu τ ⟨j, hjN⟩ ≤ mu τ ⟨j - 1, h1⟩ := hd τ ⟨j - 1, h1⟩ ⟨j, hjN⟩ (by rw [Fin.mk_le_mk]; omega)
  simp only [gap, ent, dif_pos h1, dif_pos hjN]
  exact sub_nonneg.mpr hle

theorem NefThreshold.mono {Ψ : Type} [Fintype Ψ] {N : ℕ} {j : ℕ} (hj1 : 1 ≤ j) (hjN : j < N)
    {mu : Wt Ψ N} (hd : Dominant mu) {b b' : ℝ} (hb : b ≤ b') (h : NefThreshold j b mu) :
    NefThreshold j b' mu := by
  intro τ
  have hg : 0 ≤ gap j mu τ := gap_nonneg_of_dominant hj1 hjN hd τ
  calc 4 * (Fintype.card Ψ : ℝ) * ‖mu‖ ≤ (b - 2) * gap j mu τ := h τ
    _ ≤ (b' - 2) * gap j mu τ := mul_le_mul_of_nonneg_right (by linarith) hg

theorem RootTower.nefFib_of_nefThreshold :
    ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N), T.ModelNefStatement → T.M2 →
      ∀ (B : ℕ) (c : T.Comp) (mu : Wt Ψ N), Dominant mu → NefThreshold T.j B mu →
        (T.M B c).NefFib mu 0 := by
  intro Ψ _ _ N T h1 h2 B c mu hd hB p hp
  by_cases hS : T.InS B p
  · exact h1 B c p hS mu hd
  · have hBp : B < p := by
      by_contra hc
      exact hS (show p.Prime ∧ (p ≤ B ∨ p ∈ T.bad) from ⟨hp, Or.inl (not_lt.mp hc)⟩)
    refine h2 B c p hp hS mu hd ?_
    exact NefThreshold.mono T.j_pos T.j_lt hd (by exact_mod_cast hBp.le) hB

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GapNonnegOfDominant =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerI3OfSemipositiveNef =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerI3OfSemipositiveNef", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.CurveDegreeLinearNefCone\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.GapNonnegOfDominant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem RootTower.tower_I3_of_nef_inputs :
    ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N), T.A1 → T.ModelNefStatement → T.M2 → T.ANef → T.I3 := by
  intro Ψ _ _ N T hA1 hM1 hM2 hAN abelian₂
  obtain ⟨s₀, hs₀, h⟩ := hA1 abelian₂
  refine ⟨s₀, hs₀, fun B hB c lam s hl hs hss hd ht => ⟨?_, h B hB c lam s hl hs hss hd⟩⟩
  intro p hp
  have hn := RootTower.nefFib_of_nefThreshold Ψ N T hM1 hM2 B c (T.lamS lam s) hd ht p hp
  exact (_root_.GlobalTheory.CompanionTheory.Ar.Top.curveDeg_linear_nef Ψ N (T.M B c) (T.lamS lam s) 0 s 0 0).2.2.1 p hs.le hn (hAN B c p hp)

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerI3OfSemipositiveNef =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT1Limit =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT1Limit", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Real\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.LocallyConvex.AbsConvexOpen\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top

namespace LimitVolumeRatio

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem linRoot_sub_smul (lam nu : Wt Ψ N) (s : ℝ) :
    linRoot (lam - s • nu) = linRoot lam - C s * linRoot nu := by
  simp only [linRoot, Pi.sub_apply, Pi.smul_apply, smul_eq_mul, map_sub, map_mul, sub_mul,
    Finset.sum_sub_distrib, Finset.mul_sum, mul_neg, mul_assoc]
  ring

theorem linA_lamS (T : RootTower Ψ N) (u : Wt Ψ N) (s : ℝ) :
    linA (T.lamS u s) s = toA (linRoot u) + C s * (X none - toA (linRoot T.nu)) := by
  simp only [linA, RootTower.lamS, linRoot_sub_smul, toA, map_sub, map_mul, rename_C]
  ring

theorem cont_pow (Φ : RPA Ψ N →ₗ[ℝ] ℝ) (P0 P1 : RPA Ψ N) (d : ℕ) :
    Continuous fun s : ℝ => Φ ((P0 + C s * P1) ^ d) := by
  have h : ∀ s : ℝ, Φ ((P0 + C s * P1) ^ d) =
      ∑ m ∈ Finset.range (d + 1), s ^ (d - m) * Φ (P0 ^ m * P1 ^ (d - m) * (d.choose m : RPA Ψ N)) := by
    intro s

    rw [add_pow, map_sum]
    refine Finset.sum_congr rfl fun m _ => ?_
    rw [show s ^ (d - m) * Φ (P0 ^ m * P1 ^ (d - m) * (d.choose m : RPA Ψ N)) =
      Φ (s ^ (d - m) • (P0 ^ m * P1 ^ (d - m) * (d.choose m : RPA Ψ N))) by rw [map_smul, smul_eq_mul]]
    congr 1
    rw [MvPolynomial.smul_eq_C_mul, mul_pow, ← map_pow]
    ring
  rw [show (fun s : ℝ => Φ ((P0 + C s * P1) ^ d)) = fun s : ℝ => ∑ m ∈ Finset.range (d + 1),
      s ^ (d - m) * Φ (P0 ^ m * P1 ^ (d - m) * (d.choose m : RPA Ψ N)) from funext h]
  fun_prop

theorem tendsto_lin (Φ : RPA Ψ N →ₗ[ℝ] ℝ) (T : RootTower Ψ N) (u : Wt Ψ N) (d : ℕ) :
    Tendsto (fun s => Φ (linA (T.lamS u s) s ^ d)) (𝓝[>] 0) (𝓝 (Φ (toA (linRoot u ^ d)))) := by
  have hc := (cont_pow Φ (toA (linRoot u)) (X none - toA (linRoot T.nu)) d).tendsto 0
  simp only [map_zero, zero_mul, add_zero] at hc
  rw [show toA (linRoot u ^ d) = toA (linRoot u) ^ d by simp [toA, map_pow]]
  exact (hc.mono_left nhdsWithin_le_nhds).congr fun s => by rw [linA_lamS]

theorem gap_sub_smul (j : ℕ) (lam nu : Wt Ψ N) (s : ℝ) (τ : Ψ) :
    gap j (lam - s • nu) τ = gap j lam τ - s * gap j nu τ := by
  simp only [gap, ent]
  split_ifs <;> simp <;> ring

end LimitVolumeRatio

end GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Top

namespace LimitVolumeRatio

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

theorem eventually_dominant (T : RootTower Ψ N) (u : Wt Ψ N) (hu : RegDominant u) :
    ∀ᶠ s in 𝓝 (0 : ℝ), Dominant (T.lamS u s) := by
  have key : ∀ τ (a b : Fin N), ∀ᶠ s in 𝓝 (0 : ℝ), a ≤ b → (T.lamS u s) τ b ≤ (T.lamS u s) τ a := by
    intro τ a b
    by_cases hab : a < b
    · have h1 : Tendsto (fun s : ℝ => u τ b - s * T.nu τ b) (𝓝 0) (𝓝 (u τ b - 0 * T.nu τ b)) :=
        (continuous_const.sub (continuous_id.mul continuous_const)).tendsto 0
      have h2 : Tendsto (fun s : ℝ => u τ a - s * T.nu τ a) (𝓝 0) (𝓝 (u τ a - 0 * T.nu τ a)) :=
        (continuous_const.sub (continuous_id.mul continuous_const)).tendsto 0
      filter_upwards [h1.eventually_lt h2 (by simpa using hu τ a b hab)] with s hs _
      simpa [RootTower.lamS] using hs.le
    · exact Eventually.of_forall fun s h => by
        have : a = b := le_antisymm h (not_lt.mp hab)
        subst this
        exact le_rfl
  exact eventually_all.2 fun τ => eventually_all.2 fun a => eventually_all.2 fun b => key τ a b

theorem eventually_threshold [Nonempty Ψ] (T : RootTower Ψ N) (u : Wt Ψ N) (g : ℝ) (hw : WeightHyp T.j u g)
    (B : ℕ) (hB : bigB0 u g < B + 1) :
    ∀ᶠ s in 𝓝 (0 : ℝ), NefThreshold T.j B (T.lamS u s) := by
  have hF : (1 : ℝ) ≤ Fintype.card Ψ := by exact_mod_cast Fintype.card_pos
  have hN : (2 : ℝ) ≤ N := by exact_mod_cast (show 2 ≤ N by have := T.j_pos; have := T.j_lt; omega)
  have hg : 0 < g := hw.1
  have hx : 0 ≤ ‖u‖ := norm_nonneg _
  set F : ℝ := (Fintype.card Ψ : ℝ)
  set x : ℝ := ‖u‖
  have hn2 : (4 : ℝ) ≤ (N : ℝ) ^ 2 := by nlinarith
  have hB' : 4 * F * (N : ℝ) ^ 2 + 4 * F * (N : ℝ) ^ 2 * (x / g) - 3 < (B : ℝ) - 2 := by
    simp only [bigB0] at hB
    nlinarith
  have hxg : x / g * g = x := div_mul_cancel₀ x hg.ne'
  have hFN : (4 : ℝ) ≤ F * (N : ℝ) ^ 2 := by
    have := mul_le_mul hF hn2 (by norm_num) (by linarith)
    linarith
  have hpos : 0 < 4 * F * (N : ℝ) ^ 2 + 4 * F * (N : ℝ) ^ 2 * (x / g) - 3 := by
    have : 0 ≤ x / g := div_nonneg hx hg.le
    have h' : 0 ≤ 4 * F * (N : ℝ) ^ 2 * (x / g) := mul_nonneg (by positivity) this
    linarith
  have hB2 : 0 ≤ (B : ℝ) - 2 := by linarith
  have at0 : ∀ τ, 4 * F * x < ((B : ℝ) - 2) * gap T.j u τ := by
    intro τ
    have h1 : ((B : ℝ) - 2) * g ≤ ((B : ℝ) - 2) * gap T.j u τ :=
      mul_le_mul_of_nonneg_left (hw.2.2.1 τ) hB2
    have h2 := mul_lt_mul_of_pos_right hB' hg
    have h3 : (4 * F * (N : ℝ) ^ 2 + 4 * F * (N : ℝ) ^ 2 * (x / g) - 3) * g =
        4 * F * (N : ℝ) ^ 2 * g + 4 * F * (N : ℝ) ^ 2 * x - 3 * g := by
      rw [sub_mul, add_mul, mul_assoc (4 * F * (N : ℝ) ^ 2), hxg]
    have h4 : 4 * F * x ≤ 4 * F * (N : ℝ) ^ 2 * x := by
      have e : 4 * F * (N : ℝ) ^ 2 * x - 4 * F * x = (4 * F * x) * ((N : ℝ) ^ 2 - 1) := by ring
      have := mul_nonneg (mul_nonneg (by positivity : (0 : ℝ) ≤ 4 * F) hx) (by linarith : (0 : ℝ) ≤ (N : ℝ) ^ 2 - 1)
      linarith
    have h5 : 0 < 4 * F * (N : ℝ) ^ 2 * g - 3 * g := by
      have e : 4 * F * (N : ℝ) ^ 2 * g - 3 * g = g * (4 * (F * (N : ℝ) ^ 2) - 3) := by ring
      rw [e]
      exact mul_pos hg (by linarith)
    linarith
  have key : ∀ τ, ∀ᶠ s in 𝓝 (0 : ℝ), 4 * F * ‖T.lamS u s‖ ≤ ((B : ℝ) - 2) * gap T.j (T.lamS u s) τ := by
    intro τ
    have h1 : Tendsto (fun s : ℝ => 4 * F * ‖T.lamS u s‖) (𝓝 0) (𝓝 (4 * F * ‖T.lamS u 0‖)) :=
      ((continuous_const.mul (continuous_const.sub (continuous_id.smul continuous_const)).norm)).tendsto 0
    have h2 : Tendsto (fun s : ℝ => ((B : ℝ) - 2) * (gap T.j u τ - s * gap T.j T.nu τ)) (𝓝 0)
        (𝓝 (((B : ℝ) - 2) * (gap T.j u τ - 0 * gap T.j T.nu τ))) :=
      (continuous_const.mul (continuous_const.sub (continuous_id.mul continuous_const))).tendsto 0
    have h0 : 4 * F * ‖T.lamS u 0‖ < ((B : ℝ) - 2) * (gap T.j u τ - 0 * gap T.j T.nu τ) := by
      simpa [RootTower.lamS] using at0 τ
    filter_upwards [h1.eventually_lt h2 h0] with s hs
    rw [RootTower.lamS, gap_sub_smul]
    exact hs.le
  exact eventually_all.2 key

theorem tower_T1_limit_of_inputs : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) [Nonempty Ψ]
    (T : RootTower Ψ N), T.Proportional → T.I2 II → T.I3 → T.T1 II := by
  intro II Ψ _ _ N _ T hProp hI2 hI3 u g hw B hB c
  have hF : (1 : ℝ) ≤ Fintype.card Ψ := by exact_mod_cast Fintype.card_pos
  have hN : (2 : ℝ) ≤ N := by exact_mod_cast (show 2 ≤ N by have := T.j_pos; have := T.j_lt; omega)
  have hB2 : 2 ≤ B := by
    have hq : 0 ≤ ‖u‖ / g := div_nonneg (norm_nonneg _) hw.1.le
    have : (16 : ℝ) ≤ bigB0 u g := by
      simp only [bigB0]
      have hn2 : (4 : ℝ) ≤ (N : ℝ) ^ 2 := by nlinarith
      have hFN : (4 : ℝ) ≤ (Fintype.card Ψ : ℝ) * (N : ℝ) ^ 2 := by nlinarith
      have h1q : (1 : ℝ) ≤ 1 + ‖u‖ / g := by linarith
      have := mul_le_mul hFN h1q zero_le_one (by positivity)
      nlinarith
    have : (15 : ℝ) < B := by linarith
    exact_mod_cast (show (2 : ℝ) ≤ B by linarith)
  have hdom := eventually_dominant T u hw.2.1
  have hthr := eventually_threshold T u g hw B hB
  have hpos : ∀ᶠ s in 𝓝[>] (0 : ℝ), 0 < s := eventually_mem_nhdsWithin

  obtain ⟨s₁, hs₁, C₂, hag⟩ := hI2 (l1 u)
  have hdiff : Tendsto (fun s => T.mbarTop II B c u s - T.PBs II B c (T.lamS u s) s) (𝓝[>] 0) (𝓝 0) := by
    have hlin : Tendsto (fun s : ℝ => C₂ * s) (𝓝[>] 0) (𝓝 0) :=
      ((continuous_const.mul continuous_id).tendsto' 0 0 (by simp)).mono_left nhdsWithin_le_nhds
    refine squeeze_zero_norm' ?_ hlin
    filter_upwards [hpos, (eventually_le_nhds hs₁).filter_mono nhdsWithin_le_nhds,
      hdom.filter_mono nhdsWithin_le_nhds] with s h0 h1 h2
    exact hag B hB2 c u s le_rfl h0 h1 h2
  have hPB : Tendsto (fun s => T.PBs II B c (T.lamS u s) s) (𝓝[>] 0)
      (𝓝 (T.PPc II B c (linRoot u ^ (dimFl Ψ N + 1)))) :=
    LimitVolumeRatio.tendsto_lin ((T.M B c).PP II) T u (dimFl Ψ N + 1)
  have hbar : Tendsto (fun s => T.mbarTop II B c u s) (𝓝[>] 0)
      (𝓝 (T.PPc II B c (linRoot u ^ (dimFl Ψ N + 1)))) := by
    have h := hPB.add hdiff
    rw [add_zero] at h
    exact h.congr fun s => by ring
  have hdeg : Tendsto (fun s => T.mDeg B c u s) (𝓝[>] 0) (𝓝 (T.vol c * flagDeg u)) := by
    have h := LimitVolumeRatio.tendsto_lin (T.M B c).geoFun T u (dimFl Ψ N)
    rwa [hProp.2.1 B c] at h
  have hvpos : 0 < T.vol c * flagDeg u :=
    mul_pos (hProp.1 c) ((flagDeg_eq_weyl Ψ N u).2.1 hw.2.1)
  refine ⟨?_, hbar, hdeg, hvpos, ?_⟩
  · obtain ⟨s₀, hs₀, h3⟩ := hI3 (l1 u)
    filter_upwards [hpos, (eventually_le_nhds hs₀).filter_mono nhdsWithin_le_nhds,
      hdom.filter_mono nhdsWithin_le_nhds, hthr.filter_mono nhdsWithin_le_nhds] with s h0 h1 h2 h4
    exact h3 B hB2 c u s le_rfl h0 h1 h2 h4
  · have hne : ((dimFl Ψ N : ℝ) + 1) * (T.vol c * flagDeg u) ≠ 0 :=
      (mul_pos (by positivity) hvpos).ne'
    exact hbar.div (hdeg.const_mul _) hne

end LimitVolumeRatio

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT1Limit =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.DegFlSymmetryInvariance =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.DegFlSymmetryInvariance", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

theorem pa_relabel_injective {Ψ : Type} {N : ℕ} (σ : Equiv.Perm Ψ) :
    Function.Injective (fun x : Ψ × Fin N => (σ x.1, x.2)) := by
  intro x y hxy
  simp only [Prod.mk.injEq] at hxy
  exact Prod.ext (σ.injective hxy.1) hxy.2

theorem pa_degFl_relabel {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ} (σ : Equiv.Perm Ψ) (F : RP Ψ N) :
    degFl (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = degFl F := by
  have hinj := pa_relabel_injective (N := N) σ
  have hexp : ∀ ρ : Ψ → Equiv.Perm (Fin N), permExp ρ =
      Finsupp.mapDomain (fun x : Ψ × Fin N => (σ x.1, x.2)) (permExp (fun t => ρ (σ t))) := by
    intro ρ
    ext ⟨t, i⟩
    have ht : ((t, i) : Ψ × Fin N) = (fun x : Ψ × Fin N => (σ x.1, x.2)) (σ.symm t, i) := by simp
    rw [ht, Finsupp.mapDomain_apply_of_injective hinj]
    simp [permExp]
  unfold degFl
  congr 1
  have hterm : ∀ ρ : Ψ → Equiv.Perm (Fin N),
      (∏ τ, ((Equiv.Perm.sign (ρ τ) : ℤ) : ℝ)) *
          (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F).coeff (permExp ρ) =
        (fun ρ' : Ψ → Equiv.Perm (Fin N) =>
          (∏ τ, ((Equiv.Perm.sign (ρ' τ) : ℤ) : ℝ)) * F.coeff (permExp ρ')) (fun t => ρ (σ t)) := by
    intro ρ
    rw [hexp ρ, coeff_rename_mapDomain _ hinj]
    congr 1
    exact (Equiv.prod_comp σ (fun τ => ((Equiv.Perm.sign (ρ τ) : ℤ) : ℝ))).symm
  rw [Finset.sum_congr rfl (fun ρ _ => hterm ρ)]
  exact Equiv.sum_comp (Equiv.arrowCongr σ.symm (Equiv.refl (Equiv.Perm (Fin N))))
    (fun ρ' : Ψ → Equiv.Perm (Fin N) =>
      (∏ τ, ((Equiv.Perm.sign (ρ' τ) : ℤ) : ℝ)) * F.coeff (permExp ρ'))

theorem degFl_symmetry_invariance : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ), (∀ (τ : Ψ) (a b : Fin N) (F : RP Ψ N), a ≠ b → degFl (rename (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x) F) = -degFl F) ∧ ∀ (σ : Equiv.Perm Ψ) (F : RP Ψ N), degFl (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = degFl F ∧ ∀ (j : ℕ) (τ : Ψ), Sh j (σ τ) (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = Sh j τ F ∧ Tot (σ τ) (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = Tot τ F := by
  intro Ψ _ _ N
  refine ⟨?_, ?_⟩
  · intro τ a b F hab
    have hinv : ∀ x : Ψ × Fin N,
        (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x)
          ((fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x) x) = x := by
      rintro ⟨t, i⟩
      by_cases ht : t = τ <;> simp [ht]
    have hinj : Function.Injective
        (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x) := by
      intro x y hxy
      exact (hinv x).symm.trans ((congrArg
        (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x) hxy).trans (hinv y))
    have hexp : ∀ ρ : Ψ → Equiv.Perm (Fin N), permExp ρ =
        Finsupp.mapDomain (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x)
          (permExp (ρ * Pi.mulSingle τ (Equiv.swap a b))) := by
      intro ρ
      ext y
      conv_rhs => rw [← hinv y]
      rw [Finsupp.mapDomain_apply_of_injective hinj]
      rcases y with ⟨t, i⟩
      by_cases ht : t = τ
      · subst ht
        simp [permExp]
      · simp [permExp, ht, Pi.mulSingle_apply]
    have hsgn : ∀ ρ : Ψ → Equiv.Perm (Fin N),
        (∏ t, ((Equiv.Perm.sign ((ρ * Pi.mulSingle τ (Equiv.swap a b) : Ψ → Equiv.Perm (Fin N)) t) : ℤ) : ℝ)) =
          -∏ t, ((Equiv.Perm.sign (ρ t) : ℤ) : ℝ) := by
      intro ρ
      have hfac : ∀ t, ((Equiv.Perm.sign ((ρ * Pi.mulSingle τ (Equiv.swap a b) : Ψ → Equiv.Perm (Fin N)) t) : ℤ) : ℝ) =
          ((Equiv.Perm.sign (ρ t) : ℤ) : ℝ) * (if t = τ then -1 else 1) := by
        intro t
        by_cases ht : t = τ
        · subst ht
          simp [Equiv.Perm.sign_swap hab]
        · simp [ht]
      rw [Finset.prod_congr rfl (fun t _ => hfac t), Finset.prod_mul_distrib]
      simp
    unfold degFl
    rw [← mul_neg, ← Finset.sum_neg_distrib]
    congr 1
    rw [← Equiv.sum_comp (Equiv.mulRight (Pi.mulSingle τ (Equiv.swap a b)))
      (fun ρ => -((∏ t, ((Equiv.Perm.sign (ρ t) : ℤ) : ℝ)) * F.coeff (permExp ρ)))]
    apply Finset.sum_congr rfl
    intro ρ _
    simp only [Equiv.coe_mulRight]
    rw [hexp ρ, coeff_rename_mapDomain _ hinj, hsgn ρ]
    ring
  · intro σ F
    have hinj := pa_relabel_injective (N := N) σ
    refine ⟨pa_degFl_relabel σ F, fun j τ => ⟨?_, ?_⟩⟩
    · unfold Sh
      conv_rhs => rw [← pa_degFl_relabel σ]

      rw [map_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      exact pderiv_rename hinj (τ, i) F
    · unfold Tot
      conv_rhs => rw [← pa_degFl_relabel σ]

      rw [map_sum]
      congr 1
      apply Finset.sum_congr rfl
      intro i _
      exact pderiv_rename hinj (τ, i) F

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.DegFlSymmetryInvariance =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeSymmetries =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeSymmetries", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.WeilBound.CoreStatements.FlagImmersions.DegFlSymmetryInvariance\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem flag_integral_permutations : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ), (∀ (τ : Ψ) (a b : Fin N) (F : RP Ψ N), a ≠ b → degFl (rename (fun x : Ψ × Fin N => if x.1 = τ then (x.1, Equiv.swap a b x.2) else x) F) = -degFl F) ∧ ∀ (σ : Equiv.Perm Ψ) (F : RP Ψ N), degFl (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = degFl F ∧ ∀ (j : ℕ) (τ : Ψ), Sh j (σ τ) (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = Sh j τ F ∧ Tot (σ τ) (rename (fun x : Ψ × Fin N => (σ x.1, x.2)) F) = Tot τ F :=
  @RootFieldNumerics.degFl_symmetry_invariance

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeSymmetries =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremBAveraged =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremBAveraged", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeSymmetries\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem sum_group_apply_eq {Ψ : Type} (Γ : Subgroup (Equiv.Perm Ψ)) [Fintype Γ]
    (htr : ∀ τ τ' : Ψ, ∃ σ ∈ Γ, σ τ = τ') (f : Ψ → ℝ) (τ τ' : Ψ) :
    ∑ g : Γ, f ((g : Equiv.Perm Ψ) τ) = ∑ g : Γ, f ((g : Equiv.Perm Ψ) τ') := by
  obtain ⟨ρ, hρ, rfl⟩ := htr τ' τ
  exact Fintype.sum_equiv (Equiv.mulRight (⟨ρ, hρ⟩ : Γ)) _ _ (fun g => by simp [Equiv.Perm.mul_apply])

theorem exists_group_mean {Ψ : Type} (Γ : Subgroup (Equiv.Perm Ψ)) [Fintype Γ]
    (htr : ∀ τ τ' : Ψ, ∃ σ ∈ Γ, σ τ = τ') (f : Ψ → ℝ) :
    ∃ A : ℝ, ∀ τ, ∑ g : Γ, f ((g : Equiv.Perm Ψ) τ) = (Fintype.card Γ : ℝ) * A := by
  rcases isEmpty_or_nonempty Ψ with h | ⟨⟨τ₀⟩⟩
  · exact ⟨0, fun τ => (h.false τ).elim⟩
  · have hc : (Fintype.card Γ : ℝ) ≠ 0 := by exact_mod_cast Fintype.card_ne_zero
    refine ⟨(∑ g : Γ, f ((g : Equiv.Perm Ψ) τ₀)) / (Fintype.card Γ : ℝ), fun τ => ?_⟩
    rw [mul_div_cancel₀ _ hc]
    exact sum_group_apply_eq Γ htr f τ τ₀

theorem mean_estimate {G Ψ : Type} [Fintype G] [Nonempty G] [Fintype Ψ] (P V H bd A Bs : ℝ) (S U : Ψ → ℝ)
    (a b : G → Ψ → ℝ) (hA : ∀ τ, ∑ g, a g τ = (Fintype.card G : ℝ) * A)
    (hB : ∀ τ, ∑ g, b g τ = (Fintype.card G : ℝ) * Bs)
    (h : ∀ g, |P - V * (H - ∑ τ, (a g τ - b g τ) * S τ - ∑ τ, b g τ * U τ)| ≤ bd) :
    |P - V * (H - (A - Bs) * ∑ τ, S τ - Bs * ∑ τ, U τ)| ≤ bd := by
  have hn : (0 : ℝ) < (Fintype.card G : ℝ) := by exact_mod_cast Fintype.card_pos
  set n : ℝ := (Fintype.card G : ℝ) with hndef
  have h1 : ∑ g, ∑ τ, (a g τ - b g τ) * S τ = n * ((A - Bs) * ∑ τ, S τ) := by
    rw [Finset.sum_comm, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun τ _ => ?_
    rw [← Finset.sum_mul, Finset.sum_sub_distrib, hA, hB]
    ring
  have h2 : ∑ g, ∑ τ, b g τ * U τ = n * (Bs * ∑ τ, U τ) := by
    rw [Finset.sum_comm, Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun τ _ => ?_
    rw [← Finset.sum_mul, hB]
    ring
  have key : ∑ g : G, (P - V * (H - ∑ τ, (a g τ - b g τ) * S τ - ∑ τ, b g τ * U τ)) =
      n * (P - V * (H - (A - Bs) * ∑ τ, S τ - Bs * ∑ τ, U τ)) := by
    have : ∀ g : G, P - V * (H - ∑ τ, (a g τ - b g τ) * S τ - ∑ τ, b g τ * U τ) =
        (P - V * H) + V * ∑ τ, (a g τ - b g τ) * S τ + V * ∑ τ, b g τ * U τ := fun g => by ring
    simp only [this, Finset.sum_add_distrib, ← Finset.mul_sum, h1, h2, Finset.sum_const, Finset.card_univ,
      nsmul_eq_mul]
    rw [← hndef]
    ring
  have hle : n * |P - V * (H - (A - Bs) * ∑ τ, S τ - Bs * ∑ τ, U τ)| ≤ n * bd := by
    calc n * |P - V * (H - (A - Bs) * ∑ τ, S τ - Bs * ∑ τ, U τ)|
        = |n * (P - V * (H - (A - Bs) * ∑ τ, S τ - Bs * ∑ τ, U τ))| := by
          rw [abs_mul, abs_of_pos hn]
      _ = |∑ g : G, (P - V * (H - ∑ τ, (a g τ - b g τ) * S τ - ∑ τ, b g τ * U τ))| := by rw [key]
      _ ≤ ∑ g : G, |P - V * (H - ∑ τ, (a g τ - b g τ) * S τ - ∑ τ, b g τ * U τ)| :=
          Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ _g : G, bd := Finset.sum_le_sum fun g _ => h g
      _ = n * bd := by simp [hndef]
  exact le_of_mul_le_mul_left hle hn

theorem thmBA_of_thmB_propA : ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ)
    (T : RootTower Ψ N) (hh : RP Ψ N →ₗ[ℝ] ℝ), T.ThmB II hh → T.PropA II →
    LabelInv (Ψ := Ψ) (N := N) hh → T.ThmBA II hh := by
  intro II Ψ _ _ N T hh hB hA hL
  obtain ⟨C, B₁, hC⟩ := hB
  obtain ⟨Γ, htr, hinv⟩ := hA
  have : Fintype Γ := Fintype.ofFinite _
  refine ⟨C, max B₁ 2, fun B hBge => ?_⟩
  obtain ⟨α, β, hm⟩ := hC B (le_trans (le_max_left _ _) hBge)
  obtain ⟨A, hAm⟩ := exists_group_mean Γ htr α
  obtain ⟨Bs, hBm⟩ := exists_group_mean Γ htr β
  refine ⟨A, Bs, fun m hdeg => ?_⟩
  refine mean_estimate (G := Γ) _ _ _ _ A Bs _ _ (fun g τ => α ((g : Equiv.Perm Ψ) τ))
    (fun g τ => β ((g : Equiv.Perm Ψ) τ)) hAm hBm fun g => ?_
  set F : RP Ψ N := monomial m 1 with hF
  set φ : Ψ × Fin N → Ψ × Fin N := fun x => ((g : Equiv.Perm Ψ) x.1, x.2) with hφ
  have hR : (monomial (m.mapDomain φ) 1 : RP Ψ N) = rename φ F := (rename_monomial φ m 1).symm
  have hest := hm (m.mapDomain φ) (by rw [Finsupp.degree_mapDomain]; exact hdeg)
  have anti := fun τ j => ((_root_.GlobalTheory.CompanionTheory.Ar.Top.flag_integral_permutations Ψ N).2 (g : Equiv.Perm Ψ) F).2 j τ
  have hS : ∑ τ, (α τ - β τ) * Sh T.j τ (rename φ F) =
      ∑ τ, (α ((g : Equiv.Perm Ψ) τ) - β ((g : Equiv.Perm Ψ) τ)) * Sh T.j τ F := by
    rw [← Equiv.sum_comp (g : Equiv.Perm Ψ)]
    exact Finset.sum_congr rfl fun τ _ => by rw [(anti τ T.j).1]
  have hU : ∑ τ, β τ * Tot τ (rename φ F) = ∑ τ, β ((g : Equiv.Perm Ψ) τ) * Tot τ F := by
    rw [← Equiv.sum_comp (g : Equiv.Perm Ψ)]
    exact Finset.sum_congr rfl fun τ _ => by rw [(anti τ T.j).2]
  rw [hR, hS, hU, hinv g g.2 B (le_trans (le_max_right _ _) hBge) F, hL g F] at hest
  exact hest

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremBAveraged =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.DegLApply =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.DegLApply", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial GlobalTheory.CompanionTheory.Ar.Top

noncomputable section

namespace RootFieldNumerics.Lin

variable {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N : ℕ}

def degL (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) : RP Ψ N →ₗ[ℝ] ℝ :=
  ((-1 : ℝ) ^ dimFl Ψ N) •
    ∑ σ : Ψ → Equiv.Perm (Fin N), (∏ τ, ((Equiv.Perm.sign (σ τ) : ℤ) : ℝ)) • lcoeff ℝ (permExp σ)

theorem degL_apply (F : RP Ψ N) : degL Ψ N F = degFl F := by
  simp only [degL, degFl, LinearMap.smul_apply, LinearMap.sum_apply, MvPolynomial.lcoeff_apply,
    smul_eq_mul]

def shL (j : ℕ) (τ : Ψ) : RP Ψ N →ₗ[ℝ] ℝ :=
  (degL Ψ N).comp (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j),
    (pderiv (τ, i) : Derivation ℝ (RP Ψ N) (RP Ψ N)).toLinearMap)

theorem shL_apply (j : ℕ) (τ : Ψ) (F : RP Ψ N) : shL j τ F = Sh j τ F := by
  rw [shL, LinearMap.comp_apply, degL_apply, Sh]
  congr 1
  simp

def totL (τ : Ψ) : RP Ψ N →ₗ[ℝ] ℝ :=
  (degL Ψ N).comp (∑ i : Fin N, (pderiv (τ, i) : Derivation ℝ (RP Ψ N) (RP Ψ N)).toLinearMap)

theorem totL_apply (τ : Ψ) (F : RP Ψ N) : totL τ F = Tot τ F := by
  rw [totL, LinearMap.comp_apply, degL_apply, Tot]
  congr 1
  simp

end RootFieldNumerics.Lin
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.DegLApply =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AntisymmetricPerturbationBound =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AntisymmetricPerturbationBound", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Mathlib.CategoryTheory.Category.Basic\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagDegreeWeightFormula\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagShiftTotalLinRootPower\npublic import Mathlib.Basic.Real.Basic\npublic import Mathlib.Data.Nat.Choose.Multinomial\npublic import Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound\npublic import Development.WeilBound.CoreStatements.FlagImmersions.DegLApply\npublic import Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.IsSemipositiveOn\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top
open RootFieldNumerics

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem inv_linear_eval (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N j : ℕ) (l : MvPolynomial (Ψ × Fin N) ℝ)
    (hl : l ∈ GroundTheory.Heights₂.Heights.antisymInv Ψ N j) :
    ∃ a b : Ψ → ℝ, ∀ x : Ψ × Fin N → ℝ, eval x l =
      ∑ τ, (a τ - b τ) * ∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), x (τ, i) +
        ∑ τ, b τ * ∑ i, x (τ, i) := by
  obtain ⟨h1, h2⟩ := hl
  rw [homogeneousSubmodule_one_eq_span_X] at h1
  obtain ⟨c, hc⟩ := (Submodule.mem_span_range_iff_exists_fun ℝ).1 h1
  have hcoef : ∀ p, l.coeff (Finsupp.single p 1) = c p := by
    intro p
    rw [← hc, coeff_sum, Finset.sum_eq_single p]
    · simp
    · intro q _ hq
      rw [MvPolynomial.coeff_smul, coeff_X, if_neg, smul_zero]
      intro h
      exact hq (Finsupp.single_left_injective one_ne_zero h)
    · simp
  have hinv : ∀ τ (i k : Fin N), ((i : ℕ) < j ↔ (k : ℕ) < j) → c (τ, i) = c (τ, k) := by
    intro τ i k hik
    have hmem : Equiv.swap (τ, i) (τ, k) ∈ GroundTheory.Heights₂.Heights.antisymWeyl Ψ N j := by
      intro p
      rw [Equiv.swap_apply_def]
      split_ifs with e1 e2
      · subst e1
        exact ⟨rfl, hik.symm⟩
      · subst e2
        exact ⟨rfl, hik⟩
      · exact ⟨rfl, Iff.rfl⟩
    have h3 := coeff_rename_mapDomain _ (Equiv.swap (τ, i) (τ, k)).injective l (Finsupp.single (τ, i) 1)
    rw [h2 _ hmem, Finsupp.mapDomain_single, Equiv.swap_apply_left, hcoef, hcoef] at h3
    exact h3.symm
  have ha : ∀ τ, ∃ a : ℝ, ∀ i : Fin N, (i : ℕ) < j → c (τ, i) = a := by
    intro τ
    by_cases h : ∃ i : Fin N, (i : ℕ) < j
    · obtain ⟨i, hi⟩ := h
      exact ⟨c (τ, i), fun k hk => hinv τ k i (by simp [hi, hk])⟩
    · exact ⟨0, fun k hk => absurd ⟨k, hk⟩ h⟩
  have hb : ∀ τ, ∃ b : ℝ, ∀ i : Fin N, ¬ (i : ℕ) < j → c (τ, i) = b := by
    intro τ
    by_cases h : ∃ i : Fin N, ¬ (i : ℕ) < j
    · obtain ⟨i, hi⟩ := h
      exact ⟨c (τ, i), fun k hk => hinv τ k i (iff_of_false hk hi)⟩
    · exact ⟨0, fun k hk => absurd ⟨k, hk⟩ h⟩
  choose a ha using ha
  choose b hb using hb
  refine ⟨a, b, fun x => ?_⟩

  rw [← hc, map_sum, Fintype.sum_prod_type, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun τ _ => ?_
  rw [Finset.sum_filter, Finset.mul_sum, Finset.mul_sum, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun i _ => ?_
  rw [smul_eval, eval_X]
  split_ifs with hi
  · rw [ha τ i hi]
    ring
  · rw [hb τ i hi]
    ring

theorem flagDeg_eq_delta (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) :
    ∃ c : ℝ, 0 < c ∧ ∀ x : Ψ × Fin N → ℝ,
      flagDeg (fun τ i => x (τ, i) : Wt Ψ N) = c * eval x (GroundTheory.Heights₂.Heights.antisymDelta Ψ N) := by
  refine ⟨((dimFl Ψ N).factorial : ℝ) * ∏ _τ : Ψ, ∏ i : Fin N, ∏ k ∈ Finset.Ioi i, ((k : ℝ) - (i : ℝ))⁻¹, ?_, ?_⟩
  · refine mul_pos (by positivity) (Finset.prod_pos fun _ _ => Finset.prod_pos fun i _ =>
      Finset.prod_pos fun k hk => inv_pos.2 (sub_pos.2 ?_))
    exact_mod_cast (Finset.mem_Ioi.1 hk)
  · intro x
    rw [(_root_.GlobalTheory.CompanionTheory.Ar.Top.flagDeg_eq_weyl Ψ N _).1, mul_assoc]
    congr 1
    unfold GroundTheory.Heights₂.Heights.antisymDelta
    rw [map_prod, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun τ _ => ?_
    rw [map_prod, ← Finset.prod_mul_distrib]
    refine Finset.prod_congr rfl fun i _ => ?_
    rw [map_prod, ← Finset.prod_mul_distrib, ← Finset.prod_filter]
    refine Finset.prod_congr (by ext k; simp) fun k _ => ?_
    rw [map_sub, eval_X, eval_X, div_eq_inv_mul]

theorem cor_b_poly_functional : ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (j : ℕ) (R : RP Ψ N →ₗ[ℝ] ℝ) (v ε : ℝ) (Pl l : MvPolynomial (Ψ × Fin N) ℝ), 0 < v → (∀ lam : Wt Ψ N, eval (fun x => lam x.1 x.2) Pl = R (linRoot lam ^ (dimFl Ψ N + 1))) → Pl.IsHomogeneous (dimFl Ψ N + 1) → l ∈ GroundTheory.Heights₂.Heights.antisymInv Ψ N j → (∀ m, |(Pl - GroundTheory.Heights₂.Heights.antisymDelta Ψ N * l).coeff m| ≤ ε) → ∃ α β : Ψ → ℝ, ∀ m : Ψ × Fin N →₀ ℕ, m.degree = dimFl Ψ N + 1 → |R (monomial m 1) + v * (∑ τ, (α τ - β τ) * Sh j τ (monomial m 1) + ∑ τ, β τ * Tot τ (monomial m 1))| ≤ ε := by
  intro Ψ _ _ N j R v ε Pl l hv hP _ hl hε
  obtain ⟨a, b, hab⟩ := inv_linear_eval Ψ N j l hl
  obtain ⟨c, hc0, hc⟩ := flagDeg_eq_delta Ψ N
  set K : ℝ := v * ((dimFl Ψ N : ℝ) + 1) * c with hK
  have hK0 : K ≠ 0 := by positivity
  refine ⟨fun τ => a τ / K, fun τ => b τ / K, fun m hm => ?_⟩
  let Φ : RP Ψ N →ₗ[ℝ] ℝ :=
    R + v • (∑ τ, (a τ / K - b τ / K) • Lin.shL j τ + ∑ τ, (b τ / K) • Lin.totL τ)
  have hΦ : ∀ F, Φ F = R F + v * (∑ τ, (a τ / K - b τ / K) * Sh j τ F + ∑ τ, b τ / K * Tot τ F) := by
    intro F
    simp only [Φ, LinearMap.add_apply, LinearMap.smul_apply, LinearMap.sum_apply, Lin.shL_apply,
      Lin.totL_apply, smul_eq_mul]
  obtain ⟨P', -, hP', -, hle⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.polarisation_functional (Ψ × Fin N) (dimFl Ψ N + 1) Φ
  have heq : P' = Pl - GroundTheory.Heights₂.Heights.antisymDelta Ψ N * l := by
    refine MvPolynomial.funext fun x => ?_
    have e1 : (-∑ y, C (x y) * X y : RP Ψ N) = linRoot (fun τ i => x (τ, i) : Wt Ψ N) := rfl
    have e2 := hP (fun τ i => x (τ, i))
    rw [hP', e1, hΦ, map_sub, map_mul, hab, ← e2]
    simp only [(_root_.GlobalTheory.CompanionTheory.Ar.Top.Sh_Tot_linRoot_pow Ψ N j _ _).1, (_root_.GlobalTheory.CompanionTheory.Ar.Top.Sh_Tot_linRoot_pow Ψ N j _ _).2, hc]
    rw [sub_eq_add_neg (eval x Pl)]
    congr 1
    rw [← Finset.sum_add_distrib, ← Finset.sum_add_distrib, Finset.mul_sum, Finset.mul_sum,
      ← Finset.sum_neg_distrib]
    refine Finset.sum_congr rfl fun τ _ => ?_
    have hK' : v * ((dimFl Ψ N : ℝ) + 1) * c / K = 1 := div_self hK0
    generalize (∑ i ∈ Finset.univ.filter (fun i : Fin N => (i : ℕ) < j), x (τ, i)) = s
    generalize (∑ i, x (τ, i)) = t
    generalize eval x (GroundTheory.Heights₂.Heights.antisymDelta Ψ N) = d
    linear_combination (-(d * ((a τ - b τ) * s + b τ * t))) * hK'
  have h := hle m hm
  rw [hΦ, heq] at h
  exact h.trans (hε m)

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AntisymmetricPerturbationBound =====

-- ===== clump member: Development.WeilBound.CoreStatements.FlagImmersions.AntisymmetryTowerTheorem =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.FlagImmersions.AntisymmetryTowerTheorem", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.CompactGapsGE\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.AntisymmetricPerturbationBound\nimport Mathlib.Basic.Real.Basic\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.RingTheory.MvPolynomial.IrreducibleQuadratic\nimport Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.PolarizationPolynomialCoeffBound\nimport Mathlib.Algebra.MvPolynomial.Funext\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace RootFieldNumerics

private theorem comp_swap_eq_swapWt {Ψ : Type} [DecidableEq Ψ] {N : ℕ} (x : Ψ × Fin N → ℝ) (τ : Ψ) (a b : Fin N) :
    x ∘ ⇑(Equiv.swap (τ, a) (τ, b)) = fun z : Ψ × Fin N => swapWt τ a b (fun s i => x (s, i)) z.1 z.2 := by
  funext z
  obtain ⟨s, i⟩ := z
  simp only [swapWt, Function.comp_apply, Equiv.swap_apply_def, Prod.mk.injEq]
  by_cases hs : s = τ
  · subst hs
    by_cases hia : i = a
    · subst hia
      simp
    · by_cases hib : i = b
      · subst hib
        simp [hia]
      · simp [hia, hib]
  · simp [hs]

private theorem inWall_and_dominant_of_eq_neighbors {Ψ : Type} [Fintype Ψ] [DecidableEq Ψ] {N j : ℕ} (hj0 : 1 ≤ j) (hjN : j < N)
    (τ : Ψ) (x : Ψ × Fin N → ℝ)
    (hx : x ∈ Metric.closedBall (fun y : Ψ × Fin N => -(1 / (4 * ((N : ℝ) + 1)) *
        (((y.2 : ℕ) : ℝ) - if y.1 = τ ∧ j ≤ (y.2 : ℕ) then 1 else 0))) (1 / (16 * ((N : ℝ) + 1))))
    (hxe : x (τ, ⟨j - 1, by omega⟩) = x (τ, ⟨j, hjN⟩)) :
    InWall j τ (1 / (8 * ((N : ℝ) + 1))) (fun s i => x (s, i)) ∧
      Dominant (Ψ := Ψ) (N := N) (fun s i => x (s, i)) := by
  have hN : (0 : ℝ) < (N : ℝ) + 1 := by positivity
  obtain ⟨δ, hδ⟩ : ∃ δ : ℝ, δ = 1 / (4 * ((N : ℝ) + 1)) := ⟨_, rfl⟩
  have hδpos : 0 < δ := by rw [hδ]; positivity
  have hδN : δ * ((N : ℝ) + 1) = 1 / 4 := by
    rw [hδ]
    field_simp
  have hr : 1 / (16 * ((N : ℝ) + 1)) = δ / 4 := by
    rw [hδ]
    field_simp
    ring
  have hc : 1 / (8 * ((N : ℝ) + 1)) = δ / 2 := by
    rw [hδ]
    field_simp
    ring
  rw [← hδ, hr] at hx
  rw [hc]
  have hb : ∀ (s : Ψ) (i : Fin N),
      |x (s, i) - -(δ * (((i : ℕ) : ℝ) - if s = τ ∧ j ≤ (i : ℕ) then 1 else 0))| ≤ δ / 4 := by
    intro s i
    have h1 := (dist_pi_le_iff (by linarith)).1 (Metric.mem_closedBall.1 hx) (s, i)
    rwa [Real.dist_eq] at h1
  have G : ∀ (s : Ψ) (a b : Fin N), (b : ℕ) = (a : ℕ) + 1 → ¬ (s = τ ∧ (b : ℕ) = j) →
      δ / 2 ≤ x (s, a) - x (s, b) := by
    intro s a b hab hn
    have hite : (if s = τ ∧ j ≤ (a : ℕ) then (1 : ℝ) else 0) = if s = τ ∧ j ≤ (b : ℕ) then 1 else 0 := by
      by_cases hs : s = τ
      · have hbj : (b : ℕ) ≠ j := fun h => hn ⟨hs, h⟩
        simp only [hs, true_and]
        split_ifs <;> first | rfl | (exfalso; omega)
      · simp [hs]
    have hbR : ((b : ℕ) : ℝ) = ((a : ℕ) : ℝ) + 1 := by exact_mod_cast hab
    have ha := abs_le.1 (hb s a)
    have hb2 := abs_le.1 (hb s b)
    rw [hite] at ha
    rw [hbR] at hb2
    linarith [ha.1, ha.2, hb2.1, hb2.2]
  have hcons : ∀ (s : Ψ) (a b : Fin N), (b : ℕ) = (a : ℕ) + 1 → x (s, b) ≤ x (s, a) := by
    intro s a b hab
    by_cases hs : s = τ ∧ (b : ℕ) = j
    · obtain ⟨rfl, hbj⟩ := hs
      have ha : a = ⟨j - 1, Nat.lt_of_le_of_lt (Nat.sub_le j 1) hjN⟩ := Fin.ext (show (a : ℕ) = j - 1 by omega)
      have hb' : b = ⟨j, hjN⟩ := Fin.ext hbj
      have e1 : x (s, b) = x (s, ⟨j, hjN⟩) := congrArg (fun i => x (s, i)) hb'
      have e2 : x (s, a) = x (s, ⟨j - 1, Nat.lt_of_le_of_lt (Nat.sub_le j 1) hjN⟩) :=
        congrArg (fun i => x (s, i)) ha
      rw [e1, e2]
      exact hxe.ge
    · have := G s a b hab hs
      linarith
  have hdom : ∀ (s : Ψ) (k : ℕ) (a b : Fin N), (b : ℕ) = (a : ℕ) + k → x (s, b) ≤ x (s, a) := by
    intro s k
    induction k with
    | zero =>
      intro a b h
      have : b = a := Fin.ext (by omega)
      rw [this]
    | succ k ih =>
      intro a b h
      have hbl := b.isLt
      have hc : (a : ℕ) + k < N := by omega
      exact le_trans (hcons s ⟨(a : ℕ) + k, hc⟩ b (show (b : ℕ) = (a : ℕ) + k + 1 by omega))
        (ih a ⟨(a : ℕ) + k, hc⟩ rfl)
  refine ⟨?_, ?_⟩
  · show _ ∧ _ ∧ _ ∧ _
    refine ⟨?_, ?_, ?_, ?_⟩
    · refine (pi_norm_le_iff_of_nonneg (by norm_num)).2 fun s =>
        (pi_norm_le_iff_of_nonneg (by norm_num)).2 fun i => ?_
      show ‖x (s, i)‖ ≤ 1 / 2
      rw [Real.norm_eq_abs]
      have hiN : ((i : ℕ) : ℝ) ≤ N := by exact_mod_cast i.isLt.le
      have hI0 : (0 : ℝ) ≤ ((i : ℕ) : ℝ) - (if s = τ ∧ j ≤ (i : ℕ) then 1 else 0) := by
        split_ifs with hh
        · have h1 : 1 ≤ (i : ℕ) := le_trans hj0 hh.2
          have h2 : (1 : ℝ) ≤ ((i : ℕ) : ℝ) := by exact_mod_cast h1
          linarith
        · simp
      have hI1 : ((i : ℕ) : ℝ) - (if s = τ ∧ j ≤ (i : ℕ) then 1 else 0) ≤ N := by
        split_ifs <;> linarith
      have hA := mul_nonneg hδpos.le hI0
      have hB := mul_le_mul_of_nonneg_left hI1 hδpos.le
      have h1 := abs_le.1 (hb s i)
      rw [abs_le]
      constructor <;> linarith [h1.1, h1.2]
    · simp only [gap, ent, dite_eq_left (show j - 1 < N by omega), dite_eq_left hjN]
      exact sub_eq_zero.2 hxe
    · intro τ' hτ'
      simp only [gap, ent, dite_eq_left (show j - 1 < N by omega), dite_eq_left hjN]
      exact G τ' ⟨j - 1, by omega⟩ ⟨j, hjN⟩ (show j = j - 1 + 1 by omega) (fun h => hτ' h.1)
    · intro s i hi hij
      simp only [ent, dite_eq_left (show i < N by omega), dite_eq_left hi]
      exact G s ⟨i, by omega⟩ ⟨i + 1, hi⟩ rfl (fun h => hij h.2)
  · intro s a b hab
    exact hdom s ((b : ℕ) - (a : ℕ)) a b (by have := Fin.le_iff_val_le_val.1 hab; omega)


open GroundTheory.Heights₂.Heights in
theorem antisymmetry_tower_theorem : GroundTheory.Heights₂.Heights.AntisymPerturbation.Statement → ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (hh : RP Ψ N →ₗ[ℝ] ℝ), T.Proportional → T.ThmW II → T.I8 II hh → I9 (Ψ := Ψ) (N := N) hh → T.ThmB II hh := by
  intro hS II Ψ _ _ N T hh hprop hW h8 h9
  obtain ⟨hvol, -, -⟩ := hprop
  have hj0 : 1 ≤ T.j := T.j_pos
  have hjN : T.j < N := T.j_lt
  have hv : 0 < T.volT := by
    show 0 < ∑ c : T.Comp, T.vol c
    exact Finset.sum_pos (fun c _ => hvol c) Finset.univ_nonempty
  obtain ⟨h, hhom, hev, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.polarisation_functional (Ψ × Fin N) (dimFl Ψ N + 1) hh
  let x0 : Ψ → Ψ × Fin N → ℝ := fun τ y => -(1 / (4 * ((N : ℝ) + 1)) *
    (((y.2 : ℕ) : ℝ) - if y.1 = τ ∧ T.j ≤ (y.2 : ℕ) then 1 else 0))
  let K : Ψ → Set (Ψ × Fin N → ℝ) := fun τ =>
    diagHyperplane Ψ N τ ⟨T.j - 1, by omega⟩ ⟨T.j, hjN⟩ ∩ Metric.closedBall (x0 τ) (1 / (16 * ((N : ℝ) + 1)))
  have hK : ∀ τ : Ψ, IsCompact (K τ) ∧ K τ ⊆ diagHyperplane Ψ N τ ⟨T.j - 1, by omega⟩ ⟨T.j, hjN⟩ ∧
      (∃ O : Set (Ψ × Fin N → ℝ), IsOpen O ∧
        (O ∩ diagHyperplane Ψ N τ ⟨T.j - 1, by omega⟩ ⟨T.j, hjN⟩).Nonempty ∧
        O ∩ diagHyperplane Ψ N τ ⟨T.j - 1, by omega⟩ ⟨T.j, hjN⟩ ⊆ K τ) ∧
      ∀ x ∈ K τ, eval x h = 0 := by
    intro τ
    have hHc : IsClosed (diagHyperplane Ψ N τ ⟨T.j - 1, by omega⟩ ⟨T.j, hjN⟩) :=
      isClosed_eq (continuous_apply _) (continuous_apply _)
    refine ⟨(isCompact_closedBall _ _).inter_left hHc, Set.inter_subset_left,
      ⟨Metric.ball (x0 τ) (1 / (16 * ((N : ℝ) + 1))), Metric.isOpen_ball,
        ⟨x0 τ, Metric.mem_ball_self (by positivity), ?_⟩, ?_⟩, ?_⟩
    · show x0 τ (τ, ⟨T.j - 1, by omega⟩) = x0 τ (τ, ⟨T.j, hjN⟩)
      simp [x0, show ¬ T.j ≤ T.j - 1 by omega, Nat.cast_sub hj0]
    · rintro x ⟨hxO, hxH⟩
      exact ⟨hxH, Metric.ball_subset_closedBall hxO⟩
    · rintro x ⟨hxH, hxB⟩
      obtain ⟨-, hdom⟩ := inWall_and_dominant_of_eq_neighbors hj0 hjN τ x hxB hxH
      rw [hev x]
      exact h9.1 (fun s i => x (s, i)) hdom
        ⟨τ, ⟨T.j - 1, by omega⟩, ⟨T.j, hjN⟩, (show T.j = T.j - 1 + 1 by omega), hxH⟩
  obtain ⟨C0, hC⟩ := hS Ψ N T.j (by omega) hjN h K hK
  obtain ⟨CW, B₁, hB⟩ := hW (1 / (8 * ((N : ℝ) + 1))) (by positivity)
  unfold RootTower.ThmB
  refine ⟨C0 * CW, max B₁ 2, fun B hB₂ => ?_⟩
  have hB1 : B₁ ≤ B := le_trans (le_max_left _ _) hB₂
  have hB2 : 2 ≤ B := le_trans (le_max_right _ _) hB₂
  let L : RP Ψ N →ₗ[ℝ] ℝ :=
    ∑ c : T.Comp, ((T.M B c).PP II).comp (rename (some : Ψ × Fin N → Option (Ψ × Fin N))).toLinearMap
  have hL : ∀ F, L F = T.PPt II B F := by
    intro F
    simp [L, RootTower.PPt, RootTower.PPc, toA, LinearMap.sum_apply]
  obtain ⟨P, hPhom, hPev, -, -⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.polarisation_functional (Ψ × Fin N) (dimFl Ψ N + 1) L
  have hQev : ∀ x : Ψ × Fin N → ℝ, eval x (P - T.volT • h) =
      (L - T.volT • hh) ((-∑ z, MvPolynomial.C (x z) * X z) ^ (dimFl Ψ N + 1)) := by
    intro x
    rw [map_sub, MvPolynomial.smul_eval, hPev, hev]
    simp only [LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul]
  have hQhom : (P - T.volT • h).IsHomogeneous (dimFl Ψ N + 1) :=
    (mem_homogeneousSubmodule _ _).1 (Submodule.sub_mem _ ((mem_homogeneousSubmodule _ _).2 hPhom)
      (Submodule.smul_mem _ _ ((mem_homogeneousSubmodule _ _).2 hhom)))
  have key : ∀ F, T.PPt II B F - T.volT * hh F = ∑ c, (T.PPc II B c F - T.vol c * hh F) := by
    intro F
    simp only [RootTower.PPt, RootTower.volT, Finset.sum_sub_distrib, Finset.sum_mul]
  have hanti : P - T.volT • h ∈ antisymSpace Ψ N T.j := by
    show _ ∧ _
    refine ⟨?_, ?_⟩
    · have hd : antisymDegree Ψ N + 1 = dimFl Ψ N + 1 := by
        simp only [antisymDegree, dimFl, Nat.choose_two_right]
      rw [hd]
      exact (mem_homogeneousSubmodule _ _).2 hQhom
    · rintro σ ⟨τ, a, b, hab, hj, rfl⟩
      have hbj : (b : ℕ) ≠ T.j := by omega
      apply MvPolynomial.funext
      intro x
      rw [eval_rename, map_neg, hQev, hQev, comp_swap_eq_swapWt x τ a b]
      simp only [LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul, hL]
      rw [key, key]
      have hsum := Finset.sum_congr rfl fun c (_ : c ∈ (Finset.univ : Finset T.Comp)) =>
        h8 B hB2 c τ a b hab hbj (fun s i => x (s, i))
      rw [Finset.sum_neg_distrib] at hsum
      exact hsum
  have hsmall : ∀ τ : Ψ, ∀ x ∈ K τ, |eval x P| ≤ CW * Real.log B / B := by
    rintro τ x ⟨hxH, hxB⟩
    obtain ⟨hwall, -⟩ := inWall_and_dominant_of_eq_neighbors hj0 hjN τ x hxB hxH
    rw [hPev x, hL]
    exact hB B hB1 τ (fun s i => x (s, i)) hwall
  obtain ⟨l, hl, hlc⟩ := hC P T.volT (CW * Real.log B / B) hanti hsmall
  obtain ⟨α, β, hαβ⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Top.cor_b_poly_functional Ψ N T.j (L - T.volT • hh) T.volT (C0 * (CW * Real.log B / B))
    (P - T.volT • h) l hv (fun lam => hQev _) hQhom hl hlc
  refine ⟨α, β, fun m hm => ?_⟩
  have h1 := hαβ m hm
  simp only [LinearMap.sub_apply, LinearMap.smul_apply, smul_eq_mul, hL] at h1
  rw [show C0 * CW * Real.log B / B = C0 * (CW * Real.log B / B) by ring]
  refine (le_of_eq ?_).trans h1
  congr 1
  ring

end RootFieldNumerics
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.FlagImmersions.AntisymmetryTowerTheorem =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremB =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremB", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.WeilBound.CoreStatements.FlagImmersions.AntisymmetryTowerTheorem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem thmB_functional : GroundTheory.Heights₂.Heights.AntisymPerturbation.Statement → ∀ II : IntersectionSystem, ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ) (T : RootTower Ψ N) (hh : RP Ψ N →ₗ[ℝ] ℝ), T.Proportional → T.ThmW II → T.I8 II hh → I9 (Ψ := Ψ) (N := N) hh → T.ThmB II hh :=
  @RootFieldNumerics.antisymmetry_tower_theorem

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremB =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.DivSuppArithHolds =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.DivSuppArithHolds", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterSt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterDivSupp\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo

namespace GlobalTheory.CompanionTheory.Ar.Link

theorem divSuppArith_holds : ReciprocityTheory.ChartRestriction.G.Geo.DivSuppArithStatement :=
  ReciprocityTheory.ChartRestriction.G.Geo.divSuppArith

end GlobalTheory.CompanionTheory.Ar.Link
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.DivSuppArithHolds =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueRationalStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueRationalStatement", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.GenFibreExists\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Geo

namespace GlobalTheory.CompanionTheory.Ar.Link

theorem existsUnique_rat (K : Type) [Fintype K] (ι : K → Type) [∀ k, Fintype (ι k)] :
    ReciprocityTheory.ChartRestriction.G.AI.I1.ExistsUniqueStatement ℚ ι :=
  (GlobalTheory.CompanionTheory.Ar.PB.Known.fieldNumbers ℚ K ι).1

end GlobalTheory.CompanionTheory.Ar.Link
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueRationalStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilInputsCombined =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilInputsCombined", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HasBaseDegreeSetting\npublic import Development.AutomorphicSpectrum.Statements.MetricStatements.AgreementIffGuarded\npublic import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightI9Properties\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterNamed\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightLabelInvariant\npublic import Development.AutomorphicSpectrum.Definitions.MetricPeriods.MetricsProjectionFormulaNef\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.FlagHeightTestBound\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.HeckeSectionsIsotropicCommutatorPairingPower\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.MeanSlopeProportionalVolume\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TestHeightBound\npublic import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Proportional\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerI3OfSemipositiveNef\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT1Limit\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerT2\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremBAveraged\npublic import GroundTheory.HeightsAndTheta.Heights.Antisymmetric.Statements\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerTheoremB\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MultihomogeneousIdeals.ExistsUniqueStatement\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.KleimanSt\npublic import Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilTheorem\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.DivSuppArithHolds\npublic import Development.AutomorphicSpectrum.Proofs.GeometryProofs.ExistsUniqueRationalStatement\nimport GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FlagIndices.InstFintypeFlIdx\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.GenericFibreKerTarget\nimport Development.AutomorphicSpectrum.Proofs.MetricProofs.FlagVarietyBoundaryDimensionDrop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo Filter Topology GlobalTheory.CompanionTheory.Ar GlobalTheory.CompanionTheory.Ar.Top

namespace GlobalTheory.CompanionTheory.Ar.Top

theorem chain_tower : PB.FlagHeight → PB.Inputs → SuccessiveMinimaLowerBound → SuccessiveMinimaUpperBound →
    GroundTheory.Heights₂.Heights.AntisymPerturbation.Statement → GroundTheory.Heights₂.Heights.LowerBoundFree.GrassmannianHeightZTwo.Statement →
    ∀ II : IntersectionSystem, IsFullIntersectionSystem II → ∀ (Ψ : Type) [Fintype Ψ] [DecidableEq Ψ] (N : ℕ)
    [Nonempty Ψ] (T : RootTower Ψ N) (frob : ℕ → Ψ → ℕ → Ψ ⊕ Ψ) (C C' rd Lval : ℝ), 0 ≤ C → 0 ≤ C' → 1 ≤ rd →
    FrobShape frob → T.Proportional → T.I1 II → T.I2 II → T.A1 → T.ModelNefStatement → T.M2 → T.ANef → T.I5 II → T.I6 II →
    T.I7 → T.I8 II (hhFl Ψ N II) → T.Prop6 II frob → T.PropA II → T.PropF II C' rd Lval → T.VolEq →
    T.SlopeLower II C rd Lval → T.T1 II ∧ T.ThmB II (hhFl Ψ N II) ∧ T.T2 II (2 * C + 3 * C' + 5) rd Lval ∧
      T.MeanSlope II (2 * C + 3 * C' + 5) rd Lval := by
  intro hFH hIn hZ1 hZ2 hAP hG II hII Ψ _ _ N _ T frob C C' rd Lval hC hC' hrd hfs hP hI1 hI2 hA1 hM1 hM2 hAN
    hI5 hI6 hI7 hI8 hP6 hPA hPF hVol hSL
  have hN : 2 ≤ N := by have := T.j_pos; have := T.j_lt; omega
  have hI3 : T.I3 := _root_.GlobalTheory.CompanionTheory.Ar.Top.RootTower.tower_I3_of_nef_inputs Ψ N T hA1 hM1 hM2 hAN
  have hT1 : T.T1 II := _root_.GlobalTheory.CompanionTheory.Ar.Top.LimitVolumeRatio.tower_T1_limit_of_inputs II Ψ N T hP hI2 hI3
  have hW : T.ThmW II := _root_.GlobalTheory.CompanionTheory.Ar.Top.thmW_tower hIn.2.2.2.2.2.1 _root_.GlobalTheory.CompanionTheory.Ar.Link.existsUnique_rat GlobalTheory.CompanionTheory.Ar.Link.divSuppArith_holds hZ1 hZ2
    II hII Ψ N T hP hI1 hI2 hI3 hI5 hI6 hI7
  have hI9 : I9 (Ψ := Ψ) (N := N) (hhFl Ψ N II) := _root_.GlobalTheory.CompanionTheory.Ar.Top.flag_height_I9 hFH hIn II hII Ψ N hN
  have hB : T.ThmB II (hhFl Ψ N II) := _root_.GlobalTheory.CompanionTheory.Ar.Top.thmB_functional hAP II Ψ N T (hhFl Ψ N II) hP hW hI8 hI9
  have he : GroundTheory.Heights₂.Heights.antisymDegree Ψ N = dimFl Ψ N := by
    simp [GroundTheory.Heights₂.Heights.antisymDegree, dimFl, Nat.choose_two_right]
  have hAr := (_root_.GlobalTheory.CompanionTheory.Ar.PB.flag_isArithVar_and_image Ψ N hN).1
  rw [he] at hAr
  have hLab : LabelInv (Ψ := Ψ) (N := N) (hhFl Ψ N II) := _root_.GlobalTheory.CompanionTheory.Ar.Top.hhFl_labelInv II hII Ψ N hN hAr
  have hBA : T.ThmBA II (hhFl Ψ N II) := _root_.GlobalTheory.CompanionTheory.Ar.Top.thmBA_of_thmB_propA II Ψ N T (hhFl Ψ N II) hB hPA hLab
  have hTest : HhTestBound T.j (hhFl Ψ N II) := _root_.GlobalTheory.CompanionTheory.Ar.Top.HhTestProof.hhTestBound_hhFl hG hIn II hII Ψ N T.j T.j_pos T.j_lt
  have hA0 : T.LowerBoundAtBase II (hhFl Ψ N II) frob (2 * (C + C') + 3) rd Lval :=
    _root_.GlobalTheory.CompanionTheory.Ar.Top.test_height_bound_slope_flat II Ψ N T (hhFl Ψ N II) frob C C' rd Lval hC hC' hrd hP hI9 hPF hSL hTest
  have hK : (0 : ℝ) ≤ 2 * (C + C') + 3 := by linarith
  have hT2' := _root_.GlobalTheory.CompanionTheory.Ar.Top.tower_T2_of_inputs II Ψ N T (hhFl Ψ N II) frob (2 * (C + C') + 3) C' rd Lval hK hC' hrd hP hfs hI9 hP6
    hBA hPF hA0
  have hEq : 2 * (C + C') + 3 + C' + 2 = 2 * C + 3 * C' + 5 := by ring
  rw [hEq] at hT2'
  exact ⟨hT1, hB, hT2', _root_.GlobalTheory.CompanionTheory.Ar.Top.mean_slope_of_volume_eq II Ψ N T _ rd Lval hP hVol hT2'⟩

end GlobalTheory.CompanionTheory.Ar.Top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.DivisibilityProofs.TowerWeilInputsCombined =====
