module

public import Development.EtaleCohomology.TateTwists.EtaleKInjectiveExtensionAlongQuasiIsoFromSingle
public import Mathlib.CategoryTheory.Adjunction.Evaluation
import Mathlib.Algebra.Category.ModuleCat.AB

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.EtaleInjectiveSheafSectionsInjectiveHolds, Development.EtaleCohomology.TateTwists.ZmodInjectiveModuleFlatHolds, Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleInjectiveSheafSectionsInjectiveHolds =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleInjectiveSheafSectionsInjectiveHolds", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleKInjectiveExtensionAlongQuasiIsoFromSingle\npublic import Mathlib.CategoryTheory.Adjunction.Evaluation\nimport Mathlib.Algebra.Category.ModuleCat.AB\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.EtaleFoundations.TwResSecInj

theorem sigma_map_mono (R : Type) [CommRing R] (ι : Type) {X Y : ModuleCat.{1} (ULift.{1} R)} (f : X ⟶ Y) [Mono f] :
    Mono (Limits.Sigma.map (fun (_ : ι) => f)) := by
  let α : Discrete.functor (fun (_ : ι) => X) ⟶ Discrete.functor (fun _ => Y) := Discrete.natTrans (fun _ => f)
  have : ∀ j, Mono (α.app j) := fun j => by
    change Mono f; infer_instance
  have h1 : Mono α := NatTrans.mono_of_mono_app _
  exact (colim : (Discrete ι ⥤ ModuleCat.{1} (ULift.{1} R)) ⥤ _).map_mono α

instance evLA_mono (R : Type) [CommRing R] (U : Scheme.{0}) :
    (evaluationLeftAdjoint (ModuleCat.{1} (ULift.{1} R)) (op U)).PreservesMonomorphisms where
  preserves {X Y} f _ := by
    have hm : ∀ c, Mono (((evaluationLeftAdjoint (ModuleCat.{1} (ULift.{1} R)) (op U)).map f).app c) := by
      intro c
      rw [evaluationLeftAdjoint_map_app]
      have e : (Limits.Sigma.desc fun h => f ≫ Sigma.ι (fun _ => Y) h) = Limits.Sigma.map (fun (_ : op U ⟶ c) => f) := by
        ext; simp
      rw [e]; exact sigma_map_mono R _ f
    exact NatTrans.mono_of_mono_app _

end LateralTheory.EtaleFoundations.TwResSecInj

open LateralTheory.EtaleFoundations.TwResSecInj in
theorem LateralTheory.EtaleFoundations.etale_injective_sheaf_sections_injective_holds : LateralTheory.EtaleFoundations.EtaleInjectiveSheafSectionsInjective := by
  intro R _ M _ U
  have adj := (evaluationAdjunctionRight (ModuleCat.{1} (ULift.{1} R)) (op U)).comp
    (sheafificationAdjunction Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R)))
  have hI := Injective.injective_of_adjoint adj M
  exact Module.injective_module_of_injective_object (inj := hI) _ _
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleInjectiveSheafSectionsInjectiveHolds =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.ZmodInjectiveModuleFlatHolds =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.ZmodInjectiveModuleFlatHolds", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleKInjectiveExtensionAlongQuasiIsoFromSingle\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.EtaleFoundations.QFFlat

universe u v

open TensorProduct

theorem zmod_P (q : ℕ) [NeZero q] (a : ZMod q) :
    ∃ b : ZMod q, b * a = 0 ∧ ∀ r : ZMod q, r * b = 0 → ∃ c, c * a = r := by
  have hq : 0 < q := Nat.pos_of_ne_zero (NeZero.ne q)
  set n := a.val with hn
  set g := Nat.gcd n q with hg
  have hgq : g ∣ q := Nat.gcd_dvd_right n q
  have hgn : g ∣ n := Nat.gcd_dvd_left n q
  have hgpos : 0 < g := Nat.gcd_pos_of_pos_right n hq
  have ha : (n : ZMod q) = a := ZMod.natCast_zmod_val a
  refine ⟨((q / g : ℕ) : ZMod q), ?_, fun r hr => ?_⟩
  · rw [← ha, ← Nat.cast_mul, ZMod.natCast_eq_zero_iff]
    obtain ⟨t, ht⟩ := hgn
    refine ⟨t, ?_⟩
    rw [ht, ← mul_assoc, Nat.div_mul_cancel hgq]
  · have hr' : (r.val : ZMod q) = r := ZMod.natCast_zmod_val r
    rw [← hr', ← Nat.cast_mul, ZMod.natCast_eq_zero_iff] at hr
    have hqg : 0 < q / g := Nat.div_pos (Nat.le_of_dvd hq hgq) hgpos
    have hdiv : g ∣ r.val := by
      have h1 : g * (q / g) ∣ r.val * (q / g) := by rwa [Nat.mul_div_cancel' hgq]
      exact Nat.dvd_of_mul_dvd_mul_right hqg h1
    obtain ⟨j, hj⟩ := hdiv
    have hbez : ((g : ℤ) : ZMod q) = (n : ZMod q) * ((Nat.gcdA n q : ℤ) : ZMod q) := by
      rw [hg, Nat.gcd_eq_gcd_ab n q]
      push_cast
      simp
    refine ⟨((Nat.gcdA n q : ℤ) : ZMod q) * (j : ZMod q), ?_⟩
    rw [← hr', hj, ← ha]
    push_cast at hbez ⊢
    rw [hbez]
    ring

theorem ulift_P (q : ℕ) [NeZero q] (a : ULift.{1} (ZMod q)) :
    ∃ b : ULift.{1} (ZMod q), b * a = 0 ∧ ∀ r : ULift.{1} (ZMod q), r * b = 0 → ∃ c, c * a = r := by
  obtain ⟨b, hb, h⟩ := zmod_P q a.down
  refine ⟨ULift.up b, ULift.ext hb, fun r hr => ?_⟩
  obtain ⟨c, hc⟩ := h r.down (congrArg ULift.down hr)
  exact ⟨ULift.up c, ULift.ext hc⟩

theorem key {R : Type u} {M : Type v} [CommRing R] [Small.{v} R] [AddCommGroup M] [Module R M] (hM : Module.Injective R M)
    (hP : ∀ a : R, ∃ b : R, b * a = 0 ∧ ∀ r : R, r * b = 0 → ∃ c, c * a = r)
    (a : R) (m : M) (h : a • m = 0) : ∃ (b : R) (m' : M), b * a = 0 ∧ m = b • m' := by
  obtain ⟨b, hba, hb⟩ := hP a
  have wd : ∀ c c' : R, c * b = c' * b → c • m = c' • m := by
    intro c c' hcc
    obtain ⟨e, he⟩ := hb (c - c') (by rw [sub_mul, hcc, sub_self])
    rw [← sub_eq_zero, ← sub_smul, ← he, mul_smul, h, smul_zero]
  have hc : ∀ x : Ideal.span {b}, (Ideal.mem_span_singleton'.1 x.2).choose * b = x :=
    fun x => (Ideal.mem_span_singleton'.1 x.2).choose_spec
  let g : Ideal.span {b} →ₗ[R] M :=
    { toFun := fun x => (Ideal.mem_span_singleton'.1 x.2).choose • m
      map_add' := fun x y => by
        rw [← add_smul]
        apply wd
        rw [add_mul, hc, hc, hc, Submodule.coe_add]
      map_smul' := fun r x => by
        rw [RingHom.id_apply, ← mul_smul]
        apply wd
        rw [mul_assoc, hc, hc, Submodule.coe_smul, smul_eq_mul] }
  obtain ⟨G, hG⟩ := Module.Baer.of_injective hM (Ideal.span {b}) g
  refine ⟨b, G 1, hba, ?_⟩
  have hbm : b ∈ Ideal.span {b} := Ideal.subset_span rfl
  rw [← map_smul, smul_eq_mul, mul_one, hG b hbm]
  change m = (Ideal.mem_span_singleton'.1 hbm).choose • m
  conv_lhs => rw [← one_smul R m]
  apply wd
  rw [hc ⟨b, hbm⟩, one_mul]

theorem flat_of {R : Type u} {M : Type v} [CommRing R] [Small.{v} R] [IsPrincipalIdealRing R] [AddCommGroup M] [Module R M]
    (hM : Module.Injective R M)
    (hP : ∀ a : R, ∃ b : R, b * a = 0 ∧ ∀ r : R, r * b = 0 → ∃ c, c * a = r) : Module.Flat R M := by
  rw [Module.Flat.iff_lift_lsmul_comp_subtype_injective]
  intro I _
  obtain ⟨a, ha⟩ := Submodule.IsPrincipal.principal I
  have mem : a ∈ I := by rw [ha]; exact Submodule.mem_span_singleton_self a
  have hrep : ∀ t : I ⊗[R] M, ∃ m : M, t = (⟨a, mem⟩ : I) ⊗ₜ m := by
    intro t
    induction t using TensorProduct.induction_on with
    | zero => exact ⟨0, by simp⟩
    | tmul x n =>
      have hx : (x : R) ∈ Submodule.span R {a} := ha ▸ x.2
      obtain ⟨c, hc⟩ := Submodule.mem_span_singleton.1 hx
      refine ⟨c • n, ?_⟩
      rw [← smul_tmul]
      congr 1
      ext
      simp
      rw [← hc, smul_eq_mul]
    | add x y hx hy =>
      obtain ⟨mx, rfl⟩ := hx
      obtain ⟨my, rfl⟩ := hy
      exact ⟨mx + my, by rw [tmul_add]⟩
  set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
  intro t ht
  obtain ⟨m, rfl⟩ := hrep t
  have ham : a • m = 0 := by simpa using ht
  obtain ⟨b, m', hba, rfl⟩ := key hM hP a m ham
  rw [← smul_tmul]
  have h0 : b • (⟨a, mem⟩ : I) = 0 := Subtype.ext (by simp [hba])
  rw [h0, zero_tmul]

end LateralTheory.EtaleFoundations.QFFlat

theorem LateralTheory.EtaleFoundations.zmod_injective_module_flat_holds : LateralTheory.EtaleFoundations.ZModInjectiveModuleFlat := by
  intro q _ N _ _ hN
  have : IsPrincipalIdealRing (ZMod q) :=
    IsPrincipalIdealRing.of_surjective (Int.castRingHom (ZMod q)) ZMod.intCast_surjective
  have : IsPrincipalIdealRing (ULift.{1} (ZMod q)) :=
    IsPrincipalIdealRing.of_surjective (ULift.ringEquiv (R := ZMod q)).symm
      (ULift.ringEquiv (R := ZMod q)).symm.surjective
  exact LateralTheory.EtaleFoundations.QFFlat.flat_of hN (LateralTheory.EtaleFoundations.QFFlat.ulift_P q)
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.ZmodInjectiveModuleFlatHolds =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.EtaleKInjectiveExtensionAlongQuasiIsoFromSingle\npublic import Development.EtaleCohomology.TateTwists.EtaleInjectiveSheafSectionsInjectiveHolds\npublic import Development.EtaleCohomology.TateTwists.ZmodInjectiveModuleFlatHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.EtaleTwistResolutionUniversalExtension
theorem etale_twisted_resolution_exists_of_flat_sections : LateralTheory.EtaleFoundations.EtaleTwistResolutionUniversalExtension := by
  apply LateralTheory.EtaleFoundations.etale_tate_twist_resolution_universal_of_injective_sections_and_zmod_f <;> first | exact _root_.LateralTheory.EtaleFoundations.etale_injective_sheaf_sections_injective_holds | exact _root_.LateralTheory.EtaleFoundations.zmod_injective_module_flat_holds
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.EtaleTwistResolutionUniversalExtension.etale_twisted_resolution_exists_of_flat_sections
end LateralTheory.Fin.EtaleTwistResolutionUniversalExtension
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.EtaleTwistedResolutionExistsOfFlatSections =====
