module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEquivalenceFiniteEtaleBaseChangeResidueField
public import Development.EtaleCohomology.EtaleSheaves.DerivUnit
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummand
public import Development.EtaleCohomology.EtaleSheaves.EtaleStandingHypothesesImplyRestrictionAxiom
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
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
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.RingTheory.RegularLocalRing.Defs
import Mathlib.RingTheory.SimpleRing.Principal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsEtaleNbhdPrimitiveRootOfIsUnitNatCast, Development.AutomorphicArithmetic.CommutativeAlgebra.PrimitiveRootEqPowLocally, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummandStatement, Development.AutomorphicArithmetic.CommutativeAlgebra.TwistGeneratorSmulEqZeroImp, Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.TwistedSectionsOfNegativeDegreeVanishing

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsEtaleNbhdPrimitiveRootOfIsUnitNatCast =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsEtaleNbhdPrimitiveRootOfIsUnitNatCast", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.IsEquivalenceFiniteEtaleBaseChangeResidueField\npublic import Development.EtaleCohomology.EtaleSheaves.DerivUnit\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry GlobalTheory.EtC

private theorem evalRoot {A : Type} [CommRing A] (q : ℕ) :
    Polynomial.eval (AdjoinRoot.root (Polynomial.cyclotomic q A))
      (Polynomial.cyclotomic q (AdjoinRoot (Polynomial.cyclotomic q A))) = 0 := by
  rw [← Polynomial.map_cyclotomic q (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A))),
    Polynomial.eval_map_algebraMap, AdjoinRoot.aeval_eq, AdjoinRoot.mk_self]

private theorem unitDeriv {A : Type} [CommRing A] (q : ℕ) (hq : IsUnit ((q : ℕ) : A)) :
    IsUnit (AdjoinRoot.mk (Polynomial.cyclotomic q A)
      (Polynomial.derivative (Polynomial.cyclotomic q A))) := by
  rcases subsingleton_or_nontrivial (AdjoinRoot (Polynomial.cyclotomic q A)) with h | h
  · exact isUnit_of_subsingleton _
  · have hq' : IsUnit ((q : ℕ) : AdjoinRoot (Polynomial.cyclotomic q A)) := by
      simpa using hq.map (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A)))
    have := LateralTheory.E.LeafClosedSH0PfPrim.derivUnit q _ hq' (evalRoot q)
    rwa [← Polynomial.map_cyclotomic q (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A))),
      Polynomial.derivative_map, Polynomial.eval_map_algebraMap, AdjoinRoot.aeval_eq] at this

private theorem injOf {A : Type} [CommRing A] [Nontrivial A] (q : ℕ) [NeZero q] :
    Function.Injective (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A))) := by
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro a ha
  by_contra h0
  rw [AdjoinRoot.algebraMap_eq, AdjoinRoot.of, RingHom.comp_apply, AdjoinRoot.mk_eq_zero] at ha
  refine (Polynomial.cyclotomic.monic q A).not_dvd_of_degree_lt
    (Polynomial.C_ne_zero.2 h0) ?_ ha
  rw [Polynomial.degree_cyclotomic, Polynomial.degree_C h0]
  exact_mod_cast Nat.totient_pos.2 (NeZero.pos q)

private theorem surjOf {A : Type} [CommRing A] [Nontrivial A] (q : ℕ) [NeZero q] :
    Function.Surjective
      (PrimeSpectrum.comap (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A)))) := by
  intro p
  have := (Polynomial.cyclotomic.monic q A).finite_adjoinRoot
  obtain ⟨Q, -, hQ, hQc⟩ := Ideal.exists_ideal_over_prime_of_isIntegral
    (S := AdjoinRoot (Polynomial.cyclotomic q A)) p.asIdeal ⊥ (by
      rw [Ideal.under_def, ← RingHom.ker_eq_comap_bot, (RingHom.injective_iff_ker_eq_bot _).1 (injOf q)]
      exact bot_le)
  exact ⟨⟨Q, hQ⟩, PrimeSpectrum.ext hQc⟩

private noncomputable def rootPrim {A : Type} [CommRing A] (q : ℕ) (hq : IsUnit ((q : ℕ) : A)) :
    Prim q (AdjoinRoot (Polynomial.cyclotomic q A)) :=
  ⟨AdjoinRoot.root _, by simpa using hq.map (algebraMap A (AdjoinRoot (Polynomial.cyclotomic q A))), by
    rw [Polynomial.aeval_def, ← Polynomial.eval_map, Polynomial.map_cyclotomic]
    exact evalRoot q⟩

theorem UpperTheory.exists_etale_nbhd_primitiveRoot_of_isUnit_natCast :
    ∀ (q : ℕ) [NeZero q] (X : Scheme.{0}), IsUnit ((q : ℕ) : Γ(X, ⊤)) → ∀ x : X, ∃ (V : Scheme.{0}) (f : V ⟶ X) (_ : Etale f) (y : V) (_ : Prim q Γ(V, ⊤)), f y = x := by
  intro q _ X hq x
  obtain ⟨W, hW, hxW, -⟩ := exists_isAffineOpen_mem_and_subset (x := x) (U := ⊤) trivial
  obtain ⟨p, hp⟩ : x ∈ Set.range hW.fromSpec := by rw [hW.range_fromSpec]; exact hxW
  have hnt : Nontrivial Γ(X, W) := by
    rcases subsingleton_or_nontrivial Γ(X, W) with h | h
    · exact absurd (Subsingleton.elim _ _) p.2.ne_top
    · exact h
  have hqW : IsUnit ((q : ℕ) : Γ(X, W)) := by
    simpa using hq.map (X.presheaf.map (homOfLE (le_top : W ≤ ⊤)).op).hom
  have het : Algebra.Etale Γ(X, W) (AdjoinRoot (Polynomial.cyclotomic q Γ(X, W))) :=
    GlobalTheory.etale_adjoinRoot_of_isUnit_derivative (Polynomial.cyclotomic.monic q _) (unitDeriv q hqW)
  let φ : CommRingCat.of Γ(X, W) ⟶ CommRingCat.of (AdjoinRoot (Polynomial.cyclotomic q Γ(X, W))) :=
    CommRingCat.ofHom (algebraMap _ _)
  have hφ : Etale (Spec.map φ) :=
    (HasRingHomProperty.Spec_iff (P := @Etale)).2 ((RingHom.etale_algebraMap).2 het)
  obtain ⟨y0, hy0⟩ := surjOf (A := Γ(X, W)) q p
  let y : Spec (CommRingCat.of (AdjoinRoot (Polynomial.cyclotomic q Γ(X, W)))) := y0
  have hy : Spec.map φ y = p := hy0
  refine ⟨Spec (CommRingCat.of (AdjoinRoot (Polynomial.cyclotomic q Γ(X, W)))),
    Spec.map φ ≫ hW.fromSpec, inferInstance, y,
    Prim.map (Scheme.ΓSpecIso _).inv.hom (rootPrim q hqW), ?_⟩
  rw [Scheme.Hom.comp_apply, hy, hp]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsEtaleNbhdPrimitiveRootOfIsUnitNatCast =====

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.PrimitiveRootEqPowLocally =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.PrimitiveRootEqPowLocally", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry GlobalTheory.EtC

theorem UpperTheory.primitive_root_eq_pow_locally :
    ∀ (q : ℕ) [NeZero q] (A : Type) [CommRing A] (ξ ζ : Prim q A) (p : Ideal A) [p.IsPrime], ∃ (f : A) (a : (ZMod q)ˣ), f ∉ p ∧ ∀ (B : Type) [CommRing B] (φ : A →+* B), IsUnit (φ f) → φ ξ.1 = (φ ζ.1) ^ (a : ZMod q).val := by
  intro q _ A _ ξ ζ p _
  have hpow : ∀ η : Prim q A, η.1 ^ q = 1 := by
    intro η
    obtain ⟨g, hg⟩ := Polynomial.cyclotomic.dvd_X_pow_sub_one q ℤ
    have h1 := congrArg (Polynomial.aeval η.1) hg
    simp only [map_sub, map_pow, Polynomial.aeval_X, map_one, map_mul, η.2.2, zero_mul] at h1
    exact sub_eq_zero.mp h1
  have hq' : IsUnit ((q : ℕ) : A ⧸ p) := by
    simpa using ζ.2.1.map (Ideal.Quotient.mk p)
  haveI : NeZero ((q : ℕ) : A ⧸ p) := ⟨hq'.ne_zero⟩
  have prim : ∀ η : Prim q A, IsPrimitiveRoot (Ideal.Quotient.mk p η.1) q := by
    intro η
    have h0 : Ideal.Quotient.mk p (Polynomial.aeval η.1 (Polynomial.cyclotomic q ℤ)) = 0 := by
      rw [η.2.2, map_zero]
    rw [Polynomial.aeval_def, Polynomial.hom_eval₂] at h0
    rw [← Polynomial.isRoot_cyclotomic_iff, ← Polynomial.map_cyclotomic_int, Polynomial.IsRoot,
      Polynomial.eval_map]
    have e : (Ideal.Quotient.mk p).comp (algebraMap ℤ A) = Int.castRingHom (A ⧸ p) :=
      RingHom.ext_int _ _
    rw [e] at h0
    exact h0
  obtain ⟨k, hk, hkξ⟩ := (prim ζ).eq_pow_of_pow_eq_one (prim ξ).pow_eq_one
  have hcop : k.Coprime q := ((prim ζ).pow_iff_coprime (NeZero.pos q) k).1 (hkξ ▸ prim ξ)
  have hcq : (ζ.1 ^ k) ^ q = 1 := by
    rw [← pow_mul, mul_comm, pow_mul, hpow ζ, one_pow]
  have hf : (∑ i ∈ Finset.range q, ξ.1 ^ i * (ζ.1 ^ k) ^ (q - 1 - i)) * (ξ.1 - ζ.1 ^ k) = 0 := by
    rw [geom_sum₂_mul, hpow ξ, hcq, sub_self]
  refine ⟨∑ i ∈ Finset.range q, ξ.1 ^ i * (ζ.1 ^ k) ^ (q - 1 - i), ZMod.unitOfCoprime k hcop, ?_, ?_⟩
  · intro hmem
    have hz := Ideal.Quotient.eq_zero_iff_mem.mpr hmem
    have hc : Ideal.Quotient.mk p (ζ.1 ^ k) = Ideal.Quotient.mk p ξ.1 := by
      rw [map_pow, hkξ]
    have hcu : IsUnit (Ideal.Quotient.mk p ξ.1) := by
      refine (Units.ofPowEqOne _ q ?_ (NeZero.ne q)).isUnit
      rw [← map_pow, hpow ξ, map_one]

    rw [map_sum] at hz
    have hsum : ∑ i ∈ Finset.range q, Ideal.Quotient.mk p (ξ.1 ^ i * (ζ.1 ^ k) ^ (q - 1 - i)) =
        ∑ i ∈ Finset.range q, (Ideal.Quotient.mk p ξ.1) ^ (q - 1) := by
      refine Finset.sum_congr rfl ?_
      intro i hi
      rw [map_mul, map_pow, map_pow, hc, ← pow_add]
      congr 1
      have := Finset.mem_range.mp hi
      omega
    rw [hsum, Finset.sum_const, Finset.card_range, nsmul_eq_mul] at hz
    exact (hq'.mul (hcu.pow _)).ne_zero hz
  · intro B _ φ hφ
    have h1 := congrArg φ hf
    rw [map_mul, map_zero, hφ.mul_right_eq_zero, map_sub, sub_eq_zero] at h1
    rw [h1, map_pow, ZMod.coe_unitOfCoprime, ZMod.val_natCast, Nat.mod_eq_of_lt hk]
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.PrimitiveRootEqPowLocally =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummandStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummandStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummand\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummandStatement =====

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.TwistGeneratorSmulEqZeroImp =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.TwistGeneratorSmulEqZeroImp", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TateTwistModuleFreeAndGeneratorSummandStatement\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry GlobalTheory.EtC

theorem UpperTheory.twist_generator_smul_eq_zero_imp :
    ∀ (q : ℕ) [NeZero q] (i : ℤ) (C : CommRingCat.{0}) [Nontrivial C] (ζ : Prim q C) (c : ULift.{1} (ZMod q)), c • (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q i).obj C) = 0 → c = 0 := by
  intro q _ i C _ ζ c h
  obtain ⟨f, hf⟩ := (_root_.GlobalTheory.TwFree.twist_free q i C).2 ζ
  have h' : c • (Submodule.Quotient.mk (Finsupp.single ζ 1) :
      (Prim q C →₀ ULift.{1} (ZMod q)) ⧸ twRel q i C) = 0 := h
  have h2 := congrArg f h'
  rw [map_smul, hf, map_zero] at h2
  simpa using h2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.TwistGeneratorSmulEqZeroImp =====

-- ===== clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.TwistedSectionsOfNegativeDegreeVanishing =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.TwistedSectionsOfNegativeDegreeVanishing", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleStandingHypothesesImplyRestrictionAxiom\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsEtaleNbhdPrimitiveRootOfIsUnitNatCast\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.PrimitiveRootEqPowLocally\npublic import Development.AutomorphicArithmetic.CommutativeAlgebra.TwistGeneratorSmulEqZeroImp\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace UpperTheory.Cb.LocalTwistForms

set_option backward.isDefEq.respectTransparency false in
private theorem covPt {X : Scheme.{0}} (S : Sieve X) (hS : S ∈ Scheme.etaleTopology X) (x : X) :
    ∃ (V : Scheme.{0}) (f : V ⟶ X) (_ : Etale f) (y : V), S f ∧ f y = x := by
  obtain ⟨𝒰, hle⟩ := Scheme.mem_grothendieckTopology_iff.1 hS
  obtain ⟨i, y, rfl⟩ := 𝒰.exists_eq x
  exact ⟨𝒰.X i, 𝒰.f i, inferInstance, y, hle _ _ ⟨i⟩, rfl⟩

private theorem res_res {R : Type} [CommRing R] {F : Shv R} {V' V U : Scheme.{0}} (g : V' ⟶ V) (h : V ⟶ U) (x : Sec F U) :
    Sec.res g (Sec.res h x) = Sec.res (g ≫ h) x := by
  simp [Sec.res, op_comp, Functor.map_comp]

private theorem res_smul {R : Type} [CommRing R] {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) (c : ULift.{1} R) (x : Sec F U) :
    Sec.res g (c • x) = c • Sec.res g x := map_smul _ _ _

private theorem sec_res (q : ℕ) (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (x : (twF q i).obj Γ(U, ⊤)) :
    (Sec.res g (ofRings.sec (twF q i) U x) : Sec (tw q i) V) = ofRings.sec (twF q i) V ((twF q i).map g.appTop x) :=
  (NatTrans.naturality_apply (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)) g.op x).symm

private theorem map_single (q : ℕ) (i : ℤ) {A B : CommRingCat.{0}} (φ : A ⟶ B) (ζ : Prim q A) (b : ULift.{1} (ZMod q)) :
    (twF q i).map φ (Submodule.Quotient.mk (Finsupp.single ζ b) : (twF q i).obj A) =
      (Submodule.Quotient.mk (Finsupp.single (Prim.map φ.hom ζ) b) : (twF q i).obj B) := by
  change Submodule.Quotient.mk (Finsupp.mapDomain _ _) = _
  rw [Finsupp.mapDomain_single]

private theorem twGen_res (q : ℕ) (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)) :
    Sec.res g (twGen i ζ) = twGen i (Prim.map g.appTop.hom ζ) := by
  exact (sec_res q i g _).trans (congrArg _ (map_single q i g.appTop ζ 1))

private theorem unit_res {X : Scheme.{0}} {A B C : X.Opens} (h₁ : B ≤ A) (h₂ : C ≤ A) (h₃ : C ≤ B) (f : Γ(X, A))
    (hu : IsUnit (X.presheaf.map (homOfLE h₁).op f)) : IsUnit (X.presheaf.map (homOfLE h₂).op f) := by
  have e : X.presheaf.map (homOfLE h₂).op = X.presheaf.map (homOfLE h₁).op ≫ X.presheaf.map (homOfLE h₃).op := by
    rw [← Functor.map_comp]; rfl
  rw [e, CommRingCat.comp_apply]
  exact hu.map _

private theorem sheafDetect (q : ℕ) [NeZero q] (i : ℤ) (X : Scheme.{0}) [Nonempty X] (ζ : Prim q Γ(X, ⊤))
    (c : ULift.{1} (ZMod q)) (h : c • twGen i ζ = 0) : c = 0 := by
  let e : (twF q i).obj Γ(X, ⊤) := c • (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q i).obj Γ(X, ⊤))
  have h0 : ofRings.sec (twF q i) X e = ofRings.sec (twF q i) X 0 := by
    refine Eq.trans ?_ (h.trans (map_zero _).symm)
    exact map_smul _ _ _
  have hmem := Presheaf.equalizerSieve_mem Scheme.etaleTopology
    (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)) (X := op X) e 0 h0
  obtain ⟨V, f, -, y, hf, -⟩ := covPt _ hmem (Classical.arbitrary X)
  have hf' : (twF q i).map f.appTop e = 0 := Eq.trans hf (map_zero ((twF q i).map f.appTop).hom)
  have e1 : (twF q i).map f.appTop e =
      c • (twF q i).map f.appTop (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q i).obj Γ(X, ⊤)) :=
    map_smul ((twF q i).map f.appTop).hom c _
  have : Nontrivial Γ(V, ⊤) := (V.presheaf.germ ⊤ y trivial).hom.domain_nontrivial
  rw [e1, map_single] at hf'
  exact UpperTheory.twist_generator_smul_eq_zero_imp q i Γ(V, ⊤) _ c hf'

private theorem twLocal (q : ℕ) [NeZero q] (i : ℤ) (A : CommRingCat.{0}) (ζ : Prim q A) (t : (twF q i).obj A)
    (p : Ideal A) [p.IsPrime] :
    ∃ f : A, f ∉ p ∧ ∀ (B : CommRingCat.{0}) (φ : A ⟶ B), IsUnit (φ f) → ∃ c : ULift.{1} (ZMod q),
      (twF q i).map φ t = c • (Submodule.Quotient.mk (Finsupp.single (Prim.map φ.hom ζ) 1) : (twF q i).obj B) := by
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective _ t
  induction x using Finsupp.induction_linear with
  | zero =>
    refine ⟨1, fun h => Ideal.IsPrime.ne_top ‹_› ((Ideal.eq_top_iff_one _).2 h), fun B φ _ => ⟨0, ?_⟩⟩
    rw [zero_smul]
    exact map_zero ((twF q i).map φ).hom
  | add x y hx hy =>
    obtain ⟨f, hf, H⟩ := hx
    obtain ⟨g, hg, H'⟩ := hy
    refine ⟨f * g, fun h => (Ideal.IsPrime.mem_or_mem ‹_› h).elim hf hg, fun B φ hu => ?_⟩
    rw [map_mul] at hu
    obtain ⟨c, hc⟩ := H B φ (isUnit_of_mul_isUnit_left hu)
    obtain ⟨d, hd⟩ := H' B φ (isUnit_of_mul_isUnit_right hu)
    refine ⟨c + d, ?_⟩
    rw [add_smul, ← hc, ← hd]
    exact map_add ((twF q i).map φ).hom (Submodule.Quotient.mk x : (twF q i).obj A) (Submodule.Quotient.mk y : (twF q i).obj A)
  | single ξ b =>
    obtain ⟨f, a, hf, H⟩ := UpperTheory.primitive_root_eq_pow_locally q A ξ ζ p
    refine ⟨f, hf, fun B φ hu => ⟨b * ULift.up ((a ^ i : (ZMod q)ˣ) : ZMod q), ?_⟩⟩
    rw [map_single]
    have hmem : Finsupp.single (Prim.map φ.hom ξ) 1 - Finsupp.single (Prim.map φ.hom ζ) (ULift.up ((a ^ i : (ZMod q)ˣ) : ZMod q))
        ∈ twRel q i B :=
      Submodule.subset_span ⟨Prim.map φ.hom ζ, Prim.map φ.hom ξ, a, H B φ.hom hu, rfl⟩
    have e1 : (Submodule.Quotient.mk (Finsupp.single (Prim.map φ.hom ξ) 1) : (twF q i).obj B) =
        Submodule.Quotient.mk (Finsupp.single (Prim.map φ.hom ζ) (ULift.up ((a ^ i : (ZMod q)ˣ) : ZMod q))) :=
      (Submodule.Quotient.eq _).2 hmem
    have e2 : ∀ (η : Prim q B) (r : ULift.{1} (ZMod q)), (Submodule.Quotient.mk (Finsupp.single η r) : (twF q i).obj B) =
        r • (Submodule.Quotient.mk (Finsupp.single η 1) : (twF q i).obj B) := by
      intro η r
      refine Eq.trans ?_ (Submodule.Quotient.mk_smul _ _ _)
      rw [Finsupp.smul_single, smul_eq_mul, mul_one]
    rw [e2 _ b, e1, e2 _ (ULift.up _), smul_smul]

private theorem formP (q : ℕ) [NeZero q] (i : ℤ) (X : Scheme.{0}) (hX : IsUnit ((q : ℕ) : Γ(X, ⊤)))
    (s : Sec (tw q i) X) (x : X) :
    ∃ (V : Scheme.{0}) (f : V ⟶ X) (_ : Etale f) (y : V) (ζ : Prim q Γ(V, ⊤)) (c : ULift.{1} (ZMod q)),
      f y = x ∧ Sec.res f s = c • twGen i ζ := by
  obtain ⟨V₁, f₁, h₁, y₁, ζ₁, rfl⟩ := UpperTheory.exists_etale_nbhd_primitiveRoot_of_isUnit_natCast q X hX x
  have hmem := Presheaf.imageSieve_mem Scheme.etaleTopology
    (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)) (U := op V₁) (Sec.res f₁ s)
  obtain ⟨V₂, f₂, h₂, y₂, ⟨t, ht⟩, rfl⟩ := covPt _ hmem y₁
  let ρ : Γ(V₂, ⊤) ⟶ V₂.residueField y₂ := V₂.presheaf.germ ⊤ y₂ trivial ≫ V₂.residue y₂
  have hp : (RingHom.ker ρ.hom).IsPrime := RingHom.ker_isPrime _
  obtain ⟨f, hfp, H⟩ := twLocal q i Γ(V₂, ⊤) (Prim.map f₂.appTop.hom ζ₁) t (RingHom.ker ρ.hom)
  have hy : y₂ ∈ V₂.basicOpen f := by
    rw [Scheme.mem_basicOpen_top]
    have h1 : (V₂.residue y₂).hom ((V₂.presheaf.germ ⊤ y₂ trivial).hom f) ≠ 0 := fun h => hfp (RingHom.mem_ker.2 h)
    exact (IsLocalRing.residue_ne_zero_iff_isUnit _).1 h1
  have hu : IsUnit ((V₂.basicOpen f).ι.appTop f) := by
    have h0 := V₂.toRingedSpace.isUnit_res_basicOpen f
    rw [Scheme.Opens.ι_appTop]
    exact unit_res _ _ (le_of_eq (by simp; rfl)) f h0
  obtain ⟨c, hc⟩ := H _ (V₂.basicOpen f).ι.appTop hu
  refine ⟨V₂.basicOpen f, (V₂.basicOpen f).ι ≫ f₂ ≫ f₁, inferInstance, ⟨y₂, hy⟩,
    Prim.map (V₂.basicOpen f).ι.appTop.hom (Prim.map f₂.appTop.hom ζ₁), c, by simp; rfl, ?_⟩
  rw [← res_res, ← res_res]
  have ht' : Sec.res f₂ (Sec.res f₁ s) = ofRings.sec (twF q i) V₂ t := ht.symm
  refine (congrArg (Sec.res (V₂.basicOpen f).ι) ht').trans ((sec_res q i _ t).trans
    ((congrArg (ofRings.sec (twF q i) _) hc).trans ?_))
  exact map_smul _ _ _

end UpperTheory.Cb.LocalTwistForms

open LateralTheory.E.EtaleTopologySheaves LateralTheory.E.LeafInj0WPf LateralTheory.E.LeafDegCut UpperTheory.Cb.LocalTwistForms in
theorem UpperTheory.Cb.twistedSections_of_negativeDegreeVanishing :
    LateralTheory.E.LeafDegCut.LeafNeg → LateralTheory.E.LeafInj0WPf.LeafSecTw := by
  intro _ q _ k _ hq i B W s₀ ι _ U s hs x hx
  have hX : IsUnit ((q : ℕ) : Γ(U.left, ⊤)) := by
    have h := hq.map ((Scheme.ΓSpecIso (CommRingCat.of k)).inv ≫ (U.hom ≫ s₀).appTop).hom
    simpa using h
  obtain ⟨V, f, hf, y, ζ, c, hy, hsV⟩ := formP q i U.left hX s x
  let U' : B.Etale := MorphismProperty.Over.mk ⊤ (f ≫ U.hom) (inferInstanceAs (Etale (f ≫ U.hom)))
  let a : U' ⟶ U := MorphismProperty.Over.homMk f rfl
  refine ⟨U', a, y, hy, ?_⟩
  obtain ⟨w, hw⟩ := hx
  have hne : Nonempty ↥(pullback U'.hom ι) := by
    have e : U'.hom y = ι w := by
      rw [hw, ← hy]
      rfl
    obtain ⟨z, -, -⟩ := Scheme.Pullback.exists_preimage_pullback y w e
    exact ⟨z⟩
  have hc : c = 0 := by
    have e : prB ι U' ≫ f = resBW ι a ≫ prB ι U := (pullback.lift_fst _ _ _).symm
    have h1 : Sec.res (prB ι U') (Sec.res f s) = 0 := by
      have h0 := congrArg (Sec.res (resBW ι a)) hs
      rw [res_res, ← e] at h0
      exact (res_res _ _ _).trans (h0.trans (map_zero _))
    have key : ∀ pr : pullback U'.hom ι ⟶ V, Sec.res pr (Sec.res f s) = 0 → c = 0 := fun pr h => by
      rw [hsV, res_smul, twGen_res] at h
      exact sheafDetect q i _ _ c h
    exact key (prB ι U') h1
  change Sec.res f s = 0
  rw [hsV, hc, zero_smul]
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.Foundations.EtaleClopenDescent.TwistedSectionsOfNegativeDegreeVanishing =====
