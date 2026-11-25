module

public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetReducedBlockEqResidueDet
public import Formalism.LocalToGlobal.Divisibility.DefGroup
public import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt
public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsBaseChangeFiniteAdeleRingEquiv
import Formalism.LocalToGlobal.Columns.AdelicLemmas
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Algebra.Order.Star.Int
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent
import Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg
import Formalism.LocalToGlobal.GlobalTheory.GL5.FamilyMassVolumeIdentityOfClassDecomp
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinitePartIntegralUnitOfUnitResidue, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceIdempotentFiniteAdeleZeroElsewhere, Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameTwistFamilySpecializationGood

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinitePartIntegralUnitOfUnitResidue =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinitePartIntegralUnitOfUnitResidue", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetReducedBlockEqResidueDet\nimport Formalism.LocalToGlobal.Columns.AdelicLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField Matrix GlobalTheory.ExportSeries
open Formalism.IndefR.Links (PolF)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.ExportSeries

theorem finPart_mem_intAE_of_unit_residue : ∀ (D : D7) (ι : (Af D.host.F ⊗[D.host.F] D.host.E) ≃+* FiniteAdeleRing (𝓞 D.host.E) D.host.E), (∀ k : D.host.E, ι ((1 : Af D.host.F) ⊗ₜ[D.host.F] k) = algebraMap D.host.E (FiniteAdeleRing (𝓞 D.host.E) D.host.E) k) → (∀ y, y ∈ intAE D ↔ ∀ P : HeightOneSpectrum (𝓞 D.host.E), Valued.v (ι y P) ≤ 1) → ∀ (P : Pl D.host.E) (e : AE D), (∀ P' : Pl D.host.E, P' ≠ P → ι (finPart D e) P' = 0) → ∀ (x : (AE D)ˣ), (1 - e) * (x : AE D) = 1 - e → ∀ (hx : toEAf D (x : AE D) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) (v : (kP P)ˣ), resS D.host.F P ⟨_, hx⟩ = v → finPart D (x : AE D) ∈ intAE D ∧ finPart D ((x⁻¹ : (AE D)ˣ) : AE D) ∈ intAE D := by
  intro D ι h1 h2 P e he x hxe hx v hv
  have hun : GlobalTheory.GeoLevel.unswap D (toEAf D (x : AE D)) = finPart D (x : AE D) :=
    GlobalTheory.GeoLevel.unswap_swap (finPart D (x : AE D))
  have hy : ∀ P' : HeightOneSpectrum (𝓞 D.host.E), Valued.v (ι (finPart D (x : AE D)) P') = 1 := by
    intro P'
    by_cases hP : P' = P
    · subst hP
      obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (v : kP P')
      have hna : a ∉ P'.asIdeal := fun h => v.ne_zero (by rw [← ha]; exact Ideal.Quotient.eq_zero_iff_mem.2 h)
      have h4 := GlobalTheory.GeoLevel.valued_sub_le ι h1 h2 P' ⟨_, hx⟩ a (hv.trans ha.symm)
      have h5 : Valued.v (algebraMap D.host.E (P'.adicCompletion D.host.E) (a : D.host.E)) = 1 := by
        rw [GlobalTheory.GeoLevel.valued_coe_int]
        exact HeightOneSpectrum.intValuation_eq_one_iff.2 hna
      have h6 : Valued.v (ι (finPart D (x : AE D)) P' -
          algebraMap D.host.E (P'.adicCompletion D.host.E) (a : D.host.E)) ≤ WithZero.exp (-1 : ℤ) := by
        rw [← hun]; exact h4
      rw [← h5]
      refine Valuation.map_eq_of_sub_lt _ (h6.trans_lt ?_)
      rw [h5, ← WithZero.exp_zero]
      exact WithZero.exp_lt_exp.2 (by norm_num)
    · let ev : FiniteAdeleRing (𝓞 D.host.E) D.host.E →+* P'.adicCompletion D.host.E :=
        RestrictedProduct.evalRingHom (fun v : HeightOneSpectrum (𝓞 D.host.E) => v.adicCompletion D.host.E) P'
      have h0 : ev (ι (finPart D e)) = 0 := he P' hP
      have h3 := congrArg (fun z => ev (ι (finPart D z))) hxe
      simp only [map_mul, map_sub, map_one, h0, sub_zero, one_mul] at h3
      have h4 : ι (finPart D (x : AE D)) P' = 1 := h3
      rw [h4, map_one]
  refine ⟨(h2 _).2 fun P' => (hy P').le, (h2 _).2 fun P' => ?_⟩
  have e1 : ι (finPart D (x : AE D)) * ι (finPart D ((x⁻¹ : (AE D)ˣ) : AE D)) = 1 := by
    rw [← map_mul, ← map_mul, Units.mul_inv, map_one, map_one]
  have e2 : ι (finPart D (x : AE D)) P' * ι (finPart D ((x⁻¹ : (AE D)ˣ) : AE D)) P' = 1 :=
    congrArg (fun z : FiniteAdeleRing (𝓞 D.host.E) D.host.E => z P') e1
  have e3 := congrArg (Valued.v : P'.adicCompletion D.host.E → _) e2
  rw [map_mul, map_one, hy P', one_mul] at e3
  exact e3.le

end GlobalTheory.ExportSeries
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinitePartIntegralUnitOfUnitResidue =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceIdempotentFiniteAdeleZeroElsewhere =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceIdempotentFiniteAdeleZeroElsewhere", "h": "module\n\npublic import Formalism.LocalToGlobal.Divisibility.DefGroup\npublic import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.DetReducedBlockEqResidueDet\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.UnivOfNotLinearIndependent\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField Matrix GlobalTheory.ExportSeries
open Formalism.IndefR.Links (PolF)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.ExportSeries

theorem idem_apply_eq_zero_of_ne : ∀ (D : D7) (ι : (Af D.host.F ⊗[D.host.F] D.host.E) ≃+* FiniteAdeleRing (𝓞 D.host.E) D.host.E), (∀ k : D.host.E, ι ((1 : Af D.host.F) ⊗ₜ[D.host.F] k) = algebraMap D.host.E (FiniteAdeleRing (𝓞 D.host.E) D.host.E) k) → (∀ y, y ∈ intAE D ↔ ∀ P : HeightOneSpectrum (𝓞 D.host.E), Valued.v (ι y P) ≤ 1) → ∀ (P : Pl D.host.E) (e : AE D), Formalism.L2.NTheta.IsIdemAt e P → ∀ P' : Pl D.host.E, P' ≠ P → ι (finPart D e) P' = 0 := by
  intro D ι h1 h2 P e he P' hP
  have hee : e * e = e := he.1.1
  have hm : ∀ a b : AE D, ι (finPart D (a * b)) P' = ι (finPart D a) P' * ι (finPart D b) P' := fun a b => by
    rw [RingHom.map_mul, map_mul]; rfl
  by_contra h0
  have hone : ι (finPart D e) P' = 1 := mul_left_cancel₀ h0 (by rw [← hm, hee, mul_one])
  refine hP (HeightOneSpectrum.ext (P'.isMaximal.eq_of_le P.isPrime.ne_top fun x hx => ?_))
  by_cases hx0 : x = 0
  · rw [hx0]; exact zero_mem _
  refine (he.2 x hx0).2 fun hint => ?_
  have hv := (h2 _).1 hint P'
  have hi : ι (finPart D (incA D ((x : D.host.E)⁻¹))) P' =
      algebraMap D.host.E (P'.adicCompletion D.host.E) ((x : D.host.E)⁻¹) :=
    congrArg (fun z : FiniteAdeleRing (𝓞 D.host.E) D.host.E => z P') (h1 ((x : D.host.E)⁻¹))
  rw [hm, hone, one_mul, hi, map_inv₀, map_inv₀, GlobalTheory.GeoLevel.valued_coe_int] at hv
  have hlt : P'.intValuation x < 1 := (P'.intValuation_lt_one_iff_mem x).2 hx
  have hpos : 0 < P'.intValuation x := zero_lt_iff.2 (P'.intValuation_ne_zero x hx0)
  exact absurd ((inv_le_one₀ hpos).1 hv) (not_le.2 hlt)

end GlobalTheory.ExportSeries
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceIdempotentFiniteAdeleZeroElsewhere =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameTwistFamilySpecializationGood =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameTwistFamilySpecializationGood", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsPlaceModelPlaceMap\nimport Development.AbelianVarietyTheory.Counterexamples.HeightSurvey.StarPurelyImaginaryEqNeg\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsBaseChangeFiniteAdeleRingEquiv\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.FinitePartIntegralUnitOfUnitResidue\npublic import Formalism.LocalToGlobal.Divisibility.DefGroup\npublic import Formalism.LocalToGlobal.HeckeThetaElements.IsHeckeElt\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.PlaceIdempotentFiniteAdeleZeroElsewhere\nimport Formalism.LocalToGlobal.GlobalTheory.GL5.FamilyMassVolumeIdentityOfClassDecomp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Datum IsDedekindDomain NumberField Matrix GlobalTheory.ExportSeries
open Formalism.IndefR.Links (PolF)
open scoped TensorProduct
attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section



namespace GlobalTheory.ExportSeries.SpecGood

variable {D : D7}

theorem infPart_eq_zero_of_isIdemAt : ∀ (D : D7) (P : Pl D.host.E) (e : AE D), Formalism.L2.NTheta.IsIdemAt e P → infPart D e = 0 := by
  intro D P e h
  obtain ⟨⟨h1, h2, v, ε, ⟨α, rfl, -⟩, h3⟩, -⟩ := h
  have k1 := congrArg (infPart D) h1
  have k2 := congrArg (infPart D) h2
  have k3 := congrArg (infPart D) h3
  simp only [RingHom.map_mul, RingHom.map_add (f := _), RingHom.map_zero] at k1 k2 k3
  have k4 : infPart D (algebraMap (AF D.host.F) (AE D) (pairA D.host.F 0 α)) = 0 := by
    simp [infPart, Algebra.TensorProduct.algebraMap_apply]
    show (0 : Ainf D.host.F) ⊗ₜ[D.host.F] (1 : D.host.E) = 0
    exact TensorProduct.zero_tmul _ _
  rw [k4] at k3
  linear_combination -k1 + infPart D e * k3 - k2

theorem finUnit_of_res (P : Pl D.host.E) (hP : Formalism.L2.NTheta.IsIdemAt (idemAt P) P) (x : (AE D)ˣ)
    (h1 : (1 - idemAt P) * (x : AE D) = 1 - idemAt P)
    (hx : toEAf D (x : AE D) ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) (v : (kP P)ˣ)
    (hv : resS D.host.F P ⟨_, hx⟩ = v) :
    infPart D (x : AE D) = 1 ∧ finPart D (x : AE D) ∈ intAE D ∧ finPart D ((x⁻¹ : (AE D)ˣ) : AE D) ∈ intAE D := by
  obtain ⟨ι, i1, i2, -⟩ := GlobalTheory.HostAdeleIso.exists_finiteAdele_equiv D
  refine ⟨?_, _root_.GlobalTheory.ExportSeries.finPart_mem_intAE_of_unit_residue D ι i1 i2 P (idemAt P) (_root_.GlobalTheory.ExportSeries.idem_apply_eq_zero_of_ne D ι i1 i2 P _ hP) x h1 hx v hv⟩
  have := congrArg (infPart D) h1
  rwa [RingHom.map_mul, RingHom.map_sub, RingHom.map_one, infPart_eq_zero_of_isIdemAt D P _ hP, sub_zero, one_mul] at this

variable {C A : Type} [AddCommGroup C] [CommGroup A]

theorem idemAt_mul_idem {Q : Finset (Pl D.host.E)} (h : SplitSet Q) {P : Pl D.host.E} (hP : P ∈ Q) :
    idemAt P * idem Q = idemAt P :=
  GlobalTheory.PlaceModelSum.mul_sum_orth (fun a ha => (h.isIdemAt ha).1) (fun a ha b hb hab => h.mul_eq_zero ha hb hab) hP

theorem idemAt_mul_conj_idem {Q : Finset (Pl D.host.E)} (h : SplitSet Q) {P : Pl D.host.E} (hP : P ∈ Q) :
    idemAt P * cA D (idem Q) = 0 := by

  rw [idem, map_sum, Finset.mul_sum]
  exact Finset.sum_eq_zero fun j hj => h.mul_conj hP hj

theorem delQ_eq_one {u : UnivTwist D C} {Q : Finset (Pl D.host.E)} {x : (AE D)ˣ} (hx : ∀ P ∈ Q, u.del P x = 1) :
    u.delQ Q x = 1 := by
  ext PP
  exact congrArg Multiplicative.toAdd (hx PP.1 PP.2)


open Classical in
theorem spec_good (D : D7) (C A : Type) [AddCommGroup C] [CommGroup A] (u : UnivTwist D C) (Q : Finset (Pl D.host.E))
    (χ : Multiplicative (↥Q → C) →* A) (h : u.Good Q) : (u.spec Q χ).Good := by
  have cc := GlobalTheory.DualPairCheck.cA_cA (D := D)
  refine ⟨?_, ?_, ?_, h.1, ?_, ?_⟩
  · haveI := Formalism.L2.GlobalTheoryTheory.GenusMassVolumes.Unfold.isTopRing (F := D.host.F) (E := D.host.E)
    let H : Subgroup (AE D)ˣ := ⨅ P : ↥Q, (u.del P.1).ker
    have hH : IsOpen (H : Set (AE D)ˣ) := by
      rw [Subgroup.coe_iInf]
      exact isOpen_iInter_of_finite fun P => (h.2 P.1 P.2).isOpen
    refine Subgroup.isOpen_mono (fun x hx => ?_) hH
    rw [Subgroup.mem_iInf] at hx
    show χ (u.delQ Q x) = 1
    rw [delQ_eq_one fun P hP => hx ⟨P, hP⟩, map_one]
  · intro x
    show χ (u.delQ Q _) = 1
    rw [delQ_eq_one fun P hP => (h.2 P hP).rat x, map_one]
  · intro a
    show χ (u.delQ Q _) = 1
    rw [h.delQ_real a, map_one]
  · intro x h1 h2 h3 h4
    show χ (u.delQ Q x) = 1
    replace h4 : (idem Q + cA D (idem Q)) * (x : AE D) = idem Q + cA D (idem Q) := h4
    refine (congrArg χ (delQ_eq_one fun P hP => ?_)).trans (map_one χ)
    refine (h.2 P hP).unram x h1 h2 h3 ?_
    show (idem {P} + cA D (idem {P})) * (x : AE D) = idem {P} + cA D (idem {P})
    have e1 : idem ({P} : Finset (Pl D.host.E)) = idemAt P := Finset.sum_singleton _ _
    rw [e1]
    have k1 := idemAt_mul_idem h.1 hP
    have k2 := idemAt_mul_conj_idem h.1 hP
    have k3 : cA D (idemAt P) * idem Q = 0 := by
      have := congrArg (cA D) k2
      rwa [RingHom.map_mul, cc, RingHom.map_zero] at this
    have k4 : cA D (idemAt P) * cA D (idem Q) = cA D (idemAt P) := by
      rw [← RingHom.map_mul, k1]
    linear_combination (idemAt P + cA D (idemAt P)) * h4 + (1 - (x : AE D)) * (k1 + k2 + k3 + k4)
  · intro PP hPP x h1 hx v hv
    show χ (u.delQ Q x) = (u.spec Q χ).res PP v
    rw [show (u.spec Q χ).res PP = χ.comp ((AddMonoidHom.toMultiplicative (AddMonoidHom.single (fun _ : ↥Q => C) ⟨PP, hPP⟩)).comp
      (u.kap PP)) from dif_pos hPP, MonoidHom.comp_apply]
    have hfu := finUnit_of_res PP (h.1.isIdemAt hPP) x h1 hx v hv
    refine congrArg χ ?_
    ext ⟨P', hP'⟩
    by_cases hne : P' = PP
    · subst hne
      have := (h.2 P' hP').res P' (Finset.mem_singleton_self _) x h1 hx v hv
      simp [UnivTwist.delQ, this]
    · have hd : u.del P' x = 1 := by
        refine (h.2 P' hP').unram x hfu.1 hfu.2.1 hfu.2.2 ?_
        show (idem {P'} + cA D (idem {P'})) * (x : AE D) = idem {P'} + cA D (idem {P'})
        have e1 : idem ({P'} : Finset (Pl D.host.E)) = idemAt P' := Finset.sum_singleton _ _
        rw [e1]
        have z1 : idemAt P' * idemAt PP = 0 := h.1.mul_eq_zero hP' hPP (Ne.symm hne)
        have z2 : idemAt PP * cA D (idemAt P') = 0 := h.1.mul_conj hPP hP'
        linear_combination (idemAt P' + cA D (idemAt P')) * h1 + ((x : AE D) - 1) * (z1 + z2)
      simp [UnivTwist.delQ, hd, Pi.single_apply]
      intro e
      exact absurd (congrArg Subtype.val e) hne

end GlobalTheory.ExportSeries.SpecGood
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.TameTwistFamilySpecializationGood =====
