module

public import Mathlib.Algebra.Polynomial.Degree.Defs
public import Mathlib.Algebra.Polynomial.Degree.Lemmas
public import Mathlib.RingTheory.AlgebraicIndependent.Defs
public import Mathlib.RingTheory.Ideal.Quotient.Operations
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs
public import Mathlib.RingTheory.MvPolynomial.Homogeneous
public import Mathlib.Algebra.Algebra.Subalgebra.Tower
public import Mathlib.Algebra.MvPolynomial.Funext
public import Mathlib.RingTheory.AlgebraicIndependent.Basic
public import Mathlib.RingTheory.FiniteType
public import Mathlib.RingTheory.IntegralClosure.Algebra.Basic
public import Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs
public import Mathlib.RingTheory.RingHom.Etale
public import Mathlib.RingTheory.Etale.Basic
public import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed
public import Mathlib.RingTheory.Smooth.IntegralClosure
public import Mathlib.RingTheory.Etale.Field
public import Mathlib.RingTheory.Smooth.Basic
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.Topology.Connected.Basic
public import Mathlib.Topology.Connected.Clopen
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ProjSpaceHom
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMem
public import Mathlib.RingTheory.MvPolynomial.Ideal
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAlgebraicOfIntegralTorusS
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailMore, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NoetherNormalizationHomogeneous, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDim, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDimStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpen, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpenStatement, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsEtaleAwayPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsTmulOneEqOfIsIntegral, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsAwayIsDomainOfSmooth, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsIntegralNbhd, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IrreducibleSpaceOfConnectedOfLocally, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsIntegralOfSmoothPf, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsCoordBasicOpen, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteType, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteTypeStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjectiveStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFinite, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFiniteStatement, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAffineOpenPreimage, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZero, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZeroStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMemStatement, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTop, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTopStatement, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PreimageBasicOpenNonempty, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents

-- ===== clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailMore =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailMore", "h": "module\n\npublic import Mathlib.Algebra.Polynomial.Degree.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Polynomial.Degree.Lemmas\n\n"}
section -- clump:auto
@[expose] public section

theorem UpperTheory.Reformulated.B.Yra8.main.{u_1, u_2} :
    ∀ {R : Type u_1} {ι : Type u_2} [inst : CommRing R] (s : Finset ι) (e : ι → ℕ) (g : ι → Polynomial R) (c : ι → R),
      (∀ (i : ι), (g i).natDegree ≤ (1 : ℕ)) →
        (∀ (i : ι), (g i).coeff (1 : ℕ) = c i) →
          (∏ i ∈ s, g i ^ e i).natDegree ≤ ∑ i ∈ s, e i ∧ (∏ i ∈ s, g i ^ e i).coeff (∑ i ∈ s, e i) = ∏ i ∈ s, c i ^ e i := by
  intro R ι _ s e g c hd hc
  classical
  have hp : ∀ i, (g i ^ e i).natDegree ≤ e i ∧ (g i ^ e i).coeff (e i) = c i ^ e i := by
    intro i
    refine ⟨?_, ?_⟩
    · calc (g i ^ e i).natDegree ≤ e i * (g i).natDegree := Polynomial.natDegree_pow_le
        _ ≤ e i * 1 := Nat.mul_le_mul_left _ (hd i)
        _ = e i := by simp
    · have := Polynomial.coeff_pow_of_natDegree_le (m := e i) (hd i)
      simpa [hc i] using this
  induction s using Finset.induction_on with
  | empty => simp
  | insert a s ha ih =>
    rw [Finset.prod_insert ha, Finset.sum_insert ha, Finset.prod_insert ha]
    refine ⟨?_, ?_⟩
    · exact (Polynomial.natDegree_mul_le).trans (Nat.add_le_add (hp a).1 ih.1)
    · rw [Polynomial.coeff_mul_add_eq_of_natDegree_le (hp a).1 ih.1, (hp a).2, ih.2]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailMore =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NoetherNormalizationHomogeneous =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NoetherNormalizationHomogeneous", "h": "module\n\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\npublic import Mathlib.RingTheory.Ideal.Quotient.Operations\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.ImportsTailMore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.Algebra.Algebra.Subalgebra.Tower\npublic import Mathlib.Algebra.MvPolynomial.Funext\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.FiniteType\npublic import Mathlib.RingTheory.IntegralClosure.Algebra.Basic\npublic import Mathlib.RingTheory.IntegralClosure.IsIntegralClosure.Basic\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open MvPolynomial

namespace GlobalTheory.CompanionTheory.ConeNoether

theorem isIntegral_of_homogeneous_relation {K R S ι : Type*} [Field K] [CommRing R] [CommRing S]
    [Algebra K R] [Algebra K S] [Algebra R S] [IsScalarTower K R S] [Fintype ι]
    (F : MvPolynomial ι K) {n : ℕ} (hF : F.IsHomogeneous n) (a : ι → K) (ha : eval a F ≠ 0)
    (v : ι → R) (u : S)
    (h0 : aeval (fun i => algebraMap R S (v i) + algebraMap K S (a i) * u) F = 0) :
    IsIntegral R u := by
  classical
  let g : ι → Polynomial R := fun i =>
    Polynomial.C (v i) + Polynomial.C (algebraMap K R (a i)) * Polynomial.X
  have hgd : ∀ i, (g i).natDegree ≤ 1 := fun i => by
    simpa [g, add_comm] using
      Polynomial.natDegree_linear_le (a := algebraMap K R (a i)) (b := v i)
  have hgc : ∀ i, (g i).coeff 1 = algebraMap K R (a i) := fun i => by
    simp [g, Polynomial.coeff_C]
  have hdeg : ∀ d ∈ F.support, ∑ i, d i = n := fun d hd => by
    have := hF (mem_support_iff.1 hd)
    simpa [Finsupp.degree_eq_sum, Finsupp.weight_apply, Finsupp.sum_fintype] using this
  let p : Polynomial R := aeval g F
  have hp : p = ∑ d ∈ F.support,
      Polynomial.C (algebraMap K R (AddMonoidAlgebra.coeff F d)) * ∏ i, g i ^ d i := by
    simp only [p, aeval_def, eval₂_eq']
    rfl
  have hpd : p.natDegree ≤ n := by
    rw [hp]
    refine Polynomial.natDegree_sum_le_of_forall_le _ _ fun d hd => ?_
    refine (Polynomial.natDegree_C_mul_le _ _).trans ?_
    have := (_root_.UpperTheory.Reformulated.B.Yra8.main Finset.univ d g _ hgd hgc).1
    rwa [hdeg d hd] at this
  have hpc : p.coeff n = algebraMap K R (eval a F) := by

    rw [hp, eval_eq', map_sum, Polynomial.finsetSum_coeff]
    refine Finset.sum_congr rfl fun d hd => ?_
    have := (_root_.UpperTheory.Reformulated.B.Yra8.main Finset.univ d g _ hgd hgc).2
    rw [hdeg d hd] at this
    rw [Polynomial.coeff_C_mul, this]
    simp
  have hpe : Polynomial.eval₂ (algebraMap R S) u p = 0 := by
    have h1 := comp_aeval_apply (R := K) (f := g)
      ((Polynomial.aeval (R := R) u).restrictScalars K) F
    have h2 : (fun i => ((Polynomial.aeval (R := R) u).restrictScalars K) (g i)) =
        fun i => algebraMap R S (v i) + algebraMap K S (a i) * u := by
      funext i
      simp [g, IsScalarTower.algebraMap_apply K R S]
    rw [h2, h0] at h1
    simpa [Polynomial.aeval_def, p] using h1
  let b : R := algebraMap K R (eval a F)⁻¹
  have hb : b * algebraMap K R (eval a F) = 1 := by
    rw [← map_mul, inv_mul_cancel₀ ha, map_one]
  refine ⟨Polynomial.C b * p, ?_, ?_⟩
  · refine Polynomial.monic_of_natDegree_le_of_coeff_eq_one n
      ((Polynomial.natDegree_C_mul_le _ _).trans hpd) ?_
    rw [Polynomial.coeff_C_mul, hpc, hb]
  · rw [Polynomial.eval₂_mul, hpe, mul_zero]

theorem homogeneousComponent_aeval {K σ ι : Type*} [Field K] (l : ι → MvPolynomial σ K)
    (hl : ∀ i, (l i).IsHomogeneous 1) (F : MvPolynomial ι K) (n : ℕ) :
    homogeneousComponent n (aeval l F) = aeval l (homogeneousComponent n F) := by
  classical
  have key : ∀ k, homogeneousComponent n (aeval l (homogeneousComponent k F)) =
      if n = k then aeval l (homogeneousComponent k F) else 0 := fun k => by
    have h := (homogeneousComponent_isHomogeneous k F).aeval l hl
    rw [one_mul] at h
    exact homogeneousComponent_of_mem h
  conv_lhs => rw [← sum_homogeneousComponent F]

  rw [map_sum, map_sum]
  simp only [key, Finset.sum_ite_eq, Finset.mem_range]
  split_ifs with h
  · rfl
  · rw [homogeneousComponent_eq_zero _ _ (by omega), map_zero]

theorem exists_homogeneous_relation {K σ ι : Type*} [Field K] (I : Ideal (MvPolynomial σ K))
    (hI : ∀ f ∈ I, ∀ n : ℕ, homogeneousComponent n f ∈ I) (l : ι → MvPolynomial σ K)
    (hl : ∀ i, (l i).IsHomogeneous 1)
    (h : ¬ AlgebraicIndependent K fun i => Ideal.Quotient.mk I (l i)) :
    ∃ (d : ℕ) (F : MvPolynomial ι K), F ≠ 0 ∧ F.IsHomogeneous d ∧ aeval l F ∈ I := by
  rw [algebraicIndependent_iff] at h
  push_neg at h
  obtain ⟨F, hF, hF0⟩ := h
  have hmem : aeval l F ∈ I := by
    rw [← Ideal.Quotient.eq_zero_iff_mem, ← hF]
    have := comp_aeval_apply (R := K) (f := l) (Ideal.Quotient.mkₐ K I) F
    simpa using this
  obtain ⟨n, hn⟩ : ∃ n, homogeneousComponent n F ≠ 0 := by
    by_contra hc
    push_neg at hc
    exact hF0 (by rw [← sum_homogeneousComponent F]; simp [hc])
  exact ⟨n, _, hn, homogeneousComponent_isHomogeneous n F, by
    rw [← homogeneousComponent_aeval l hl]; exact hI _ hmem n⟩

theorem isIntegral_trans_subalgebra {K S : Type*} [Field K] [CommRing S] [Algebra K S]
    (A R : Subalgebra K S) (h : ∀ x ∈ A, IsIntegral R x) (s : S) (hs : IsIntegral A s) :
    IsIntegral R s := by
  let φ : A →+* integralClosure R S :=
    { toFun := fun x => ⟨x.1, h x.1 x.2⟩
      map_one' := rfl
      map_mul' := fun _ _ => rfl
      map_zero' := rfl
      map_add' := fun _ _ => rfl }
  have h1 : IsIntegral (integralClosure R S) s := by
    set_option synthInstance.maxHeartbeats 200000 in
      exact IsIntegral.map_of_comp_eq φ (RingHom.id S) (by ext; rfl) hs
  set_option synthInstance.maxHeartbeats 200000 in
    exact isIntegral_trans s h1

theorem exists_linear_of_integral {K σ : Type} [Field K] [Infinite K]
    (I : Ideal (MvPolynomial σ K)) (hI : ∀ f ∈ I, ∀ n : ℕ, homogeneousComponent n f ∈ I)
    (hne : I ≠ ⊤) (n : ℕ) :
    ∀ (ι : Type) [Fintype ι] (l : ι → MvPolynomial σ K), Fintype.card ι = n →
      (∀ i, (l i).IsHomogeneous 1) →
      (∀ s : MvPolynomial σ K ⧸ I,
        IsIntegral (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (l i))) s) →
      ∃ (m : ℕ) (y : Fin m → MvPolynomial σ K), (∀ i, (y i).IsHomogeneous 1) ∧
        AlgebraicIndependent K (fun i => Ideal.Quotient.mk I (y i)) ∧
        ∀ s : MvPolynomial σ K ⧸ I,
          IsIntegral (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (y i))) s := by
  classical
  have hnt : Nontrivial (MvPolynomial σ K ⧸ I) := Ideal.Quotient.nontrivial_iff.2 hne
  have done : ∀ (ι : Type) [Fintype ι] (l : ι → MvPolynomial σ K),
      (∀ i, (l i).IsHomogeneous 1) →
      (∀ s : MvPolynomial σ K ⧸ I,
        IsIntegral (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (l i))) s) →
      AlgebraicIndependent K (fun i => Ideal.Quotient.mk I (l i)) →
      ∃ (m : ℕ) (y : Fin m → MvPolynomial σ K), (∀ i, (y i).IsHomogeneous 1) ∧
        AlgebraicIndependent K (fun i => Ideal.Quotient.mk I (y i)) ∧
        ∀ s : MvPolynomial σ K ⧸ I,
          IsIntegral (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (y i))) s := by
    intro ι _ l hl hs hind
    let e := Fintype.equivFin ι
    refine ⟨_, fun i => l (e.symm i), fun i => hl _, hind.comp _ e.symm.injective, ?_⟩
    have hr : (Set.range fun i => Ideal.Quotient.mk I (l (e.symm i))) =
        Set.range fun i => Ideal.Quotient.mk I (l i) :=
      e.symm.surjective.range_comp fun i => Ideal.Quotient.mk I (l i)
    rw [hr]
    exact hs
  induction n with
  | zero =>
    intro ι _ l hc hl hs
    have : IsEmpty ι := Fintype.card_eq_zero_iff.1 hc
    exact done ι l hl hs (algebraicIndependent_empty_type_iff.2 (algebraMap K _).injective)
  | succ n ih =>
    intro ι _ l hc hl hs
    by_cases hind : AlgebraicIndependent K fun i => Ideal.Quotient.mk I (l i)
    · exact done ι l hl hs hind
    obtain ⟨d, F, hF0, hFd, hFI⟩ := exists_homogeneous_relation I hI l hl hind
    have : Nonempty ι := Fintype.card_pos_iff.1 (by omega)
    obtain ⟨j⟩ := this
    have hGd : (X j * F).IsHomogeneous (1 + d) := (isHomogeneous_X K j).mul hFd
    have hG0 : (X j * F : MvPolynomial ι K) ≠ 0 := mul_ne_zero (X_ne_zero j) hF0
    obtain ⟨a, ha⟩ : ∃ a : ι → K, eval a (X j * F) ≠ 0 := by
      by_contra hc'
      push_neg at hc'
      exact hG0 (MvPolynomial.funext fun x => by simpa using hc' x)
    have haj : a j ≠ 0 := fun h0 => ha (by simp [h0])
    have hGI : aeval l (X j * F) ∈ I := by
      rw [map_mul]
      exact I.mul_mem_left _ hFI
    let u : MvPolynomial σ K := C (a j)⁻¹ * l j
    let v : ι → MvPolynomial σ K := fun i => l i - C (a i) * u
    have hvj : v j = 0 := by
      simp only [v, u]
      rw [← mul_assoc, ← C_mul, mul_inv_cancel₀ haj, C_1, one_mul, sub_self]
    have hvh : ∀ i, (v i).IsHomogeneous 1 := fun i =>
      (hl i).sub (((hl j).C_mul _).C_mul _)
    let R := Algebra.adjoin K (Set.range fun i : {i // i ≠ j} => Ideal.Quotient.mk I (v i.1))
    have hmem : ∀ i, Ideal.Quotient.mk I (v i) ∈ R := fun i => by
      by_cases h : i = j
      · subst h

        rw [hvj, map_zero]
        exact zero_mem _
      · exact Algebra.subset_adjoin ⟨⟨i, h⟩, rfl⟩
    have hdec : ∀ i, Ideal.Quotient.mk I (v i) +
        algebraMap K (MvPolynomial σ K ⧸ I) (a i) * Ideal.Quotient.mk I u =
        Ideal.Quotient.mk I (l i) := fun i => by
      have : algebraMap K (MvPolynomial σ K ⧸ I) (a i) = Ideal.Quotient.mk I (C (a i)) := rfl
      rw [this, ← (Ideal.Quotient.mk I).map_mul, ← (Ideal.Quotient.mk I).map_add]
      simp only [v, sub_add_cancel]
    have hu : IsIntegral R (Ideal.Quotient.mk I u) := by
      refine isIntegral_of_homogeneous_relation (X j * F) hGd a ha
        (fun i => (⟨_, hmem i⟩ : R)) _ ?_
      have h1 : (fun i => algebraMap R (MvPolynomial σ K ⧸ I) ⟨_, hmem i⟩ +
          algebraMap K (MvPolynomial σ K ⧸ I) (a i) * Ideal.Quotient.mk I u) =
          fun i => Ideal.Quotient.mkₐ K I (l i) := by
        funext i
        exact hdec i
      rw [h1, ← comp_aeval_apply]
      exact Ideal.Quotient.eq_zero_iff_mem.2 hGI
    have hA : ∀ x ∈ Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (l i)),
        IsIntegral R x := by
      have hle : Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (l i)) ≤
          (integralClosure R (MvPolynomial σ K ⧸ I)).restrictScalars K := by
        refine Algebra.adjoin_le ?_
        rintro _ ⟨i, rfl⟩
        change IsIntegral R _
        simp only []
        rw [← hdec i]
        refine IsIntegral.add ?_ (IsIntegral.mul ?_ hu)
        · exact isIntegral_algebraMap (x := (⟨_, hmem i⟩ : R))
        · rw [IsScalarTower.algebraMap_apply K R]
          exact isIntegral_algebraMap
      exact fun x hx => hle hx
    refine ih {i // i ≠ j} (fun i => v i.1) ?_ (fun i => hvh _) fun s =>
      isIntegral_trans_subalgebra _ R hA s (hs s)
    simp [Fintype.card_subtype_compl, hc]

theorem main : ∀ (K : Type) [Field K] [Infinite K] (N : ℕ)
    (I : Ideal (MvPolynomial (Fin (N + 1)) K)), I ≠ ⊤ →
    (∀ f ∈ I, ∀ n : ℕ, MvPolynomial.homogeneousComponent n f ∈ I) →
    ∃ (e m : ℕ) (y : Fin m → MvPolynomial (Fin (N + 1)) K), 0 < e ∧
      (∀ i, (y i).IsHomogeneous e) ∧
      AlgebraicIndependent K (fun i => Ideal.Quotient.mk I (y i)) ∧
      Module.Finite (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (y i)))
        (MvPolynomial (Fin (N + 1)) K ⧸ I) := by
  intro K _ _ N I hne hI
  have htop : ∀ s : MvPolynomial (Fin (N + 1)) K ⧸ I,
      s ∈ Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (X i)) := by
    intro s
    obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective s
    induction f using MvPolynomial.induction_on with
    | C a => exact Subalgebra.algebraMap_mem _ a
    | add p q hp hq => rw [RingHom.map_add (Ideal.Quotient.mk I)]; exact add_mem hp hq
    | mul_X p i hp => rw [map_mul]; exact mul_mem hp (Algebra.subset_adjoin ⟨i, rfl⟩)
  obtain ⟨m, y, hy, hind, hint⟩ := exists_linear_of_integral I hI hne _ (Fin (N + 1)) X rfl
    (fun i => isHomogeneous_X K i)
    (fun s => isIntegral_algebraMap (x := (⟨s, htop s⟩ :
      Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (X i)))))
  refine ⟨1, m, y, one_pos, hy, hind, ?_⟩
  have : Algebra.IsIntegral (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (y i)))
      (MvPolynomial (Fin (N + 1)) K ⧸ I) := ⟨hint⟩
  have : Algebra.FiniteType K (MvPolynomial (Fin (N + 1)) K ⧸ I) :=
    Algebra.FiniteType.of_surjective (Ideal.Quotient.mkₐ K I) (Ideal.Quotient.mkₐ_surjective K I)
  have : Algebra.FiniteType (Algebra.adjoin K (Set.range fun i => Ideal.Quotient.mk I (y i)))
      (MvPolynomial (Fin (N + 1)) K ⧸ I) :=
    Algebra.FiniteType.of_restrictScalars_finiteType K _ _
  exact Algebra.IsIntegral.finite

end GlobalTheory.CompanionTheory.ConeNoether
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NoetherNormalizationHomogeneous =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDim =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDim", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.CoordCard

theorem card_eq_of_etale {K L : Type} [Field K] [CommRing L] [Nontrivial L] [Algebra K L] {m n : ℕ}
    [Algebra (MvPolynomial (Fin m) K) L] [IsScalarTower K (MvPolynomial (Fin m) K) L]
    [Algebra.FormallyEtale (MvPolynomial (Fin m) K) L]
    [Algebra.IsStandardSmoothOfRelativeDimension n K L] : m = n := by
  let b := KaehlerDifferential.mvPolynomialBasis K (Fin m)
  let b' := (b.baseChange L).map (KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale K (MvPolynomial (Fin m) K) L)
  have hr := Algebra.IsStandardSmoothOfRelativeDimension.rank_kaehlerDifferential (R := K) (S := L) n
  have h1 := b'.mk_eq_rank''
  rw [hr] at h1
  simpa using h1

theorem card_eq_of_away {K A L : Type} [Field K] [CommRing A] [CommRing L] [Nontrivial L] [Algebra A L] {m n : ℕ}
    (t : A) [IsLocalization.Away t L] (g : K →+* A) (φ : MvPolynomial (Fin m) K →+* A)
    (hφ : ∀ r, φ (MvPolynomial.C r) = g r) (hE : φ.Etale)
    (hf : RingHom.IsStandardSmoothOfRelativeDimension n ((algebraMap A L).comp g)) : m = n := by
  letI iPA : Algebra (MvPolynomial (Fin m) K) A := φ.toAlgebra
  letI iKL : Algebra K L := ((algebraMap A L).comp g).toAlgebra
  letI iPL : Algebra (MvPolynomial (Fin m) K) L := ((algebraMap A L).comp φ).toAlgebra
  haveI : IsScalarTower (MvPolynomial (Fin m) K) A L := IsScalarTower.of_algebraMap_eq' rfl
  haveI : IsScalarTower K (MvPolynomial (Fin m) K) L :=
    IsScalarTower.of_algebraMap_eq fun r => by
      change algebraMap A L (g r) = algebraMap A L (φ (MvPolynomial.C r))
      rw [hφ]
  haveI : Algebra.Etale (MvPolynomial (Fin m) K) A := hE
  haveI : Algebra.FormallyEtale A L := Algebra.FormallyEtale.of_isLocalization (Submonoid.powers t)
  haveI : Algebra.FormallyEtale (MvPolynomial (Fin m) K) L := Algebra.FormallyEtale.comp _ A _
  haveI : Algebra.IsStandardSmoothOfRelativeDimension n K L := hf
  exact card_eq_of_etale (K := K) (L := L)

theorem main : ∀ {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K)) (n : ℕ)
    [SmoothOfRelativeDimension n q] {V : X.Opens}, (V : Set X).Nonempty → ∀ {m : ℕ} (c : Coord q V m), m = n := by
  intro K _ X q n hn V hV m c
  obtain ⟨x, hx⟩ := hV
  have hnt : Nontrivial Γ(X, V) := (X.presheaf.germ V x hx).hom.domain_nontrivial
  obtain ⟨s, hs, h'⟩ := HasRingHomProperty.appLE (@SmoothOfRelativeDimension n) q hn
    ⟨⊤, isAffineOpen_top _⟩ ⟨V, c.affine⟩ le_top
  obtain ⟨p, hp⟩ := Ideal.exists_maximal Γ(X, V)
  obtain ⟨t, ht, htp⟩ : ∃ t ∈ s, t ∉ p := by
    by_contra hc
    exact hp.ne_top (top_le_iff.1 (hs ▸ Ideal.span_le.2 fun t ht => by_contra fun h => hc ⟨t, ht, h⟩))
  have : Nontrivial (Localization.Away t) := by
    by_contra hc
    obtain ⟨k, hk⟩ := (IsLocalization.subsingleton_iff (M := Submonoid.powers t)).1 (not_nontrivial_iff_subsingleton.1 hc)
    exact htp (hp.isPrime.mem_of_pow_mem k (by rw [show t ^ k = 0 from hk]; exact p.zero_mem))
  have h₁ := h' t ht
  let e : K ≃+* Γ(Spec (CommRingCat.of K), ⊤) := (Scheme.ΓSpecIso (CommRingCat.of K)).symm.commRingCatIsoToRingEquiv
  have hf : RingHom.IsStandardSmoothOfRelativeDimension n
      ((algebraMap Γ(X, V) (Localization.Away t)).comp (strV q V)) :=
    RingHom.isStandardSmoothOfRelativeDimension_respectsIso.2 _ e h₁
  exact card_eq_of_away (L := Localization.Away t) t (strV q V) (MvPolynomial.eval₂Hom (strV q V) c.t)
    (fun r => by simp) c.etale hf

end GlobalTheory.CompanionTheory.CoordCard
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDim =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDimStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDimStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDim\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDimStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpen =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpen", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.GeoCoord

theorem exists_coord_basicOpen {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    {W : X.Opens} (hW : IsAffineOpen W) (g : Γ(X, W)) {d : ℕ} (s : Fin d → Γ(X, W)) :
    letI := (strV q W).toAlgebra
    (MvPolynomial.eval₂Hom (algebraMap K (Localization.Away g))
      (fun k => algebraMap Γ(X, W) (Localization.Away g) (s k)) :
        MvPolynomial (Fin d) K →+* Localization.Away g).Etale →
    ∃ c : Coord q (X.basicOpen g) d, ∀ k, c.t k = resO (X.basicOpen_le g) (s k) := by
  letI := (strV q W).toAlgebra
  intro h
  haveI := hW.isLocalization_basicOpen g
  let φ := IsLocalization.algEquiv (Submonoid.powers g) (Localization.Away g) Γ(X, X.basicOpen g)
  have hφ : ∀ x, φ (algebraMap Γ(X, W) (Localization.Away g) x) = resO (X.basicOpen_le g) x :=
    fun x => φ.commutes x
  refine ⟨⟨hW.basicOpen g, fun k => resO (X.basicOpen_le g) (s k), ?_⟩, fun _ => rfl⟩
  have h2 := RingHom.Etale.stableUnderComposition _ _ h
    (RingHom.Etale.of_bijective (f := (φ : Localization.Away g →+* Γ(X, X.basicOpen g))) φ.bijective)
  have e : (MvPolynomial.eval₂Hom (strV q (X.basicOpen g)) (fun k => resO (X.basicOpen_le g) (s k)) :
        MvPolynomial (Fin d) K →+* Γ(X, X.basicOpen g)) =
      (φ : Localization.Away g →+* Γ(X, X.basicOpen g)).comp
        (MvPolynomial.eval₂Hom (algebraMap K (Localization.Away g))
          (fun k => algebraMap Γ(X, W) (Localization.Away g) (s k))) := by
    refine MvPolynomial.ringHom_ext (fun a => ?_) (fun k => ?_)
    · simp only [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_C, RingHom.comp_apply]
      rw [strV_res q (X.basicOpen_le g), RingHom.comp_apply, IsScalarTower.algebraMap_apply K Γ(X, W) (Localization.Away g)]
      exact (hφ _).symm
    · simp only [MvPolynomial.coe_eval₂Hom, MvPolynomial.eval₂_X, RingHom.comp_apply]
      exact (hφ _).symm
  rw [e]
  exact h2

end GlobalTheory.CompanionTheory.GeoCoord
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpenStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpenStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpen\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpenStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsEtaleAwayPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsEtaleAwayPf", "h": "module\n\npublic import Mathlib.RingTheory.RingHom.Etale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Mathlib.Topology.Sheaves.Presheaf\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

theorem exists_etale_away_pf {K A : Type} [Field K] [CharZero K] [CommRing A] [IsDomain A] [Algebra K A]
    [Algebra.FiniteType K A] {d : ℕ} (s : Fin d → A) (hs : AlgebraicIndependent K s)
    (halg : Algebra.IsAlgebraic (Algebra.adjoin K (Set.range s)) A) :
    ∃ g : A, g ≠ 0 ∧ (MvPolynomial.eval₂Hom (algebraMap K (Localization.Away g))
      (fun k => algebraMap A (Localization.Away g) (s k)) : MvPolynomial (Fin d) K →+* Localization.Away g).Etale := by
  classical
  letI : Algebra (MvPolynomial (Fin d) K) A := (MvPolynomial.aeval s).toRingHom.toAlgebra
  have hRA : algebraMap (MvPolynomial (Fin d) K) A = (MvPolynomial.aeval s).toRingHom := rfl
  have : IsScalarTower K (MvPolynomial (Fin d) K) A := IsScalarTower.of_algebraMap_eq fun x => by
    rw [hRA, MvPolynomial.algebraMap_eq]
    simp
  have hinj : Function.Injective (algebraMap (MvPolynomial (Fin d) K) A) := by
    intro a b h
    exact hs h
  have : FaithfulSMul (MvPolynomial (Fin d) K) A :=
    (faithfulSMul_iff_algebraMap_injective (MvPolynomial (Fin d) K) A).2 hinj
  have : Algebra.FiniteType (MvPolynomial (Fin d) K) A :=
    Algebra.FiniteType.of_restrictScalars_finiteType K (MvPolynomial (Fin d) K) A
  have : Algebra.FinitePresentation (MvPolynomial (Fin d) K) A :=
    Algebra.FinitePresentation.of_finiteType.mp inferInstance
  have : Algebra.IsAlgebraic (MvPolynomial (Fin d) K) A := by
    refine Algebra.IsAlgebraic.of_ringHom_of_comp_eq hs.aevalEquiv (RingHom.id A)
      hs.aevalEquiv.surjective Function.injective_id ?_
    ext p
    · simp [hRA]
    · simp [hRA]
  have hL : IsFractionRing A (Localization.AtPrime (⊥ : Ideal A)) := by
    simpa [Ideal.primeCompl_bot] using Localization.isLocalization (M := (⊥ : Ideal A).primeCompl)
  letI : Field (Localization.AtPrime (⊥ : Ideal A)) := IsFractionRing.toField A
  have : FaithfulSMul (MvPolynomial (Fin d) K) (Localization.AtPrime (⊥ : Ideal A)) := by
    rw [faithfulSMul_iff_algebraMap_injective,
      IsScalarTower.algebraMap_eq (MvPolynomial (Fin d) K) A (Localization.AtPrime ⊥)]
    exact (IsFractionRing.injective A _).comp hinj
  letI := FractionRing.liftAlgebra (MvPolynomial (Fin d) K) (Localization.AtPrime (⊥ : Ideal A))
  have : Algebra.IsAlgebraic A (Localization.AtPrime (⊥ : Ideal A)) :=
    IsLocalization.isAlgebraic _ (nonZeroDivisors A)
  have : Algebra.IsAlgebraic (MvPolynomial (Fin d) K) (Localization.AtPrime (⊥ : Ideal A)) :=
    Algebra.IsAlgebraic.trans (MvPolynomial (Fin d) K) A _
  have : Algebra.IsAlgebraic (FractionRing (MvPolynomial (Fin d) K)) (Localization.AtPrime (⊥ : Ideal A)) :=
    Algebra.IsAlgebraic.extendScalars (IsFractionRing.injective (MvPolynomial (Fin d) K) _)
  have : CharZero (FractionRing (MvPolynomial (Fin d) K)) :=
    charZero_of_injective_algebraMap (IsFractionRing.injective (MvPolynomial (Fin d) K) _)
  have : Algebra.FormallyEtale (FractionRing (MvPolynomial (Fin d) K)) (Localization.AtPrime (⊥ : Ideal A)) :=
    Algebra.FormallyEtale.of_isSeparable _ _
  have : Algebra.FormallyEtale (MvPolynomial (Fin d) K) (FractionRing (MvPolynomial (Fin d) K)) :=
    Algebra.FormallyEtale.of_isLocalization (nonZeroDivisors (MvPolynomial (Fin d) K))
  have hE : Algebra.IsEtaleAt (MvPolynomial (Fin d) K) (⊥ : Ideal A) :=
    Algebra.FormallyEtale.comp (MvPolynomial (Fin d) K) (FractionRing (MvPolynomial (Fin d) K)) _
  obtain ⟨g, hg, he⟩ := Algebra.exists_etale_of_isEtaleAt (R := MvPolynomial (Fin d) K) (⊥ : Ideal A)
  refine ⟨g, by simpa using hg, ?_⟩
  have heq : (MvPolynomial.eval₂Hom (algebraMap K (Localization.Away g))
      (fun k => algebraMap A (Localization.Away g) (s k)) : MvPolynomial (Fin d) K →+* Localization.Away g) =
      algebraMap (MvPolynomial (Fin d) K) (Localization.Away g) := by
    apply MvPolynomial.ringHom_ext
    · intro r
      rw [IsScalarTower.algebraMap_apply (MvPolynomial (Fin d) K) A (Localization.Away g)]
      simp [hRA, IsScalarTower.algebraMap_apply K A (Localization.Away g)]
    · intro i
      rw [IsScalarTower.algebraMap_apply (MvPolynomial (Fin d) K) A (Localization.Away g)]
      simp [hRA]
  rw [heq]
  exact RingHom.etale_algebraMap.2 he

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsEtaleAwayPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsTmulOneEqOfIsIntegral =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsTmulOneEqOfIsIntegral", "h": "module\n\npublic import Mathlib.RingTheory.Etale.Basic\npublic import Mathlib.RingTheory.IntegralClosure.IntegrallyClosed\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\npublic import Mathlib.RingTheory.Smooth.IntegralClosure\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Etale.Field\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct

namespace CrystallineSemistableComparison.Pb.EtaleIntegralityFacts

theorem isIntegral_of_mul_self_eq {R S : Type*} [CommRing R] [CommRing S] [Algebra R S] {e : S}
    (he : e * e = e) : IsIntegral R e := by
  refine ⟨Polynomial.X * (Polynomial.X - Polynomial.C 1),
    Polynomial.monic_X.mul (Polynomial.monic_X_sub_C 1), ?_⟩
  simp [Polynomial.eval₂_mul, Polynomial.eval₂_sub, mul_sub, he]

theorem exists_tmul_one_eq_of_isIntegral {P A : Type} [CommRing P] [IsDomain P] [IsIntegrallyClosed P]
    [CommRing A] [Algebra P A] [Algebra.Smooth P A] (t : A ⊗[P] FractionRing P)
    (ht : IsIntegral A t) : ∃ a : A, a ⊗ₜ[P] (1 : FractionRing P) = t := by
  obtain ⟨u, hu⟩ := (TensorProduct.toIntegralClosure_bijective_of_smooth (R := P) (S := A)
    (B := FractionRing P)).2 ⟨t, ht⟩
  have key : ∀ u : A ⊗[P] integralClosure P (FractionRing P), ∃ a : A,
      a ⊗ₜ[P] (1 : FractionRing P) =
        ((TensorProduct.toIntegralClosure P A (FractionRing P) u : _) : A ⊗[P] FractionRing P) := by
    intro u
    induction u with
    | tmul a y =>
      obtain ⟨p, hp⟩ := IsIntegrallyClosed.isIntegral_iff.mp y.2
      refine ⟨p • a, ?_⟩
      change _ = a ⊗ₜ[P] (y : FractionRing P)
      rw [TensorProduct.smul_tmul, ← hp, Algebra.algebraMap_eq_smul_one]
    | add x y hx hy =>
      obtain ⟨a, ha⟩ := hx
      obtain ⟨b, hb⟩ := hy
      exact ⟨a + b, by rw [TensorProduct.add_tmul, ha, hb, map_add (f := _), Subalgebra.coe_add]⟩
  obtain ⟨a, ha⟩ := key u
  exact ⟨a, by rw [ha, hu]⟩

theorem exists_away_isDomain_of_etale {P A : Type} [CommRing P] [IsDomain P] [IsIntegrallyClosed P]
    [CommRing A] [Algebra P A] [Algebra.Etale P A] (q : Ideal A) [q.IsPrime] :
    ∃ g ∉ q, IsDomain (Localization.Away g) := by
  classical

  have hι : Function.Injective (fun a : A => a ⊗ₜ[P] (1 : FractionRing P)) := by
    have hinj : Function.Injective (Algebra.linearMap P (FractionRing P)) :=
      IsFractionRing.injective P (FractionRing P)
    have h2 := Module.Flat.lTensor_preserves_injective_linearMap (M := A)
      (Algebra.linearMap P (FractionRing P)) hinj
    intro a b hab
    apply (TensorProduct.rid P A).symm.injective
    apply h2
    simpa using hab

  obtain ⟨I, hI, Ai, hAi, hAlg, e, -⟩ :=
    (Algebra.FormallyEtale.iff_exists_algEquiv_prod (FractionRing P) (FractionRing P ⊗[P] A)).mp
      inferInstance
  have := Fintype.ofFinite I
  let φ : A ⊗[P] FractionRing P ≃+* (Π i, Ai i) :=
    (Algebra.TensorProduct.comm P A (FractionRing P)).toRingEquiv.trans e.toRingEquiv

  have hε : ∀ i, ∃ a : A, a ⊗ₜ[P] (1 : FractionRing P) = φ.symm (Pi.single i 1) := by
    intro i
    refine exists_tmul_one_eq_of_isIntegral _ (isIntegral_of_mul_self_eq ?_)
    rw [← map_mul, ← Pi.single_mul, one_mul]
  choose a ha using hε

  obtain ⟨i₀, hi₀⟩ : ∃ i, a i ∉ q := by
    by_contra! h
    have hsum : (∑ i, a i) ∈ q := Ideal.sum_mem q fun i _ => h i
    have h1 : (∑ i, a i) = 1 := by
      apply hι
      simp only

      rw [TensorProduct.sum_tmul, Finset.sum_congr rfl (fun i _ => ha i), ← map_sum,
      Finset.univ_sum_single]
      exact map_one φ.symm
    exact (Ideal.IsPrime.ne_top inferInstance) ((Ideal.eq_top_iff_one q).2 (h1 ▸ hsum))
  refine ⟨a i₀, hi₀, ?_⟩

  let F : A →+* Ai i₀ := (Pi.evalRingHom Ai i₀).comp
    (φ.toRingHom.comp (Algebra.TensorProduct.includeLeftRingHom))
  have hF : ∀ x : A, F x = φ (x ⊗ₜ[P] (1 : FractionRing P)) i₀ := fun x => rfl
  have hFg : IsUnit (F (a i₀)) := by
    rw [hF, ha, RingEquiv.apply_symm_apply, Pi.single_eq_same]
    exact isUnit_one
  let ψ : Localization.Away (a i₀) →+* Ai i₀ := IsLocalization.Away.lift (a i₀) hFg
  have hψ : Function.Injective ψ := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro x hx
    obtain ⟨⟨y, s⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (a i₀)) x
    have hspec := IsLocalization.mk'_spec (Localization.Away (a i₀)) y s
    have hFy : F y = 0 := by
      have h3 := congrArg ψ hspec
      rw [map_mul, hx, zero_mul] at h3
      have h4 : ψ (algebraMap A (Localization.Away (a i₀)) y) = F y := IsLocalization.lift_eq _ _
      rw [← h4, ← h3]
    have hyg : y * a i₀ = 0 := by
      apply hι
      simp only
      have hmul : (y * a i₀) ⊗ₜ[P] (1 : FractionRing P) =
          (y ⊗ₜ[P] (1 : FractionRing P)) * (a i₀ ⊗ₜ[P] (1 : FractionRing P)) := by
        rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one]
      rw [hmul, zero_tmul]
      apply φ.injective
      rw [map_mul, ha, RingEquiv.apply_symm_apply, map_zero]
      funext k
      by_cases hk : k = i₀
      · subst hk
        simp only [Pi.mul_apply, Pi.single_eq_same, mul_one, Pi.zero_apply]
        exact hFy
      · simp [Pi.mul_apply, Pi.single_eq_of_ne hk]
    have hy0 : algebraMap A (Localization.Away (a i₀)) y = 0 := by
      have h5 := congrArg (algebraMap A (Localization.Away (a i₀))) hyg
      rw [map_mul, map_zero] at h5
      exact (IsUnit.mul_left_eq_zero (IsLocalization.Away.algebraMap_isUnit (a i₀))).1 h5
    rw [← hspec] at hy0
    exact (IsUnit.mul_left_eq_zero (IsLocalization.map_units _ s)).1 hy0
  exact hψ.isDomain ψ

end CrystallineSemistableComparison.Pb.EtaleIntegralityFacts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsTmulOneEqOfIsIntegral =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsAwayIsDomainOfSmooth =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsAwayIsDomainOfSmooth", "h": "module\n\npublic import Mathlib.RingTheory.Smooth.Basic\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsTmulOneEqOfIsIntegral\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.FieldTheory.PurelyInseparable.Exponent\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RingHom.StandardSmooth\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace CrystallineSemistableComparison.Pb.EtaleIntegralityFacts

theorem exists_away_isDomain_of_smooth {K A : Type} [Field K] [CommRing A] [Algebra K A]
    [Algebra.Smooth K A] (p : Ideal A) [p.IsPrime] :
    ∃ r ∉ p, ∀ (S : Type) [CommRing S] [Algebra A S] [IsLocalization.Away r S], IsDomain S := by
  obtain ⟨g, hg, hstd⟩ := Algebra.IsSmoothAt.exists_notMem_isStandardSmooth K p
  obtain ⟨ι, σ, _, _, ⟨Pr⟩⟩ := hstd.out
  haveI : Algebra.IsStandardSmoothOfRelativeDimension Pr.dimension K (Localization.Away g) :=
    ⟨⟨ι, σ, ‹_›, ‹_›, Pr, rfl⟩⟩
  obtain ⟨φ, hφ⟩ := Algebra.IsStandardSmoothOfRelativeDimension.exists_etale_mvPolynomial
    (n := Pr.dimension) (R := K) (S := Localization.Away g)
  letI : Algebra (MvPolynomial (Fin Pr.dimension) K) (Localization.Away g) := φ.toRingHom.toAlgebra
  haveI : Algebra.Etale (MvPolynomial (Fin Pr.dimension) K) (Localization.Away g) := hφ
  haveI hq : (p.map (algebraMap A (Localization.Away g))).IsPrime := by
    apply IsLocalization.isPrime_of_isPrime_disjoint (.powers g) _ _ ‹_›
    rwa [Ideal.disjoint_powers_iff_notMem_of_isPrime]
  obtain ⟨g', hg', hdom⟩ := exists_away_isDomain_of_etale
    (P := MvPolynomial (Fin Pr.dimension) K) (A := Localization.Away g)
    (p.map (algebraMap A (Localization.Away g)))
  refine ⟨g * (IsLocalization.Away.sec g g').1, ?_, ?_⟩
  · refine Ideal.IsPrime.mul_notMem ‹_› hg fun hmem => hg' ?_
    rw [Ideal.mem_iff_of_associated (IsLocalization.Away.associated_sec_fst g g').symm]
    exact Ideal.mem_map_of_mem (algebraMap A (Localization.Away g)) hmem
  · intro S _ _ _
    haveI : IsLocalization.Away (g * (IsLocalization.Away.sec g g').1) (Localization.Away g') :=
      .mul_of_associated _ _ g' <| IsLocalization.Away.associated_sec_fst g g'
    let e : S ≃ₐ[A] Localization.Away g' :=
      IsLocalization.algEquiv (Submonoid.powers (g * (IsLocalization.Away.sec g g').1)) S
        (Localization.Away g')
    exact e.toRingEquiv.toMulEquiv.isDomain

end CrystallineSemistableComparison.Pb.EtaleIntegralityFacts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsAwayIsDomainOfSmooth =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsIntegralNbhd =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsIntegralNbhd", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open CategoryTheory AlgebraicGeometry

namespace CrystallineSemistableComparison.Pb.EtaleIntegralityFacts


theorem exists_integral_nbhd {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [Smooth q]
    (hE : ∀ (A : Type) [CommRing A] [Algebra K A] [Algebra.Smooth K A] (p : Ideal A) [p.IsPrime],
      ∃ r ∉ p, ∀ (S : Type) [CommRing S] [Algebra A S] [IsLocalization.Away r S], IsDomain S)
    (x : X) : ∃ W : X.Opens, x ∈ W ∧ IsIntegral W := by
  obtain ⟨_, ⟨V, hV, rfl⟩, hxV, -⟩ :=
    X.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
  have hVU : V ≤ q ⁻¹ᵁ ⊤ := fun _ _ => trivial
  have hsm := q.smooth_appLE (isAffineOpen_top (Spec (CommRingCat.of K))) hV hVU
  let φ : K →+* Γ(X, V) :=
    (q.appLE ⊤ V hVU).hom.comp (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom
  have hφ : φ.Smooth := RingHom.Smooth.comp
    (RingHom.Smooth.of_bijective (Scheme.ΓSpecIso (CommRingCat.of K)).symm.commRingCatIsoToRingEquiv.bijective)
    hsm
  let := φ.toAlgebra
  have : Algebra.Smooth K Γ(X, V) := hφ
  obtain ⟨r, hr, hdom⟩ := hE Γ(X, V) (hV.primeIdealOf ⟨x, hxV⟩).asIdeal
  have hxW : x ∈ X.basicOpen r := by
    have hr' : hV.primeIdealOf ⟨x, hxV⟩ ∈ hV.fromSpec ⁻¹ᵁ X.basicOpen r := by
      rw [hV.fromSpec_preimage_basicOpen]
      exact hr
    have hfx : hV.fromSpec (hV.primeIdealOf ⟨x, hxV⟩) = x := hV.fromSpec_primeIdealOf ⟨x, hxV⟩
    exact hfx ▸ (hr' : hV.fromSpec (hV.primeIdealOf ⟨x, hxV⟩) ∈ X.basicOpen r)
  refine ⟨X.basicOpen r, hxW, ?_⟩
  have hW : IsAffineOpen (X.basicOpen r) := hV.basicOpen r
  have : IsAffine (X.basicOpen r) := hW
  have : Nonempty (X.basicOpen r) := ⟨⟨x, hxW⟩⟩
  let := (X.presheaf.map (homOfLE <| X.basicOpen_le r).op).hom.toAlgebra
  have := hV.isLocalization_basicOpen r
  have : IsDomain Γ(X, X.basicOpen r) := hdom _
  have : IsDomain Γ(X.basicOpen r, ⊤) :=
    (X.basicOpen r).topIso.commRingCatIsoToRingEquiv.injective.isDomain
      (X.basicOpen r).topIso.commRingCatIsoToRingEquiv
  exact isIntegral_of_isAffine_of_isDomain _

end CrystallineSemistableComparison.Pb.EtaleIntegralityFacts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsIntegralNbhd =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IrreducibleSpaceOfConnectedOfLocally =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IrreducibleSpaceOfConnectedOfLocally", "h": "module\n\npublic import Mathlib.Topology.Connected.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Topology.Connected.Clopen\n\n"}
section -- clump:auto
@[expose] public section

namespace CrystallineSemistableComparison.Pb.EtaleIntegralityFacts

theorem irreducibleSpace_of_connected_of_locally {α : Type*} [TopologicalSpace α] [ConnectedSpace α]
    (h : ∀ x : α, ∃ U : Set α, IsOpen U ∧ x ∈ U ∧ IsIrreducible U) : IrreducibleSpace α := by
  obtain ⟨x₀⟩ := (inferInstance : Nonempty α)
  have hopen : IsOpen (irreducibleComponent x₀) := by
    rw [isOpen_iff_forall_mem_open]
    intro z hz
    obtain ⟨U, hU, hzU, hUirr⟩ := h z
    refine ⟨U, ?_, hU, hzU⟩
    have h1 : irreducibleComponent x₀ ⊆ closure U :=
      (subset_closure_inter_of_isPreirreducible_of_isOpen isIrreducible_irreducibleComponent.2 hU
        ⟨z, hz, hzU⟩).trans (closure_mono Set.inter_subset_right)
    have h2 : closure U = irreducibleComponent x₀ := eq_irreducibleComponent hUirr.closure.2 h1
    exact subset_closure.trans h2.le
  have hclopen : IsClopen (irreducibleComponent x₀) := ⟨isClosed_irreducibleComponent, hopen⟩
  have huniv : irreducibleComponent x₀ = Set.univ := hclopen.eq_univ ⟨x₀, mem_irreducibleComponent⟩
  have hirr : IsIrreducible (Set.univ : Set α) := huniv ▸ isIrreducible_irreducibleComponent
  exact (irreducibleSpace_def α).2 hirr

end CrystallineSemistableComparison.Pb.EtaleIntegralityFacts
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IrreducibleSpaceOfConnectedOfLocally =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsIntegralOfSmoothPf =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsIntegralOfSmoothPf", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsAwayIsDomainOfSmooth\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsIntegralNbhd\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IrreducibleSpaceOfConnectedOfLocally\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

theorem isIntegral_of_smooth_pf {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [ConnectedSpace X] (n : ℕ) [SmoothOfRelativeDimension n q] : IsIntegral X := by
  have hsm : Smooth q := SmoothOfRelativeDimension.smooth n q
  have hE : ∀ (A : Type) [CommRing A] [Algebra K A] [Algebra.Smooth K A] (p : Ideal A) [p.IsPrime],
      ∃ r ∉ p, ∀ (S : Type) [CommRing S] [Algebra A S] [IsLocalization.Away r S], IsDomain S :=
    fun A _ _ _ p _ => CrystallineSemistableComparison.Pb.EtaleIntegralityFacts.exists_away_isDomain_of_smooth (K := K) p
  choose W hxW hW using fun x => CrystallineSemistableComparison.Pb.EtaleIntegralityFacts.exists_integral_nbhd q hE x
  have hcov : TopologicalSpace.IsOpenCover W :=
    eq_top_iff.mpr fun x _ => TopologicalSpace.Opens.mem_iSup.mpr ⟨x, hxW x⟩
  have hredi : ∀ i, IsReduced ((X.openCoverOfIsOpenCover W hcov).X i) := by
    intro i
    rw [Scheme.openCoverOfIsOpenCover_X]
    have := hW i
    exact isReduced_of_isIntegral _
  have hred : IsReduced X := IsReduced.of_openCover X (X.openCoverOfIsOpenCover W hcov)
  have hirr : IrreducibleSpace X := by
    refine CrystallineSemistableComparison.Pb.EtaleIntegralityFacts.irreducibleSpace_of_connected_of_locally fun x => ⟨W x, (W x).isOpen, hxW x, ?_⟩
    have := hW x
    have hi := irreducibleSpace_of_isIntegral (W x : Scheme)
    have h2 := (IrreducibleSpace.isIrreducible_univ (↥(W x : Scheme))).image Subtype.val
      continuous_subtype_val.continuousOn
    rwa [Set.image_univ, Subtype.range_coe] at h2
  exact isIntegral_of_irreducibleSpace_of_isReduced X

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsIntegralOfSmoothPf =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsCoordBasicOpen =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsCoordBasicOpen", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordDimEqRelativeDimStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.CoordsOfEtaleBasicOpenStatement\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsEtaleAwayPf\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsIntegralOfSmoothPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

theorem exists_frac_basicOpen {X : Scheme.{0}} {W : X.Opens} (hW : IsAffineOpen W) (g : Γ(X, W))
    (hne : (X.basicOpen g : Set X).Nonempty) :
    ∀ r : Γ(X, X.basicOpen g), ∃ b ∈ Set.range (resO (X.basicOpen_le g)), ∃ b' ∈ Set.range (resO (X.basicOpen_le g)),
      b' ≠ 0 ∧ r * b' = b := by
  intro r
  letI := (resO (X.basicOpen_le g)).toAlgebra
  haveI := hW.isLocalization_basicOpen g
  haveI : Nonempty (X.basicOpen g) := hne.to_subtype
  obtain ⟨k, a, hk⟩ := IsLocalization.Away.surj g r
  refine ⟨resO (X.basicOpen_le g) a, ⟨a, rfl⟩, resO (X.basicOpen_le g) (g ^ k), ⟨g ^ k, rfl⟩, ?_, ?_⟩
  · rw [map_pow]
    exact ((IsLocalization.Away.algebraMap_isUnit (S := Γ(X, X.basicOpen g)) g).pow k).ne_zero
  · rw [map_pow]
    exact hk

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsCoordBasicOpen =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteType =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteType", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.GeoFT

theorem finiteType_affine {K : Type} [Field K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [LocallyOfFiniteType q] {W : X.Opens} (hW : IsAffineOpen W) :
    letI := (strV q W).toAlgebra; Algebra.FiniteType K Γ(X, W) := by
  have h1 : (q.appLE ⊤ W le_top).hom.FiniteType :=
    HasRingHomProperty.appLE (P := @LocallyOfFiniteType) q inferInstance
      ⟨⊤, isAffineOpen_top _⟩ ⟨W, hW⟩ le_top
  have h2 : (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom.FiniteType :=
    RingHom.FiniteType.of_surjective _
      (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (CommRingCat.of K)).inv).2
  have h3 : (strV q W).FiniteType := by
    have : strV q W = (q.appLE ⊤ W le_top).hom.comp (Scheme.ΓSpecIso (CommRingCat.of K)).inv.hom := rfl
    rw [this]
    exact h1.comp h2
  letI := (strV q W).toAlgebra
  exact RingHom.finiteType_algebraMap.1 h3

end GlobalTheory.CompanionTheory.GeoFT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteType =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteTypeStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteTypeStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.SEqOne\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteType\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteTypeStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.Geo

theorem evV_surjective : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), IsClosedImmersion i → ∀ {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ} (hg : g ∈ grK K N e), 0 < e → Function.Surjective (evV i g (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) le_rfl) := by
  intro K _ X N i hi g e hg he
  have hU : IsAffineOpen (Proj.basicOpen (grK K N) g) := Proj.isAffineOpen_basicOpen (grK K N) g hg he
  have hiso : IsIso (Proj.awayToSection (grK K N) g) := (Proj.basicOpenIsoAway (grK K N) g hg he).isIso_hom
  have h1 : Function.Surjective (Proj.awayToSection (grK K N) g).hom :=
    (ConcreteCategory.bijective_of_isIso (Proj.awayToSection (grK K N) g)).2
  have h2 : Function.Surjective (i.appLE _ (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) le_rfl).hom := by
    rw [Scheme.Hom.appLE_eq_app]
    exact i.app_surjective _ hU
  exact h2.comp h1

end GlobalTheory.CompanionTheory.Geo
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjectiveStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjectiveStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjective\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

theorem _root_.GlobalTheory.T.basic_open_eval_surjective : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), IsClosedImmersion i → ∀ {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ} (hg : g ∈ grK K N e), 0 < e → Function.Surjective (evV i g (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) le_rfl) := by
  first | exact @GlobalTheory.CompanionTheory.Geo.evV_surjective
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjectiveStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFinite =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFinite", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ProjSpaceHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.GeoCover

theorem X_mem_of_finite {K : Type} [Field K] {n m : ℕ}
    (I P : Ideal (MvPolynomial (Fin n) K)) [hPp : P.IsPrime] (hIP : I ≤ P)
    (hP : P.IsHomogeneous (MvPolynomial.homogeneousSubmodule (Fin n) K))
    (y : Fin m → MvPolynomial (Fin n) K) (hy : ∀ k, y k ∈ P)
    (hfin : Module.Finite (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk I (y k)))
      (MvPolynomial (Fin n) K ⧸ I))
    (j : Fin n) : (MvPolynomial.X j : MvPolynomial (Fin n) K) ∈ P := by
  classical
  by_contra hj
  let φ : (MvPolynomial (Fin n) K ⧸ I) →+* (MvPolynomial (Fin n) K ⧸ P) := Ideal.Quotient.factor hIP
  have hφ : ∀ g, φ (Ideal.Quotient.mk I g) = Ideal.Quotient.mk P g := fun g => rfl
  let Q : Ideal (MvPolynomial (Fin n) K ⧸ I) := RingHom.ker φ
  haveI : Q.IsPrime := RingHom.ker_isPrime φ
  haveI : Algebra.IsIntegral (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk I (y k)))
      (MvPolynomial (Fin n) K ⧸ I) := Algebra.IsIntegral.of_finite _ _
  have hc0 : ∀ r ∈ Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk I (y k)),
      ∃ c : K, φ r = Ideal.Quotient.mk P (MvPolynomial.C c) := by
    intro r hr
    induction hr using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨k, rfl⟩ := hx
      exact ⟨0, by rw [hφ, map_zero, map_zero]; exact Ideal.Quotient.eq_zero_iff_mem.2 (hy k)⟩
    | algebraMap c => exact ⟨c, rfl⟩
    | add a b _ _ ha hb =>
      obtain ⟨c, hc⟩ := ha
      obtain ⟨d, hd⟩ := hb
      exact ⟨c + d, by rw [φ.map_add, hc, hd, (MvPolynomial.C : K →+* MvPolynomial (Fin n) K).map_add, (Ideal.Quotient.mk P).map_add]⟩
    | mul a b _ _ ha hb =>
      obtain ⟨c, hc⟩ := ha
      obtain ⟨d, hd⟩ := hb
      exact ⟨c * d, by rw [map_mul, hc, hd, map_mul, map_mul]⟩
  have h1 : (1 : MvPolynomial (Fin n) K ⧸ P) ≠ 0 := by
    intro h
    have : (1 : MvPolynomial (Fin n) K) ∈ P := Ideal.Quotient.eq_zero_iff_mem.1 (by rw [map_one]; exact h)
    exact hPp.ne_top ((Ideal.eq_top_iff_one _).2 this)
  have hmax : (Q.comap (algebraMap (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk I (y k)))
      (MvPolynomial (Fin n) K ⧸ I))).IsMaximal := by
    rw [Ideal.isMaximal_iff]
    refine ⟨fun h => h1 ?_, fun J x hle hx hxJ => ?_⟩
    · have : φ 1 = 0 := by simpa [Q, RingHom.mem_ker, Ideal.mem_comap] using h
      simpa using this
    · obtain ⟨c, hc⟩ := hc0 x.1 x.2
      have hc' : c ≠ 0 := by
        rintro rfl
        apply hx
        rw [Ideal.mem_comap]
        change φ x.1 = 0
        rw [hc, map_zero, map_zero]
      have hm : x * algebraMap K _ c⁻¹ - 1 ∈ J := by
        apply hle
        rw [Ideal.mem_comap]
        change φ (x.1 * algebraMap K _ c⁻¹ - 1) = 0
        rw [φ.map_sub, φ.map_mul, hc, φ.map_one]
        change _ * Ideal.Quotient.mk P (MvPolynomial.C c⁻¹) - 1 = 0
        rw [← map_mul (Ideal.Quotient.mk P), ← map_mul MvPolynomial.C, mul_inv_cancel₀ hc', map_one, map_one, sub_self]
      have := J.sub_mem (J.mul_mem_right (algebraMap K _ c⁻¹) hxJ) hm
      simpa using this
  have hQ : Q.IsMaximal := Ideal.isMaximal_of_isIntegral_of_isMaximal_under
    (R := Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk I (y k))) Q hmax
  have hjQ : Ideal.Quotient.mk I (MvPolynomial.X j) ∉ Q := fun h =>
    hj (Ideal.Quotient.eq_zero_iff_mem.1 ((hφ _).symm.trans (RingHom.mem_ker.1 h)))
  obtain ⟨a, b, hb, hab⟩ := hQ.exists_inv hjQ
  obtain ⟨g, rfl⟩ := Ideal.Quotient.mk_surjective a
  have h2 : Ideal.Quotient.mk P (g * MvPolynomial.X j - 1) = 0 := by
    have := congrArg φ hab
    rw [φ.map_add, φ.map_mul, hφ, hφ, show φ b = 0 from hb, add_zero, map_one] at this
    rw [(Ideal.Quotient.mk P).map_sub, (Ideal.Quotient.mk P).map_mul, this, (Ideal.Quotient.mk P).map_one, sub_self]
  have h3 : MvPolynomial.homogeneousComponent 0 (g * MvPolynomial.X j - 1) ∈ P := by
    rw [← MvPolynomial.decomposition.decompose'_apply]
    exact hP 0 (Ideal.Quotient.eq_zero_iff_mem.1 h2)
  have h4 : AddMonoidAlgebra.coeff (g * MvPolynomial.X j - 1) 0 = -1 := by
    have : MvPolynomial.constantCoeff (g * MvPolynomial.X j - 1) = -1 := by simp only [(MvPolynomial.constantCoeff : MvPolynomial (Fin n) K →+* K).map_sub, (MvPolynomial.constantCoeff : MvPolynomial (Fin n) K →+* K).map_mul, MvPolynomial.constantCoeff_X, mul_zero, (MvPolynomial.constantCoeff : MvPolynomial (Fin n) K →+* K).map_one, zero_sub]
    rwa [MvPolynomial.constantCoeff_eq] at this
  rw [MvPolynomial.homogeneousComponent_zero, h4, (MvPolynomial.C : K →+* MvPolynomial (Fin n) K).map_neg, (MvPolynomial.C : K →+* MvPolynomial (Fin n) K).map_one] at h3
  exact hPp.ne_top ((Ideal.eq_top_iff_one _).2 (by simpa using P.neg_mem h3))

theorem mem_of_evV_eq_zero {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N) (p : X)
    (j : Fin (N + 1)) (hj : i p ∈ Proj.basicOpen (grK K N) (MvPolynomial.X j))
    {d : ℕ} {f : MvPolynomial (Fin (N + 1)) K} (hf : f ∈ grK K N (d • 1))
    (h : evV i (MvPolynomial.X j) (i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j)) le_rfl
      (HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) d f hf) = 0) :
    f ∈ (ProjectiveSpectrum.asHomogeneousIdeal (i p : ProjectiveSpectrum (grK K N))).toIdeal := by
  by_contra hfP
  have hf' : f * MvPolynomial.X j ∈ grK K N (d + 1) := by
    have := SetLike.mul_mem_graded hf (xv_mem K N j)
    simpa using this
  have e : HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) d f hf =
      HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hf' := by
    apply HomogeneousLocalization.val_injective
    simp [HomogeneousLocalization.Away.isLocalizationElem, HomogeneousLocalization.Away.val_mk]
    exact Localization.mk_eq_mk_iff.2 (Localization.r_of_eq (by
      change MvPolynomial.X j ^ (d + 1) * f = MvPolynomial.X j ^ d * (f * MvPolynomial.X j)
      ring))
  have hb := GroundTheory.Arith.SchemeCoh.ProjHom.basicOpen_awayToSection_isLocalizationElem (grK K N)
    (xv_mem K N j) one_pos hf' (Nat.succ_pos d)
  have hx : i p ∈ (PSpace K N).basicOpen (Proj.awayToSection (grK K N) (MvPolynomial.X j)
      (HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hf')) := by
    erw [hb]
    refine ⟨hj, fun hm => ?_⟩
    exact ((i p : ProjectiveSpectrum (grK K N)).isPrime.mem_or_mem hm).elim hfP hj
  have hp : p ∈ i ⁻¹ᵁ (PSpace K N).basicOpen (Proj.awayToSection (grK K N) (MvPolynomial.X j)
      (HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hf')) := hx
  rw [Scheme.preimage_basicOpen, ← e] at hp
  have h0 : i.app _ (Proj.awayToSection (grK K N) (MvPolynomial.X j)
      (HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) d f hf)) = 0 := by
    rw [Scheme.Hom.app_eq_appLE]
    exact h
  rw [h0, Scheme.basicOpen_zero] at hp
  exact hp

theorem iSup_preimage_eq_top : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), ∀ {m e : ℕ}, 0 < e → ∀ (y : Fin m → MvPolynomial (Fin (N + 1)) K), (∀ k, (y k).IsHomogeneous e) → Module.Finite (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk (homIdeal i) (y k))) (MvPolynomial (Fin (N + 1)) K ⧸ homIdeal i) → ⨆ k, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) = ⊤ := by
  intro K _ X N i m e _ y _ hfin
  rw [_root_.eq_top_iff]
  intro p _
  by_contra hcon
  obtain ⟨j, hj⟩ : ∃ j, i p ∈ Proj.basicOpen (grK K N) (MvPolynomial.X j) := by
    have : i p ∈ (⨆ j : Fin (N + 1), Proj.basicOpen (grK K N) (MvPolynomial.X j)) := by
      erw [GroundTheory.Arith.SchemeCoh.ProjSpace.iSup_basicOpen_X]
      trivial
    simpa [TopologicalSpace.Opens.mem_iSup] using this
  have hy : ∀ k, y k ∈ (ProjectiveSpectrum.asHomogeneousIdeal (i p : ProjectiveSpectrum (grK K N))).toIdeal := by
    intro k
    by_contra hk
    apply hcon
    rw [TopologicalSpace.Opens.mem_iSup]
    exact ⟨k, hk⟩
  have hle : homIdeal i ≤ (ProjectiveSpectrum.asHomogeneousIdeal (i p : ProjectiveSpectrum (grK K N))).toIdeal := by
    rw [homIdeal, Ideal.span_le]
    rintro f ⟨d, hf, hv⟩
    exact mem_of_evV_eq_zero i p j hj hf (hv j)
  haveI : (ProjectiveSpectrum.asHomogeneousIdeal (i p : ProjectiveSpectrum (grK K N))).toIdeal.IsPrime :=
    (i p : ProjectiveSpectrum (grK K N)).isPrime
  exact hj (X_mem_of_finite _ _ hle
    (ProjectiveSpectrum.asHomogeneousIdeal (i p : ProjectiveSpectrum (grK K N))).isHomogeneous y hy hfin j)

end GlobalTheory.CompanionTheory.GeoCover
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFinite =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFiniteStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFiniteStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFinite\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

theorem _root_.GlobalTheory.T.basic_opens_cover_of_finite : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), ∀ {m e : ℕ}, 0 < e → ∀ (y : Fin m → MvPolynomial (Fin (N + 1)) K), (∀ k, (y k).IsHomogeneous e) → Module.Finite (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk (homIdeal i) (y k))) (MvPolynomial (Fin (N + 1)) K ⧸ homIdeal i) → ⨆ k, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) = ⊤ := by
  first | exact @GlobalTheory.CompanionTheory.GeoCover.iSup_preimage_eq_top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFiniteStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAffineOpenPreimage =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAffineOpenPreimage", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.AffineOpenFiniteTypeStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenEvalSurjectiveStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpensCoverOfFiniteStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

variable {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N)

theorem biInf_preimage {m : ℕ} (y : Fin m → MvPolynomial (Fin (N + 1)) K) (S : Finset (Fin m)) :
    ⨅ k ∈ S, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) = i ⁻¹ᵁ Proj.basicOpen (grK K N) (yS y S) := by
  classical
  induction S using Finset.induction_on with
  | empty =>
    ext x
    simp [yS, Proj.basicOpen]
  | insert a S ha ih =>
    rw [Finset.iInf_insert, ih]
    simp only [yS]
    rw [Finset.prod_insert ha, Proj.basicOpen_mul]
    rfl

theorem isAffineOpen_preimage (hci : IsClosedImmersion i) {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ}
    (hg : g ∈ grK K N e) (he : 0 < e) : IsAffineOpen (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) := by
  haveI := hci
  exact (Proj.isAffineOpen_basicOpen (grK K N) g hg he).preimage i

theorem evV_surjective (hci : IsClosedImmersion i) {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ}
    (hg : g ∈ grK K N e) (he : 0 < e) :
    Function.Surjective (evV i g (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) le_rfl) := by
  first
    | (intros; apply GlobalTheory.T.basic_open_eval_surjective <;> assumption)

theorem range_resO_eq (hci : IsClosedImmersion i) {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ}
    (hg : g ∈ grK K N e) (he : 0 < e) {V W : X.Opens} (hW : W = i ⁻¹ᵁ Proj.basicOpen (grK K N) g) (h : V ≤ W)
    (h' : V ≤ i ⁻¹ᵁ Proj.basicOpen (grK K N) g) : Set.range (resO h) = Set.range (evV i g V h') := by
  subst hW
  have e0 : i.appLE _ (i ⁻¹ᵁ Proj.basicOpen (grK K N) g) le_rfl ≫ X.presheaf.map (homOfLE h).op = i.appLE _ V h' :=
    Scheme.Hom.appLE_map i _ _
  have hcomp : evV i g V h' = (resO h).comp (evV i g _ le_rfl) := by
    refine RingHom.ext fun a => ?_
    simp only [evV, resO, RingHom.comp_apply, ← e0]
    rfl
  rw [hcomp, RingHom.coe_comp, Set.range_comp, (_root_.GlobalTheory.CompanionTheory.Geo.evV_surjective i hci hg he).range_eq, Set.image_univ]

theorem iSup_preimage_eq_top {m e : ℕ} (he : 0 < e) (y : Fin m → MvPolynomial (Fin (N + 1)) K)
    (hy : ∀ k, (y k).IsHomogeneous e)
    (hfin : Module.Finite (Algebra.adjoin K (Set.range fun k => Ideal.Quotient.mk (homIdeal i) (y k)))
      (MvPolynomial (Fin (N + 1)) K ⧸ homIdeal i)) :
    ⨆ k, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) = ⊤ := by
  first
    | (intros; apply GlobalTheory.T.basic_opens_cover_of_finite <;> assumption)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAffineOpenPreimage =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZero =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZero", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ProjSpaceHom\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

namespace GlobalTheory.CompanionTheory.Geo

theorem preimage_basicOpen_nonempty_of_mk_ne_zero {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ}
    (i : X ⟶ PSpace K N) (hX : IsIntegral X) {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ} (he : 0 < e)
    (hg : g ∈ grK K N e) (hne : Ideal.Quotient.mk (homIdeal i) g ≠ 0) :
    ((i ⁻¹ᵁ Proj.basicOpen (grK K N) g : X.Opens) : Set X).Nonempty := by
  by_contra hE
  apply hne
  rw [Ideal.Quotient.eq_zero_iff_mem]
  apply Ideal.subset_span
  have hg' : g ∈ grK K N (e • 1) := by simpa using hg
  refine ⟨e, hg', fun j => ?_⟩
  have hy : HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) e g hg' =
      HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hg := by
    apply HomogeneousLocalization.val_injective
    simp [HomogeneousLocalization.Away.isLocalizationElem, HomogeneousLocalization.Away.val_mk]
  rw [hy, ← basicOpen_eq_bot_iff]
  have hb := GroundTheory.Arith.SchemeCoh.ProjHom.basicOpen_awayToSection_isLocalizationElem (grK K N)
    (xv_mem K N j) one_pos hg he
  have h2 : X.basicOpen (evV i (MvPolynomial.X j) (i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j)) le_rfl
      (HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hg)) =
      i ⁻¹ᵁ (PSpace K N).basicOpen (Proj.awayToSection (grK K N) (MvPolynomial.X j)
        (HomogeneousLocalization.Away.isLocalizationElem (xv_mem K N j) hg)) := by
    rw [Scheme.preimage_basicOpen]
    simp only [evV, Scheme.Hom.appLE_eq_app]
    rfl
  rw [h2, hb, eq_bot_iff]
  intro x hx
  exact hE ⟨x, hx.2⟩

end GlobalTheory.CompanionTheory.Geo
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZero =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZeroStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZeroStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZero\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

theorem _root_.GlobalTheory.T.basic_open_nonempty_of_ne_zero : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), IsIntegral X → ∀ {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ}, 0 < e → ∀ (hg : g ∈ grK K N e), Ideal.Quotient.mk (homIdeal i) g ≠ 0 → ((i ⁻¹ᵁ Proj.basicOpen (grK K N) g : X.Opens) : Set X).Nonempty := by
  first | exact @GlobalTheory.CompanionTheory.Geo.preimage_basicOpen_nonempty_of_mk_ne_zero
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZeroStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMemStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMemStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMem\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

theorem _root_.GlobalTheory.T.homogeneous_ideal_component_mem : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), ∀ f ∈ homIdeal i, ∀ n : ℕ, MvPolynomial.homogeneousComponent n f ∈ homIdeal i := by
  first | exact @GlobalTheory.CompanionTheory.Geo.homIdeal_homog
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMemStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTop =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTop", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.MvPolynomial.Ideal\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.GeoNetop

attribute [local instance] MvPolynomial.gradedAlgebra

theorem irrelevant_le_spanX (K : Type) [Field K] (N : ℕ) :
    (HomogeneousIdeal.irrelevant (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K)).toIdeal ≤
      Ideal.span (Set.range (MvPolynomial.X : Fin (N + 1) → MvPolynomial (Fin (N + 1)) K)) := by
  intro x hx
  have h0 := (HomogeneousIdeal.mem_irrelevant_iff _ _).1 hx
  rw [GradedRing.proj_apply] at h0
  have h1 : MvPolynomial.homogeneousComponent 0 x = 0 := by
    rw [← MvPolynomial.decomposition.decompose'_apply]
    exact h0
  rw [MvPolynomial.homogeneousComponent_zero, MvPolynomial.C_eq_zero] at h1
  rw [← Set.image_univ, MvPolynomial.mem_ideal_span_X_image]
  intro m hm
  have hm0 : m ≠ 0 := by
    rintro rfl
    exact (MvPolynomial.mem_support_iff.1 hm) h1
  obtain ⟨a, ha⟩ := Finsupp.ne_iff.1 hm0
  exact ⟨a, Set.mem_univ _, ha⟩

theorem exists_chart {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N) (x : X) :
    ∃ j : Fin (N + 1), x ∈ i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j) := by
  have h := Proj.iSup_basicOpen_eq_top (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) MvPolynomial.X
    (irrelevant_le_spanX K N)
  have hx : i x ∈ ⨆ j, Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) (MvPolynomial.X j) := by
    rw [h]; trivial
  obtain ⟨j, hj⟩ := TopologicalSpace.Opens.mem_iSup.1 hx
  exact ⟨j, hj⟩

theorem mk_C_mul_inv {K : Type} [Field K] {N : ℕ} (j : Fin (N + 1)) (c : K) (hc : c ≠ 0)
    (ha : MvPolynomial.C c ∈ grK K N (0 • 1)) (hb : MvPolynomial.C c⁻¹ ∈ grK K N (0 • 1)) :
    HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) 0 (MvPolynomial.C c) ha *
      HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) 0 (MvPolynomial.C c⁻¹) hb = 1 := by
  apply HomogeneousLocalization.val_injective
  simp [HomogeneousLocalization.Away.val_mk, Localization.mk_mul, ← map_mul, mul_inv_cancel₀ hc]

theorem constantCoeff_gen {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N) (hX : Nonempty X)
    {f : MvPolynomial (Fin (N + 1)) K} (d : ℕ) (hf : f ∈ grK K N (d • 1))
    (h0 : ∀ j : Fin (N + 1), evV i (MvPolynomial.X j) (i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j)) le_rfl
      (HomogeneousLocalization.Away.mk (grK K N) (xv_mem K N j) d f hf) = 0) :
    MvPolynomial.constantCoeff f = 0 := by
  have hc := MvPolynomial.homogeneousComponent_of_mem (m := 0) hf
  rw [MvPolynomial.homogeneousComponent_zero] at hc
  rw [MvPolynomial.constantCoeff_eq]
  by_cases hd : 0 = d • 1
  · rw [if_pos hd] at hc
    have hd0 : d = 0 := by simpa using hd.symm
    subst hd0
    obtain ⟨c, rfl⟩ : ∃ c, f = MvPolynomial.C c := ⟨_, hc.symm⟩
    rw [MvPolynomial.coeff_zero_C]
    by_contra hne
    obtain ⟨x⟩ := hX
    obtain ⟨j, hj⟩ := exists_chart i x
    haveI : Nonempty (i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j)) := ⟨⟨x, hj⟩⟩
    haveI := Scheme.component_nontrivial X (i ⁻¹ᵁ Proj.basicOpen (grK K N) (MvPolynomial.X j))
    have hb : MvPolynomial.C c⁻¹ ∈ grK K N (0 • 1) := by
      simpa using MvPolynomial.isHomogeneous_C (Fin (N + 1)) c⁻¹
    have e := congrArg (evV i (MvPolynomial.X j) _ le_rfl) (mk_C_mul_inv j c hne hf hb)
    rw [map_mul, map_one, h0 j, zero_mul] at e
    exact zero_ne_one e
  · rw [if_neg hd, MvPolynomial.C_eq_zero] at hc
    exact hc

theorem homIdeal_ne_top : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N),
    Nonempty X → homIdeal i ≠ ⊤ := by
  intro K _ X N i hX htop
  have hle : homIdeal i ≤ RingHom.ker (MvPolynomial.constantCoeff (σ := Fin (N + 1)) (R := K)) := by
    refine Ideal.span_le.2 ?_
    rintro f ⟨d, hf, h0⟩
    exact (RingHom.mem_ker).2 (constantCoeff_gen i hX d hf h0)
  have h1 : (1 : MvPolynomial (Fin (N + 1)) K) ∈ RingHom.ker (MvPolynomial.constantCoeff (σ := Fin (N + 1)) (R := K)) :=
    hle (htop ▸ Submodule.mem_top)
  rw [RingHom.mem_ker, map_one] at h1
  exact one_ne_zero h1
end GlobalTheory.CompanionTheory.GeoNetop
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTop =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTopStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTopStatement", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTop\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison.Pb
attribute [local instance] MvPolynomial.gradedAlgebra

theorem _root_.GlobalTheory.T.homogeneous_ideal_ne_top : ∀ {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N), Nonempty X → homIdeal i ≠ ⊤ := by
  first | exact @GlobalTheory.CompanionTheory.GeoNetop.homIdeal_ne_top
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTopStatement =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PreimageBasicOpenNonempty =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PreimageBasicOpenNonempty", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.BasicOpenNonemptyOfNeZeroStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealComponentMemStatement\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.HomogeneousIdealNeTopStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

variable {K : Type} [Field K] {X : Scheme.{0}} {N : ℕ} (i : X ⟶ PSpace K N)

theorem homIdeal_homog : ∀ f ∈ homIdeal i, ∀ n : ℕ, MvPolynomial.homogeneousComponent n f ∈ homIdeal i := by
  first
    | (intros; apply GlobalTheory.T.homogeneous_ideal_component_mem <;> assumption)

theorem homIdeal_ne_top [Nonempty X] : homIdeal i ≠ ⊤ := by
  first
    | (intros; apply GlobalTheory.T.homogeneous_ideal_ne_top <;> assumption)

theorem preimage_basicOpen_nonempty [IsIntegral X] {g : MvPolynomial (Fin (N + 1)) K} {e : ℕ} (he : 0 < e)
    (hg : g ∈ grK K N e) (hg0 : Ideal.Quotient.mk (homIdeal i) g ≠ 0) :
    ((i ⁻¹ᵁ Proj.basicOpen (grK K N) g : X.Opens) : Set X).Nonempty := by
  first
    | (intros; apply GlobalTheory.T.basic_open_nonempty_of_ne_zero <;> assumption)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PreimageBasicOpenNonempty =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeoDefs\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.SeamDefs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Defs\npublic import Mathlib.RingTheory.Ideal.Quotient.Operations\npublic import Mathlib.RingTheory.MvPolynomial.Homogeneous\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.NoetherNormalizationHomogeneous\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.ExistsCoordBasicOpen\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAffineOpenPreimage\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsAlgebraicOfIntegralTorusS\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PreimageBasicOpenNonempty\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor

namespace CrystallineSemistableComparison.Pb

attribute [local instance] MvPolynomial.gradedAlgebra

theorem geo_setup {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))
    [ConnectedSpace X] (n : ℕ) [SmoothOfRelativeDimension (n + 1) q] (N : ℕ) (i : X ⟶ PSpace K N)
    (hci : IsClosedImmersion i) (hiq : i ≫ PSpace.str K N = q) :
    ∃ (e : ℕ) (_ : 0 < e) (y : Fin (n + 2) → MvPolynomial (Fin (N + 1)) K) (hy : ∀ k, (y k).IsHomogeneous e),
      let U : Fin (n + 2) → X.Opens := fun k => i ⁻¹ᵁ Proj.basicOpen _ (y k)
      (⨆ k, U k) = ⊤ ∧
      (∀ S : Finset (Fin (n + 2)), S.Nonempty → IsAffineOpen (⨅ k ∈ S, U k)) ∧
      ∃ (V : X.Opens) (hV : V ≤ ⨅ k, U k) (c : Coord q V (n + 1)),
        letI := (strV q V).toAlgebra
        IsDomain Γ(X, V) ∧
        (∀ k, c.t k = (i.appLE _ V (hV.trans (iInf_le U 0))).hom (yRatio y hy k)) ∧
        ∃ ht : ∀ k, IsUnit (c.t k),
          AlgebraicIndependent K c.t ∧
          ∃ B : Finset (Fin (n + 2)) → Subalgebra K Γ(X, V),
            (∀ S, S.Nonempty → (B S : Set Γ(X, V)) = Set.range (resO (le_biInf_of_le hV S))) ∧
            (∀ S, S.Nonempty → Function.Injective (resO (le_biInf_of_le hV S))) ∧
            (∀ S, S.Nonempty → torusS K (fun k => (ht k).unit) S ≤ B S) ∧
            (∀ S, S.Nonempty → (B S).FG) ∧
            (∀ S, S.Nonempty → ∀ b ∈ B S, IsIntegral (torusS K (fun k => (ht k).unit) S) b) ∧
            (∀ j, B (Finset.univ.erase j) ≤ B Finset.univ) ∧
            (∀ r : Γ(X, V), ∃ b ∈ B Finset.univ, ∃ b' ∈ B Finset.univ, b' ≠ 0 ∧ r * b' = b) := by
  classical
  haveI : IsClosedImmersion i := hci
  haveI hXi : IsIntegral X := _root_.CrystallineSemistableComparison.Pb.isIntegral_of_smooth_pf q (n + 1)
  haveI : Infinite K := Infinite.of_injective (Nat.cast : ℕ → K) Nat.cast_injective
  obtain ⟨e, m, y, he, hy, halg, hfin⟩ :=
    _root_.GlobalTheory.CompanionTheory.ConeNoether.main K N (homIdeal i) (homIdeal_ne_top i) (homIdeal_homog i)
  have hcov := iSup_preimage_eq_top i he y hy hfin
  obtain ⟨d, rfl⟩ : ∃ d, m = d + 1 := by
    rcases m with _ | d
    · exfalso
      obtain ⟨x⟩ := (inferInstance : Nonempty X)
      have hx : x ∈ (⊤ : X.Opens) := trivial
      rw [← hcov, iSup_of_empty] at hx
      simp at hx
    · exact ⟨d, rfl⟩
  have hpos : ∀ S : Finset (Fin (d + 1)), S.Nonempty → 0 < S.card * e := fun S hS => Nat.mul_pos hS.card_pos he
  have haff : ∀ S : Finset (Fin (d + 1)), S.Nonempty →
      IsAffineOpen (⨅ k ∈ S, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k)) := by
    intro S hS
    rw [biInf_preimage i y S]
    exact isAffineOpen_preimage i hci (yS_mem y hy S) (hpos S hS)
  let W : X.Opens := ⨅ k ∈ (Finset.univ : Finset (Fin (d + 1))), i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k)
  have hWaff : IsAffineOpen W := haff _ Finset.univ_nonempty
  have hWV : W ≤ ⨅ k, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) := le_iInf fun k => biInf_le _ (Finset.mem_univ k)
  have hWS : W ≤ i ⁻¹ᵁ Proj.basicOpen (grK K N) (yS y Finset.univ) := (biInf_preimage i y _).le
  have hWne : (W : Set X).Nonempty := by
    have hne0 : Ideal.Quotient.mk (homIdeal i) (yS y Finset.univ) ≠ 0 := by
      intro h0
      have h1 : MvPolynomial.aeval (fun k => Ideal.Quotient.mk (homIdeal i) (y k))
          (∏ k : Fin (d + 1), (MvPolynomial.X k : MvPolynomial (Fin (d + 1)) K)) = 0 := by
        rw [map_prod]
        simpa [yS, map_prod] using h0
      have h2 := halg (h1.trans (map_zero _).symm)
      exact Finset.prod_ne_zero_iff.2 (fun k _ => MvPolynomial.X_ne_zero k) h2
    have := preimage_basicOpen_nonempty i (hpos _ Finset.univ_nonempty) (yS_mem y hy Finset.univ) hne0
    rwa [← biInf_preimage i y Finset.univ] at this
  letI algW : Algebra K Γ(X, W) := (strV q W).toAlgebra
  have htW : ∀ k, IsUnit (tV i y hy W hWV k) := _root_.GlobalTheory.CompanionTheory.GeoUnit.tV_isUnit i y hy hWV
  have hindW : AlgebraicIndependent K (tV i y hy W hWV) :=
    algebraicIndependent_tV i y hy hWV he q hiq halg hWne
  haveI : Nonempty W := hWne.to_subtype
  have hintW : ∀ r : Γ(X, W), IsIntegral (torusS K (fun k => (htW k).unit) Finset.univ) r := by
    intro r
    have hr : r ∈ Set.range (resO (le_refl W)) := ⟨r, by simp [resO]⟩
    rw [range_resO_eq i hci (yS_mem y hy _) (hpos _ Finset.univ_nonempty) (biInf_preimage i y _) le_rfl hWS] at hr
    obtain ⟨a, rfl⟩ := hr
    exact _root_.GlobalTheory.CompanionTheory.GeoInteg.isIntegral_torusS i y hy hWV he q hiq hfin Finset.univ hWS htW a
  have halgW : Algebra.IsAlgebraic (Algebra.adjoin K (Set.range (tV i y hy W hWV))) Γ(X, W) :=
    isAlgebraic_of_integral_torusS (fun k => (htW k).unit) hintW
  haveI hlft : LocallyOfFiniteType q := by
    first
      | (haveI : Smooth q := SmoothOfRelativeDimension.smooth (n + 1) q; infer_instance)
  haveI : Algebra.FiniteType K Γ(X, W) := _root_.GlobalTheory.CompanionTheory.GeoFT.finiteType_affine q hWaff
  obtain ⟨g, hg0, het⟩ := _root_.CrystallineSemistableComparison.Pb.exists_etale_away_pf (tV i y hy W hWV) hindW halgW
  obtain ⟨c, hc⟩ := _root_.GlobalTheory.CompanionTheory.GeoCoord.exists_coord_basicOpen q hWaff g (tV i y hy W hWV) het
  have hVne : ((X.basicOpen g : X.Opens) : Set X).Nonempty := by
    rw [← TopologicalSpace.Opens.ne_bot_iff_nonempty]
    intro h
    exact hg0 ((basicOpen_eq_bot_iff g).1 h)
  have hdn : d = n + 1 := _root_.GlobalTheory.CompanionTheory.CoordCard.main q (n + 1) hVne c
  subst hdn
  refine ⟨e, he, y, hy, ?_⟩
  intro U
  have hV : X.basicOpen g ≤ ⨅ k, i ⁻¹ᵁ Proj.basicOpen (grK K N) (y k) := (X.basicOpen_le g).trans hWV
  have hct : ∀ k, c.t k = tV i y hy (X.basicOpen g) hV k := by
    intro k
    rw [hc k]
    simp only [tV, resO]
    rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_map]
  let c' : Coord q (X.basicOpen g) (n + 1) :=
    ⟨c.affine, tV i y hy (X.basicOpen g) hV, by
      have h := c.etale
      rwa [show c.t = tV i y hy (X.basicOpen g) hV from funext hct] at h⟩
  refine ⟨hcov, fun S hS => haff S hS, X.basicOpen g, hV, c', ?_⟩
  letI algV : Algebra K Γ(X, X.basicOpen g) := (strV q _).toAlgebra
  haveI : Nonempty (X.basicOpen g) := hVne.to_subtype
  refine ⟨inferInstance, fun k => rfl, _root_.GlobalTheory.CompanionTheory.GeoUnit.tV_isUnit i y hy hV, algebraicIndependent_tV i y hy hV he q hiq halg hVne, ?_⟩
  let B : Finset (Fin (n + 2)) → Subalgebra K Γ(X, X.basicOpen g) := fun S =>
    { (resO (le_biInf_of_le hV S)).range with
      algebraMap_mem' := fun a => RingHom.mem_range.2 ⟨strV q _ a,
        (RingHom.congr_fun (strV_res q (le_biInf_of_le hV S)) a).symm⟩ }
  have memB : ∀ S x, x ∈ B S ↔ x ∈ Set.range (resO (le_biInf_of_le hV S)) := fun S x => RingHom.mem_range
  refine ⟨B, fun S _ => Set.ext fun x => memB S x, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro S _
    exact map_injective_of_isIntegral X (homOfLE (le_biInf_of_le hV S))
  · intro S hS
    have hS' : X.basicOpen g ≤ i ⁻¹ᵁ Proj.basicOpen (grK K N) (yS y S) :=
      (le_biInf_of_le hV S).trans (biInf_preimage i y S).le
    refine Algebra.adjoin_le ?_
    rintro _ ⟨m, hm, rfl⟩
    have h1 := _root_.GlobalTheory.CompanionTheory.GeoTpow.tpow_mem_range i y hy hV he S hS' (_root_.GlobalTheory.CompanionTheory.GeoUnit.tV_isUnit i y hy hV) m hm
    rw [← range_resO_eq i hci (yS_mem y hy S) (hpos S hS) (biInf_preimage i y S) (le_biInf_of_le hV S) hS'] at h1
    exact (memB S _).2 h1
  · intro S hS
    letI : Algebra K Γ(X, ⨅ k ∈ S, U k) := (strV q _).toAlgebra
    haveI : Algebra.FiniteType K Γ(X, ⨅ k ∈ S, U k) := _root_.GlobalTheory.CompanionTheory.GeoFT.finiteType_affine q (haff S hS)
    let φ : Γ(X, ⨅ k ∈ S, U k) →ₐ[K] Γ(X, X.basicOpen g) :=
      { resO (le_biInf_of_le hV S) with
        commutes' := fun a => (RingHom.congr_fun (strV_res q (le_biInf_of_le hV S)) a).symm }
    have hB : B S = φ.range := by
      ext x
      rw [memB, AlgHom.mem_range]
      rfl
    rw [hB, ← Algebra.map_top]
    exact Algebra.FiniteType.out.map φ
  · intro S hS b hb
    have hS' : X.basicOpen g ≤ i ⁻¹ᵁ Proj.basicOpen (grK K N) (yS y S) :=
      (le_biInf_of_le hV S).trans (biInf_preimage i y S).le
    rw [memB, range_resO_eq i hci (yS_mem y hy S) (hpos S hS) (biInf_preimage i y S) (le_biInf_of_le hV S) hS'] at hb
    obtain ⟨a, rfl⟩ := hb
    exact _root_.GlobalTheory.CompanionTheory.GeoInteg.isIntegral_torusS i y hy hV he q hiq hfin S hS' (_root_.GlobalTheory.CompanionTheory.GeoUnit.tV_isUnit i y hy hV) a
  · intro j x hx
    rw [memB] at hx ⊢
    obtain ⟨a, rfl⟩ := hx
    have hle : (⨅ k ∈ (Finset.univ : Finset (Fin (n + 2))), U k) ≤ ⨅ k ∈ Finset.univ.erase j, U k :=
      biInf_mono fun k _ => Finset.mem_univ k
    refine ⟨resO hle a, ?_⟩
    simp only [resO]
    rw [← CommRingCat.comp_apply, ← Functor.map_comp]
    rfl
  · intro r
    obtain ⟨b, hb, b', hb', hne, h⟩ := exists_frac_basicOpen hWaff g hVne r
    exact ⟨b, (memB _ _).2 hb, b', (memB _ _).2 hb', hne, h⟩

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.GeometricGenericComponents =====
