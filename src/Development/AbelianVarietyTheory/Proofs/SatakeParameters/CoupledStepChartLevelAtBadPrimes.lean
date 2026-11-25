module

public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff
public import Formalism.LocalToGlobal.Columns.QthExistsBound
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SmulCompSmul
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLevelGroupModTypePrime
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TameHeckeCharLocalEqInvTypeCharacter
public import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BlockDetResidueCharEqOneOfCongModQ
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemParahoricOfTrivialReduction
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.RedPEqZeroOfDiv
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjExtendPrincipalCongruenceCongOneModQ
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemIntegralGLPrincipalCongruenceOfColsCong
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemParahoricOfCongOneModQ
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RowCharacterIdAddQSmulLatticePreservingEqOne
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
import Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FieldIsoMatrixCongruenceAutomorphismCongruence, Development.AbelianVarietyTheory.Proofs.SatakeParameters.RationalApproximationsDifferByCongruentToOne, Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoupledStepChartLevelAtBadPrimes

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FieldIsoMatrixCongruenceAutomorphismCongruence =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.FieldIsoMatrixCongruenceAutomorphismCongruence", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker GlobalTheory.TwU

noncomputable section

namespace GlobalTheory.SeamCong

theorem qOf_seamP {D : D7} {X : Fields} (s : Seam D X) (P : HeightOneSpectrum (𝓞 X.E)) : qOf (seamP s P) = qOf P := by
  have hI : (seamP s P).asIdeal = P.asIdeal.map (RingOfIntegers.mapRingEquiv s.iE) := by
    ext y
    rw [← (RingOfIntegers.mapRingEquiv s.iE).apply_symm_apply y, mem_seamP, Ideal.mem_map_of_equiv]
    constructor
    · intro hy; exact ⟨_, hy, rfl⟩
    · rintro ⟨z, hz, e⟩
      rw [(RingOfIntegers.mapRingEquiv s.iE).injective e] at hz
      exact hz
  unfold qOf
  rw [Ideal.absNorm_apply, Ideal.absNorm_apply, Submodule.cardQuot_apply, Submodule.cardQuot_apply]
  exact (Nat.card_congr (Ideal.quotientEquiv P.asIdeal (seamP s P).asIdeal (RingOfIntegers.mapRingEquiv s.iE) hI).toEquiv).symm

theorem intAt_seamP_iff {D : D7} {X : Fields} (s : Seam D X) (P : HeightOneSpectrum (𝓞 X.E)) (e : X.E) :
    IntAt (seamP s P) (s.iE e) ↔ IntAt P e := by
  have hc : ∀ y : 𝓞 X.E, algebraMap (𝓞 D.host.E) D.host.E (RingOfIntegers.mapRingEquiv s.iE y) = s.iE (algebraMap (𝓞 X.E) X.E y) :=
    fun y => rfl
  constructor
  · rintro ⟨r, c, hc', h⟩
    refine ⟨(RingOfIntegers.mapRingEquiv s.iE).symm r, (RingOfIntegers.mapRingEquiv s.iE).symm c, ?_, ?_⟩
    · rw [← mem_seamP s, RingEquiv.apply_symm_apply]; exact hc'
    · apply s.iE.injective
      rw [map_mul, ← hc, ← hc, RingEquiv.apply_symm_apply, RingEquiv.apply_symm_apply]
      exact h
  · rintro ⟨r, c, hc', h⟩
    refine ⟨RingOfIntegers.mapRingEquiv s.iE r, RingOfIntegers.mapRingEquiv s.iE c, ?_, ?_⟩
    · rw [mem_seamP s]; exact hc'
    · rw [hc, hc, ← map_mul, h]

theorem cong_seam {D : D7} {X : Fields} (s : Seam D X) {N : ℕ} (P : HeightOneSpectrum (𝓞 X.E)) (n : ℕ)
    (g : Sp X.E N ≃ₗ[X.E] Sp X.E N)
    (h : ∀ a b, IntAt (seamP s P) ((((qOf (seamP s P) : ℕ) : D.host.E) ^ n)⁻¹ *
      (((seamGL s g : GL (Fin N) D.host.E) : Matrix (Fin N) (Fin N) D.host.E) - 1) a b)) :
    ∀ s' l, IntAt P (((qOf P : X.E) ^ n)⁻¹ * (g (Pi.single s' (1 : X.E)) l - (Pi.single s' (1 : X.E) : Sp X.E N) l)) := by
  intro s' l
  have h1 := h l s'
  have hM : ((seamGL s g : GL (Fin N) D.host.E) : Matrix (Fin N) (Fin N) D.host.E) =
      (LinearMap.toMatrix' g.toLinearMap).map (s.iE : X.E →+* D.host.E) := rfl
  rw [← intAt_seamP_iff s P]
  have e : s.iE (((qOf P : X.E) ^ n)⁻¹ * (g (Pi.single s' (1 : X.E)) l - (Pi.single s' (1 : X.E) : Sp X.E N) l)) =
      (((qOf (seamP s P) : ℕ) : D.host.E) ^ n)⁻¹ *
      (((seamGL s g : GL (Fin N) D.host.E) : Matrix (Fin N) (Fin N) D.host.E) - 1) l s' := by
    rw [hM, qOf_seamP, Matrix.sub_apply, Matrix.map_apply, LinearMap.toMatrix'_apply, map_mul, map_inv₀, map_pow,
      map_natCast, map_sub, Matrix.one_apply, Pi.single_apply]
    split_ifs <;> simp
  rw [e]
  exact h1

end GlobalTheory.SeamCong
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.FieldIsoMatrixCongruenceAutomorphismCongruence =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.RationalApproximationsDifferByCongruentToOne =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.RationalApproximationsDifferByCongruentToOne", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\nimport Formalism.LocalRingCardinality.SpanPowerMembership.LocAtA\npublic import Formalism.LocalToGlobal.Columns.QthExistsBound\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.TwU.CongTwo

open NumberField IsDedekindDomain Matrix Formalism.L2.Col
open scoped TensorProduct

theorem val_cong_of_mul_eq {K Γ : Type} [Field K] [LinearOrderedCommGroupWithZero Γ] (v : Valuation K Γ) {ι : Type} [Fintype ι]
    [DecidableEq ι] {c : K} (hc0 : c ≠ 0) (hc : v c < 1) {A B H : Matrix ι ι K}
    (hA : ∀ i j, v (c⁻¹ * (A - 1) i j) ≤ 1) (hB : ∀ i j, v (c⁻¹ * (B - 1) i j) ≤ 1) (hAH : A * H = B) (i j : ι) :
    v (c⁻¹ * (H - 1) i j) ≤ 1 := by
  let S := v.integer
  let A0 : Matrix ι ι S := fun k l => ⟨c⁻¹ * (A - 1) k l, hA k l⟩
  let cS : S := ⟨c, hc.le⟩
  let AS : Matrix ι ι S := 1 + cS • A0
  have hAS : AS.map S.subtype = A := by
    ext k l
    show (((1 : Matrix ι ι S) k l : S) : K) + c * (c⁻¹ * (A - 1) k l) = A k l
    rw [← mul_assoc, mul_inv_cancel₀ hc0, one_mul, Matrix.sub_apply]
    by_cases h : k = l
    · subst h; simp
    · simp [Matrix.one_apply_ne h]
  have hdet : ∃ y : S, AS.det - 1 = y * cS := by
    let π := Ideal.Quotient.mk (Ideal.span {cS})
    have hπc : π cS = 0 := Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_span_singleton_self _)
    have hπ : π.mapMatrix AS = 1 := by
      ext k l
      simp only [AS, RingHom.mapMatrix_apply, Matrix.map_apply, Matrix.add_apply, Matrix.smul_apply, smul_eq_mul, map_add (f := _), map_mul, hπc,
        zero_mul, add_zero]
      rw [Matrix.one_apply, Matrix.one_apply]
      split_ifs <;> simp
    have h1 : π AS.det = π 1 := by rw [RingHom.map_det, hπ, Matrix.det_one, map_one]
    exact Ideal.mem_span_singleton'.1 (Ideal.Quotient.eq.1 h1) |>.imp fun y hy => hy.symm
  obtain ⟨y, hy⟩ := hdet
  have hdA : A.det = (AS.det : K) := by
    rw [← hAS]
    exact (RingHom.map_det S.subtype AS).symm
  have hv1 : v A.det = 1 := by
    have e : A.det = 1 + (y : K) * c := by
      rw [hdA]
      have : ((AS.det - 1 : S) : K) = ((y * cS : S) : K) := congrArg Subtype.val hy
      push_cast at this
      linear_combination this
    rw [e]
    apply Valuation.map_one_add_of_lt
    rw [map_mul]
    calc v (y : K) * v c ≤ 1 * v c := mul_le_mul' y.2 le_rfl
      _ = v c := one_mul _
      _ < 1 := hc
  have hdet0 : A.det ≠ 0 := fun h => by rw [h, map_zero] at hv1; exact zero_ne_one hv1
  have hMA : A⁻¹ * A = 1 := Matrix.nonsing_inv_mul A (isUnit_iff_ne_zero.2 hdet0)
  have hH : H - 1 = A⁻¹ * (B - A) := by
    rw [Matrix.mul_sub, ← hAH, ← Matrix.mul_assoc, hMA, Matrix.one_mul]
  have hinv : ∀ k l, v ((A⁻¹) k l) ≤ 1 := by
    intro k l
    have hadj : A.adjugate = AS.adjugate.map S.subtype := by
      rw [← hAS]
      exact (RingHom.map_adjugate S.subtype AS).symm
    rw [Matrix.inv_def, Matrix.smul_apply, smul_eq_mul, Ring.inverse_eq_inv', map_mul, map_inv₀, hv1, inv_one, one_mul,
      hadj, Matrix.map_apply]
    exact (AS.adjugate k l).2
  have e : c⁻¹ * (H - 1) i j = ∑ k, A⁻¹ i k * (c⁻¹ * (B - 1) k j - c⁻¹ * (A - 1) k j) := by
    rw [hH, Matrix.mul_apply, Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    simp only [Matrix.sub_apply]
    ring
  rw [e]
  exact Subring.sum_mem S fun k _ => Subring.mul_mem S (hinv i k) (Subring.sub_mem S (hB k j) (hA k j))

end GlobalTheory.TwU.CongTwo

namespace GlobalTheory.TwU.CongTwo

open NumberField IsDedekindDomain Matrix Formalism.L2.Col
open Formalism.L2.DIV (AfE)
open scoped TensorProduct

theorem intAt_inv_mul_of_nearAt {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {N : ℕ}
    (P : HeightOneSpectrum (𝓞 E)) (n : ℕ) (x : GL (Fin N) (E ⊗[F] FiniteAdeleRing (𝓞 F) F)) (g₁ g₂ : GL (Fin N) E) :
    0 < n → NearAt P n x g₁ → NearAt P n x g₂ → ∀ a b : Fin N,
      IntAt P ((((qOf P : ℕ) : E) ^ n)⁻¹ * (((g₁⁻¹ * g₂ : GL (Fin N) E) : Matrix (Fin N) (Fin N) E) - 1) a b) := by
  intro hn h1 h2 a b
  obtain ⟨ι, hι⟩ := exists_isAdIso F E
  let φ : AfE F E →+* P.adicCompletion E :=
    { toFun := fun z => ι z P
      map_one' := by rw [map_one]; rfl
      map_mul' := fun x y => by rw [map_mul]; rfl
      map_zero' := by rw [map_zero]; rfl
      map_add' := fun x y => by rw [map_add (f := _)]; rfl }
  have hφ : ∀ e : E, φ (iA F E e) = algebraMap E (P.adicCompletion E) e := fun e => by
    show ι (iA F E e) P = _
    rw [show ι (iA F E e) = algebraMap E _ e from hι.1 e]; rfl
  have hq0 : ((qOf P : ℕ) : E) ≠ 0 := by
    have : qOf P ≠ 0 := fun h0 => P.ne_bot (Ideal.absNorm_eq_zero_iff.1 h0)
    exact_mod_cast this
  have hqv : Valued.v (algebraMap E (P.adicCompletion E) ((qOf P : ℕ) : E)) < 1 := by
    show Valued.v (((((qOf P : ℕ) : E)) : P.adicCompletion E)) < 1
    rw [HeightOneSpectrum.valuedAdicCompletion_eq_valuation', ← map_natCast (algebraMap (𝓞 E) E),
      HeightOneSpectrum.valuation_of_algebraMap]
    exact (HeightOneSpectrum.intValuation_lt_one_iff_mem _ _).2 (Ideal.absNorm_mem _)
  set c : P.adicCompletion E := algebraMap E (P.adicCompletion E) ((((qOf P : ℕ) : E)) ^ n) with hc
  have hc0 : c ≠ 0 := (map_ne_zero _).2 (pow_ne_zero _ hq0)
  have hcv : Valued.v c < 1 := by
    rw [hc, map_pow, map_pow]
    exact pow_lt_one' hqv (Nat.pos_iff_ne_zero.1 hn)
  have h1apply : ∀ k l : Fin N, φ ((1 : Matrix (Fin N) (Fin N) (AfE F E)) k l) = (1 : Matrix (Fin N) (Fin N) (P.adicCompletion E)) k l := by
    intro k l
    rw [Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp
  have htr : ∀ g : GL (Fin N) E, NearAt P n x g → ∀ k l,
      Valued.v (c⁻¹ * ((((x⁻¹ * ratA F g : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)).map φ) - 1) k l) ≤ 1 := by
    intro g hg k l
    have h := hι.val_le (hg k l)
    have e : ι (iA F E (((qOf P : ℕ) : E) ^ n)⁻¹ * (((x⁻¹ * ratA F g : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)) - 1) k l) P =
        c⁻¹ * ((((x⁻¹ * ratA F g : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)).map φ) - 1) k l := by
      show φ _ = _
      rw [map_mul, hφ, map_inv₀, Matrix.sub_apply, Matrix.sub_apply, map_sub, h1apply, Matrix.map_apply]
    rw [e] at h
    exact h
  have hrat : ∀ g : GL (Fin N) E, ((ratA F g : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)).map φ =
      (g : Matrix (Fin N) (Fin N) E).map (algebraMap E (P.adicCompletion E)) := by
    intro g
    exact Matrix.ext fun k l => hφ _
  have hmul : (((x⁻¹ * ratA F g₁ : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)).map φ) *
      ((g₁⁻¹ * g₂ : GL (Fin N) E) : Matrix (Fin N) (Fin N) E).map (algebraMap E (P.adicCompletion E)) =
      (((x⁻¹ * ratA F g₂ : GL (Fin N) (AfE F E)) : Matrix (Fin N) (Fin N) (AfE F E)).map φ) := by
    rw [← hrat, ← Matrix.map_mul, ← Units.val_mul]
    congr 2
    rw [map_mul, map_inv]
    group
  have key := val_cong_of_mul_eq Valued.v hc0 hcv (htr g₁ h1) (htr g₂ h2) hmul a b
  have e2 : c⁻¹ * (((g₁⁻¹ * g₂ : GL (Fin N) E) : Matrix (Fin N) (Fin N) E).map (algebraMap E (P.adicCompletion E)) - 1) a b =
      algebraMap E (P.adicCompletion E) ((((qOf P : ℕ) : E) ^ n)⁻¹ * (((g₁⁻¹ * g₂ : GL (Fin N) E) : Matrix (Fin N) (Fin N) E) - 1) a b) := by
    rw [map_mul, map_inv₀, Matrix.sub_apply, Matrix.sub_apply, map_sub, Matrix.map_apply]
    congr 2
    rw [Matrix.one_apply, Matrix.one_apply]
    split_ifs <;> simp
  rw [e2] at key
  letI : StarRing E := starRingOfComm
  rw [qth_intAt_iff]
  rw [← HeightOneSpectrum.valuedAdicCompletion_eq_valuation']
  exact key

end GlobalTheory.TwU.CongTwo
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.RationalApproximationsDifferByCongruentToOne =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoupledStepChartLevelAtBadPrimes =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoupledStepChartLevelAtBadPrimes", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.UnderTie\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.SmulCompSmul\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsLevelGroupModTypePrime\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TameHeckeCharLocalEqInvTypeCharacter\npublic import Formalism.LocalToGlobal.Columns.FiniteSumNonzeroLargeDepth\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.BlockDetResidueCharEqOneOfCongModQ\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemParahoricOfTrivialReduction\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.RedPEqZeroOfDiv\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ConjExtendPrincipalCongruenceCongOneModQ\npublic import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.ExistsMidLevIff\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.FieldIsoMatrixCongruenceAutomorphismCongruence\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemIntegralGLPrincipalCongruenceOfColsCong\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.MemParahoricOfCongOneModQ\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RationalApproximationsDifferByCongruentToOne\npublic import Development.AbelianVarietyTheory.Proofs.SatakeParameters.RowCharacterIdAddQSmulLatticePreservingEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open scoped TensorProduct
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV

noncomputable section

namespace GlobalTheory.CplLev

section Cong1

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.DIV Formalism.L2.Col

theorem cong_mem_level_chr_one : ∀ {X : Fields} {Pr : Primes X} {R : Ranks} (Ch : Chars X Pr R.m) (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E))
    {S : Set ℕ} (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))) (G : ChGlob X R.m) (m2 : ℕ),
    X.AbelianUnramifiedExtensionConditions → Pr.Ok → L.Ok Ch sel mu cst G m2 → ∀ (j : ℕ), j ≤ m2 + 1 → ∀ (b : L.β j) (P : rowSG Pr sel mu)
    (k : Sp X.E (R.N j) ≃ₗ[X.E] Sp X.E (R.N j)),
    (∀ s l, IntAt P.1 (((qOf P.1 : X.E) ^ cst.D P)⁻¹ * (k (Pi.single s (1 : X.E)) l - (Pi.single s (1 : X.E) : Sp X.E (R.N j)) l))) →
    ∃ r ∈ Loc.Cbe (Jat (Pr := Pr) cst.sharp j P.1) (L.h j b P),
      (∀ x, r (Loc.inX X.E (R.N j) (cOf R j) x) = Loc.inX X.E (R.N j) (cOf R j) (k x)) ∧ chiInv Ch sel mu cst j P (L.h j b P) r = 1 := by
  intro X Pr R Ch sel S mu cst L G m2 hX hPr hL j hj b P k hk
  classical
  obtain ⟨hkG, hkC⟩ := _root_.GlobalTheory.CongOne.mem_glint_prinCong_of_cols P.1 (cst.D P) k (hL.cst_ok.D_pos P) hk
  set κ : GLint X.E (R.N j) P.1 := ⟨k, hkG⟩ with hκdef
  have hψ : cst.psi P (Loc.n1Arg (GlobalTheory.CongLevel.extE (cOf R j) k)) = 1 := by
    rw [GlobalTheory.Mem.Col2.LevMod.unipotentArg_extendByIdOnLastCoords]
    exact hL.cst_ok.psi_int P 0 (by simpa using GlobalTheory.CongLevel.intAt_nat P.1 0)
  have hq : ((qOf P.1 : ℕ) : X.E) ≠ 0 := GlobalTheory.TopStep.qOf_ne_zero
  by_cases hP : P.1 ∈ Pr.vGs
  · have hD1 : cst.D P = 1 := hL.depthG P hP
    have hdu := GlobalTheory.Mem.Col2.degOneUnram_of_mem_vGs hX.ok hPr hP
    have hd : ∀ a : X.E, IntAt P.1 a → redP P.1 a = 0 → IntAt P.1 (a / (qOf P.1 : X.E)) :=
      fun a ha h0 => GlobalTheory.TopStep.intAt_div_of_redP hdu.2 ha h0
    have hred : ∀ x ∈ stdAt X.E (R.N j) P.1, redV P.1 (k x) = redV P.1 x := by
      have h1 := GlobalTheory.TopStep.redGL_of_prinCong (by omega : 0 < cst.D P) hkC
      intro x hx
      have h2 := GlobalTheory.TopStep.redV_redGL κ hx
      rw [h1, Units.val_one, Matrix.one_mulVec] at h2
      exact h2
    have hh := hL.stabG j b P hP
    refine ⟨GlobalTheory.CongLevel.extE (cOf R j) k, GlobalTheory.Mem.Col2.LevMod.extE_mem_Cbe cst.sharp j P.1 hP hd (L.h j b P) hh k hkG hred, GlobalTheory.CongLevel.extE_inX _ k, ?_⟩
    have hh' := hh
    unfold lamYat at hh'
    rw [if_pos hP] at hh'
    have hcong := GlobalTheory.CongLevel.conj_cong (qOf P.1) _ _ (L.h j b P) hh'
      (GlobalTheory.CongLevel.extE_cong P.1 (qOf P.1) (cOf R j) (fun i => i + 1) hd k hkG hred)
    have h1 := _root_.GlobalTheory.LamRowCong.lamRow_one_add_q Ch mu cst.sharp j P.1 hP ((qOf P.1 : X.E)⁻¹ •
      (((L.h j b P)⁻¹ * GlobalTheory.CongLevel.extE (cOf R j) k * L.h j b P : AutY X R j).toLinearMap - LinearMap.id))
      fun x hx => by
        have hx' := hx
        unfold lamYat at hx' ⊢
        rw [if_pos hP] at hx' ⊢
        have h2 := hcong x hx'
        rw [LinearMap.smul_apply, LinearMap.sub_apply, LinearMap.id_apply, LinearEquiv.coe_coe]
        exact h2
    rw [smul_inv_smul₀ hq, add_sub_cancel] at h1
    unfold chiInv
    rw [h1, hψ, inv_one, one_mul]
  · have hstd : ∀ x, x ∈ lamYat (Pr := Pr) (R := R) j P.1 ↔ x ∈ stdAt X.E (R.N j + cOf R j) P.1 := by
      intro x
      unfold lamYat
      rw [if_neg hP]
      unfold LocE.lamY
      rw [GlobalTheory.CongLevel.mem_sclLat, GlobalTheory.TopStep.mem_stdAt]
      simp only [LocE.scE, Pi.zero_apply, Nat.cast_zero, ite_self, zpow_zero, inv_one, one_mul]
    have hbd := hL.boundQ j b P hP
    have hbd' : ∀ x ∈ stdAt X.E (R.N j + cOf R j) P.1, (L.h j b P)⁻¹ x ∈ stdAt X.E (R.N j + cOf R j) P.1 ∧
        ((qOf P.1 : X.E) ^ j) • (L.h j b P) x ∈ stdAt X.E (R.N j + cOf R j) P.1 := fun x hx => by
      have h1 := hbd x ((hstd x).2 hx)
      exact ⟨(hstd _).1 h1.1, (hstd _).1 h1.2⟩
    have hjD : j + 1 ≤ cst.D P := by
      have h1 := hL.depthQ' P hP
      have h2 := hL.hm
      omega
    have hg := _root_.GlobalTheory.QCong.conj_extE_cong P.1 (cOf R j) j (cst.D P) (L.h j b P) κ hkC hjD hbd'
    have hginv := _root_.GlobalTheory.QCong.conj_extE_cong P.1 (cOf R j) j (cst.D P) (L.h j b P) κ⁻¹ (inv_mem hkC) hjD hbd'
    have einv : ((L.h j b P)⁻¹ * GlobalTheory.CongLevel.extE (cOf R j) κ.1 * L.h j b P)⁻¹ =
        (L.h j b P)⁻¹ * GlobalTheory.CongLevel.extE (cOf R j) (κ⁻¹).1 * L.h j b P := by
      rw [mul_inv_rev, mul_inv_rev, inv_inv, GlobalTheory.CongLevel.extE_inv, mul_assoc]
      rfl
    refine ⟨GlobalTheory.CongLevel.extE (cOf R j) k, ⟨GlobalTheory.CongLevel.extendByIdOnLastCoordsLinearEquiv_mem_firstRowGroup _ k, ?_⟩, GlobalTheory.CongLevel.extE_inX _ k, ?_⟩
    · have e : (MulAut.conj (L.h j b P)⁻¹).toMonoidHom (GlobalTheory.CongLevel.extE (cOf R j) k) =
          (L.h j b P)⁻¹ * GlobalTheory.CongLevel.extE (cOf R j) k * L.h j b P := by simp
      show (MulAut.conj (L.h j b P)⁻¹).toMonoidHom (GlobalTheory.CongLevel.extE (cOf R j) k) ∈ Jat (Pr := Pr) cst.sharp j P.1
      rw [e]
      unfold Jat
      rw [if_neg hP]
      refine _root_.GlobalTheory.ParahoricOfCong.mem_JQ_of_cong P.1 (R.k + j) (R.N j) (cOf R j) _ hg ?_
      rw [einv]
      exact hginv
    · unfold chiInv
      rw [hψ, inv_one, one_mul]
      unfold lamRow
      rw [if_neg hP]
      exact _root_.GlobalTheory.LamQBCong.lamQB_eq_one_of_cong P.1 _ (R.k + j) (R.N j) (R.N j + cOf R j) _ (by omega) hg

end Cong1

section Lift

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col GlobalTheory.TopLaw

variable {X : Fields} {Pr : Primes X} {R : Ranks} {Ch : Chars X Pr R.m}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ} {mu : Tup X.F X.E X.K S}
  {cst : LocCst X (rowSG Pr sel mu)} {L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))} {G : ChGlob X R.m} {m2 : ℕ}

theorem levAt_mul {n : ℕ} {Λ : LevFam X.E X.K n Pr.vGs} {Θ : LevQFam X.E X.K n (QE sel (mu : Chr X.F X.E X.K))} {P : rowSG Pr sel mu}
    {κ κ₂ : GLint X.E n P.1} {c c₂ : X.Kˣ} (h : LevAt Λ Θ P κ c) (h₂ : LevAt Λ Θ P κ₂ c₂) : LevAt Λ Θ P (κ * κ₂) (c * c₂) := by
  refine ⟨fun hP => ?_, fun hQ hP => ?_⟩
  · obtain ⟨h1, e1⟩ := h.1 hP
    obtain ⟨h2, e2⟩ := h₂.1 hP
    refine ⟨by rw [map_mul]; exact mul_mem h1 h2, ?_⟩
    rw [e1, e2, ← map_mul]
    exact congrArg _ (Subtype.ext (map_mul _ _ _).symm)
  · obtain ⟨h1, e1⟩ := h.2 hQ hP
    obtain ⟨h2, e2⟩ := h₂.2 hQ hP
    exact ⟨mul_mem h1 h2, by rw [e1, e2, ← map_mul]; rfl⟩

theorem levAt_of_lift (hL : L.Ok Ch sel mu cst G m2) {j : ℕ} (b : L.β j) (P : rowSG Pr sel mu) (κ : GLint X.E (R.N j) P.1)
    (r : AutY X R j) (hr : r ∈ Loc.Cbe (Jat (Pr := Pr) cst.sharp j P.1) (L.h j b P))
    (hrx : ∀ x, r (Loc.inX X.E (R.N j) (cOf R j) x) = Loc.inX X.E (R.N j) (cOf R j) (κ.1 x)) :
    ∃ c : X.Kˣ, LevAt (L.levG j b) (L.levQ j b) P κ c ∧ (c : X.K) = chiInv Ch sel mu cst j P (L.h j b P) r := by
  by_cases hP : P.1 ∈ Pr.vGs
  · have hmem : GlobalTheory.TopStep.redGL _ P.1 κ ∈ (L.levG j b ⟨P.1, hP⟩).H :=
      (hL.grpG j b ⟨P.1, hP⟩ _).2 ⟨κ.1, ⟨r, hr, hrx⟩, fun x hx => GlobalTheory.TopStep.redV_redGL κ hx⟩
    refine ⟨(L.levG j b ⟨P.1, hP⟩).lam ⟨_, hmem⟩, ⟨fun hP' => ⟨hmem, rfl⟩, fun _ hP' => absurd hP hP'⟩, ?_⟩
    exact hL.chrG j b ⟨P.1, hP⟩ ⟨_, hmem⟩ κ.1 r hr hrx fun x hx => GlobalTheory.TopStep.redV_redGL κ hx
  · have hQ := (@Finset.mem_union _ (Classical.decEq _) _ _ _).1 P.2 |>.resolve_left hP
    have hmem : κ ∈ (L.levQ j b ⟨P.1, hQ⟩).H := by
      rw [hL.grpQ, Subgroup.mem_subgroupOf]
      exact ⟨r, hr, hrx⟩
    refine ⟨(L.levQ j b ⟨P.1, hQ⟩).lam ⟨κ, hmem⟩, ⟨fun hP' => absurd hP' hP, fun _ _ => ⟨hmem, rfl⟩⟩, ?_⟩
    exact hL.chrQ j b ⟨P.1, hQ⟩ ⟨κ, hmem⟩ r hr hrx

end Lift

section Main

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.Ker Formalism.L2.DIV GlobalTheory.TwU GlobalTheory.TwV

theorem levAt_cpl : UnderTie (fun {D L hT Gi Gl Kc Y cX ex t u μ St} A dtU a => ∀ (β' : (St (t.m2 + 1) (cpl_lt t μ).le).Ch)
    (κ' : ((St (t.m2 + 1) (cpl_lt t μ).le).K β').lev.U) (κ'' : GLQ t.X.E (D.R.N (t.m2 + 1)) (SB t μ)),
    (∀ P, InFrame t.seam (A.fb (t.m2 + 1) (cpl_lt t μ).le β') (t.cst μ).D P κ'.1 ((κ'' P)⁻¹).1) →
    ∃ c : SB t μ → t.X.Kˣ,
      (∀ P, GlobalTheory.TopLaw.LevAt ((t.idx μ).levG (t.m2 + 1) (A.ib (t.m2 + 1) (cpl_lt t μ) β'))
        ((t.idx μ).levQ (t.m2 + 1) (A.ib (t.m2 + 1) (cpl_lt t μ) β')) P (κ'' P) (c P)) ∧
      t.seam.σ₀ ((∏ P, c P : t.X.Kˣ) : t.X.K) = ((((St (t.m2 + 1) (cpl_lt t μ).le).K β').lev.chi κ' : ℂˣ) : ℂ)) := by
  intro D L hT Gi Gl Kc Y cX ex t u μ St A dtU a hPin hTie β' κ' κ'' hfr
  classical
  have hL := t.idx_ok μ
  have hC := hTie.levCpl β'
  have hU := (((St (t.m2 + 1) (cpl_lt t μ).le).K β').lev.U_eq κ'.1).1 κ'.2
  have hov : ∀ P : SB t μ, IsOver (HeightOneSpectrum.under (𝓞 D.host.F) (seamP t.seam P.1)) (seamP t.seam P.1) := by
    intro P
    unfold IsOver
    rw [HeightOneSpectrum.under_asIdeal]
  choose g zz hg using fun P : SB t μ => hC.1 P _ (hov P) κ'.1 hU.1 (hU.2 _)
  have hchi := hC.2.2 κ' g zz hg
  have key : ∀ P : SB t μ, ∃ c : t.X.Kˣ, GlobalTheory.TopLaw.LevAt ((t.idx μ).levG (t.m2 + 1) (A.ib (t.m2 + 1) (cpl_lt t μ) β'))
      ((t.idx μ).levQ (t.m2 + 1) (A.ib (t.m2 + 1) (cpl_lt t μ) β')) P (κ'' P)⁻¹ c ∧ (c : t.X.K) = zz P := by
    intro P
    obtain ⟨⟨r, hr, hrx, hz⟩, -⟩ := (hg P).1
    have hgint : g P ∈ GLint t.X.E (D.R.N (t.m2 + 1)) P.1 := hL.int _ _ P ⟨r, hr, hrx⟩
    set κg : GLint t.X.E (D.R.N (t.m2 + 1)) P.1 := ⟨g P, hgint⟩ with hκg
    set k : GLint t.X.E (D.R.N (t.m2 + 1)) P.1 := κg⁻¹ * (κ'' P)⁻¹ with hk
    have hcg := _root_.GlobalTheory.TwU.CongTwo.intAt_inv_mul_of_nearAt (seamP t.seam P.1) ((t.cst μ).D P) _ _ _ (hL.cst_ok.D_pos P) (hg P).2 (hfr P)
    rw [← map_inv, ← map_mul] at hcg
    have hk1 := _root_.GlobalTheory.SeamCong.cong_seam t.seam P.1 ((t.cst μ).D P) k.1 hcg
    obtain ⟨rk, hrk, hrkx, hchik⟩ := cong_mem_level_chr_one t.Ch t.sel (t.tup μ) (t.cst μ) (t.idx μ) t.glob t.m2 hPin.fields t.pr_ok hL
      (t.m2 + 1) le_rfl (A.ib (t.m2 + 1) (cpl_lt t μ) β') P k.1 hk1
    obtain ⟨c1, hl1, hc1⟩ := levAt_of_lift hL (A.ib (t.m2 + 1) (cpl_lt t μ) β') P κg r hr hrx
    obtain ⟨c2, hl2, hc2⟩ := levAt_of_lift hL (A.ib (t.m2 + 1) (cpl_lt t μ) β') P k rk hrk hrkx
    have e : κg * k = (κ'' P)⁻¹ := by rw [hk, mul_inv_cancel_left]
    refine ⟨c1 * c2, e ▸ levAt_mul hl1 hl2, ?_⟩
    rw [Units.val_mul, hc1, hc2, hchik, mul_one, hz]
  choose c hc hcv using key
  refine ⟨fun P => (c P)⁻¹, fun P => by have h := (hc P).inv; rwa [inv_inv] at h, ?_⟩
  have e1 : ((∏ P, (c P)⁻¹ : t.X.Kˣ) : t.X.K) = (∏ P, zz P)⁻¹ := by
    rw [Units.coe_prod, ← Finset.prod_inv_distrib]
    exact Finset.prod_congr rfl fun P _ => by rw [Units.val_inv_eq_inv_val, hcv P]
  have e2 := eq_inv_of_mul_eq_one_left hchi
  have e3 : t.seam.σ₀ ((∏ P, (c P)⁻¹ : t.X.Kˣ) : t.X.K) = (t.seam.σ₀ (∏ P, zz P))⁻¹ := by
    rw [e1, map_inv₀]
  exact e3.trans e2.symm

end Main

end GlobalTheory.CplLev

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.SatakeParameters.CoupledStepChartLevelAtBadPrimes =====
