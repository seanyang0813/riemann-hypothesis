module

public import Mathlib.RingTheory.AdicCompletion.Basic
public import Mathlib.RingTheory.LocalRing.ResidueField.Defs
public import Mathlib.RingTheory.Noetherian.Defs
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure
public import Mathlib.RingTheory.KrullDimension.Basic
public import Mathlib.RingTheory.LocalRing.Defs
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.CohenStructureFiniteOverNormalCompleteSubring
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
public import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure
public import Mathlib.FieldTheory.AlgebraicClosure
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteOfRigidAtB
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra
public import Mathlib.RingTheory.Localization.Finiteness
public import Mathlib.RingTheory.AdicCompletion.Algebra
public import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalHomAdicCompletionExtend
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrdegResidueFieldOfIsOpenImmersion
public import Mathlib.RingTheory.EssentialFiniteness
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebraHeight.GDimcpl
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
import Mathlib.RingTheory.AdicCompletion.Noetherian
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.ReduceModChar
import Mathlib.Topology.Sheaves.Presheaf
import Mathlib.RingTheory.Ideal.KrullsHeightTheorem
import Mathlib.Topology.Sheaves.Init
import Mathlib.RingTheory.Henselian
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.Tactic.Basify
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Mathlib.Order.CompletePartialOrder
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian
import Mathlib.RingTheory.KrullDimension.Field
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfMaximalIdealLeRadicalCompleteNakayama, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InjectiveOfFiniteOfRingKrullDimEqLocalDomain, Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfMemClosure, Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteTautologicalChartClosedPoint, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveFiniteOfUniqueEmbeddingCompleteNormal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRing, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRingStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfMaximalIdealLeRadicalCompleteNakayama =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfMaximalIdealLeRadicalCompleteNakayama", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.AdicCompletion.Noetherian\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Presheaf\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.CompleteNakayamaLocal

theorem exists_fg_sup_pow_eq_top {B R : Type} [CommRing B] [CommRing R] [IsLocalRing R]
    [IsNoetherianRing R] [Algebra B R]
    (hres : Module.Finite B (R ⧸ maximalIdeal R)) (n : ℕ) :
    ∃ P : Submodule B R, P.FG ∧ P ⊔ (maximalIdeal R ^ n).restrictScalars B = ⊤ := by
  obtain ⟨T, hT⟩ := (Module.Finite.fg_top (R := B) (M := R ⧸ maximalIdeal R))
  choose lift hlift using fun x : R ⧸ maximalIdeal R => Ideal.Quotient.mk_surjective x

  have hTop : Submodule.span B (lift '' (T : Set _)) ⊔ (maximalIdeal R).restrictScalars B = ⊤ := by
    rw [eq_top_iff]
    intro r _
    have hr : Ideal.Quotient.mk (maximalIdeal R) r ∈ Submodule.span B (T : Set _) := by
      rw [hT]; trivial
    have hmap : Submodule.span B (T : Set (R ⧸ maximalIdeal R)) =
        (Submodule.span B (lift '' (T : Set _))).map
          (Ideal.Quotient.mkₐ B (maximalIdeal R)).toLinearMap := by
      rw [Submodule.map_span, ← Set.image_comp]
      congr 1
      ext x
      simp [hlift]
    rw [hmap] at hr
    obtain ⟨t, ht, hte⟩ := hr
    have hu : r - t ∈ maximalIdeal R := by
      rw [← Ideal.Quotient.eq]
      simpa using hte.symm
    rw [Submodule.mem_sup]
    exact ⟨t, ht, r - t, hu, by ring⟩
  induction n with
  | zero => exact ⟨⊥, Submodule.fg_bot, by simp⟩
  | succ n ih =>
    obtain ⟨P, hP, hPtop⟩ := ih
    obtain ⟨gens, hgens⟩ := (IsNoetherian.noetherian (maximalIdeal R ^ n) : (maximalIdeal R ^ n).FG)
    let G : Set R := Set.image2 (· * ·) (lift '' (T : Set _)) (gens : Set R)
    have hGf : G.Finite := ((T.finite_toSet.image _).image2 _ gens.finite_toSet)
    refine ⟨P ⊔ Submodule.span B G, hP.sup (Submodule.fg_def.2 ⟨G, hGf, rfl⟩), ?_⟩

    have key : ∀ y ∈ maximalIdeal R ^ n, ∀ r : R,
        r * y ∈ Submodule.span B G ⊔ (maximalIdeal R ^ (n + 1)).restrictScalars B := by
      intro y hy
      rw [← hgens] at hy
      induction hy using Submodule.span_induction with
      | mem g hg =>
        intro r
        have hr : r ∈ (⊤ : Submodule B R) := trivial
        rw [← hTop, Submodule.mem_sup] at hr
        obtain ⟨t, ht, u, hu, rfl⟩ := hr
        rw [add_mul]
        refine Submodule.add_mem_sup ?_ ?_
        · have : t * g ∈ (Submodule.span B (lift '' (T : Set _))).map (LinearMap.mulRight B g) :=
            ⟨t, ht, rfl⟩
          rw [Submodule.map_span] at this
          refine Submodule.span_mono ?_ this
          rintro _ ⟨s, hs, rfl⟩
          exact ⟨s, hs, g, hg, rfl⟩
        · show u * g ∈ maximalIdeal R ^ (n + 1)
          rw [pow_succ']
          exact Ideal.mul_mem_mul hu (hgens ▸ Submodule.subset_span hg)
      | zero => intro r; simp
      | add a b _ _ ha hb => intro r; rw [mul_add]; exact Submodule.add_mem _ (ha r) (hb r)
      | smul s a _ ha => intro r; rw [smul_eq_mul, ← mul_assoc]; exact ha (r * s)
    rw [eq_top_iff]
    intro x _
    have hx : x ∈ (⊤ : Submodule B R) := trivial
    rw [← hPtop, Submodule.mem_sup] at hx
    obtain ⟨p, hp, y, hy, rfl⟩ := hx
    have hy' := key y hy 1
    rw [one_mul, Submodule.mem_sup] at hy'
    obtain ⟨a, ha, c, hc, rfl⟩ := hy'
    rw [Submodule.mem_sup]
    refine ⟨p + a, Submodule.add_mem_sup hp ha, c, hc, by ring⟩

theorem finite_of_maximalIdeal_le_radical : ∀ (B R : Type) [CommRing B] [IsLocalRing B]
    [IsNoetherianRing B] [CommRing R] [IsLocalRing R] [IsNoetherianRing R] (ψ : B →+* R),
    IsAdicComplete (maximalIdeal B) B → IsLocalHom ψ →
    maximalIdeal R ≤ ((maximalIdeal B).map ψ).radical → ((residue R).comp ψ).Finite →
    ψ.Finite := by
  intro B R _ _ _ _ _ _ ψ hB hψ hrad hres
  letI : Algebra B R := ψ.toAlgebra
  set J : Ideal R := (maximalIdeal B).map (algebraMap B R) with hJdef
  have hJm : J ≤ maximalIdeal R := by
    refine Ideal.map_le_iff_le_comap.2 fun x hx => ?_
    rw [Ideal.mem_comap, mem_maximalIdeal, mem_nonunits_iff]
    exact fun h => (mem_maximalIdeal x).1 hx (isUnit_of_map_unit ψ x h)
  haveI : IsHausdorff J R := ⟨fun x hx => IsHausdorff.haus (I := maximalIdeal R) inferInstance x
    fun n => (hx n).mono (Submodule.smul_mono_left (Ideal.pow_right_mono hJm n))⟩
  obtain ⟨e, he⟩ : ∃ e, maximalIdeal R ^ e ≤ J :=
    Ideal.exists_pow_le_of_le_radical_of_fg hrad (IsNoetherian.noetherian _)
  have hres' : Module.Finite B (R ⧸ maximalIdeal R) := hres
  obtain ⟨P, hP, hPtop⟩ := exists_fg_sup_pow_eq_top hres' e
  haveI : Module.Finite B (R ⧸ J) := by
    refine ⟨?_⟩
    have : (⊤ : Submodule B (R ⧸ J)) = P.map (Ideal.Quotient.mkₐ B J).toLinearMap := by
      refine le_antisymm ?_ le_top
      rintro z -
      obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective z
      have hx : x ∈ (⊤ : Submodule B R) := trivial
      rw [← hPtop, Submodule.mem_sup] at hx
      obtain ⟨p, hp, y, hy, rfl⟩ := hx
      refine ⟨p, hp, ?_⟩
      show Ideal.Quotient.mk J p = Ideal.Quotient.mk J (p + y)
      rw [map_add (f := _), Ideal.Quotient.eq_zero_iff_mem.2 (he hy), add_zero]
    rw [this]
    exact hP.map _
  exact GlobalTheory.FormalIsogeny.finite_of_finite_quotient_map (maximalIdeal B)

end GlobalTheory.CompleteNakayamaLocal
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfMaximalIdealLeRadicalCompleteNakayama =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InjectiveOfFiniteOfRingKrullDimEqLocalDomain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InjectiveOfFiniteOfRingKrullDimEqLocalDomain", "h": "module\n\npublic import Mathlib.RingTheory.KrullDimension.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.CohenStructureFiniteOverNormalCompleteSubring\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Ideal.KrullsHeightTheorem\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory


open IsLocalRing in
theorem _root_.GlobalTheory.injective_of_finite_of_ringKrullDim_eq_of_local_domain :
    ∀ (B R : Type) [CommRing B] [IsDomain B] [IsLocalRing B] [IsNoetherianRing B] [CommRing R]
      [IsLocalRing R] (ψ : B →+* R), ψ.Finite → ringKrullDim R = ringKrullDim B →
      Function.Injective ψ := by
  intro B R _ _ _ _ _ _ ψ hψ hdim
  letI : Algebra B R := ψ.toAlgebra
  haveI : Module.Finite B R := hψ
  have hlt : ringKrullDim B < ⊤ := ringKrullDim_lt_top
  have hne : ringKrullDim B ≠ ⊥ := fun h =>
    (WithBot.bot_lt_coe (0 : ℕ∞)).not_ge (h ▸ (ringKrullDim_nonneg_of_nontrivial (R := B)))
  obtain ⟨m, hm⟩ := WithBot.ne_bot_iff_exists.mp hne
  obtain ⟨n, rfl⟩ : ∃ n : ℕ, (n : ℕ∞) = m := by
    refine ENat.ne_top_iff_exists.mp ?_
    rintro rfl
    exact hlt.ne hm.symm
  exact _root_.GlobalTheory.CohenStructure.injective_of_ringKrullDim_eq (A := B) (S := R) hm.symm
    (hdim.trans hm.symm)

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InjectiveOfFiniteOfRingKrullDimEqLocalDomain =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfMemClosure =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfMemClosure", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\npublic import Mathlib.FieldTheory.IsAlgClosed.AlgebraicClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Mathlib.FieldTheory.AlgebraicClosure\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open AlgebraicGeometry CategoryTheory IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace GlobalTheory.ChartQF

section Alg

variable {A R : Type} [CommRing A] [CommRing R] [IsLocalRing A] [IsLocalRing R] (f : A →+* R)

theorem isAlgebraic_of_mem_closure {K : Type} [Field K] [Algebra (ResidueField A) K] (ev : R →+* K)
    (hev : ∀ a, ev (f a) = algebraMap (ResidueField A) K (residue A a)) {T G : Set R} (hT : T ⊆ Set.range f)
    {D : Subalgebra (ResidueField A) K} (hG : ∀ g ∈ G, ev g ∈ D) {b : R} (hb : b ∈ Subring.closure (T ∪ G)) :
    ev b ∈ D := by
  induction hb using Subring.closure_induction with
  | mem x hx =>
    rcases hx with hx | hx
    · obtain ⟨a, rfl⟩ := hT hx
      rw [hev]
      exact D.algebraMap_mem _
    · exact hG x hx
  | zero => rw [map_zero]; exact D.zero_mem
  | one => rw [map_one]; exact D.one_mem
  | add x y _ _ hx hy => rw [map_add (f := _)]; exact D.add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact D.neg_mem hx
  | mul x y _ _ hx hy => rw [map_mul]; exact D.mul_mem hx hy

theorem finite_residue [IsLocalHom f] {K : Type} [Field K] [Algebra (ResidueField A) K] (ev : R →+* K)
    (hk : RingHom.ker ev = maximalIdeal R)
    (hev : ∀ a, ev (f a) = algebraMap (ResidueField A) K (residue A a)) {T : Set R} {G : Finset R}
    (hT : T ⊆ Set.range f)
    (hb : ∀ r : R, ∃ a ∈ Subring.closure (T ∪ (G : Set R)), ∃ b ∈ Subring.closure (T ∪ (G : Set R)),
      b ∉ maximalIdeal R ∧ b * r - a ∈ maximalIdeal R)
    (hG : ∀ g ∈ G, IsAlgebraic (ResidueField A) (ev g)) : ((residue R).comp f).Finite := by
  classical
  have hker : ∀ r ∈ maximalIdeal R, ev r = 0 := fun r hr => by
    rw [← RingHom.mem_ker, hk]; exact hr

  let ι : ResidueField R →+* K := Ideal.Quotient.lift (maximalIdeal R) ev hker
  have hι : ∀ r, ι (residue R r) = ev r := fun r => rfl

  let D : Subalgebra (ResidueField A) K := Algebra.adjoin (ResidueField A) ((ev : R → K) '' (G : Set R))
  have hDfin : Module.Finite (ResidueField A) D :=
    Algebra.finite_adjoin_of_finite_of_isIntegral (G.finite_toSet.image _)
      (by rintro _ ⟨g, hg, rfl⟩; exact (hG g hg).isIntegral)
  have hB : ∀ c ∈ Subring.closure (T ∪ (G : Set R)), ev c ∈ D := fun c hc =>
    isAlgebraic_of_mem_closure f ev hev hT (D := D)
      (fun g hg => Algebra.subset_adjoin (Set.mem_image_of_mem _ hg)) hc
  have hDint : ∀ d ∈ D, IsIntegral (ResidueField A) d := fun d hd =>
    (Algebra.IsIntegral.isIntegral (R := ResidueField A) (⟨d, hd⟩ : ↥D)).map D.val

  have hrange : ∀ x : ResidueField R, ι x ∈ D := by
    intro x
    obtain ⟨r, rfl⟩ := residue_surjective x
    obtain ⟨a, ha, c, hc, hcm, hca⟩ := hb r
    have h1 : ev c * ev r = ev a := by
      have := hker _ hca
      rw [map_sub, map_mul, sub_eq_zero] at this
      exact this
    have hc0 : ev c ≠ 0 := fun h0 => hcm (by rw [← hk]; exact RingHom.mem_ker.mpr h0)
    have h2 : ev r = ev a * (ev c)⁻¹ := by rw [← h1]; field_simp
    rw [hι, h2]
    exact D.mul_mem (hB a ha) ((hDint _ (hB c hc)).inv_mem (hB c hc))
  letI : Algebra (ResidueField A) (ResidueField R) := (ResidueField.map f).toAlgebra
  have hcompat : ∀ y : ResidueField A, ι (algebraMap _ _ y) = algebraMap (ResidueField A) K y := by
    intro y
    obtain ⟨a, rfl⟩ := residue_surjective y
    show ι (ResidueField.map f (residue A a)) = _
    rw [ResidueField.map_residue, hι, hev]
  let L : ResidueField R →ₗ[ResidueField A] D :=
    { toFun := fun x => ⟨ι x, hrange x⟩
      map_add' := fun x y => Subtype.ext (map_add ι x y)
      map_smul' := fun y x => Subtype.ext (by
        simp only [Algebra.smul_def, map_mul, hcompat, RingHom.id_apply]
        rfl) }
  have hfin : Module.Finite (ResidueField A) (ResidueField R) :=
    FiniteDimensional.of_injective L (fun x y h => ι.injective (congrArg Subtype.val h))
  rw [← ResidueField.map_comp_residue f]
  exact RingHom.Finite.comp hfin (RingHom.Finite.of_surjective _ residue_surjective)

end Alg

theorem exists_geomPoint {R : Type} [CommRing R] [IsLocalRing R] {S : Scheme.{0}} (ξ : Sp R ⟶ S) (p : Sp R)
    (hp : ξ p = ξ (closedPoint R)) :
    ∃ (K : Type) (_ : Field K) (_ : IsAlgClosed K) (_ : Algebra (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) K)
      (ev : R →+* K) (k₀ : Subfield K), IsAlgClosed k₀ ∧ RingHom.ker ev = p.asIdeal ∧
      (∀ a, ev ((Scheme.stalkClosedPointTo ξ).hom a) = algebraMap _ K (residue _ a)) ∧
      (∀ x, x ∈ k₀ ↔ IsAlgebraic (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) x) ∧
      (∀ q, (spMap ev ≫ ξ) q = ξ (closedPoint R)) ∧ ∃ P₀ : Sp k₀ ⟶ S, spMap k₀.subtype ≫ P₀ = spMap ev ≫ ξ := by
  classical
  haveI : p.asIdeal.IsPrime := p.isPrime
  haveI : IsDomain (R ⧸ p.asIdeal) := Ideal.Quotient.isDomain _

  have hcomap : p.asIdeal.comap (Scheme.stalkClosedPointTo ξ).hom = maximalIdeal (S.presheaf.stalk (ξ (closedPoint R))) := by
    have e2 : S.fromSpecStalk _ (Spec.map (Scheme.stalkClosedPointTo ξ) p) =
        S.fromSpecStalk _ (closedPoint (S.presheaf.stalk (ξ (closedPoint R)))) := by
      rw [Scheme.fromSpecStalk_closedPoint, ← Scheme.Hom.comp_apply,
        Scheme.Spec_stalkClosedPointTo_fromSpecStalk, hp]
    have e3 := (S.fromSpecStalk (ξ (closedPoint R))).isEmbedding.injective e2
    exact congrArg PrimeSpectrum.asIdeal e3

  let ev : R →+* AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)) :=
    (algebraMap (FractionRing (R ⧸ p.asIdeal)) (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)))).comp ((algebraMap (R ⧸ p.asIdeal) (FractionRing (R ⧸ p.asIdeal))).comp (Ideal.Quotient.mk p.asIdeal))
  have hker0 : ∀ (P : Ideal R) [P.IsPrime],
      RingHom.ker ((algebraMap (FractionRing (R ⧸ P)) (AlgebraicClosure (FractionRing (R ⧸ P)))).comp
        ((algebraMap (R ⧸ P) (FractionRing (R ⧸ P))).comp (Ideal.Quotient.mk P))) = P := by
    intro P _
    ext x
    rw [RingHom.mem_ker, RingHom.comp_apply, RingHom.comp_apply,
      map_eq_zero_iff _ (algebraMap (FractionRing (R ⧸ P)) (AlgebraicClosure (FractionRing (R ⧸ P)))).injective,
      map_eq_zero_iff _ (IsFractionRing.injective (R ⧸ P) (FractionRing (R ⧸ P))), Ideal.Quotient.eq_zero_iff_mem]
  have hker : RingHom.ker ev = p.asIdeal := hker0 p.asIdeal
  have hev0 : ∀ a ∈ maximalIdeal (S.presheaf.stalk (ξ (closedPoint R))), (ev.comp (Scheme.stalkClosedPointTo ξ).hom) a = 0 := fun a ha => by
    rw [← hcomap] at ha
    show ev ((Scheme.stalkClosedPointTo ξ).hom a) = 0
    rw [← RingHom.mem_ker, hker]
    exact ha
  let ψ : ResidueField (S.presheaf.stalk (ξ (closedPoint R))) →+* AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)) := Ideal.Quotient.lift (maximalIdeal (S.presheaf.stalk (ξ (closedPoint R)))) (ev.comp (Scheme.stalkClosedPointTo ξ).hom) hev0
  letI alg : Algebra (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal))) := ψ.toAlgebra
  let k₀ : Subfield (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal))) := (algebraicClosure (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)))).toSubfield
  have hmem : ∀ x, x ∈ k₀ ↔ IsAlgebraic (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) x := fun x => mem_algebraicClosure_iff
  have hev : ∀ a, ev ((Scheme.stalkClosedPointTo ξ).hom a) = algebraMap (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal))) (residue (S.presheaf.stalk (ξ (closedPoint R))) a) := fun a => rfl
  have hk₀ : IsAlgClosed (algebraicClosure (ResidueField (S.presheaf.stalk (ξ (closedPoint R))))
      (AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)))) :=
    IsAlgClosure.isAlgClosed (ResidueField (S.presheaf.stalk (ξ (closedPoint R))))

  have hpts : ∀ q, (spMap ev ≫ ξ) q = ξ (closedPoint R) := by
    intro q
    haveI : q.asIdeal.IsPrime := q.isPrime
    rw [Scheme.Hom.comp_apply, ← hp]
    congr 1
    apply PrimeSpectrum.ext
    show Ideal.comap ev q.asIdeal = p.asIdeal
    rw [Ideal.eq_bot_of_prime q.asIdeal, ← RingHom.ker_eq_comap_bot, hker]

  have hψ₀ : ∀ a, (ev.comp (Scheme.stalkClosedPointTo ξ).hom) a ∈ k₀ := fun a =>
    (hmem _).mpr (by rw [RingHom.comp_apply, hev]; exact isAlgebraic_algebraMap _)
  let ψ₀ : S.presheaf.stalk (ξ (closedPoint R)) →+* k₀ := (ev.comp (Scheme.stalkClosedPointTo ξ).hom).codRestrict k₀ hψ₀
  have hP₀ : spMap k₀.subtype ≫ (Spec.map (CommRingCat.ofHom ψ₀) ≫ S.fromSpecStalk (ξ (closedPoint R))) =
      spMap ev ≫ ξ := by
    conv_rhs => rw [← Scheme.Spec_stalkClosedPointTo_fromSpecStalk ξ]
    rw [← Category.assoc, ← Category.assoc, ← Spec.map_comp, ← Spec.map_comp]
    rfl
  exact ⟨AlgebraicClosure (FractionRing (R ⧸ p.asIdeal)), inferInstance, inferInstance, alg, ev, k₀, hk₀, hker, hev, hmem, hpts, _, hP₀⟩

theorem range_subset_stalk {F R : Type} [CommRing F] [CommRing R] [IsLocalRing R] {S : Scheme.{0}} (ξ : Sp R ⟶ S)
    (σ : S ⟶ Sp F) (b : F →+* R) (h : ξ ≫ σ = spMap b) :
    Set.range b ⊆ Set.range (Scheme.stalkClosedPointTo ξ).hom := by
  rintro _ ⟨c, rfl⟩
  have key : ∀ g : Sp R ⟶ Sp F, g = spMap b →
      (Sp F).presheaf.germ ⊤ (g (closedPoint R)) trivial ≫ Scheme.stalkClosedPointTo g =
        (Scheme.ΓSpecIso (CommRingCat.of F)).hom ≫ CommRingCat.ofHom b := by
    rintro g rfl
    exact Scheme.germ_stalkClosedPointTo_Spec _
  have e := key _ h
  rw [Scheme.stalkClosedPointTo_comp] at e
  refine ⟨σ.stalkMap (ξ (closedPoint R))
    ((Sp F).presheaf.germ ⊤ _ trivial ((Scheme.ΓSpecIso (CommRingCat.of F)).inv c)), ?_⟩
  have h1 := congrArg (fun φ => φ.hom ((Scheme.ΓSpecIso (CommRingCat.of F)).inv c)) e
  have h2 : ((Scheme.ΓSpecIso (CommRingCat.of F)).hom ≫ CommRingCat.ofHom b).hom
      ((Scheme.ΓSpecIso (CommRingCat.of F)).inv c) = b c := by simp
  rw [← h2, ← h1]
  rfl

theorem eq_spMap_of_injective {F R K : Type} [CommRing F] [CommRing R] [CommRing K] (u : R →+* K)
    (hu : Function.Injective u) (σ : Sp R ⟶ Sp F) (b : F →+* R) (h : spMap u ≫ σ = spMap u ≫ spMap b) :
    σ = spMap b := by
  obtain ⟨g, rfl⟩ := Spec.map_surjective σ
  have h' : g ≫ CommRingCat.ofHom u = CommRingCat.ofHom b ≫ CommRingCat.ofHom u := by
    apply Spec.map_injective
    rw [Spec.map_comp, Spec.map_comp]
    exact h
  show Spec.map g = Spec.map (CommRingCat.ofHom b)
  congr 1
  ext x
  apply hu
  simpa using congrArg (fun φ => φ.hom x) h'

private theorem nonempty_ringHom_of_algebraic_subfield {k K L : Type} [Field k] [Field K] [Field L] [IsAlgClosed L] [Algebra k K]
    (k₀ : Subfield K) (hmem : ∀ x, x ∈ k₀ ↔ IsAlgebraic k x) (ψ : k →+* L) : Nonempty (k₀ →+* L) := by
  letI : Algebra k L := ψ.toAlgebra
  let E : IntermediateField k K :=
    k₀.toIntermediateField (fun x => (hmem _).mpr (isAlgebraic_algebraMap x))
  haveI : Algebra.IsAlgebraic k E :=
    ⟨fun x => IntermediateField.isAlgebraic_iff.mpr ((hmem _).mp x.2)⟩
  exact ⟨(IsAlgClosed.lift : E →ₐ[k] L).toRingHom⟩

theorem quasiFinite_of_pointRigid {F R : Type} [CommRing F] [CommRing R] [IsLocalRing R] {S : Scheme.{0}} (ξ : Sp R ⟶ S)
    (σ : S ⟶ Sp F) (b : F →+* R) (hb : ξ ≫ σ = spMap b) (hft : ((residue R).comp b).EssFiniteType)
    (hc : ∀ (K : Type) [Field K] [IsAlgClosed K] (ev : R →+* K) (k₀ : Subfield K), IsAlgClosed k₀ →
      Nonempty (k₀ →+* AlgebraicClosure (ResidueField R)) →
      (∀ q, (spMap ev ≫ ξ) q = ξ (closedPoint R)) → (∃ P₀ : Sp k₀ ⟶ S, spMap k₀.subtype ≫ P₀ = spMap ev ≫ ξ) →
      (∀ r ∈ maximalIdeal R, ev r = 0) ∧ ∀ r, ev r ∈ k₀) :
    (∀ p : Sp R, ξ p = ξ (closedPoint R) → p = closedPoint R) ∧
      ((residue R).comp (Scheme.stalkClosedPointTo ξ).hom).Finite := by
  classical

  have key : ∀ p : Sp R, ξ p = ξ (closedPoint R) → ∃ (K : Type) (_ : Field K)
      (_ : Algebra (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) K) (ev : R →+* K),
      RingHom.ker ev = p.asIdeal ∧
      (∀ a, ev ((Scheme.stalkClosedPointTo ξ).hom a) = algebraMap _ K (residue _ a)) ∧
      (∀ r ∈ maximalIdeal R, ev r = 0) ∧
      ∀ r, IsAlgebraic (ResidueField (S.presheaf.stalk (ξ (closedPoint R)))) (ev r) := by
    intro p hp
    obtain ⟨K, _, _, _, ev, k₀, hk₀, hker, hev, hmem, hpts, hP₀⟩ := exists_geomPoint ξ p hp
    have hemb : Nonempty (k₀ →+* AlgebraicClosure (ResidueField R)) :=
      nonempty_ringHom_of_algebraic_subfield k₀ hmem ((algebraMap (ResidueField R) (AlgebraicClosure (ResidueField R))).comp
        (ResidueField.map (Scheme.stalkClosedPointTo ξ).hom))
    obtain ⟨h1, h2⟩ := hc K ev k₀ hk₀ hemb hpts hP₀
    exact ⟨K, inferInstance, inferInstance, ev, hker, hev, h1, fun r => (hmem _).mp (h2 r)⟩
  constructor
  · intro p hp
    obtain ⟨K, _, _, ev, hker, -, h1, -⟩ := key p hp
    apply PrimeSpectrum.ext
    refine le_antisymm (le_maximalIdeal p.isPrime.ne_top) ?_
    intro r hr
    rw [← hker]
    exact h1 r hr
  · obtain ⟨K, _, _, ev, hker, hev, -, h2⟩ := key (closedPoint R) rfl

    letI : Algebra F (ResidueField R) := ((residue R).comp b).toAlgebra
    haveI : Algebra.EssFiniteType F (ResidueField R) := hft
    obtain ⟨s, hs⟩ := Algebra.EssFiniteType.cond (R := F) (S := ResidueField R)
    let lift : ResidueField R → R := fun z => (residue_surjective z).choose
    have hlift : ∀ z, residue R (lift z) = z := fun z => (residue_surjective z).choose_spec
    let G : Finset R := s.image lift
    have hadj : ∀ z ∈ Algebra.adjoin F (s : Set (ResidueField R)),
        ∃ a ∈ Subring.closure (Set.range b ∪ (G : Set R)), residue R a = z := by
      intro z hz
      induction hz using Algebra.adjoin_induction with
      | mem x hx =>
        exact ⟨lift x, Subring.subset_closure (Or.inr (Finset.mem_coe.mpr (Finset.mem_image_of_mem _ hx))),
          hlift x⟩
      | algebraMap x => exact ⟨b x, Subring.subset_closure (Or.inl ⟨x, rfl⟩), rfl⟩
      | add x y _ _ hx hy =>
        obtain ⟨a, ha, rfl⟩ := hx
        obtain ⟨c, hc, rfl⟩ := hy
        exact ⟨a + c, add_mem ha hc, map_add _ _ _⟩
      | mul x y _ _ hx hy =>
        obtain ⟨a, ha, rfl⟩ := hx
        obtain ⟨c, hc, rfl⟩ := hy
        exact ⟨a * c, mul_mem ha hc, map_mul _ _ _⟩
    have hb' : ∀ r : R, ∃ a ∈ Subring.closure (Set.range b ∪ (G : Set R)),
        ∃ c ∈ Subring.closure (Set.range b ∪ (G : Set R)),
          c ∉ maximalIdeal R ∧ c * r - a ∈ maximalIdeal R := by
      intro r
      obtain ⟨⟨x, y⟩, hxy⟩ := IsLocalization.mk'_surjective
        ((IsUnit.submonoid (ResidueField R)).comap
          (algebraMap (Algebra.adjoin F (s : Set (ResidueField R))) (ResidueField R)))
        (S := ResidueField R) (residue R r)
      have hspec := IsLocalization.mk'_spec (ResidueField R) x y
      simp only at hxy
      rw [hxy] at hspec
      obtain ⟨a, ha, hae⟩ := hadj x.1 x.2
      obtain ⟨c, hc, hce⟩ := hadj y.1.1 y.1.2
      have hyu : IsUnit (y.1.1 : ResidueField R) := y.2
      refine ⟨a, ha, c, hc, ?_, ?_⟩
      · rw [← residue_eq_zero_iff, hce]
        exact hyu.ne_zero
      · rw [← residue_eq_zero_iff, map_sub, map_mul, hce, hae, mul_comm, sub_eq_zero]
        exact hspec
    exact finite_residue (Scheme.stalkClosedPointTo ξ).hom ev hker hev (range_subset_stalk ξ σ b hb) hb'
      (fun g _ => h2 g)

end GlobalTheory.ChartQF
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfMemClosure =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteTautologicalChartClosedPoint =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteTautologicalChartClosedPoint", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgebraicOfMemClosure\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteOfRigidAtB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.UCanon

theorem quasiFinite_of_tautB : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), 1 ≤ Dw.p + Dw.q → IsPolFan H.bar (min Dw.p Dw.q) φ → NoSelfInt H.bar (min Dw.p Dw.q) φ → ∀ {Z : Scheme.{0}} (zs : Z ⟶ Sp c.F) (i : Xo.XF c ⟶ Z) (OZ : LB Z) (N d : ℕ) (J : Z.IdealSheafData) {S : Scheme.{0}} (π : S ⟶ Z) (j : Xo.XF c ⟶ S) [IsOpenImmersion j] (BD : GlobalTheory.EffCartierData S), GlobalTheory.UPoinc.UPoinOnX Xo c φ zs i OZ N d J π j BD → SepB Xo c φ j → ∀ {k : Type} [Field k] {m e : ℕ} (C : MonoFam Xo c φ (ChartRing k m e)), IsTautB C → ∀ ξ : Sp (ChartRing k m e) ⟶ S, C.y ≫ j = jK _ ≫ ξ → (∀ p : Sp (ChartRing k m e), ξ p = ξ (closedPoint _) → p = closedPoint _) ∧ ((residue (ChartRing k m e)).comp (Scheme.stalkClosedPointTo ξ).hom).Finite := by
  intro E _ _ _ H Dw l Xo c φ _ _ _ Z zs i OZ N d J S π j _ BD hU hS k _ m e C hC ξ hξ
  obtain ⟨⟨_, _, _, _, ⟨_, _, hft⟩, _⟩, ⟨n, s, ε, τ₀, h1, h2, h3, h4, hP⟩⟩ := hC
  have hb : ξ ≫ π ≫ zs = spMap C.b := by
    refine GlobalTheory.ChartQF.eq_spMap_of_injective (algebraMap _ (FractionRing (ChartRing k m e)))
      (IsFractionRing.injective _ _) _ _ ?_
    have e1 : i ≫ zs = pullback.snd _ _ := hU.1.2.2.2.2.1
    have e2 : j ≫ π = i := hU.2.2.2.2.1.2.2.2.2.1
    show jK _ ≫ _ = jK _ ≫ _
    rw [← Category.assoc, ← hξ, Category.assoc, reassoc_of% e2, e1, C.y_over]
  exact GlobalTheory.ChartQF.quasiFinite_of_pointRigid ξ (π ≫ zs) C.b hb hft fun K _ _ ev k₀ hk hemb hq hd =>
    hP K ev k₀ hk hemb (hS _ C (GlobalTheory.ChartQF.base_chartRing C.toFam) ξ hξ n s ε τ₀ h1 h2 h3 h4 K ev k₀ hk hq hd)

end GlobalTheory.UCanon
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteTautologicalChartClosedPoint =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveFiniteOfUniqueEmbeddingCompleteNormal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveFiniteOfUniqueEmbeddingCompleteNormal", "h": "module\n\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ExistsCompleteDvrFiniteSubalgebra\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.FiniteAlgebraLocalCompletion\npublic import Mathlib.RingTheory.Localization.Finiteness\n\n"}
section -- clump:auto
@[expose] public section

open IsLocalRing

namespace GlobalTheory.DegreeOne

theorem surjective_of_unique_injective_localHom : ∀ (B R : Type) [CommRing B] [IsDomain B] [IsLocalRing B] [IsNoetherianRing B] [IsIntegrallyClosed B] [CommRing R] [IsDomain R] [IsLocalRing R] [CharZero R] (ψ : B →+* R), IsAdicComplete (maximalIdeal B) B → Function.Injective ψ → ψ.Finite → (∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] [IsNoetherianRing R'] [IsIntegrallyClosed R'] [CharZero R'], IsAdicComplete (maximalIdeal R') R' → ∀ f g : R →+* R', Function.Injective f → Function.Injective g → IsLocalHom f → IsLocalHom g → f.comp ψ = g.comp ψ → f = g) → Function.Surjective ψ := by
  intro B R _ _ _ _ _ _ _ _ _ ψ hB hinj hfin huniq
  haveI := hB
  letI : Algebra B R := ψ.toAlgebra
  haveI : Module.Finite B R := hfin
  haveI : Algebra.IsIntegral B R := Algebra.IsIntegral.of_finite B R
  haveI : FaithfulSMul B R := (faithfulSMul_iff_algebraMap_injective B R).2 hinj
  haveI : CharZero B := ⟨fun m n h => Nat.cast_injective (R := R) (by simpa only [map_natCast] using congrArg ψ h)⟩
  let K := FractionRing B
  let M := FractionRing R
  have hBM : Function.Injective (algebraMap B M) := by
    rw [IsScalarTower.algebraMap_eq B R M]
    exact (IsFractionRing.injective R M).comp hinj
  haveI : FaithfulSMul B M := (faithfulSMul_iff_algebraMap_injective B M).2 hBM
  letI : Algebra K M := FractionRing.liftAlgebra B M
  haveI : IsScalarTower B K M := FractionRing.isScalarTower_liftAlgebra B M
  haveI : Module.Finite K M := Module.Finite.of_isLocalization B R (Rₚ := K) (Sₚ := M) (nonZeroDivisors B)
  haveI : CharZero K := IsFractionRing.charZero_of_isFractionRing B (K := K)
  let Ω := AlgebraicClosure M
  let L := IntermediateField.normalClosure K M Ω
  haveI : FiniteDimensional K L := normalClosure.is_finiteDimensional K M Ω
  haveI : IsScalarTower B K Ω := inferInstance
  haveI : IsScalarTower B K L := inferInstance
  haveI : CharZero L := charZero_of_injective_algebraMap (algebraMap K L).injective
  let C := integralClosure B L
  haveI : Module.Finite B C := IsIntegralClosure.finite B K L C
  haveI : IsLocalRing C := ReciprocityTheory.ChartRestriction.G.T0.FiniteAlgebraLocalCompletion.isLocalRing_finite_domain (R := B) C
  haveI : IsNoetherianRing C := IsNoetherianRing.of_finite B C
  haveI : IsIntegrallyClosed C := integralClosure.isIntegrallyClosedOfFiniteExtension K
  haveI : CharZero C := ⟨fun m n h => Nat.cast_injective (R := L) (by simpa using congrArg Subtype.val h)⟩
  have hCc : IsAdicComplete (maximalIdeal C) C := CompleteFiniteExtension.isAdicComplete_of_finite_local B C

  have hK : ∀ b : B, algebraMap K L (algebraMap B K b) = algebraMap B L b := fun b =>
    (IsScalarTower.algebraMap_apply B K L b).symm
  have key : ∀ σ : M →ₐ[K] Ω, ∃ f : R →+* C, Function.Injective f ∧ IsLocalHom f ∧ f.comp ψ = algebraMap B C ∧
      ∀ r, ((f r : L) : Ω) = σ (algebraMap R M r) := by
    intro σ
    have hmem : ∀ x, (σ.toRingHom.comp (algebraMap R M)) x ∈ L := fun x =>
      σ.fieldRange_le_normalClosure ⟨_, rfl⟩
    let g₀ : R →+* L := (σ.toRingHom.comp (algebraMap R M)).codRestrict L hmem
    have hg₀ : ∀ b, g₀ (algebraMap B R b) = algebraMap B L b := by
      intro b
      apply Subtype.val_injective
      show σ (algebraMap R M (algebraMap B R b)) = _
      rw [← IsScalarTower.algebraMap_apply B R M, IsScalarTower.algebraMap_apply B K M, σ.commutes,
        ← hK]
      rfl
    let g : R →ₐ[B] L := { g₀ with commutes' := hg₀ }
    have hC : ∀ r, g r ∈ C := fun r => (Algebra.IsIntegral.isIntegral (R := B) r).map g
    let f : R →+* C := (g : R →+* L).codRestrict C hC
    have hcomm : f.comp ψ = algebraMap B C := by
      ext b
      exact congrArg Subtype.val (hg₀ b)
    have hfinj : Function.Injective f := fun x y h =>
      IsFractionRing.injective R M (σ.injective (congrArg (fun c : C => ((c : L) : Ω)) h))
    have hfi : f.IsIntegral := by
      letI : Algebra R C := f.toAlgebra
      haveI : IsScalarTower B R C := IsScalarTower.of_algebraMap_eq' hcomm.symm
      intro c
      exact (integralClosure.isIntegral c).tower_top
    exact ⟨f, hfinj, RingHom.IsIntegral.isLocalHom hfi hfinj, hcomm, fun r => rfl⟩
  choose f hfi hfl hfc hfv using key
  have hemb : ∀ σ τ : M →ₐ[K] Ω, σ = τ := by
    intro σ τ
    have h := huniq C hCc (f σ) (f τ) (hfi σ) (hfi τ) (hfl σ) (hfl τ) ((hfc σ).trans (hfc τ).symm)
    apply AlgHom.coe_ringHom_injective
    apply IsLocalization.ringHom_ext (nonZeroDivisors R) (S := M)
    ext r
    simp only [RingHom.comp_apply, AlgHom.coe_toRingHom]
    rw [← hfv σ r, ← hfv τ r, h]
  have hrank : Module.finrank K M = 1 := by
    rw [← Field.finSepDegree_eq_finrank_of_isSeparable K M]
    unfold Field.finSepDegree
    haveI : Subsingleton (Field.Emb K M) := ⟨hemb⟩
    exact Nat.card_eq_one_iff_unique.2 ⟨inferInstance, ⟨IsAlgClosed.lift⟩⟩
  have hbot : (⊥ : Subalgebra K M) = ⊤ := Subalgebra.bot_eq_top_of_finrank_eq_one hrank
  intro r
  obtain ⟨k, hk⟩ := Algebra.mem_bot.1 (hbot.symm ▸ Algebra.mem_top : algebraMap R M r ∈ (⊥ : Subalgebra K M))
  have hki : IsIntegral B k := by
    have h1 : IsIntegral B (algebraMap K M k) := hk ▸
      (Algebra.IsIntegral.isIntegral (R := B) r).map (IsScalarTower.toAlgHom B R M)
    exact (isIntegral_algHom_iff (IsScalarTower.toAlgHom B K M) (algebraMap K M).injective).1 h1
  obtain ⟨b, rfl⟩ := IsIntegrallyClosed.isIntegral_iff.1 hki
  refine ⟨b, IsFractionRing.injective R M ?_⟩
  rw [← hk, ← IsScalarTower.algebraMap_apply B K M, IsScalarTower.algebraMap_apply B R M]
  rfl

end GlobalTheory.DegreeOne
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveFiniteOfUniqueEmbeddingCompleteNormal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRing =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRing", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Mathlib.RingTheory.AdicCompletion.Algebra\npublic import Mathlib.RingTheory.LocalRing.MaximalIdeal.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLocalHomAdicCompletionExtend\npublic import Mathlib.RingTheory.AdicCompletion.Basic\npublic import Mathlib.RingTheory.LocalRing.ResidueField.Defs\npublic import Mathlib.RingTheory.Noetherian.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FiniteOfMaximalIdealLeRadicalCompleteNakayama\npublic import Mathlib.RingTheory.KrullDimension.Basic\npublic import Mathlib.RingTheory.LocalRing.Defs\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InjectiveOfFiniteOfRingKrullDimEqLocalDomain\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.QuasiFiniteTautologicalChartClosedPoint\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SurjectiveFiniteOfUniqueEmbeddingCompleteNormal\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TrdegResidueFieldOfIsOpenImmersion\npublic import Mathlib.RingTheory.EssentialFiniteness\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.CompletionIsDomainAndIsIntegrallyClosed\npublic import Development.AutomorphicArithmetic.AutomorphicVarieties.CommutativeAlgebraHeight.GDimcpl\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsDiscreteValuationRingIntegralClosure\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsNoetherianRingAdicCompletionOfNoetherian\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.KrullDimension.Field\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.AbProj\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory.TautEtaleB

theorem isEtaleCompletion_of_forall_eq_inj (A R : Type) [CommRing A] [IsLocalRing A] [IsNoetherianRing A]
    [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [CharZero R]
    (hAd : IsDomain (AdicCompletion (maximalIdeal A) A))
    (hAn : IsIntegrallyClosed (AdicCompletion (maximalIdeal A) A))
    (hR : IsAdicComplete (maximalIdeal R) R) (φ : A →+* R) (hφ : IsLocalHom φ)
    (hprim : maximalIdeal R ≤ ((maximalIdeal A).map φ).radical)
    (hres : ((residue R).comp φ).Finite) (hdim : ringKrullDim R = ringKrullDim A)
    (hinj : ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] [IsNoetherianRing R']
      [IsIntegrallyClosed R'] [CharZero R'], IsAdicComplete (maximalIdeal R') R' →
      ∀ f g : R →+* R', Function.Injective f → Function.Injective g → IsLocalHom f → IsLocalHom g →
        f.comp φ = g.comp φ → f = g) :
    GlobalTheory.Toroidal.IsEtaleCompletion φ := by
  let B := AdicCompletion (maximalIdeal A) A
  haveI : IsNoetherianRing B := GlobalTheory.AdicNoeth.isNoetherianRing_adicCompletion A _
  obtain ⟨ψ, hψl, hψ⟩ := _root_.GlobalTheory.LocalCompletion.exists_localHom_adicCompletion_extend A R hR φ hφ
  have hmap : (maximalIdeal B).map ψ = (maximalIdeal A).map φ := by
    rw [AdicCompletion.maximalIdeal_eq_map, Ideal.map_map, hψ]
  have hresψ : ((residue R).comp ψ).Finite := by
    have e : ((residue R).comp ψ).comp (algebraMap A B) = (residue R).comp φ := by
      rw [RingHom.comp_assoc, hψ]
    exact RingHom.Finite.of_comp_finite (e ▸ hres)
  have hfin : ψ.Finite := _root_.GlobalTheory.CompleteNakayamaLocal.finite_of_maximalIdeal_le_radical B R ψ inferInstance hψl (hmap ▸ hprim) hresψ
  have hdB : ringKrullDim R = ringKrullDim B := by rw [hdim, UpperTheory.V.CA.g_dimcpl]
  have hi : Function.Injective ψ := _root_.GlobalTheory.injective_of_finite_of_ringKrullDim_eq_of_local_domain B R ψ hfin hdB
  have hs : Function.Surjective ψ := _root_.GlobalTheory.DegreeOne.surjective_of_unique_injective_localHom B R ψ inferInstance hi hfin
    (fun R' _ _ _ _ _ _ hR' f g hf' hg' hf hg h => hinj R' hR' f g hf' hg' hf hg (by
      rw [← hψ, ← RingHom.comp_assoc, h, RingHom.comp_assoc]))
  refine ⟨?_, ?_, hres⟩
  · rw [← hψ]
    refine RingHom.Flat.comp (RingHom.flat_algebraMap_iff.mpr (AdicCompletion.flat_of_isNoetherian _)) ?_
    exact RingHom.Flat.of_bijective ⟨hi, hs⟩
  · rw [← hmap]
    exact map_maximalIdeal_of_surjective ψ hs

theorem charZero_essFiniteType_stalk (K : Type) [Field K] [CharZero K] [FiniteDimensional ℚ K] {X : Scheme.{0}}
    (f : X ⟶ Sp K) [LocallyOfFiniteType f] (x : X) :
    CharZero (X.presheaf.stalk x) ∧ Algebra.EssFiniteType ℤ (X.presheaf.stalk x) := by
  let y : PrimeSpectrum K := f x
  letI : Algebra K ((Sp K).presheaf.stalk (f x)) := StructureSheaf.stalkAlgebra _ y
  haveI : IsLocalization.AtPrime ((Sp K).presheaf.stalk (f x)) y.asIdeal :=
    StructureSheaf.IsLocalization.to_stalk _ y
  let φ := algebraMap K ((Sp K).presheaf.stalk (f x))
  have h₁ : (f.stalkMap x).hom.EssFiniteType := LocallyOfFiniteType.stalkMap f x
  have h₂ : φ.EssFiniteType :=
    RingHom.essFiniteType_algebraMap.2 (Algebra.EssFiniteType.of_isLocalization _ y.asIdeal.primeCompl)
  have hσ : Function.Injective ((f.stalkMap x).hom.comp φ) := RingHom.injective _
  refine ⟨charZero_of_injective_ringHom hσ, ?_⟩
  have hQ : Algebra.EssFiniteType ℤ ℚ := Algebra.EssFiniteType.of_isLocalization ℚ (nonZeroDivisors ℤ)
  have hK : Algebra.EssFiniteType ℤ K := Algebra.EssFiniteType.comp ℤ ℚ K
  refine RingHom.essFiniteType_algebraMap.1 ?_
  convert (RingHom.essFiniteType_algebraMap.2 hK).comp (h₂.comp h₁) using 1
  exact Subsingleton.elim _ _

theorem exists_fracMap {A B : Type} [CommRing A] [IsDomain A] [CommRing B] [IsDomain B] (ψ : A →+* B)
    (hψ : Function.Injective ψ) : ∃ fK : FractionRing A →+* FractionRing B, spMap fK ≫ jK A = jK B ≫ spMap ψ := by
  have hg : Function.Injective ((algebraMap B (FractionRing B)).comp ψ) :=
    (IsFractionRing.injective B (FractionRing B)).comp hψ
  let fK : FractionRing A →+* FractionRing B :=
    IsFractionRing.lift (K := FractionRing A) (L := FractionRing B) (g := (algebraMap B (FractionRing B)).comp ψ) hg
  have e0 : fK.comp (algebraMap A (FractionRing A)) = (algebraMap B (FractionRing B)).comp ψ := by
    ext x
    rw [RingHom.comp_apply]
    exact IsFractionRing.lift_algebraMap (K := FractionRing A) (L := FractionRing B) hg x
  refine ⟨fK, ?_⟩
  have e1 : CommRingCat.ofHom (algebraMap A (FractionRing A)) ≫ CommRingCat.ofHom fK =
      CommRingCat.ofHom ψ ≫ CommRingCat.ofHom (algebraMap B (FractionRing B)) := by
    rw [← CommRingCat.ofHom_comp, ← CommRingCat.ofHom_comp, e0]
  have e2 := congrArg Spec.map e1
  rw [Spec.map_comp, Spec.map_comp] at e2
  exact e2

theorem tautB_isEtaleCompletion : ∀ {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Geo.Tor.Level H} (Xo : Moduli Dw l) (c : Coeff l) (φ : InvFun (𝓞 E)), 1 ≤ Dw.p + Dw.q → IsPolFan H.bar (min Dw.p Dw.q) φ → NoSelfInt H.bar (min Dw.p Dw.q) φ → ∀ {Z : Scheme.{0}} (zs : Z ⟶ Sp c.F) (i : Xo.XF c ⟶ Z) (OZ : LB Z) (N d : ℕ) (J : Z.IdealSheafData) {S : Scheme.{0}} (π : S ⟶ Z) (j : Xo.XF c ⟶ S) [IsOpenImmersion j] (BD : EffCartierData S), GlobalTheory.UPoinc.UPoinOnX Xo c φ zs i OZ N d J π j BD → SepB Xo c φ j → ∀ {k : Type} [Field k] {m e : ℕ} (C : MonoFam Xo c φ (ChartRing k m e)), IsTautB C → ∀ ξ : Sp (ChartRing k m e) ⟶ S, C.y ≫ j = jK _ ≫ ξ → IsEtaleCompletion (Scheme.stalkClosedPointTo ξ).hom := by
  intro E _ _ _ H Dw l Xo c φ hpq hpf hns Z zs i OZ N d J S π j _ BD hU hSep k _ m e C hT ξ hξ
  obtain ⟨hqf, hfin⟩ := _root_.GlobalTheory.UCanon.quasiFinite_of_tautB Xo c φ hpq hpf hns zs i OZ N d J π j BD hU hSep C hT ξ hξ
  have hdimS := ringKrullDim_stalk_eq_of_isTaut hU C hT.1 ξ hξ hfin
  haveI hcF : CharZero (ChartRing k m e) := (C.b.charZero_iff C.b.injective).1 inferInstance
  have hAdm := GlobalTheory.MumfordChart.admissibleBase_chartRing k m e
  haveI : IsNoetherianRing (ChartRing k m e) := hAdm.1
  haveI : IsIntegrallyClosed (ChartRing k m e) := hAdm.2.2.1
  have hRc : IsAdicComplete (maximalIdeal (ChartRing k m e)) (ChartRing k m e) := hAdm.2.2.2
  have hdimR : ringKrullDim (ChartRing k m e) = ((m + e : ℕ) : WithBot ℕ∞) := by
    rw [GlobalTheory.FormalIsogeny.ringKrullDim_mvPowerSeries k (Fin m ⊕ Fin e), ringKrullDim_eq_zero_of_field]
    simp
  obtain ⟨⟨-, -, -, -, hizs, -⟩, -, -, -, ⟨⟨hnorm, -⟩, hproj, -, -, hji, -⟩, -⟩ := hU
  haveI : LocallyOfFiniteType (π ≫ zs) := by
    obtain ⟨M, i', hi', hcomp⟩ := hproj
    haveI := hi'
    haveI := ReciprocityTheory.ChartRestriction.G.Geo.Tor.isProper_str c.F M
    rw [← hcomp]
    infer_instance
  haveI := c.fin
  set x := ξ (closedPoint (ChartRing k m e)) with hx
  haveI : IsDomain (S.presheaf.stalk x) := hnorm.isDomain_stalk x
  haveI : IsIntegrallyClosed (S.presheaf.stalk x) := hnorm.isIntegrallyClosed_stalk x
  obtain ⟨hc0, hess⟩ := charZero_essFiniteType_stalk c.F (π ≫ zs) x
  haveI := hc0
  haveI := hess
  haveI : IsNoetherianRing (S.presheaf.stalk x) := Algebra.EssFiniteType.isNoetherianRing ℤ _
  obtain ⟨hAd, hAn⟩ := _root_.GlobalTheory.AnalyticNormality.completion_isDomain_and_isIntegrallyClosed (S.presheaf.stalk x)
  set ψ := (Scheme.stalkClosedPointTo ξ).hom with hψ
  have eξ := Scheme.Spec_stalkClosedPointTo_fromSpecStalk ξ
  have hpt : ∀ p : Sp (ChartRing k m e), ξ p = S.fromSpecStalk x (Spec.map (Scheme.stalkClosedPointTo ξ) p) := by
    intro p
    conv_lhs => rw [← eξ]
    rfl
  have hprim : maximalIdeal (ChartRing k m e) ≤ ((maximalIdeal (S.presheaf.stalk x)).map ψ).radical := by
    intro r hr
    rw [Ideal.radical_eq_sInf, Submodule.mem_sInf]
    rintro P ⟨hle, hP⟩
    have hc : Ideal.comap ψ P = maximalIdeal (S.presheaf.stalk x) :=
      ((maximalIdeal.isMaximal _).eq_of_le (Ideal.comap_ne_top _ hP.ne_top) (Ideal.map_le_iff_le_comap.1 hle)).symm
    have hq : (⟨P, hP⟩ : Sp (ChartRing k m e)) = closedPoint (ChartRing k m e) := by
      refine hqf _ ((hpt _).trans (Eq.trans ?_ (hpt (closedPoint _)).symm))
      congr 1
      refine PrimeSpectrum.ext ?_
      show Ideal.comap ψ P = Ideal.comap ψ (maximalIdeal (ChartRing k m e))
      rw [hc]
      refine le_antisymm ?_ (le_maximalIdeal (Ideal.comap_ne_top _ (maximalIdeal.isMaximal _).ne_top))
      intro a ha
      exact map_nonunit ψ a ha
    have hP' : P = maximalIdeal (ChartRing k m e) := congrArg PrimeSpectrum.asIdeal hq
    rw [hP']
    exact hr
  have hinj : ∀ (R' : Type) [CommRing R'] [IsDomain R'] [IsLocalRing R'] [IsNoetherianRing R']
      [IsIntegrallyClosed R'] [CharZero R'], IsAdicComplete (maximalIdeal R') R' →
      ∀ f g : ChartRing k m e →+* R', Function.Injective f → Function.Injective g → IsLocalHom f → IsLocalHom g →
        f.comp ψ = g.comp ψ → f = g := by
    intro R' _ _ _ _ _ _ hR' f g hfi hgi hfl hgl hfg
    have hB : GlobalTheory.Mum.Base R' := ⟨⟨inferInstance, inferInstance, inferInstance, hR'⟩, inferInstance⟩
    obtain ⟨fK, hfK⟩ := exists_fracMap f hfi
    obtain ⟨gK, hgK⟩ := exists_fracMap g hgi
    obtain ⟨-, -, -, hInj, -⟩ := hT.1
    refine hInj R' hB f g hfi hgi hfl hgl (spMap fK) (spMap gK) hfK hgK ?_
    have hsp : spMap f ≫ Spec.map (Scheme.stalkClosedPointTo ξ) = spMap g ≫ Spec.map (Scheme.stalkClosedPointTo ξ) := by
      rw [← Spec.map_comp, ← Spec.map_comp]
      congr 1
      ext a
      exact congrArg (fun h : S.presheaf.stalk x →+* R' => h a) hfg
    have hfξ : spMap f ≫ ξ = spMap g ≫ ξ := by
      calc spMap f ≫ ξ = spMap f ≫ (Spec.map (Scheme.stalkClosedPointTo ξ) ≫ S.fromSpecStalk x) := by rw [eξ]
        _ = spMap g ≫ (Spec.map (Scheme.stalkClosedPointTo ξ) ≫ S.fromSpecStalk x) := by
          rw [← Category.assoc, hsp, Category.assoc]
        _ = spMap g ≫ ξ := by rw [eξ]
    rw [← cancel_mono j, Category.assoc, Category.assoc, hξ, ← Category.assoc, ← Category.assoc, hfK, hgK,
      Category.assoc, Category.assoc, hfξ]
  exact isEtaleCompletion_of_forall_eq_inj (S.presheaf.stalk x) (ChartRing k m e) hAd hAn hRc ψ inferInstance hprim hfin
    (by rw [hdimR, hdimS]) hinj

end GlobalTheory.TautEtaleB
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRing =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRingStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRingStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidCoords\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRing\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.AnForm.R
open GlobalTheory.Toroidal GlobalTheory.LocM GlobalTheory.PolFan GlobalTheory.UChart GlobalTheory.UCanon
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TautologicalChartIsEtaleCompletionLocalRingStatement =====
