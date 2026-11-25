module

public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.RingTheory.SimpleRing.Principal
public import Formalism.LocalToGlobal.ProjectiveLattices.GenSectB
public import Mathlib.RingTheory.Unramified.Field

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.ProjectiveLattices.GenSectC, Formalism.LocalToGlobal.ProjectiveLattices.GenSect, Formalism.LocalToGlobal.ProjectiveLattices.GenSectT

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSectC =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.GenSectC", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectA\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.GenSect

open MvPolynomial
open scoped TensorProduct

variable {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D m : ℕ}

theorem psi_kt (x : Fin m → Ω) (j₀ : Fin m) (q : KT K D m) :
    psi x j₀ (ktToΩ K Ω D m q) = aeval (gs x j₀) q := by
  show aeval (gs x j₀) (MvPolynomial.map (algebraMap K Ω) q) = aeval (gs x j₀) q
  rw [MvPolynomial.aeval_map_algebraMap]

theorem algKTR_apply (q : KT K D m) :
    algebraMap (KTf K D m) (RS K Ω D m) (algebraMap (KT K D m) (KTf K D m) q) =
      algebraMap (ΩT Ω D m) (RS K Ω D m) (ktToΩ K Ω D m q) := by
  exact IsLocalization.map_eq _ _

def Phi (x : Fin m → Ω) (j₀ : Fin m) (hinj : ∀ q : KT K D m, q ≠ 0 → aeval (gs x j₀) q ≠ 0) :
    RS K Ω D m →+* FractionRing (CT Ω D j₀) :=
  IsLocalization.lift (M := KTS K Ω D m)
    (g := (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))).comp (psi x j₀).toRingHom) (by
      rintro ⟨s, hs⟩
      obtain ⟨q, hq, rfl⟩ := hs
      refine isUnit_iff_ne_zero.mpr ?_
      show algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ (ktToΩ K Ω D m q)) ≠ 0
      rw [psi_kt]
      exact fun h => hinj q (nonZeroDivisors.ne_zero hq)
        ((IsFractionRing.injective (CT Ω D j₀) (FractionRing (CT Ω D j₀))) (h.trans (map_zero _).symm)))

theorem Phi_algebraMap (x : Fin m → Ω) (j₀ : Fin m) (hinj : ∀ q : KT K D m, q ≠ 0 → aeval (gs x j₀) q ≠ 0)
    (a : ΩT Ω D m) :
    Phi x j₀ hinj (algebraMap (ΩT Ω D m) (RS K Ω D m) a) =
      algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ a) :=
  IsLocalization.lift_eq _ _

theorem Phi_mk'_spec (x : Fin m → Ω) (j₀ : Fin m)
    (hinj : ∀ q : KT K D m, q ≠ 0 → aeval (gs x j₀) q ≠ 0) (a : ΩT Ω D m) (y : KTS K Ω D m)
    (v : FractionRing (CT Ω D j₀)) :
    Phi x j₀ hinj (IsLocalization.mk' (RS K Ω D m) a y) = v ↔
      algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ a) =
        algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ y) * v :=
  IsLocalization.lift_mk'_spec _ _ _ _

end Formalism.L2.Pj.GenSect
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSectC =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSect =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.GenSect", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectA\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.Henselian\npublic import Mathlib.RingTheory.RegularLocalRing.Defs\npublic import Mathlib.RingTheory.SimpleRing.Principal\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectB\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectC\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.RingTheory.Unramified.Basic\npublic import Mathlib.RingTheory.Unramified.Field\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.GenSect

open MvPolynomial
open scoped TensorProduct

variable {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D m : ℕ}

theorem s1 [CharZero K] (hfg : (⊤ : IntermediateField K Ω).FG) (htr : Algebra.trdeg K Ω = D)
    (x : Fin m → Ω) (j₀ : Fin m) (hx₀ : x j₀ ≠ 0)
    (hbig : Algebra.trdeg K (IntermediateField.adjoin K (Set.range fun j => x j / x j₀)) = D) :
    (IsField (RS K Ω D m ⧸ Is (K := K) x) ∧
      FiniteDimensional (KTf K D m) (RS K Ω D m ⧸ Is (K := K) x)) ∧
      ∀ (K' : Type) [Field K'] [Algebra (KTf K D m) K'],
        FiniteDimensional K' (K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) x)) ∧
          IsReduced (K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) x)) := by
  have hquotient :
      ∃ (E : Type) (_ : Field E) (_ : Algebra (KTf K D m) E), FiniteDimensional (KTf K D m) E ∧
        Nonempty ((RS K Ω D m ⧸ Is (K := K) x) ≃ₐ[KTf K D m] E) := by
    classical
    have halg := halg_of x j₀ htr hbig
    have hind := gs_indep x j₀ hx₀ htr halg
    have hal := gs_alg x j₀ hx₀ htr halg
    have hI : Function.Injective (aeval (gs x j₀) : KT K D m →ₐ[K] CT Ω D j₀) := hind
    have hinj : ∀ q : KT K D m, q ≠ 0 → aeval (gs x j₀) q ≠ 0 := fun q hq h =>
      hq (hI (h.trans (map_zero _).symm))
    let χ : KT K D m →+* FractionRing (CT Ω D j₀) :=
      (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))).comp
        (aeval (gs x j₀) : KT K D m →ₐ[K] CT Ω D j₀).toRingHom
    have hχ : Function.Injective χ :=
      (IsFractionRing.injective (CT Ω D j₀) (FractionRing (CT Ω D j₀))).comp hI
    let baseAlgebra : Algebra (KT K D m) (FractionRing (CT Ω D j₀)) := χ.toAlgebra
    let baseModule : Module (KT K D m) (FractionRing (CT Ω D j₀)) :=
      @Algebra.toModule _ _ _ _ baseAlgebra
    let baseSMul : SMul (KT K D m) (FractionRing (CT Ω D j₀)) := baseAlgebra.toSMul
    let fractionAlgebra : Algebra (KTf K D m) (FractionRing (CT Ω D j₀)) :=
      (IsFractionRing.lift hχ).toAlgebra
    have tower : IsScalarTower (KT K D m) (KTf K D m) (FractionRing (CT Ω D j₀)) :=
      IsScalarTower.of_algebraMap_eq (S := KTf K D m) (A := FractionRing (CT Ω D j₀))
        fun q => (IsFractionRing.lift_algebraMap (K := KTf K D m) hχ q).symm
    have key : ∀ r : KTf K D m, Phi x j₀ hinj (algebraMap (KTf K D m) (RS K Ω D m) r) =
        IsFractionRing.lift hχ r := by
      have h : (Phi x j₀ hinj).comp (algebraMap (KTf K D m) (RS K Ω D m)) = IsFractionRing.lift hχ := by
        refine IsLocalization.ringHom_ext (nonZeroDivisors (KT K D m)) (RingHom.ext fun q => ?_)
        simp only [RingHom.comp_apply]
        rw [algKTR_apply, Phi_algebraMap, psi_kt, IsFractionRing.lift_algebraMap]
        rfl
      exact fun r => RingHom.congr_fun h r
    let ΦK : RS K Ω D m →ₐ[KTf K D m] FractionRing (CT Ω D j₀) :=
      { Phi x j₀ hinj with commutes' := key }
    have hint : ∀ c : CT Ω D j₀,
        IsIntegral (KTf K D m) (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) c) := by
      intro c
      have := hal
      obtain ⟨p, hp0, hp⟩ := Algebra.IsAlgebraic.isAlgebraic (R := Algebra.adjoin K (Set.range (gs (D := D) x j₀))) c
      let e := hind.aevalEquiv
      have hKT : IsAlgebraic (KT K D m) (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) c) := by
        refine ⟨p.map (e.symm : Algebra.adjoin K (Set.range (gs (D := D) x j₀)) →+* KT K D m), ?_, ?_⟩
        · exact (Polynomial.map_ne_zero_iff e.symm.injective).2 hp0
        · rw [Polynomial.aeval_def, Polynomial.eval₂_map]
          have hcomp : (algebraMap (KT K D m) (FractionRing (CT Ω D j₀))).comp
                (e.symm : Algebra.adjoin K (Set.range (gs (D := D) x j₀)) →+* KT K D m) =
              (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))).comp
                (algebraMap (Algebra.adjoin K (Set.range (gs (D := D) x j₀))) (CT Ω D j₀)) := by
            refine RingHom.ext fun a => ?_
            simp only [RingHom.comp_apply]
            show algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (aeval (gs x j₀) (e.symm a)) = _
            rw [← hind.algebraMap_aevalEquiv, AlgEquiv.apply_symm_apply]
          rw [hcomp, ← Polynomial.hom_eval₂, ← Polynomial.aeval_def, hp, map_zero]
      exact (hKT.extendScalars (IsFractionRing.injective (KT K D m) (KTf K D m))).isIntegral
    obtain ⟨t, ht⟩ := hfg
    let G : Set (FractionRing (CT Ω D j₀)) :=
      Set.range (fun v => algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (X v)) ∪
        (fun ω => algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (MvPolynomial.C ω)) '' (t : Set Ω)
    have : Finite G := ((Set.finite_range _).union (t.finite_toSet.image _)).to_subtype
    let E' := IntermediateField.adjoin (KTf K D m) G
    have : FiniteDimensional (KTf K D m) E' := IntermediateField.finiteDimensional_adjoin (by
      rintro _ (⟨v, rfl⟩ | ⟨ω, _, rfl⟩) <;> exact hint _)
    have hK : ∀ k : K, algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))
        (MvPolynomial.C (algebraMap K Ω k)) ∈ E' := by
      intro k
      have e1 : algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (MvPolynomial.C (algebraMap K Ω k)) =
          algebraMap (KTf K D m) (FractionRing (CT Ω D j₀))
            (algebraMap (KT K D m) (KTf K D m) (MvPolynomial.C k)) := by
        rw [← IsScalarTower.algebraMap_apply]
        show _ = algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (aeval (gs x j₀) (MvPolynomial.C k))
        rw [MvPolynomial.aeval_C, MvPolynomial.algebraMap_apply]
      rw [e1]
      exact E'.algebraMap_mem _
    have hΩ : ∀ ω : Ω, algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (MvPolynomial.C ω) ∈ E' := by
      let θ : Ω →+* FractionRing (CT Ω D j₀) :=
        (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))).comp MvPolynomial.C
      let Si : IntermediateField K Ω := Subfield.toIntermediateField (E'.toSubfield.comap θ) (fun k => hK k)
      have hle : IntermediateField.adjoin K (t : Set Ω) ≤ Si := by
        rw [IntermediateField.adjoin_le_iff]
        intro ω hω
        exact IntermediateField.subset_adjoin (KTf K D m) G (Or.inr ⟨ω, hω, rfl⟩)
      intro ω
      have hω : ω ∈ IntermediateField.adjoin K (t : Set Ω) := by
        rw [ht]
        exact IntermediateField.mem_top
      exact hle hω
    have hmemC : ∀ c : CT Ω D j₀, algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) c ∈ E' := by
      intro c
      apply MvPolynomial.induction_on c
      · intro ω
        exact hΩ ω
      · intro p q hp hq
        rw [map_add (f := _)]
        exact add_mem hp hq
      · intro p v hp
        rw [map_mul]
        exact mul_mem hp (IntermediateField.subset_adjoin (KTf K D m) G (Or.inl ⟨v, rfl⟩))
    have hrange : ∀ r : RS K Ω D m, Phi x j₀ hinj r ∈ E' := by
      intro r
      obtain ⟨⟨a, y⟩, rfl⟩ := IsLocalization.mk'_surjective (KTS K Ω D m) r
      dsimp only
      rw [IsLocalization.mk'_eq_mul_mk'_one, map_mul, Phi_algebraMap]
      refine mul_mem (hmemC _) ?_
      have hy : algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ y) ≠ 0 := by
        obtain ⟨q, hq, hqy⟩ := y.2
        rw [← hqy, psi_kt]
        intro h
        exact hinj q (nonZeroDivisors.ne_zero hq)
          ((IsFractionRing.injective (CT Ω D j₀) (FractionRing (CT Ω D j₀))) (h.trans (map_zero _).symm))
      have h1 : Phi x j₀ hinj (IsLocalization.mk' (RS K Ω D m) (1 : ΩT Ω D m) y) =
          (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀)) (psi x j₀ y))⁻¹ := by
        rw [Phi_mk'_spec, map_one, map_one, mul_inv_cancel₀ hy]
      rw [h1]
      exact inv_mem (hmemC _)
    let S := ΦK.range
    let L : S →ₗ[KTf K D m] E' :=
      { toFun := fun s => ⟨s.1, by
          obtain ⟨r, hr⟩ := (AlgHom.mem_range ΦK).1 s.2
          rw [← hr]
          exact hrange r⟩
        map_add' := fun _ _ => rfl
        map_smul' := fun _ _ => rfl }
    have : FiniteDimensional (KTf K D m) S :=
      FiniteDimensional.of_injective L (by
        intro a b h
        have h' := congrArg (fun e : E' => (e : FractionRing (CT Ω D j₀))) h
        exact Subtype.ext h')
    have hSf : IsField S := IsField.of_isDomain_of_finite (KTf K D m) S
    let E := S.toIntermediateField' hSf
    let g : RS K Ω D m →ₐ[KTf K D m] E :=
      { toFun := fun r => ⟨ΦK r, ΦK.mem_range_self r⟩
        map_one' := Subtype.ext (map_one ΦK)
        map_mul' := fun a b => Subtype.ext (map_mul ΦK a b)
        map_zero' := Subtype.ext (map_zero ΦK)
        map_add' := fun a b => Subtype.ext (map_add ΦK a b)
        commutes' := fun r => Subtype.ext (ΦK.commutes r) }
    have hg : Function.Surjective g := by
      rintro ⟨v, hv⟩
      obtain ⟨r, rfl⟩ := (AlgHom.mem_range ΦK).1 (show v ∈ S from hv)
      exact ⟨r, rfl⟩
    have hkerPhi :
        Is (K := K) x = RingHom.ker (Phi x j₀ hinj) := by
      apply le_antisymm
      · rw [Is, Ideal.span_le]
        rintro _ ⟨i, rfl⟩
        simp only [SetLike.mem_coe, RingHom.mem_ker, Phi_algebraMap, psi_sec x j₀ hx₀ i, map_zero]
      · intro r hr
        rw [RingHom.mem_ker] at hr
        obtain ⟨⟨a, y⟩, rfl⟩ := IsLocalization.mk'_surjective (KTS K Ω D m) r
        dsimp only at hr ⊢
        rw [Phi_mk'_spec, mul_zero, ← map_zero (algebraMap (CT Ω D j₀) (FractionRing (CT Ω D j₀))),
          (IsFractionRing.injective (CT Ω D j₀) (FractionRing (CT Ω D j₀))).eq_iff,
          psi_eq_zero_iff x j₀ hx₀] at hr
        rw [IsLocalization.mk'_eq_mul_mk'_one]
        apply Ideal.mul_mem_right
        have hle : Ideal.map (algebraMap (ΩT Ω D m) (RS K Ω D m)) (Ideal.span (Set.range (sec x))) ≤
            Is (K := K) x := by
          rw [Ideal.map_span, Is]
          apply Ideal.span_mono
          rintro _ ⟨_, ⟨i, rfl⟩, rfl⟩
          exact ⟨i, rfl⟩
        exact hle (Ideal.mem_map_of_mem _ hr)
    have hker : RingHom.ker g = Is (K := K) x := by
      rw [hkerPhi]
      ext r
      simp only [RingHom.mem_ker]
      constructor
      · intro h
        exact congrArg Subtype.val h
      · intro h
        exact Subtype.ext h
    refine ⟨E, inferInstance, inferInstance, ?_, ⟨(Ideal.quotientEquivAlgOfEq (KTf K D m) hker.symm).trans
      (Ideal.quotientKerAlgEquivOfSurjective hg)⟩⟩
    exact FiniteDimensional.of_injective
      ({ toFun := fun e => (⟨e.1, e.2⟩ : S), map_add' := fun _ _ => rfl, map_smul' := fun _ _ => rfl } :
        E →ₗ[KTf K D m] S)
      (by
        intro a b h
        have h' := congrArg (fun e : S => (e : FractionRing (CT Ω D j₀))) h
        exact Subtype.ext h')
  obtain ⟨E, hE, hA, hfin, ⟨e⟩⟩ := hquotient
  have hKf : IsField (RS K Ω D m ⧸ Is (K := K) x) :=
    MulEquiv.isField (Field.toIsField E) e.toMulEquiv
  have hfd : FiniteDimensional (KTf K D m) (RS K Ω D m ⧸ Is (K := K) x) :=
    LinearEquiv.finiteDimensional e.symm.toLinearEquiv
  refine ⟨⟨hKf, hfd⟩, fun K' _ _ => ⟨inferInstance, ?_⟩⟩
  have e' : (K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) x)) ≃ₐ[K'] (K' ⊗[KTf K D m] E) :=
    Algebra.TensorProduct.congr AlgEquiv.refl e
  have : CharZero (KTf K D m) :=
    charZero_of_injective_algebraMap (algebraMap K (KTf K D m)).injective
  have : Algebra.IsSeparable (KTf K D m) E := inferInstance
  have : Algebra.FormallyUnramified (KTf K D m) E :=
    Algebra.FormallyUnramified.of_isSeparable _ _
  have : Algebra.FormallyUnramified K' (K' ⊗[KTf K D m] E) := inferInstance
  have : Algebra.EssFiniteType K' (K' ⊗[KTf K D m] E) := inferInstance
  have : IsReduced (K' ⊗[KTf K D m] E) := Algebra.FormallyUnramified.isReduced_of_field K' _
  exact isReduced_of_injective e'.toRingHom e'.injective

end Formalism.L2.Pj.GenSect
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSect =====

-- ===== clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSectT =====
-- clump-header: {"m": "Formalism.LocalToGlobal.ProjectiveLattices.GenSectT", "h": "module\n\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSectA\npublic import Mathlib.FieldTheory.IntermediateField.Adjoin.Defs\npublic import Mathlib.LinearAlgebra.FiniteDimensional.Defs\npublic import Mathlib.RingTheory.AlgebraicIndependent.Basic\npublic import Mathlib.RingTheory.Localization.Away.Basic\npublic import Mathlib.RingTheory.TensorProduct.Basic\npublic import Formalism.LocalToGlobal.ProjectiveLattices.GenSect\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.Pj.GenSect

open MvPolynomial
open scoped TensorProduct

variable (K Ω Kl K' : Type) [Field K] [Field Ω] [Algebra K Ω] [Field Kl] [Field K'] [Algebra K Kl]
  [Algebra Kl K'] [Algebra K K'] [IsScalarTower K Kl K']

abbrev TZ : Type := K' ⊗[Kl] (Kl ⊗[K] Ω)

variable {K Ω Kl K'} {D m : ℕ}


variable (K Kl) in
def tsec (t : Fin (D + 1) × Fin m → K') (v : Fin m → Ω) (i : Fin (D + 1)) : TZ K Ω Kl K' :=
  ∑ k, t (i, k) ⊗ₜ[Kl] ((1 : Kl) ⊗ₜ[K] v k)


variable (K Kl) in
def tJ (t : Fin (D + 1) × Fin m → K') (v : Fin m → Ω) : Ideal (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) :=
  Ideal.span (Set.range fun i : Fin D =>
    algebraMap (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v i.succ) *
      IsLocalization.Away.invSelf (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0))





theorem s1T [CharZero K] (hfg : (⊤ : IntermediateField K Ω).FG) (htr : Algebra.trdeg K Ω = D)
    (v : Fin m → Ω) (k₀ : Fin m) (hv₀ : v k₀ ≠ 0)
    (hbig : Algebra.trdeg K (IntermediateField.adjoin K (Set.range fun k => v k / v k₀)) = D)
    (t : Fin (D + 1) × Fin m → K') (ht : AlgebraicIndependent K t) :
    FiniteDimensional K' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) ∧
      IsReduced (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) := by
  classical

  have hφ : Function.Injective (MvPolynomial.aeval t : KT K D m →ₐ[K] K').toRingHom := ht
  letI : Algebra (KTf K D m) K' := (IsFractionRing.lift (A := KT K D m) (K := KTf K D m) hφ).toAlgebra
  obtain ⟨-, hB⟩ := s1 (K := K) hfg htr v k₀ hv₀ hbig
  obtain ⟨hBfin, hBred⟩ := hB K'
  let ι : TZ K Ω Kl K' →+* (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) :=
    algebraMap (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)
  have hιK : ∀ z : K', ι (algebraMap K' (TZ K Ω Kl K') z) =
      algebraMap K' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) z := fun z =>
    (IsScalarTower.algebraMap_apply K' (TZ K Ω Kl K') _ z).symm

  let fΩ : Ω →+* TZ K Ω Kl K' :=
    (Algebra.TensorProduct.includeRight (R := Kl) (A := K')).toRingHom.comp
      (Algebra.TensorProduct.includeRight (R := K) (A := Kl)).toRingHom
  let e0 : ΩT Ω D m →+* TZ K Ω Kl K' :=
    MvPolynomial.eval₂Hom fΩ (fun p => t p ⊗ₜ[Kl] (1 : Kl ⊗[K] Ω))
  have hKΩ : ∀ a : K, fΩ (algebraMap K Ω a) = algebraMap K' (TZ K Ω Kl K') (algebraMap K K' a) := by
    intro a
    show (1 : K') ⊗ₜ[Kl] ((1 : Kl) ⊗ₜ[K] algebraMap K Ω a) = _
    rw [← Algebra.TensorProduct.algebraMap_apply', Algebra.TensorProduct.algebraMap_apply]
    have h1 : (algebraMap K Kl a ⊗ₜ[K] (1 : Ω) : Kl ⊗[K] Ω) = algebraMap K Kl a • (1 : Kl ⊗[K] Ω) := by
      rw [Algebra.TensorProduct.one_def, TensorProduct.smul_tmul', smul_eq_mul, mul_one]
    rw [h1, TensorProduct.tmul_smul, TensorProduct.smul_tmul', Algebra.smul_def, mul_one,
      ← IsScalarTower.algebraMap_apply, Algebra.TensorProduct.one_def]
    rfl
  have he0kt : ∀ q : KT K D m, e0 (ktToΩ K Ω D m q) =
      algebraMap K' (TZ K Ω Kl K') (MvPolynomial.aeval t q) := by
    intro q
    have : e0.comp (ktToΩ K Ω D m) =
        (algebraMap K' (TZ K Ω Kl K')).comp (MvPolynomial.aeval t : KT K D m →ₐ[K] K').toRingHom := by
      refine MvPolynomial.ringHom_ext (fun a => ?_) (fun p => ?_)
      · simp only [RingHom.comp_apply, ktToΩ, MvPolynomial.map_C, e0, MvPolynomial.eval₂Hom_C,
          AlgHom.toRingHom_eq_coe, RingHom.coe_coe, MvPolynomial.aeval_C]
        exact hKΩ a
      · simp only [RingHom.comp_apply, ktToΩ, MvPolynomial.map_X, e0, MvPolynomial.eval₂Hom_X',
          AlgHom.toRingHom_eq_coe, RingHom.coe_coe, MvPolynomial.aeval_X]
        rfl
    exact congrArg (fun f => f q) this
  have he0sec : ∀ i : Fin D, e0 (sec v i) = tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v i.succ := by
    intro i

    simp only [sec, tsec, map_sum, map_mul, e0, MvPolynomial.eval₂Hom_X', MvPolynomial.eval₂Hom_C]
    refine Finset.sum_congr rfl fun k _ => ?_
    show (t (i.succ, k) ⊗ₜ[Kl] (1 : Kl ⊗[K] Ω)) * ((1 : K') ⊗ₜ[Kl] ((1 : Kl) ⊗ₜ[K] v k)) = _
    rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]

  let g0 : RS K Ω D m →+* (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) :=
    IsLocalization.lift (M := KTS K Ω D m) (g := ι.comp e0) (by
      rintro ⟨s, hs⟩
      obtain ⟨q, hq, rfl⟩ := hs
      show IsUnit (ι (e0 (ktToΩ K Ω D m q)))
      rw [he0kt]
      have hne : (MvPolynomial.aeval t : KT K D m →ₐ[K] K') q ≠ 0 := fun h =>
        nonZeroDivisors.ne_zero hq (hφ (h.trans (map_zero _).symm))
      exact (IsUnit.mk0 _ hne).map (ι.comp (algebraMap K' (TZ K Ω Kl K'))))
  have hg0 : ∀ a : ΩT Ω D m, g0 (algebraMap (ΩT Ω D m) (RS K Ω D m) a) = ι (e0 a) := fun a =>
    IsLocalization.lift_eq _ a
  have hmemJ : ∀ i : Fin D, ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v i.succ) = 0 := by
    intro i
    rw [IsScalarTower.algebraMap_apply (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0))
      (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)]
    rw [Ideal.Quotient.algebraMap_eq, Ideal.Quotient.eq_zero_iff_mem]
    have h1 : algebraMap (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v i.succ) =
        algebraMap (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) *
          (algebraMap (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v i.succ) *
            IsLocalization.Away.invSelf (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) := by
      rw [mul_left_comm, IsLocalization.Away.mul_invSelf, mul_one]
    rw [h1]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨i, rfl⟩)
  have hIs : ∀ a ∈ Is (K := K) (D := D) v, g0 a = 0 := by
    intro a ha
    have hle : Is (K := K) (D := D) v ≤ RingHom.ker g0 := by
      refine Ideal.span_le.2 ?_
      rintro _ ⟨i, rfl⟩
      rw [SetLike.mem_coe, RingHom.mem_ker, hg0, he0sec, hmemJ]
    exact hle ha
  let g1 : (RS K Ω D m ⧸ Is (K := K) (D := D) v) →+* (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) :=
    Ideal.Quotient.lift (Is (K := K) (D := D) v) g0 hIs
  have hcomm : g1.comp (algebraMap (KTf K D m) (RS K Ω D m ⧸ Is (K := K) (D := D) v)) =
      algebraMap (KTf K D m) (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) := by
    refine IsLocalization.ringHom_ext (nonZeroDivisors (KT K D m)) (RingHom.ext fun q => ?_)
    simp only [RingHom.comp_apply]
    rw [← Ideal.Quotient.mk_algebraMap]
    have hmap : algebraMap (KTf K D m) (RS K Ω D m) (algebraMap (KT K D m) (KTf K D m) q) =
        algebraMap (ΩT Ω D m) (RS K Ω D m) (ktToΩ K Ω D m q) := IsLocalization.map_eq _ _
    rw [hmap]
    show g0 _ = _
    rw [hg0, he0kt, hιK]
    rw [IsScalarTower.algebraMap_apply (KTf K D m) K' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)]
    rw [RingHom.algebraMap_toAlgebra, IsFractionRing.lift_algebraMap]
    rfl
  let g : (RS K Ω D m ⧸ Is (K := K) (D := D) v) →ₐ[KTf K D m] (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) :=
    { g1 with commutes' := fun r => congrArg (fun f => f r) hcomm }
  let Θ := Algebra.TensorProduct.lift (Algebra.ofId K' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v))
    g (fun _ _ => Commute.all _ _)
  haveI : IsArtinianRing (K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) (D := D) v)) :=
    IsArtinianRing.of_finite K' _

  have hΘ1 : ∀ y : RS K Ω D m ⧸ Is (K := K) (D := D) v, Θ (1 ⊗ₜ y) = g y := fun y => by
    simp [Θ, Algebra.TensorProduct.lift_tmul]
  have hι : ∀ z : TZ K Ω Kl K', ι z ∈ Θ.range := by
    intro z
    induction z using TensorProduct.induction_on with
    | zero => simp
    | add a b ha hb => rw [map_add ι]; exact add_mem ha hb
    | tmul k y =>
      induction y using TensorProduct.induction_on with
      | zero => simp
      | add a b ha hb => rw [TensorProduct.tmul_add, map_add (f := _)]; exact add_mem ha hb
      | tmul l ω =>
        have he : k ⊗ₜ[Kl] (l ⊗ₜ[K] ω) =
            algebraMap K' (TZ K Ω Kl K') (k * algebraMap Kl K' l) * fΩ ω := by
          show _ = ((k * algebraMap Kl K' l) ⊗ₜ[Kl] (1 : Kl ⊗[K] Ω)) * ((1 : K') ⊗ₜ[Kl] ((1 : Kl) ⊗ₜ[K] ω))
          rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
          have : l ⊗ₜ[K] ω = l • ((1 : Kl) ⊗ₜ[K] ω) := by
            rw [TensorProduct.smul_tmul', smul_eq_mul, mul_one]
          rw [this, TensorProduct.tmul_smul, TensorProduct.smul_tmul', Algebra.smul_def, mul_comm]
        rw [he, map_mul]
        refine mul_mem ?_ ?_
        · rw [hιK]; exact Subalgebra.algebraMap_mem _ _
        · have : ι (fΩ ω) = Θ (1 ⊗ₜ (Ideal.Quotient.mk (Is (K := K) (D := D) v)
              (algebraMap (ΩT Ω D m) (RS K Ω D m) (MvPolynomial.C ω)))) := by
            rw [hΘ1]
            show _ = g0 _
            rw [hg0]
            simp [e0]
          rw [this]; exact Θ.mem_range_self _
  have hu : IsUnit (ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) := by
    rw [IsScalarTower.algebraMap_apply (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0))
      (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)]
    exact (IsLocalization.Away.algebraMap_isUnit (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)).map _
  obtain ⟨b0, hb0'⟩ := hι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)
  have hb0 : Θ b0 = ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) := hb0'
  obtain ⟨n0, y0, hy0⟩ := IsArtinian.exists_pow_succ_smul_dvd b0 (1 : K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) (D := D) v))
  have hinv : ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) * Θ y0 = 1 := by
    rw [Nat.succ_eq_add_one, smul_eq_mul, smul_eq_mul, mul_one] at hy0
    have h := congrArg Θ hy0
    rw [map_mul, map_pow, map_pow, hb0] at h
    have h' : ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ^ n0 * (ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) * Θ y0) = ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ^ n0 * 1 := by
      rw [← mul_assoc, ← pow_succ, h, mul_one]
    exact (hu.pow n0).mul_left_cancel h'
  have hsurj : Function.Surjective Θ := by
    intro c
    obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective c
    obtain ⟨⟨z, s⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) w
    obtain ⟨n, hn'⟩ := s.2
    have hn : tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0 ^ n = (s : TZ K Ω Kl K') := hn'
    have hcs : Ideal.Quotient.mk (tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)
        (IsLocalization.mk' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) z s) * ι (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ^ n = ι z := by
      rw [IsScalarTower.algebraMap_apply (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0))
        (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v),
        IsScalarTower.algebraMap_apply (TZ K Ω Kl K') (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0))
        (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0) ⧸ tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v) z]
      rw [Ideal.Quotient.algebraMap_eq, ← map_pow, ← map_pow, ← map_mul, hn, IsLocalization.mk'_spec]
    have hc : Ideal.Quotient.mk (tJ (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v)
        (IsLocalization.mk' (Localization.Away (tsec (K := K) (Ω := Ω) (Kl := Kl) (K' := K') t v 0)) z s) = ι z * Θ y0 ^ n := by
      rw [← hcs, mul_assoc, ← mul_pow, hinv, one_pow, mul_one]
    have hm : ι z * Θ y0 ^ n ∈ Θ.range := mul_mem (hι z) (pow_mem (Θ.mem_range_self y0) n)
    obtain ⟨b, hb⟩ := hm
    exact ⟨b, by rw [hc]; exact hb⟩
  refine ⟨Module.Finite.of_surjective Θ.toLinearMap hsurj, ?_⟩

  have hvnrB : ∀ b : K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) (D := D) v), ∃ y, b = b ^ 2 * y := by
    intro b
    obtain ⟨n, y, h⟩ := IsArtinian.exists_pow_succ_smul_dvd b (1 : K' ⊗[KTf K D m] (RS K Ω D m ⧸ Is (K := K) (D := D) v))
    rw [Nat.succ_eq_add_one, smul_eq_mul, smul_eq_mul, mul_one] at h
    have hnil : IsNilpotent (b * (1 - b * y)) := by
      refine ⟨n + 1, ?_⟩
      rw [mul_pow]
      linear_combination (-(b * (1 - b * y) ^ n)) * h
    have h0 := hBred.eq_zero _ hnil
    exact ⟨y, by linear_combination h0⟩
  refine ⟨fun c hc => ?_⟩
  obtain ⟨k, hk⟩ := hc
  obtain ⟨b, rfl⟩ := hsurj c
  obtain ⟨y, hy⟩ := hvnrB b
  have hv : Θ b = Θ b ^ 2 * Θ y := by rw [← map_pow, ← map_mul, ← hy]
  have hpow : ∀ j : ℕ, Θ b = Θ b ^ (j + 1) * Θ y ^ j := by
    intro j
    induction j with
    | zero => simp
    | succ j ih =>
      calc Θ b = Θ b ^ (j + 1) * Θ y ^ j := ih
        _ = Θ b ^ j * Θ b * Θ y ^ j := by rw [pow_succ]
        _ = Θ b ^ j * (Θ b ^ 2 * Θ y) * Θ y ^ j := by rw [← hv]
        _ = Θ b ^ (j + 1 + 1) * Θ y ^ (j + 1) := by ring
  rw [hpow k, pow_succ, hk, zero_mul, zero_mul]

end Formalism.L2.Pj.GenSect
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.ProjectiveLattices.GenSectT =====
