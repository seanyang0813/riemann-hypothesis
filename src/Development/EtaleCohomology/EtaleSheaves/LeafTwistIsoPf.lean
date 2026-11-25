module

public import Development.EtaleCohomology.EtaleSheaves.LocSecPfB
public import Mathlib.Algebra.Homology.HomotopyCategory.HomComplexSingle
public import Development.EtaleCohomology.EtaleSheaves.LeafTwSecPf
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Development.EtaleCohomology.TateTwists.EtaleLocallyExistsPrimitiveRootOfUnityOfInvertib
public import Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf
public import Development.EtaleCohomology.EtaleSheaves.LeafTwistPf
import Mathlib.Tactic.Linter.HaveILetI
import Aesop.Main
import Mathlib.Algebra.Category.ModuleCat.AB

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.ClassSecPf, Development.EtaleCohomology.EtaleSheaves.LeafTwInjPf, Development.EtaleCohomology.EtaleSheaves.LeafTwSurjPf, Development.EtaleCohomology.EtaleSheaves.LocSecPfC, Development.EtaleCohomology.EtaleSheaves.PullMonoPf, Development.EtaleCohomology.EtaleSheaves.LeafTwistIsoPf

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ClassSecPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ClassSecPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPfB\npublic import Mathlib.Algebra.Homology.HomotopyCategory.HomComplexSingle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 CochainComplex CochainComplex.HomComplex

namespace LateralTheory.E.ClassSecPf

section
variable {R : Type} [CommRing R] (X : Scheme.{0}) (F : Shv R) (n : ℤ)

abbrev S : ShortComplex (ModuleCat.{1} (ULift.{1} R)) :=
  (LateralTheory.E.LeafLocPf.secCx F X).sc' (n - 1) n (n + 1)

def fz (z : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) : (free R).obj (yoneda.obj X) ⟶ (res R F).X n :=
  (HomologicalComplex.singleObjXSelf (.up ℤ) 0 ((free R).obj (yoneda.obj X))).inv ≫ (z : Cochain _ _ n).v 0 n (zero_add n)

theorem fz_add (z w : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) :
    fz X F n (z + w) = fz X F n z + fz X F n w := by
  simp [fz]

theorem fz_mk (f : (free R).obj (yoneda.obj X) ⟶ (res R F).X n) (hf : f ≫ (res R F).d n (n + 1) = 0) :
    fz X F n (Cocycle.fromSingleMk f (zero_add n) (n + 1) rfl hf) = f := by
  unfold fz
  rw [Cocycle.fromSingleMk_coe]
  erw [Cochain.fromSingleMk_v f (zero_add n)]
  simp

theorem exists_mk (z : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) :
    ∃ (hf : fz X F n z ≫ (res R F).d n (n + 1) = 0),
      Cocycle.fromSingleMk (fz X F n z) (zero_add n) (n + 1) rfl hf = z := by
  obtain ⟨f, hf, rfl⟩ := Cocycle.fromSingleMk_surjective z n (zero_add n) (n + 1) rfl
  rw [fz_mk]
  exact ⟨hf, rfl⟩

variable (e : ∀ G : Shv R, ((free R).obj (yoneda.obj X) ⟶ G) ≃+ Sec G X)
  (he : ∀ {G G' : Shv R} (φ : G ⟶ G') (f : (free R).obj (yoneda.obj X) ⟶ G), e G' (f ≫ φ) = Sec.map φ (e G f))

def ee (k : ℤ) : ((free R).obj (yoneda.obj X) ⟶ (res R F).X k) ≃+ (LateralTheory.E.LeafLocPf.secCx F X).X k :=
  e ((res R F).X k)

include he in
theorem ee_comp (i j : ℤ) (f : (free R).obj (yoneda.obj X) ⟶ (res R F).X i) :
    ee X F e j (f ≫ (res R F).d i j) = ((LateralTheory.E.LeafLocPf.secCx F X).d i j).hom (ee X F e i f) :=
  he _ f

include he in
theorem mem_ker (f : (free R).obj (yoneda.obj X) ⟶ (res R F).X n) (hf : f ≫ (res R F).d n (n + 1) = 0) :
    (show (S X F n).X₂ from ee X F e n f) ∈ LinearMap.ker (S X F n).g.hom := by
  rw [LinearMap.mem_ker]
  change ((LateralTheory.E.LeafLocPf.secCx F X).d n (n + 1)).hom (ee X F e n f) = 0
  rw [← ee_comp X F e he, hf, map_zero]

def cyc (z : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) : LinearMap.ker (S X F n).g.hom :=
  ⟨ee X F e n (fz X F n z), mem_ker X F n e he _ (exists_mk X F n z).1⟩

theorem cyc_add (z w : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) :
    cyc X F n e he (z + w) = cyc X F n e he z + cyc X F n e he w := by
  apply Subtype.ext
  change ee X F e n (fz X F n (z + w)) = ee X F e n (fz X F n z) + ee X F e n (fz X F n w)
  rw [fz_add, map_add (f := _)]

def phi : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n →+ (S X F n).moduleCatLeftHomologyData.H where
  toFun z := (LinearMap.range (S X F n).moduleCatToCycles).mkQ (cyc X F n e he z)
  map_zero' := by
    have : cyc X F n e he 0 = 0 := by
      have h := cyc_add X F n e he 0 0
      rw [add_zero] at h
      exact (add_eq_left.mp h.symm)
    rw [this, (LinearMap.range (S X F n).moduleCatToCycles).mkQ.map_zero]
  map_add' z w := by
    rw [cyc_add, (LinearMap.range (S X F n).moduleCatToCycles).mkQ.map_add]

theorem phi_eq_zero_iff (z : Cocycle (LateralTheory.E.LocSecPf.pt R X) (res R F) n) :
    phi X F n e he z = 0 ↔ z ∈ coboundaries _ _ _ := by
  obtain ⟨hf, hz⟩ := exists_mk X F n z
  have key : z ∈ coboundaries (LateralTheory.E.LocSecPf.pt R X) (res R F) n ↔
      ∃ g : (free R).obj (yoneda.obj X) ⟶ (res R F).X (n - 1), g ≫ (res R F).d (n - 1) n = fz X F n z := by
    conv_lhs => rw [← hz]
    exact Cocycle.fromSingleMk_mem_coboundaries_iff (K := res R F) (fz X F n z) (zero_add n) (n + 1) rfl hf
      (n - 1) (by omega)
  rw [key]
  change (LinearMap.range (S X F n).moduleCatToCycles).mkQ (cyc X F n e he z) = 0 ↔ _
  rw [Submodule.mkQ_apply, Submodule.Quotient.mk_eq_zero, LinearMap.mem_range]
  constructor
  · rintro ⟨s, hs⟩
    refine ⟨(ee X F e (n - 1)).symm s, (ee X F e n).injective ?_⟩
    rw [ee_comp X F e he]; erw [AddEquiv.apply_symm_apply]
    exact congrArg Subtype.val hs
  · rintro ⟨g, hg⟩
    refine ⟨ee X F e (n - 1) g, Subtype.ext ?_⟩
    change ((LateralTheory.E.LeafLocPf.secCx F X).d (n - 1) n).hom (ee X F e (n - 1) g) = ee X F e n (fz X F n z)
    rw [← ee_comp X F e he, hg]

def psi : CohomologyClass (LateralTheory.E.LocSecPf.pt R X) (res R F) n →+ (S X F n).moduleCatLeftHomologyData.H :=
  CohomologyClass.descAddMonoidHom (phi X F n e he) (fun z hz => (phi_eq_zero_iff X F n e he z).2 hz)

theorem psi_bijective : Function.Bijective (psi X F n e he) := by
  constructor
  · rw [injective_iff_map_eq_zero]
    intro c hc
    obtain ⟨z, rfl⟩ := CohomologyClass.mk_surjective c
    rw [CohomologyClass.mk_eq_zero_iff, ← phi_eq_zero_iff X F n e he]
    exact hc
  · intro c
    obtain ⟨⟨s, hs⟩, rfl⟩ := Submodule.Quotient.mk_surjective _ c
    have hf : (ee X F e n).symm s ≫ (res R F).d n (n + 1) = 0 := by
      apply (ee X F e (n + 1)).injective
      rw [ee_comp X F e he, map_zero]; erw [AddEquiv.apply_symm_apply]
      exact hs
    refine ⟨CohomologyClass.mk (Cocycle.fromSingleMk _ (zero_add n) (n + 1) rfl hf), ?_⟩
    change (LinearMap.range (S X F n).moduleCatToCycles).mkQ (cyc X F n e he _) = Submodule.Quotient.mk _
    rw [Submodule.mkQ_apply]
    congr 1
    apply Subtype.ext
    change ee X F e n (fz X F n _) = s
    rw [fz_mk]
    exact (ee X F e n).apply_symm_apply s

end

theorem classSec : LateralTheory.E.LocSecPfB.ClassSec := by
  intro R _ X e he F n
  refine ⟨(AddEquiv.ofBijective _ (psi_bijective X F n e he)).trans ?_⟩
  exact ((LateralTheory.E.LeafLocPf.secCx F X).homologyIsoSc' (n - 1) n (n + 1) (by simp) (by simp) ≪≫
    (S X F n).moduleCatHomologyIso).toLinearEquiv.toAddEquiv.symm

end LateralTheory.E.ClassSecPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ClassSecPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwInjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwInjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.LeafTwSecPf

namespace LateralTheory.E.LeafTwInjPf

theorem prim_field {q : ℕ} [NeZero q] {A : Type} [CommRing A] {K : Type} [Field K] (π : A →+* K)
    (ξ : Prim q A) : IsPrimitiveRoot (π ξ.1) q := by
  have hq : (q : K) ≠ 0 := by simpa using (ξ.2.1.map π).ne_zero
  haveI : NeZero (q : K) := ⟨hq⟩
  rw [← Polynomial.isRoot_cyclotomic_iff]
  have h := Polynomial.aeval_algHom_apply π.toIntAlgHom ξ.1 (Polynomial.cyclotomic q ℤ)
  rw [ξ.2.2, map_zero] at h
  rw [Polynomial.IsRoot, ← Polynomial.map_cyclotomic q (Int.castRingHom K), Polynomial.eval_map]
  rw [Polynomial.aeval_def, algebraMap_int_eq] at h
  exact h

theorem pow_val_eq {q : ℕ} [NeZero q] {K : Type} [Field K] {μ : K} (hμ : IsPrimitiveRoot μ q) (m n : ℕ) :
    μ ^ m = μ ^ n ↔ (m : ZMod q) = n := by
  have hf : IsOfFinOrder μ := isOfFinOrder_iff_pow_eq_one.2 ⟨q, NeZero.pos q, hμ.pow_eq_one⟩
  rw [hf.pow_eq_pow_iff_modEq, ← hμ.eq_orderOf, ZMod.natCast_eq_natCast_iff]

theorem key {q : ℕ} [NeZero q] {A : Type} [CommRing A] [Nontrivial A] (i : ℤ) (ζ : Prim q A)
    (c : ULift.{1} (ZMod q))
    (h : c • (Submodule.Quotient.mk (p := twRel q i A) (Finsupp.single ζ (1 : ULift.{1} (ZMod q)))) = 0) :
    c = 0 := by
  obtain ⟨m, hm⟩ := Ideal.exists_maximal A
  letI : Field (A ⧸ m) := Ideal.Quotient.field m
  let π : A →+* A ⧸ m := Ideal.Quotient.mk m
  have hμ := prim_field π ζ
  have hex : ∀ ξ : Prim q A, ∃ u : (ZMod q)ˣ, π ξ.1 = π ζ.1 ^ (u : ZMod q).val := by
    intro ξ
    obtain ⟨j, hj, hj'⟩ := hμ.eq_pow_of_pow_eq_one (prim_field π ξ).pow_eq_one
    have cop : j.Coprime q := (hμ.pow_iff_coprime (NeZero.pos q) j).1 (hj' ▸ prim_field π ξ)
    refine ⟨ZMod.unitOfCoprime j cop, ?_⟩
    rw [ZMod.coe_unitOfCoprime, ZMod.val_natCast, Nat.mod_eq_of_lt hj, hj']
  have uniq : ∀ u w : (ZMod q)ˣ, π ζ.1 ^ (u : ZMod q).val = π ζ.1 ^ (w : ZMod q).val → u = w := by
    intro u w huw
    rw [pow_val_eq hμ, ZMod.natCast_zmod_val, ZMod.natCast_zmod_val] at huw
    exact Units.ext huw
  choose e he using hex
  have hmul : ∀ (ζ' ξ : Prim q A) (b : (ZMod q)ˣ), ξ.1 = ζ'.1 ^ (b : ZMod q).val → e ξ = e ζ' * b := by
    intro ζ' ξ b hb
    apply uniq
    rw [← he ξ, hb, map_pow, he ζ', ← pow_mul, pow_val_eq hμ]
    push_cast
    simp
  have h1 : e ζ = 1 := by
    apply uniq
    rw [← he ζ]
    conv_lhs => rw [← pow_one (π ζ.1)]
    rw [pow_val_eq hμ]
    simp
  let f := Finsupp.linearCombination (ULift.{1} (ZMod q))
    (fun ξ : Prim q A => (ULift.up (((e ξ) ^ i : (ZMod q)ˣ) : ZMod q) : ULift.{1} (ZMod q)))
  have hker : twRel q i A ≤ LinearMap.ker f := by
    refine Submodule.span_le.2 ?_
    rintro x ⟨ζ', ξ, b, hb, rfl⟩
    simp only [SetLike.mem_coe, LinearMap.mem_ker, map_sub, f, Finsupp.linearCombination_single,
      hmul ζ' ξ b hb, mul_zpow, sub_eq_zero]
    apply ULift.ext
    simp [mul_comm]
  rw [← Submodule.Quotient.mk_smul, Submodule.Quotient.mk_eq_zero] at h
  have h2 := hker h
  rw [LinearMap.mem_ker, map_smul] at h2
  have h3 : (ULift.up (1 : ZMod q) : ULift.{1} (ZMod q)) = 1 := rfl
  simpa [f, Finsupp.linearCombination_single, h1, h3] using h2

theorem aux {q : ℕ} [NeZero q] {A : Type} [CommRing A] [Nontrivial A] (i : ℤ) (ζ : Prim q A)
    (x y : ULift.{1} (ZMod q))
    (h : x • (Submodule.Quotient.mk (p := twRel q i A) (Finsupp.single ζ (1 : ULift.{1} (ZMod q)))) =
      y • (Submodule.Quotient.mk (p := twRel q i A) (Finsupp.single ζ (1 : ULift.{1} (ZMod q))))) : x = y :=
  sub_eq_zero.1 (key i ζ (x - y) (by rw [sub_smul, sub_eq_zero]; exact h))

theorem LeafTwInj_of : LeafTwInj := by
  intro q _ B _ ζ k
  refine ⟨fun {X} x y h => ?_⟩
  change ULift.{1} (ZMod q) at x y
  by_cases hX : Nonempty X.unop.left
  · haveI : Nontrivial Γ(X.unop.left, ⊤) := by
      obtain ⟨p⟩ := hX
      exact RingHom.domain_nontrivial (X.unop.left.presheaf.germ ⊤ p trivial).hom
    have h0 : x • gen ζ k X.unop = y • gen ζ k X.unop := h
    have hxy : x = y := aux (A := Γ(X.unop.left, ⊤)) k _ x y h0
    subst hxy
    rw [Presheaf.equalizerSieve_self_eq_top]
    exact GrothendieckTopology.top_mem _ _
  · haveI : IsEmpty X.unop.left := not_nonempty_iff.1 hX
    rw [GrothendieckTopology.mem_over_iff]
    refine GrothendieckTopology.superset_covering _ bot_le ?_
    first
      | exact Scheme.bot_mem_grothendieckTopology _

end LateralTheory.E.LeafTwInjPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwInjPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwSurjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwSurjPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSecPf\npublic import Development.EtaleCohomology.TateTwists.EtaleLocallyExistsPrimitiveRootOfUnityOfInvertib\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.E4 LateralTheory.E.LeafTwSecPf

namespace LateralTheory.E.LeafTwSurjPf

variable {q : ℕ} {B : Type} [CommRing B] (ζ : Prim q B) (k : ℤ)

theorem mem_add {U : Over (Spec (CommRingCat.of B))} (s t : ToType ((Pr q k _).obj (op U)))
    (hs : Presheaf.imageSieve (cmap ζ k) s ∈ Scheme.etaleTopology.over _ U)
    (ht : Presheaf.imageSieve (cmap ζ k) t ∈ Scheme.etaleTopology.over _ U) :
    Presheaf.imageSieve (cmap ζ k) (s + t) ∈ Scheme.etaleTopology.over _ U := by
  refine GrothendieckTopology.superset_covering _ ?_ (GrothendieckTopology.intersection_covering _ hs ht)
  rintro V f ⟨⟨a, ha⟩, ⟨b, hb⟩⟩
  exact ⟨a + b, by rw [map_add (f := _), ha, hb, map_add (f := _)]⟩

theorem mem_smul {U : Over (Spec (CommRingCat.of B))} (c : ULift.{1} (ZMod q)) (s : ToType ((Pr q k _).obj (op U)))
    (hs : Presheaf.imageSieve (cmap ζ k) s ∈ Scheme.etaleTopology.over _ U) :
    Presheaf.imageSieve (cmap ζ k) (c • s) ∈ Scheme.etaleTopology.over _ U := by
  refine GrothendieckTopology.superset_covering _ ?_ hs
  rintro V f ⟨a, ha⟩
  exact ⟨c • a, by rw [map_smul, ha, map_smul]⟩

theorem mem_zero {U : Over (Spec (CommRingCat.of B))} :
    Presheaf.imageSieve (cmap ζ k) (0 : ToType ((Pr q k _).obj (op U))) ∈ Scheme.etaleTopology.over _ U := by
  refine GrothendieckTopology.superset_covering _ ?_ (GrothendieckTopology.top_mem _ U)
  rintro V f -
  exact ⟨0, by rw [map_zero, map_zero]⟩

theorem rel_single {A : Type} [CommRing A] (ζ' ξ : Prim q A) (a : (ZMod q)ˣ) (h : ξ.1 = ζ'.1 ^ (a : ZMod q).val) :
    Submodule.Quotient.mk (p := twRel q k A) (Finsupp.single ξ 1) =
      (ULift.up ((a ^ k : (ZMod q)ˣ) : ZMod q)) • Submodule.Quotient.mk (p := twRel q k A) (Finsupp.single ζ' 1) := by
  have hm : Finsupp.single ξ 1 - Finsupp.single ζ' (ULift.up ((a ^ k : (ZMod q)ˣ) : ZMod q)) ∈ twRel q k A :=
    Submodule.subset_span ⟨ζ', ξ, a, h, rfl⟩
  rw [← Submodule.Quotient.mk_smul, Finsupp.smul_single, Submodule.Quotient.eq]
  convert hm using 3
  first | (ext1; simp)

theorem rel_map {A A' : Type} [CommRing A] [CommRing A'] (φ : Prim q A → Prim q A') (ζ' ξ : Prim q A)
    (a : (ZMod q)ˣ) (h : (φ ξ).1 = (φ ζ').1 ^ (a : ZMod q).val) :
    Submodule.Quotient.mk (p := twRel q k A') (Finsupp.mapDomain φ (Finsupp.single ξ 1)) =
      (ULift.up ((a ^ k : (ZMod q)ˣ) : ZMod q)) •
        Submodule.Quotient.mk (p := twRel q k A') (Finsupp.mapDomain φ (Finsupp.single ζ' 1)) := by
  rw [Finsupp.mapDomain_single, Finsupp.mapDomain_single]
  exact rel_single k _ _ a h

theorem mem_single [NeZero q] (U : Over (Spec (CommRingCat.of B))) (ξ : Prim q Γ(U.left, ⊤)) :
    Presheaf.imageSieve (cmap ζ k)
      (Submodule.Quotient.mk (p := twRel q k Γ(U.left, ⊤)) (Finsupp.single ξ 1) : ToType ((Pr q k _).obj (op U)))
      ∈ Scheme.etaleTopology.over _ U := by
  obtain ⟨S, hS, hP⟩ := LateralTheory.EtaleFoundations.PrimLocPf.part2 q U.left (Prim.map (ρ U) ζ) ξ
  rw [GrothendieckTopology.mem_over_iff]
  refine GrothendieckTopology.superset_covering _ ?_ hS
  intro W g hg
  rw [Sieve.overEquiv_iff]
  obtain ⟨a, ha⟩ := hP W g hg
  refine ⟨ULift.up ((a ^ k : (ZMod q)ˣ) : ZMod q), ?_⟩
  change LinearMap.toSpanSingleton _ _ (gen ζ k (Over.mk (g ≫ U.hom))) (ULift.up ((a ^ k : (ZMod q)ˣ) : ZMod q)) =
    ((Pr q k _).map (Over.homMk g : Over.mk (g ≫ U.hom) ⟶ U).op).hom
      (Submodule.Quotient.mk (p := twRel q k Γ(U.left, ⊤)) (Finsupp.single ξ 1))
  rw [LinearMap.toSpanSingleton_apply, ← gen_map ζ k (Over.homMk g : Over.mk (g ≫ U.hom) ⟶ U)]
  exact (rel_map k _ _ _ a ha).symm

end LateralTheory.E.LeafTwSurjPf

namespace LateralTheory.E.LeafTwSecPf

theorem LeafTwSurj_of : LeafTwSurj := by
  intro q _ B _ ζ k
  constructor
  intro U s
  obtain ⟨x, rfl⟩ := Submodule.Quotient.mk_surjective (twRel q k Γ(U.left, ⊤)) s
  induction x using Finsupp.induction_linear with
  | zero => exact LateralTheory.E.LeafTwSurjPf.mem_zero ζ k
  | add f g hf hg =>
    rw [Submodule.Quotient.mk_add]
    exact LateralTheory.E.LeafTwSurjPf.mem_add ζ k _ _ hf hg
  | single ξ c =>
    have h : Finsupp.single ξ c = c • Finsupp.single ξ (1 : ULift.{1} (ZMod q)) := by
      rw [Finsupp.smul_single, smul_eq_mul, mul_one]
    rw [h, Submodule.Quotient.mk_smul]
    exact LateralTheory.E.LeafTwSurjPf.mem_smul ζ k c _ (LateralTheory.E.LeafTwSurjPf.mem_single ζ k U ξ)

end LateralTheory.E.LeafTwSecPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwSurjPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfC =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocSecPfC", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPfB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LocSecPfC

variable (R : Type) [CommRing R] (X : Scheme.{0})

def eqv (G : Shv R) : ((free R).obj (yoneda.obj X) ⟶ G) ≃ Sec G X :=
  ((sheafificationAdjunction Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R))).homEquiv _ G).trans <|
  (((ModuleCat.adj (ULift.{1} R)).whiskerRight (C := Scheme.{0}ᵒᵖ)).homEquiv (yoneda.obj X ⋙ uliftFunctor.{1}) G.obj).trans
  (uliftYonedaEquiv.{1} (X := X) (F := G.obj ⋙ forget _))

theorem eqv_apply (G : Shv R) (f : (free R).obj (yoneda.obj X) ⟶ G) :
    eqv R X G f = (f.hom.app (op X)).hom (freeGen R _ X (𝟙 X)) := by
  rfl

def eqvAdd (G : Shv R) : ((free R).obj (yoneda.obj X) ⟶ G) ≃+ Sec G X :=
  { eqv R X G with
    map_add' := fun f g => by
      change eqv R X G (f + g) = eqv R X G f + eqv R X G g
      rw [eqv_apply, eqv_apply, eqv_apply]
      rfl }

theorem homSec : LateralTheory.E.LocSecPfB.HomSec := by
  intro R _ X
  refine ⟨eqvAdd R X, fun φ f => ?_⟩
  change eqv R X _ (f ≫ φ) = Sec.map φ (eqv R X _ f)
  rw [eqv_apply, eqv_apply]
  rfl

theorem LocSec_of (h2 : LateralTheory.E.LocSecPfB.ClassSec) : LateralTheory.E.LeafLocPf.LocSec :=
  LateralTheory.E.LocSecPfB.LocSec_of homSec h2

end LateralTheory.E.LocSecPfC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocSecPfC =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PullMonoPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PullMonoPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf\nimport Aesop.Main\nimport Mathlib.Algebra.Category.ModuleCat.AB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.E.PullMonoPf

universe u
variable {X : Scheme.{0}} (V : Scheme.{0})

abbrev KK := CostructuredArrow (Over.forget X).op (op V)

def pt (c : KK (X := X) V) : ULift.{1} (V ⟶ X) := ⟨c.hom.unop ≫ c.left.unop.hom⟩

lemma pt_eq {c c' : KK (X := X) V} (g : c ⟶ c') : pt V c = pt V c' := by
  have h2 : (c.hom.unop : V ⟶ c.left.unop.left) = (c'.hom.unop : V ⟶ c'.left.unop.left) ≫ g.left.unop.left :=
    (congrArg Quiver.Hom.unop (CostructuredArrow.w g)).symm
  have h3 := congrArg (fun k => (c'.hom.unop : V ⟶ c'.left.unop.left) ≫ k) (Over.w g.left.unop)
  simp only at h3
  unfold pt; congr 1
  exact (congrArg (· ≫ c.left.unop.hom) h2).trans ((Category.assoc _ _ _).trans h3)

def P : KK (X := X) V ⥤ Discrete (ULift.{1} (V ⟶ X)) where
  obj c := ⟨pt V c⟩
  map g := Discrete.eqToHom (pt_eq V g)

def Iota : Discrete (ULift.{1} (V ⟶ X)) ⥤ KK (X := X) V :=
  Discrete.functor fun x => CostructuredArrow.mk (Y := op (Over.mk x.down)) (𝟙 (op V))

lemma sub (c : KK (X := X) V) (x) : Subsingleton (c ⟶ (Iota V).obj x) := by
  constructor
  intro a b
  apply CostructuredArrow.hom_ext
  apply Quiver.Hom.unop_inj
  apply Over.OverMorphism.ext
  have ha := congrArg Quiver.Hom.unop (CostructuredArrow.w a)
  have hb := congrArg Quiver.Hom.unop (CostructuredArrow.w b)
  exact ((Category.id_comp _).symm.trans ha).trans ((Category.id_comp _).symm.trans hb).symm

lemma pt_iota (x : Discrete (ULift.{1} (V ⟶ X))) : pt V ((Iota V).obj x) = x.as := by
  obtain ⟨⟨x⟩⟩ := x
  apply ULift.ext
  exact Category.id_comp x

def uH (c : KK (X := X) V) : c ⟶ (Iota V).obj ⟨pt V c⟩ :=
  CostructuredArrow.homMk
    (Over.homMk (U := Over.mk (pt V c).down) (V := c.left.unop) (c.hom.unop : V ⟶ c.left.unop.left) rfl).op
    (by apply Quiver.Hom.unop_inj; exact Category.id_comp _)

def adj : P V ⊣ Iota (X := X) V := Adjunction.mkOfHomEquiv
  { homEquiv := fun c x =>
      { toFun := fun e => uH V c ≫ (Iota V).map e
        invFun := fun g => Discrete.eqToHom ((pt_eq V g).trans (pt_iota V x))
        left_inv := fun _ => Subsingleton.elim _ _
        right_inv := fun _ => (sub V c x).elim _ _ }
    homEquiv_naturality_left_symm := fun _ _ => Subsingleton.elim _ _
    homEquiv_naturality_right := fun {c} {_} {x'} _ _ => (sub V c x').elim _ _ }

instance : (Iota (X := X) V).Final := Functor.final_of_adjunction (adj V)

lemma colimMono {S : Type 1} [Ring S] {F F' : KK (X := X) V ⥤ ModuleCat.{1} S} [HasColimit F] [HasColimit F']
    (φ : F ⟶ F') [Mono φ] : Mono (colimMap φ) := by
  have h : colimit.pre F (Iota V) ≫ colimMap φ = colimMap (Functor.whiskerLeft (Iota V) φ) ≫ colimit.pre F' (Iota V) := by
    apply colimit.hom_ext; intro j; simp
  have hm : Mono (colimMap (Functor.whiskerLeft (Iota V) φ)) := by
    have : Mono (Functor.whiskerLeft (Iota V) φ) := by
      rw [NatTrans.mono_iff_mono_app]; intro k; dsimp; infer_instance
    haveI : PreservesFiniteLimits (colim : (Discrete (ULift.{1} (V ⟶ X)) ⥤ ModuleCat.{1} S) ⥤ _) := inferInstance
    haveI : (colim : (Discrete (ULift.{1} (V ⟶ X)) ⥤ ModuleCat.{1} S) ⥤ _).PreservesMonomorphisms :=
      inferInstance
    exact (colim : (Discrete (ULift.{1} (V ⟶ X)) ⥤ ModuleCat.{1} S) ⥤ _).map_mono (Functor.whiskerLeft (Iota V) φ)
  have : colimMap φ = inv (colimit.pre F (Iota V)) ≫ colimMap (Functor.whiskerLeft (Iota V) φ) ≫ colimit.pre F' (Iota V) := by
    rw [← h, IsIso.inv_hom_id_assoc]
  rw [this]; infer_instance

lemma lanMono (R : Type) [CommRing R] (X : Scheme.{0}) :
    ((Over.forget X).op.lan : ((Over X)ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R)) ⥤ _).PreservesMonomorphisms where
  preserves {F F'} f _ := by
    rw [NatTrans.mono_iff_mono_app]; intro V
    have key : ((Over.forget X).op.lan.map f).app V ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F' V).hom =
        ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).hom ≫
          colimMap (Functor.whiskerLeft (CostructuredArrow.proj (Over.forget X).op V) f) := by
      refine (Iso.inv_comp_eq _).mp ?_
      apply colimit.hom_ext; intro j
      erw [Functor.ι_leftKanExtensionObjIsoColimit_inv_assoc, ι_colimMap]
      have hn := ((Over.forget X).op.lan.map f).naturality j.hom
      have hu := congrArg (fun t => t.app j.left) ((Over.forget X).op.lanUnit.naturality f)
      dsimp [Functor.lanUnit] at hu hn
      have hu' : ((Over.forget X).op.leftKanExtensionUnit F).app j.left ≫
          ((Over.forget X).op.lan.map f).app ((Over.forget X).op.obj j.left) =
          f.app j.left ≫ ((Over.forget X).op.leftKanExtensionUnit F').app j.left := hu.symm
      erw [reassoc_of% hn]
      exact ((Category.assoc _ _ _).symm.trans (congrArg (· ≫ _) hu')).trans ((Category.assoc _ _ _).trans
        (congrArg (f.app j.left ≫ ·) (Functor.ι_leftKanExtensionObjIsoColimit_hom (Over.forget X).op F' V j)))
    have hm : Mono (colimMap (Functor.whiskerLeft (CostructuredArrow.proj (Over.forget X).op V) f)) := by
      have : Mono (Functor.whiskerLeft (CostructuredArrow.proj (Over.forget X).op V) f) := by
        rw [NatTrans.mono_iff_mono_app]; intro k; dsimp; infer_instance
      exact colimMono (X := X) V.unop _
    have : Mono (((Over.forget X).op.lan.map f).app V ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F' V).hom) := by
      rw [key]
      constructor; intro Z a b h
      have h2 : a ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).hom =
          b ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).hom :=
        hm.right_cancellation _ _ ((Category.assoc _ _ _).trans (h.trans (Category.assoc _ _ _).symm))
      have h3 := congrArg (· ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).inv) h2
      have hc : ∀ c : Z ⟶ _, (c ≫ ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).hom) ≫
          ((Over.forget X).op.leftKanExtensionObjIsoColimit F V).inv = c := fun c =>
        (Category.assoc _ _ _).trans ((congrArg (c ≫ ·) (Iso.hom_inv_id _)).trans (Category.comp_id c))
      exact (hc a).symm.trans (h3.trans (hc b))
    exact mono_of_mono _ ((Over.forget X).op.leftKanExtensionObjIsoColimit F' V).hom

theorem PullMono_of : LateralTheory.E.LocSlicePf.PullMono := by
  intro R _ X
  haveI := lanMono R X
  have h1 : (sheafToPresheaf (Scheme.etaleTopology.{0}.over X) (ModuleCat.{1} (ULift.{1} R))).PreservesMonomorphisms :=
    inferInstance
  have h3 : (presheafToSheaf Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R))).PreservesMonomorphisms :=
    inferInstance
  have h4 : (sheafToPresheaf (Scheme.etaleTopology.{0}.over X) (ModuleCat.{1} (ULift.{1} R)) ⋙
      (Over.forget X).op.lan ⋙ presheafToSheaf Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R))).PreservesMonomorphisms :=
    inferInstance
  exact Functor.PreservesMonomorphisms.of_iso (F := sheafToPresheaf (Scheme.etaleTopology.{0}.over X) (ModuleCat.{1} (ULift.{1} R)) ⋙
      (Over.forget X).op.lan ⋙ presheafToSheaf Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R)))
    (Functor.sheafPullbackConstruction.sheafPullbackIso (Over.forget X) (ModuleCat.{1} (ULift.{1} R))
      (Scheme.etaleTopology.{0}.over X) Scheme.etaleTopology.{0}).symm

end LateralTheory.E.PullMonoPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PullMonoPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwistIsoPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LeafTwistIsoPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwistPf\npublic import Development.EtaleCohomology.EtaleSheaves.ClassSecPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwInjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafTwSurjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LocSecPfC\npublic import Development.EtaleCohomology.EtaleSheaves.PullMonoPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.EtaleSheaves.LocalSlices.LocSliceOf\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.LeafTwistIsoPf

theorem leafLoc : LateralTheory.E.LeafTwistPf.LeafLoc :=
  LateralTheory.E.LeafLocPf.LeafLoc_of' (LateralTheory.E.LocSecPfC.LocSec_of _root_.LateralTheory.E.ClassSecPf.classSec)
    (LateralTheory.E.LocSlicePf.LocSlice_of' LateralTheory.E.PullMonoPf.PullMono_of)

theorem leafTwSec : LateralTheory.E.LeafTwistPf.LeafTwSec :=
  LateralTheory.E.LeafTwSecPf.LeafTwSec_of' LateralTheory.E.LeafTwInjPf.LeafTwInj_of LateralTheory.E.LeafTwSecPf.LeafTwSurj_of

end LateralTheory.E.LeafTwistIsoPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LeafTwistIsoPf =====
