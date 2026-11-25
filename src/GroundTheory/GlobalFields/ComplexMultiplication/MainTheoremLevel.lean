module

public import GroundTheory.GlobalFields.ComplexMultiplication.AlgebraicityHom
public import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization
public import GroundTheory.GlobalFields.ComplexMultiplication.BaseChangeField
public import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice
public import GroundTheory.GlobalFields.ComplexMultiplication.IdeleActionQuotient
public import GroundTheory.GlobalFields.ComplexMultiplication.ReductionRespectsAdd
public import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformizationClassification
public import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremIdeles
public import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLattice
public import GroundTheory.GlobalFields.SemilocalAlgebras.Galois
public import GroundTheory.GlobalFields.TateThesis.DegreeOnePrimes
public import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point
public import Mathlib.RingTheory.Frobenius
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.Supersingular
public import GroundTheory.GlobalFields.ComplexMultiplication.AutCFixed
public import GroundTheory.GlobalFields.TateThesis.Chebotarev
public import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap
public import GroundTheory.GlobalFields.KummerTheory.Splitting
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.KodairaNeron
public import GroundTheory.GlobalFields.ComplexMultiplication.PrimeLocalization
public import GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimes
public import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots
public import Mathlib.NumberTheory.NumberField.Basic
public import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Basic
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import GroundTheory.GlobalFields.ComplexMultiplication.InseparableFrobenius
public import GroundTheory.GlobalFields.ComplexMultiplication.ReductionAtPoint
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction
public import GroundTheory.GlobalFields.ComplexMultiplication.ReductionPoints
public import GroundTheory.ArithmeticGeometry.AbelianVarieties.SingularCubic
public import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation
public import GroundTheory.GlobalFields.ComplexMultiplication.WeberFunction
public import Mathlib.NumberTheory.NumberField.Cyclotomic.Basic
public import GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismPoints
public import GroundTheory.GlobalFields.ComplexMultiplication.Algebraicity
public import Mathlib.AlgebraicGeometry.EllipticCurve.ModelsWithJ
public import GroundTheory.GlobalFields.ComplexMultiplication.AlgebraicityGalois
public import GroundTheory.GlobalFields.ComplexMultiplication.HilbertClassFieldModels
public import GroundTheory.GlobalFields.GlobalArtinMap.ArtinMap
public import GroundTheory.GlobalFields.ClassFieldConsequences.RayClassField
import GroundTheory.GlobalFields.ComplexMultiplication.ReductionEval
import GroundTheory.GlobalFields.TateThesis.DegreeOneDensity
import GroundTheory.GlobalFields.ComplexMultiplication.BadPrimesFinite
import GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimesIsogeny
import GroundTheory.GlobalFields.ComplexMultiplication.GoodReductionAlmostAll

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremAssembly, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFields, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremReduction, GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismLift, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremPointHom, GroundTheory.GlobalFields.ComplexMultiplication.ReductionNonsingularPoints, GroundTheory.GlobalFields.ComplexMultiplication.TorsionReduction, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFrobenius, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremModels, GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLevel

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremAssembly =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremAssembly", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AlgebraicityHom\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization\npublic import GroundTheory.GlobalFields.ComplexMultiplication.BaseChangeField\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice\npublic import GroundTheory.GlobalFields.ComplexMultiplication.IdeleActionQuotient\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionRespectsAdd\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformizationClassification\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremIdeles\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLattice\nimport GroundTheory.GlobalFields.ComplexMultiplication.ReductionEval\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.AlgebraicGeometry.EllipticCurve.Reduction\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global
namespace Elliptic

noncomputable section

open NumberField Module IsDedekindDomain WeierstrassCurve WeierstrassCurve.Affine GroundTheory.Arith.Abelian
open scoped nonZeroDivisors

section Points

variable {F F' : Type*} [Field F] [Field F'] [DecidableEq F] [DecidableEq F']

omit [DecidableEq F] [DecidableEq F'] in
theorem point_some_eq_some {W : WeierstrassCurve F'} {x y x' y' : F'} (h : W.toAffine.Nonsingular x y)
    (h' : W.toAffine.Nonsingular x' y') (hx : x = x') (hy : y = y') :
    (Point.some x y h : W.toAffine.Point) = Point.some x' y' h' := by
  subst hx
  subst hy
  rfl

theorem pointMapRing_vcPoint (f : F →+* F') {W₁ W₂ : WeierstrassCurve F} (C : VariableChange F)
    (h : C • W₁ = W₂) (P : W₁.toAffine.Point) :
    pointMapRing f W₂ (vcPoint C h P) =
      vcPoint (C.map f) (by rw [map_variableChange, h]) (pointMapRing f W₁ P) := by
  rcases P with _ | ⟨x, y, hP⟩
  · rfl
  · exact point_some_eq_some _ _ (map_vcX C f x) (map_vcY C f x y)

theorem toPointHom_apply' (L : PeriodPair) (z : ℂ) : toPointHom L z = toPoint L z := rfl

theorem IsAnalyticUniformization.pointCongr {Λ : Submodule ℤ ℂ} {E E' : WeierstrassCurve ℂ}
    {f : ℂ →+ E.toAffine.Point} (hf : IsAnalyticUniformization Λ f) (e : E = E') :
    IsAnalyticUniformization Λ ((pointCongr e).toAddMonoidHom.comp f) := by
  subst e
  exact hf

end Points

section BaseChange

variable {L : Type} [Field L] [Algebra L ℂ] [DecidableEq L]

theorem exists_constMap_eq (A : WeierstrassCurve L) (P : (A.baseChange ℂ).toAffine.Point)
    (hP : ∀ (x y : ℂ) (h : (A.baseChange ℂ).toAffine.Nonsingular x y), P = .some x y h →
      x ∈ (algebraMap L ℂ).range ∧ y ∈ (algebraMap L ℂ).range) :
    ∃ t : A.toAffine.Point, constMap A ℂ t = P := by
  rcases P with _ | ⟨x, y, h⟩
  · exact ⟨0, rfl⟩
  · obtain ⟨⟨a, rfl⟩, ⟨b, rfl⟩⟩ := hP _ _ h rfl
    have h' : A.toAffine.Nonsingular a b :=
      (A.toAffine.baseChange_nonsingular (f := Algebra.ofId L ℂ) (algebraMap L ℂ).injective a b).1 h
    exact ⟨.some a b h', rfl⟩


omit [DecidableEq L] in
theorem baseChange_map_eq (A : WeierstrassCurve L) (τ : L →+* L) (σ : ℂ →+* ℂ)
    (hτσ : ∀ a : L, σ (algebraMap L ℂ a) = algebraMap L ℂ (τ a)) :
    (A.baseChange ℂ).map σ = (A.map τ).baseChange ℂ := by
  rw [WeierstrassCurve.baseChange, WeierstrassCurve.baseChange, WeierstrassCurve.map_map,
    WeierstrassCurve.map_map]
  congr 1
  ext a
  exact hτσ a


omit [Algebra L ℂ] in
theorem constMap_eq_pointMapRing {M : Type} [Field M] [Algebra L M] [DecidableEq M]
    (A : WeierstrassCurve L) (t : A.toAffine.Point) :
    constMap A M t = pointMapRing (algebraMap L M) A t := by
  rcases t with _ | ⟨x, y, h⟩
  · rfl
  · rfl

theorem pointMapRing_constMap (A : WeierstrassCurve L) (τ : L →+* L) (σ : ℂ →+* ℂ)
    (hτσ : ∀ a : L, σ (algebraMap L ℂ a) = algebraMap L ℂ (τ a)) (t : A.toAffine.Point) :
    pointMapRing σ (A.baseChange ℂ) (constMap A ℂ t) =
      pointCongr (baseChange_map_eq A τ σ hτσ).symm (constMap (A.map τ) ℂ (pointMapRing τ A t)) := by
  have e : σ.comp (algebraMap L ℂ) = (algebraMap L ℂ).comp τ := RingHom.ext hτσ
  rw [constMap_eq_pointMapRing, constMap_eq_pointMapRing]
  have h1 := pointMapRing_pointMapRing (algebraMap L ℂ) σ A t
  have h2 := pointMapRing_pointMapRing τ (algebraMap L ℂ) A t
  rw [pointMapRing_congr e] at h1
  refine h1.trans ?_
  rw [← h2]
  rfl

end BaseChange

section Ideals

variable {K : Type} [Field K] [NumberField K] (σ₀ : K →+* ℂ)

theorem mem_idealLattice_unit_mul_iff (J : FractionalIdeal (𝓞 K)⁰ K) (v : (𝓞 K)ˣ) (w : ℂ) :
    σ₀ (algebraMap (𝓞 K) K v) * w ∈ idealLattice σ₀ J ↔ w ∈ idealLattice σ₀ J := by
  have key : ∀ (v : (𝓞 K)ˣ) (w : ℂ), w ∈ idealLattice σ₀ J →
      σ₀ (algebraMap (𝓞 K) K v) * w ∈ idealLattice σ₀ J := by
    intro v w hw
    obtain ⟨k, hk, rfl⟩ := (mem_idealLattice σ₀).1 hw
    refine (mem_idealLattice σ₀).2 ⟨algebraMap (𝓞 K) K v * k, ?_, by rw [map_mul]⟩
    rw [← Algebra.smul_def]
    exact (J : Submodule (𝓞 K) K).smul_mem (v : 𝓞 K) hk
  refine ⟨fun h ↦ ?_, key v w⟩
  have := key v⁻¹ _ h
  rwa [← mul_assoc, ← map_mul, ← map_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, map_one,
    map_one, one_mul] at this

theorem mem_idealLattice_diagonal_smul_iff (x : Kˣ) (J : (FractionalIdeal (𝓞 K)⁰ K)ˣ) (z : ℂ) :
    z ∈ idealLattice σ₀ ↑(IdeleGroup.diagonal K x⁻¹ • J) ↔ σ₀ x * z ∈ idealLattice σ₀ J := by
  rw [mem_idealLattice, mem_idealLattice]
  constructor
  · rintro ⟨k, hk, rfl⟩
    rw [mem_diagonal_smul_iff, Units.val_inv_eq_inv_val, inv_inv] at hk
    exact ⟨x * k, hk, by rw [map_mul]⟩
  · rintro ⟨k, hk, hkz⟩
    refine ⟨(x⁻¹ : K) * k, ?_, ?_⟩
    · rw [mem_diagonal_smul_iff, Units.val_inv_eq_inv_val, inv_inv, ← mul_assoc,
        mul_inv_cancel₀ x.ne_zero, one_mul]
      exact hk
    · rw [map_mul, hkz, ← mul_assoc, ← map_mul, inv_mul_cancel₀ x.ne_zero, map_one, one_mul]

end Ideals

section Level

variable {K : Type} [Field K] [NumberField K] [Algebra K ℂ] (hK : finrank ℚ K = 2)
  [_root_.NumberField.IsTotallyComplex K]


include hK in
theorem exists_uniformization_of_data (σ : ℂ ≃ₐ[K] ℂ) (s : IdeleGroup K)
    (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) {E : WeierstrassCurve ℂ} [E.IsElliptic]
    {f : ℂ →+ E.toAffine.Point} (hf : IsAnalyticUniformization (idealLattice (algebraMap K ℂ) 𝔞) f)
    {m : ℕ} {L : IntermediateField K ℂ} [NumberField L] (τ : L ≃ₐ[K] L)
    (hτσ : ∀ a : L, σ (algebraMap L ℂ a) = algebraMap L ℂ (τ a))
    {A : WeierstrassCurve L} [A.IsElliptic] (V₀ : VariableChange ℂ) (hV₀ : V₀ • E = A.baseChange ℂ)
    (htors : ∀ (x y : ℂ) (h : (A.baseChange ℂ).toAffine.Nonsingular x y),
      m • (Point.some x y h : (A.baseChange ℂ).toAffine.Point) = 0 →
        x ∈ (algebraMap L ℂ).range ∧ y ∈ (algebraMap L ℂ).range)
    (𝔭 : HeightOneSpectrum (𝓞 K)) (x : Kˣ)
    (hs𝔞 : s⁻¹ • 𝔞 = IdeleGroup.diagonal K x⁻¹ • ((primeIdealUnit 𝔭)⁻¹ * 𝔞))
    (hsq : ∀ t : K, (m : K) * t ∈ (𝔞 : FractionalIdeal (𝓞 K)⁰ K) →
      IdeleGroup.smulQuotient s⁻¹ 𝔞 (Submodule.Quotient.mk t) =
        Submodule.Quotient.mk ((x⁻¹ : K) * t))
    (φ : Isogeny A (A.map (τ : L →+* L)))
    (hφ : (homConstSet (A.baseChange ℂ) ((A.map (τ : L →+* L)).baseChange ℂ) : Set ℂ) =
      (algebraMap L ℂ (invConst φ) * ·) ''
        idealLattice (algebraMap K ℂ) (𝔭.asIdeal : FractionalIdeal (𝓞 K)⁰ K)⁻¹)
    (D : VariableChange L) (hD : D • A.map (τ : L →+* L) = A.map (τ : L →+* L))
    (hDφ : ∀ t : A.toAffine.Point, m • t = 0 →
      pointHomOver ℂ φ t = vcPoint D hD (pointMapRing (τ : L →+* L) A t))
    (V' : VariableChange ℂ)
    (hV' : V' • weierstrassCurve (idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞)) =
      (A.map (τ : L →+* L)).baseChange ℂ) :
    ∃ f' : ℂ →+ (E.map (σ : ℂ →+* ℂ)).toAffine.Point,
      IsAnalyticUniformization (idealLattice (algebraMap K ℂ) ↑(s⁻¹ • 𝔞)) f' ∧
      ∀ t y : K, (m : K) * t ∈ (𝔞 : FractionalIdeal (𝓞 K)⁰ K) →
        IdeleGroup.smulQuotient s⁻¹ 𝔞 (Submodule.Quotient.mk t) = Submodule.Quotient.mk y →
          f' (algebraMap K ℂ y) = pointMapRing (σ : ℂ →+* ℂ) E (f (algebraMap K ℂ t)) := by
  classical

  have hL₁ := lattice_idealPeriodPair (algebraMap K ℂ) hK 𝔞
  have hL₂ := lattice_idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞)
  generalize idealPeriodPair (algebraMap K ℂ) hK 𝔞 = L₁ at hL₁
  generalize idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞) = L₂ at hL₂ hV'

  have hfA := hf.vcPoint V₀ hV₀
  rw [← hL₁] at hfA
  obtain ⟨V, hV, hfV⟩ := exists_vcPoint_of_isAnalyticUniformization hfA

  have hφℂ : (homConstSet (A.baseChange ℂ) ((A.map (τ : L →+* L)).baseChange ℂ) : Set ℂ) =
      (invConst (isogBaseChange (F' := ℂ) φ) * ·) ''
        idealLattice (algebraMap K ℂ) ↑((primeIdealUnit 𝔭)⁻¹) := by
    rw [invConst_isogBaseChange, hφ, Units.val_inv_eq_inv_val, coe_primeIdealUnit]
  obtain ⟨u, hu⟩ := exists_unit_pointMap_vcPoint (algebraMap K ℂ) hK 𝔞 (primeIdealUnit 𝔭)⁻¹ L₁ L₂
    hL₁ hL₂ V hV V' hV' (isogBaseChange (F' := ℂ) φ) hφℂ

  have hDℂ := Elliptic.baseChange_smul_eq D ℂ hD
  have hg₁ := (isAnalyticUniformization_toPointHom L₂).vcPoint V' hV'
  have hg₂ := hg₁.vcPoint (D.baseChange ℂ) hDℂ
  obtain ⟨c, hc0, hcl, hcg⟩ := exists_mul_eq_of_isAnalyticUniformization hg₁ hg₂
  rw [hL₂] at hcl
  obtain ⟨ε, hε⟩ := exists_unit_of_forall_mem_iff (algebraMap K ℂ) hK _ hcl

  have hεinv : algebraMap K ℂ (algebraMap (𝓞 K) K ((ε⁻¹ : (𝓞 K)ˣ) : 𝓞 K)) * c = 1 := by
    rw [hε, ← map_mul, ← map_mul, ← Units.val_mul, inv_mul_cancel, Units.val_one, map_one, map_one]
  have hcinv : c⁻¹ * algebraMap K ℂ (algebraMap (𝓞 K) K u) =
      algebraMap K ℂ (algebraMap (𝓞 K) K ((ε⁻¹ * u : (𝓞 K)ˣ) : 𝓞 K)) := by
    rw [Units.val_mul, map_mul, map_mul, inv_eq_of_mul_eq_one_left hεinv]
  obtain ⟨κ, hκ⟩ : ∃ κ : ℂ, κ = c⁻¹ * algebraMap K ℂ (algebraMap (𝓞 K) K u) * algebraMap K ℂ x :=
    ⟨_, rfl⟩
  have hκ0 : κ ≠ 0 := by
    rw [hκ, hcinv]
    refine mul_ne_zero ((map_ne_zero _).2 ((map_ne_zero_iff _ (IsFractionRing.injective (𝓞 K) K)).2
      (Units.ne_zero _))) ((map_ne_zero _).2 x.ne_zero)
  have hΛ : ∀ z, z ∈ idealLattice (algebraMap K ℂ) ↑(s⁻¹ • 𝔞) ↔ κ * z ∈ L₂.lattice := by
    intro z
    rw [hs𝔞, mem_idealLattice_diagonal_smul_iff, hL₂, hκ, hcinv, mul_assoc,
      mem_idealLattice_unit_mul_iff]

  have h₄ : (V₀.map (σ : ℂ →+* ℂ)) • E.map (σ : ℂ →+* ℂ) = (A.baseChange ℂ).map (σ : ℂ →+* ℂ) := by
    rw [map_variableChange, hV₀]
  have h₃ := inv_smul_eq_of_smul_eq _ h₄
  have e₂ : (A.map (τ : L →+* L)).baseChange ℂ = (A.baseChange ℂ).map (σ : ℂ →+* ℂ) :=
    (baseChange_map_eq A (τ : L →+* L) σ hτσ).symm
  have hf' := ((hg₁.comp_mul hκ0 hΛ).pointCongr e₂).vcPoint _ h₃
  refine ⟨_, hf', fun t y hmt hq ↦ ?_⟩

  have hdiff : algebraMap K ℂ y - algebraMap K ℂ ((x⁻¹ : K) * t) ∈
      idealLattice (algebraMap K ℂ) ↑(s⁻¹ • 𝔞) := by
    rw [hsq t hmt] at hq
    have h1 := (Submodule.Quotient.eq _).1 hq
    rw [← map_sub]
    refine map_mem_idealLattice _ ?_
    rw [← neg_sub]
    exact Submodule.neg_mem _ h1
  rw [← sub_add_cancel (algebraMap K ℂ y) (algebraMap K ℂ ((x⁻¹ : K) * t)), map_add (f := _),
    (hf'.map_eq_zero_iff _).2 hdiff, zero_add]

  set z := algebraMap K ℂ t with hz
  have hmz : (m : ℂ) * z ∈ L₁.lattice := by
    rw [hL₁, hz, ← map_natCast (algebraMap K ℂ), ← map_mul]
    exact map_mem_idealLattice _ hmt
  have hPA : vcPoint V₀ hV₀ (f z) = vcPoint V hV (toPoint L₁ z) := hfV z
  have hPAm : m • vcPoint V₀ hV₀ (f z) = 0 := by
    rw [hPA, ← toPointHom_apply', ← vcPointEquiv_apply, ← map_nsmul, ← map_nsmul, nsmul_eq_mul,
      toPointHom_apply', toPoint_of_mem hmz, map_zero]
  obtain ⟨tL, htL⟩ := exists_constMap_eq A (vcPoint V₀ hV₀ (f z)) (fun a b h hP ↦
    htors a b h (by rw [← hP]; exact hPAm))
  have htLm : m • tL = 0 := by
    apply constMap_injective A ℂ
    rw [map_nsmul, htL, hPAm, map_zero]

  have key := congrArg (constMap (A.map (τ : L →+* L)) ℂ) (hDφ tL htLm)
  rw [constMap_pointHomOver, htL, hPA, hu z, constMap_eq_pointMapRing, pointMapRing_vcPoint,
    ← constMap_eq_pointMapRing] at key

  have hw : c * (c⁻¹ * (algebraMap K ℂ (algebraMap (𝓞 K) K u) * z)) =
      algebraMap K ℂ (algebraMap (𝓞 K) K u) * z := by
    rw [← mul_assoc, mul_inv_cancel₀ hc0, one_mul]
  have hcg' := hcg (c⁻¹ * (algebraMap K ℂ (algebraMap (𝓞 K) K u) * z))
  rw [hw] at hcg'
  simp only [AddMonoidHom.comp_apply, AddEquiv.coe_toAddMonoidHom, vcPointEquiv_apply,
    toPointHom_apply'] at hcg'
  have h5 : vcPoint (D.baseChange ℂ) hDℂ
      (constMap (A.map (τ : L →+* L)) ℂ (pointMapRing (τ : L →+* L) A tL)) =
      vcPoint (D.baseChange ℂ) hDℂ
        (vcPoint V' hV' (toPoint L₂ (c⁻¹ * (algebraMap K ℂ (algebraMap (𝓞 K) K u) * z)))) :=
    key.symm.trans hcg'.symm
  have h6 := vcPoint_injective _ _ h5

  have h7 := pointMapRing_constMap A (τ : L →+* L) σ hτσ tL
  rw [htL, pointMapRing_vcPoint] at h7
  change vcPoint _ h₃ (pointCongr e₂ (vcPoint V' hV'
    (toPoint L₂ (κ * algebraMap K ℂ ((x⁻¹ : K) * t))))) = pointMapRing (σ : ℂ →+* ℂ) E (f z)
  have e3 : κ * algebraMap K ℂ ((x⁻¹ : K) * t) =
      c⁻¹ * (algebraMap K ℂ (algebraMap (𝓞 K) K u) * z) := by
    rw [hκ, hz, map_mul, map_inv₀]
    field_simp
  rw [e3, ← h6]
  have h8 : pointCongr e₂ (constMap (A.map (τ : L →+* L)) ℂ (pointMapRing (τ : L →+* L) A tL)) =
      vcPoint (V₀.map (σ : ℂ →+* ℂ)) h₄ (pointMapRing (σ : ℂ →+* ℂ) E (f z)) := h7.symm
  rw [h8]
  exact vcPoint_vcPoint_of_eq_inv _ _ rfl _ _ _

end Level

end

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremAssembly =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFields =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFields", "h": "module\n\npublic import GroundTheory.GlobalFields.SemilocalAlgebras.Galois\npublic import GroundTheory.GlobalFields.TateThesis.DegreeOnePrimes\npublic import Mathlib.AlgebraicGeometry.EllipticCurve.Affine.Point\npublic import Mathlib.RingTheory.Frobenius\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.Supersingular\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AutCFixed\nimport GroundTheory.GlobalFields.ComplexMultiplication.ReductionRespectsAdd\npublic import GroundTheory.GlobalFields.TateThesis.Chebotarev\nimport GroundTheory.GlobalFields.TateThesis.DegreeOneDensity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap\npublic import GroundTheory.GlobalFields.KummerTheory.Splitting\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global
namespace Elliptic

noncomputable section

open NumberField IsDedekindDomain WeierstrassCurve WeierstrassCurve.Affine GroundTheory.Arith.Abelian

section Torsion

variable {F : Type*} [Field F] [Algebra F ℂ] (A : WeierstrassCurve F)

theorem baseChange_map_algEquiv (ρ : ℂ ≃ₐ[F] ℂ) :
    (A.baseChange ℂ).map (ρ : ℂ →+* ℂ) = A.baseChange ℂ := by
  rw [WeierstrassCurve.baseChange, WeierstrassCurve.map_map]
  congr 1
  ext a
  exact ρ.commutes a

theorem nsmul_some_congr {V₁ V₂ : WeierstrassCurve ℂ} (e : V₁ = V₂) {x y : ℂ}
    (h₁ : V₁.toAffine.Nonsingular x y) (h₂ : V₂.toAffine.Nonsingular x y) {m : ℕ}
    (h : m • (Point.some x y h₁ : V₁.toAffine.Point) = 0) :
    m • (Point.some x y h₂ : V₂.toAffine.Point) = 0 := by
  subst e
  exact h

theorem exists_nsmul_some_algEquiv (ρ : ℂ ≃ₐ[F] ℂ) {m : ℕ} {x y : ℂ}
    (h : (A.baseChange ℂ).toAffine.Nonsingular x y)
    (hP : m • (Point.some x y h : (A.baseChange ℂ).toAffine.Point) = 0) :
    ∃ h' : (A.baseChange ℂ).toAffine.Nonsingular (ρ x) (ρ y),
      m • (Point.some (ρ x) (ρ y) h' : (A.baseChange ℂ).toAffine.Point) = 0 := by
  classical
  obtain ⟨h₁, e⟩ := pointMapRing_some (ρ : ℂ →+* ℂ) (A.baseChange ℂ) h
  have hA := baseChange_map_algEquiv A ρ
  have h₂ : (A.baseChange ℂ).toAffine.Nonsingular (ρ x) (ρ y) := by
    rw [← hA]
    exact h₁
  refine ⟨h₂, nsmul_some_congr hA h₁ h₂ ?_⟩
  have := congrArg (pointMapRing (ρ : ℂ →+* ℂ) (A.baseChange ℂ)) hP
  rwa [map_nsmul, e, map_zero] at this

theorem exists_nsmul_some_of_eq {V : WeierstrassCurve ℂ} {x y x' y' : ℂ} (hx : x = x') (hy : y = y')
    (h : V.toAffine.Nonsingular x y) {m : ℕ} (hm : m • (Point.some x y h : V.toAffine.Point) = 0) :
    ∃ h' : V.toAffine.Nonsingular x' y', m • (Point.some x' y' h' : V.toAffine.Point) = 0 := by
  subst hx
  subst hy
  exact ⟨h, hm⟩

omit [Algebra F ℂ] in
theorem isIntegral_of_isIntegral_add_natCast {B : Type*} [CommRing B] [Algebra F B] {x : B} (n : ℕ)
    (hx : IsIntegral F (x + n)) : IsIntegral F x := by
  have h := hx.sub (isIntegral_algebraMap (R := F) (x := (n : F)))
  rwa [map_natCast, add_sub_cancel_right] at h

variable [A.IsElliptic]

theorem isAlgebraic_of_nsmul_eq_zero {m : ℕ} (hm : m ≠ 0) {x y : ℂ}
    (h : (A.baseChange ℂ).toAffine.Nonsingular x y)
    (hP : m • (Point.some x y h : (A.baseChange ℂ).toAffine.Point) = 0) :
    IsAlgebraic F x ∧ IsAlgebraic F y := by
  classical
  have hfin := finite_torsionBy_natCast (A.baseChange ℂ) hm
  have hmem : ∀ {u v : ℂ} (k : (A.baseChange ℂ).toAffine.Nonsingular u v),
      m • (Point.some u v k : (A.baseChange ℂ).toAffine.Point) = 0 →
        (Point.some u v k : (A.baseChange ℂ).toAffine.Point) ∈
          AddSubgroup.torsionBy (A.baseChange ℂ).toAffine.Point (m : ℤ) := fun k hk ↦
    (mem_torsionBy_natCast_iff _ m _).2 hk
  constructor
  · by_contra hx
    have ht : ∀ n : ℕ, Transcendental F (x + n) := fun n hn ↦
      hx (isIntegral_of_isIntegral_add_natCast n hn.isIntegral).isAlgebraic
    have hρ : ∀ n : ℕ, ∃ ρ : ℂ ≃ₐ[F] ℂ, ρ x = x + n := fun n ↦
      exists_algEquiv_apply_eq_of_transcendental (fun h' ↦ hx h') (ht n)
    choose ρ hρ using hρ
    have hpt : ∀ n : ℕ, ∃ k : (A.baseChange ℂ).toAffine.Nonsingular (x + n) (ρ n y),
        m • (Point.some (x + n) (ρ n y) k : (A.baseChange ℂ).toAffine.Point) = 0 := fun n ↦ by
      obtain ⟨k, hk⟩ := exists_nsmul_some_algEquiv A (ρ n) h hP
      exact exists_nsmul_some_of_eq (hρ n) rfl k hk
    choose k hk using hpt
    have hinj : Function.Injective fun n : ℕ ↦
        (⟨Point.some (x + n) (ρ n y) (k n), hmem (k n) (hk n)⟩ :
          AddSubgroup.torsionBy (A.baseChange ℂ).toAffine.Point (m : ℤ)) := by
      intro a b hab
      have := congrArg Subtype.val hab
      simp only [Point.some.injEq, add_right_inj, Nat.cast_inj] at this
      exact this.1
    have := Finite.of_injective _ hinj
    exact not_finite ℕ
  · by_contra hy
    have ht : ∀ n : ℕ, Transcendental F (y + n) := fun n hn ↦
      hy (isIntegral_of_isIntegral_add_natCast n hn.isIntegral).isAlgebraic
    have hρ : ∀ n : ℕ, ∃ ρ : ℂ ≃ₐ[F] ℂ, ρ y = y + n := fun n ↦
      exists_algEquiv_apply_eq_of_transcendental (fun h' ↦ hy h') (ht n)
    choose ρ hρ using hρ
    have hpt : ∀ n : ℕ, ∃ k : (A.baseChange ℂ).toAffine.Nonsingular (ρ n x) (y + n),
        m • (Point.some (ρ n x) (y + n) k : (A.baseChange ℂ).toAffine.Point) = 0 := fun n ↦ by
      obtain ⟨k, hk⟩ := exists_nsmul_some_algEquiv A (ρ n) h hP
      exact exists_nsmul_some_of_eq rfl (hρ n) k hk
    choose k hk using hpt
    have hinj : Function.Injective fun n : ℕ ↦
        (⟨Point.some (ρ n x) (y + n) (k n), hmem (k n) (hk n)⟩ :
          AddSubgroup.torsionBy (A.baseChange ℂ).toAffine.Point (m : ℤ)) := by
      intro a b hab
      have := congrArg Subtype.val hab
      simp only [Point.some.injEq, add_right_inj, Nat.cast_inj] at this
      exact this.2
    have := Finite.of_injective _ hinj
    exact not_finite ℕ

end Torsion

section TorsionField

variable {K : Type*} [Field K] [Algebra K ℂ]

theorem exists_le_forall_torsion_mem (L₀ : IntermediateField K ℂ) [FiniteDimensional K L₀]
    (A : WeierstrassCurve L₀) [A.IsElliptic] {m : ℕ} (hm : m ≠ 0) :
    ∃ M : IntermediateField K ℂ, FiniteDimensional K M ∧ L₀ ≤ M ∧
      ∀ (x y : ℂ) (h : (A.baseChange ℂ).toAffine.Nonsingular x y),
        m • (Point.some x y h : (A.baseChange ℂ).toAffine.Point) = 0 → x ∈ M ∧ y ∈ M := by
  classical
  set T := AddSubgroup.torsionBy (A.baseChange ℂ).toAffine.Point (m : ℤ)
  have : Finite T := finite_torsionBy_natCast (A.baseChange ℂ) hm
  let c : (A.baseChange ℂ).toAffine.Point → Set ℂ := fun P ↦
    match P with
    | .zero => ∅
    | .some x y _ => {x, y}
  have hc : ∀ P, (c P).Finite := fun P ↦ by
    rcases P with _ | ⟨x, y, h⟩
    · exact Set.finite_empty
    · exact (Set.finite_singleton y).insert x
  set S : Set ℂ := ⋃ P : T, c P.1
  have hSfin : S.Finite := Set.finite_iUnion fun P ↦ hc P.1
  have hcoord : ∀ z ∈ S, IsIntegral K z := by
    intro z hz
    obtain ⟨⟨P, hP⟩, hzP⟩ := Set.mem_iUnion.1 hz
    have hP' : m • P = 0 := (mem_torsionBy_natCast_iff _ m P).1 hP
    rcases P with _ | ⟨x, y, h⟩
    · exact absurd hzP (Set.notMem_empty z)
    · obtain ⟨hx, hy⟩ := isAlgebraic_of_nsmul_eq_zero A hm h hP'
      have hz' : z = x ∨ z = y := hzP
      rcases hz' with rfl | rfl
      · exact isIntegral_trans (R := K) (A := L₀) _ hx.isIntegral
      · exact isIntegral_trans (R := K) (A := L₀) _ hy.isIntegral
  have : Finite S := hSfin.to_subtype
  have : FiniteDimensional K (IntermediateField.adjoin K S) :=
    IntermediateField.finiteDimensional_adjoin hcoord
  refine ⟨L₀ ⊔ IntermediateField.adjoin K S, inferInstance, le_sup_left, fun x y h hP ↦ ?_⟩
  have hPT : (Point.some x y h : (A.baseChange ℂ).toAffine.Point) ∈ T :=
    (mem_torsionBy_natCast_iff _ m _).2 hP
  have hx : x ∈ S := Set.mem_iUnion.2 ⟨⟨_, hPT⟩, Set.mem_insert x _⟩
  have hy : y ∈ S := Set.mem_iUnion.2 ⟨⟨_, hPT⟩, Set.mem_insert_of_mem x rfl⟩
  exact ⟨le_sup_right (a := L₀) (IntermediateField.subset_adjoin K S hx),
    le_sup_right (a := L₀) (IntermediateField.subset_adjoin K S hy)⟩

end TorsionField

section Frobenius

open scoped Pointwise

variable {K : Type} [Field K] [NumberField K] [Algebra K ℂ]

theorem exists_isArithFrobAt (L : IntermediateField K ℂ) [FiniteDimensional K L] [IsGalois K L]
    (τ : L ≃ₐ[K] L) {S : Set (HeightOneSpectrum (𝓞 K))} (hS : S.Finite) :
    ∃ v : HeightOneSpectrum (𝓞 K), v ∉ S ∧ v ∈ degreeOnePrimes ℚ K ∧
      ∃ w : HeightOneSpectrum (𝓞 L), w.asIdeal.LiesOver v.asIdeal ∧
        w.asIdeal.ramificationIdx (𝓞 K) = 1 ∧ IsArithFrobAt (𝓞 K) τ w.asIdeal := by
  classical
  have : NumberField L := NumberField.of_module_finite K L
  set C : Set (L ≃ₐ[K] L) := {ρ | IsConj τ ρ}
  have hC : ∀ σ ∈ C, ∀ ρ : L ≃ₐ[K] L, ρ * σ * ρ⁻¹ ∈ C := fun σ hσ ρ ↦
    IsConj.trans hσ (isConj_iff.2 ⟨ρ, rfl⟩)
  have hdens := hasDirichletDensity_setOf_arithFrobAt_mem C hC
  rw [← hasDirichletDensity_inter_degreeOnePrimes_iff (K := ℚ) _ _] at hdens
  have : Nonempty C := ⟨⟨τ, IsConj.refl τ⟩⟩
  have hpos : (0 : ℝ) < Nat.card C / Nat.card (L ≃ₐ[K] L) :=
    div_pos (Nat.cast_pos.2 Nat.card_pos) (Nat.cast_pos.2 Nat.card_pos)
  obtain ⟨v, ⟨hvA, hv1⟩, hvS⟩ :
      (({v : HeightOneSpectrum (𝓞 K) | ∀ w : HeightOneSpectrum (𝓞 L),
        w.asIdeal.LiesOver v.asIdeal → w.asIdeal.ramificationIdx (𝓞 K) = 1 ∧
          arithFrobAt (𝓞 K) (L ≃ₐ[K] L) w.asIdeal ∈ C} ∩ degreeOnePrimes ℚ K) \ S).Nonempty := by
    by_contra hne
    rw [Set.not_nonempty_iff_eq_empty, Set.sdiff_eq_empty] at hne
    have h0 := hasDirichletDensity_zero_of_finite (hS.subset hne)
    have := hdens.dirichletDensity_eq.symm.trans h0.dirichletDensity_eq
    linarith
  obtain ⟨⟨w, hw⟩⟩ := nonempty_placesOver L v
  obtain ⟨c, hc⟩ := isConj_iff.1 (hvA w hw).2
  have hfrob : IsArithFrobAt (𝓞 K) (c * τ * c⁻¹) w.asIdeal := by
    rw [hc]
    exact IsArithFrobAt.arithFrobAt (𝓞 K) (L ≃ₐ[K] L) w.asIdeal
  set w' : HeightOneSpectrum (𝓞 L) := ⟨c⁻¹ • w.asIdeal, Ideal.IsPrime.smul c⁻¹, fun h ↦ w.ne_bot (by
    rw [← smul_inv_smul c w.asIdeal, h, Ideal.smul_bot])⟩
  have hw' : w'.asIdeal.LiesOver v.asIdeal :=
    ⟨(hw.over).trans (Ideal.under_smul (𝓞 K) w.asIdeal c⁻¹).symm⟩
  refine ⟨v, hvS, hv1, w', hw', (hvA w' hw').1, ?_⟩
  have := hfrob.conj c⁻¹
  have e : c⁻¹ * (c * τ * c⁻¹) * c⁻¹⁻¹ = τ := by group
  rw [e] at this
  exact this

end Frobenius

end

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFields =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremReduction =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremReduction", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.KodairaNeron\npublic import GroundTheory.GlobalFields.ComplexMultiplication.PrimeLocalization\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap\npublic import GroundTheory.GlobalFields.SemilocalAlgebras.Galois\npublic import Mathlib.RingTheory.Frobenius\npublic import GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimes\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global

noncomputable section

open IsLocalRing WeierstrassCurve GroundTheory.Arith.Abelian

section VariableChange

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]
  (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)
  (C : VariableChange 𝒪) [W.IsElliptic] [DecidableEq K]


omit [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪] [IsFractionRing 𝒪 K] [W.IsElliptic] [DecidableEq K] in
theorem vcX_notMem_range {X : K} (hX : X ∉ Set.range (algebraMap 𝒪 K)) :
    vcX (C.map (algebraMap 𝒪 K)) X ∉ Set.range (algebraMap 𝒪 K) := by
  rintro ⟨a, ha⟩
  apply hX
  refine ⟨vcX' C a, ?_⟩
  rw [map_vcX', ha]
  exact vcX'_vcX _ X

theorem reducePoint_vcEquivK (P : (curveK K W).Point) :
    reducePoint K (C • W) (vcEquivK K W C P) =
      vcPoint (C.map (residue 𝒪)) (map_vc_eq_residue W C) (reducePoint K W P) := by
  rcases point_cases K W P with rfl | ⟨X, Y, h, rfl, hX⟩ | ⟨x, y, h, rfl⟩
  · rw [vcEquivK_zero, reducePoint_zero, reducePoint_zero]
    rfl
  · rw [vcEquivK_some K W C h (nonsingular_K_vc K W C h),
      reducePoint_some_notMem K (C • W) _ (vcX_notMem_range K C hX), reducePoint_some_notMem K W h hX]
    rfl
  · have n₁ := nonsingular_residue_of_isElliptic K W h.1
    have hx : vcX (C.map (algebraMap 𝒪 K)) (algebraMap 𝒪 K x) = algebraMap 𝒪 K (vcX C x) :=
      (map_vcX C (algebraMap 𝒪 K) x).symm
    have hy : vcY (C.map (algebraMap 𝒪 K)) (algebraMap 𝒪 K x) (algebraMap 𝒪 K y) =
        algebraMap 𝒪 K (vcY C x y) :=
      (map_vcY C (algebraMap 𝒪 K) x y).symm
    have h₂ : (curveK K (C • W)).Nonsingular (algebraMap 𝒪 K (vcX C x))
        (algebraMap 𝒪 K (vcY C x y)) := by
      have := nonsingular_K_vc K W C h
      rwa [hx, hy] at this
    have n₂ := nonsingular_residue_of_isElliptic K (C • W) h₂.1
    have e : vcEquivK K W C (.some _ _ h) = .some _ _ h₂ := by
      rw [vcEquivK_some K W C h (nonsingular_K_vc K W C h), Affine.Point.some.injEq]
      exact ⟨hx, hy⟩
    rw [e, reducePoint_some_integral K (C • W) h₂ n₂, reducePoint_some_integral K W h n₁, vcPoint_some,
      Affine.Point.some.injEq]
    exact ⟨map_vcX C (residue 𝒪) x, map_vcY C (residue 𝒪) x y⟩

theorem reducePoint_vcPoint {W' : WeierstrassCurve 𝒪} (hC : C • W = W') (P : (curveK K W).Point) :
    reducePoint K W' (vcPoint (C.map (algebraMap 𝒪 K)) (by rw [map_vc_eq, hC]) P) =
      vcPoint (C.map (residue 𝒪)) (by rw [map_vc_eq_residue, hC]) (reducePoint K W P) := by
  subst hC
  exact reducePoint_vcEquivK K W C P

end VariableChange

section Frobenius

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]
  (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)
  (p : ℕ) [Fact p.Prime] [CharP (ResidueField 𝒪) p] {g : 𝒪 →+* 𝒪}

variable [IsLocalHom g]

theorem residueField_map_eq_frobenius (hg : ∀ x, residue 𝒪 (g x) = residue 𝒪 x ^ p) :
    ResidueField.map g = frobenius (ResidueField 𝒪) p := by
  ext y
  obtain ⟨x, rfl⟩ := residue_surjective y
  rw [ResidueField.map_residue, hg, frobenius_def]

theorem map_residue_eq_frobeniusTwist (hg : ∀ x, residue 𝒪 (g x) = residue 𝒪 x ^ p) :
    (W.map (residue 𝒪)).map (frobenius (ResidueField 𝒪) p) = (W.map g).map (residue 𝒪) := by
  rw [← residueField_map_eq_frobenius p hg]
  exact map_curveRed_eq W

variable [W.IsElliptic] [DecidableEq K] [DecidableEq (ResidueField 𝒪)] {G : K →+* K}
  (hG : G.comp (algebraMap 𝒪 K) = (algebraMap 𝒪 K).comp g)


include hG in
theorem reducePoint_pointMapRing_frobenius (hg : ∀ x, residue 𝒪 (g x) = residue 𝒪 x ^ p)
    (P : (curveK K W).Point) :
    reducePoint K (W.map g) (pointCongr (map_curveK_eq K K hG W)
        (pointMapRing G (W.map (algebraMap 𝒪 K)) P)) =
      pointCongr (map_residue_eq_frobeniusTwist W p hg)
        (pointMapRing (frobenius (ResidueField 𝒪) p) (W.map (residue 𝒪)) (reducePoint K W P)) := by
  rw [reducePoint_pointMapRing K K hG W P,
    pointMapRing_congr (residueField_map_eq_frobenius p hg), pointCongr_pointCongr]

end Frobenius

section NumberField

open NumberField IsDedekindDomain

variable {K : Type*} [Field K] {L : Type*} [Field L] [NumberField L] [Algebra K L]
  (𝔓 : HeightOneSpectrum (𝓞 L)) {τ : L ≃ₐ[K] L} (hτ : IsArithFrobAt (𝓞 K) τ 𝔓.asIdeal)

include hτ in
theorem mem_localizationAt_of_isArithFrobAt {x : L} (hx : x ∈ localizationAt L 𝔓) :
    τ x ∈ localizationAt L 𝔓 :=
  (Elliptic.residue_apply_of_isArithFrobAt 𝔓 hτ hx).1

def localizationAtRingHom : localizationAt L 𝔓 →+* localizationAt L 𝔓 :=
  ((τ : L →+* L).comp (localizationAt L 𝔓).val.toRingHom).codRestrict (localizationAt L 𝔓).toSubsemiring
    fun x ↦ mem_localizationAt_of_isArithFrobAt 𝔓 hτ x.2

theorem comp_algebraMap_localizationAtRingHom :
    (τ : L →+* L).comp (algebraMap (localizationAt L 𝔓) L) =
      (algebraMap (localizationAt L 𝔓) L).comp (localizationAtRingHom 𝔓 hτ) :=
  rfl

theorem residue_localizationAtRingHom (x : localizationAt L 𝔓) :
    residue (localizationAt L 𝔓) (localizationAtRingHom 𝔓 hτ x) =
      residue (localizationAt L 𝔓) x ^ Nat.card (𝓞 K ⧸ 𝔓.asIdeal.under (𝓞 K)) := by
  obtain ⟨h, e⟩ := Elliptic.residue_apply_of_isArithFrobAt 𝔓 hτ x.2
  exact e

theorem residue_localizationAtRingHom_of_absNorm [NumberField K] (𝔭 : HeightOneSpectrum (𝓞 K))
    [𝔓.asIdeal.LiesOver 𝔭.asIdeal] (x : localizationAt L 𝔓) :
    residue (localizationAt L 𝔓) (localizationAtRingHom 𝔓 hτ x) =
      residue (localizationAt L 𝔓) x ^ Ideal.absNorm 𝔭.asIdeal := by
  rw [residue_localizationAtRingHom]
  congr 1
  rw [← Ideal.LiesOver.over (P := 𝔓.asIdeal) (p := 𝔭.asIdeal), Ideal.absNorm_apply,
    Submodule.cardQuot_apply]

instance : IsLocalHom (localizationAtRingHom 𝔓 hτ) := by
  refine ⟨fun x hx ↦ ?_⟩
  rw [← residue_ne_zero_iff_isUnit] at hx ⊢
  rw [residue_localizationAtRingHom] at hx
  exact fun h ↦ hx (by rw [h, zero_pow hτ.card_pos.ne'])

theorem reducePoint_pointMapRing_localizationAtRingHom [NumberField K] (𝔭 : HeightOneSpectrum (𝓞 K))
    [𝔓.asIdeal.LiesOver 𝔭.asIdeal] (p : ℕ) [Fact p.Prime] (hp : Ideal.absNorm 𝔭.asIdeal = p)
    [CharP (ResidueField (localizationAt L 𝔓)) p] (W : WeierstrassCurve (localizationAt L 𝔓))
    [W.IsElliptic] [DecidableEq L] [DecidableEq (ResidueField (localizationAt L 𝔓))]
    (P : (curveK L W).Point) :
    reducePoint L (W.map (localizationAtRingHom 𝔓 hτ))
        (pointCongr (map_curveK_eq L L (comp_algebraMap_localizationAtRingHom 𝔓 hτ) W)
          (pointMapRing (τ : L →+* L) (W.map (algebraMap (localizationAt L 𝔓) L)) P)) =
      pointCongr (map_residue_eq_frobeniusTwist W p
          (fun x ↦ by rw [residue_localizationAtRingHom_of_absNorm 𝔓 hτ 𝔭 x, hp]))
        (pointMapRing (frobenius (ResidueField (localizationAt L 𝔓)) p)
          (W.map (residue (localizationAt L 𝔓))) (reducePoint L W P)) :=
  reducePoint_pointMapRing_frobenius L W p (comp_algebraMap_localizationAtRingHom 𝔓 hτ)
    (fun x ↦ by rw [residue_localizationAtRingHom_of_absNorm 𝔓 hτ 𝔭 x, hp]) P

end NumberField

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremReduction =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismLift =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismLift", "h": "module\n\npublic import Mathlib.RingTheory.RootsOfUnity.PrimitiveRoots\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.Ideal.Lemmas\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Basic\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global

open Polynomial NumberField IsDedekindDomain IsLocalRing

section Generic

variable {R S : Type*} [CommRing R] [IsDomain R] [CommRing S] [IsDomain S] (f : R →+* S)

theorem isPrimitiveRoot_map_of_natCast_ne_zero {ζ : R} {n : ℕ} (hζ : IsPrimitiveRoot ζ n)
    (hn : (n : S) ≠ 0) : IsPrimitiveRoot (f ζ) n := by
  have : NeZero (n : S) := ⟨hn⟩
  have : NeZero (n : R) := ⟨fun h => hn (by rw [← map_natCast f n, h, map_zero])⟩
  have hr : eval ζ (cyclotomic n R) = 0 := isRoot_cyclotomic_iff.mpr hζ
  apply isRoot_cyclotomic_iff.mp
  show eval (f ζ) (cyclotomic n S) = 0
  rw [← map_cyclotomic n f, eval_map, eval₂_hom, hr, map_zero]

theorem eq_of_map_eq_of_pow_eq_one {ζ : R} {n : ℕ} [NeZero n] (hζ : IsPrimitiveRoot ζ n)
    (hn : (n : S) ≠ 0) {η η' : R} (hη : η ^ n = 1) (hη' : η' ^ n = 1) (h : f η = f η') :
    η = η' := by
  have hf := isPrimitiveRoot_map_of_natCast_ne_zero f hζ hn
  obtain ⟨j, hj, rfl⟩ := hζ.eq_pow_of_pow_eq_one hη
  obtain ⟨k, hk, rfl⟩ := hζ.eq_pow_of_pow_eq_one hη'
  rw [map_pow, map_pow] at h
  rw [hf.pow_inj hj hk h]

theorem existsUnique_pow_eq_one_of_isPrimitiveRoot {ζ : R} {n : ℕ} [NeZero n]
    (hζ : IsPrimitiveRoot ζ n) (hn : (n : S) ≠ 0) {w : S} (hw : w ^ n = 1) :
    ∃! η : R, η ^ n = 1 ∧ f η = w := by
  have hf := isPrimitiveRoot_map_of_natCast_ne_zero f hζ hn
  obtain ⟨i, -, e⟩ := hf.eq_pow_of_pow_eq_one hw
  have hi : (ζ ^ i) ^ n = 1 := by rw [← pow_mul, mul_comm, pow_mul, hζ.pow_eq_one, one_pow]
  refine ⟨ζ ^ i, ⟨hi, by rw [map_pow, e]⟩, ?_⟩
  rintro η ⟨hη, hfη⟩
  exact eq_of_map_eq_of_pow_eq_one f hζ hn hη hi (by rw [hfη, map_pow, e])

end Generic

theorem two_ne_zero_and_three_ne_zero_of_five_le_ringChar {k : Type*} [Field k]
    (h : 5 ≤ ringChar k) : (2 : k) ≠ 0 ∧ (3 : k) ≠ 0 := by
  refine ⟨fun h2 => ?_, fun h3 => ?_⟩
  · have := Nat.le_of_dvd (by norm_num) ((ringChar.spec k 2).mp (by exact_mod_cast h2))
    omega
  · have := Nat.le_of_dvd (by norm_num) ((ringChar.spec k 3).mp (by exact_mod_cast h3))
    omega

section NumberField

variable {L : Type*} [Field L] [NumberField L] (v : HeightOneSpectrum (𝓞 L))

end NumberField

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismLift =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremPointHom =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremPointHom", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.InseparableFrobenius\npublic import GroundTheory.GlobalFields.ComplexMultiplication.BaseChangeField\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionMap\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionAtPoint\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global

noncomputable section

open WeierstrassCurve.Affine GroundTheory.Arith.Abelian

universe u

section OverF

variable {F : Type u} [Field F] [DecidableEq F] (Ω : Type u) [Field Ω] [Algebra F Ω]
  [DecidableEq Ω] [PerfectField F] [IsAlgClosed Ω]

omit [DecidableEq F] [PerfectField F] in
theorem app_eq_of_eq {E E' : WeierstrassCurve F} [E.IsElliptic] [E'.IsElliptic] (φ : Isogeny E E')
    {L : Type*} [Field L] [Algebra F L] [DecidableEq L] {P P' : (E.baseChange L).toAffine.Point}
    (h : P = P') (hP : IsGenPt E P) (hP' : IsGenPt E P') : φ.app P hP = φ.app P' hP' := by
  subst h
  rfl

theorem pointHomOver_comp {E E' E'' : WeierstrassCurve F} [E.IsElliptic] [E'.IsElliptic]
    [E''.IsElliptic] (ψ : Isogeny E' E'') (φ : Isogeny E E') (R : E.toAffine.Point) :
    pointHomOver Ω (ψ.comp φ) R = pointHomOver Ω ψ (pointHomOver Ω φ R) := by
  apply constMap_injective E'' E.toAffine.FunctionField
  set R' := pointHomOver Ω φ R
  have hX' := isGenPt_genericPoint_add_constMap E' R'
  have e0 := app_genericPoint_add_constMap Ω φ R
  have h1 := app_genericPoint_add_constMap Ω (ψ.comp φ) R

  have e : φ.1 + constMap E' E.toAffine.FunctionField R' =
      Point.map φ.comap (genericPoint E' + constMap E' E'.toAffine.FunctionField R') := by
    rw [map_add (f := _), Isogeny.map_comap_genericPoint, map_constMap]
  have hY : IsGenPt E' (φ.1 + constMap E' E.toAffine.FunctionField R') := by
    rw [e]
    exact isGenPt_map E' φ.comap hX'
  have h2 : ψ.app (φ.1 + constMap E' E.toAffine.FunctionField R') hY =
      Point.map φ.comap (ψ.1 + constMap E'' E'.toAffine.FunctionField (pointHomOver Ω ψ R')) := by
    rw [← app_genericPoint_add_constMap Ω ψ R', Isogeny.map_app]
    exact app_eq_of_eq ψ e _ _
  rw [Isogeny.app_comp, app_eq_of_eq ψ e0 _ hY, h2, map_add (f := _), map_constMap, ← Isogeny.comp_val,
    add_right_inj] at h1
  exact h1.symm

theorem pointHomOver_congr {E E' E₁ E₁' : WeierstrassCurve F} [E.IsElliptic] [E'.IsElliptic]
    [E₁.IsElliptic] [E₁'.IsElliptic] (φ : Isogeny E E') (hE : E = E₁) (hE' : E' = E₁')
    (R : E.toAffine.Point) :
    pointHomOver Ω (φ.congr hE hE') (pointCongr hE R) = pointCongr hE' (pointHomOver Ω φ R) := by
  subst hE hE'
  rw [Isogeny.congr_rfl]
  rfl

end OverF

section Frobenius

variable {F : Type u} [Field F] [DecidableEq F] (Ω : Type u) [Field Ω] [Algebra F Ω]
  [DecidableEq Ω] [PerfectField F] [IsAlgClosed Ω] (E : WeierstrassCurve F) [E.IsElliptic]
  (p : ℕ) [Fact p.Prime] [CharP F p]

omit [PerfectField F] [E.IsElliptic] in
theorem frobeniusPoint_constMap {L : Type*} [Field L] [Algebra F L] [CharP L p] [DecidableEq L]
    (R : E.toAffine.Point) :
    frobeniusPoint E p L (constMap E L R) =
      constMap (frobeniusTwist E p) L (pointMapRing (frobenius F p) E R) := by
  rcases R with _ | ⟨x, y, h⟩
  · rfl
  · obtain ⟨h', e⟩ := pointMapRing_some (frobenius F p) E h
    rw [e]
    show Point.some _ _ _ = Point.some _ _ _
    simp only [Algebra.ofId_apply, frobenius_def, map_pow]

theorem pointHomOver_frobeniusIsogeny (R : E.toAffine.Point) :
    pointHomOver Ω (frobeniusIsogeny E p) R = pointMapRing (frobenius F p) E R := by
  have : CharP E.toAffine.FunctionField p :=
    charP_of_injective_algebraMap (algebraMap F E.toAffine.FunctionField).injective p
  apply constMap_injective (frobeniusTwist E p) E.toAffine.FunctionField
  have hX := isGenPt_genericPoint_add_constMap E R
  have h1 := app_genericPoint_add_constMap Ω (frobeniusIsogeny E p) R
  rw [frobeniusIsogeny_app, frobeniusPoint_add, frobeniusPoint_constMap] at h1
  have h2 : frobeniusPoint E p E.toAffine.FunctionField (genericPoint E) = (frobeniusIsogeny E p).1 :=
    rfl
  rw [h2, add_right_inj] at h1
  exact h1.symm

end Frobenius

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremPointHom =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.ReductionNonsingularPoints =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.ReductionNonsingularPoints", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.FormalGroupReduction\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionPoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global

noncomputable section

open IsLocalRing GroundTheory.Arith.Abelian

section E0

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]
  (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)
  [(W.map (algebraMap 𝒪 K)).IsElliptic] [DecidableEq K] [DecidableEq (ResidueField 𝒪)]

local notation "ι" => algebraMap 𝒪 K
local notation "ρ" => residue 𝒪

omit [DecidableEq (ResidueField 𝒪)] in
theorem add_notMem_of_notMem_range {X₁ Y₁ X₂ Y₂ : K} (h₁ : (curveK K W).Nonsingular X₁ Y₁)
    (hX₁ : X₁ ∉ Set.range ι) (h₂ : (curveK K W).Nonsingular X₂ Y₂) (hX₂ : X₂ ∉ Set.range ι)
    {x y : 𝒪} (h : (curveK K W).Nonsingular (ι x) (ι y)) :
    WeierstrassCurve.Affine.Point.some _ _ h₁ + WeierstrassCurve.Affine.Point.some _ _ h₂ ≠
      WeierstrassCurve.Affine.Point.some _ _ h := by
  intro hS
  have hn : (curveK K W).Nonsingular X₂ ((curveK K W).negY X₂ Y₂) :=
    (WeierstrassCurve.Affine.nonsingular_neg _ _).2 h₂
  obtain ⟨x₃, y₃, h₃, e, -, -⟩ := add_of_notMem_range' K W hn hX₂ h
  have hneg : -(WeierstrassCurve.Affine.Point.some _ _ h₂) =
      WeierstrassCurve.Affine.Point.some _ _ hn := WeierstrassCurve.Affine.Point.neg_some h₂
  have e' : WeierstrassCurve.Affine.Point.some _ _ h₁ =
      WeierstrassCurve.Affine.Point.some _ _ h₃ := by
    rw [← e, ← hS, ← hneg]; abel
  rw [WeierstrassCurve.Affine.Point.some.injEq] at e'
  exact hX₁ ⟨x₃, e'.1.symm⟩

theorem add_mem_E0Set_and_reducePoint_add {P Q : (curveK K W).Point} (hP : P ∈ E0Set K W)
    (hQ : Q ∈ E0Set K W) :
    P + Q ∈ E0Set K W ∧ reducePoint K W (P + Q) = reducePoint K W P + reducePoint K W Q := by
  rcases point_cases K W P with rfl | ⟨X₁, Y₁, h₁, rfl, hX₁⟩ | ⟨x₁, y₁, h₁, rfl⟩
  · rw [zero_add, reducePoint_zero, zero_add]; exact ⟨hQ, rfl⟩
  · rcases point_cases K W Q with rfl | ⟨X₂, Y₂, h₂, rfl, hX₂⟩ | ⟨x₂, y₂, h₂, rfl⟩
    · rw [add_zero, reducePoint_zero, add_zero]; exact ⟨hP, rfl⟩
    · rw [reducePoint_some_notMem K W h₁ hX₁, reducePoint_some_notMem K W h₂ hX₂, add_zero]
      rcases point_cases K W (WeierstrassCurve.Affine.Point.some _ _ h₁ +
          WeierstrassCurve.Affine.Point.some _ _ h₂) with h0 | ⟨X, Y, h, hS, hX⟩ | ⟨x, y, h, hS⟩
      · rw [h0]; exact ⟨zero_mem_E0Set K W, rfl⟩
      · rw [hS]; exact ⟨mem_E0Set_some_notMem K W h hX, reducePoint_some_notMem K W h hX⟩
      · exact absurd hS (add_notMem_of_notMem_range K W h₁ hX₁ h₂ hX₂ h)
    · have n₂ := hQ x₂ y₂ h₂ rfl
      obtain ⟨x₃, y₃, h₃, e, hx, hy⟩ := add_of_notMem_range' K W h₁ hX₁ h₂
      refine add_mem_and_reduce_of_exists K W ⟨x₃, y₃, h₃, hx ▸ hy ▸ n₂, e, ?_⟩
      rw [reducePoint_some_notMem K W h₁ hX₁, zero_add, reducePoint_some_integral K W h₂ n₂,
        WeierstrassCurve.Affine.Point.some.injEq]
      exact ⟨hx.symm, hy.symm⟩
  · have n₁ := hP x₁ y₁ h₁ rfl
    rcases point_cases K W Q with rfl | ⟨X₂, Y₂, h₂, rfl, hX₂⟩ | ⟨x₂, y₂, h₂, rfl⟩
    · rw [add_zero, reducePoint_zero, add_zero]; exact ⟨hP, rfl⟩
    · obtain ⟨x₃, y₃, h₃, e, hx, hy⟩ := add_of_notMem_range' K W h₂ hX₂ h₁
      rw [add_comm] at e
      refine add_mem_and_reduce_of_exists K W ⟨x₃, y₃, h₃, hx ▸ hy ▸ n₁, e, ?_⟩
      rw [reducePoint_some_notMem K W h₂ hX₂, add_zero, reducePoint_some_integral K W h₁ n₁,
        WeierstrassCurve.Affine.Point.some.injEq]
      exact ⟨hx.symm, hy.symm⟩
    · have n₂ := hQ x₂ y₂ h₂ rfl
      rw [reducePoint_some_integral K W h₁ n₁, reducePoint_some_integral K W h₂ n₂]
      by_cases hx : ρ x₁ = ρ x₂
      · by_cases hy : ρ y₁ = (curveRed W).negY (ρ x₂) (ρ y₂)
        · rw [WeierstrassCurve.Affine.Point.add_of_Y_eq hx hy]
          rcases add_of_residue_neg K W h₁ h₂ n₁ n₂ hx hy with h0 | ⟨X, Y, h, hS, hX⟩
          · rw [h0]; exact ⟨zero_mem_E0Set K W, rfl⟩
          · rw [hS]; exact ⟨mem_E0Set_some_notMem K W h hX, reducePoint_some_notMem K W h hX⟩
        · have hy' : ρ y₁ = ρ y₂ := by
            rcases WeierstrassCurve.Affine.Y_eq_of_X_eq n₁.1 n₂.1 hx with h | h
            · exact h
            · exact absurd h hy
          have hD : ρ (y₁ + y₂ + W.a₁ * x₁ + W.a₃) ≠ 0 := by
            intro h0; apply hy
            rw [map_add (f := _), map_add (f := _), map_add (f := _), map_mul] at h0
            simp only [WeierstrassCurve.Affine.negY, WeierstrassCurve.map_a₁,
              WeierstrassCurve.map_a₃, ← hx]
            linear_combination h0
          obtain ⟨x₃, y₃, h₃, n₃, e, e'⟩ := add_of_residue_eq K W h₁ h₂ n₁ n₂ hx hy' hD
          rw [e, e', reducePoint_some_integral K W h₃ n₃]
          exact ⟨mem_E0Set_some_integral K W h₃ n₃, rfl⟩
      · obtain ⟨x₃, y₃, h₃, n₃, e, e'⟩ := add_of_residue_X_ne K W h₁ h₂ n₁ n₂ hx
        rw [e, e', reducePoint_some_integral K W h₃ n₃]
        exact ⟨mem_E0Set_some_integral K W h₃ n₃, rfl⟩

def E0Subgroup : AddSubgroup (curveK K W).Point where
  carrier := E0Set K W
  zero_mem' := zero_mem_E0Set K W
  add_mem' hP hQ := (add_mem_E0Set_and_reducePoint_add K W hP hQ).1
  neg_mem' hP := (neg_mem_and_reduce K W hP).1

def reduceE0Hom : E0Subgroup K W →+ (curveRed W).Point where
  toFun P := reducePoint K W P
  map_zero' := reducePoint_zero K W
  map_add' P Q := (add_mem_E0Set_and_reducePoint_add K W P.2 Q.2).2

theorem reduceE0Hom_apply (P : E0Subgroup K W) : reduceE0Hom K W P = reducePoint K W P := rfl

end E0

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.ReductionNonsingularPoints =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.TorsionReduction =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.TorsionReduction", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionPoints\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.KodairaNeron\npublic import GroundTheory.ArithmeticGeometry.AbelianVarieties.SingularCubic\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionNonsingularPoints\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.NumberTheory.NumberField.Basic\npublic import Mathlib.RingTheory.DedekindDomain.AdicValuation.Valuation\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global

noncomputable section

open IsLocalRing GroundTheory.Arith.Abelian

section Scale

variable {R : Type*} [CommRing R]

def scaleCoeffs (W : WeierstrassCurve R) (a : R) : WeierstrassCurve R :=
  ⟨a * W.a₁, a ^ 2 * W.a₂, a ^ 3 * W.a₃, a ^ 4 * W.a₄, a ^ 6 * W.a₆⟩

theorem map_scaleCoeffs {S : Type*} [CommRing S] (f : R →+* S) (W : WeierstrassCurve R) (a : R) :
    (scaleCoeffs W a).map f = scaleCoeffs (W.map f) (f a) := by
  ext <;> simp [scaleCoeffs]

def scaleVariableChange {F : Type*} [Field F] {c : F} (hc : c ≠ 0) :
    WeierstrassCurve.VariableChange F :=
  ⟨(Units.mk0 c hc)⁻¹, 0, 0, 0⟩

theorem scaleVariableChange_smul {F : Type*} [Field F] (W : WeierstrassCurve F) {c : F}
    (hc : c ≠ 0) : scaleVariableChange hc • W = scaleCoeffs W c := by
  ext <;> simp [scaleVariableChange, scaleCoeffs, WeierstrassCurve.variableChange_a₁,
    WeierstrassCurve.variableChange_a₂, WeierstrassCurve.variableChange_a₃,
    WeierstrassCurve.variableChange_a₄, WeierstrassCurve.variableChange_a₆]

end Scale

section Torsion

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]
  (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)
  [(W.map (algebraMap 𝒪 K)).IsElliptic] [DecidableEq K] [DecidableEq (ResidueField 𝒪)]

local notation "ι" => algebraMap 𝒪 K
local notation "ρ" => residue 𝒪

theorem nsmul_ne_zero_of_notMem_range {n : ℕ} (hn : (n : ResidueField 𝒪) ≠ 0) {X Y : K}
    (h : (curveK K W).Nonsingular X Y) (hX : X ∉ Set.range ι) :
    n • WeierstrassCurve.Affine.Point.some _ _ h ≠ 0 := by
  intro hnP
  have hι := IsFractionRing.injective 𝒪 K
  obtain ⟨z, w, v, hzm, hz0, -, -, hwv, hvu, hρv, hXz, hYw⟩ :=
    exists_zw_of_notMem_range K W h.1 hX
  have hzK : ι z ≠ 0 := (map_ne_zero_iff _ hι).2 hz0
  set W' := scaleCoeffs W z with hW'
  have hC : scaleVariableChange hzK • W.map ι = W'.map ι := by
    rw [scaleVariableChange_smul, hW', map_scaleCoeffs]
  have : (W'.map ι).IsElliptic := hC ▸ inferInstance
  set v' : 𝒪 := ↑hvu.unit⁻¹ with hv'
  have hvv : v * v' = 1 := hvu.mul_val_inv
  have hvK : ι v * ι v' = 1 := by rw [← map_mul, hvv, map_one]
  have hwK : ι w = ι z ^ 3 * ι v := by rw [hwv, map_mul, map_pow]
  have hvK0 : ι v ≠ 0 := left_ne_zero_of_mul_eq_one hvK
  have hv'K : ι v' = (ι v)⁻¹ := eq_inv_of_mul_eq_one_right hvK
  have hx' : vcX (scaleVariableChange hzK) X = ι v' := by
    simp only [vcX, scaleVariableChange, inv_inv, Units.val_mk0, sub_zero]
    rw [← hXz, hwK, hv'K]
    field_simp
  have hy' : vcY (scaleVariableChange hzK) X Y = ι (-v') := by
    simp only [vcY, scaleVariableChange, inv_inv, Units.val_mk0, sub_zero, zero_mul]
    rw [← hYw, hwK, map_neg, hv'K]
    field_simp
  have h' : (curveK K W').Nonsingular (ι v') (ι (-v')) := by
    have := (nonsingular_vc (scaleVariableChange hzK) (W.map ι) X Y).2 h
    rw [hC, hx', hy'] at this
    exact this
  set φ := vcPointEquiv (scaleVariableChange hzK) hC
  have hφ : φ (.some _ _ h) = .some _ _ h' := by
    rw [vcPointEquiv_apply, vcPoint_some, WeierstrassCurve.Affine.Point.some.injEq]
    exact ⟨hx', hy'⟩

  have hρz : ρ z = 0 := residue_eq_zero_of_mem hzm
  have h1 : (W'.map ρ).a₁ = -2 * 0 := by simp [hW', scaleCoeffs, hρz]
  have h2 : (W'.map ρ).a₂ = -0 ^ 2 := by simp [hW', scaleCoeffs, hρz]
  have h3 : (W'.map ρ).a₃ = 0 := by simp [hW', scaleCoeffs, hρz]
  have h4 : (W'.map ρ).a₄ = 0 := by simp [hW', scaleCoeffs, hρz]
  have h6 : (W'.map ρ).a₆ = 0 := by simp [hW', scaleCoeffs, hρz]
  have hρv' : ρ v' = 1 := by
    have := congrArg ρ hvv
    rwa [map_mul, hρv, one_mul, map_one] at this
  have n' : (curveRed W').Nonsingular (ρ v') (ρ (-v')) :=
    origin_nonsingular (W'.map ρ) h3 h4 h6 (equation_residue W' (equation_of_map K W' h'.1))
      (by rw [hρv']; exact one_ne_zero)
  have hE0 : φ (.some _ _ h) ∈ E0Subgroup K W' := by
    rw [hφ]; exact mem_E0Set_some_integral K W' h' n'
  set Q : E0Subgroup K W' := ⟨_, hE0⟩
  have hnQ : n • Q = 0 := by
    apply Subtype.ext
    rw [AddSubgroup.coe_nsmul, AddSubgroup.coe_zero]
    change n • φ _ = 0
    rw [← map_nsmul, hnP, map_zero]
  have hred : reduceE0Hom K W' Q = .some _ _ n' := by
    rw [reduceE0Hom_apply]
    change reducePoint K W' (φ _) = _
    rw [hφ, reducePoint_some_integral K W' h' n']
  have key : n • cuspHom (W'.map ρ) h3 h4 h6 0 h1 h2 (reduceE0Hom K W' Q) = 0 := by
    rw [← map_nsmul, ← map_nsmul, hnQ, map_zero, map_zero]
  rw [hred] at key
  change n • (ρ v' / (ρ (-v') - 0 * ρ v')) = 0 at key
  rw [map_neg, hρv'] at key
  apply hn
  simpa using key

end Torsion

section Good

variable {𝒪 : Type*} [CommRing 𝒪] [IsDomain 𝒪] [IsDiscreteValuationRing 𝒪]
  (K : Type*) [Field K] [Algebra 𝒪 K] [IsFractionRing 𝒪 K] (W : WeierstrassCurve 𝒪)
  [W.IsElliptic] [DecidableEq K] [DecidableEq (ResidueField 𝒪)]

theorem eq_zero_of_nsmul_eq_zero_of_reducePoint_eq_zero {n : ℕ}
    (hn : (n : ResidueField 𝒪) ≠ 0) {P : (curveK K W).Point} (hnP : n • P = 0)
    (hP : reducePoint K W P = 0) : P = 0 := by
  rcases point_cases K W P with rfl | ⟨X, Y, h, rfl, hX⟩ | ⟨x, y, h, rfl⟩
  · rfl
  · exact absurd hnP (nsmul_ne_zero_of_notMem_range K W hn h hX)
  · rw [reducePoint_some_integral K W h (nonsingular_residue_of_isElliptic K W h.1)] at hP
    exact absurd hP (WeierstrassCurve.Affine.Point.some_ne_zero _)

theorem eq_of_reductionHom_eq_of_nsmul {n : ℕ} (hn : (n : ResidueField 𝒪) ≠ 0)
    {P Q : (curveK K W).Point} (hP : n • P = 0) (hQ : n • Q = 0)
    (h : reductionHom K W P = reductionHom K W Q) : P = Q :=
  sub_eq_zero.1 (eq_zero_of_nsmul_eq_zero_of_reducePoint_eq_zero K W hn
    (by rw [nsmul_sub, hP, hQ, sub_zero])
    (by rw [← reductionHom_apply, map_sub, h, sub_self]))

end Good

section Localization

open IsDedekindDomain

variable {R : Type*} [CommRing R] [IsDedekindDomain R] {F : Type*} [Field F] [Algebra R F]
  [IsFractionRing R F] (v : HeightOneSpectrum R)

end Localization

section NumberField

open NumberField IsDedekindDomain

variable {F : Type*} [Field F] [NumberField F] (𝔮 : HeightOneSpectrum (𝓞 F))
  (W : WeierstrassCurve (𝔮.valuationSubringAtPrime F)) [W.IsElliptic] [DecidableEq F]
  [DecidableEq (ResidueField (𝔮.valuationSubringAtPrime F))]

end NumberField

end

end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.TorsionReduction =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFrobenius =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFrobenius", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremReduction\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AlgebraicityHom\npublic import GroundTheory.GlobalFields.ComplexMultiplication.BaseChangeField\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ClassGroupActionLattice\npublic import GroundTheory.GlobalFields.ComplexMultiplication.InseparableFrobenius\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionRespectsAdd\npublic import GroundTheory.GlobalFields.ComplexMultiplication.WeberFunction\npublic import Mathlib.NumberTheory.NumberField.Cyclotomic.Basic\npublic import GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismLift\npublic import GroundTheory.GlobalFields.ComplexMultiplication.DegreeOneAutomorphismPoints\nimport GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimes\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremPointHom\nimport GroundTheory.GlobalFields.ComplexMultiplication.ReductionAtPoint\npublic import GroundTheory.GlobalFields.ComplexMultiplication.TorsionReduction\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global
namespace Elliptic

noncomputable section

open NumberField Module IsDedekindDomain IsLocalRing WeierstrassCurve WeierstrassCurve.Affine
  GroundTheory.Arith.Abelian
open scoped nonZeroDivisors

section Congr

variable {F : Type*} [Field F] [DecidableEq F]

theorem vcPoint_pointCongr {V₁ V₂ : WeierstrassCurve F} (e : V₁ = V₂) (C : VariableChange F)
    (h₁ : C • V₁ = V₁) (h₂ : C • V₂ = V₂) (X : V₁.toAffine.Point) :
    vcPoint C h₂ (pointCongr e X) = pointCongr e (vcPoint C h₁ X) := by
  subst e
  rfl

theorem pointCongr_symm_pointCongr {V₁ V₂ : WeierstrassCurve F} (e : V₁ = V₂)
    (X : V₁.toAffine.Point) : pointCongr e.symm (pointCongr e X) = X := by
  subst e
  rfl

theorem vcPoint_nsmul {V₁ V₂ : WeierstrassCurve F} (C : VariableChange F) (h : C • V₁ = V₂)
    (n : ℕ) (X : V₁.toAffine.Point) : n • vcPoint C h X = vcPoint C h (n • X) := by
  rw [← vcPointEquiv_apply, ← vcPointEquiv_apply, map_nsmul]

omit [DecidableEq F] in
theorem vcPoint_eq_zero_of_eq_zero {V₁ V₂ : WeierstrassCurve F} (C : VariableChange F)
    (h : C • V₁ = V₂) {X : V₁.toAffine.Point} (hX : X = 0) : vcPoint C h X = 0 := by
  subst hX
  rfl

omit [DecidableEq F] in
theorem vcPoint_congr_change {V₁ V₂ : WeierstrassCurve F} {C C' : VariableChange F} (e : C = C')
    (h : C • V₁ = V₂) (h' : C' • V₁ = V₂) (X : V₁.toAffine.Point) :
    vcPoint C h X = vcPoint C' h' X := by
  subst e
  rfl

end Congr

section Scaling

universe u

variable {k : Type u} [Field k] [DecidableEq k] [PerfectField k] (Ω : Type u) [Field Ω]
  [Algebra k Ω] [IsAlgClosed Ω] [DecidableEq Ω]

def scaleChange {R : Type*} [CommRing R] (u : Rˣ) : VariableChange R := ⟨u⁻¹, 0, 0, 0⟩

omit [DecidableEq k] [PerfectField k] in
theorem scaleChange_smul {T : WeierstrassCurve k} (hT : IsShortForm T) (u : kˣ)
    (h4 : T.a₄ = (u : k) ^ 4 * T.a₄) (h6 : T.a₆ = (u : k) ^ 6 * T.a₆) :
    scaleChange u • T = T := by
  ext
  · simp [scaleChange, variableChange_a₁, hT.a₁_eq]
  · simp [scaleChange, variableChange_a₂, hT.a₂_eq, hT.a₁_eq]
  · simp [scaleChange, variableChange_a₃, hT.a₃_eq]
  · simp only [scaleChange, variableChange_a₄, hT.a₁_eq, hT.a₂_eq, hT.a₃_eq, inv_inv]
    linear_combination -h4
  · simp only [scaleChange, variableChange_a₆, hT.a₁_eq, hT.a₂_eq, hT.a₃_eq, inv_inv]
    linear_combination -h6

theorem exists_pointHomOver_eq_vcPoint {T : WeierstrassCurve k} [T.IsElliptic] (hT : IsShortForm T)
    (h2 : (2 : k) ≠ 0) (h3 : (3 : k) ≠ 0) (ψ : Isogeny T T) (hψ : ψ.degree = 1) :
    ∃ (u : kˣ) (hu : scaleChange u • T = T), (u : k) ^ 12 = 1 ∧ T.a₄ = (u : k) ^ 4 * T.a₄ ∧
      T.a₆ = (u : k) ^ 6 * T.a₆ ∧ ∀ P, pointHomOver Ω ψ P = vcPoint (scaleChange u) hu P := by
  obtain ⟨u, h4, h6, hP⟩ :=
    pointMap_isogBaseChange_some_of_degree_eq_one (Ω := Ω) h2 h3 hT hT ψ hψ
  have h12 := (pow_eq_one_of_scale hT h4 h6).2
  refine ⟨u, scaleChange_smul hT u h4 h6, h12, h4, h6, fun P ↦ ?_⟩
  apply constMap_injective T Ω
  rw [constMap_pointHomOver]
  rcases P with _ | ⟨x, y, h⟩
  · rw [show (Point.zero : T.toAffine.Point) = 0 from rfl, map_zero, ← Isogeny.pointHom_apply,
      map_zero, vcPoint_zero, map_zero]
  · obtain ⟨h', e⟩ := hP (algebraMap k Ω x) (algebraMap k Ω y)
      ((T.toAffine.baseChange_nonsingular (f := Algebra.ofId k Ω) (algebraMap k Ω).injective x y).2 h)
    refine e.trans ?_
    show _ = Point.some _ _ _
    simp only [vcX, vcY, scaleChange, Point.some.injEq]
    simp

end Scaling

section Main

variable {K : Type} [Field K] [NumberField K] [Algebra K ℂ] (hK : finrank ℚ K = 2)
  [_root_.NumberField.IsTotallyComplex K] {L : IntermediateField K ℂ} [NumberField L]


omit [NumberField K] [_root_.NumberField.IsTotallyComplex K] in
theorem isPrimitiveRoot_localizationAt (𝔓 : HeightOneSpectrum (𝓞 L)) {ζ : L}
    (hζ : IsPrimitiveRoot ζ 12) :
    IsPrimitiveRoot (algebraMap (𝓞 L) (localizationAt L 𝔓) hζ.toInteger) 12 :=
  hζ.toInteger_isPrimitiveRoot.map_of_injective (fun a b h ↦ by
    have := congrArg (algebraMap (localizationAt L 𝔓) L) h
    rw [← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply] at this
    exact RingOfIntegers.ext this)



include hK in
theorem exists_vcPoint_pointHomOver_eq (𝔭 : HeightOneSpectrum (𝓞 K))
    (hv : (Ideal.absNorm 𝔭.asIdeal).Prime) (h5 : 5 ≤ Ideal.absNorm 𝔭.asIdeal)
    (𝔓 : HeightOneSpectrum (𝓞 L)) [𝔓.asIdeal.LiesOver 𝔭.asIdeal]
    {τ : L ≃ₐ[K] L} (hτ : IsArithFrobAt (𝓞 K) τ 𝔓.asIdeal)
    {A : WeierstrassCurve L} [A.IsElliptic]
    (hEA : Nonempty (isogEnd (A.baseChange ℂ) ≃+* 𝓞 K))
    (hEA' : Nonempty (isogEnd ((A.map (τ : L →+* L)).baseChange ℂ) ≃+* 𝓞 K))
    (φ : Isogeny A (A.map (τ : L →+* L)))
    (hφ : (homConstSet (A.baseChange ℂ) ((A.map (τ : L →+* L)).baseChange ℂ) : Set ℂ) =
      (algebraMap L ℂ (invConst φ) * ·) ''
        idealLattice (algebraMap K ℂ) (𝔭.asIdeal : FractionalIdeal (𝓞 K)⁰ K)⁻¹)
    {W : WeierstrassCurve (localizationAt L 𝔓)} [W.IsElliptic]
    (hW : W.map (algebraMap (localizationAt L 𝔓) L) = A) [W.IsShortNF]
    (ha₄ : W.a₄ = 0 ∨ IsUnit W.a₄) (ha₆ : W.a₆ = 0 ∨ IsUnit W.a₆)
    {ζ₁₂ : L} (hζ : IsPrimitiveRoot ζ₁₂ 12) {m : ℕ} (hm : (m : 𝓞 K) ∉ 𝔭.asIdeal) :
    ∃ (D : VariableChange L) (hD : D • A.map (τ : L →+* L) = A.map (τ : L →+* L)),
      ∀ t : A.toAffine.Point, m • t = 0 →
        pointHomOver ℂ φ t = vcPoint D hD (pointMapRing (τ : L →+* L) A t) := by
  classical
  subst hW
  obtain ⟨p, hpdef⟩ : ∃ p, p = Ideal.absNorm 𝔭.asIdeal := ⟨_, rfl⟩
  have hv₀ := hv
  rw [← hpdef] at hv h5
  have : Fact p.Prime := ⟨hv⟩
  have : CharP (ResidueField (localizationAt L 𝔓)) p := by
    refine charP_residueField_localizationAt 𝔓 hv ?_
    have := algebraMap_mem_of_liesOver (𝔓 := 𝔓) (Ideal.absNorm_mem 𝔭.asIdeal)
    rwa [map_natCast, ← hpdef] at this
  have h23 : (2 : ResidueField (localizationAt L 𝔓)) ≠ 0 ∧ (3 : ResidueField (localizationAt L 𝔓)) ≠ 0 := by
    refine two_ne_zero_and_three_ne_zero_of_five_le_ringChar ?_
    rw [ringChar.eq (ResidueField (localizationAt L 𝔓)) p]
    exact h5
  have hW' : (W.map (localizationAtRingHom 𝔓 hτ)).map (algebraMap (localizationAt L 𝔓) L) =
      (W.map (algebraMap (localizationAt L 𝔓) L)).map (τ : L →+* L) := by
    rw [WeierstrassCurve.map_map, WeierstrassCurve.map_map, comp_algebraMap_localizationAtRingHom]
  have hres : ∀ x, IsLocalRing.residue _ ((localizationAtRingHom 𝔓 hτ) x) = IsLocalRing.residue (localizationAt L 𝔓) x ^ p :=
    fun x ↦ by rw [hpdef]; exact residue_localizationAtRingHom_of_absNorm 𝔓 hτ 𝔭 x
  have htw : (W.map (IsLocalRing.residue (localizationAt L 𝔓))).map
      (frobenius (ResidueField (localizationAt L 𝔓)) p) = (W.map (localizationAtRingHom 𝔓 hτ)).map (IsLocalRing.residue _) :=
    map_residue_eq_frobeniusTwist W p hres
  obtain ⟨-, -, ⟨ψ, hred, hψdeg, -, -⟩, -⟩ :=
    reduceIsogeny_congr_eq_comp_frobeniusIsogeny hK 𝔭 hv₀ 𝔓 hEA hEA' φ hφ rfl hW' p

  have htw' : (W.map (localizationAtRingHom 𝔓 hτ)).map (IsLocalRing.residue (localizationAt L 𝔓)) =
      frobeniusTwist (W.map (IsLocalRing.residue (localizationAt L 𝔓))) p := htw.symm
  have hT : IsShortForm (frobeniusTwist (W.map (IsLocalRing.residue (localizationAt L 𝔓))) p) :=
    ⟨by simp [frobeniusTwist], by simp [frobeniusTwist], by simp [frobeniusTwist]⟩
  have hψ'deg : (ψ.congr rfl htw').degree = 1 := by rw [Isogeny.degree_congr]; exact hψdeg
  obtain ⟨u, hu, hu12, hu4, hu6, hψ'P⟩ :=
    exists_pointHomOver_eq_vcPoint (AlgebraicClosure (ResidueField (localizationAt L 𝔓))) hT
      h23.1 h23.2 (ψ.congr rfl htw') hψ'deg

  have hζ𝒪 := isPrimitiveRoot_localizationAt 𝔓 hζ
  have h12 : ((12 : ℕ) : ResidueField (localizationAt L 𝔓)) ≠ 0 := by
    rw [show ((12 : ℕ) : ResidueField (localizationAt L 𝔓)) = 2 * 2 * 3 by norm_num]
    exact mul_ne_zero (mul_ne_zero h23.1 h23.1) h23.2
  obtain ⟨η, ⟨hη12, hηu⟩, -⟩ :=
    existsUnique_pow_eq_one_of_isPrimitiveRoot (IsLocalRing.residue _) hζ𝒪 h12 hu12
  have hηunit : IsUnit η := IsUnit.of_pow_eq_one hη12 (by norm_num)
  have injRoot : ∀ {a b : localizationAt L 𝔓}, a ^ 12 = 1 → b ^ 12 = 1 →
      IsLocalRing.residue _ a = IsLocalRing.residue _ b → a = b :=
    fun ha hb h ↦ eq_of_map_eq_of_pow_eq_one (IsLocalRing.residue _) hζ𝒪 h12 ha hb h
  have hres_ne : ∀ {a : localizationAt L 𝔓}, IsUnit a → IsLocalRing.residue _ a ≠ 0 := fun ha ↦ by
    rw [Ne, IsLocalRing.residue_eq_zero_iff, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff,
      not_not]
    exact ha
  have hW'1 : (W.map (localizationAtRingHom 𝔓 hτ)).a₁ = 0 := by simp
  have hW'2 : (W.map (localizationAtRingHom 𝔓 hτ)).a₂ = 0 := by simp
  have hW'3 : (W.map (localizationAtRingHom 𝔓 hτ)).a₃ = 0 := by simp
  have hpow : ∀ {n : ℕ}, n ∣ 12 → (u : ResidueField (localizationAt L 𝔓)) ^ n = 1 → η ^ n = 1 := by
    intro n _ hun
    refine injRoot (by rw [← pow_mul, mul_comm, pow_mul, hη12, one_pow]) (one_pow _) ?_
    rw [map_pow, hηu, hun, map_one]
  have key4 : η ^ 4 * (W.map (localizationAtRingHom 𝔓 hτ)).a₄ = (W.map (localizationAtRingHom 𝔓 hτ)).a₄ := by
    rcases ha₄ with h0 | hunit
    · simp [h0]
    · have hne : (frobeniusTwist (W.map (IsLocalRing.residue (localizationAt L 𝔓))) p).a₄ ≠ 0 := by
        simp only [frobeniusTwist, WeierstrassCurve.map_a₄, frobenius_def]
        exact pow_ne_zero _ (hres_ne hunit)
      have hu4' : (u : ResidueField (localizationAt L 𝔓)) ^ 4 = 1 :=
        mul_right_cancel₀ hne (by rw [one_mul]; exact hu4.symm)
      rw [hpow (by norm_num) hu4', one_mul]
  have key6 : η ^ 6 * (W.map (localizationAtRingHom 𝔓 hτ)).a₆ = (W.map (localizationAtRingHom 𝔓 hτ)).a₆ := by
    rcases ha₆ with h0 | hunit
    · simp [h0]
    · have hne : (frobeniusTwist (W.map (IsLocalRing.residue (localizationAt L 𝔓))) p).a₆ ≠ 0 := by
        simp only [frobeniusTwist, WeierstrassCurve.map_a₆, frobenius_def]
        exact pow_ne_zero _ (hres_ne hunit)
      have hu6' : (u : ResidueField (localizationAt L 𝔓)) ^ 6 = 1 :=
        mul_right_cancel₀ hne (by rw [one_mul]; exact hu6.symm)
      rw [hpow (by norm_num) hu6', one_mul]
  have hηc : ((hηunit.unit : (localizationAt L 𝔓)ˣ) : localizationAt L 𝔓) = η := hηunit.unit_spec
  have hC : scaleChange hηunit.unit • (W.map (localizationAtRingHom 𝔓 hτ)) = (W.map (localizationAtRingHom 𝔓 hτ)) := by
    refine WeierstrassCurve.ext ?_ ?_ ?_ ?_ ?_
    · simp [scaleChange, variableChange_a₁]
    · simp [scaleChange, variableChange_a₂]
    · simp [scaleChange, variableChange_a₃]
    · simp only [scaleChange, variableChange_a₄, hW'1, hW'2, hW'3, inv_inv, hηc]
      linear_combination key4
    · simp only [scaleChange, variableChange_a₆, hW'1, hW'2, hW'3, inv_inv, hηc]
      linear_combination key6
  have hD' : ((scaleChange hηunit.unit).map (algebraMap (localizationAt L 𝔓) L)) • (W.map (localizationAtRingHom 𝔓 hτ)).map (algebraMap (localizationAt L 𝔓) L) =
      (W.map (localizationAtRingHom 𝔓 hτ)).map (algebraMap (localizationAt L 𝔓) L) := by
    rw [map_variableChange, hC]
  have hD : ((scaleChange hηunit.unit).map (algebraMap (localizationAt L 𝔓) L)) • (W.map (algebraMap (localizationAt L 𝔓) L)).map (τ : L →+* L) =
      (W.map (algebraMap (localizationAt L 𝔓) L)).map (τ : L →+* L) := by
    rw [← hW']
    exact hD'
  refine ⟨((scaleChange hηunit.unit).map (algebraMap (localizationAt L 𝔓) L)), hD, fun t ht ↦ ?_⟩

  have hm' : (m : ResidueField (localizationAt L 𝔓)) ≠ 0 := by
    rw [← map_natCast (IsLocalRing.residue (localizationAt L 𝔓)), Ne, IsLocalRing.residue_eq_zero_iff,
      ← map_natCast (algebraMap (𝓞 L) (localizationAt L 𝔓)), algebraMap_mem_maximalIdeal_localizationAt_iff]
    intro h
    apply hm
    rw [Ideal.LiesOver.over (P := 𝔓.asIdeal) (p := 𝔭.asIdeal), Ideal.mem_comap, map_natCast]
    exact h
  have e0 : pointHomOver ℂ (φ.congr rfl hW'.symm) t = pointCongr hW'.symm (pointHomOver ℂ φ t) :=
    pointHomOver_congr ℂ φ rfl hW'.symm t
  have hX : m • (pointCongr (map_curveK_eq L L (comp_algebraMap_localizationAtRingHom 𝔓 hτ) W) (pointMapRing (τ : L →+* L) (W.map (algebraMap (localizationAt L 𝔓) L)) t)) = 0 := by rw [← map_nsmul, ← map_nsmul, ht, map_zero, map_zero]
  have hφ0 : m • pointHomOver ℂ (φ.congr rfl hW'.symm) t = 0 := by rw [← map_nsmul, ht, map_zero]
  have hvX : m • vcPoint ((scaleChange hηunit.unit).map (algebraMap (localizationAt L 𝔓) L)) hD' (pointCongr (map_curveK_eq L L (comp_algebraMap_localizationAtRingHom 𝔓 hτ) W) (pointMapRing (τ : L →+* L) (W.map (algebraMap (localizationAt L 𝔓) L)) t)) = 0 := by
    rw [vcPoint_nsmul]
    exact vcPoint_eq_zero_of_eq_zero _ _ hX

  have r1 : reducePoint L (W.map (localizationAtRingHom 𝔓 hτ)) (pointHomOver ℂ (φ.congr rfl hW'.symm) t) =
      pointCongr htw (vcPoint (scaleChange u) hu (pointMapRing (frobenius (ResidueField (localizationAt L 𝔓)) p) (W.map (IsLocalRing.residue (localizationAt L 𝔓))) (reducePoint L W t))) := by
    have hred' : reduceIsogeny L W (W.map (localizationAtRingHom 𝔓 hτ)) (φ.congr rfl hW'.symm) =
        ψ.comp (frobeniusIsogeny (W.map (IsLocalRing.residue (localizationAt L 𝔓))) p) := hred
    refine (reducePoint_pointHomOver L ℂ (AlgebraicClosure (ResidueField (localizationAt L 𝔓)))
      (φ.congr rfl hW'.symm) t).trans ?_
    rw [hred', pointHomOver_comp, pointHomOver_frobeniusIsogeny]
    have h1 := pointHomOver_congr (AlgebraicClosure (ResidueField (localizationAt L 𝔓))) ψ rfl htw' (pointMapRing (frobenius (ResidueField (localizationAt L 𝔓)) p) (W.map (IsLocalRing.residue (localizationAt L 𝔓))) (reducePoint L W t))
    rw [hψ'P] at h1
    rw [← pointCongr_symm_pointCongr htw'
      (pointHomOver (AlgebraicClosure (ResidueField (localizationAt L 𝔓))) ψ (pointMapRing (frobenius (ResidueField (localizationAt L 𝔓)) p) (W.map (IsLocalRing.residue (localizationAt L 𝔓))) (reducePoint L W t))), ← h1]
    rfl
  have hCres : (scaleChange hηunit.unit).map (IsLocalRing.residue (localizationAt L 𝔓)) =
      scaleChange u := by
    have hu' : Units.map (IsLocalRing.residue (localizationAt L 𝔓) : _ →* _) hηunit.unit = u :=
      Units.ext (by rw [Units.coe_map, hηc]; exact hηu)
    simp only [scaleChange, VariableChange.map, map_zero, map_inv, hu']
  have r2 : reducePoint L (W.map (localizationAtRingHom 𝔓 hτ)) (vcPoint ((scaleChange hηunit.unit).map (algebraMap (localizationAt L 𝔓) L)) hD' (pointCongr (map_curveK_eq L L (comp_algebraMap_localizationAtRingHom 𝔓 hτ) W) (pointMapRing (τ : L →+* L) (W.map (algebraMap (localizationAt L 𝔓) L)) t))) = pointCongr htw (vcPoint (scaleChange u) hu (pointMapRing (frobenius (ResidueField (localizationAt L 𝔓)) p) (W.map (IsLocalRing.residue (localizationAt L 𝔓))) (reducePoint L W t))) := by
    rw [reducePoint_vcPoint L (W.map (localizationAtRingHom 𝔓 hτ)) (scaleChange hηunit.unit) hC (pointCongr (map_curveK_eq L L (comp_algebraMap_localizationAtRingHom 𝔓 hτ) W) (pointMapRing (τ : L →+* L) (W.map (algebraMap (localizationAt L 𝔓) L)) t)),
      reducePoint_pointMapRing_localizationAtRingHom 𝔓 hτ 𝔭 p hpdef.symm W t]
    exact (vcPoint_congr_change hCres _ _ _).trans
      (vcPoint_pointCongr htw (scaleChange u) hu (by rw [← htw]; exact hu) _)
  have heq := eq_of_reductionHom_eq_of_nsmul L (W.map (localizationAtRingHom 𝔓 hτ)) hm' hφ0 hvX
    (by rw [reductionHom_apply, reductionHom_apply, r1, r2])

  have e1 : pointHomOver ℂ φ t = pointCongr hW' (pointHomOver ℂ (φ.congr rfl hW'.symm) t) := by
    rw [e0, pointCongr_symm_pointCongr]
  rw [e1, heq]
  refine (vcPoint_pointCongr hW' _ hD' hD _).symm.trans ?_
  congr 1

end Main

end

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFrobenius =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremModels =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremModels", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.Algebraicity\npublic import GroundTheory.GlobalFields.ComplexMultiplication.ReductionRespectsAdd\npublic import Mathlib.AlgebraicGeometry.EllipticCurve.ModelsWithJ\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AlgebraicityGalois\npublic import GroundTheory.GlobalFields.ComplexMultiplication.BaseChangeField\npublic import GroundTheory.GlobalFields.ComplexMultiplication.HilbertClassFieldModels\nimport Mathlib.Algebra.Lie.OfAssociative\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global
namespace Elliptic

noncomputable section

open NumberField Module IntermediateField WeierstrassCurve GroundTheory.Arith.Abelian

section ShortModel

variable {F F' : Type*} [Field F] [Field F']

theorem ofJ_map [DecidableEq F] [DecidableEq F'] (f : F →+* F') (j : F) :
    (ofJ j).map f = ofJ (f j) := by
  have h3 : (3 : F) = 0 ↔ (3 : F') = 0 := by
    rw [← map_ofNat f 3, map_eq_zero_iff f f.injective]
  have hj0 : j = 0 ↔ f j = 0 := (map_eq_zero_iff f f.injective).symm
  have hj1728 : j = 1728 ↔ f j = 1728 := by
    rw [← map_ofNat f 1728]
    exact f.injective.eq_iff.symm
  unfold ofJ
  by_cases a : j = 0
  · rw [if_pos a, if_pos (hj0.1 a)]
    by_cases b : (3 : F) = 0
    · rw [if_pos b, if_pos (h3.1 b)]
      ext <;> simp [ofJ1728]
    · rw [if_neg b, if_neg (mt h3.2 b)]
      ext <;> simp [ofJ0]
  · rw [if_neg a, if_neg (mt hj0.2 a)]
    by_cases b : j = 1728
    · rw [if_pos b, if_pos (hj1728.1 b)]
      ext <;> simp [ofJ1728]
    · rw [if_neg b, if_neg (mt hj1728.2 b)]
      ext <;> simp [ofJNe0Or1728, map_ofNat]

theorem toShortNF_map (W : WeierstrassCurve F) [Invertible (2 : F)] [Invertible (3 : F)]
    [Invertible (2 : F')] [Invertible (3 : F')] (f : F →+* F') :
    W.toShortNF.map f = (W.map f).toShortNF := by
  ext <;> simp [toShortNF, toCharNeTwoNF, VariableChange.map, variableChange_a₂,
    VariableChange.mul_def, map_ofNat]

variable [CharZero F]

def shortModel (j : F) : WeierstrassCurve F :=
  letI : DecidableEq F := Classical.decEq F
  letI : Invertible (2 : F) := invertibleOfNonzero two_ne_zero
  letI : Invertible (3 : F) := invertibleOfNonzero three_ne_zero
  (ofJ j).toShortNF • ofJ j

instance (j : F) : (shortModel j).IsElliptic := by
  unfold shortModel
  infer_instance

instance (j : F) : (shortModel j).IsShortNF := by
  unfold shortModel
  infer_instance

theorem shortModel_j (j : F) : (shortModel j).j = j := by
  unfold shortModel
  rw [variableChange_j, ofJ_j]

variable [CharZero F']

theorem shortModel_map (f : F →+* F') (j : F) : (shortModel j).map f = shortModel (f j) := by
  classical
  let _ : Invertible (2 : F) := invertibleOfNonzero two_ne_zero
  let _ : Invertible (3 : F) := invertibleOfNonzero three_ne_zero
  let _ : Invertible (2 : F') := invertibleOfNonzero two_ne_zero
  let _ : Invertible (3 : F') := invertibleOfNonzero three_ne_zero
  have e1 : shortModel j = (ofJ j).toShortNF • ofJ j := by
    unfold shortModel
    congr
  have e2 : shortModel (f j) = (ofJ (f j)).toShortNF • ofJ (f j) := by
    unfold shortModel
    congr
  rw [e1, e2, ← map_variableChange, toShortNF_map, ofJ_map]

end ShortModel

section Models

variable {K : Type} [Field K] [NumberField K] [Algebra K ℂ] (hK : finrank ℚ K = 2)
  [_root_.NumberField.IsTotallyComplex K]


include hK in
theorem exists_shortModels_isogenous (M : IntermediateField K ℂ) [FiniteDimensional K M] :
    ∃ L : IntermediateField K ℂ, M ≤ L ∧ FiniteDimensional K L ∧ IsGalois K L ∧
      ∃ hL : ∀ x : ELL K, ELL.j x ∈ L,
        (∀ x, ∃ h : Nonempty (isogEnd ((shortModel (⟨ELL.j x, hL x⟩ : L)).baseChange ℂ) ≃+* 𝓞 K),
          (⟨(shortModel (⟨ELL.j x, hL x⟩ : L)).baseChange ℂ, h⟩ : CMCurve K).toEll = x) ∧
        ∀ x y, Nonempty (Isogeny (shortModel (⟨ELL.j x, hL x⟩ : L))
          (shortModel (⟨ELL.j y, hL y⟩ : L))) := by
  classical
  have := finite_ell hK
  set x₀ := ellEquiv (algebraMap K ℂ) hK 1
  set J : IntermediateField K ℂ := K⟮ELL.j x₀⟯
  have hJ : ∀ y, ELL.j y ∈ J := fun y ↦ ELL.j_mem_adjoin hK x₀ y
  have : FiniteDimensional K J :=
    adjoin.finiteDimensional (ELL.isAlgebraic_j_over hK x₀).isIntegral
  have : NumberField J := NumberField.of_module_finite K J
  set E₀ : ELL K → WeierstrassCurve J := fun y ↦ shortModel (⟨ELL.j y, hJ y⟩ : J)
  have hE₀j : ∀ y, algebraMap J ℂ (E₀ y).j = ELL.j y := fun y ↦ by
    simp only [E₀, shortModel_j]
    rfl
  have hE₀ : ∀ y, ∃ h : Nonempty (isogEnd ((E₀ y).baseChange ℂ) ≃+* 𝓞 K),
      (⟨(E₀ y).baseChange ℂ, h⟩ : CMCurve K).toEll = y := fun y ↦
    exists_cmCurve_toEll_of_j_eq y _ (by
      show ((E₀ y).map (algebraMap J ℂ)).j = _
      rw [map_j, hE₀j])
  have hF : ∀ p : ELL K × ELL K, ∃ F₁ : IntermediateField J ℂ, NumberField F₁ ∧
      Nonempty (Isogeny ((E₀ p.1).baseChange F₁) ((E₀ p.2).baseChange F₁)) := by
    rintro ⟨y, z⟩
    obtain ⟨hy, -⟩ := hE₀ y
    obtain ⟨hz, -⟩ := hE₀ z
    obtain ⟨ψ⟩ := nonempty_isogeny_of_cmCurve hK ⟨_, hy⟩ ⟨_, hz⟩
    obtain ⟨F₁, hF₁, φ, -⟩ := Isogeny.exists_numberField_mapOf_eq ψ
    exact ⟨F₁, hF₁, ⟨φ⟩⟩
  choose F hFnum hFiso using hF
  have hFfin : ∀ p, FiniteDimensional K ((F p).restrictScalars K) := fun p ↦ by
    have := hFnum p
    have : FiniteDimensional ℚ ((F p).restrictScalars K) := (inferInstance : FiniteDimensional ℚ (F p))
    exact Module.Finite.of_restrictScalars_finite ℚ K ((F p).restrictScalars K)
  set M' : IntermediateField K ℂ := M ⊔ J ⊔ ⨆ p, (F p).restrictScalars K
  have : FiniteDimensional K M' := by
    have := hFfin
    infer_instance
  obtain ⟨L, hM'L, hLfin, hLgal⟩ := exists_isGalois_le M'
  have hJL : J ≤ L := le_trans (le_trans le_sup_right le_sup_left) hM'L
  have hFL : ∀ p, (F p).restrictScalars K ≤ L := fun p ↦
    le_trans (le_trans (le_iSup (fun p ↦ (F p).restrictScalars K) p) le_sup_right) hM'L
  set ι : J →+* L := (inclusion hJL).toRingHom
  have hmodel : ∀ y, (E₀ y).map ι = shortModel (⟨ELL.j y, hJL (hJ y)⟩ : L) := fun y ↦ by
    rw [shortModel_map]
    rfl
  refine ⟨L, le_trans (le_trans le_sup_left le_sup_left) hM'L, hLfin, hLgal, fun y ↦ hJL (hJ y),
    fun y ↦ ?_, fun y z ↦ ?_⟩
  · refine exists_cmCurve_toEll_of_j_eq y _ ?_
    show ((shortModel (⟨ELL.j y, hJL (hJ y)⟩ : L)).map (algebraMap L ℂ)).j = _
    rw [map_j, shortModel_j]
    rfl
  · obtain ⟨φ⟩ := hFiso (y, z)
    let κ : F (y, z) →+* L := (inclusion (hFL (y, z))).toRingHom
    have hκ : κ.comp (algebraMap J (F (y, z))) = ι := by
      ext a
      rfl
    have e : ∀ w, ((E₀ w).baseChange (F (y, z))).map κ = shortModel (⟨ELL.j w, hJL (hJ w)⟩ : L) :=
      fun w ↦ by
        show ((E₀ w).map (algebraMap J (F (y, z)))).map κ = _
        rw [WeierstrassCurve.map_map, hκ, hmodel]
    exact ⟨(φ.map κ).congr (e y) (e z)⟩

end Models

end

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremModels =====

-- ===== clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLevel =====
-- clump-header: {"m": "GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLevel", "h": "module\n\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformization\npublic import GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimes\npublic import GroundTheory.GlobalFields.ComplexMultiplication.IdeleActionQuotient\npublic import GroundTheory.GlobalFields.GlobalArtinMap.ArtinMap\npublic import GroundTheory.GlobalFields.ComplexMultiplication.AnalyticUniformizationClassification\nimport GroundTheory.GlobalFields.ComplexMultiplication.BadPrimesFinite\nimport GroundTheory.GlobalFields.ComplexMultiplication.FrobeniusAtPrimesIsogeny\nimport GroundTheory.GlobalFields.ComplexMultiplication.GoodReductionAlmostAll\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremAssembly\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFields\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremFrobenius\nimport GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremIdeles\npublic import GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremModels\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.EllipticCurve.IsomOfJ\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import GroundTheory.GlobalFields.ClassFieldConsequences.RayClassField\nimport Mathlib.AlgebraicGeometry.EllipticCurve.Reduction\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Global
namespace Elliptic

noncomputable section

open NumberField Module IsDedekindDomain WeierstrassCurve WeierstrassCurve.Affine GroundTheory.Arith.Abelian
  IntermediateField
open GroundTheory.LocalField (maximalAbelianExtension)
open scoped nonZeroDivisors

variable {K : Type} [Field K] [NumberField K] [Algebra K ℂ] (hK : finrank ℚ K = 2)
  [_root_.NumberField.IsTotallyComplex K]

omit [NumberField K] [_root_.NumberField.IsTotallyComplex K] in
theorem exists_isogeny_homConstSet_congr {L : Type} [Field L] [Algebra L ℂ]
    {A A' B B' : WeierstrassCurve L} [A.IsElliptic] [A'.IsElliptic] [B.IsElliptic] [B'.IsElliptic]
    (eA : A = A') (eB : B = B') {S : Set ℂ}
    (h : ∃ φ : Isogeny A B, (homConstSet (A.baseChange ℂ) (B.baseChange ℂ) : Set ℂ) =
      (algebraMap L ℂ (invConst φ) * ·) '' S) :
    ∃ φ : Isogeny A' B', (homConstSet (A'.baseChange ℂ) (B'.baseChange ℂ) : Set ℂ) =
      (algebraMap L ℂ (invConst φ) * ·) '' S := by
  subst eA eB
  exact h

omit [NumberField K] [_root_.NumberField.IsTotallyComplex K] [Algebra K ℂ] in
theorem nonempty_isogEnd_congr {L : Type} [Field L] [Algebra L ℂ] {B B' : WeierstrassCurve L}
    [B.IsElliptic] [B'.IsElliptic] (e : B = B') (h : Nonempty (isogEnd (B.baseChange ℂ) ≃+* 𝓞 K)) :
    Nonempty (isogEnd (B'.baseChange ℂ) ≃+* 𝓞 K) := by
  subst e
  exact h


include hK in
theorem exists_uniformization_level (σ : ℂ ≃ₐ[K] ℂ) (s : IdeleGroup K)
    (hs : ∀ x : maximalAbelianExtension K (algebraicClosure K ℂ),
      ((artinMap K (algebraicClosure K ℂ) (IdeleClassGroup.mk K s) x : algebraicClosure K ℂ) : ℂ) =
        σ ((x : algebraicClosure K ℂ) : ℂ))
    (𝔞 : (FractionalIdeal (𝓞 K)⁰ K)ˣ) {E : WeierstrassCurve ℂ} [E.IsElliptic]
    {f : ℂ →+ E.toAffine.Point} (hf : IsAnalyticUniformization (idealLattice (algebraMap K ℂ) 𝔞) f)
    {m : ℕ} (hm : m ≠ 0) :
    ∃ f' : ℂ →+ (E.map (σ : ℂ →+* ℂ)).toAffine.Point,
      IsAnalyticUniformization (idealLattice (algebraMap K ℂ) ↑(s⁻¹ • 𝔞)) f' ∧
      ∀ t y : K, (m : K) * t ∈ (𝔞 : FractionalIdeal (𝓞 K)⁰ K) →
        IdeleGroup.smulQuotient s⁻¹ 𝔞 (Submodule.Quotient.mk t) = Submodule.Quotient.mk y →
          f' (algebraMap K ℂ y) = pointMapRing (σ : ℂ →+* ℂ) E (f (algebraMap K ℂ t)) := by
  classical

  have hL₁ := lattice_idealPeriodPair (algebraMap K ℂ) hK 𝔞
  have hL₁end := latticeEnd_idealPeriodPair (algebraMap K ℂ) hK 𝔞
  have hf₁ := hf
  rw [← hL₁] at hf₁
  obtain ⟨C₁, hC₁, -⟩ := exists_vcPoint_of_isAnalyticUniformization hf₁
  have hEend : Nonempty (isogEnd E ≃+* 𝓞 K) :=
    ⟨(vcEndEquiv C₁ hC₁).symm.trans (CMCurve.ofLattice (algebraMap K ℂ) _ hL₁end).endIso.some⟩
  obtain ⟨x₀, hx₀⟩ : ∃ x₀ : ELL K, x₀ = (⟨E, hEend⟩ : CMCurve K).toEll := ⟨_, rfl⟩
  have hx₀ell : x₀ = ellOf (algebraMap K ℂ) _ hL₁end := by
    rw [hx₀]
    exact (CMCurve.toEll_eq_iff _ _).2 ⟨C₁⁻¹, inv_smul_eq_of_smul_eq C₁ hC₁⟩
  have hjE : ELL.j x₀ = E.j := by
    rw [hx₀]
    exact ELL.j_toEll _

  have hJfin : FiniteDimensional K K⟮ELL.j x₀⟯ :=
    adjoin.finiteDimensional (ELL.isAlgebraic_j_over hK x₀).isIntegral
  set aJ : K⟮ELL.j x₀⟯ := ⟨ELL.j x₀, mem_adjoin_simple_self K _⟩
  obtain ⟨M₁, hM₁fin, -, htorsJ⟩ := exists_le_forall_torsion_mem K⟮ELL.j x₀⟯ (shortModel aJ) hm

  set ζ : ℂ := Complex.exp (2 * Real.pi * Complex.I / (12 : ℕ))
  have hζ : IsPrimitiveRoot ζ 12 := Complex.isPrimitiveRoot_exp 12 (by norm_num)
  have hM₃fin : FiniteDimensional K K⟮ζ⟯ :=
    adjoin.finiteDimensional ((hζ.isIntegral (by norm_num)).tower_top)

  obtain ⟨L, hML, hLfin, hLgal, hL, hE, hiso⟩ := exists_shortModels_isogenous hK
    (M₁ ⊔ (Modulus.ofNat (K := K) m hm).rayClassField ℂ ⊔ K⟮ζ⟯)
  have : NumberField L := NumberField.of_module_finite K L
  have hM₁L : M₁ ≤ L := le_trans (le_trans le_sup_left le_sup_left) hML
  have hM₂L : (Modulus.ofNat (K := K) m hm).rayClassField ℂ ≤ L :=
    le_trans (le_trans le_sup_right le_sup_left) hML
  have hζL : ζ ∈ L := hML (le_sup_right (a := M₁ ⊔ _) (mem_adjoin_simple_self K ζ))
  have hζL' : IsPrimitiveRoot (⟨ζ, hζL⟩ : L) 12 :=
    (IsPrimitiveRoot.map_iff_of_injective (algebraMap L ℂ).injective).1 hζ

  obtain ⟨A, hAdef⟩ : ∃ A : WeierstrassCurve L, A = shortModel (⟨ELL.j x₀, hL x₀⟩ : L) := ⟨_, rfl⟩
  have : A.IsElliptic := by rw [hAdef]; infer_instance
  have : A.IsShortNF := by rw [hAdef]; infer_instance
  have hAℂ : A.baseChange ℂ = (shortModel aJ).baseChange ℂ := by
    rw [hAdef, WeierstrassCurve.baseChange, WeierstrassCurve.baseChange, shortModel_map, shortModel_map]
    rfl
  obtain ⟨V₀, hV₀⟩ := exists_variableChange_of_j_eq E (A.baseChange ℂ) (by
    rw [j_congr hAℂ]
    show E.j = ((shortModel aJ).map (algebraMap _ ℂ)).j
    rw [map_j, shortModel_j, ← hjE]
    rfl)
  have htors : ∀ (a b : ℂ) (h : (A.baseChange ℂ).toAffine.Nonsingular a b),
      m • (Point.some a b h : (A.baseChange ℂ).toAffine.Point) = 0 →
        a ∈ (algebraMap L ℂ).range ∧ b ∈ (algebraMap L ℂ).range := by
    intro a b h hP
    have h' : ((shortModel aJ).baseChange ℂ).toAffine.Nonsingular a b := hAℂ ▸ h
    have hP' : m • (Point.some a b h' : ((shortModel aJ).baseChange ℂ).toAffine.Point) = 0 :=
      nsmul_some_congr hAℂ h h' hP
    obtain ⟨ha, hb⟩ := htorsJ a b h' hP'
    exact ⟨⟨⟨a, hM₁L ha⟩, rfl⟩, ⟨⟨b, hM₁L hb⟩, rfl⟩⟩

  have hτσ : ∀ a : L, σ (algebraMap L ℂ a) = algebraMap L ℂ (σ.restrictNormal L a) :=
    fun a ↦ (AlgEquiv.restrictNormal_commutes σ L a).symm

  obtain ⟨S₀, hS₀, hS₀p⟩ := frobenius_at_primes_of_degree_one hK hL
    (fun x ↦ shortModel (⟨ELL.j x, hL x⟩ : L)) hE hiso
  have hgood : ∀ᶠ w : HeightOneSpectrum (𝓞 L) in Filter.cofinite,
      ∃ W : WeierstrassCurve (localizationAt L w), W.IsElliptic ∧
        W.map (algebraMap (localizationAt L w) L) = A ∧ (W.a₄ = 0 ∨ IsUnit W.a₄) ∧
          (W.a₆ = 0 ∨ IsUnit W.a₆) := by
    have h4 : ∀ᶠ w : HeightOneSpectrum (𝓞 L) in Filter.cofinite,
        A.a₄ = 0 ∨ ∃ h : A.a₄ ∈ localizationAt L w, IsUnit (⟨A.a₄, h⟩ : localizationAt L w) := by
      by_cases h0 : A.a₄ = 0
      · exact Filter.Eventually.of_forall fun _ ↦ Or.inl h0
      · exact (eventually_isUnit_localizationAt h0).mono fun _ h ↦ Or.inr h
    have h6 : ∀ᶠ w : HeightOneSpectrum (𝓞 L) in Filter.cofinite,
        A.a₆ = 0 ∨ ∃ h : A.a₆ ∈ localizationAt L w, IsUnit (⟨A.a₆, h⟩ : localizationAt L w) := by
      by_cases h0 : A.a₆ = 0
      · exact Filter.Eventually.of_forall fun _ ↦ Or.inl h0
      · exact (eventually_isUnit_localizationAt h0).mono fun _ h ↦ Or.inr h
    filter_upwards [eventually_exists_model A, h4, h6] with w ⟨W, hW, hWA⟩ h4w h6w
    have e4 : algebraMap (localizationAt L w) L W.a₄ = A.a₄ := by rw [← hWA]; rfl
    have e6 : algebraMap (localizationAt L w) L W.a₆ = A.a₆ := by rw [← hWA]; rfl
    refine ⟨W, hW, hWA, ?_, ?_⟩
    · rcases h4w with h0 | ⟨h, hu⟩
      · left
        exact Subtype.ext (e4.trans h0)
      · right
        have : W.a₄ = ⟨A.a₄, h⟩ := Subtype.ext e4
        rwa [this]
    · rcases h6w with h0 | ⟨h, hu⟩
      · left
        exact Subtype.ext (e6.trans h0)
      · right
        have : W.a₆ = ⟨A.a₆, h⟩ := Subtype.ext e6
        rwa [this]
  obtain ⟨S₁, hS₁, hS₁p⟩ := exists_finite_forall_liesOver (K := K) hgood
  have h6m : ((6 * m : ℕ) : 𝓞 K) ≠ 0 := by
    rw [Ne, Nat.cast_eq_zero]
    omega
  have hS : (S₀ ∪ S₁ ∪ {v : HeightOneSpectrum (𝓞 K) | ((6 * m : ℕ) : 𝓞 K) ∈ v.asIdeal}).Finite :=
    (hS₀.union hS₁).union (finite_setOf_mem_asIdeal h6m)

  obtain ⟨𝔭, h𝔭S, h𝔭1, 𝔓, hlies, -, hfrob⟩ := exists_isArithFrobAt L (σ.restrictNormal L) hS
  have : 𝔓.asIdeal.LiesOver 𝔭.asIdeal := hlies
  simp only [Set.mem_union, Set.mem_ofPred_eq, not_or] at h𝔭S
  obtain ⟨⟨h𝔭S₀, h𝔭S₁⟩, h𝔭6m⟩ := h𝔭S
  have hv := absNorm_prime_of_mem_degreeOnePrimes h𝔭1
  have hm𝔭 : (m : 𝓞 K) ∉ 𝔭.asIdeal := fun h ↦ h𝔭6m (by
    rw [Nat.cast_mul]
    exact Ideal.mul_mem_left _ _ h)
  have hnorm : ((Ideal.absNorm 𝔭.asIdeal : ℕ) : 𝓞 K) ∈ 𝔭.asIdeal := Ideal.absNorm_mem _
  have h5 : 5 ≤ Ideal.absNorm 𝔭.asIdeal := by
    refine hv.five_le_of_ne_two_of_ne_three (fun h2 ↦ h𝔭6m ?_) (fun h3 ↦ h𝔭6m ?_)
    · rw [h2] at hnorm
      rw [show ((6 * m : ℕ) : 𝓞 K) = ((2 : ℕ) : 𝓞 K) * ((3 * m : ℕ) : 𝓞 K) by push_cast; ring]
      exact Ideal.mul_mem_right _ _ hnorm
    · rw [h3] at hnorm
      rw [show ((6 * m : ℕ) : 𝓞 K) = ((3 : ℕ) : 𝓞 K) * ((2 * m : ℕ) : 𝓞 K) by push_cast; ring]
      exact Ideal.mul_mem_right _ _ hnorm

  obtain ⟨-, hcls, -⟩ := hS₀p 𝔭 h𝔭S₀ h𝔭1 𝔓
  obtain ⟨-, hτj⟩ := hcls (σ.restrictNormal L) hfrob
  have hAτ : A.map ((σ.restrictNormal L : L ≃ₐ[K] L) : L →+* L) = shortModel (⟨ELL.j ((ellMulAction (algebraMap K ℂ) hK).smul (primeClass 𝔭) x₀), hL _⟩ : L) := by
    rw [hAdef, shortModel_map]
    congr 1
    exact hτj x₀

  have hφex : ∃ φ : Isogeny A (A.map ((σ.restrictNormal L : L ≃ₐ[K] L) : L →+* L)),
      (homConstSet (A.baseChange ℂ) ((A.map ((σ.restrictNormal L : L ≃ₐ[K] L) : L →+* L)).baseChange ℂ) :
        Set ℂ) = (algebraMap L ℂ (invConst φ) * ·) ''
          idealLattice (algebraMap K ℂ) (𝔭.asIdeal : FractionalIdeal (𝓞 K)⁰ K)⁻¹ := by
    obtain ⟨φ, hφ, -⟩ := exists_isogeny_primeClass_smul hK (fun x ↦ shortModel (⟨ELL.j x, hL x⟩ : L))
      hE hiso 𝔭 x₀
    exact exists_isogeny_homConstSet_congr hAdef.symm hAτ.symm ⟨φ, hφ⟩
  obtain ⟨φ, hφ⟩ := hφex
  have hEA : Nonempty (isogEnd (A.baseChange ℂ) ≃+* 𝓞 K) :=
    nonempty_isogEnd_congr hAdef.symm (hE x₀).1
  have hEA' : Nonempty (isogEnd ((A.map ((σ.restrictNormal L : L ≃ₐ[K] L) : L →+* L)).baseChange ℂ) ≃+*
      𝓞 K) :=
    nonempty_isogEnd_congr hAτ.symm (hE _).1

  obtain ⟨W, hW, hWA, ha₄, ha₆⟩ := hS₁p 𝔭 h𝔭S₁ 𝔓 hlies
  have : W.IsShortNF := by
    have hinj : Function.Injective (algebraMap (localizationAt L 𝔓) L) := Subtype.val_injective
    refine ⟨hinj ?_, hinj ?_, hinj ?_⟩ <;> rw [map_zero]
    · rw [← a₁_of_isShortNF A, ← hWA]; rfl
    · rw [← a₂_of_isShortNF A, ← hWA]; rfl
    · rw [← a₃_of_isShortNF A, ← hWA]; rfl

  obtain ⟨D, hD, hDφ⟩ := exists_vcPoint_pointHomOver_eq hK 𝔭 hv h5 𝔓 hfrob hEA hEA' φ hφ hWA ha₄ ha₆
    hζL' hm𝔭

  obtain ⟨x, hx⟩ := exists_diagonal_of_isArithFrobAt m hm σ s hs 𝔭 hm𝔭 L hM₂L 𝔓 hfrob

  have hL₂ := lattice_idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞)
  have hL₂end := latticeEnd_idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞)
  have hsmul := classGroup_smul_ellOf (algebraMap K ℂ) hK _ _ hL₁end hL₂end (primeIdealUnit 𝔭)
    (by rw [hL₂, hL₁, Units.val_mul, idealLattice_mul])
  have hcl : primeClass 𝔭 = ClassGroup.mk K (primeIdealUnit 𝔭) := by
    rw [primeClass, ← classGroup_mk_primeUnit]
    rfl
  have hyL₂ : (ellMulAction (algebraMap K ℂ) hK).smul (primeClass 𝔭) x₀ =
      ellOf (algebraMap K ℂ) _ hL₂end := by
    rw [hcl, hx₀ell, hsmul]
  have hjV' : (weierstrassCurve (idealPeriodPair (algebraMap K ℂ) hK ((primeIdealUnit 𝔭)⁻¹ * 𝔞))).j =
      ((A.map ((σ.restrictNormal L : L ≃ₐ[K] L) : L →+* L)).baseChange ℂ).j := by
    rw [j_congr (congrArg (fun B : WeierstrassCurve L ↦ B.baseChange ℂ) hAτ)]
    show _ = ((shortModel (⟨ELL.j ((ellMulAction (algebraMap K ℂ) hK).smul (primeClass 𝔭) x₀), hL _⟩ : L)).map (algebraMap L ℂ)).j
    rw [map_j, shortModel_j]
    show _ = ELL.j ((ellMulAction (algebraMap K ℂ) hK).smul (primeClass 𝔭) x₀)
    set_option backward.isDefEq.respectTransparency false in
      rw [hyL₂, ellOf, ELL.j_toEll]
    exact j_congr rfl
  obtain ⟨V', hV'⟩ := exists_variableChange_of_j_eq _ _ hjV'
  exact exists_uniformization_of_data hK σ s 𝔞 hf (σ.restrictNormal L) hτσ V₀ hV₀ htors 𝔭 x
    (hx 𝔞).1 (hx 𝔞).2 φ hφ D hD hDφ V' hV'

end

end Elliptic
end GroundTheory.Global
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.GlobalFields.ComplexMultiplication.MainTheoremLevel =====
