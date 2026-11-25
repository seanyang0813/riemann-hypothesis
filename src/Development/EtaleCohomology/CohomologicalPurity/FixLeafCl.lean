module

public import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafClCut
public import Development.EtaleCohomology.CohomologicalPurity.LeafDescPf
public import Development.EtaleCohomology.CohomologicalPurity.LeafDictPf
public import Development.EtaleCohomology.KummerTheory.FlasquePf
public import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial
public import Development.EtaleCohomology.KummerTheory.ContCut
public import Development.EtaleCohomology.KummerTheory.GluePf
public import Mathlib.Order.CompletePartialOrder
public import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc
public import Development.EtaleCohomology.CohomologicalPurity.FinLeafChart
public import Development.EtaleCohomology.CohomologicalPurity.FinLeafExc
public import Development.EtaleCohomology.CohomologicalPurity.FinLeafThom
public import Development.EtaleCohomology.CohomologicalPurity.LeafDescOGluePfP
public import Development.EtaleCohomology.CohomologicalPurity.LeafDiscNrmPf
import Mathlib.Tactic.Linter.Style
import Mathlib.CategoryTheory.Limits.Types.Pushouts
import Mathlib.CategoryTheory.Presentable.Type
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.Tactic.Linter.HaveILetI
import Development.EtaleCohomology.CohomologicalPurity.LeafDescPfGlue

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.CohomologicalPurity.LeafBZPf, Development.EtaleCohomology.CohomologicalPurity.LeafBdAddPf, Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfId, Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfNb, Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfAll, Development.EtaleCohomology.CohomologicalPurity.LeafDescOSepPf, Development.EtaleCohomology.CohomologicalPurity.LeafDictPfDbl, Development.EtaleCohomology.CohomologicalPurity.LeafEvPf, Development.EtaleCohomology.CohomologicalPurity.LeafGenPf, Development.EtaleCohomology.CohomologicalPurity.LeafGenKerPf, Development.EtaleCohomology.CohomologicalPurity.LeafGenRingPf, Development.EtaleCohomology.CohomologicalPurity.LeafMatPf, Development.EtaleCohomology.CohomologicalPurity.LeafNbPf, Development.EtaleCohomology.CohomologicalPurity.LeafOffPf, Development.EtaleCohomology.CohomologicalPurity.LeafPairPf, Development.EtaleCohomology.CohomologicalPurity.LeafStepPf, Development.EtaleCohomology.CohomologicalPurity.LeafTopPf, Development.EtaleCohomology.CohomologicalPurity.LeafVanFPf, Development.EtaleCohomology.CohomologicalPurity.LeafVanPf, Development.EtaleCohomology.CohomologicalPurity.LeafVanRingPf, Development.EtaleCohomology.CohomologicalPurity.LeafZeroPf, Development.EtaleCohomology.CohomologicalPurity.LeafZlocPf, Development.EtaleCohomology.CohomologicalPurity.LeafZornPf, Development.EtaleCohomology.CohomologicalPurity.FixLeafCl

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafBZPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafBZPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Cl.Flq

theorem LeafBZ_of : LeafBZ := by
  intro R _ K X U n W a ⟨b, hb0, hba⟩
  subst hba
  refine ⟨?_, ?_⟩
  · show ((K.X n).obj.map (W.ι ⁻¹ᵁ U).ι.op).hom (((K.d (n - 1) n).hom.app (op W.toScheme)).hom b) = 0
    have e := congrArg (fun φ => φ.hom b) ((K.d (n - 1) n).hom.naturality (W.ι ⁻¹ᵁ U).ι.op)
    simp only [ModuleCat.hom_comp, LinearMap.comp_apply] at e
    rw [← e]
    have hb0' : ((K.X (n - 1)).obj.map (W.ι ⁻¹ᵁ U).ι.op).hom b = 0 := hb0
    rw [hb0', map_zero]
  · show ((K.d n (n + 1)).hom.app (op W.toScheme)).hom (((K.d (n - 1) n).hom.app (op W.toScheme)).hom b) = 0
    change ((K.d (n - 1) n ≫ K.d n (n + 1)).hom.app (op W.toScheme)).hom b = 0
    rw [K.d_comp_d]
    rfl

end LateralTheory.CohomologicalPurity.Cl.Flq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafBZPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafBdAddPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafBdAddPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Cl.Flq

theorem etale_section_boundary_of_mem_addSubgroup_closure {R : Type} [CommRing R] (K : Cx R) {Y : Scheme.{0}} (U' : Y.Opens) (n : ℤ)
    (a : Sec (K.X n) Y) (ha : a ∈ AddSubgroup.closure {a | Bd K U' n a}) : Bd K U' n a := by
  induction ha using AddSubgroup.closure_induction with
  | mem x hx => exact hx
  | zero => exact ⟨0, map_zero _, map_zero _⟩
  | add x y _ _ hx hy =>
    obtain ⟨b, hb0, hb⟩ := hx
    obtain ⟨c, hc0, hc⟩ := hy
    refine ⟨b + c, ?_, ?_⟩
    · show ((K.X (n-1)).obj.map U'.ι.op).hom (b + c) = 0
      rw [map_add (f := _), show ((K.X (n-1)).obj.map U'.ι.op).hom b = 0 from hb0, show ((K.X (n-1)).obj.map U'.ι.op).hom c = 0 from hc0, add_zero]
    · show ((K.d (n - 1) n).hom.app (op Y)).hom (b + c) = x + y
      rw [map_add (f := _)]; rw [← hb, ← hc]
  | neg x _ hx =>
    obtain ⟨b, hb0, hb⟩ := hx
    refine ⟨-b, ?_, ?_⟩
    · show ((K.X (n-1)).obj.map U'.ι.op).hom (-b) = 0
      rw [map_neg]; rw [show ((K.X (n-1)).obj.map U'.ι.op).hom b = 0 from hb0, neg_zero]
    · show ((K.d (n - 1) n).hom.app (op Y)).hom (-b) = -x
      rw [map_neg]; rw [← hb]

theorem LeafBdAdd_of : LeafBdAdd := by
  intro R _ K X U n W a ha
  exact etale_section_boundary_of_mem_addSubgroup_closure K _ n a ha

end LateralTheory.CohomologicalPurity.Cl.Flq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafBdAddPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfId =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfId", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry

namespace LateralTheory.CohomologicalPurity.Cl

theorem le_map_of {d : ℕ} {P : SP d} (F F₀ : Frame P) (C : Type) [CommRing C] (φ : F.B →+* C) (ψ : F₀.B →+* C)
    (e : Spec.map (CommRingCat.ofHom φ) ≫ F.w = Spec.map (CommRingCat.ofHom ψ) ≫ F₀.w) : F.I.map φ ≤ F₀.I.map ψ := by
  let J := F₀.I.map ψ
  let π : C →+* C ⧸ J := Ideal.Quotient.mk J
  let ψ' : F₀.B ⧸ F₀.I →+* C ⧸ J := Ideal.Quotient.lift F₀.I (π.comp ψ)
    (fun a ha => Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.mem_map_of_mem ψ ha))
  have hψ : ψ'.comp (Ideal.Quotient.mk F₀.I) = π.comp ψ := RingHom.ext fun a => rfl
  have hw : (Spec.map (CommRingCat.ofHom π) ≫ Spec.map (CommRingCat.ofHom φ)) ≫ F.w =
      (Spec.map (CommRingCat.ofHom ψ') ≫ F₀.z) ≫ P.ι := by
    rw [Category.assoc, e, Category.assoc, ← F₀.cart.w, ← Category.assoc, ← Category.assoc,
      ← spec_comp_ofHom, ← spec_comp_ofHom, hψ]
  let t := F.cart.lift _ _ hw
  have ht : t ≫ Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk F.I)) =
      Spec.map (CommRingCat.ofHom π) ≫ Spec.map (CommRingCat.ofHom φ) := F.cart.lift_fst _ _ _
  let τ : F.B ⧸ F.I →+* C ⧸ J := (Spec.preimage t).hom
  have h1 : Spec.map (CommRingCat.ofHom (τ.comp (Ideal.Quotient.mk F.I))) =
      Spec.map (CommRingCat.ofHom (π.comp φ)) := by
    rw [spec_comp_ofHom, spec_comp_ofHom, ← ht]
    congr 1
    exact Spec.map_preimage t
  have h2 := congrArg CommRingCat.Hom.hom (Spec.map_injective h1)
  rw [Ideal.map_le_iff_le_comap]
  intro a ha
  rw [Ideal.mem_comap, ← Ideal.Quotient.eq_zero_iff_mem]
  change (π.comp φ) a = 0
  rw [← show (τ.comp (Ideal.Quotient.mk F.I)) = π.comp φ from h2, RingHom.comp_apply,
    Ideal.Quotient.eq_zero_iff_mem.2 ha, map_zero]

theorem LeafCmpId_pf : LeafCmpId := fun _ _ F F₀ C _ φ ψ e =>
  le_antisymm (le_map_of F F₀ C φ ψ e) (le_map_of F₀ F C ψ φ e.symm)

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfId =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfNb =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfNb", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory AlgebraicGeometry

namespace LateralTheory.CohomologicalPurity.Cl

theorem LeafCmpNb_pf : LeafCmpNb := by
  intro X B B₀ _ _ w w₀ h₀ y hy
  let W : (Spec (CommRingCat.of B)).Opens := w ⁻¹ᵁ w₀.opensRange
  have hs : IsOpen (X := PrimeSpectrum B) (W : Set (Spec (CommRingCat.of B))) := W.2
  have hyW : (y : PrimeSpectrum B) ∈ (W : Set (Spec (CommRingCat.of B))) := hy
  obtain ⟨_, ⟨g, rfl⟩, hyg, hsub⟩ :=
    (PrimeSpectrum.isTopologicalBasis_basic_opens (R := B)).exists_subset_of_mem_open hyW hs
  let l : B →+* Localization.Away g := algebraMap B (Localization.Away g)
  have hr : Set.range (PrimeSpectrum.comap l) = PrimeSpectrum.basicOpen g :=
    PrimeSpectrum.localization_away_comap_range (Localization.Away g) g
  have H : Set.range (Spec.map (CommRingCat.ofHom l) ≫ w) ⊆ Set.range w₀ := by
    rintro _ ⟨t, rfl⟩
    have : (Spec.map (CommRingCat.ofHom l)) t ∈ W :=
      hsub (by
        have h1 : PrimeSpectrum.comap l t ∈ Set.range (PrimeSpectrum.comap l) := ⟨t, rfl⟩
        rw [hr] at h1; exact h1)
    exact this
  let u := IsOpenImmersion.lift w₀ _ H
  refine ⟨Localization.Away g, inferInstance, l, (Spec.preimage u).hom, ?_, ?_, ?_⟩
  · exact Scheme.isOpenImmersion_SpecMap_localizationAway (R := CommRingCat.of B) g
  · have h2 : (y : PrimeSpectrum B) ∈ Set.range (PrimeSpectrum.comap l) := by rw [hr]; exact hyg
    obtain ⟨t, ht⟩ := h2
    exact ⟨show Spec (CommRingCat.of (Localization.Away g)) from t, ht⟩
  · rw [CommRingCat.ofHom_hom, Spec.map_preimage]
    exact (IsOpenImmersion.lift_fac w₀ _ H).symm

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfNb =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfAll =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfAll", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfId\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfNb\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPf\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.CohomologicalPurity.Cl

theorem LeafCmp_of_Mat (hMat : LeafMat) : LeafCmp := LeafCmp_of hMat LeafCmpNb_pf LeafCmpId_pf

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfAll =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDescOSepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafDescOSepPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDescPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Cl

theorem sres_comp {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (f : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res f (Sec.res g x) = Sec.res (f ≫ g) x := by
  simp only [Sec.res, op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.comp_apply]

theorem sres_zero {R : Type} [CommRing R] {F : Shv R} {V U : Scheme.{0}} (f : V ⟶ U) :
    Sec.res (F := F) f 0 = 0 := map_zero ((F.obj.map f.op).hom)

theorem smap_zero {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} :
    Sec.map φ (0 : Sec F U) = 0 := map_zero ((φ.hom.app (op U)).hom)

theorem smap_res {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (f : V ⟶ U) (x : Sec F U) :
    Sec.map φ (Sec.res f x) = Sec.res f (Sec.map φ x) := by
  have := congrArg (fun h => h.hom x) (φ.hom.naturality f.op)
  simpa only [ModuleCat.hom_comp, LinearMap.comp_apply] using this

theorem le_comp' {Y Z X : Scheme.{0}} {W : Y.Opens} (f : Y ⟶ Z) (g : Z ⟶ X) (U : X.Opens) (k : Y ⟶ X)
    (hk : f ≫ g = k) (hW : W ≤ k ⁻¹ᵁ U) : W ≤ f ⁻¹ᵁ (g ⁻¹ᵁ U) := by
  subst hk; intro w hw; exact hW hw

theorem zc_res {R : Type} [CommRing R] {K : Cx R} {n : ℤ} {X' X : Scheme.{0}} (f : X' ⟶ X) (U' : X'.Opens)
    (U : X.Opens) (h : U' ≤ f ⁻¹ᵁ U) (a : Sec (K.X n) X) (ha : a ∈ Zc K U n) : Sec.res f a ∈ Zc K U' n := by
  rw [mem_Zc] at ha ⊢
  refine ⟨?_, ?_⟩
  · rw [sres_comp, ← Scheme.Hom.resLE_comp_ι f h, ← sres_comp, ha.1, sres_zero]
  · rw [smap_res, ha.2, sres_zero]

theorem res_inj (q : ℕ) (i : ℤ) : ∀ s, Injective ((res _ (tw q i)).X s) := fun s => by
  unfold res; infer_instance

theorem res_neg (q : ℕ) (i : ℤ) : ∀ s < 0, IsZero ((res _ (tw q i)).X s) := fun s hs => by
  unfold res; exact CochainComplex.isZero_of_isStrictlyGE _ 0 s hs

theorem LeafDescOSep_of : LeafDescOSep := by
  intro hD hF q X U m i hL s hs
  have h1 : ∀ n < m, ∀ (W : X.Opens), ∀ a ∈ Zc (res _ (tw q i)) (W.ι ⁻¹ᵁ U) n, ∀ x ∈ W,
      ∃ (V : X.Opens) (h : V ≤ W), x ∈ V ∧ Bd (res _ (tw q i)) (V.ι ⁻¹ᵁ U) n (rs h a) := by
    intro n hn W a ha x hx
    obtain ⟨V, hVW, hxV, hV⟩ := hL x W hx
    obtain ⟨cls, -, hker, -⟩ := hD q n i
    have hz : rs hVW a ∈ Zc (res _ (tw q i)) (V.ι ⁻¹ᵁ U) n :=
      zc_res _ _ _ (le_comp' _ _ U _ (Scheme.homOfLE_ι _ _) le_rfl) a ha
    refine ⟨V, hVW, hxV, (hker _ ⟨_, hz⟩).1 ?_⟩
    have := hV n hn
    exact Subsingleton.elim _ _
  obtain ⟨cls, hsurj, hker, hnat⟩ := hD q m i
  obtain ⟨a, rfl⟩ := hsurj U s
  have hFl := (hF _ (res _ (tw q i)) (res_inj q i) (res_neg q i) X U m h1).1
  have hza' : Sec.res (⊤ : X.Opens).ι a.1 ∈ Zc (res _ (tw q i)) ((⊤ : X.Opens).ι ⁻¹ᵁ U) m :=
    zc_res _ _ _ le_rfl a.1 a.2
  have hB : Bd (res _ (tw q i)) ((⊤ : X.Opens).ι ⁻¹ᵁ U) m (Sec.res (⊤ : X.Opens).ι a.1) := by
    apply hFl ⊤
    intro x _
    by_cases hxU : x ∈ U
    · refine ⟨U, le_top, hxU, ⟨0, sres_zero _, ?_⟩⟩
      have e : rs (le_top : U ≤ ⊤) (Sec.res (⊤ : X.Opens).ι a.1) = 0 := by
        unfold rs; rw [sres_comp, Scheme.homOfLE_ι]; exact a.2.1
      rw [e]; exact smap_zero _
    · obtain ⟨V, hxV, hV0⟩ := hs x hxU
      refine ⟨V, le_top, hxV, ?_⟩
      have e : rs (le_top : V ≤ ⊤) (Sec.res (⊤ : X.Opens).ι a.1) = Sec.res V.ι a.1 := by
        unfold rs; rw [sres_comp, Scheme.homOfLE_ι]
      have hz : Sec.res V.ι a.1 ∈ Zc (res _ (tw q i)) (V.ι ⁻¹ᵁ U) m := zc_res _ _ _ le_rfl a.1 a.2
      rw [e]
      refine (hker _ (⟨_, hz⟩ : Zc _ _ _)).1 ?_
      rw [← hnat V.ι (V.ι ⁻¹ᵁ U) U le_rfl a ⟨_, hz⟩ rfl]
      exact hV0
  have h0 := (hker _ (⟨_, hza'⟩ : Zc _ _ _)).2 hB
  rw [← hnat (⊤ : X.Opens).ι _ U le_rfl a ⟨_, hza'⟩ rfl] at h0
  have hle : U ≤ X.topIso.inv ⁻¹ᵁ ((⊤ : X.Opens).ι ⁻¹ᵁ U) :=
    le_comp' _ _ U (𝟙 X) (Scheme.toIso_inv_ι X) (fun x hx => hx)
  have hid : U ≤ (𝟙 X) ⁻¹ᵁ U := fun x hx => hx
  have key := pull_pull X.topIso.inv (⊤ : X.Opens).ι (Scheme.toIso_inv_ι X) U _ U hle le_rfl hid m i (cls U a)
  rw [h0, map_zero, Hs_pull_id] at key
  exact key.symm

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDescOSepPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDictPfDbl =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafDictPfDbl", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDictPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Types.Pushouts\nimport Mathlib.CategoryTheory.Presentable.Type\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.DictPf

theorem LeafDbl_pf : LeafDbl := by
  refine ⟨fun U => (PreservesPushout.iso disc (yoneda.map U.ι) (yoneda.map U.ι)).symm, ?_, ?_, ?_⟩
  · intro X U
    exact PreservesPushout.inl_iso_inv disc _ _
  · intro X U
    exact PreservesPushout.inr_iso_inv disc _ _
  · intro X' X f U' U h
    dsimp only
    refine (Iso.inv_comp_eq _).1 ?_
    set_option synthInstance.maxHeartbeats 200000 in
      apply pushout.hom_ext
    · have a1 : pushout.inl (opn U').hom (opn U').hom ≫ (PreservesPushout.iso disc (yoneda.map U'.ι) (yoneda.map U'.ι)).hom =
          disc.map (pushout.inl _ _) := PreservesPushout.inl_iso_hom disc _ _
      have a2 : disc.map (pushout.inl (yoneda.map U.ι) (yoneda.map U.ι)) ≫
          (PreservesPushout.iso disc (yoneda.map U.ι) (yoneda.map U.ι)).symm.hom = pushout.inl (opn U).hom (opn U).hom :=
        PreservesPushout.inl_iso_inv disc _ _
      have il : pushout.inl _ _ ≫ Qmap f U' U h = yoneda.map f ≫ pushout.inl _ _ := pushout.inl_desc _ _ _
      show pushout.inl (opn U').hom (opn U').hom ≫ (PreservesPushout.iso disc (yoneda.map U'.ι) (yoneda.map U'.ι)).hom ≫
        disc.map (Qmap f U' U h) ≫ (PreservesPushout.iso disc (yoneda.map U.ι) (yoneda.map U.ι)).symm.hom = _
      erw [← Category.assoc, a1, ← Category.assoc, ← Functor.map_comp, il, Functor.map_comp, Category.assoc, a2]
      exact (pushout.inl_desc _ _ _).symm
    · have a1 : pushout.inr (opn U').hom (opn U').hom ≫ (PreservesPushout.iso disc (yoneda.map U'.ι) (yoneda.map U'.ι)).hom =
          disc.map (pushout.inr _ _) := PreservesPushout.inr_iso_hom disc _ _
      have a2 : disc.map (pushout.inr (yoneda.map U.ι) (yoneda.map U.ι)) ≫
          (PreservesPushout.iso disc (yoneda.map U.ι) (yoneda.map U.ι)).symm.hom = pushout.inr (opn U).hom (opn U).hom :=
        PreservesPushout.inr_iso_inv disc _ _
      have il : pushout.inr _ _ ≫ Qmap f U' U h = yoneda.map f ≫ pushout.inr _ _ := pushout.inr_desc _ _ _
      show pushout.inr (opn U').hom (opn U').hom ≫ (PreservesPushout.iso disc (yoneda.map U'.ι) (yoneda.map U'.ι)).hom ≫
        disc.map (Qmap f U' U h) ≫ (PreservesPushout.iso disc (yoneda.map U.ι) (yoneda.map U.ι)).symm.hom = _
      erw [← Category.assoc, a1, ← Category.assoc, ← Functor.map_comp, il, Functor.map_comp, Category.assoc, a2]
      exact (pushout.inr_desc _ _ _).symm

theorem LeafDict_of' (hD : Cl.LeafDisc) (hE : LeafEv) (hP : LeafPair) : Cl.LeafDict := LeafDict_of hD hE hP LeafDbl_pf

end LateralTheory.CohomologicalPurity.DictPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafDictPfDbl =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafEvPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafEvPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDictPf\npublic import Development.EtaleCohomology.KummerTheory.FlasquePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.KummerTheory.FlasquePf

namespace LateralTheory.CohomologicalPurity.DictPf

section
variable {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}}

theorem ev_res' (m : (free R).obj (yoneda.obj X) ⟶ G) {V : Scheme.{0}} (h : V ⟶ X) :
    (m.hom.app (op V)).hom (freeGen R (yoneda.obj X) V h) = Sec.res h (ev m) := by
  calc (m.hom.app (op V)).hom (freeGen R (yoneda.obj X) V h)
      = (m.hom.app (op V)).hom (freeGen R (yoneda.obj X) V ((yoneda.obj X).map h.op (𝟙 X))) := by simp
    _ = (m.hom.app (op V)).hom (Sec.res h (freeGen R (yoneda.obj X) X (𝟙 X))) := by rw [freeGen_res]
    _ = Sec.res h (ev m) := by
      have := congrArg (fun φ => ModuleCat.Hom.hom φ (freeGen R (yoneda.obj X) X (𝟙 X))) (m.hom.naturality h.op)
      exact this

theorem eq_ofSec (m : (free R).obj (yoneda.obj X) ⟶ G) : m = ofSec G (ev m) := by
  apply ((sheafificationAdjunction _ _).homEquiv _ G).injective
  unfold ofSec
  rw [Equiv.apply_symm_apply]
  apply NatTrans.ext
  funext V
  apply ModuleCat.free_hom_ext
  intro x
  change (m.hom.app V).hom (freeGen R (yoneda.obj X) V.unop x.down) = _
  rw [ev_res']
  unfold toG
  symm
  change ModuleCat.freeDesc _ (ModuleCat.freeMk x) = _
  refine (ModuleCat.freeDesc_apply _ _).trans ?_
  rfl

end

theorem LeafEv_of : LeafEv := by
  intro R _ G X
  refine ⟨?_, ?_, ?_⟩
  · intro m m' h
    rw [eq_ofSec m, eq_ofSec m', h]
  · intro m m'
    rfl
  · intro Y f m
    change (m.hom.app (op Y)).hom ((((free R).map (yoneda.map f)).hom.app (op Y)).hom
      (freeGen R (yoneda.obj Y) Y (𝟙 Y))) = _
    rw [freeGen_map]
    simp only [yoneda_map_app]
    exact ev_res' m f

end LateralTheory.CohomologicalPurity.DictPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafEvPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafGenPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.Functorial\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.CohomologicalPurity.Cl

def LeafGenCart : Prop := ∀ {X Z : Scheme.{0}} (ι : Z ⟶ X) [IsClosedImmersion ι] (V : X.affineOpens) (r : Γ(X, V.1)),
  ∃ z : Spec (CommRingCat.of (Localization.Away r ⧸ (ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))) ⟶ Z,
    IsPullback (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk _))) z
      (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec) ι

def LeafGenKer : Prop := ∀ {X Z : Scheme.{0}} (ι : Z ⟶ X) [IsClosedImmersion ι] (V : X.affineOpens) (r : Γ(X, V.1)),
  (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk
      ((ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))))).ker =
    ι.ker.comap (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec)

theorem LeafGenCart_of (hK : LeafGenKer) : LeafGenCart := by
  intro X Z ι _ V r
  have hK' := hK ι V r
  have hm : IsClosedImmersion (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk
      ((ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))))) :=
    IsClosedImmersion.spec_of_quotient_mk (R := CommRingCat.of (Localization.Away r)) _
  have hfst := Scheme.IdealSheafData.ker_fst_of_isClosedImmersion ι
    (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec)
  let e := IsClosedImmersion.lift (pullback.fst (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1)
    (Localization.Away r))) ≫ V.2.fromSpec) ι) (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk
      ((ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))))) (by rw [hfst, hK'])
  refine ⟨e ≫ pullback.snd _ _, isPullback_of_isClosedImmersion _ ι _ _ ?_ hK'.symm⟩
  rw [Category.assoc, ← pullback.condition, IsClosedImmersion.lift_fac_assoc]

theorem span_loc {d : ℕ} {A : Type} [CommRing A] (I : Ideal A) (a : Fin d → A) (r : A) (ha : ∀ j, a j ∈ I)
    (hra : ∀ y ∈ I, r * y ∈ Ideal.span (Set.range a)) :
    Ideal.span (Set.range (algebraMap A (Localization.Away r) ∘ a)) = I.map (algebraMap A (Localization.Away r)) := by
  rw [Set.range_comp, ← Ideal.map_span]
  apply le_antisymm
  · exact Ideal.map_mono (Ideal.span_le.mpr (by rintro _ ⟨j, rfl⟩; exact ha j))
  · rw [Ideal.map_le_iff_le_comap]
    intro y hy
    rw [Ideal.mem_comap]
    have hu : IsUnit (algebraMap A (Localization.Away r) r) := IsLocalization.Away.algebraMap_isUnit r
    have h1 : algebraMap A (Localization.Away r) (r * y) ∈ (Ideal.span (Set.range a)).map (algebraMap A (Localization.Away r)) :=
      Ideal.mem_map_of_mem _ (hra y hy)
    rw [map_mul] at h1
    obtain ⟨u, hu'⟩ := hu
    have := Ideal.mul_mem_left _ (↑u⁻¹ : Localization.Away r) h1
    rwa [← hu', ← mul_assoc, Units.inv_mul, one_mul] at this

theorem LeafGen_of (hC : LeafChart) (hGR : LeafGenRing) (hKer : LeafGenKer) : LeafGen := by
  have hCart : LeafGenCart := LeafGenCart_of @hKer
  intro d P x hx
  obtain ⟨V, hxV, -, hfg, hch⟩ := hC d P x ⊤ trivial
  obtain ⟨a, r, hr1, ha, hra⟩ := hGR d Γ(P.X, V.1) (P.ι.ker.ideal V) hfg hch
  have := P.cl
  obtain ⟨z, hz⟩ := hCart P.ι V r
  have hxr : x ∈ Set.range P.ι := by
    by_contra h; exact hx (by rw [← SetLike.mem_coe, P.hU]; exact h)
  refine ⟨⟨Localization.Away r, (P.ι.ker.ideal V).map (algebraMap _ _), algebraMap _ _ ∘ a,
    span_loc _ a r ha hra, Spec.map (CommRingCat.ofHom (algebraMap _ _)) ≫ V.2.fromSpec, z, ?_, hz⟩, ?_, ?_⟩
  · intro y hy
    change (_ ≫ V.2.fromSpec) y ∈ P.U
    rw [← SetLike.mem_coe, P.hU]
    rintro ⟨t, ht⟩
    obtain ⟨s, hs, -⟩ := Scheme.exists_preimage_of_isPullback hz y t ht.symm
    apply hy
    rw [← hs]
    intro g hg
    change Ideal.Quotient.mk _ g ∈ s.asIdeal
    rw [Ideal.Quotient.eq_zero_iff_mem.mpr hg]; exact zero_mem _
  · change IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap _ _)) ≫ V.2.fromSpec)
    have h1 := Scheme.isOpenImmersion_SpecMap_localizationAway (R := Γ(P.X, V.1)) r
    have h2 := V.2.isOpenImmersion_fromSpec
    infer_instance
  · have hxV' : x ∈ (V.1 : Set P.X) := hxV
    rw [← V.2.range_fromSpec] at hxV'
    obtain ⟨p, hp⟩ := hxV'
    have hz0 : x ∈ P.X.zeroLocus (U := V.1) (P.ι.ker.ideal V) := by
      rw [← Scheme.IdealSheafData.mem_support_iff_of_mem hxV, ← SetLike.mem_coe, Scheme.Hom.support_ker]; exact subset_closure hxr
    have hIp : ∀ g ∈ P.ι.ker.ideal V, g ∈ p.asIdeal := by
      intro g hg
      have h1 := (Scheme.mem_zeroLocus_iff _ _ _).1 hz0 g hg
      by_contra h2
      apply h1
      rw [← hp]
      change p ∈ V.2.fromSpec ⁻¹ᵁ P.X.basicOpen g
      rw [V.2.fromSpec_preimage_basicOpen]; exact h2
    have hr : p ∈ PrimeSpectrum.basicOpen r := by
      intro h; apply p.2.ne_top; rw [Ideal.eq_top_iff_one]
      have := p.asIdeal.sub_mem h (hIp _ hr1); simpa using this
    have hr' : p ∈ Set.range (PrimeSpectrum.comap (algebraMap Γ(P.X, V.1) (Localization.Away r))) := by
      rw [PrimeSpectrum.localization_away_comap_range (Localization.Away r) r]; exact hr
    obtain ⟨q, hq⟩ := hr'
    refine ⟨q, ?_⟩
    show V.2.fromSpec ((Spec.map (CommRingCat.ofHom (algebraMap Γ(P.X, V.1) (Localization.Away r)))) q) = x
    rw [← hp]
    exact congrArg V.2.fromSpec hq

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenKerPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafGenKerPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafGenPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.CohomologicalPurity.Cl

theorem ker_specMap_mk_appTop {R : CommRingCat.{0}} (I : Ideal R) :
    RingHom.ker (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))).appTop.hom =
      I.comap (Scheme.ΓSpecIso R).hom.hom := by
  have h := Scheme.ΓSpecIso_naturality (CommRingCat.ofHom (Ideal.Quotient.mk I))
  calc RingHom.ker (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))).appTop.hom
      = RingHom.ker ((Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))).appTop ≫
          (Scheme.ΓSpecIso (CommRingCat.of (R ⧸ I))).hom).hom := by
        rw [← RingHom.ker_equiv_comp _ (Scheme.ΓSpecIso _).commRingCatIsoToRingEquiv]; rfl
    _ = RingHom.ker ((Scheme.ΓSpecIso R).hom ≫ CommRingCat.ofHom (Ideal.Quotient.mk I)).hom := by rw [h]; rfl
    _ = _ := by rw [CommRingCat.hom_comp, ← RingHom.comap_ker, CommRingCat.hom_ofHom, Ideal.mk_ker]

theorem comap_iso_inv {A B : CommRingCat.{0}} (e : A ≅ B) (J : Ideal A) :
    J.comap e.inv.hom = J.map e.hom.hom := by
  have h := Ideal.comap_symm (I := J) e.commRingCatIsoToRingEquiv
  exact h

theorem ker_specMap_mk_top {B : CommRingCat.{0}} (IB : Ideal B) :
    (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk IB))).ker.ideal ⟨⊤, isAffineOpen_top _⟩ =
      IB.comap (Scheme.ΓSpecIso B).hom.hom := by
  rw [Scheme.ker_of_isAffine, Scheme.IdealSheafData.ofIdealTop_ideal, ← ker_specMap_mk_appTop]
  convert Ideal.map_id _
  rw [show (homOfLE (X := (Spec (CommRingCat.of B)).Opens) (le_top (a := ⊤))).op = 𝟙 _ from Subsingleton.elim _ _,
    CategoryTheory.Functor.map_id]
  rfl

theorem comap_ideal_top {X : Scheme.{0}} {B : CommRingCat.{0}} (I : X.IdealSheafData) (w : Spec B ⟶ X)
    [IsOpenImmersion w] (V : X.affineOpens) (ψ : Γ(X, V.1) ⟶ B) (hle : w ''ᵁ ⊤ ≤ V.1)
    (key : X.presheaf.map (homOfLE hle).op ≫ (w.appIso ⊤).hom = ψ ≫ (Scheme.ΓSpecIso B).inv) :
    (I.comap w).ideal ⟨⊤, isAffineOpen_top _⟩ = (I.ideal V).map (ψ ≫ (Scheme.ΓSpecIso B).inv).hom := by
  rw [Scheme.IdealSheafData.ideal_comap_of_isOpenImmersion]
  rw [← Scheme.IdealSheafData.map_ideal I (U := ⟨w ''ᵁ ⊤, (isAffineOpen_top _).image_of_isOpenImmersion w⟩) (V := V) hle]
  rw [comap_iso_inv, Ideal.map_map, ← CommRingCat.hom_comp]
  exact congrArg (fun f => Ideal.map (CommRingCat.Hom.hom f) (I.ideal V)) key

theorem key_gen {X : Scheme.{0}} {U : X.Opens} (hU : IsAffineOpen U) (r : Γ(X, U))
    [IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec)]
    (hle : (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec) ''ᵁ ⊤ ≤ U) :
    X.presheaf.map (homOfLE hle).op ≫
      (Scheme.Hom.appIso (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec) ⊤).hom =
      CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r)) ≫ (Scheme.ΓSpecIso _).inv := by
  have e : (⊤ : (Spec (CommRingCat.of (Localization.Away r))).Opens) ≤
      (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec) ⁻¹ᵁ U := by
    intro x _
    exact hle ⟨x, trivial, rfl⟩
  have e1 := Scheme.Hom.appLE_appIso_inv
    (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec) e
  have h1 : (⊤ : (Spec Γ(X, U)).Opens) ≤ hU.fromSpec ⁻¹ᵁ U := hU.fromSpec_preimage_self.ge
  have h2 : (⊤ : (Spec (CommRingCat.of (Localization.Away r))).Opens) ≤
      Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ⁻¹ᵁ ⊤ := le_top
  have a1 : hU.fromSpec.appLE U ⊤ h1 = (Scheme.ΓSpecIso _).inv := by
    rw [Scheme.Hom.appLE, hU.fromSpec_app_self, Category.assoc, ← Functor.map_comp]
    rw [show ((eqToHom hU.fromSpec_preimage_self).op ≫ (homOfLE h1).op : Opposite.op (⊤ : (Spec Γ(X, U)).Opens) ⟶ Opposite.op ⊤) = 𝟙 _ from Subsingleton.elim _ _]
    rw [CategoryTheory.Functor.map_id, Category.comp_id]
  have a2 : (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r)))).appLE ⊤ ⊤ h2 =
      (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r)))).appTop := by
    rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]; rfl
  calc _ = (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, U) (Localization.Away r))) ≫ hU.fromSpec).appLE U ⊤ e := by
        rw [← e1, Category.assoc, Iso.inv_hom_id, Category.comp_id]
    _ = _ := by
      rw [← Scheme.Hom.appLE_comp_appLE _ _ U ⊤ ⊤ h1 h2, a1, a2, Scheme.ΓSpecIso_inv_naturality]
      rfl

theorem hle_loc {X : Scheme.{0}} (V : X.affineOpens) (r : Γ(X, V.1))
    [IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec)] :
    (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec) ''ᵁ ⊤ ≤ V.1 := by
  rw [Scheme.Hom.image_top_eq_opensRange]
  rintro _ ⟨y, rfl⟩
  show V.2.fromSpec _ ∈ (V.1 : Set X)
  rw [← V.2.range_fromSpec]; exact ⟨_, rfl⟩

theorem LeafGenKer_of : LeafGenKer := by
  intro X Z ι _ V r
  have : IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, V.1) (Localization.Away r))) ≫ V.2.fromSpec) := by
    have h1 := Scheme.isOpenImmersion_SpecMap_localizationAway (R := Γ(X, V.1)) r
    have h2 := V.2.isOpenImmersion_fromSpec
    infer_instance
  have hle := hle_loc V r
  apply Scheme.IdealSheafData.ext_of_isAffine
  have hL := ker_specMap_mk_top (B := CommRingCat.of (Localization.Away r))
    ((ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))
  have hR := comap_ideal_top ι.ker _ V _ hle (key_gen V.2 r hle)
  refine hL.trans (Eq.trans ?_ hR.symm)
  have hc := comap_iso_inv (Scheme.ΓSpecIso (CommRingCat.of (Localization.Away r))).symm
    ((ι.ker.ideal V).map (algebraMap Γ(X, V.1) (Localization.Away r)))
  simp only [Iso.symm_inv, Iso.symm_hom] at hc
  rw [hc, Ideal.map_map]
  rfl

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenKerPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenRingPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafGenRingPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace LateralTheory.CohomologicalPurity.GenRingPf

open LateralTheory.CohomologicalPurity

theorem inj_sq {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A) (h : Nbhd φ I) (y : A)
    (hy : φ y ∈ (I ^ 2).map φ) : y ∈ I ^ 2 := by
  let _ := φ.toAlgebra
  have _ : Algebra.Etale A B := h.1
  let e := RingEquiv.ofBijective _ h.2
  let f : B →ₐ[A] A ⧸ I :=
    { toRingHom := e.symm.toRingHom.comp (Ideal.Quotient.mk (I.map φ))
      commutes' := fun a => by
        change e.symm (Ideal.Quotient.mk _ (φ a)) = Ideal.Quotient.mk I a
        rw [e.symm_apply_eq]
        rfl }
  let g : A ⧸ I ^ 2 →ₐ[A] A ⧸ I := Ideal.Quotient.factorₐ A (Ideal.pow_le_self two_ne_zero)
  have hg : Function.Surjective g := Ideal.Quotient.factor_surjective (Ideal.pow_le_self two_ne_zero)
  have hn : IsNilpotent (RingHom.ker (g : A ⧸ I ^ 2 →+* A ⧸ I)) := by
    refine ⟨2, ?_⟩
    rw [Ideal.zero_eq_bot, ← le_bot_iff]
    refine le_trans (le_of_eq (pow_two _)) ?_
    refine Ideal.mul_le.mpr fun x hx z hz => ?_
    obtain ⟨x, rfl⟩ := Ideal.Quotient.mk_surjective x
    obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z
    have hx' : x ∈ I := Ideal.Quotient.eq_zero_iff_mem.mp hx
    have hz' : z ∈ I := Ideal.Quotient.eq_zero_iff_mem.mp hz
    rw [Ideal.mem_bot, ← map_mul, Ideal.Quotient.eq_zero_iff_mem, pow_two]
    exact Ideal.mul_mem_mul hx' hz'
  let σ := Algebra.FormallySmooth.liftOfSurjective f g hg hn
  have hσ : ∀ a, σ (φ a) = Ideal.Quotient.mk (I ^ 2) a := fun a => σ.commutes a
  have hc : (σ : B →+* A ⧸ I ^ 2).comp φ = Ideal.Quotient.mk (I ^ 2) := RingHom.ext hσ
  have h0 := Ideal.mem_map_of_mem (σ : B →+* A ⧸ I ^ 2) hy
  rw [Ideal.map_map, hc, Ideal.map_quotient_self, Ideal.mem_bot] at h0
  change σ (φ y) = 0 at h0
  rw [hσ] at h0
  exact Ideal.Quotient.eq_zero_iff_mem.mp h0

theorem approx {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B) (I : Ideal A)
    (hs : ∀ b : B, ∃ c : A, b - φ c ∈ I.map φ) (J : Ideal A) (T : Set B)
    (hT : ∀ t ∈ T, t ∈ I.map φ ∧ ∃ c ∈ J, t - φ c ∈ I.map φ ^ 2) :
    ∀ z ∈ Ideal.span T, ∃ c ∈ J, z - φ c ∈ I.map φ ^ 2 := by
  have hle : Ideal.span T ≤ I.map φ := Ideal.span_le.mpr fun t ht => (hT t ht).1
  intro z hz
  induction hz using Submodule.span_induction with
  | mem t ht => exact (hT t ht).2
  | zero => exact ⟨0, J.zero_mem, by simp⟩
  | add x y _ _ ihx ihy =>
    obtain ⟨c, hc, hxc⟩ := ihx
    obtain ⟨c', hc', hyc⟩ := ihy
    refine ⟨c + c', J.add_mem hc hc', ?_⟩
    have : x + y - φ (c + c') = (x - φ c) + (y - φ c') := by rw [map_add (f := _)]; ring
    rw [this]; exact Ideal.add_mem _ hxc hyc
  | smul b x hx ih =>
    obtain ⟨c, hc, hxc⟩ := ih
    obtain ⟨c', hbc⟩ := hs b
    refine ⟨c' * c, J.mul_mem_left _ hc, ?_⟩
    have : b • x - φ (c' * c) = (b - φ c') * x + φ c' * (x - φ c) := by
      rw [map_mul, smul_eq_mul]; ring
    rw [this]
    refine Ideal.add_mem _ ?_ (Ideal.mul_mem_left _ _ hxc)
    rw [pow_two]
    exact Ideal.mul_mem_mul hbc (hle hx)

end LateralTheory.CohomologicalPurity.GenRingPf

open LateralTheory.CohomologicalPurity.GenRingPf in
theorem LateralTheory.CohomologicalPurity.Cl.LeafGenRing_of : LateralTheory.CohomologicalPurity.Cl.LeafGenRing := by
  intro d A _ I hI hC
  obtain ⟨B, _, φ, ψ, hN, _, hspan, _⟩ := hC
  have hs : ∀ b : B, ∃ c : A, b - φ c ∈ I.map φ := by
    intro b
    obtain ⟨x, hx⟩ := hN.2.2 (Ideal.Quotient.mk _ b)
    obtain ⟨c, rfl⟩ := Ideal.Quotient.mk_surjective x
    refine ⟨c, ?_⟩
    rw [Ideal.quotientMap_mk, Ideal.Quotient.eq] at hx
    have := (I.map φ).neg_mem hx
    rwa [neg_sub] at this
  have hI1 : ∀ z ∈ I.map φ, ∃ c ∈ I, z - φ c ∈ I.map φ ^ 2 :=
    approx φ I hs I (φ '' I) (fun t ht => by
      obtain ⟨i, hi, rfl⟩ := ht
      exact ⟨Ideal.mem_map_of_mem _ hi, i, hi, by simp⟩)
  have hX : ∀ j, ∃ c ∈ I, ψ (MvPolynomial.X j) - φ c ∈ I.map φ ^ 2 := fun j =>
    hI1 _ (hspan ▸ Ideal.subset_span ⟨j, rfl⟩)
  choose a ha hax using hX
  have hle : I ≤ Ideal.span (Set.range a) ⊔ I • I := by
    intro y hy
    have hy' : φ y ∈ Ideal.span (Set.range fun j => ψ (MvPolynomial.X j)) := hspan ▸ Ideal.mem_map_of_mem _ hy
    obtain ⟨c, hc, hyc⟩ := approx φ I hs (Ideal.span (Set.range a)) _ (fun t ht => by
      obtain ⟨j, rfl⟩ := ht
      exact ⟨hspan ▸ Ideal.subset_span ⟨j, rfl⟩, a j, Ideal.subset_span ⟨j, rfl⟩, hax j⟩) _ hy'
    have h2 : y - c ∈ I ^ 2 := inj_sq φ I hN _ (by rw [map_sub, Ideal.map_pow]; exact hyc)
    have : y = c + (y - c) := by ring
    rw [this]
    refine Submodule.add_mem_sup hc ?_
    rw [Ideal.smul_eq_mul, ← pow_two]; exact h2
  obtain ⟨r, hr, hrle⟩ := Submodule.exists_sub_one_mem_and_smul_le_of_fg_of_le_sup hI le_rfl hle
  refine ⟨a, r, hr, ha, fun y hy => ?_⟩
  have := hrle (Submodule.smul_mem_pointwise_smul y r I hy)
  simpa [smul_eq_mul] using this
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafGenRingPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafMatPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafMatPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Matrix

namespace LateralTheory.CohomologicalPurity.MatPf

theorem gens {d : ℕ} {A : Type} [CommRing A] (x y : Fin d → A)
    (h : Ideal.span (Set.range x) ≤ Ideal.span (Set.range y)) :
    ∃ N : Matrix (Fin d) (Fin d) A, x = N *ᵥ y := by
  have : ∀ i, ∃ c : Fin d → A, ∑ j, c j * y j = x i := fun i =>
    (Ideal.mem_span_range_iff_exists_fun).1 (h (Ideal.subset_span ⟨i, rfl⟩))
  choose c hc using this
  exact ⟨Matrix.of c, funext fun i => by simp [mulVec, dotProduct, hc]⟩

theorem red {d : ℕ} {A : Type} [CommRing A] (x y : Fin d → A) (N N' T : Matrix (Fin d) (Fin d) A)
    (hy : y = N *ᵥ x) (hx : x = N' *ᵥ y) : y = (N + T * (1 - N' * N)) *ᵥ x := by
  have : (1 - N' * N) *ᵥ x = 0 := by
    rw [sub_mulVec, one_mulVec, ← mulVec_mulVec, ← hy, ← hx, sub_self]
  rw [add_mulVec, ← mulVec_mulVec, this, mulVec_zero, add_zero, hy]

theorem glue_dom (hD : ∀ (d : ℕ) (D : Type) [CommRing D] [IsDomain D] (N E N' : Matrix (Fin d) (Fin d) D),
    N' * N + E = 1 → ∃ T : Matrix (Fin d) (Fin d) D, (N + T * E).det ≠ 0) : LateralTheory.CohomologicalPurity.Cl.LeafMat := by
  intro d A _ x y hxy p
  obtain ⟨N, hN⟩ := gens y x hxy.ge
  obtain ⟨N', hN'⟩ := gens x y hxy.le
  let f := Ideal.Quotient.mk p.asIdeal
  obtain ⟨T₀, hT₀⟩ := hD d (A ⧸ p.asIdeal) (f.mapMatrix N) (f.mapMatrix (1 - N' * N)) (f.mapMatrix N')
    (by rw [← map_mul, ← map_add (f := _), add_sub_cancel, map_one])
  choose T hT using fun i j => Ideal.Quotient.mk_surjective (I := p.asIdeal) (T₀ i j)
  refine ⟨N + Matrix.of T * (1 - N' * N), ?_, red x y N N' _ hN hN'⟩
  intro hm
  apply hT₀
  have h1 : f.mapMatrix (Matrix.of T) = T₀ := by ext i j; simp [f, hT]
  have := RingHom.map_det f (N + Matrix.of T * (1 - N' * N))
  rw [map_add (f := _), map_mul, h1, (Ideal.Quotient.eq_zero_iff_mem).2 hm] at this
  exact this.symm

theorem fld {d : ℕ} {k : Type} [Field k] (N E N' : Matrix (Fin d) (Fin d) k) (h : N' * N + E = 1) :
    ∃ T : Matrix (Fin d) (Fin d) k, ∀ s : k, s ≠ 0 → (N + (s • T) * E).det ≠ 0 := by
  classical
  let n := Matrix.toLin' N
  obtain ⟨C, hC⟩ := Submodule.exists_isCompl (LinearMap.range n)
  obtain ⟨K', hK⟩ := Submodule.exists_isCompl (LinearMap.ker n)
  have hr : Module.finrank k (LinearMap.ker n) = Module.finrank k C := by
    have h1 := LinearMap.finrank_range_add_finrank_ker n
    have h2 := Submodule.finrank_add_eq_of_isCompl hC
    omega
  let e := LinearEquiv.ofFinrankEq _ _ hr
  let t : (Fin d → k) →ₗ[k] (Fin d → k) :=
    C.subtype ∘ₗ e.toLinearMap ∘ₗ Submodule.linearProjOfIsCompl _ _ hK
  refine ⟨LinearMap.toMatrix' t, fun s hs hdet => ?_⟩
  obtain ⟨v, hv0, hv⟩ := (Matrix.exists_mulVec_eq_zero_iff).2 hdet
  apply hv0
  have hE : E = 1 - N' * N := by rw [← h]; abel
  rw [add_mulVec, ← mulVec_mulVec, smul_mulVec, LinearMap.toMatrix'_mulVec] at hv
  have htC : ∀ w, t w ∈ C := fun w => (e _).2
  have hnv : n v = 0 := by
    have hm : n v ∈ C := by
      have : n v = -(s • t (E *ᵥ v)) := eq_neg_of_add_eq_zero_left (by simpa [n] using hv)
      rw [this]; exact C.neg_mem (C.smul_mem s (htC _))
    exact (Submodule.disjoint_def.1 hC.disjoint) _ (LinearMap.mem_range_self n v) hm
  have hNv : N *ᵥ v = 0 := by simpa [n] using hnv
  have hw : E *ᵥ v = v := by
    rw [hE, sub_mulVec, one_mulVec, ← mulVec_mulVec, hNv, mulVec_zero, sub_zero]
  rw [hw, hNv, zero_add, smul_eq_zero] at hv
  have htv : t v = 0 := hv.resolve_left hs
  have hker : v ∈ LinearMap.ker n := hnv
  have hp : Submodule.linearProjOfIsCompl _ _ hK v = ⟨v, hker⟩ :=
    Submodule.linearProjOfIsCompl_apply_left hK ⟨v, hker⟩
  have : e ⟨v, hker⟩ = 0 := by
    apply Subtype.ext
    have := htv
    simp only [t, LinearMap.comp_apply, hp] at this
    exact this
  have he : e ⟨v, hker⟩ = e 0 := this.trans (e.toLinearMap.map_zero).symm
  have := congrArg Subtype.val (e.injective he)
  simpa using this

theorem dom (d : ℕ) (D : Type) [CommRing D] [IsDomain D] (N E N' : Matrix (Fin d) (Fin d) D)
    (h : N' * N + E = 1) : ∃ T : Matrix (Fin d) (Fin d) D, (N + T * E).det ≠ 0 := by
  classical
  let g := algebraMap D (FractionRing D)
  obtain ⟨T, hT⟩ := fld (g.mapMatrix N) (g.mapMatrix E) (g.mapMatrix N')
    (by rw [← map_mul, ← map_add (f := _), h, map_one])
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (nonZeroDivisors D)
    (fun ij : Fin d × Fin d => T ij.1 ij.2)
  choose T' hT' using fun i j => hb (i, j)
  have h1 : g.mapMatrix (Matrix.of T') = g b • T := by
    ext i j; simp [g, hT', Algebra.smul_def]
  have hne : g b ≠ 0 := IsFractionRing.to_map_ne_zero_of_mem_nonZeroDivisors b.2
  refine ⟨Matrix.of T', fun h0 => hT (g b) hne ?_⟩
  have := RingHom.map_det g (N + Matrix.of T' * E)
  rw [h0, map_zero, map_add (f := _), map_mul, h1] at this
  exact this.symm

end LateralTheory.CohomologicalPurity.MatPf

theorem LateralTheory.CohomologicalPurity.Cl.LeafMat_of : LateralTheory.CohomologicalPurity.Cl.LeafMat := LateralTheory.CohomologicalPurity.MatPf.glue_dom LateralTheory.CohomologicalPurity.MatPf.dom
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafMatPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafNbPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafNbPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.CohomologicalPurity.NbPf

variable {A B : Type} [CommRing A] [CommRing B]

def psi (φ : A →+* B) (I : Ideal A) (hb : Function.Bijective (Ideal.quotientMap (I.map φ) φ Ideal.le_comap_map)) :
    B →+* A ⧸ I :=
  (RingEquiv.ofBijective _ hb).symm.toRingHom.comp (Ideal.Quotient.mk (I.map φ))

theorem psi_comp (φ : A →+* B) (I : Ideal A) (hb) : (psi φ I hb).comp φ = Ideal.Quotient.mk I := by
  ext a
  simp only [psi, RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe]
  rw [RingEquiv.symm_apply_eq]
  simp [RingEquiv.ofBijective_apply, Ideal.quotientMap_mk]

theorem isPushout_psi (φ : A →+* B) (I : Ideal A) (hb) :
    IsPushout (CommRingCat.ofHom φ) (CommRingCat.ofHom (Ideal.Quotient.mk I))
      (CommRingCat.ofHom (psi φ I hb)) (𝟙 (CommRingCat.of (A ⧸ I))) := by
  refine ⟨⟨by ext a; simpa using congrArg (fun f => f a) (psi_comp φ I hb)⟩, ⟨PushoutCocone.IsColimit.mk _
    (fun s => s.inr) ?_ ?_ ?_⟩⟩
  · intro s
    have hk : I.map φ ≤ RingHom.ker s.inl.hom := by
      rw [Ideal.map_le_iff_le_comap]
      intro i hi
      have := congrArg (fun f => f.hom i) s.condition
      simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply] at this
      simp [RingHom.mem_ker, this, Ideal.Quotient.eq_zero_iff_mem.mpr hi]
    ext b
    obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (psi φ I hb b)
    have e1 : Ideal.Quotient.mk (I.map φ) (φ a) = Ideal.Quotient.mk (I.map φ) b := by
      have : (RingEquiv.ofBijective _ hb) (psi φ I hb b) = Ideal.Quotient.mk (I.map φ) b := by
        simp [psi]
      rw [← this, ← ha]; simp [RingEquiv.ofBijective_apply, Ideal.quotientMap_mk]
    rw [Ideal.Quotient.eq] at e1
    have e2 : s.inl.hom (φ a) = s.inl.hom b := by
      have := hk e1; rw [RingHom.mem_ker, map_sub, sub_eq_zero] at this; exact this
    have e3 := congrArg (fun f => f.hom a) s.condition
    simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply] at e3
    simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply, ← ha]
    rw [← e2, e3]
  · intro s; simp
  · intro s m _ h2; simpa using h2

theorem nb (hE : LeafExc) : Cl.LeafNb := by
  intro hA1 q A B _ _ φ I J hN hJ h
  subst hJ
  obtain ⟨he, hb⟩ := hN
  have : Etale (Spec.map (CommRingCat.ofHom φ)) := HasRingHomProperty.Spec_iff.mpr he
  have : IsClosedImmersion (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))) :=
    IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
  have hP := isPullback_SpecMap_of_isPushout _ _ _ _ (isPushout_psi φ I hb)
  rw [Spec.map_id] at hP
  refine hE hA1 q (Spec.map (CommRingCat.ofHom φ)) (Spec.map (CommRingCat.ofHom (psi φ I hb)))
    (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk I))) hP (off B (I.map φ)) (off A I) ?_ (Cl.off_map φ I)
  change (PrimeSpectrum.zeroLocus (I : Set A))ᶜ = _
  congr 1
  have hr := range_comap_of_surjective _ (Ideal.Quotient.mk I) Ideal.Quotient.mk_surjective
  rw [Ideal.mk_ker] at hr
  rw [← hr]; rfl

end LateralTheory.CohomologicalPurity.NbPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafNbPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafOffPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafOffPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory AlgebraicGeometry

namespace LateralTheory.CohomologicalPurity.Cl

theorem LeafOff_of : LeafOff := by
  intro d P F
  apply le_antisymm F.h
  intro y hy
  change y ∉ PrimeSpectrum.zeroLocus (F.I : Set F.B)
  intro hz
  have hk : RingHom.ker (Ideal.Quotient.mk F.I) = F.I := Ideal.mk_ker
  have hr : y ∈ Set.range (PrimeSpectrum.comap (Ideal.Quotient.mk F.I)) := by
    rw [range_comap_of_surjective _ _ Ideal.Quotient.mk_surjective, hk]; exact hz
  obtain ⟨y0, rfl⟩ := hr
  have hw := congrArg (fun g => g.base y0) F.cart.w
  simp only [Scheme.Hom.comp_base] at hw
  have hU : F.w.base ((Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk F.I))).base y0) ∈ (P.U : Set P.X) := hy
  rw [P.hU] at hU
  exact hU ⟨F.z.base y0, hw.symm⟩

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafOffPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafPairPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafPairPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDictPf\npublic import Development.EtaleCohomology.KummerTheory.FlasquePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Types.Pushouts\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.KummerTheory.FlasquePf

namespace LateralTheory.CohomologicalPurity.LeafPairPf

instance presFreeMod (R : Type) [CommRing R] :
    PreservesColimitsOfShape WalkingSpan (ModuleCat.free (ULift.{1, 0} R)) :=
  (ModuleCat.adj (ULift.{1, 0} R)).leftAdjoint_preservesColimits.preservesColimitsOfShape

instance presL (R : Type) [CommRing R] :
    PreservesColimitsOfShape WalkingSpan (uliftFunctor.{1, 0} ⋙ ModuleCat.free (ULift.{1, 0} R)) :=
  inferInstance

instance presFreeP (R : Type) [CommRing R] : PreservesColimitsOfShape WalkingSpan (freeP R) := by
  unfold freeP; infer_instance

instance presFree (R : Type) [CommRing R] : PreservesColimitsOfShape WalkingSpan (free R) := by
  unfold free; infer_instance

theorem gen_eq {R : Type} [CommRing R] {G : Shv R} {X V : Scheme.{0}} (m : (free R).obj (yoneda.obj X) ⟶ G)
    (g : V ⟶ X) : (m.hom.app (op V)).hom (freeGen R (yoneda.obj X) V g) = Sec.res g (DictPf.ev m) := by
  have nat := congrArg (fun k => k.hom (freeGen R (yoneda.obj X) X (𝟙 X))) (m.hom.naturality g.op)
  simp only [ModuleCat.hom_comp, LinearMap.coe_comp, Function.comp_apply] at nat
  change _ = (G.obj.map g.op).hom ((m.hom.app (op X)).hom (freeGen R (yoneda.obj X) X (𝟙 X)))
  rw [← nat]
  change _ = (m.hom.app (op V)).hom (Sec.res g (freeGen R (yoneda.obj X) X (𝟙 X)))
  rw [freeGen_res]
  congr 2

theorem ext_gen {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} (m m' : (free R).obj (yoneda.obj X) ⟶ G)
    (h : DictPf.ev m = DictPf.ev m') : m = m' := by
  apply Sheaf.hom_ext
  apply sheafify_hom_ext _ _ _ G.property
  ext V : 2
  apply ModuleCat.free_hom_ext
  intro x
  change (m.hom.app V).hom (freeGen R (yoneda.obj X) V.unop x.down) = (m'.hom.app V).hom (freeGen R (yoneda.obj X) V.unop x.down)
  rw [gen_eq m x.down, gen_eq m' x.down, h]

theorem ev_ofSec {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} (s : Sec G X) : DictPf.ev (ofSec G s) = s :=
  ofSec_gen G s

theorem ev_pre {R : Type} [CommRing R] {G : Shv R} {Y X : Scheme.{0}} (f : Y ⟶ X)
    (m : (free R).obj (yoneda.obj X) ⟶ G) : DictPf.ev ((free R).map (yoneda.map f) ≫ m) = Sec.res f (DictPf.ev m) := by
  rw [← gen_eq]
  change (m.hom.app (op Y)).hom ((((free R).map (yoneda.map f)).hom.app (op Y)).hom (freeGen R (yoneda.obj Y) Y (𝟙 Y))) = _
  rw [freeGen_map]
  congr 2

theorem LeafPair_of : DictPf.LeafPair := by
  intro R _ G X U
  refine ⟨fun s s' hs => ?_, fun m m' h1 h2 => ?_⟩
  · have w : (free R).map (yoneda.map U.ι) ≫ ofSec G s = (free R).map (yoneda.map U.ι) ≫ ofSec G s' := by
      apply ext_gen
      rw [ev_pre, ev_pre, ev_ofSec, ev_ofSec]; exact hs
    refine ⟨(PreservesPushout.iso (free R) (yoneda.map U.ι) (yoneda.map U.ι)).inv ≫ pushout.desc _ _ w, ?_, ?_⟩
    · rw [← Category.assoc, PreservesPushout.inl_iso_inv, pushout.inl_desc, ev_ofSec]
    · rw [← Category.assoc, PreservesPushout.inr_iso_inv, pushout.inr_desc, ev_ofSec]
  · apply (cancel_epi (PreservesPushout.iso (free R) (yoneda.map U.ι) (yoneda.map U.ι)).hom).1
    apply pushout.hom_ext
    · rw [← Category.assoc, ← Category.assoc, PreservesPushout.inl_iso_hom]; exact h1
    · rw [← Category.assoc, ← Category.assoc, PreservesPushout.inr_iso_hom]; exact h2

end LateralTheory.CohomologicalPurity.LeafPairPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafPairPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafStepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafStepPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\npublic import Development.EtaleCohomology.KummerTheory.ContCut\npublic import Development.EtaleCohomology.KummerTheory.FlasquePf\npublic import Development.EtaleCohomology.KummerTheory.GluePf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

variable {R : Type} [CommRing R]

theorem res_comp {G : Shv R} {A B C : Scheme.{0}} (f : A ⟶ B) (g : B ⟶ C) (x : Sec G C) :
    Sec.res (f ≫ g) x = Sec.res f (Sec.res g x) := by
  show (G.obj.map (f ≫ g).op).hom x = (G.obj.map f.op).hom ((G.obj.map g.op).hom x)
  rw [op_comp, Functor.map_comp]; rfl

theorem res_sub {G : Shv R} {A B : Scheme.{0}} (f : A ⟶ B) (x y : Sec G B) :
    Sec.res f (x - y) = Sec.res f x - Sec.res f y := map_sub (G.obj.map f.op).hom x y

theorem map_sub' {F G : Shv R} (φ : F ⟶ G) {A : Scheme.{0}} (x y : Sec F A) :
    Sec.map φ (x - y) = Sec.map φ x - Sec.map φ y := map_sub (φ.hom.app (op A)).hom x y

theorem map_zero' {F G : Shv R} (φ : F ⟶ G) {A : Scheme.{0}} : Sec.map φ (0 : Sec F A) = 0 :=
  map_zero (φ.hom.app (op A)).hom

theorem map_comp' {F G H : Shv R} (φ : F ⟶ G) (ψ : G ⟶ H) {A : Scheme.{0}} (x : Sec F A) :
    Sec.map (φ ≫ ψ) x = Sec.map ψ (Sec.map φ x) := rfl

theorem map_res {F G : Shv R} (φ : F ⟶ G) {A B : Scheme.{0}} (f : A ⟶ B) (x : Sec F B) :
    Sec.map φ (Sec.res f x) = Sec.res f (Sec.map φ x) := by
  show (φ.hom.app (op A)).hom ((F.obj.map f.op).hom x) = (G.obj.map f.op).hom ((φ.hom.app (op B)).hom x)
  exact congrArg (fun m => ModuleCat.Hom.hom m x) (φ.hom.naturality f.op)

theorem van_rs {G : Shv R} {X : Scheme.{0}} {U V W : X.Opens} (h : V ≤ W) (b : Sec G W.toScheme)
    (hb : Sec.res (W.ι ⁻¹ᵁ U).ι b = 0) : Sec.res (V.ι ⁻¹ᵁ U).ι (rs h b) = 0 := by
  have e : V.ι ⁻¹ᵁ U ≤ (X.homOfLE h) ⁻¹ᵁ (W.ι ⁻¹ᵁ U) := by
    rw [← Scheme.Hom.comp_preimage, Scheme.homOfLE_ι]
  have hc : (V.ι ⁻¹ᵁ U).ι ≫ X.homOfLE h = (X.homOfLE h).resLE (W.ι ⁻¹ᵁ U) (V.ι ⁻¹ᵁ U) e ≫ (W.ι ⁻¹ᵁ U).ι :=
    (Scheme.Hom.resLE_comp_ι _ e).symm
  show Sec.res (V.ι ⁻¹ᵁ U).ι (Sec.res (X.homOfLE h) b) = 0
  rw [← res_comp, hc, res_comp, hb]
  exact map_zero _

theorem rs_rs {G : Shv R} {X : Scheme.{0}} {T V W : X.Opens} (h : V ≤ W) (h' : T ≤ V) (a : Sec G W.toScheme) :
    rs h' (rs h a) = rs (h'.trans h) a := (LeafRs_of R G X T V W h h' a a).2

def LeafSep : Prop := ∀ (R : Type) [CommRing R] (G : Shv R) (X : Scheme.{0}) (W : X.Opens) (s : Sec G W.toScheme),
  (∀ x ∈ W, ∃ (V : X.Opens) (h : V ≤ W), x ∈ V ∧ rs h s = 0) → s = 0

def LeafSNloc : Prop := ∀ (R : Type) [CommRing R] (G : Shv R) (X : Scheme.{0}) (U W : X.Opens) (c : Sec G W.toScheme),
  (∀ x ∈ W, ∃ (V : X.Opens) (h : V ≤ W), x ∈ V ∧ Sec.res (V.ι ⁻¹ᵁ U).ι (rs h c) = 0) → Sec.res (W.ι ⁻¹ᵁ U).ι c = 0

def LeafSNext : Prop := ∀ (R : Type) [CommRing R] (G : Shv R) [Injective G] (X : Scheme.{0}) (U V W : X.Opens)
  (h : V ≤ W) (c : Sec G V.toScheme), Sec.res (V.ι ⁻¹ᵁ U).ι c = 0 →
  ∃ c' : Sec G W.toScheme, Sec.res (W.ι ⁻¹ᵁ U).ι c' = 0 ∧ rs h c' = c

end LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

namespace LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

variable {R : Type} [CommRing R]

theorem map_rs {F G : Shv R} (φ : F ⟶ G) {X : Scheme.{0}} {V W : X.Opens} (h : V ≤ W) (x : Sec F W.toScheme) :
    Sec.map φ (rs h x) = rs h (Sec.map φ x) := map_res _ _ _

theorem rs_sub {G : Shv R} {X : Scheme.{0}} {V W : X.Opens} (h : V ≤ W) (x y : Sec G W.toScheme) :
    rs h (x - y) = rs h x - rs h y := res_sub _ _ _

def BdG (K : Cx R) {X : Scheme.{0}} (U : X.Opens) (n : ℤ) (W : X.Opens) : AddSubgroup (Sec (K.X n) W.toScheme) :=
  (((K.X (n - 1)).obj.map (W.ι ⁻¹ᵁ U).ι.op).hom.toAddMonoidHom.ker).map
    ((K.d (n - 1) n).hom.app (op W.toScheme)).hom.toAddMonoidHom

theorem mem_BdG {K : Cx R} {X : Scheme.{0}} {U : X.Opens} {n : ℤ} {W : X.Opens} (a : Sec (K.X n) W.toScheme) :
    a ∈ BdG K U n W ↔ Bd K (W.ι ⁻¹ᵁ U) n a := by
  constructor
  · rintro ⟨b, hb, rfl⟩; exact ⟨b, hb, rfl⟩
  · rintro ⟨b, hb, rfl⟩; exact ⟨b, hb, rfl⟩

theorem bd_of_BN {K : Cx R} {X : Scheme.{0}} {U : X.Opens} {n : ℤ} {W : X.Opens} {a : Sec (K.X n) W.toScheme}
    (ha : a ∈ BN K U n W) : Bd K (W.ι ⁻¹ᵁ U) n a :=
  (mem_BdG a).1 ((AddSubgroup.closure_le _).2 (fun b hb => (mem_BdG b).2 hb) ha)

theorem BN_of_bd {K : Cx R} {X : Scheme.{0}} {U : X.Opens} {n : ℤ} {W : X.Opens} {a : Sec (K.X n) W.toScheme}
    (ha : Bd K (W.ι ⁻¹ᵁ U) n a) : a ∈ BN K U n W := AddSubgroup.subset_closure ha

theorem bd_rs {K : Cx R} {X : Scheme.{0}} {U V W : X.Opens} {n : ℤ} (h : V ≤ W) {a : Sec (K.X n) W.toScheme}
    (ha : Bd K (W.ι ⁻¹ᵁ U) n a) : Bd K (V.ι ⁻¹ᵁ U) n (rs h a) := by
  obtain ⟨b, hb, rfl⟩ := ha
  exact ⟨rs h b, van_rs h b hb, map_res _ _ _⟩

theorem BN_rs {K : Cx R} {X : Scheme.{0}} {U V W : X.Opens} {n : ℤ} (h : V ≤ W) :
    ∀ a ∈ BN K U n W, rs h a ∈ BN K U n V := by
  intro a ha
  have : BN K U n W ≤ (BN K U n V).comap ((K.X n).obj.map (X.homOfLE h).op).hom.toAddMonoidHom :=
    (AddSubgroup.closure_le _).2 fun b hb => BN_of_bd (bd_rs h hb)
  exact this ha

theorem BN_ext (hE : LeafSNext) {K : Cx R} (hinj : ∀ s, Injective (K.X s)) {X : Scheme.{0}} {U V W : X.Opens} {n : ℤ}
    (h : V ≤ W) : ∀ a ∈ BN K U n V, ∃ b ∈ BN K U n W, rs h b = a := by
  intro a ha
  have := hinj (n - 1)
  have : BN K U n V ≤ (BN K U n W).map ((K.X n).obj.map (X.homOfLE h).op).hom.toAddMonoidHom :=
    (AddSubgroup.closure_le _).2 fun b hb => by
      obtain ⟨c, hc, rfl⟩ := hb
      obtain ⟨c', hc', hrs⟩ := hE R (K.X (n - 1)) X U V W h c hc
      refine ⟨Sec.map (K.d (n - 1) n) c', BN_of_bd ⟨c', hc', rfl⟩, ?_⟩
      show rs h (Sec.map (K.d (n - 1) n) c') = _
      rw [← map_rs, hrs]
  obtain ⟨b, hb, e⟩ := this ha
  exact ⟨b, hb, e⟩

theorem d_shift {K : Cx R} {n : ℤ} {A : Scheme.{0}} (x : Sec (K.X (n - 1)) A) :
    Sec.map (K.d (n - 1) (n - 1 + 1)) x = 0 ↔ Sec.map (K.d (n - 1) n) x = 0 := by
  have e : n - 1 + 1 = n := by ring
  constructor
  · intro h0; rw [← K.d_comp_XIsoOfEq_hom e, map_comp', h0, map_zero']
  · intro h0; rw [← K.d_comp_XIsoOfEq_inv e, map_comp', h0, map_zero']

theorem BN_loc (hZ : LateralTheory.CohomologicalPurity.Cl.LeafZorn) (hSep : LeafSep) (hL : LeafSNloc) {K : Cx R} {X : Scheme.{0}}
    {U : X.Opens} {n : ℤ} (hOK : OK (ZN K U (n - 1))) (W : X.Opens) (a : Sec (K.X n) W.toScheme)
    (H : ∀ x ∈ W, ∃ (V : X.Opens) (h : V ≤ W), x ∈ V ∧ rs h a ∈ BN K U n V) : a ∈ BN K U n W := by
  have H' : ∀ k : {x : X // x ∈ W}, ∃ (V : X.Opens) (h : V ≤ W), k.1 ∈ V ∧ ∃ b : Sec (K.X (n - 1)) V.toScheme,
      Sec.res (V.ι ⁻¹ᵁ U).ι b = 0 ∧ Sec.map (K.d (n - 1) n) b = rs h a := by
    intro k
    obtain ⟨V, h, hx, hb⟩ := H k.1 k.2
    obtain ⟨b, hb0, hbd⟩ := bd_of_BN hb
    exact ⟨V, h, hx, b, hb0, hbd⟩
  choose V h hx b hb0 hbd using H'
  obtain ⟨c, hc⟩ := hZ R (K.X (n - 1)) X (ZN K U (n - 1)) hOK.1 hOK.2.1 hOK.2.2 W _ V h b
    (fun x hxW => ⟨⟨x, hxW⟩, hx _⟩) (fun k l => by
      refine (mem_Zc _).2 ⟨?_, ?_⟩
      · rw [res_sub, van_rs _ _ (hb0 k), van_rs _ _ (hb0 l), sub_zero]
      · rw [d_shift, map_sub', map_rs, map_rs, hbd, hbd, rs_rs, rs_rs]
        exact sub_self _)
  have hvan : Sec.res (W.ι ⁻¹ᵁ U).ι c = 0 := hL R (K.X (n - 1)) X U W c fun x hxW => ⟨V ⟨x, hxW⟩, h _, hx _, by
      have := ((mem_Zc _).1 (hc ⟨x, hxW⟩)).1
      rw [res_sub, hb0, sub_zero] at this
      exact this⟩
  have hd : Sec.map (K.d (n - 1) n) c = a := by
    rw [← sub_eq_zero]
    apply hSep R (K.X n) X W
    intro x hxW
    refine ⟨V ⟨x, hxW⟩, h _, hx _, ?_⟩
    have hz := (d_shift _).1 ((mem_Zc _).1 (hc ⟨x, hxW⟩)).2
    rw [map_sub', map_rs, hbd] at hz
    rw [rs_sub]
    exact hz
  exact BN_of_bd ⟨c, hvan, hd⟩

theorem LeafStep_of_parts (hSep : LeafSep) (hL : LeafSNloc) (hE : LeafSNext) : LateralTheory.CohomologicalPurity.Cl.Flq.LeafStep := by
  intro R _ K hZ hinj X U n hOK
  exact ⟨fun V W h a ha => BN_rs h a ha, fun W a H => BN_loc hZ hSep hL hOK W a H,
    fun V W h a ha => BN_ext hE hinj h a ha⟩

end LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

namespace LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

variable {R : Type} [CommRing R]

theorem sep_cover (G : Shv R) {Y : Scheme.{0}} {A : Type} (P : A → Scheme.{0}) (f : ∀ i, P i ⟶ Y)
    [∀ i, IsOpenImmersion (f i)] (hcov : ∀ y, ∃ i, y ∈ Set.range (f i)) (s : Sec G Y)
    (hs : ∀ i, Sec.res (f i) s = 0) : s = 0 := by
  have hG : Presheaf.IsSheaf (Scheme.etaleTopology) (G.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) :=
    (Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget (ModuleCat.{1} (ULift.{1} R)))).1 G.property
  have hmem : Sieve.generate (Presieve.ofArrows P f) ∈ Scheme.etaleTopology Y := by
    apply Precoverage.generate_mem_toGrothendieck
    refine (Scheme.ofArrows_mem_precoverage_iff (P := (@Etale : MorphismProperty Scheme.{0}))).2
      ⟨fun y => ?_, fun i => ?_⟩
    · obtain ⟨i, hi⟩ := hcov y; exact ⟨i, hi⟩
    · exact (inferInstance : Etale (f i))
  have hS := hG.isSheafFor _ hmem
  rw [← Presieve.isSheafFor_iff_generate, Presieve.isSheafFor_arrows_iff] at hS
  have hc : Presieve.Arrows.Compatible (G.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) f
      (fun _ => (0 : Sec G _)) := by
    intro i j Z gi gj _
    change (G.obj.map gi.op).hom 0 = (G.obj.map gj.op).hom 0
    simp
  obtain ⟨t, -, ht⟩ := hS _ hc
  rw [ht s (fun i => hs i), ht 0 (fun i => by change (G.obj.map (f i).op).hom 0 = 0; simp)]

theorem LeafSep_of : LeafSep := by
  intro R _ G X W s H
  choose V h hx hs using H
  apply sep_cover G (fun k : {x : X // x ∈ W} => (V k.1 k.2).toScheme) (fun k => X.homOfLE (h k.1 k.2))
  · intro y
    have hy : W.ι y ∈ W := by
      have : W.ι y ∈ Set.range W.ι := ⟨y, rfl⟩
      rwa [Scheme.Opens.range_ι] at this
    refine ⟨⟨W.ι y, hy⟩, ?_⟩
    have : y ∈ (X.homOfLE (h (W.ι y) hy)).opensRange := by
      rw [Scheme.opensRange_homOfLE]; exact hx _ hy
    exact this
  · intro k; exact hs k.1 k.2

end LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

namespace LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

theorem LeafSNloc_of : LeafSNloc := by
  intro R _ G X U W c H
  choose V h hx hs using H
  have e : ∀ k : {x : X // x ∈ W}, (V k.1 k.2).ι ⁻¹ᵁ U ≤ (X.homOfLE (h k.1 k.2)) ⁻¹ᵁ (W.ι ⁻¹ᵁ U) := fun k => by
    rw [← Scheme.Hom.comp_preimage, Scheme.homOfLE_ι]
  have hI : ∀ k : {x : X // x ∈ W}, IsOpenImmersion ((X.homOfLE (h k.1 k.2)).resLE (W.ι ⁻¹ᵁ U) _ (e k)) :=
    fun k => by
      have : IsOpenImmersion ((X.homOfLE (h k.1 k.2)).resLE (W.ι ⁻¹ᵁ U) _ (e k) ≫ (W.ι ⁻¹ᵁ U).ι) := by
        rw [Scheme.Hom.resLE_comp_ι]; infer_instance
      exact IsOpenImmersion.of_comp _ (W.ι ⁻¹ᵁ U).ι
  apply sep_cover G (fun k : {x : X // x ∈ W} => ((V k.1 k.2).ι ⁻¹ᵁ U).toScheme)
    (fun k => (X.homOfLE (h k.1 k.2)).resLE (W.ι ⁻¹ᵁ U) _ (e k))
  · intro y
    obtain ⟨⟨x, hxW⟩, hyU⟩ := y
    refine ⟨⟨x, hxW⟩, ⟨⟨x, hx x hxW⟩, hyU⟩, ?_⟩
    apply Subtype.ext
    rw [Scheme.Hom.coe_resLE_apply]
    apply Subtype.ext
    exact congr($(X.homOfLE_ι (h x hxW)) ⟨x, hx x hxW⟩)
  · intro k
    rw [← res_comp, Scheme.Hom.resLE_comp_ι, res_comp]
    exact hs k.1 k.2

end LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

namespace LateralTheory.CohomologicalPurity.Cl.Flq.StepPf

theorem res_zero {R : Type} [CommRing R] {G : Shv R} {A B : Scheme.{0}} (f : A ⟶ B) :
    Sec.res f (0 : Sec G B) = 0 := map_zero (G.obj.map f.op).hom

theorem mv_opens {X : Scheme.{0}} (A B : X.Opens) :
    LateralTheory.KummerTheory.ContCut.IsMV (X.homOfLE (inf_le_left : A ⊓ B ≤ A)) (X.homOfLE inf_le_right)
      (X.homOfLE (le_sup_left : A ≤ A ⊔ B)) (X.homOfLE le_sup_right) := by
  refine ⟨inferInstance, inferInstance, isPullback_opens_inf_le _ _, fun y => ?_⟩
  have hy : y.1 ∈ A ⊔ B := y.2
  rcases (TopologicalSpace.Opens.mem_sup.1 hy) with h1 | h1
  · left
    have : y ∈ (X.homOfLE (le_sup_left : A ≤ A ⊔ B)).opensRange := by
      rw [Scheme.opensRange_homOfLE]; exact h1
    exact this
  · right
    have : y ∈ (X.homOfLE (le_sup_right : B ≤ A ⊔ B)).opensRange := by
      rw [Scheme.opensRange_homOfLE]; exact h1
    exact this

theorem LeafSNext_of : LeafSNext := by
  intro R _ G _ X U V W h c hc
  have hT : V ⊔ (W ⊓ U) ≤ W := sup_le h inf_le_left
  have H : Set.range (X.homOfLE (inf_le_left : V ⊓ (W ⊓ U) ≤ V)) ⊆ Set.range (V.ι ⁻¹ᵁ U).ι := by
    rw [Scheme.Opens.range_ι]
    rintro _ ⟨⟨p, hp⟩, rfl⟩
    rw [Scheme.homOfLE_apply']
    exact hp.2.2
  have hst : Sec.res (X.homOfLE (inf_le_left : V ⊓ (W ⊓ U) ≤ V)) c =
      Sec.res (X.homOfLE (inf_le_right : V ⊓ (W ⊓ U) ≤ W ⊓ U)) (0 : Sec G (W ⊓ U).toScheme) := by
    rw [← IsOpenImmersion.lift_fac (V.ι ⁻¹ᵁ U).ι (X.homOfLE _) H, res_comp, hc, res_zero, res_zero]
  obtain ⟨z, hz1, hz2⟩ := (LateralTheory.KummerTheory.GluePf.Glue_of R G _ _ _ _ (mv_opens V (W ⊓ U))).2 c 0 hst
  obtain ⟨c', hc'⟩ := LateralTheory.KummerTheory.FlasquePf.Flasque_of R G (X.homOfLE hT) z
  have hc'' : Sec.res (X.homOfLE hT) c' = z := hc'
  refine ⟨c', ?_, ?_⟩
  · have H2 : Set.range (W.ι ⁻¹ᵁ U).ι ⊆ Set.range (X.homOfLE (inf_le_left : W ⊓ U ≤ W)) := by
      rw [Scheme.Opens.range_ι]
      intro p hp
      have : p ∈ (X.homOfLE (inf_le_left : W ⊓ U ≤ W)).opensRange := by
        rw [Scheme.opensRange_homOfLE]; exact ⟨p.2, hp⟩
      exact this
    obtain ⟨m, hm⟩ : ∃ m, m ≫ X.homOfLE (inf_le_left : W ⊓ U ≤ W) = (W.ι ⁻¹ᵁ U).ι :=
      ⟨_, IsOpenImmersion.lift_fac _ _ H2⟩
    rw [← hm, res_comp, ← Scheme.homOfLE_homOfLE X (le_sup_right : W ⊓ U ≤ V ⊔ (W ⊓ U)) hT, res_comp, hc'',
      hz2, res_zero]
  · show Sec.res (X.homOfLE h) c' = c
    rw [← Scheme.homOfLE_homOfLE X (le_sup_left : V ≤ V ⊔ (W ⊓ U)) hT, res_comp, hc'', hz1]

theorem LeafStep_of : LateralTheory.CohomologicalPurity.Cl.Flq.LeafStep := LeafStep_of_parts LeafSep_of LeafSNloc_of LeafSNext_of

end LateralTheory.CohomologicalPurity.Cl.Flq.StepPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafStepPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTopPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafTopPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC CochainComplex.HomComplex

namespace LateralTheory.CohomologicalPurity.Cl.Flq

theorem etale_sheaf_sections_restrict_restrict_eq_restrict_comp {R : Type} [CommRing R] {F : Shv R} {Y Z W : Scheme.{0}} (f : Y ⟶ Z) (g : Z ⟶ W) (a : Sec F W) :
    Sec.res f (Sec.res g a) = Sec.res (f ≫ g) a := by
  show (F.obj.map f.op).hom ((F.obj.map g.op).hom a) = (F.obj.map (f ≫ g).op).hom a
  rw [op_comp, Functor.map_comp]; rfl

theorem etale_sheaf_sections_restriction_of_zero_eq_zero {R : Type} [CommRing R] {F : Shv R} {Y Z : Scheme.{0}} (f : Y ⟶ Z) :
    Sec.res f (0 : Sec F Z) = 0 := by
  show (F.obj.map f.op).hom 0 = 0
  exact map_zero _

theorem etale_sheaf_sections_map_restrict_comm {R : Type} [CommRing R] {F G : Shv R} (φ : F ⟶ G) {Y Z : Scheme.{0}} (f : Y ⟶ Z) (a : Sec F Z) :
    Sec.map φ (Sec.res f a) = Sec.res f (Sec.map φ a) := by
  show (φ.hom.app (op Y)).hom ((F.obj.map f.op).hom a) = (G.obj.map f.op).hom ((φ.hom.app (op Z)).hom a)
  have h := φ.hom.naturality f.op
  exact congrArg (fun ψ => ψ.hom a) h

theorem LeafTop_of : LeafTop := by
  intro R _ K X U n c' hc'
  obtain ⟨h1, h2⟩ := (mem_Zc c').1 hc'
  refine ⟨Sec.res X.topIso.inv c', (mem_Zc _).2 ⟨?_, ?_⟩, ?_⟩
  · have : IsIso (⊤ : X.Opens).ι := by rw [← Scheme.topIso_hom]; infer_instance
    have e : U.ι ≫ X.topIso.inv = inv ((⊤ : X.Opens).ι ∣_ U) ≫ ((⊤ : X.Opens).ι ⁻¹ᵁ U).ι := by
      rw [← cancel_mono X.topIso.hom, Category.assoc, Iso.inv_hom_id, Category.comp_id, Category.assoc,
        Scheme.topIso_hom, ← morphismRestrict_ι, IsIso.inv_hom_id_assoc]
    rw [etale_sheaf_sections_restrict_restrict_eq_restrict_comp, e, ← etale_sheaf_sections_restrict_restrict_eq_restrict_comp, h1, etale_sheaf_sections_restriction_of_zero_eq_zero]
  · rw [etale_sheaf_sections_map_restrict_comm, h2, etale_sheaf_sections_restriction_of_zero_eq_zero]
  · intro V
    rw [etale_sheaf_sections_restrict_restrict_eq_restrict_comp]
    congr 1
    rw [← cancel_mono X.topIso.hom, Category.assoc, Iso.inv_hom_id, Category.comp_id, Scheme.topIso_hom,
      Scheme.homOfLE_ι]

end LateralTheory.CohomologicalPurity.Cl.Flq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafTopPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanFPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafVanFPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.CohomologicalPurity.Cl

theorem range_frame_ι {d : ℕ} {P : SP d} (F : Frame P) :
    ((off F.B F.I : (Spec (CommRingCat.of F.B)).Opens) : Set (Spec (CommRingCat.of F.B))) =
      (Set.range (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk F.I))))ᶜ := by
  have h := range_comap_of_surjective (f := Ideal.Quotient.mk F.I) (hf :=
    Ideal.Quotient.mk_surjective)
  rw [Ideal.mk_ker] at h
  change (PrimeSpectrum.zeroLocus (F.I : Set F.B))ᶜ = _
  rw [← h]
  rfl

def Frame.sp {d : ℕ} {P : SP d} (F : Frame P) (hw : Etale F.w) : SP d where
  X := Spec (CommRingCat.of F.B)
  Z := Spec (CommRingCat.of (F.B ⧸ F.I))
  S := P.S
  p := F.w ≫ P.p
  ι := Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk F.I))
  e := P.e
  U := off F.B F.I
  cl := IsClosedImmersion.spec_of_surjective _ Ideal.Quotient.mk_surjective
  smX := by
    have := P.smX
    have : SmoothOfRelativeDimension 0 F.w := inferInstance
    simpa using (inferInstance : SmoothOfRelativeDimension (0 + (P.e + d)) (F.w ≫ P.p))
  smZ := by
    have hz : Etale F.z := MorphismProperty.of_isPullback F.cart hw
    have := P.smZ
    have : SmoothOfRelativeDimension 0 F.z := inferInstance
    have e : Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk F.I)) ≫ F.w ≫ P.p = F.z ≫ P.ι ≫ P.p := by
      rw [← Category.assoc, F.cart.w, Category.assoc]
    rw [e]
    simpa using (inferInstance : SmoothOfRelativeDimension (0 + P.e) (F.z ≫ P.ι ≫ P.p))
  hU := range_frame_ι F

theorem LeafVanF_of (hV : LeafVan) : LeafVanF := by
  intro hH d q _ P hq F hw i
  refine hV hH d q (F.sp hw) ?_ i
  have h := hq.map F.w.appTop.hom
  rw [map_natCast] at h
  exact h

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanFPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafVanPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.CohomologicalPurity.Cl

theorem van_preimage {d : ℕ} (P : SP d) (V : P.X.affineOpens) :
    off Γ(P.X, V.1) (P.ι.ker.ideal V) = V.2.fromSpec ⁻¹ᵁ P.U := by
  have := P.cl
  have hsupp : (P.ι.ker.support : Set P.X) = Set.range P.ι := by
    rw [Scheme.Hom.support_ker, P.ι.isClosedEmbedding.isClosed_range.closure_eq]
  ext y
  have hmem : V.2.fromSpec y ∈ V.1 := by
    rw [← SetLike.mem_coe, ← V.2.range_fromSpec]; exact Set.mem_range_self y
  have h1 := Set.ext_iff.mp (V.2.fromSpec_preimage_zeroLocus ((P.ι.ker.ideal V : Ideal Γ(P.X, V.1)) : Set Γ(P.X, V.1))) y
  have h2 := Scheme.IdealSheafData.mem_support_iff_of_mem (I := P.ι.ker) hmem
  have h3 : V.2.fromSpec y ∈ (P.U : Set P.X) ↔ V.2.fromSpec y ∉ Set.range P.ι := by rw [P.hU]; rfl
  have h4 : V.2.fromSpec y ∈ P.ι.ker.support ↔ V.2.fromSpec y ∈ Set.range P.ι := by
    rw [← SetLike.mem_coe, hsupp]
  exact (not_congr (h1.symm.trans (h2.symm.trans h4))).trans h3.symm

theorem LeafVan_of (hC : LeafChart) (hR : LeafVanRing) : LeafVan := by
  intro hH d q _ P hq i x W hxW
  obtain ⟨V, hxV, hVW, -, hch⟩ := hC d P x W hxW
  have hqV : IsUnit (q : Γ(P.X, V.1)) := by
    have := hq.map (P.X.presheaf.map (homOfLE le_top : V.1 ⟶ ⊤).op).hom
    simpa using this
  refine ⟨⟨Spec (CommRingCat.of Γ(P.X, V.1)), V.2.fromSpec, V.2.isOpenImmersion_fromSpec, off Γ(P.X, V.1) (P.ι.ker.ideal V),
    van_preimage P V⟩, ?_, ?_, ?_⟩
  · rw [V.2.range_fromSpec]; exact hxV
  · rw [V.2.range_fromSpec]; exact hVW
  · intro n hn
    exact hR hH d q Γ(P.X, V.1) _ hch hqV n i hn

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanRingPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafVanRingPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Cl

theorem sub_C_mem_X {σ R : Type} [CommRing R] (f : MvPolynomial σ R) :
    f - MvPolynomial.C (MvPolynomial.constantCoeff f) ∈ Ideal.span (Set.range (MvPolynomial.X : σ → MvPolynomial σ R)) := by
  induction f using MvPolynomial.induction_on with
  | C a => simp
  | add p r hp hr =>
    have : p + r - MvPolynomial.C (MvPolynomial.constantCoeff (p + r)) =
      (p - MvPolynomial.C (MvPolynomial.constantCoeff p)) + (r - MvPolynomial.C (MvPolynomial.constantCoeff r)) := by
      simp only [map_add (f := _)]; ring
    rw [this]; exact add_mem hp hr
  | mul_X p n _ =>
    simp only [map_mul, MvPolynomial.constantCoeff_X, mul_zero, map_zero, sub_zero]
    exact Ideal.mul_mem_left _ _ (Ideal.subset_span ⟨n, rfl⟩)

theorem chart_nbhd {d : ℕ} {A B : Type} [CommRing A] [CommRing B] (I : Ideal A) (φ : A →+* B)
    (ψ : MvPolynomial (Fin d) (A ⧸ I) →+* B) (hφ : Nbhd φ I) (hψ : ψ.Etale)
    (hJ : (Ideal.span (Set.range (MvPolynomial.X : Fin d → MvPolynomial (Fin d) (A ⧸ I)))).map ψ = I.map φ)
    (hc : ∀ a : A, φ a - ψ (MvPolynomial.C (Ideal.Quotient.mk I a)) ∈ I.map φ) :
    Nbhd ψ (Ideal.span (Set.range MvPolynomial.X)) := by
  refine ⟨hψ, ?_, ?_⟩
  · set_option synthInstance.maxHeartbeats 200000 in
    apply (injective_iff_map_eq_zero _).2
    intro f hf
    obtain ⟨f, rfl⟩ := Ideal.Quotient.mk_surjective f
    rw [Ideal.quotientMap_mk, Ideal.Quotient.eq_zero_iff_mem, hJ] at hf
    obtain ⟨a, ha⟩ := Ideal.Quotient.mk_surjective (MvPolynomial.constantCoeff f)
    have h1 : ψ (f - MvPolynomial.C (MvPolynomial.constantCoeff f)) ∈ I.map φ := by
      rw [← hJ]; exact Ideal.mem_map_of_mem _ (sub_C_mem_X f)
    have h2 : φ a ∈ I.map φ := by
      have := sub_mem (add_mem (hc a) (sub_mem hf h1)) (0 : I.map φ).2
      rw [map_sub, ← ha] at this
      simpa using this
    have h3 : Ideal.Quotient.mk I a = 0 := by
      apply hφ.2.1
      rw [Ideal.quotientMap_mk, map_zero, Ideal.Quotient.eq_zero_iff_mem]
      exact h2
    rw [Ideal.Quotient.eq_zero_iff_mem]
    have := sub_C_mem_X f
    rwa [← ha, h3, map_zero, sub_zero] at this
  · intro b
    obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective b
    obtain ⟨a', ha'⟩ := hφ.2.2 (Ideal.Quotient.mk _ b)
    obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective a'
    refine ⟨Ideal.Quotient.mk _ (MvPolynomial.C (Ideal.Quotient.mk I a)), ?_⟩
    rw [Ideal.quotientMap_mk] at ha' ⊢
    rw [Ideal.Quotient.eq] at ha' ⊢
    rw [hJ]
    have := sub_mem ha' (hc a)
    simpa using this

theorem LeafVanRing_of (hNb : LeafNb) (hTh : LeafThom) : LeafVanRing := by
  intro hH d q _ A _ I hC hq n i hn
  have hA1 : A1 := hH.1
  have hA9 : A9 := hH.2.2.2.2.2.2.1
  obtain ⟨B, _, φ, ψ, hφ, hψ, hI, hc⟩ := hC
  have hJ : (Ideal.span (Set.range (MvPolynomial.X : Fin d → MvPolynomial (Fin d) (A ⧸ I)))).map ψ = I.map φ := by
    rw [Ideal.map_span, hI, ← Set.range_comp]; rfl
  have hN := chart_nbhd I φ ψ hφ hψ hJ hc
  have e1 := hNb hA1 q φ I (I.map φ) hφ rfl (off_map φ I).le n i
  have e2 := hNb hA1 q ψ _ _ hN rfl (off_map ψ _).le n i
  obtain ⟨th, hth⟩ := hTh hH d
  have hqR : IsUnit (q : A ⧸ I) := by simpa using hq.map (Ideal.Quotient.mk I)
  obtain ⟨m, rfl⟩ : ∃ m, n = m + 2 * d := ⟨n - 2 * d, by ring⟩
  obtain ⟨j, rfl⟩ : ∃ j, i = j + d := ⟨i - d, by ring⟩
  have hm : m < 0 := by omega
  have hsub : Subsingleton (Ht q (sp (A ⧸ I)) m j) := (hA9 (ZMod q) (tw q j)).1 _ m hm
  have h3 := ((hth q).2.2.1 (A ⧸ I) _ rfl hqR m j).2
  have hR : Subsingleton (Hs q (opn (off (MvPolynomial (Fin d) (A ⧸ I))
      (Ideal.span (Set.range MvPolynomial.X)))) (m + 2 * d) (j + d)) := by
    constructor; intro x y
    obtain ⟨a, rfl⟩ := h3 x; obtain ⟨b, rfl⟩ := h3 y; rw [Subsingleton.elim a b]
  have hB : ∀ x y : Hs q (opn (off B ((Ideal.span (Set.range (MvPolynomial.X : Fin d → MvPolynomial (Fin d) (A ⧸ I)))).map ψ))) (m + 2 * d) (j + d), x = y := by
    intro x y
    obtain ⟨a, rfl⟩ := e2.2 x; obtain ⟨b, rfl⟩ := e2.2 y; rw [Subsingleton.elim a b]
  rw [hJ] at hB
  exact ⟨fun x y => e1.1 (hB _ _)⟩

end LateralTheory.CohomologicalPurity.Cl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafVanRingPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZeroPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafZeroPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.Cl.Flq

theorem sec_eq_zero_of_isZero {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} (hG : IsZero G) (a : Sec G X) :
    a = 0 := by
  have h1 : Sec.map (𝟙 G) a = a := rfl
  have h2 : Sec.map (0 : G ⟶ G) a = 0 := rfl
  rw [← h1, hG.eq_of_src (𝟙 G) 0, h2]

theorem LeafZero_of : LeafZero := by
  intro R _ K X U n hz
  refine ⟨?_, ?_, ?_⟩
  · intro V W h a _
    rw [sec_eq_zero_of_isZero hz (rs h a)]
    exact zero_mem _
  · intro W a _
    rw [sec_eq_zero_of_isZero hz a]
    exact zero_mem _
  · intro V W h a _
    exact ⟨0, zero_mem _, (sec_eq_zero_of_isZero hz _).trans (sec_eq_zero_of_isZero hz a).symm⟩

end LateralTheory.CohomologicalPurity.Cl.Flq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZeroPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZlocPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafZlocPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafFlqPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.ZlocPf

theorem res_comp {R : Type} [CommRing R] {G : Shv R} {T V W : Scheme.{0}} (f : T ⟶ V) (g : V ⟶ W) (a : Sec G W) :
    Sec.res (f ≫ g) a = Sec.res f (Sec.res g a) := by
  show (G.obj.map (f ≫ g).op).hom a = (G.obj.map f.op).hom ((G.obj.map g.op).hom a)
  rw [op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.comp_apply]

theorem res_zero {R : Type} [CommRing R] {G : Shv R} {V W : Scheme.{0}} (f : V ⟶ W) :
    Sec.res f (0 : Sec G W) = 0 := by
  show (G.obj.map f.op).hom 0 = 0
  exact map_zero _

theorem map_res {R : Type} [CommRing R] {G H : Shv R} (φ : G ⟶ H) {V W : Scheme.{0}} (f : V ⟶ W) (a : Sec G W) :
    Sec.map φ (Sec.res f a) = Sec.res f (Sec.map φ a) := by
  have e := φ.hom.naturality f.op
  show (G.obj.map f.op ≫ φ.hom.app (op V)).hom a = (φ.hom.app (op W) ≫ H.obj.map f.op).hom a
  rw [e]

theorem sep {R : Type} [CommRing R] {G : Shv R} {Y : Scheme.{0}} (s : Sec G Y)
    (H : ∀ y : Y, ∃ (Z : Scheme.{0}) (f : Z ⟶ Y), IsOpenImmersion f ∧ y ∈ Set.range f ∧ Sec.res f s = 0) : s = 0 := by
  let I := {p : Σ Z : Scheme.{0}, Z ⟶ Y // IsOpenImmersion p.2 ∧ Sec.res p.2 s = 0}
  let Zf : I → Scheme.{0} := fun i => i.1.1
  let ff : ∀ i : I, Zf i ⟶ Y := fun i => i.1.2
  have hG : Presheaf.IsSheaf (Scheme.etaleTopology) (G.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) :=
    (Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget (ModuleCat.{1} (ULift.{1} R)))).1 G.property
  have hmem : Sieve.generate (Presieve.ofArrows Zf ff) ∈ Scheme.etaleTopology Y := by
    apply Precoverage.generate_mem_toGrothendieck
    refine (Scheme.ofArrows_mem_precoverage_iff (P := (@Etale : MorphismProperty Scheme.{0}))).2 ⟨fun y => ?_, fun i => ?_⟩
    · obtain ⟨Z, f, hf, hy, hs⟩ := H y
      exact ⟨⟨⟨Z, f⟩, hf, hs⟩, hy⟩
    · haveI := i.2.1
      exact (inferInstance : Etale i.1.2)
  have hS := hG.isSheafFor _ hmem
  rw [← Presieve.isSheafFor_iff_generate, Presieve.isSheafFor_arrows_iff] at hS
  have hc : Presieve.Arrows.Compatible (G.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) ff
      (fun _ => (0 : Sec G _)) := by
    intro i j Z gi gj _
    change (G.obj.map gi.op).hom 0 = (G.obj.map gj.op).hom 0
    simp
  obtain ⟨t, -, ht⟩ := hS _ hc
  have e1 := ht s (fun i => i.2.2)
  have e2 := ht 0 (fun i => res_zero (G := G) i.1.2)
  rw [e1, e2]

theorem vanish {R : Type} [CommRing R] {G : Shv R} {Y Z T : Scheme.{0}} (f : Z ⟶ Y) [IsOpenImmersion f] (g : T ⟶ Y)
    (hr : Set.range g ⊆ Set.range f) (s : Sec G Y) (h0 : Sec.res f s = 0) : Sec.res g s = 0 := by
  rw [← IsOpenImmersion.lift_fac f g hr, res_comp, h0, res_zero]

theorem pt {X : Scheme.{0}} {V W : X.Opens} (h : V ≤ W) (q : V.toScheme) : W.ι (X.homOfLE h q) = V.ι q := by
  rw [← Scheme.Hom.comp_apply, Scheme.homOfLE_ι]

theorem memι {X : Scheme.{0}} (V : X.Opens) (q : V.toScheme) : V.ι q ∈ V := by
  show V.ι q ∈ (V : Set X)
  rw [← Scheme.Opens.range_ι V]; exact ⟨q, rfl⟩

theorem lift_pt {X : Scheme.{0}} {V W : X.Opens} (h : V ≤ W) (y : W.toScheme) (hy : W.ι y ∈ V) :
    y ∈ Set.range (X.homOfLE h) := by
  change W.ι y ∈ (V : Set X) at hy
  rw [← Scheme.Opens.range_ι V] at hy
  obtain ⟨q, hq⟩ := hy
  refine ⟨q, W.ι.isOpenEmbedding.injective ?_⟩
  rw [pt, hq]

theorem rangeU {X : Scheme.{0}} (U : X.Opens) {V W : X.Opens} (h : V ≤ W) :
    Set.range ((V.ι ⁻¹ᵁ U).ι ≫ X.homOfLE h) ⊆ Set.range (W.ι ⁻¹ᵁ U).ι := by
  rintro _ ⟨p, rfl⟩
  rw [Scheme.Opens.range_ι]
  show W.ι (((V.ι ⁻¹ᵁ U).ι ≫ X.homOfLE h) p) ∈ U
  rw [Scheme.Hom.comp_apply, pt]
  exact memι (V.ι ⁻¹ᵁ U) p

open LateralTheory.CohomologicalPurity.Cl in
theorem LeafZloc_of : LateralTheory.CohomologicalPurity.Cl.Flq.LeafZloc := by
  intro R _ K X U n
  refine ⟨?_, ?_⟩
  · intro V W h a ha
    obtain ⟨ha1, ha2⟩ := (mem_Zc a).1 ha
    refine (mem_Zc _).2 ⟨?_, ?_⟩
    · rw [← res_comp]; exact vanish _ _ (rangeU U h) a ha1
    · rw [map_res, ha2, res_zero]
  · intro W a H
    refine (mem_Zc _).2 ⟨?_, ?_⟩
    · apply sep; intro y
      obtain ⟨V, h, hxV, hb⟩ := H (W.ι ((W.ι ⁻¹ᵁ U).ι y)) (memι W _)
      obtain ⟨hb1, -⟩ := (mem_Zc _).1 hb
      let O : (W.ι ⁻¹ᵁ U).toScheme.Opens := ((W.ι ⁻¹ᵁ U).ι ≫ W.ι) ⁻¹ᵁ V
      refine ⟨O.toScheme, O.ι, inferInstance, ?_, ?_⟩
      · rw [Scheme.Opens.range_ι]
        show ((W.ι ⁻¹ᵁ U).ι ≫ W.ι) y ∈ V
        rw [Scheme.Hom.comp_apply]; exact hxV
      · rw [← res_comp]
        apply vanish ((V.ι ⁻¹ᵁ U).ι ≫ X.homOfLE h) _ ?_ a (by rw [res_comp]; exact hb1)
        rintro _ ⟨z, rfl⟩
        have hz : ((W.ι ⁻¹ᵁ U).ι ≫ W.ι) (O.ι z) ∈ V := memι O z
        rw [Scheme.Hom.comp_apply] at hz
        have hwU : W.ι ((W.ι ⁻¹ᵁ U).ι (O.ι z)) ∈ U := memι (W.ι ⁻¹ᵁ U) (O.ι z)
        obtain ⟨q, hq⟩ := lift_pt h _ hz
        have hqU : q ∈ (V.ι ⁻¹ᵁ U : Set V.toScheme) := by
          show V.ι q ∈ U
          rw [← pt h, hq]; exact hwU
        rw [← Scheme.Opens.range_ι] at hqU
        obtain ⟨p, hp⟩ := hqU
        exact ⟨p, by rw [Scheme.Hom.comp_apply, hp, hq, Scheme.Hom.comp_apply]⟩
    · apply sep; intro y
      obtain ⟨V, h, hxV, hb⟩ := H (W.ι y) (memι W y)
      obtain ⟨-, hb2⟩ := (mem_Zc _).1 hb
      refine ⟨V.toScheme, X.homOfLE h, inferInstance, lift_pt h y hxV, ?_⟩
      rw [← map_res]; exact hb2

end LateralTheory.CohomologicalPurity.ZlocPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZlocPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZornPf =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.LeafZornPf", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafClCut\npublic import Mathlib.Order.CompletePartialOrder\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.CohomologicalPurity.ZornPf
open LateralTheory.CohomologicalPurity.Cl

theorem rs_rs {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} {U V W : X.Opens} (h1 : U ≤ V) (h2 : V ≤ W)
    (a : Sec G W.toScheme) : rs h1 (rs h2 a) = rs (h1.trans h2) a := by
  change (G.obj.map (X.homOfLE h1).op).hom ((G.obj.map (X.homOfLE h2).op).hom a) = (G.obj.map (X.homOfLE _).op).hom a
  rw [← Scheme.homOfLE_homOfLE X h1 h2, op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.comp_apply]

theorem rs_refl {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} {U : X.Opens} (h : U ≤ U)
    (a : Sec G U.toScheme) : rs h a = a := by
  change (G.obj.map (X.homOfLE h).op).hom a = a
  rw [Scheme.homOfLE_rfl X U]
  simp

theorem rs_sub {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} {U V : X.Opens} (h : U ≤ V)
    (a b : Sec G V.toScheme) : rs h (a - b) = rs h a - rs h b := map_sub _ _ _

theorem rs_add {R : Type} [CommRing R] {G : Shv R} {X : Scheme.{0}} {U V : X.Opens} (h : U ≤ V)
    (a b : Sec G V.toScheme) : rs h (a + b) = rs h a + rs h b := map_add _ _ _

theorem glue {R : Type} [CommRing R] (G : Shv R) {X : Scheme.{0}} {A : Type*} (V : A → X.Opens)
    (s : ∀ k, Sec G (V k).toScheme) (hc : ∀ k l, rs inf_le_left (s k) = rs inf_le_right (s l)) :
    ∃ c : Sec G (⨆ k, V k).toScheme, ∀ k, rs (le_iSup V k) c = s k := by
  have hG : Presheaf.IsSheaf (Scheme.etaleTopology) (G.obj ⋙ forget (ModuleCat.{1} (ULift.{1} R))) :=
    (Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget (ModuleCat.{1} (ULift.{1} R)))).1 G.property
  have hmem : Sieve.generate (Presieve.ofArrows (fun k => (V k).toScheme) (fun k => X.homOfLE (le_iSup V k)))
      ∈ Scheme.etaleTopology (⨆ k, V k).toScheme := by
    apply Precoverage.generate_mem_toGrothendieck
    refine (Scheme.ofArrows_mem_precoverage_iff (P := (@Etale : MorphismProperty Scheme.{0}))).2 ⟨fun x => ?_, fun i => ?_⟩
    · have hx : (x.1 : X) ∈ ⨆ k, V k := x.2
      rw [TopologicalSpace.Opens.mem_iSup] at hx
      obtain ⟨k, hk⟩ := hx
      refine ⟨k, ⟨⟨x.1, hk⟩, ?_⟩⟩
      apply Subtype.ext
      exact Scheme.homOfLE_apply (le_iSup V k) ⟨x.1, hk⟩
    · infer_instance
  have hS := hG.isSheafFor _ hmem
  rw [← Presieve.isSheafFor_iff_generate, Presieve.isSheafFor_arrows_iff] at hS
  obtain ⟨c, hc', -⟩ := hS s (by
    intro i j Z gi gj e
    have e' : gi ≫ (V i).ι = gj ≫ (V j).ι := by
      have := congrArg (· ≫ (⨆ k, V k).ι) e
      simpa using this
    have hr : Set.range (gi ≫ (V i).ι) ⊆ Set.range (V i ⊓ V j).ι := by
      rintro _ ⟨z, rfl⟩
      rw [Scheme.Opens.range_ι]
      refine ⟨?_, ?_⟩
      · have : (gi ≫ (V i).ι) z ∈ Set.range (V i).ι := ⟨gi z, rfl⟩
        rwa [Scheme.Opens.range_ι] at this
      · rw [e']
        have : (gj ≫ (V j).ι) z ∈ Set.range (V j).ι := ⟨gj z, rfl⟩
        rwa [Scheme.Opens.range_ι] at this
    let l := IsOpenImmersion.lift (V i ⊓ V j).ι (gi ≫ (V i).ι) hr
    have hl : l ≫ (V i ⊓ V j).ι = gi ≫ (V i).ι := IsOpenImmersion.lift_fac _ _ _
    have li : gi = l ≫ X.homOfLE (inf_le_left : V i ⊓ V j ≤ V i) := by
      rw [← cancel_mono (V i).ι, Category.assoc, Scheme.homOfLE_ι, hl]
    have lj : gj = l ≫ X.homOfLE (inf_le_right : V i ⊓ V j ≤ V j) := by
      rw [← cancel_mono (V j).ι, Category.assoc, Scheme.homOfLE_ι, hl, e']
    change (G.obj.map gi.op).hom (s i) = (G.obj.map gj.op).hom (s j)
    rw [li, lj, op_comp, op_comp, Functor.map_comp, Functor.map_comp, ModuleCat.hom_comp, ModuleCat.hom_comp,
      LinearMap.comp_apply, LinearMap.comp_apply]
    exact congrArg (G.obj.map l.op).hom (hc i j))
  exact ⟨c, hc'⟩

theorem LeafZorn_of : LeafZorn := by
  intro R _ G X N hres hloc hfl W A V h a hcov hcomp
  let P : (Σ T : X.Opens, Sec G T.toScheme) → Prop :=
    fun p => ∀ k, rs inf_le_left p.2 - rs inf_le_right (a k) ∈ N (p.1 ⊓ V k)
  let r : {p // P p} → {p // P p} → Prop := fun p q => ∃ hh : p.1.1 ≤ q.1.1, rs hh q.1.2 = p.1.2
  have htrans : ∀ {p q s : {p // P p}}, r p q → r q s → r p s := by
    rintro p q s ⟨h1, e1⟩ ⟨h2, e2⟩
    exact ⟨h1.trans h2, by rw [← e1, ← e2, rs_rs]⟩
  have hchain : ∀ C : Set {p // P p}, IsChain r C → ∃ ub, ∀ p ∈ C, r p ub := by
    intro C hC
    let Vc : C → X.Opens := fun p => p.1.1.1
    obtain ⟨c, hc⟩ := glue G Vc (fun p : C => p.1.1.2) (by
      intro p q
      by_cases hpq : p.1 = q.1
      · obtain rfl : p = q := Subtype.ext hpq
        rfl
      · rcases hC p.2 q.2 hpq with ⟨hh, e⟩ | ⟨hh, e⟩
        · show rs inf_le_left p.1.1.2 = rs inf_le_right q.1.1.2
          rw [← e, rs_rs]
        · show rs inf_le_left p.1.1.2 = rs inf_le_right q.1.1.2
          rw [← e, rs_rs])
    refine ⟨⟨⟨⨆ p, Vc p, c⟩, fun k => ?_⟩, fun p hp => ⟨le_iSup Vc ⟨p, hp⟩, hc ⟨p, hp⟩⟩⟩
    apply hloc
    intro x hx
    obtain ⟨hx1, hx2⟩ := hx
    change x ∈ (⨆ p, Vc p) at hx1
    rw [TopologicalSpace.Opens.mem_iSup] at hx1
    obtain ⟨p, hp⟩ := hx1
    have h' : Vc p ⊓ V k ≤ (⨆ p, Vc p) ⊓ V k := inf_le_inf_right _ (le_iSup Vc p)
    refine ⟨Vc p ⊓ V k, h', ⟨hp, hx2⟩, ?_⟩
    have key : rs h' (rs inf_le_left c - rs inf_le_right (a k)) =
        rs inf_le_left p.1.1.2 - rs inf_le_right (a k) := by
      rw [rs_sub, rs_rs, rs_rs, show rs (h'.trans inf_le_left) c = rs inf_le_left (rs (le_iSup Vc p) c) by
        rw [rs_rs], hc p]
    rw [key]
    exact p.1.2 k
  obtain ⟨m, hm⟩ := exists_maximal_of_chains_bounded hchain htrans
  have hVT : ∀ k, V k ≤ m.1.1 := by
    intro k
    have hd := m.2 k
    obtain ⟨n, hn, hnd⟩ := hfl _ _ inf_le_right _ hd
    let Vb : Bool → X.Opens := fun b => Bool.rec (V k) m.1.1 b
    have hn' := congrArg (rs (inf_comm (V k) m.1.1).le) hnd
    rw [rs_rs, rs_sub, rs_rs, rs_rs] at hn'
    obtain ⟨e, he⟩ := glue G Vb (fun b => Bool.rec (motive := fun b => Sec G (Vb b).toScheme) (a k + n) m.1.2 b) (by
      intro i j
      cases i <;> cases j
      · rfl
      · show rs inf_le_left (a k + n) = rs inf_le_right m.1.2
        rw [rs_add, hn']
        abel
      · show rs inf_le_left m.1.2 = rs inf_le_right (a k + n)
        rw [rs_add, hnd]
        abel
      · rfl)
    have hP : P ⟨⨆ b, Vb b, e⟩ := by
      intro l
      apply hloc
      intro x hx
      obtain ⟨hx1, hx2⟩ := hx
      change x ∈ (⨆ b, Vb b) at hx1
      rw [TopologicalSpace.Opens.mem_iSup] at hx1
      obtain ⟨b, hb⟩ := hx1
      have h' : Vb b ⊓ V l ≤ (⨆ b, Vb b) ⊓ V l := inf_le_inf_right _ (le_iSup Vb b)
      refine ⟨Vb b ⊓ V l, h', ⟨hb, hx2⟩, ?_⟩
      have key : rs h' (rs inf_le_left e - rs inf_le_right (a l)) =
          rs inf_le_left (rs (le_iSup Vb b) e) - rs inf_le_right (a l) := by
        rw [rs_sub, rs_rs, rs_rs, rs_rs]
      rw [key, he b]
      cases b
      · show rs inf_le_left (a k + n) - rs inf_le_right (a l) ∈ N (V k ⊓ V l)
        rw [rs_add, show rs inf_le_left (a k) + rs inf_le_left n - rs inf_le_right (a l) =
          (rs inf_le_left (a k) - rs inf_le_right (a l)) + rs inf_le_left n by abel]
        exact add_mem (hcomp k l) (hres _ _ _ n hn)
      · exact m.2 l
    obtain ⟨hh, -⟩ := hm ⟨_, hP⟩ ⟨le_iSup Vb true, he true⟩
    exact (le_iSup Vb false).trans hh
  have hWT : W ≤ m.1.1 := by
    intro x hx
    obtain ⟨k, hk⟩ := hcov x hx
    exact hVT k hk
  refine ⟨rs hWT m.1.2, fun k => ?_⟩
  have hk : V k ≤ m.1.1 ⊓ V k := le_inf (hVT k) le_rfl
  have key : rs hk (rs inf_le_left m.1.2 - rs inf_le_right (a k)) = rs (h k) (rs hWT m.1.2) - a k := by
    rw [rs_sub, rs_rs, rs_rs, rs_rs, rs_refl]
  rw [← key]
  exact hres _ _ hk _ (m.2 k)

end LateralTheory.CohomologicalPurity.ZornPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.LeafZornPf =====

-- ===== clump member: Development.EtaleCohomology.CohomologicalPurity.FixLeafCl =====
-- clump-header: {"m": "Development.EtaleCohomology.CohomologicalPurity.FixLeafCl", "h": "module\n\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafIndExc\npublic import Development.EtaleCohomology.CohomologicalPurity.FinLeafChart\npublic import Development.EtaleCohomology.CohomologicalPurity.FinLeafExc\npublic import Development.EtaleCohomology.CohomologicalPurity.FinLeafThom\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafBZPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafBdAddPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafCmpPfAll\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDescOGluePfP\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDescOSepPf\nimport Development.EtaleCohomology.CohomologicalPurity.LeafDescPfGlue\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDictPfDbl\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDiscNrmPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafEvPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafGenKerPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafGenRingPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafMatPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafNbPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafOffPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafPairPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafStepPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafTopPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafVanFPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafVanPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafVanRingPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafZeroPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafZlocPf\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafZornPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.EtaleCohomology.CohomologicalPurity.LeafDictPf\n\n"}
section -- clump:auto
@[expose] public section

theorem LateralTheory.Fix.LeafCl.intersectionNumber_baseChange : LateralTheory.CohomologicalPurity.LeafCl := by
  have h54 : LateralTheory.CohomologicalPurity.LeafThom := LateralTheory.Fin.LeafThom.intersectionNumber_baseChange
  have h80 : LateralTheory.CohomologicalPurity.LeafChart := LateralTheory.Fin.LeafChart.intersectionNumber_baseChange
  have h89 : LateralTheory.CohomologicalPurity.LeafExc := LateralTheory.Fin.LeafExc.intersectionNumber_baseChange
  have h55 : LateralTheory.CohomologicalPurity.Cl.LeafDisc := LateralTheory.CohomologicalPurity.Cl.LeafDisc_of'
  have h56 : LateralTheory.CohomologicalPurity.DictPf.LeafEv := LateralTheory.CohomologicalPurity.DictPf.LeafEv_of
  have h57 : LateralTheory.CohomologicalPurity.DictPf.LeafPair := LateralTheory.CohomologicalPurity.LeafPairPf.LeafPair_of
  have h58 : LateralTheory.CohomologicalPurity.Cl.LeafDict := LateralTheory.CohomologicalPurity.DictPf.LeafDict_of' h55 h56 h57
  have h59 : LateralTheory.CohomologicalPurity.Cl.LeafZorn := LateralTheory.CohomologicalPurity.ZornPf.LeafZorn_of
  have h60 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafBdAdd := LateralTheory.CohomologicalPurity.Cl.Flq.LeafBdAdd_of
  have h61 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafBZ := LateralTheory.CohomologicalPurity.Cl.Flq.LeafBZ_of
  have h62 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafZloc := LateralTheory.CohomologicalPurity.ZlocPf.LeafZloc_of
  have h63 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafZero := LateralTheory.CohomologicalPurity.Cl.Flq.LeafZero_of
  have h64 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafStep := LateralTheory.CohomologicalPurity.Cl.Flq.StepPf.LeafStep_of
  have h65 : LateralTheory.CohomologicalPurity.Cl.Flq.LeafTop := LateralTheory.CohomologicalPurity.Cl.Flq.LeafTop_of
  have h66 : LateralTheory.CohomologicalPurity.Cl.LeafFlq := LateralTheory.CohomologicalPurity.Cl.Flq.LeafFlq_of h59 h60 h61 h62 h63 h64 h65
  have h67 : LateralTheory.CohomologicalPurity.Cl.LeafDescOSep := LateralTheory.CohomologicalPurity.Cl.LeafDescOSep_of
  have h68 : LateralTheory.CohomologicalPurity.Cl.LeafDescOGlue := LateralTheory.CohomologicalPurity.Cl.LeafDescOGlue_of
  have h69 : LateralTheory.CohomologicalPurity.Cl.LeafDesc := LateralTheory.CohomologicalPurity.Cl.LeafDesc_of' h58 h66 h67 h68
  have h90 : LateralTheory.CohomologicalPurity.Cl.LeafNb := LateralTheory.CohomologicalPurity.NbPf.nb h89
  have h91 : LateralTheory.CohomologicalPurity.Cl.LeafVanRing := LateralTheory.CohomologicalPurity.Cl.LeafVanRing_of h90 h54
  have h92 : LateralTheory.CohomologicalPurity.Cl.LeafVan := LateralTheory.CohomologicalPurity.Cl.LeafVan_of h80 h91
  have h93 : LateralTheory.CohomologicalPurity.Cl.LeafVanF := LateralTheory.CohomologicalPurity.Cl.LeafVanF_of h92
  have h94 : LateralTheory.CohomologicalPurity.Cl.LeafOff := LateralTheory.CohomologicalPurity.Cl.LeafOff_of
  have h95 : LateralTheory.CohomologicalPurity.Cl.LeafGenRing := LateralTheory.CohomologicalPurity.Cl.LeafGenRing_of
  have h96 : LateralTheory.CohomologicalPurity.Cl.LeafGenKer := LateralTheory.CohomologicalPurity.Cl.LeafGenKer_of
  have h97 : LateralTheory.CohomologicalPurity.Cl.LeafGen := LateralTheory.CohomologicalPurity.Cl.LeafGen_of h80 h95 h96
  have h98 : LateralTheory.CohomologicalPurity.Cl.LeafMat := LateralTheory.CohomologicalPurity.Cl.LeafMat_of
  have h99 : LateralTheory.CohomologicalPurity.Cl.LeafCmp := LateralTheory.CohomologicalPurity.Cl.LeafCmp_of_Mat h98
  exact LateralTheory.CohomologicalPurity.Cl.goal_of h54 h69 h92 h93 h94 h97 h99
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.CohomologicalPurity.FixLeafCl =====
