module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousPhaseAt
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LatHatOpenAndContinuous
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG
public import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsInverseChart
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsEtaTildeUnramified
public import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsFundamentalDomainOfHaar
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsIntEqExponentAddHalfIndex
public import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.UnitaryVolumePairs
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DefiniteUnitaryClassSetFinite
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
import Mathlib.Tactic.Linter.Style
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
import Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsRealPointUnitaryWithComponents
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplittingHeckeCharExistsArchimedeanExponent
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousHeckeCharacterFinitePart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharRestrictsEtaPowOfSign, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacter, Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacterStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousHeckeCharacterFinitePart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousHeckeCharacterFinitePart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousPhaseAt\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.DefiniteUnitaryClassSetFinite\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.LatHatOpenAndContinuous\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormExact

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.HeckeUChar

open IsDedekindDomain Topology

theorem toFinE_symm_mem_OhE {D : D7} (t : FiniteAdeleRing (𝓞 D.host.E) D.host.E)
    (ht : ∀ w : HeightOneSpectrum (𝓞 D.host.E), t w ∈ w.adicCompletionIntegers D.host.E) :
    (GlobalTheory.BotFormula.toFinE D).symm t ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D := by
  have hι : ∀ (x : D.host.E) (a : FiniteAdeleRing (𝓞 ℚ) ℚ), (GlobalTheory.BotFormula.toFinE D).toRingHom (x ⊗ₜ[ℚ] a) =
      algebraMap D.host.E _ x * GlobalTheory.AdeleBaseChange.adMap ℚ D.host.E a := fun x a => by
    show GlobalTheory.LFun.toFinAd ℚ D.host.E (a ⊗ₜ x) = _
    rw [GlobalTheory.LFun.toFinAd_tmul, mul_comm]
  refine GlobalTheory.AdeleBaseChange.mem_int_of_map (ι := (GlobalTheory.BotFormula.toFinE D).toRingHom) hι ?_
  change (GlobalTheory.BotFormula.toFinE D) ((GlobalTheory.BotFormula.toFinE D).symm t) ∈ _
  rw [RingEquiv.apply_symm_apply]
  exact ht

theorem continuous_finChar {D : D7} {N : ℕ} (c : HeckeU D N) : Continuous (finChar c) := by
  refine continuous_of_continuousAt_one (finChar c) ?_
  obtain ⟨m, hm, hc⟩ := c.cont
  have hcont : Continuous (finIdl D) :=
    Continuous.units_map _ (GlobalTheory.DefU.ClassFin.continuous_finAdEquiv.comp (GlobalTheory.Member.continuous_finPart D))
  set W : Set (FiniteAdeleRing (𝓞 D.host.E) D.host.E) :=
    {z | ∀ w : HeightOneSpectrum (𝓞 D.host.E), z w ∈ w.adicCompletionIntegers D.host.E} with hW
  have hWo : IsOpen W := RestrictedProduct.isOpen_forall_mem fun v => Valued.isOpen_valuationSubring _
  set k : FiniteAdeleRing (𝓞 D.host.E) D.host.E := algebraMap D.host.E _ (m : D.host.E)⁻¹ with hk
  have h1 : Continuous fun x : (AE D)ˣ => ((finIdl D x : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E) := Units.continuous_val.comp hcont
  have h2 : Continuous fun x : (AE D)ˣ => (((finIdl D x)⁻¹ : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E) := Units.continuous_coe_inv.comp hcont
  have h3 : Continuous fun x : (AE D)ˣ => (((finIdl D x : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E) - 1) * k := (h1.sub continuous_const).mul continuous_const
  set V : Set (AE D)ˣ := ((fun x : (AE D)ˣ => ((finIdl D x : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E)) ⁻¹' W ∩
      (fun x : (AE D)ˣ => (((finIdl D x)⁻¹ : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E)) ⁻¹' W ∩
      (fun x : (AE D)ˣ => (((finIdl D x : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
      FiniteAdeleRing (𝓞 D.host.E) D.host.E) - 1) * k) ⁻¹' W) with hVdef
  have hV : IsOpen V :=
    ((hWo.preimage h1).inter (hWo.preimage h2)).inter (hWo.preimage h3)
  have hzero : (0 : FiniteAdeleRing (𝓞 D.host.E) D.host.E) ∈ W := fun w => zero_mem _
  have hone : (1 : FiniteAdeleRing (𝓞 D.host.E) D.host.E) ∈ W := fun w => one_mem _
  have h1V : (1 : (AE D)ˣ) ∈ V := by
    refine ⟨⟨?_, ?_⟩, ?_⟩
    · show ((finIdl D 1 : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) : FiniteAdeleRing (𝓞 D.host.E) D.host.E) ∈ W
      rw [map_one, Units.val_one]; exact hone
    · show (((finIdl D 1)⁻¹ : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) : FiniteAdeleRing (𝓞 D.host.E) D.host.E) ∈ W
      rw [map_one, inv_one, Units.val_one]; exact hone
    · show (((finIdl D 1 : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) : FiniteAdeleRing (𝓞 D.host.E) D.host.E) - 1) * k ∈ W
      rw [map_one, Units.val_one, sub_self, zero_mul]; exact hzero
  have hmE : (m : D.host.E) ≠ 0 := Nat.cast_ne_zero.2 hm.ne'
  have key : ∀ x ∈ V, finChar c x = 1 := by
    rintro x ⟨⟨hx1, hx2⟩, hx3⟩
    set u := finIdl D x with hu
    have hy : Formalism.MainNotions.StandardLatticesGL3.IntU D (finY D x) := by
      refine ⟨?_, ?_⟩
      · rw [coe_finY, ← coe_finIdl]
        exact toFinE_symm_mem_OhE _ hx1
      · rw [← map_inv, coe_finY, ← coe_finIdl, map_inv]
        exact toFinE_symm_mem_OhE _ hx2
    have hs : ∃ s ∈ Formalism.MainNotions.StandardLatticesGL3.OhE D, ((finY D x : (Formalism.MainNotions.StandardLatticesGL3.AE D)ˣ) : Formalism.MainNotions.StandardLatticesGL3.AE D) - 1 =
        (m : Formalism.MainNotions.StandardLatticesGL3.AE D) * s := by
      refine ⟨(GlobalTheory.BotFormula.toFinE D).symm ((((u : (FiniteAdeleRing (𝓞 D.host.E) D.host.E)ˣ) :
        FiniteAdeleRing (𝓞 D.host.E) D.host.E) - 1) * k), toFinE_symm_mem_OhE _ hx3, ?_⟩
      rw [coe_finY, ← coe_finIdl, ← hu, ← map_natCast (GlobalTheory.BotFormula.toFinE D).symm m, ← map_mul, ← map_one
        (GlobalTheory.BotFormula.toFinE D).symm, ← map_sub]
      congr 1
      have hmk : (m : FiniteAdeleRing (𝓞 D.host.E) D.host.E) * k = 1 := by
        rw [hk, ← map_natCast (algebraMap D.host.E (FiniteAdeleRing (𝓞 D.host.E) D.host.E)) m, ← map_mul,
          mul_inv_cancel₀ hmE, map_one]
      rw [mul_comm, mul_assoc, mul_comm k, hmk, mul_one]
    have hf := hc _ hy hs
    exact Circle.ext (by rw [coe_finChar, hf, Units.val_one, Circle.coe_one])
  show Filter.Tendsto (finChar c) (𝓝 1) (𝓝 (finChar c 1))
  rw [map_one]
  exact tendsto_nhds_of_eventually_eq (Filter.eventually_of_mem (hV.mem_nhds h1V) key)

end GlobalTheory.HeckeUChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousHeckeCharacterFinitePart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharRestrictsEtaPowOfSign =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharRestrictsEtaPowOfSign", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ExistsInverseChart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsIsEtaTildeUnramified\nimport Development.AbelianVarietyTheory.Proofs.HeightProofs.ExistsRealPointUnitaryWithComponents\npublic import Development.AbelianVarietyTheory.Proofs.HeightProofs.IsFundamentalDomainOfHaar\npublic import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsIntEqExponentAddHalfIndex\nimport Development.AbelianVarietyTheory.Proofs.TwistedOperators.SplittingHeckeCharExistsArchimedeanExponent\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Development.AbelianVarietyTheory.BlockTheory.HeightDefect.UnitaryVolumePairs\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormExact

attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.HeckeSignEta

theorem idF_ratF (D : D7) (a : D.host.Fˣ) :
    idF D (Units.map (algebraMap D.host.F (AF D.host.F)).toMonoidHom a) =
      Units.map (incA D).toMonoidHom (Units.map (algebraMap D.host.F D.host.E).toMonoidHom a) := by
  refine Units.ext ?_
  show algebraMap (AF D.host.F) (AE D) (algebraMap D.host.F (AF D.host.F) (a : D.host.F)) =
    incA D (algebraMap D.host.F D.host.E (a : D.host.F))
  show _ = Algebra.TensorProduct.includeRight (algebraMap D.host.F D.host.E (a : D.host.F))
  rw [AlgHom.commutes, IsScalarTower.algebraMap_apply D.host.F (AF D.host.F) (AE D)]

theorem resEta_of_sign : ∀ (D : D7) (χ : (AE D)ˣ →* Circle) (N : ℕ), IsHeckeChar D χ →
    (∀ x y : (AE D)ˣ, (y : AE D) = x * cA D x → χ y = 1) →
    ∀ θ : InfFam D, IsInfFam θ →
    (∀ (τ : D.what₂.Tau) (x : (AE D)ˣ), finPart D (x : AE D) = 1 → θ τ (infPart D (x : AE D)) = -1 →
      (∀ τ', τ' ≠ τ → θ τ' (infPart D (x : AE D)) = 1) → ((χ x : Circle) : ℂ) = (-1) ^ N) →
    ResEta D χ N := by
  intro D χ N hχ hnorm θ hθ hsign
  refine ⟨GlobalTheory.VolHeckeCompare.exists_isEta D, fun ε hε => ?_⟩

  set ψ : (AF D.host.F)ˣ →* Circle := χ.comp (idF D) * (ε ^ N)⁻¹ with hψ
  have hψa : ∀ a, ψ a = χ (idF D a) * (ε a ^ N)⁻¹ := fun a => rfl
  have hker : GlobalTheory.IndefiniteRowSideFullHecke.UnitaryVolumePairs.normGroup D ≤ ψ.ker := by
    rw [GlobalTheory.VolHeckeCompare.normGroup_eq]
    refine sup_le ?_ ?_
    · rintro _ ⟨a, rfl⟩
      show ψ (Units.map (algebraMap D.host.F (AF D.host.F)).toMonoidHom a) = 1
      rw [hψa, idF_ratF, hχ.2, hε.2.1 a, one_pow, inv_one, mul_one]
    · rintro _ ⟨x, rfl⟩
      obtain ⟨-, -, hN, -⟩ := GlobalTheory.VolHeckeCompare.exists_form D
      have e : (idF D (GlobalTheory.VolHeckeCompare.normU D x) : AE D) = (x : AE D) * cA D (x : AE D) := by
        have e0 : idF D (GlobalTheory.VolHeckeCompare.normU D x) = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryVolumePairs.normId D x := hN x
        rw [e0]; rfl
      show ψ (GlobalTheory.VolHeckeCompare.normU D x) = 1
      rw [hψa, hnorm x _ e, hε.2.2.1 x, one_pow, inv_one, mul_one]

  obtain ⟨τ⟩ : Nonempty D.what₂.Tau := ⟨D.eTau.symm (Classical.arbitrary _)⟩
  obtain ⟨η, -, -, hη1, hη2⟩ := GlobalTheory.WeilParts.exists_isEtaTilde_unramified D
  obtain ⟨N1, hN1, -, hηx⟩ := hη2 τ
  obtain ⟨σ, h⟩ := GlobalTheory.RealLineAt.exists_inverse_chart hθ
  obtain ⟨e, -, e1, e2⟩ := GlobalTheory.SplitCharExp.exists_real_hom h
  set w : D.what₂.Tau → ℂ := Pi.mulSingle τ (-1) with hw
  have wτ : w τ = -1 := by simp [w]
  have wo : ∀ τ', τ' ≠ τ → w τ' = 1 := fun τ' ht => by simp [w, Pi.mulSingle_eq_of_ne ht]
  have ww : w * w = 1 := by
    funext τ'
    by_cases ht : τ' = τ
    · subst ht; simp [wτ]
    · simp [wo τ' ht]
  let x : (AE D)ˣ := ⟨e w, e w, by rw [← map_mul, ww, map_one], by rw [← map_mul, ww, map_one]⟩
  have x1 : finPart D (x : AE D) = 1 := e1 w
  have x2 : ∀ τ', θ τ' (infPart D (x : AE D)) = w τ' := e2 w
  have xτ : θ τ (infPart D (x : AE D)) = -1 := by rw [x2, wτ]
  have xo : ∀ τ', τ' ≠ τ → θ τ' (infPart D (x : AE D)) = 1 := fun τ' ht => by rw [x2, wo τ' ht]
  have hcx : ((χ x : Circle) : ℂ) = (-1 : ℂ) ^ N := hsign τ x x1 xτ xo
  have hN1' : N1 = 1 := by
    have : (N1 : ℚ) = 1 := by rw [hN1]; norm_num
    exact_mod_cast this
  have hηc : ((η x : Circle) : ℂ) = -1 := by rw [hηx θ hθ x x1 xo, xτ, hN1']; simp
  have hfix : cA D (x : AE D) = x := by
    refine GlobalTheory.SplitCharExp.ext_of_chart h ?_ fun τ' => ?_
    · have e3 : finPart D (cA D (x : AE D)) = sigR (Af D.host.F) D.sp.cm.sig (finPart D (x : AE D)) :=
        GlobalTheory.FockCompare.LiftUnitary.snd_sigR D.sp.cm.sig (x : AE D)
      rw [e3, x1, RingHom.map_one]
    · rw [GlobalTheory.FockCompare.comp_cA hθ, x2]
      by_cases ht : τ' = τ
      · rw [ht, wτ]; simp
      · rw [wo τ' ht]; simp
  obtain ⟨y, hy⟩ := GlobalTheory.SplitParity.exists_idF_of_fixed D x hfix

  have hneg : ∀ ε', IsEta D ε' → ((ε' y : Circle) : ℂ) = -1 := fun ε' hε' => by
    have c2 := hη1.2 ε' hε' y
    rw [hy, pow_one] at c2
    rw [← c2, hηc]
  have hψy : ψ y = 1 := by
    refine Circle.ext ?_
    rw [hψa, hy, Circle.coe_mul, Circle.coe_inv, Circle.coe_pow, hcx, hneg ε hε, Circle.coe_one]
    exact mul_inv_cancel₀ (pow_ne_zero _ (by norm_num))
  have hψ1 : ψ = 1 := by
    by_contra hne
    have hψE : IsEta D ψ := (GlobalTheory.VolHeckeCompare.isEta_iff_normGroup D ψ).2 ⟨hker, hne⟩
    have := hneg ψ hψE
    rw [hψy, Circle.coe_one] at this
    norm_num at this
  intro a
  have ha : ψ a = 1 := by rw [hψ1]; rfl
  rw [hψa, mul_inv_eq_one] at ha
  exact ha

end GlobalTheory.HeckeSignEta
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharRestrictsEtaPowOfSign =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacter =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacter", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousPhaseAt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ContinuousHeckeCharacterFinitePart\npublic import Formalism.LocalToGlobal.IndefiniteReal.LocalNewformFunction\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.HeckeCharRestrictsEtaPowOfSign\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar

noncomputable section

namespace GlobalTheory.HeckeUChar
variable {D : D7}

theorem coe_chi {N : ℕ} (c : HeckeU D N) (θ : InfFam D) (e : ℤ) (x : (AE D)ˣ) :
    ((chi c θ e x : Circle) : ℂ) = (((c.f (finY D x) : ℂˣ) : ℂ) *
      ∏ τ, (θ τ (infPart D (x : AE D)) / (‖θ τ (infPart D (x : AE D))‖ : ℂ)) ^ c.n τ) ^ e := by
  rw [chi, MonoidHom.zpow_apply, Circle.coe_zpow, MonoidHom.mul_apply, Circle.coe_mul, coe_finChar, coe_infChar]

theorem exists_hecke_of_heckeU : ∀ {D : D7} {N : ℕ} (c : HeckeU D N) (e : ℤ), (e = 1 ∨ e = -1) →
    ∃ χ : (AE D)ˣ →* Circle, IsHeckeChar D χ ∧ ResEta D χ N ∧ HasFinPart χ c e := by
  intro D N c e he
  obtain ⟨θ, hθ⟩ := GlobalTheory.AdelicU.exists_isInfFam D
  have hcont : Continuous (chi c θ e) := by
    have h : ((chi c θ e : (AE D)ˣ →* Circle) : (AE D)ˣ → Circle) = fun x => (finChar c x * infChar θ c.n x) ^ e := by
      funext x; rw [chi, MonoidHom.zpow_apply, MonoidHom.mul_apply]
    rw [h]
    exact ((_root_.GlobalTheory.HeckeUChar.continuous_finChar c).mul (continuous_infChar hθ c.n)).zpow e
  have haut : ∀ a : D.host.Eˣ, chi c θ e (Units.map (incA D).toMonoidHom a) = 1 := by
    intro a
    refine Circle.ext ?_
    rw [coe_chi, finY_incA]
    have h1 : ∀ τ, θ τ (infPart D ((Units.map (incA D).toMonoidHom a : (AE D)ˣ) : AE D)) = embT D τ (a : D.host.E) :=
      fun τ => GlobalTheory.FockCompare.comp_incA hθ τ _
    simp only [h1]
    rw [c.aut a, one_zpow, Circle.coe_one]
  refine ⟨chi c θ e, ⟨hcont, haut⟩, ?_, fun x y hxy => ?_⟩
  · refine _root_.GlobalTheory.HeckeSignEta.resEta_of_sign D _ N ⟨hcont, haut⟩ (fun x y hy => Circle.ext ?_) θ hθ fun τ x h1 h2 h3 => ?_
    · rw [coe_chi, finY_mul_conj x y hy, c.norm, Units.val_one, one_mul, Circle.coe_one]
      have h4 : ∀ τ, θ τ (infPart D (y : AE D)) / (‖θ τ (infPart D (y : AE D))‖ : ℂ) = 1 := by
        intro τ
        have e1 : θ τ (infPart D (y : AE D)) = (Complex.normSq (θ τ (infPart D (x : AE D))) : ℂ) := by
          rw [hy, RingHom.map_mul, map_mul, GlobalTheory.FockCompare.comp_cA hθ, Complex.mul_conj]
        have hne : θ τ (infPart D (x : AE D)) ≠ 0 := by
          intro h0
          have := congrArg (fun z => θ τ (infPart D z)) (Units.mul_inv x)
          simp only [map_mul, h0, zero_mul, map_one] at this
          exact zero_ne_one this
        have hp : 0 < Complex.normSq (θ τ (infPart D (x : AE D))) := Complex.normSq_pos.2 hne
        rw [e1, Complex.norm_real, Real.norm_of_nonneg hp.le]
        exact div_self (by exact_mod_cast hp.ne')
      simp only [h4, one_zpow, Finset.prod_const_one, one_zpow]
    · have hf : finY D x = 1 := Units.ext (by
        rw [coe_finY, h1, map_one, map_one, Units.val_one])
      rw [coe_chi, hf, map_one, Units.val_one, one_mul, Finset.prod_eq_single τ (fun τ' _ hτ' => by
        rw [h3 τ' hτ']; simp) (fun h => absurd (Finset.mem_univ τ) h), h2]
      have hn : (-1 : ℂ) / (‖(-1 : ℂ)‖ : ℂ) = -1 := by simp
      rw [hn, ← zpow_mul]
      obtain ⟨k, hk⟩ := c.par τ
      have hodd : Odd e := by rcases he with rfl | rfl <;> decide
      obtain ⟨j, hj⟩ := hodd
      have : c.n τ * e = (N : ℤ) + 2 * (k * e + j * (N : ℤ) - (N : ℤ) * 0) := by
        have : c.n τ = k + k + N := by linarith
        rw [this, hj]; ring
      rw [this, zpow_add₀ (by norm_num), zpow_mul, show ((-1 : ℂ) ^ (2 : ℤ)) = 1 by norm_num, one_zpow, mul_one,
        zpow_natCast]
  · obtain ⟨h1, h2⟩ := hxy
    have hy : finY D x = y := Units.ext (by rw [coe_finY, h2, RingEquiv.symm_apply_apply])
    rw [coe_chi, hy, h1]
    simp only [map_one, norm_one, Complex.ofReal_one, div_one, one_zpow, Finset.prod_const_one, mul_one]
    rw [Units.val_zpow_eq_zpow_val]

end GlobalTheory.HeckeUChar
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacter =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacterStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacterStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCongLevelIntG\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacter\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField MeasureTheory
open scoped Classical
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum
open Formalism.MainNotions.TaylorLogMetric (VC embT tor0 Hf lamOf area Th U)
open Formalism.MainNotions.StandardLatticesGL3 (WeilO HeckeU TT stdL pt oddE0)
open GlobalTheory.NormSum (Pair Tup minorPol ratG intG Cls gam)
open GlobalTheory.NormDict GlobalTheory.NormExact
open GlobalTheory.BotFormula (IsFinPt)
open GlobalTheory.IndefiniteRowSideFullHecke.ClassFunctionSumIntegral (IsDefiniteSpace IsOpenCompactLevel)

attribute [local instance] Formalism.BasicNotions.Host.cmStar


theorem _root_.GlobalTheory.T.exists_heckeCharacter_of_thetaModelCharacter : ∀ {D : D7} {N : ℕ} (c : HeckeU D N) (e : ℤ), (e = 1 ∨ e = -1) →
  ∃ χ : (AE D)ˣ →* Circle, IsHeckeChar D χ ∧ ResEta D χ N ∧ HasFinPart χ c e := by
  first | exact @GlobalTheory.HeckeUChar.exists_hecke_of_heckeU
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsHeckeCharacterOfThetaModelCharacterStatement =====
