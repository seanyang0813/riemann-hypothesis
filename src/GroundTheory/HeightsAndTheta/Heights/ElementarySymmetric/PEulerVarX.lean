module

public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcSubsingletonOfBlock
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.DegZero
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AlgCechSt
public import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.IsVerticalDivOfIsVerticalDivisorAlt
public import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PHilbDegreeBound
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.CechHcSubsingletonOfBij
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechDDeg
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechMapDeg
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechSES
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SnapperComponentMulX
public import Mathlib.LinearAlgebra.Dimension.Constructions
public import Mathlib.LinearAlgebra.Dimension.Finite
public import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas
public import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechDSq
import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PQuotPartGraded
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcEqCoh, GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CohMkEqZero, GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PEulerVarX

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcEqCoh =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcEqCoh", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcSubsingletonOfBlock\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.DegZero\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AlgCechSt\npublic import GroundTheory.HeightsAndTheta.Heights.DiscreteValuationNumbers.IsVerticalDivOfIsVerticalDivisorAlt\npublic import GroundTheory.HeightsAndTheta.Heights.FieldsOfNumbers.PHilbDegreeBound\npublic import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.CechHcSubsingletonOfBij\nimport GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.PQuotPartGraded\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechDDeg\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechMapDeg\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechSES\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.SnapperComponentMulX\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry
open ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH (cechHc quotPart CechC)

noncomputable section

namespace EulerVar

variable {F : Type} [Field F] {K : Type} [Fintype K] [LinearOrder K] {ι : K → Type} [∀ k, Fintype (ι k)]
  [∀ k, LinearOrder (ι k)]

theorem quot_congr {X : Type} [AddCommGroup X] [Module F X] {Z Z' B B' : Submodule F X} (hZ : Z = Z')
    (hB : B = B') :
    Module.finrank F (↥Z ⧸ B.comap Z.subtype) = Module.finrank F (↥Z' ⧸ B'.comap Z'.subtype) ∧
      (FiniteDimensional F (↥Z ⧸ B.comap Z.subtype) ↔ FiniteDimensional F (↥Z' ⧸ B'.comap Z'.subtype)) := by
  subst hZ hB
  exact ⟨rfl, Iff.rfl⟩

theorem cechHc_eq_coh {M : Type} [AddCommGroup M] [Module (MRingOver F ι) M] [Module F M]
    [IsScalarTower F (MRingOver F ι) M] (𝓜 : (K → ℤ) → Submodule F M) (c : K → ℤ) (n : ℕ) :
    Module.finrank F (cechHc ι 𝓜 c n) = Module.finrank F (EulerSES.coh (fun n => KH.cechCc ι 𝓜 c n)
      (fun n => (KH.cechD F ι M n).restrictScalars F) n) ∧
    (FiniteDimensional F (cechHc ι 𝓜 c n) ↔ FiniteDimensional F (EulerSES.coh (fun n => KH.cechCc ι 𝓜 c n)
      (fun n => (KH.cechD F ι M n).restrictScalars F) n)) := by
  have hZ : KH.cechZc ι 𝓜 c n = EulerSES.cyc (fun n => KH.cechCc ι 𝓜 c n)
      (fun n => (KH.cechD F ι M n).restrictScalars F) n := by
    simp only [KH.cechZc, EulerSES.cyc, LinearMap.ker_restrictScalars]
  have hB : KH.cechBc ι 𝓜 c n = EulerSES.bnd (fun n => KH.cechCc ι 𝓜 c n)
      (fun n => (KH.cechD F ι M n).restrictScalars F) n := by
    cases n <;> rfl
  exact quot_congr hZ hB

theorem coh_top {M : Type} [AddCommGroup M] [Module (MRingOver F ι) M] [Module F M]
    [IsScalarTower F (MRingOver F ι) M] (𝓜 : (K → ℤ) → Submodule F M) (c : K → ℤ) :
    Subsingleton (EulerSES.coh (fun n => KH.cechCc ι 𝓜 c n) (fun n => (KH.cechD F ι M n).restrictScalars F)
      (∑ k, (Fintype.card (ι k) - 1) + 1)) := by
  have hI : ∀ I : KH.Cell K ι (∑ k, (Fintype.card (ι k) - 1) + 1), False := fun I => by
    have h1 : ∑ k, ((I.1 k).card - 1) ≤ ∑ k, (Fintype.card (ι k) - 1) :=
      Finset.sum_le_sum fun k _ => Nat.sub_le_sub_right (Finset.card_le_univ _) 1
    have := I.2.2
    omega
  refine ⟨fun a b => ?_⟩
  obtain ⟨a, rfl⟩ := Submodule.Quotient.mk_surjective _ a
  obtain ⟨b, rfl⟩ := Submodule.Quotient.mk_surjective _ b
  congr 1
  exact Subtype.ext (funext fun I => (hI I).elim)

end EulerVar



open EulerVar in
theorem EulerVar.proof (hSq : KH.CechDSqStatement) (hE : EulerSES.Statement) : EulerVar.Statement := by
  classical
  intro F _ K _ _ ι _ _ V v hV hfV hfW hfU m
  set x : MvPolynomial (Σ k, ι k) F := X v with hx
  set W := V.colon (Ideal.span {x}) with hW
  set U := V ⊔ Ideal.span {x} with hU
  set e : K → ℤ := Pi.single v.1 1 with he

  have hWV : W ≤ Submodule.comap (LinearMap.mulLeft (MvPolynomial (Σ k, ι k) F) x) V := fun p hp => by
    rw [hW, Submodule.mem_colon_span_singleton, smul_eq_mul] at hp
    rw [Submodule.mem_comap, LinearMap.mulLeft_apply, mul_comm]
    exact hp
  let g : (MvPolynomial (Σ k, ι k) F ⧸ W) →ₗ[MvPolynomial (Σ k, ι k) F] (MvPolynomial (Σ k, ι k) F ⧸ V) :=
    Submodule.mapQ W V (LinearMap.mulLeft _ x) hWV
  let h : (MvPolynomial (Σ k, ι k) F ⧸ V) →ₗ[MvPolynomial (Σ k, ι k) F] (MvPolynomial (Σ k, ι k) F ⧸ U) :=
    Submodule.factor (le_sup_left : V ≤ U)
  have hg_mk : ∀ p, g (Ideal.Quotient.mk W p) = Ideal.Quotient.mk V (x * p) := fun p => rfl
  have hh_mk : ∀ p, h (Ideal.Quotient.mk V p) = Ideal.Quotient.mk U p := fun p => rfl
  have hinj : Function.Injective g := by
    refine (injective_iff_map_eq_zero g).2 fun a ha => ?_
    obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective a
    rw [hg_mk, Ideal.Quotient.eq_zero_iff_mem] at ha
    rw [Ideal.Quotient.eq_zero_iff_mem, hW, Submodule.mem_colon_span_singleton, smul_eq_mul, mul_comm]
    exact ha
  have hsurj : Function.Surjective h := fun b => by
    obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective b
    exact ⟨Ideal.Quotient.mk V p, hh_mk p⟩
  have hex : LinearMap.range g = LinearMap.ker h := by
    ext b
    obtain ⟨q, rfl⟩ := Ideal.Quotient.mk_surjective b
    rw [LinearMap.mem_range, LinearMap.mem_ker, hh_mk, Ideal.Quotient.eq_zero_iff_mem]
    constructor
    · rintro ⟨a, ha⟩
      obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective a
      rw [hg_mk, Ideal.Quotient.eq] at ha
      have h1 : x * p ∈ U := Ideal.mem_sup_right (Ideal.mul_mem_right p _ (Ideal.subset_span rfl))
      have h2 : x * p - q ∈ U := Ideal.mem_sup_left ha
      have := U.sub_mem h1 h2
      rwa [sub_sub_cancel] at this
    · intro hq
      obtain ⟨a, ha, b, hb, rfl⟩ := Submodule.mem_sup.1 hq
      obtain ⟨r, rfl⟩ := Ideal.mem_span_singleton'.1 hb
      refine ⟨Ideal.Quotient.mk W r, ?_⟩
      rw [hg_mk, Ideal.Quotient.eq]
      have : x * r - (a + r * x) = -a := by ring
      rw [this]
      exact V.neg_mem ha

  have hVW : NumbersDVR.IsMultiHomogIdeal W := snapper_colon_X hV v
  have hVU : NumbersDVR.IsMultiHomogIdeal U :=
    FieldNumbers.isMultiHomogIdeal_sup_span hV (isWeightedHomogeneous_X F (NumbersDVR.blockWeight ι) v)
  have grV := HilbertSamuel.QuotPartGraded.proof F K ι V ((NumbersDVR.Objects.isMultiHomogIdeal_iff V).1 hV)
  have grW := HilbertSamuel.QuotPartGraded.proof F K ι W ((NumbersDVR.Objects.isMultiHomogIdeal_iff W).1 hVW)
  have grU := HilbertSamuel.QuotPartGraded.proof F K ι U ((NumbersDVR.Objects.isMultiHomogIdeal_iff U).1 hVU)
  have grW' := HilbertSamuel.H1VanishingDevissage.isMGraded_shift grW (-e)
  have hxe : IsWeightedHomogeneous (HilbertSamuel.QuotPartGraded.blockWeight ι) x e := by
    have := isWeightedHomogeneous_X F (HilbertSamuel.QuotPartGraded.blockWeight ι) v
    convert this using 1
    ext k
    simp [HilbertSamuel.QuotPartGraded.blockWeight, he, Pi.single_apply]
  have hg : KH.IsMGradedMap F ι (fun d => quotPart F W (d + -e)) (quotPart F V) g := by
    intro c y hy
    change y ∈ quotPart F W (c + -e) at hy
    rw [HilbertSamuel.QuotPartGraded.quotPart_eq] at hy ⊢
    obtain ⟨p, hp, rfl⟩ := Submodule.mem_map.1 hy
    refine Submodule.mem_map.2 ⟨x * p, ?_, rfl⟩
    rw [mem_weightedHomogeneousSubmodule]
    have hc : c = e + (c + -e) := by abel
    rw [hc]
    exact hxe.mul hp
  have hh : KH.IsMGradedMap F ι (quotPart F V) (quotPart F U) h := by
    intro c y hy
    rw [HilbertSamuel.QuotPartGraded.quotPart_eq] at hy ⊢
    obtain ⟨p, hp, rfl⟩ := Submodule.mem_map.1 hy
    exact Submodule.mem_map.2 ⟨p, hp, rfl⟩
  have hCA : ∀ n, KH.cechCc ι (fun d => quotPart F W (d + -e)) m n = KH.cechCc ι (quotPart F W) (m - e) n := by
    intro n
    rw [HilbertSamuel.H1VanishingDevissage.cechCc_shift, sub_eq_add_neg]

  have key := hE F (fun n => CechC F ι (MvPolynomial (Σ k, ι k) F ⧸ W) n)
    (fun n => CechC F ι (MvPolynomial (Σ k, ι k) F ⧸ V) n) (fun n => CechC F ι (MvPolynomial (Σ k, ι k) F ⧸ U) n)
    (fun n => KH.cechCc ι (quotPart F W) (m - e) n) (fun n => KH.cechCc ι (quotPart F V) m n)
    (fun n => KH.cechCc ι (quotPart F U) m n)
    (fun n => (KH.cechD F ι _ n).restrictScalars F) (fun n => (KH.cechD F ι _ n).restrictScalars F)
    (fun n => (KH.cechD F ι _ n).restrictScalars F)
    (fun n => (KH.cechMap F ι g n).restrictScalars F) (fun n => (KH.cechMap F ι h n).restrictScalars F)
    (∑ k, (Fintype.card (ι k) - 1))
    (fun n y hy => KHCechDDeg.full F K ι _ (quotPart F W) (m - e) n y hy)
    (fun n y hy => KHCechDDeg.full F K ι _ (quotPart F V) m n y hy)
    (fun n y hy => KHCechDDeg.full F K ι _ (quotPart F U) m n y hy)
    (fun n y _ => LinearMap.congr_fun (hSq F K ι _ n) y) (fun n y _ => LinearMap.congr_fun (hSq F K ι _ n) y)
    (fun n y _ => LinearMap.congr_fun (hSq F K ι _ n) y)
    (fun n y hy => (KHCechMapDeg.full F K ι _ _ _ _ g m n hg).1 y (by rw [hCA]; exact hy))
    (fun n y hy => (KHCechMapDeg.full F K ι _ _ _ _ h m n hh).1 y hy)
    (fun n y _ => LinearMap.congr_fun (KHCechMapDeg.full F K ι _ _ _ _ g m n hg).2 y)
    (fun n y _ => LinearMap.congr_fun (KHCechMapDeg.full F K ι _ _ _ _ h m n hh).2 y)
    (fun n y _ hy0 => KHCechSES.cechMap_injective hinj n (hy0.trans (map_zero _).symm))
    (fun n y _ => KHCechSES.cechMap_comp_eq_zero hex n y)
    (fun n y hy h0 => by
      obtain ⟨z, hz, hzy⟩ := KHCechSES.cechMap_exact grW' grV hg hinj hex hy h0
      exact ⟨z, (hCA n) ▸ hz, hzy⟩)
    (fun n y hy => KHCechSES.cechMap_lift grV grU hh hsurj hy)
    (fun n => ((cechHc_eq_coh _ _ n).2).1 (hfW (m - e) n))
    (fun n => ((cechHc_eq_coh _ _ n).2).1 (hfV m n))
    (fun n => ((cechHc_eq_coh _ _ n).2).1 (hfU m n))
    (coh_top _ _)
  have eA : ∀ n, (Module.finrank F (EulerSES.coh (fun n => KH.cechCc ι (quotPart F W) (m - e) n)
      (fun n => (KH.cechD F ι (MvPolynomial (Σ k, ι k) F ⧸ W) n).restrictScalars F) n) : ℤ) =
      Module.finrank F (cechHc ι (quotPart F W) (m - e) n) := fun n => by rw [(cechHc_eq_coh _ _ n).1]
  have eB : ∀ n, (Module.finrank F (EulerSES.coh (fun n => KH.cechCc ι (quotPart F V) m n)
      (fun n => (KH.cechD F ι (MvPolynomial (Σ k, ι k) F ⧸ V) n).restrictScalars F) n) : ℤ) =
      Module.finrank F (cechHc ι (quotPart F V) m n) := fun n => by rw [(cechHc_eq_coh _ _ n).1]
  have eC : ∀ n, (Module.finrank F (EulerSES.coh (fun n => KH.cechCc ι (quotPart F U) m n)
      (fun n => (KH.cechD F ι (MvPolynomial (Σ k, ι k) F ⧸ U) n).restrictScalars F) n) : ℤ) =
      Module.finrank F (cechHc ι (quotPart F U) m n) := fun n => by rw [(cechHc_eq_coh _ _ n).1]
  simp only [eA, eB, eC] at key
  have key' := congrArg (Int.cast : ℤ → ℚ) key
  push_cast at key'
  unfold eulerChar
  exact key'

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcEqCoh =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CohMkEqZero =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CohMkEqZero", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.DegZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Dimension.Constructions\npublic import Mathlib.LinearAlgebra.Dimension.Finite\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization

noncomputable section

namespace EulerSES

open Module

section Generic

variable {F : Type} [Field F] {X Y : ℕ → Type} [∀ n, AddCommGroup (X n)] [∀ n, Module F (X n)]
  [∀ n, AddCommGroup (Y n)] [∀ n, Module F (Y n)]

theorem mem_cyc {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)} {n : ℕ} {x : X n} :
    x ∈ cyc CX dX n ↔ x ∈ CX n ∧ dX n x = 0 := by
  simp [cyc, Submodule.mem_inf, LinearMap.mem_ker]

theorem mem_bnd_zero {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)} {x : X 0} :
    x ∈ bnd CX dX 0 ↔ x = 0 :=
  Submodule.mem_bot F

theorem mem_bnd_succ {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)} {n : ℕ} {x : X (n + 1)} :
    x ∈ bnd CX dX (n + 1) ↔ ∃ w ∈ CX n, dX n w = x :=
  Submodule.mem_map

theorem coh_mk_eq_zero {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)} {n : ℕ}
    (x : cyc CX dX n) : (Submodule.Quotient.mk x : coh CX dX n) = 0 ↔ (x : X n) ∈ bnd CX dX n :=
  Submodule.Quotient.mk_eq_zero _

theorem coh_mk_eq {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)} {n : ℕ}
    (x y : cyc CX dX n) :
    (Submodule.Quotient.mk x : coh CX dX n) = Submodule.Quotient.mk y ↔ (x : X n) - y ∈ bnd CX dX n :=
  Submodule.Quotient.eq _

theorem d_of_mem_bnd {CX : ∀ n, Submodule F (X n)} {dX : ∀ n, X n →ₗ[F] X (n + 1)}
    (hdd : ∀ n, ∀ x ∈ CX n, dX (n + 1) (dX n x) = 0) {n : ℕ} {x : X n} (hx : x ∈ bnd CX dX n) :
    dX n x = 0 := by
  rcases n with _ | n
  · rw [mem_bnd_zero.1 hx, map_zero]
  · obtain ⟨w, hw, rfl⟩ := mem_bnd_succ.1 hx
    exact hdd n w hw

variable (CX : ∀ n, Submodule F (X n)) (dX : ∀ n, X n →ₗ[F] X (n + 1))
  (CY : ∀ n, Submodule F (Y n)) (dY : ∀ n, Y n →ₗ[F] Y (n + 1)) (h : ∀ n, X n →ₗ[F] Y n)

theorem map_mem_cyc (hC : ∀ n, ∀ x ∈ CX n, h n x ∈ CY n)
    (hd : ∀ n, ∀ x ∈ CX n, dY n (h n x) = h (n + 1) (dX n x)) (n : ℕ) :
    ∀ x ∈ cyc CX dX n, h n x ∈ cyc CY dY n := by
  intro x hx
  rw [mem_cyc] at hx ⊢
  exact ⟨hC n x hx.1, by rw [hd n x hx.1, hx.2, map_zero]⟩

theorem map_mem_bnd (hC : ∀ n, ∀ x ∈ CX n, h n x ∈ CY n)
    (hd : ∀ n, ∀ x ∈ CX n, dY n (h n x) = h (n + 1) (dX n x)) (n : ℕ) :
    ∀ x ∈ bnd CX dX n, h n x ∈ bnd CY dY n := by
  intro x hx
  rcases n with _ | n
  · rw [mem_bnd_zero] at hx ⊢
    rw [hx, map_zero]
  · obtain ⟨w, hw, rfl⟩ := mem_bnd_succ.1 hx
    exact mem_bnd_succ.2 ⟨h n w, hC n w hw, hd n w hw⟩

def cohMap (hC : ∀ n, ∀ x ∈ CX n, h n x ∈ CY n)
    (hd : ∀ n, ∀ x ∈ CX n, dY n (h n x) = h (n + 1) (dX n x)) (n : ℕ) :
    coh CX dX n →ₗ[F] coh CY dY n :=
  Submodule.mapQ _ _ ((h n).restrict (map_mem_cyc CX dX CY dY h hC hd n))
    (fun x hx => map_mem_bnd CX dX CY dY h hC hd n x hx)

theorem cohMap_mk (hC : ∀ n, ∀ x ∈ CX n, h n x ∈ CY n)
    (hd : ∀ n, ∀ x ∈ CX n, dY n (h n x) = h (n + 1) (dX n x)) (n : ℕ) (x : cyc CX dX n) :
    cohMap CX dX CY dY h hC hd n (Submodule.Quotient.mk x) =
      Submodule.Quotient.mk ⟨h n x, map_mem_cyc CX dX CY dY h hC hd n x x.2⟩ :=
  rfl

end Generic

section SES

variable {F : Type} [Field F] {A B C : ℕ → Type} [∀ n, AddCommGroup (A n)] [∀ n, Module F (A n)]
  [∀ n, AddCommGroup (B n)] [∀ n, Module F (B n)] [∀ n, AddCommGroup (C n)] [∀ n, Module F (C n)]

structure IsSES (CA : ∀ n, Submodule F (A n)) (CB : ∀ n, Submodule F (B n)) (CC : ∀ n, Submodule F (C n))
    (dA : ∀ n, A n →ₗ[F] A (n + 1)) (dB : ∀ n, B n →ₗ[F] B (n + 1)) (dC : ∀ n, C n →ₗ[F] C (n + 1))
    (f : ∀ n, A n →ₗ[F] B n) (g : ∀ n, B n →ₗ[F] C n) : Prop where
  dA_mem : ∀ n, ∀ x ∈ CA n, dA n x ∈ CA (n + 1)
  dB_mem : ∀ n, ∀ x ∈ CB n, dB n x ∈ CB (n + 1)
  dC_mem : ∀ n, ∀ x ∈ CC n, dC n x ∈ CC (n + 1)
  dA_dA : ∀ n, ∀ x ∈ CA n, dA (n + 1) (dA n x) = 0
  dB_dB : ∀ n, ∀ x ∈ CB n, dB (n + 1) (dB n x) = 0
  dC_dC : ∀ n, ∀ x ∈ CC n, dC (n + 1) (dC n x) = 0
  f_mem : ∀ n, ∀ x ∈ CA n, f n x ∈ CB n
  g_mem : ∀ n, ∀ y ∈ CB n, g n y ∈ CC n
  f_d : ∀ n, ∀ x ∈ CA n, dB n (f n x) = f (n + 1) (dA n x)
  g_d : ∀ n, ∀ y ∈ CB n, dC n (g n y) = g (n + 1) (dB n y)
  f_inj : ∀ n, ∀ x ∈ CA n, f n x = 0 → x = 0
  g_f : ∀ n, ∀ x ∈ CA n, g n (f n x) = 0
  ker_g : ∀ n, ∀ y ∈ CB n, g n y = 0 → ∃ x ∈ CA n, f n x = y
  g_onto : ∀ n, ∀ z ∈ CC n, ∃ y ∈ CB n, g n y = z

def liftSp (CB : ∀ n, Submodule F (B n)) (dC : ∀ n, C n →ₗ[F] C (n + 1)) (g : ∀ n, B n →ₗ[F] C n) (n : ℕ) :
    Submodule F (B n) :=
  CB n ⊓ LinearMap.ker ((dC n).comp (g n))

theorem mem_liftSp {CB : ∀ n, Submodule F (B n)} {dC : ∀ n, C n →ₗ[F] C (n + 1)} {g : ∀ n, B n →ₗ[F] C n}
    {n : ℕ} {y : B n} : y ∈ liftSp CB dC g n ↔ y ∈ CB n ∧ dC n (g n y) = 0 := by
  simp [liftSp, Submodule.mem_inf, LinearMap.mem_ker]

variable {CA : ∀ n, Submodule F (A n)} {CB : ∀ n, Submodule F (B n)} {CC : ∀ n, Submodule F (C n)}
  {dA : ∀ n, A n →ₗ[F] A (n + 1)} {dB : ∀ n, B n →ₗ[F] B (n + 1)} {dC : ∀ n, C n →ₗ[F] C (n + 1)}
  {f : ∀ n, A n →ₗ[F] B n} {g : ∀ n, B n →ₗ[F] C n}

namespace IsSES

variable (H : IsSES CA CB CC dA dB dC f g)
include H

def iA (n : ℕ) : coh CA dA n →ₗ[F] coh CB dB n := cohMap CA dA CB dB f H.f_mem H.f_d n

def pB (n : ℕ) : coh CB dB n →ₗ[F] coh CC dC n := cohMap CB dB CC dC g H.g_mem H.g_d n

theorem g_mem_cyc (n : ℕ) : ∀ y ∈ liftSp CB dC g n, g n y ∈ cyc CC dC n := by
  intro y hy
  rw [mem_liftSp] at hy
  exact mem_cyc.2 ⟨H.g_mem n y hy.1, hy.2⟩

def toCohC (n : ℕ) : liftSp CB dC g n →ₗ[F] coh CC dC n :=
  Submodule.mkQ _ ∘ₗ (g n).restrict (H.g_mem_cyc n)

theorem toCohC_apply (n : ℕ) (y : liftSp CB dC g n) :
    H.toCohC n y = Submodule.Quotient.mk ⟨g n y, H.g_mem_cyc n y y.2⟩ :=
  rfl

theorem fInj (n : ℕ) : Function.Injective ((f n).domRestrict (CA n)) :=
  (injective_iff_map_eq_zero ((f n).domRestrict (CA n))).2 fun x hx => Subtype.ext (H.f_inj n x x.2 hx)

def fEquiv (n : ℕ) : CA n ≃ₗ[F] LinearMap.range ((f n).domRestrict (CA n)) :=
  LinearEquiv.ofInjective _ (H.fInj n)

theorem dB_mem_range (n : ℕ) (y : liftSp CB dC g n) :
    dB n y ∈ LinearMap.range ((f (n + 1)).domRestrict (CA (n + 1))) := by
  have hy := mem_liftSp.1 y.2
  obtain ⟨x, hx, hfx⟩ :=
    H.ker_g (n + 1) (dB n y) (H.dB_mem n y hy.1) (by rw [← H.g_d n y hy.1]; exact hy.2)
  exact LinearMap.mem_range.2 ⟨⟨x, hx⟩, hfx⟩

def liftB (n : ℕ) : liftSp CB dC g n →ₗ[F] CA (n + 1) :=
  (H.fEquiv (n + 1)).symm.toLinearMap ∘ₗ
    LinearMap.codRestrict _ ((dB n).domRestrict (liftSp CB dC g n)) (H.dB_mem_range n)

theorem f_liftB (n : ℕ) (y : liftSp CB dC g n) : f (n + 1) (H.liftB n y : A (n + 1)) = dB n y :=
  LinearEquiv.ofInjective_symm_apply (f := (f (n + 1)).domRestrict (CA (n + 1))) (h := H.fInj (n + 1)) _

theorem liftB_mem_cyc (n : ℕ) (y : liftSp CB dC g n) : (H.liftB n y : A (n + 1)) ∈ cyc CA dA (n + 1) := by
  have hy := mem_liftSp.1 y.2
  have hx := (H.liftB n y).2
  refine mem_cyc.2 ⟨hx, H.f_inj (n + 1 + 1) _ (H.dA_mem (n + 1) _ hx) ?_⟩
  rw [← H.f_d (n + 1) _ hx, H.f_liftB n y, H.dB_dB n y hy.1]

def toCohA (n : ℕ) : liftSp CB dC g n →ₗ[F] coh CA dA (n + 1) :=
  Submodule.mkQ _ ∘ₗ
    LinearMap.codRestrict (cyc CA dA (n + 1)) ((CA (n + 1)).subtype ∘ₗ H.liftB n) (H.liftB_mem_cyc n)

theorem toCohA_apply (n : ℕ) (y : liftSp CB dC g n) :
    H.toCohA n y = Submodule.Quotient.mk ⟨H.liftB n y, H.liftB_mem_cyc n y⟩ :=
  rfl

theorem toCohC_surj (n : ℕ) : Function.Surjective (H.toCohC n) := by
  intro q
  obtain ⟨z, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  have hz := mem_cyc.1 z.2
  obtain ⟨y, hy, hgy⟩ := H.g_onto n z hz.1
  refine ⟨⟨y, mem_liftSp.2 ⟨hy, by rw [hgy]; exact hz.2⟩⟩, ?_⟩
  rw [toCohC_apply]
  congr 1
  exact Subtype.ext hgy

theorem lift_bnd (n : ℕ) (y : B n) (hy : y ∈ CB n) (hgy : g n y ∈ bnd CC dC n) :
    ∃ x ∈ CA n, y - f n x ∈ bnd CB dB n := by
  rcases n with _ | n
  · obtain ⟨x, hx, hfx⟩ := H.ker_g 0 y hy (mem_bnd_zero.1 hgy)
    exact ⟨x, hx, by rw [hfx, sub_self]; exact zero_mem _⟩
  · obtain ⟨z, hz, hdz⟩ := mem_bnd_succ.1 hgy
    obtain ⟨y', hy', rfl⟩ := H.g_onto n z hz
    have hmem : y - dB n y' ∈ CB (n + 1) := sub_mem hy (H.dB_mem n y' hy')
    obtain ⟨x, hx, hfx⟩ := H.ker_g (n + 1) _ hmem (by rw [map_sub, ← H.g_d n y' hy', hdz, sub_self])
    refine ⟨x, hx, mem_bnd_succ.2 ⟨y', hy', ?_⟩⟩
    rw [hfx, sub_sub_cancel]

theorem ker_toCohC_le (n : ℕ) : LinearMap.ker (H.toCohC n) ≤ LinearMap.ker (H.toCohA n) := by
  intro y hy
  rw [LinearMap.mem_ker, toCohC_apply, coh_mk_eq_zero] at hy
  rw [LinearMap.mem_ker, toCohA_apply, coh_mk_eq_zero]
  have hyl := mem_liftSp.1 y.2
  obtain ⟨x, hx, hb⟩ := H.lift_bnd n y hyl.1 hy
  have hxb : (H.liftB n y : A (n + 1)) = dA n x := by
    have h1 := d_of_mem_bnd H.dB_dB hb
    rw [map_sub, sub_eq_zero, H.f_d n x hx] at h1
    exact congrArg Subtype.val (H.fInj (n + 1) (a₁ := H.liftB n y) (a₂ := ⟨dA n x, H.dA_mem n x hx⟩)
      (by show f (n + 1) (H.liftB n y : A (n + 1)) = f (n + 1) (dA n x); rw [H.f_liftB]; exact h1))
  show (H.liftB n y : A (n + 1)) ∈ bnd CA dA (n + 1)
  rw [hxb]
  exact mem_bnd_succ.2 ⟨x, hx, rfl⟩

def delta (n : ℕ) : coh CC dC n →ₗ[F] coh CA dA (n + 1) :=
  (LinearMap.ker (H.toCohC n)).liftQ (H.toCohA n) (H.ker_toCohC_le n) ∘ₗ
    ((H.toCohC n).quotKerEquivOfSurjective (H.toCohC_surj n)).symm.toLinearMap

theorem delta_toCohC (n : ℕ) (y : liftSp CB dC g n) : H.delta n (H.toCohC n y) = H.toCohA n y := by
  simp only [delta, LinearMap.comp_apply, LinearEquiv.coe_coe,
    LinearMap.quotKerEquivOfSurjective_symm_apply, Submodule.liftQ_apply]

theorem ker_iA_zero : LinearMap.ker (H.iA 0) = ⊥ := by
  refine LinearMap.ker_eq_bot'.2 fun q hq => ?_
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ q
  rw [iA, cohMap_mk, coh_mk_eq_zero, mem_bnd_zero] at hq
  rw [coh_mk_eq_zero, mem_bnd_zero]
  exact H.f_inj 0 x (mem_cyc.1 x.2).1 hq

theorem ker_pB (n : ℕ) : LinearMap.ker (H.pB n) = LinearMap.range (H.iA n) := by
  ext q
  rw [LinearMap.mem_ker, LinearMap.mem_range]
  constructor
  · intro hq
    obtain ⟨y, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [pB, cohMap_mk, coh_mk_eq_zero] at hq
    have hy := mem_cyc.1 y.2
    obtain ⟨x, hx, hb⟩ := H.lift_bnd n y hy.1 hq
    have hdx : dA n x = 0 := by
      refine H.f_inj (n + 1) _ (H.dA_mem n x hx) ?_
      have h1 := d_of_mem_bnd H.dB_dB hb
      rw [map_sub, hy.2, zero_sub, neg_eq_zero, H.f_d n x hx] at h1
      exact h1
    refine ⟨Submodule.Quotient.mk ⟨x, mem_cyc.2 ⟨hx, hdx⟩⟩, ?_⟩
    rw [iA, cohMap_mk, coh_mk_eq]
    rw [← neg_sub]
    exact neg_mem hb
  · rintro ⟨q, rfl⟩
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [iA, pB, cohMap_mk, cohMap_mk, coh_mk_eq_zero]
    show g n (f n x) ∈ _
    rw [H.g_f n x (mem_cyc.1 x.2).1]
    exact zero_mem _

theorem ker_delta (n : ℕ) : LinearMap.ker (H.delta n) = LinearMap.range (H.pB n) := by
  ext q
  rw [LinearMap.mem_ker, LinearMap.mem_range]
  obtain ⟨y, rfl⟩ := H.toCohC_surj n q
  have hyl := mem_liftSp.1 y.2
  constructor
  · intro hq
    rw [delta_toCohC, toCohA_apply, coh_mk_eq_zero] at hq
    obtain ⟨x, hx, hdx⟩ := mem_bnd_succ.1 hq
    have hmem : (y : B n) - f n x ∈ cyc CB dB n := by
      refine mem_cyc.2 ⟨sub_mem hyl.1 (H.f_mem n x hx), ?_⟩
      rw [map_sub, H.f_d n x hx, hdx, H.f_liftB, sub_self]
    refine ⟨Submodule.Quotient.mk ⟨_, hmem⟩, ?_⟩
    rw [pB, cohMap_mk, toCohC_apply]
    congr 1
    apply Subtype.ext
    show g n ((y : B n) - f n x) = g n y
    rw [map_sub, H.g_f n x hx, sub_zero]
  · rintro ⟨q, hq⟩
    obtain ⟨y', rfl⟩ := Submodule.Quotient.mk_surjective _ q
    have hy' := mem_cyc.1 y'.2
    have hyl' : (y' : B n) ∈ liftSp CB dC g n :=
      mem_liftSp.2 ⟨hy'.1, by rw [H.g_d n _ hy'.1, hy'.2, map_zero]⟩
    have he : H.pB n (Submodule.Quotient.mk y') = H.toCohC n ⟨y', hyl'⟩ := rfl
    rw [← hq, he, delta_toCohC, toCohA_apply, coh_mk_eq_zero]
    have h0 : (H.liftB n ⟨y', hyl'⟩ : A (n + 1)) = 0 :=
      H.f_inj (n + 1) _ (H.liftB n ⟨y', hyl'⟩).2 (by rw [H.f_liftB]; exact hy'.2)
    show (H.liftB n ⟨y', hyl'⟩ : A (n + 1)) ∈ _
    rw [h0]
    exact zero_mem _

theorem ker_iA_succ (n : ℕ) : LinearMap.ker (H.iA (n + 1)) = LinearMap.range (H.delta n) := by
  ext q
  rw [LinearMap.mem_ker, LinearMap.mem_range]
  constructor
  · intro hq
    obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ q
    rw [iA, cohMap_mk, coh_mk_eq_zero] at hq
    obtain ⟨y, hy, hfy⟩ := mem_bnd_succ.1 hq
    have hx := mem_cyc.1 x.2
    have hyl : y ∈ liftSp CB dC g n := by
      refine mem_liftSp.2 ⟨hy, ?_⟩
      rw [H.g_d n y hy, hfy]
      exact H.g_f (n + 1) x hx.1
    have hlx : (H.liftB n ⟨y, hyl⟩ : A (n + 1)) = x :=
      congrArg Subtype.val (H.fInj (n + 1) (a₁ := H.liftB n ⟨y, hyl⟩) (a₂ := ⟨x, hx.1⟩)
        (by show f (n + 1) (H.liftB n ⟨y, hyl⟩ : A (n + 1)) = f (n + 1) x; rw [H.f_liftB]; exact hfy))
    refine ⟨H.toCohC n ⟨y, hyl⟩, ?_⟩
    rw [delta_toCohC, toCohA_apply]
    congr 1
    exact Subtype.ext hlx
  · rintro ⟨q, rfl⟩
    obtain ⟨y, rfl⟩ := H.toCohC_surj n q
    rw [delta_toCohC, toCohA_apply, iA, cohMap_mk, coh_mk_eq_zero]
    show f (n + 1) (H.liftB n y : A (n + 1)) ∈ _
    rw [H.f_liftB]
    exact mem_bnd_succ.2 ⟨y, (mem_liftSp.1 y.2).1, rfl⟩

variable (hfa : ∀ n, FiniteDimensional F (coh CA dA n)) (hfb : ∀ n, FiniteDimensional F (coh CB dB n))
  (hfc : ∀ n, FiniteDimensional F (coh CC dC n))

include hfa in
theorem dimA_zero : finrank F (coh CA dA 0) = finrank F (LinearMap.range (H.iA 0)) := by
  have := hfa 0
  rw [← LinearMap.finrank_range_add_finrank_ker (H.iA 0), H.ker_iA_zero, finrank_bot, add_zero]

include hfa in
theorem dimA_succ (n : ℕ) :
    finrank F (coh CA dA (n + 1)) =
      finrank F (LinearMap.range (H.iA (n + 1))) + finrank F (LinearMap.range (H.delta n)) := by
  have := hfa (n + 1)
  rw [← LinearMap.finrank_range_add_finrank_ker (H.iA (n + 1)), H.ker_iA_succ]

include hfb in
theorem dimB (n : ℕ) :
    finrank F (coh CB dB n) = finrank F (LinearMap.range (H.pB n)) + finrank F (LinearMap.range (H.iA n)) := by
  have := hfb n
  rw [← LinearMap.finrank_range_add_finrank_ker (H.pB n), H.ker_pB]

include hfc in
theorem dimC (n : ℕ) :
    finrank F (coh CC dC n) =
      finrank F (LinearMap.range (H.delta n)) + finrank F (LinearMap.range (H.pB n)) := by
  have := hfc n
  rw [← LinearMap.finrank_range_add_finrank_ker (H.delta n), H.ker_delta]

end IsSES

end SES

theorem alt_sum (a b c i p r : ℕ → ℤ) (h0 : a 0 = i 0) (hs : ∀ n, a (n + 1) = i (n + 1) + r n)
    (hb : ∀ n, b n = p n + i n) (hc : ∀ n, c n = r n + p n) (N : ℕ) :
    ∑ n ∈ Finset.range (N + 1), (-1 : ℤ) ^ n * b n =
      ∑ n ∈ Finset.range (N + 1), (-1 : ℤ) ^ n * a n + ∑ n ∈ Finset.range (N + 1), (-1 : ℤ) ^ n * c n +
        (-1) ^ (N + 1) * r N := by
  induction N with
  | zero =>
    simp only [zero_add, Finset.sum_range_one, pow_zero, one_mul, pow_one]
    rw [hb, hc, h0]
    ring
  | succ N ih =>
    simp only [Finset.sum_range_succ _ (N + 1)]
    rw [ih, hs N, hb (N + 1), hc (N + 1)]
    ring

end EulerSES

open EulerSES

theorem EulerSES.full : EulerSES.Statement := by
  intro F _ A B C _ _ _ _ _ _ CA CB CC dA dB dC f g N h1 h2 h3 h4 h5 h6 h7 h8 h9 h10 h11 h12 h13 h14
    hfa hfb hfc hsub
  have H : IsSES CA CB CC dA dB dC f g := ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12, h13, h14⟩
  have key := alt_sum (fun n => (Module.finrank F (coh CA dA n) : ℤ))
    (fun n => (Module.finrank F (coh CB dB n) : ℤ)) (fun n => (Module.finrank F (coh CC dC n) : ℤ))
    (fun n => (Module.finrank F (LinearMap.range (H.iA n)) : ℤ))
    (fun n => (Module.finrank F (LinearMap.range (H.pB n)) : ℤ))
    (fun n => (Module.finrank F (LinearMap.range (H.delta n)) : ℤ))
    (by exact_mod_cast H.dimA_zero hfa)
    (fun n => by exact_mod_cast H.dimA_succ hfa n)
    (fun n => by exact_mod_cast H.dimB hfb n)
    (fun n => by exact_mod_cast H.dimC hfc n) N
  have hr : Module.finrank F (LinearMap.range (H.delta N)) = 0 := by
    have := hfa (N + 1)
    have h0 : Module.finrank F (coh CA dA (N + 1)) = 0 := Module.finrank_zero_of_subsingleton
    exact Nat.eq_zero_of_le_zero (h0 ▸ Submodule.finrank_le _)
  simp only [hr, Nat.cast_zero, mul_zero, add_zero] at key
  exact key

end

end GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CohMkEqZero =====

-- ===== clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PEulerVarX =====
-- clump-header: {"m": "GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PEulerVarX", "h": "module\n\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcSubsingletonOfBlock\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CechHcEqCoh\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.CohMkEqZero\npublic import GroundTheory.HeightsAndTheta.Heights.KleimanAmpleness.PKHCechDSq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.Swarm

theorem EulerVar.proof : GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization.EulerVar.Statement :=
  GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization.EulerVar.proof
    GroundTheory.Heights₂.Heights.Kleiman.KHCechDSq.full
    GroundTheory.Heights₂.Heights.Kleiman.SectionsOverLocalization.EulerSES.full

end GroundTheory.Heights₂.Heights.Swarm
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.HeightsAndTheta.Heights.ElementarySymmetric.PEulerVarX =====
