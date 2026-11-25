module

public import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesSheafBase
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionCech
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.SerrePAux
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperFiniteness
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesSheaf
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.QcohLocal
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegree
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CechFamily

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesCech, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesNatural, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegreeCech

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesCech =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesCech", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.CechNaturality.NaturalLeray\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesSheafBase\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionCech\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.SerrePAux\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperFiniteness\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits

universe w u

noncomputable section

attribute [local instance] algebraOfOver

variable {A : Type u} [CommRing A] (I : Ideal A) {X : Scheme.{u}} [X.Over (Spec (.of A))]
  (F : X.Modules)

abbrev reesPush : X.Modules := (Scheme.Modules.pushforward (reesPr I X)).obj (reesSheaf I F)

def reesMul (r : reesAlgebra I) : reesPush I F ⟶ reesPush I F :=
  (Scheme.Modules.pushforward (reesPr I X)).map
    (smulHom (reesSheaf I F) (algebraMap (reesAlgebra I) Γ(reesScheme I X, ⊤) r))

lemma reesMul_one : reesMul I F 1 = 𝟙 _ := by
  rw [reesMul, map_one, ← smulRingHom_apply, map_one]
  exact (Scheme.Modules.pushforward (reesPr I X)).map_id _

lemma reesMul_mul (r s : reesAlgebra I) : reesMul I F (r * s) = reesMul I F s ≫ reesMul I F r := by
  rw [reesMul, reesMul, reesMul, map_mul, ← smulRingHom_apply, map_mul, ← Functor.map_comp]
  rfl

lemma reesMul_zero : reesMul I F 0 = 0 := by
  rw [reesMul, map_zero, ← smulRingHom_apply, map_zero]
  exact (Scheme.Modules.pushforward (reesPr I X)).map_zero _ _

lemma reesMul_add (r s : reesAlgebra I) : reesMul I F (r + s) = reesMul I F r + reesMul I F s := by
  rw [reesMul, reesMul, reesMul, map_add (f := _), ← smulRingHom_apply, map_add (f := _)]
  exact (Scheme.Modules.pushforward (reesPr I X)).map_add

variable {ι : Type w} (𝔘 : ι → X.Opens) (p : ℕ)

abbrev reesPre : (Opens X.toTopCat)ᵒᵖ ⥤ AddCommGrpCat.{u} := (modulesAb (reesPush I F)).obj

def reesCechRingHom : reesAlgebra I →+* AddMonoid.End (cechH (reesPre I F) 𝔘 p) where
  toFun r := cechHMap 𝔘 (modulesAbMap (reesMul I F r)).hom p
  map_one' := by
    ext x
    change cechHMap 𝔘 (modulesAbMap (reesMul I F 1)).hom p x = x
    rw [reesMul_one, modulesAbMap_id]
    exact cechHMap_id 𝔘 p x
  map_mul' r s := by
    ext x
    change cechHMap 𝔘 (modulesAbMap (reesMul I F (r * s))).hom p x =
      cechHMap 𝔘 (modulesAbMap (reesMul I F r)).hom p (cechHMap 𝔘 (modulesAbMap (reesMul I F s)).hom p x)
    rw [reesMul_mul, modulesAbMap_comp, ← cechHMap_comp]
    rfl
  map_zero' := by
    ext x
    change cechHMap 𝔘 (modulesAbMap (reesMul I F 0)).hom p x = 0
    rw [reesMul_zero]
    exact cechHMap_zero 𝔘 p x
  map_add' r s := by
    ext x
    change cechHMap 𝔘 (modulesAbMap (reesMul I F (r + s))).hom p x =
      cechHMap 𝔘 (modulesAbMap (reesMul I F r)).hom p x +
        cechHMap 𝔘 (modulesAbMap (reesMul I F s)).hom p x
    rw [reesMul_add, modulesAbMap_add]
    exact cechHMap_add 𝔘 _ _ p x

@[instance_reducible]
def reesCechModule : Module (reesAlgebra I) (cechH (reesPre I F) 𝔘 p) :=
  Module.compHom _ (reesCechRingHom I F 𝔘 p)

variable [IsNoetherianRing A] [IsProper (X ↘ Spec (.of A))] {F} (hF : IsCoherent F)
  (hU : iSup 𝔘 = ⊤) (hUaff : ∀ (m : ℕ) (t : Fin (m + 1) → ι), IsAffineOpen (⨅ a, 𝔘 (t a)))


omit [IsNoetherianRing A] [IsProper (X ↘ Spec (.of A))] in
include hF hU hUaff in
theorem exists_reesCech_addEquiv :
    ∃ e : cechH (reesPre I F) 𝔘 p ≃+ Sheaf.H.{u} (modulesAb (reesSheaf I F)) p,
      ∀ (r : reesAlgebra I) x, e (cechHMap 𝔘 (modulesAbMap (reesMul I F r)).hom p x) = r • e x := by
  have : (reesSheaf I F).IsQuasicoherent := (isCoherent_reesSheaf hF).1
  set pr := reesPr I X
  have hUr : ⨆ k, pr ⁻¹ᵁ 𝔘 k = ⊤ := by
    rw [← Scheme.Hom.preimage_iSup, hU]
    rfl
  have hUraff : ∀ (m : ℕ) (t : Fin (m + 1) → ι), IsAffineOpen (⨅ a, pr ⁻¹ᵁ 𝔘 (t a)) := fun m t => by
    have h := preimage_inter pr 𝔘 t
    rw [← inter_eq_iInf (fun k => pr ⁻¹ᵁ 𝔘 k) t, ← h, inter_eq_iInf]
    exact (hUaff m t).preimage pr
  refine ⟨(cechHPushforwardEquiv pr (reesSheaf I F) 𝔘 p).trans
    (cechHAddEquivH (fun k => pr ⁻¹ᵁ 𝔘 k) hUr hUraff (reesSheaf I F) p), fun r x => ?_⟩
  simp only [AddEquiv.trans_apply]
  rw [cechHPushforwardEquiv_naturality pr (reesSheaf I F) 𝔘 p _
    (modulesAbMap (smulHom (reesSheaf I F)
      (algebraMap (reesAlgebra I) Γ(reesScheme I X, ⊤) r))).hom (fun W y => rfl) x,
    cechHAddEquivH_naturality]
  rfl


include hF hU hUaff in
theorem finite_reesCech :
    @Module.Finite (reesAlgebra I) (cechH (reesPre I F) 𝔘 p) _ _ (reesCechModule I F 𝔘 p) := by
  let := reesCechModule I F 𝔘 p
  obtain ⟨e, he⟩ := exists_reesCech_addEquiv I 𝔘 p hF hU hUaff
  have := finite_H_of_isProper (A := reesAlgebra I) (reesSheaf I F) (isCoherent_reesSheaf hF) p
  exact Module.Finite.equiv (e.toLinearEquiv fun r x => he r x).symm

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesCech =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesNatural =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesNatural", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesSheaf\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.QcohLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Limits Opposite

universe u

noncomputable section

variable {A : Type u} [CommRing A] {I : Ideal A} {X : Scheme.{u}} [X.Over (Spec (.of A))]
  {F : X.Modules} {V V' : X.Opens} (hle : V' ≤ V)

lemma algV_res (a : A) : resO hle (algV X V a) = algV X V' a := by
  have := Scheme.Hom.appLE_map (X ↘ Spec (.of A)) (U := ⊤) (le_top : V ≤ _) (homOfLE hle).op
  exact congrArg (fun f : Γ(Spec (.of A), ⊤) ⟶ Γ(X, V') => f.hom ((Scheme.ΓSpecIso (.of A)).inv a))
    this


variable (I) in
abbrev resS : Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V) →+* Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V') :=
  resO (Scheme.Hom.preimage_mono _ hle)

lemma resS_reesInr (r : reesAlgebra I) : resS I hle (reesInr I V r) = reesInr I V' r := by
  have := Scheme.Hom.appLE_map (reesSnd I X) (U := ⊤) (le_top : reesPr I X ⁻¹ᵁ V ≤ _)
    (homOfLE (Scheme.Hom.preimage_mono _ hle)).op
  exact congrArg (fun f : Γ(Spec (.of (reesAlgebra I)), ⊤) ⟶ Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V') =>
    f.hom ((Scheme.ΓSpecIso (.of (reesAlgebra I))).inv r)) this

lemma resS_prApp (c : Γ(X, V)) :
    resS I hle ((reesPr I X).app V c) = (reesPr I X).app V' (resO hle c) := by
  have := (reesPr I X).naturality (homOfLE hle).op
  exact (congrArg (fun f : Γ(X, V) ⟶ Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V') => f.hom c) this).symm

lemma reesRingHom_res (hV : IsAffineOpen V) (hV' : IsAffineOpen V')
    (s : Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V)) :
    reesRingHom hV' (resS I hle s) = (reesRingHom hV s).map (resO hle) := by
  have h := (isPushout_rees (I := I) hV).hom_ext
    (k := CommRingCat.ofHom ((reesRingHom hV').comp (resS I hle)))
    (l := CommRingCat.ofHom ((Polynomial.mapRingHom (resO hle)).comp (reesRingHom hV)))
    (by
      refine CommRingCat.hom_ext (RingHom.ext fun c => ?_)
      change reesRingHom hV' (resS I hle ((reesPr I X).app V c)) =
        (reesRingHom hV ((reesPr I X).app V c)).map (resO hle)
      rw [resS_prApp, reesRingHom_inl, reesRingHom_inl, Polynomial.map_C])
    (by
      refine CommRingCat.hom_ext (RingHom.ext fun r => ?_)
      change reesRingHom hV' (resS I hle (reesInr I V r)) =
        (reesRingHom hV (reesInr I V r)).map (resO hle)
      rw [resS_reesInr, reesRingHom_inr, reesRingHom_inr, Polynomial.map_map]
      congr 1
      exact RingHom.ext fun a => (algV_res hle a).symm)
  exact congrArg (fun f : Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V) ⟶
    CommRingCat.of (Polynomial Γ(X, V')) => f.hom s) h


variable (F) in
def resFA : Γ(F, V) →ₗ[A] Γ(F, V') where
  toFun := resF F hle
  map_add' := map_add _
  map_smul' a m := by
    change resF F hle (algV X V a • m) = algV X V' a • resF F hle m
    rw [resF_smul, algV_res]

lemma resFA_apply (m : Γ(F, V)) : resFA (A := A) F hle m = resF F hle m := rfl

lemma app_resF {M N : X.Modules} (φ : M ⟶ N) {U U' : X.Opens} (h : U' ≤ U) (y : Γ(M, U)) :
    φ.app U' (resF M h y) = resF N h (φ.app U y) := by
  have := φ.mapPresheaf.naturality (homOfLE h).op
  exact congrArg (fun f => f.hom y) this

variable (hF : IsCoherent F) (hV : IsAffineOpen V) (hV' : IsAffineOpen V')

lemma theta₁_res_coeff
    (y : Γ((Scheme.Modules.pullback (reesPr I X)).obj F, reesPr I X ⁻¹ᵁ V)) (n : ℕ) :
    (theta₁ hF hV' (resF _ (Scheme.Hom.preimage_mono _ hle) y)).coeff n =
      resF F hle ((theta₁ hF hV y).coeff n) := by
  have hy : y ∈ Submodule.span Γ(reesScheme I X, reesPr I X ⁻¹ᵁ V)
      (Set.range (unitPr I F V)) := by
    rw [(isBaseChangeAt_reesPr (I := I) hF hV).span_range]
    trivial
  induction hy using Submodule.span_induction generalizing n with
  | mem z hz =>
    obtain ⟨m, rfl⟩ := hz
    have hres : resF _ (Scheme.Hom.preimage_mono _ hle) (unitPr I F V m) =
        unitPr I F V' (resF F hle m) :=
      (Etale.pullbackUnitApp_res (reesPr I X) F (homOfLE hle) m).symm
    rw [hres, theta₁_unitPr, theta₁_unitPr, PolynomialModule.coeff_single,
      PolynomialModule.coeff_single, Finsupp.single_apply, Finsupp.single_apply]
    split_ifs
    · rfl
    · exact (map_zero _).symm
  | zero => simp
  | add z z' _ _ hz hz' =>
    simp only [map_add (f := _), PolynomialModule.coeff_add, Finsupp.add_apply, hz, hz']
  | smul s z _ hz =>

    rw [Scheme.Modules.map_smul, theta₁_smul, theta₁_smul, reesRingHom_res hle hV hV',
    PolynomialModule.smul_apply, PolynomialModule.smul_apply, map_sum]
    refine Finset.sum_congr rfl fun x _ => ?_
    rw [Polynomial.coeff_map, hz, resF_smul]

theorem reesSectionsEquiv_res (x : Γ(reesSheaf I F, reesPr I X ⁻¹ᵁ V)) :
    (reesSectionsEquiv I hF hV' (resF _ (Scheme.Hom.preimage_mono _ hle) x) :
      PolynomialModule A Γ(F, V')) =
      PolynomialModule.map A (resFA F hle) (reesSectionsEquiv I hF hV x : PolynomialModule A Γ(F, V)) := by
  obtain ⟨y, rfl⟩ := surjective_reesSheafπ_app hF (hV.preimage (reesPr I X)) x
  rw [← app_resF, reesSectionsEquiv_apply, reesSectionsEquiv_apply, reesSectionsMap_π,
    reesSectionsMap_π]
  apply PolynomialModule.coeff_injective
  ext n
  exact theta₁_res_coeff hle hF hV hV' y n

end

section Base

variable {A : Type u} [CommRing A] (I : Ideal A) (X : Scheme.{u}) [X.Over (Spec (.of A))]

variable {I X}

end Base

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesNatural =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegreeCech =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegreeCech", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegree\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesCech\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CechFamily\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ReesNatural\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits

universe u

noncomputable section

attribute [local instance] algebraOfOver

variable {A : Type u} [CommRing A] [IsNoetherianRing A] (I : Ideal A) {X : Scheme.{u}}
  [X.Over (Spec (.of A))] {F : X.Modules} [F.IsQuasicoherent] (hF : IsCoherent F)
  {ι : Type u} (𝔘 : ι → X.Opens)
  (hU : ∀ (m : ℕ) (t : Fin (m + 1) → ι), IsAffineOpen (⨅ a, 𝔘 (t a)))

omit [IsNoetherianRing A] [F.IsQuasicoherent] in
include hU in
lemma isAffineOpen_inter {m : ℕ} (t : Fin (m + 1) → ι) :
    IsAffineOpen (inter (X := X.toTopCat) 𝔘 t) := by
  rw [inter_eq_iInf]
  exact hU m t



lemma reesCoef_res {V V' : X.Opens} (hle : V' ≤ V) (hV : IsAffineOpen V) (hV' : IsAffineOpen V')
    (n : ℕ) (x : Γ(reesSheaf I F, reesPr I X ⁻¹ᵁ V)) :
    reesCoef I hF hV' n (resF _ (Scheme.Hom.preimage_mono _ hle) x) =
      resF F hle (reesCoef I hF hV n x) := by
  change (reesSectionsMap I hF hV' _).coeff n = resF F hle ((reesSectionsMap I hF hV x).coeff n)
  rw [← reesSectionsEquiv_apply, reesSectionsEquiv_res hle hF hV hV', reesSectionsEquiv_apply]
  rfl


lemma reesCoef_res' {V V' : X.Opens} (h : V' ≤ V) (hV : IsAffineOpen V) (hV' : IsAffineOpen V')
    (n : ℕ) (x : (reesPre I F).obj (op V)) :
    reesCoef I hF hV' n (res (reesPre I F) h x) = res (modulesAb F).obj h (reesCoef I hF hV n x) :=
  reesCoef_res I hF h hV hV' n x


lemma reesDeg_res' {V V' : X.Opens} (h : V' ≤ V) (hV : IsAffineOpen V) (hV' : IsAffineOpen V')
    (n : ℕ) (x : Γ(reesSheaf I F, reesPr I X ⁻¹ᵁ V)) :
    reesDeg I hF hV' n (res (reesPre I F) h x) =
      res (modulesAb (idealPow I F n)).obj h (reesDeg I hF hV n x) := by
  apply idealPowι_app_injective I n
  have e1 : res (modulesAb (idealPow I F n)).obj h (reesDeg I hF hV n x) =
    resF (idealPow I F n) h (reesDeg I hF hV n x) := rfl
  have e2 : res (reesPre I F) h x = resF (reesSheaf I F) (Scheme.Hom.preimage_mono _ h) x := rfl
  rw [e1, e2, idealPowι_reesDeg, app_resF, idealPowι_reesDeg]
  exact reesCoef_res I hF h hV hV' n x


lemma reesInc_res' {V V' : X.Opens} (h : V' ≤ V) (hV : IsAffineOpen V) (hV' : IsAffineOpen V')
    (n : ℕ) (x : Γ(idealPow I F n, V)) :
    reesInc I hF hV' n (res (modulesAb (idealPow I F n)).obj h x) =
      res (reesPre I F) h (reesInc I hF hV n x) := by
  apply reesSectionsMap_injective hF hV'
  have e1 : res (reesPre I F) h (reesInc I hF hV n x) =
    resF (reesSheaf I F) (Scheme.Hom.preimage_mono _ h) (reesInc I hF hV n x) := rfl
  have e2 : res (modulesAb (idealPow I F n)).obj h x = resF (idealPow I F n) h x := rfl
  rw [e1, e2, ← reesSectionsEquiv_apply hF hV' (resF _ _ _),
    reesSectionsEquiv_res h hF hV hV', reesSectionsEquiv_apply, reesSectionsMap_reesInc,
    reesSectionsMap_reesInc, PolynomialModule.map_lsingle, resFA_apply, app_resF]

def reesCoefFam (n : ℕ) : CechFamily (X := X.toTopCat) 𝔘 (reesPre I F) (modulesAb F).obj where
  φ t := reesCoef I hF (isAffineOpen_inter 𝔘 hU t) n
  res_comm _ _ h x := reesCoef_res' I hF h _ _ n x



def reesDegFam (n : ℕ) : CechFamily (X := X.toTopCat) 𝔘 (reesPre I F)
    (modulesAb (idealPow I F n)).obj where
  φ t := reesDeg I hF (isAffineOpen_inter 𝔘 hU t) n
  res_comm _ _ h x := reesDeg_res' I hF h _ _ n x



def reesIncFam (n : ℕ) : CechFamily (X := X.toTopCat) 𝔘 (modulesAb (idealPow I F n)).obj
    (reesPre I F) where
  φ t := reesInc I hF (isAffineOpen_inter 𝔘 hU t) n
  res_comm _ _ h x := reesInc_res' I hF h _ _ n x

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FormalDegreeCech =====
