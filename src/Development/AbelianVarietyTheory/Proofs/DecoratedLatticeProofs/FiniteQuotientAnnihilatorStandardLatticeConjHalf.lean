module

public import Mathlib.Algebra.Group.Subgroup.Defs
public import Mathlib.Data.Finset.Defs
public import Mathlib.Algebra.Group.Action.Defs
public import Mathlib.Algebra.GroupWithZero.Action.Defs
public import Mathlib.Data.Finset.Image
public import Formalism.LocalToGlobal.IndefiniteReal.DatumVec
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem
public import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSelfDualCLatFrame
public import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SelfDualLatticePairingDual
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulMemStdHom
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteAnnihilatorOpenSubgroupInBox
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.AddCharTrivialIntegralFiniteAdeleMul
public import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.StdCharFinitePartRationalEqExpTrace
public import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFiniteRepsHalfStandardHomModNsmul
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
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
import Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators
import Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth
import Development.AbelianVarietyTheory.Definitions.LatticeFrames.MidChart
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemRangeOfOneTmulMem
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdempotentMulEqZeroOfOrthogonal
import Mathlib.Algebra.AffineMonoid.Basic
import Mathlib.RingTheory.PicardGroup
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.PiTensorProduct

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AddSubgroupFiniteQuotOfCommensurable, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsIdemSumConjOfIsIdemSum, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulAnnihilatorHalfMemStandardHom, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PairFiniteAdeleZeroMulPairFiniteAdeleZero, Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteQuotientAnnihilatorStandardLatticeConjHalf

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AddSubgroupFiniteQuotOfCommensurable =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AddSubgroupFiniteQuotOfCommensurable", "h": "module\n\npublic import Mathlib.Algebra.Group.Subgroup.Defs\npublic import Mathlib.Data.Finset.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Group.Action.Defs\npublic import Mathlib.Algebra.GroupWithZero.Action.Defs\npublic import Mathlib.Data.Finset.Image\n\n"}
section -- clump:auto
@[expose] public section

namespace GlobalTheory

theorem addSubgroup_finite_quot_of_commensurable : ∀ (V : Type) [AddCommGroup V] (A L : AddSubgroup V) (N M : ℕ), 0 < N → 0 < M → (∀ v : V, N • v = 0 → v = 0) → (∀ a ∈ A, N • a ∈ L) → (∀ l ∈ L, M • l ∈ A) → (∀ j : ℕ, 0 < j → ∃ R : Finset V, ∀ u ∈ L, ∃ r ∈ R, ∃ v ∈ L, u = r + j • v) → ∀ k : ℕ, 0 < k → ∃ R : Finset V, ∀ u ∈ A, ∃ r ∈ R, ∃ v ∈ A, u = r + k • v := by
  classical
  intro V _ A L N M hN hM htf hAL hLA hfin k hk
  obtain ⟨R₀, hR₀⟩ := hfin (k * N * M) (by positivity)
  let P : V → Prop := fun r₀ => ∃ a ∈ A, ∃ w ∈ L, N • a = r₀ + (k * N * M) • w
  let f : V → V := fun r₀ => if h : P r₀ then h.choose else 0
  refine ⟨R₀.image f, ?_⟩
  intro u hu
  obtain ⟨r₀, hr₀, v, hv, huv⟩ := hR₀ (N • u) (hAL u hu)
  have hP : P r₀ := ⟨u, hu, v, hv, huv⟩
  have hf : f r₀ = hP.choose := dif_pos hP
  obtain ⟨haA, w, hwL, haw⟩ := hP.choose_spec
  refine ⟨f r₀, Finset.mem_image_of_mem f hr₀, M • (v - w), hLA _ (L.sub_mem hv hwL), ?_⟩
  rw [hf]
  have key : N • (u - (hP.choose + k • M • (v - w))) = 0 := by
    have e : N • k • M • (v - w) = (k * N * M) • (v - w) := by
      rw [smul_smul, smul_smul]
      congr 1
      ring
    rw [smul_sub, smul_add, huv, haw, e, smul_sub]
    abel
  exact sub_eq_zero.mp (htf _ key)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AddSubgroupFiniteQuotOfCommensurable =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsIdemSumConjOfIsIdemSum =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsIdemSumConjOfIsIdemSum", "h": "module\n\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FinPartConjMem\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\npublic import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.MidChart\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.CovolOneIntegralAdd\nimport Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.WittSmallGroupEmbeddingMemPointwiseStabilizerIso\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.AdForm GlobalTheory.LocMod

namespace GlobalTheory.IdemSumConj

theorem exists_isIdemSum_cA :
    ∀ (D : D7) (Q : Finset (Formalism.L2.DIV.Pl D.host.E)) (E₂ : AE D), IsIdemSum E₂ Q →
      ∃ Q' : Finset (Formalism.L2.DIV.Pl D.host.E), IsIdemSum (cA D E₂) Q' := by
  intro D P e h
  classical
  refine ⟨P.image Formalism.L2.DIV.conjPl, ?_⟩
  obtain ⟨⟨es, hes, he⟩, hc⟩ := h
  refine ⟨⟨fun Q => cA D (es (Formalism.L2.DIV.conjPl Q)), ?_, ?_⟩, ?_⟩
  · intro Q hQ
    obtain ⟨PP, hPP, rfl⟩ := Finset.mem_image.1 hQ
    show Formalism.L2.NTheta.IsIdemAt (cA D (es (Formalism.L2.DIV.conjPl (Formalism.L2.DIV.conjPl PP)))) (Formalism.L2.DIV.conjPl PP)
    rw [Formalism.L2.DIV.conjPl_conjPl]
    exact GlobalTheory.MovedIdem.isIdemAt_conj (hes PP hPP) fun x => Iff.rfl
  · rw [Finset.sum_image (fun a _ b _ (hab : Formalism.L2.DIV.conjPl a = Formalism.L2.DIV.conjPl b) => by
      rw [← Formalism.L2.DIV.conjPl_conjPl a, hab, Formalism.L2.DIV.conjPl_conjPl b])]
    simp only [Formalism.L2.DIV.conjPl_conjPl]

    rw [he, map_sum]
  · rw [GlobalTheory.MovedIdem.cA_cA, mul_comm]; exact hc

end GlobalTheory.IdemSumConj
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsIdemSumConjOfIsIdemSum =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulAnnihilatorHalfMemStandardHom =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulAnnihilatorHalfMemStandardHom", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.IsSelfDualCLatFrame\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum\nimport Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.MemRangeOfOneTmulMem\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.SelfDualLatticePairingDual\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulMemStdHom\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteAnnihilatorOpenSubgroupInBox\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IdempotentMulEqZeroOfOrthogonal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.AdForm GlobalTheory.LocMod

open scoped TensorProduct

noncomputable section



namespace GlobalTheory.HalfAnnStd

variable {D : D7}

theorem symplO_nsmul_swap (S T : HSp D) (N : ℕ) (x y : WO S T) :
    symplO S T (N • x) y = symplO S T x (N • y) := by
  have h := GlobalTheory.PlaceModel.symplO_smul S T (N : AE D) x y
  rwa [map_natCast, Nat.cast_smul_eq_nsmul, Nat.cast_smul_eq_nsmul] at h

theorem exists_nsmul_frame_mem (S T : HSp D) : ∃ N : ℕ, 0 < N ∧
    ∀ y ∈ latO S T (GlobalTheory.PlaceModel.latFrame S : Set (Fin S.rank → D.host.E))
      (GlobalTheory.PlaceModel.latFrame T : Set (Fin T.rank → D.host.E)) (fun _ => True), N • y ∈ stdHom S T := by
  obtain ⟨M, hM, hden⟩ := GlobalTheory.PlaceDatum.exists_den_latO (S := S) (T := T)
    (GlobalTheory.PlaceModel.isSelfDualC_latFrame S).1.fg (GlobalTheory.PlaceModel.isSelfDualC_latFrame T).1.fg
  obtain ⟨K, hK, hKm⟩ := GlobalTheory.AdForm.exists_nsmul_mem_stdHom S T
  refine ⟨K * M, Nat.mul_pos hK hM, fun y hy => ?_⟩
  rw [mul_smul]
  refine hKm _ (Matrix.ext fun i j => ?_) fun i j => ?_
  · rw [Matrix.map_apply, Matrix.smul_apply, nsmul_eq_mul, RingHom.map_mul, GlobalTheory.LatVac.infPart_of_mem hy i j,
      mul_zero, Matrix.zero_apply]
  · rw [Matrix.smul_apply, nsmul_eq_mul, RingHom.map_mul, map_natCast]
    exact hden y hy i j

theorem exists_nsmul_ann_mem_stdHom : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (S T : HSp D) (Q : Finset (Formalism.L2.DIV.Pl D.host.E)) (E₂ : AE D), IsIdemSum E₂ Q → ∃ N : ℕ, 0 < N ∧ ∀ u : WO S T, IsHalf (cA D E₂) u → (∀ x ∈ stdHom S T, IsHalf E₂ x → ψ (symplO S T x u) = 1) → N • u ∈ stdHom S T := by
  intro D ψ hψ S T Q e he
  obtain ⟨N, hN, hNm⟩ := exists_nsmul_frame_mem S T
  refine ⟨N * N, Nat.mul_pos hN hN, fun u hu hann => ?_⟩
  have hee := GlobalTheory.PlaceDatum.idemSum_mul_self he
  have hinf := GlobalTheory.AnnihBox.infPart_cA' e (GlobalTheory.PlaceDatum.infPart_idemSum he)
  have hfix : cA D e • u = u := Matrix.ext fun i j => hu i j
  have hall : ∀ x ∈ stdHom S T, ψ (symplO S T x u) = 1 := fun x hx => by
    have h := hann (e • x) (GlobalTheory.LatticeStable.smul_mem_latO D S T _ _ _ e
      (GlobalTheory.AdIdem.idempotent_mem_intAE D _ (by rw [← map_mul, hee])) _ hx) fun i j => by
        change e * (e * _) = e * _
        rw [← mul_assoc, hee]
    rwa [GlobalTheory.PlaceModel.symplO_smul, hfix] at h
  rw [mul_smul]
  refine hNm _ (((GlobalTheory.LatVac.latO_selfDual_approx_sign D ψ S T _ _ hψ (GlobalTheory.PlaceModel.isSelfDualC_latFrame S)
    (GlobalTheory.PlaceModel.isSelfDualC_latFrame T)).1 _ (Matrix.ext fun i j => ?_)).2 fun y hy => ?_)
  · rw [Matrix.map_apply, Matrix.smul_apply, nsmul_eq_mul, RingHom.map_mul, ← hu i j, RingHom.map_mul, hinf, zero_mul,
      mul_zero, Matrix.zero_apply]
  · rw [symplO_nsmul_swap, GlobalTheory.PlaceModel.symplO_skew, AddChar.map_neg_eq_inv, hall _ (hNm y hy), inv_one]

end GlobalTheory.HalfAnnStd

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulAnnihilatorHalfMemStandardHom =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PairFiniteAdeleZeroMulPairFiniteAdeleZero =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PairFiniteAdeleZeroMulPairFiniteAdeleZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.AddCharTrivialIntegralFiniteAdeleMul\npublic import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.StdCharFinitePartRationalEqExpTrace\nimport Formalism.LocalRingCardinality.SpanPowerMembership.ExampleLayerExistsGenerators\nimport Formalism.SharpRestriction.CuspSpanNormBounds.BesselShellMomentBounds\nimport Mathlib.Algebra.AffineMonoid.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PicardGroup\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.Foundations.MatrixMeasurableSpace\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsThetaFam\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.EvalVAlgebraMapMem\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.AdForm GlobalTheory.LocMod
open NumberField
open scoped TensorProduct Classical
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.StdHomOrth

variable {D : D7}

def finInt (D : D7) : AddSubgroup (AE D) :=
  AddSubgroup.closure {z | ∃ α ∈ intAf D.host.F, ∃ x : D.host.E, IsIntegral ℤ x ∧ z = (pairA D.host.F 0 α) ⊗ₜ[D.host.F] x}

theorem gen_mem {α : Af D.host.F} (hα : α ∈ intAf D.host.F) {x : D.host.E} (hx : IsIntegral ℤ x) :
    ((pairA D.host.F 0 α) ⊗ₜ[D.host.F] x : AE D) ∈ finInt D :=
  AddSubgroup.subset_closure ⟨α, hα, x, hx, rfl⟩

theorem incA_eq (e : D.host.E) : incA D e = ((1 : AF D.host.F) ⊗ₜ[D.host.F] e : AE D) := rfl

theorem cA_tmul (a : AF D.host.F) (e : D.host.E) : cA D (a ⊗ₜ[D.host.F] e) = a ⊗ₜ[D.host.F] star e := rfl

theorem trace_tmul {R : Type} [CommRing R] [Algebra D.host.F R] (a : R) (e : D.host.E) :
    Algebra.trace R (R ⊗[D.host.F] D.host.E) (a ⊗ₜ[D.host.F] e) =
      a * algebraMap D.host.F R (Algebra.trace D.host.F D.host.E e) := by
  have h1 : a ⊗ₜ[D.host.F] e = a • ((1 : R) ⊗ₜ[D.host.F] e) := by
    rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one]
  have h2 : Algebra.lmul R (R ⊗[D.host.F] D.host.E) ((1 : R) ⊗ₜ[D.host.F] e) =
      (Algebra.lmul D.host.F D.host.E e).baseChange R := by
    ext x
    simp
  rw [h1, map_smul, smul_eq_mul, Algebra.trace_apply, h2, LinearMap.trace_baseChange, ← Algebra.trace_apply]

theorem intAf_mul' {a b : Af D.host.F} (ha : a ∈ intAf D.host.F) (hb : b ∈ intAf D.host.F) : a * b ∈ intAf D.host.F :=
  fun w => by rw [map_mul]; exact mul_mem (ha w) (hb w)

theorem coe_mem_intAf (r : 𝓞 D.host.F) : algebraMap D.host.F (Af D.host.F) (r : D.host.F) ∈ intAf D.host.F := by
  intro v
  rw [AlgHom.commutes]
  exact IsDedekindDomain.HeightOneSpectrum.coe_algebraMap_mem (𝓞 D.host.F) D.host.F v r

theorem char_int {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {β : Af D.host.F} (hβ : β ∈ intAf D.host.F) :
    ψ (pairA D.host.F 0 β) = 1 := by
  have := GlobalTheory.IntDense.addChar_eq_one_of_integral D.host.F ψ hψ.1.1 1 (fun a => by
    have htr : Algebra.trace ℚ D.host.F (a : D.host.F) = ((Algebra.intTrace ℤ (𝓞 D.host.F) a : ℤ) : ℚ) :=
      (Algebra.algebraMap_intTrace (A := ℤ) (K := ℚ) (L := D.host.F) a).symm
    rw [mul_one, GlobalTheory.StdRat.stdChar_fin_rat D ψ hψ, htr, mul_comm]
    push_cast
    exact Complex.exp_int_mul_two_pi_mul_I _) β hβ
  rwa [map_one, mul_one] at this

theorem pairFiniteAdele_zero_mul_pairFiniteAdele_zero (α β : Af D.host.F) :
    pairA D.host.F 0 α * pairA D.host.F 0 β = pairA D.host.F 0 (α * β) :=
  Prod.ext (mul_zero (0 : Ainf D.host.F)) rfl

theorem pairFiniteAdele_zero_mul_algebraMap_base (α : Af D.host.F) (q : D.host.F) :
    pairA D.host.F 0 α * algebraMap D.host.F (AF D.host.F) q =
      pairA D.host.F 0 (α * algebraMap D.host.F (Af D.host.F) q) :=
  Prod.ext (zero_mul (algebraMap D.host.F (Ainf D.host.F) q)) rfl

theorem incA_mul_mem {e : D.host.E} (he : IsIntegral ℤ e) {z : AE D} (hz : z ∈ finInt D) : incA D e * z ∈ finInt D := by
  induction hz using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨α, hα, x, hx, rfl⟩ := hy
    rw [incA_eq, Algebra.TensorProduct.tmul_mul_tmul, one_mul]
    exact gen_mem hα (he.mul hx)
  | zero => rw [mul_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [mul_add]; exact add_mem hx hy
  | neg x _ hx => rw [mul_neg]; exact neg_mem hx

theorem cA_mem {z : AE D} (hz : z ∈ finInt D) : cA D z ∈ finInt D := by
  induction hz using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨α, hα, x, hx, rfl⟩ := hy
    rw [cA_tmul]
    exact gen_mem hα (GlobalTheory.IdemPrime.isIntegral_star hx)
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx

theorem mul_mem' {z w : AE D} (hz : z ∈ finInt D) (hw : w ∈ finInt D) : z * w ∈ finInt D := by
  induction hz using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨α, hα, x, hx, rfl⟩ := hy
    induction hw using AddSubgroup.closure_induction with
    | mem y hy =>
      obtain ⟨β, hβ, x', hx', rfl⟩ := hy
      rw [Algebra.TensorProduct.tmul_mul_tmul, pairFiniteAdele_zero_mul_pairFiniteAdele_zero]
      exact gen_mem (intAf_mul' hα hβ) (hx.mul hx')
    | zero => rw [mul_zero]; exact zero_mem _
    | add x y _ _ hx hy => rw [mul_add]; exact add_mem hx hy
    | neg x _ hx => rw [mul_neg]; exact neg_mem hx
  | zero => rw [zero_mul]; exact zero_mem _
  | add x y _ _ hx hy => rw [add_mul]; exact add_mem hx hy
  | neg x _ hx => rw [neg_mul]; exact neg_mem hx

theorem psi_trace {ψ : AddChar (AF D.host.F) ℂ} (hψ : IsStdChar D ψ (-1)) {z : AE D} (hz : z ∈ finInt D) :
    ψ (Algebra.trace (AF D.host.F) (AE D) z) = 1 := by
  induction hz using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨α, hα, x, hx, rfl⟩ := hy
    have hint : IsIntegral ℤ (Algebra.trace D.host.F D.host.E x) := Algebra.isIntegral_trace hx
    rw [trace_tmul, pairFiniteAdele_zero_mul_algebraMap_base]
    exact char_int hψ (intAf_mul' hα (coe_mem_intAf ⟨_, hint⟩))
  | zero => rw [map_zero]; exact AddChar.map_zero_eq_one ψ
  | add x y _ _ hx hy => rw [map_add (f := _), AddChar.map_add_eq_mul, hx, hy, one_mul]
  | neg x _ hx => rw [map_neg, AddChar.map_neg_eq_inv, hx, inv_one]

theorem exists_den {ι : Type} [Fintype ι] (f : ι → D.host.E) :
    ∃ d : ℕ, 0 < d ∧ ∀ i, IsIntegral ℤ ((d : D.host.E) * f i) := by
  have : Algebra.IsAlgebraic ℤ D.host.E :=
    (IsFractionRing.comap_isAlgebraic_iff (A := ℤ) (K := ℚ) (C := D.host.E)).2 inferInstance
  obtain ⟨y, hy, h⟩ := Algebra.IsAlgebraic.exists_integral_multiples ℤ (Finset.univ.image f)
  refine ⟨y.natAbs, Int.natAbs_pos.2 hy, fun i => ?_⟩
  have h1 := h (f i) (Finset.mem_image.2 ⟨i, Finset.mem_univ _, rfl⟩)
  rw [zsmul_eq_mul] at h1
  rcases Int.natAbs_eq y with e | e
  · rw [e] at h1; simpa using h1
  · rw [e] at h1
    have := h1.neg
    simpa using this

theorem exists_den_entries (S T : HSp D) : ∃ d : ℕ, 0 < d ∧ ∀ v ∈ stdHom S T, ∀ r s, (d : AE D) * v r s ∈ finInt D := by
  obtain ⟨a0, ha0, hfrac⟩ := D.host.AA.isFractional
  have ha0' : ((a0 : 𝓞 D.host.E) : D.host.E) ≠ 0 := by
    intro h
    exact nonZeroDivisors.coe_ne_zero ⟨a0, ha0⟩ (RingOfIntegers.coe_eq_zero_iff.1 h)
  obtain ⟨d, hd, hx0⟩ := exists_den (D := D) fun _ : Unit => ((a0 : D.host.E))⁻¹
  obtain ⟨e, he, hG⟩ := exists_den (D := D) fun p : Fin S.rank × Fin S.rank => S.gram p.1 p.2
  refine ⟨d * e, Nat.mul_pos hd he, fun v hv => ?_⟩
  induction hv using AddSubgroup.closure_induction with
  | mem w hw =>
    obtain ⟨α, hα, -, a, ha, s, hs, t, ht, rfl⟩ := hw
    intro r c
    have hint' : IsIntegral ℤ (((d * e : ℕ) : D.host.E) * (a * t r * ∑ k, star (s k) * S.gram k c)) := by
      have hA : IsIntegral ℤ ((a0 : D.host.E) * a) := by
        obtain ⟨y, hy⟩ := hfrac a ha
        have h2 : IsIntegral ℤ (algebraMap (𝓞 D.host.E) D.host.E y) := y.2
        rw [hy, Algebra.smul_def] at h2
        exact h2
      have hsum : IsIntegral ℤ (∑ k, star (s k) * ((e : D.host.E) * S.gram k c)) :=
        IsIntegral.sum _ fun k _ => IsIntegral.mul (GlobalTheory.IdemPrime.isIntegral_star (hs k)) (hG (k, c))
      have e1 : ((d * e : ℕ) : D.host.E) * (a * t r * ∑ k, star (s k) * S.gram k c) =
          ((d : D.host.E) * ((a0 : D.host.E))⁻¹) * ((a0 : D.host.E) * a) * t r *
            ∑ k, star (s k) * ((e : D.host.E) * S.gram k c) := by
        have hx : ((a0 : D.host.E))⁻¹ * (a0 : D.host.E) = 1 := inv_mul_cancel₀ ha0'
        have e2 : ∑ k, star (s k) * ((e : D.host.E) * S.gram k c) = (e : D.host.E) * ∑ k, star (s k) * S.gram k c := by
          rw [Finset.mul_sum]; exact Finset.sum_congr rfl fun k _ => by ring
        rw [e2]; push_cast
        linear_combination (-((d : D.host.E) * e * a * t r * ∑ k, star (s k) * S.gram k c)) * hx
      rw [e1]
      exact (((hx0 ()).mul hA).mul (ht r)).mul hsum
    rw [Matrix.of_apply, ← map_natCast (incA D) (d * e), incA_eq, Algebra.TensorProduct.tmul_mul_tmul, one_mul]
    exact gen_mem hα hint'
  | zero => intro r s; rw [Matrix.zero_apply, mul_zero]; exact zero_mem _
  | add x y _ _ hx hy => intro r s; rw [Matrix.add_apply, mul_add]; exact add_mem (hx r s) (hy r s)
  | neg x _ hx => intro r s; rw [Matrix.neg_apply, mul_neg]; exact neg_mem (hx r s)

theorem exists_nsmul_orth : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (S T : HSp D), ∃ M : ℕ, 0 < M ∧ ∀ x ∈ stdHom S T, ∀ w ∈ stdHom S T, ψ (symplO S T x (M • w)) = 1 := by
  intro D ψ hψ S T
  obtain ⟨d, hd, hden⟩ := exists_den_entries S T
  obtain ⟨p, hp, hξ⟩ := exists_den (D := D) fun _ : Unit => D.host.xi0
  obtain ⟨q, hq, hS⟩ := exists_den (D := D) fun i : Fin S.rank × Fin S.rank => S.gram⁻¹ i.1 i.2
  obtain ⟨r, hr, hT⟩ := exists_den (D := D) fun i : Fin T.rank × Fin T.rank => T.gram i.1 i.2
  refine ⟨p * q * r * d * d, by positivity, fun x hx w hw => ?_⟩
  refine psi_trace hψ ?_
  unfold hO
  simp only [Finset.mul_sum]
  refine sum_mem fun a _ => sum_mem fun b _ => sum_mem fun c _ => sum_mem fun e _ => ?_
  have key : incA D D.host.xi0 * (incA D (S.gram⁻¹ a b) * cA D (((p * q * r * d * d) • w) c b) * incA D (T.gram c e) * x e a) =
      incA D ((p : D.host.E) * D.host.xi0) * (incA D ((q : D.host.E) * S.gram⁻¹ a b) * (incA D ((r : D.host.E) * T.gram c e) *
        (cA D ((d : AE D) * w c b) * ((d : AE D) * x e a)))) := by
    rw [Matrix.smul_apply, nsmul_eq_mul]
    simp only [map_mul, map_natCast, Nat.cast_mul]
    ring
  rw [key]
  exact incA_mul_mem (hξ ()) (incA_mul_mem (hS (a, b)) (incA_mul_mem (hT (c, e))
    (mul_mem' (cA_mem (hden w hw c b)) (hden x hx e a))))

end GlobalTheory.StdHomOrth
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PairFiniteAdeleZeroMulPairFiniteAdeleZero =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteQuotientAnnihilatorStandardLatticeConjHalf =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteQuotientAnnihilatorStandardLatticeConjHalf", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.LatticeFrames.IsRatDatum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.AddSubgroupFiniteQuotOfCommensurable\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsFiniteRepsHalfStandardHomModNsmul\npublic import Formalism.LocalToGlobal.IndefiniteReal.DatumVec\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsIsIdemSumConjOfIsIdemSum\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.ExistsNsmulAnnihilatorHalfMemStandardHom\npublic import Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.PairFiniteAdeleZeroMulPairFiniteAdeleZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.ExistsUnitarySupportedAtPlaceOfMulEqIdem\nimport Development.AbelianVarietyTheory.Definitions.LatticeFrames.JointSmooth\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum MeasureTheory Matrix ValuativeRel GlobalTheory.MixModel GlobalTheory.MixPer GlobalTheory.Unf GlobalTheory.SplitWeil GlobalTheory.SeeSaw GlobalTheory.AdForm GlobalTheory.LocMod

noncomputable section



namespace GlobalTheory.AnnConjHalf

variable {D : D7}

theorem symplO_neg_right' (S T : HSp D) (x u : WO S T) :
    symplO S T x (-u) = -symplO S T x u := by
  simp only [symplO, hO, Matrix.neg_apply, map_neg, mul_neg, neg_mul, Finset.sum_neg_distrib]

def annHalf (ψ : AddChar (AF D.host.F) ℂ) (S T : HSp D) (E₂ : AE D) : AddSubgroup (WO S T) where
  carrier := {u | IsHalf (cA D E₂) u ∧ ∀ x ∈ stdHom S T, IsHalf E₂ x → ψ (symplO S T x u) = 1}
  zero_mem' := ⟨fun i j => by simp, fun x _ _ => by rw [_root_.GlobalTheory.PlaceModel.symplO_zero_right, AddChar.map_zero_eq_one]⟩
  add_mem' := by
    rintro u v ⟨hu, hu'⟩ ⟨hv, hv'⟩
    refine ⟨fun i j => by rw [Matrix.add_apply, mul_add, hu i j, hv i j], fun x hx hxh => ?_⟩
    rw [_root_.GlobalTheory.LatVac.symplO_add_right, AddChar.map_add_eq_mul, hu' x hx hxh, hv' x hx hxh, mul_one]
  neg_mem' := by
    rintro u ⟨hu, hu'⟩
    refine ⟨fun i j => by rw [Matrix.neg_apply, mul_neg, hu i j], fun x hx hxh => ?_⟩
    rw [symplO_neg_right', AddChar.map_neg_eq_inv, hu' x hx hxh, inv_one]

def stdHalf (S T : HSp D) (f : AE D) : AddSubgroup (WO S T) where
  carrier := {u | u ∈ stdHom S T ∧ IsHalf f u}
  zero_mem' := ⟨zero_mem _, fun i j => by simp⟩
  add_mem' := by
    rintro u v ⟨hu, hu'⟩ ⟨hv, hv'⟩
    exact ⟨add_mem hu hv, fun i j => by rw [Matrix.add_apply, mul_add, hu' i j, hv' i j]⟩
  neg_mem' := by
    rintro u ⟨hu, hu'⟩
    exact ⟨neg_mem hu, fun i j => by rw [Matrix.neg_apply, mul_neg, hu' i j]⟩

theorem half_nsmul {m n : ℕ} {f : AE D} {u : Mx D m n} (hu : IsHalf f u) (N : ℕ) : IsHalf f (N • u) :=
  fun i j => by rw [Matrix.smul_apply, nsmul_eq_mul, mul_left_comm, hu i j]

theorem nsmul_eq_zero_WO (S T : HSp D) {N : ℕ} (hN : 0 < N) (v : WO S T) (h : N • v = 0) : v = 0 := by
  ext i j
  have hij : N • v i j = 0 := by
    have := congrFun (congrFun h i) j
    rwa [Matrix.smul_apply] at this
  have hF : (N : D.host.F) ≠ 0 := Nat.cast_ne_zero.2 hN.ne'
  have hu : IsUnit ((N : ℕ) : AE D) := by
    have := (isUnit_iff_ne_zero.2 hF).map (algebraMap D.host.F (AE D))
    rwa [map_natCast] at this
  rw [nsmul_eq_mul] at hij
  rw [Matrix.zero_apply]
  exact (hu.mul_right_eq_zero).1 hij

theorem ann_conj_half_finite : ∀ (D : D7) (ψ : AddChar (AF D.host.F) ℂ), IsStdChar D ψ (-1) → ∀ (S T : HSp D) (Q : Finset (Formalism.L2.DIV.Pl D.host.E)) (E₂ : AE D), IsIdemSum E₂ Q → ∀ k : ℕ, 0 < k → ∃ R : Finset (WO S T), ∀ u : WO S T, IsHalf (cA D E₂) u → (∀ x ∈ stdHom S T, IsHalf E₂ x → ψ (symplO S T x u) = 1) → ∃ r ∈ R, ∃ v : WO S T, IsHalf (cA D E₂) v ∧ (∀ x ∈ stdHom S T, IsHalf E₂ x → ψ (symplO S T x v) = 1) ∧ u = r + k • v := by
  intro D ψ hψ S T Q E₂ hE k hk
  obtain ⟨N, hN, hup⟩ := _root_.GlobalTheory.HalfAnnStd.exists_nsmul_ann_mem_stdHom D ψ hψ S T Q E₂ hE
  obtain ⟨M, hM, hlow⟩ := GlobalTheory.StdHomOrth.exists_nsmul_orth D ψ hψ S T
  obtain ⟨Q', hQ'⟩ := _root_.GlobalTheory.IdemSumConj.exists_isIdemSum_cA D Q E₂ hE
  have hAL : ∀ a ∈ annHalf ψ S T E₂, N • a ∈ stdHalf S T (cA D E₂) := fun a ha =>
    ⟨hup a ha.1 ha.2, half_nsmul ha.1 N⟩
  have hLA : ∀ l ∈ stdHalf S T (cA D E₂), M • l ∈ annHalf ψ S T E₂ := fun l hl =>
    ⟨half_nsmul hl.2 M, fun x hx _ => hlow x hx l hl.1⟩
  have hfin : ∀ j : ℕ, 0 < j → ∃ R : Finset (WO S T), ∀ u ∈ stdHalf S T (cA D E₂), ∃ r ∈ R,
      ∃ v ∈ stdHalf S T (cA D E₂), u = r + j • v := by
    intro j hj
    obtain ⟨R, hR⟩ := GlobalTheory.HalfStdFin.exists_reps_half_stdHom D S T Q' (cA D E₂) hQ' j hj
    refine ⟨R, fun u hu => ?_⟩
    obtain ⟨r, hr, v, hv, hvh, huv⟩ := hR u hu.1 hu.2
    exact ⟨r, hr, v, ⟨hv, hvh⟩, huv⟩
  obtain ⟨R, hR⟩ := GlobalTheory.addSubgroup_finite_quot_of_commensurable (WO S T) (annHalf ψ S T E₂) (stdHalf S T (cA D E₂))
    N M hN hM (nsmul_eq_zero_WO S T hN) hAL hLA hfin k hk
  refine ⟨R, fun u hu hann => ?_⟩
  obtain ⟨r, hr, v, hv, huv⟩ := hR u ⟨hu, hann⟩
  exact ⟨r, hr, v, hv.1, hv.2, huv⟩

end GlobalTheory.AnnConjHalf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DecoratedLatticeProofs.FiniteQuotientAnnihilatorStandardLatticeConjHalf =====
