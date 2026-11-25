module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Development.EtaleCohomology.KummerTheory.InjSlice
import Mathlib.Tactic.Linter.HaveILetI

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.KummerTheory.TwSecPfGamma, Development.EtaleCohomology.KummerTheory.TwSecPf

-- ===== clump member: Development.EtaleCohomology.KummerTheory.TwSecPfGamma =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.TwSecPfGamma", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC Polynomial

namespace LateralTheory.KummerTheory.TwSecPfGamma

theorem map_symm_map {A B : Type} [CommRing A] [CommRing B] (e : A ≃+* B) (f : B[X]) :
    (f.map (e.symm : B →+* A)).map (e : A →+* B) = f := by
  rw [Polynomial.map_map]
  have : (e : A →+* B).comp (e.symm : B →+* A) = RingHom.id B := by
    ext x; simp
  rw [this, Polynomial.map_id]

theorem mem_max_iff {A B : Type} [CommRing A] [CommRing B] [IsLocalRing A] [IsLocalRing B] (e : A ≃+* B) (x : B) :
    e.symm x ∈ IsLocalRing.maximalIdeal A ↔ x ∈ IsLocalRing.maximalIdeal B := by
  simp only [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
  rw [isUnit_map_iff e.symm x]

theorem henselian_of_equiv {A B : Type} [CommRing A] [CommRing B] (e : A ≃+* B) [hA : HenselianLocalRing A] :
    HenselianLocalRing B := by
  haveI : Nontrivial A := inferInstance
  haveI : Nontrivial B := e.injective.nontrivial
  haveI : IsLocalRing B := IsLocalRing.of_surjective' (e : A →+* B) e.surjective
  refine { is_henselian := ?_ }
  intro f hf a₀ h1 h2
  have hev : ∀ (p : B[X]) (b : B), (p.map (e.symm : B →+* A)).eval (e.symm b) = e.symm (p.eval b) := by
    intro p b
    rw [Polynomial.eval_map]
    exact Polynomial.eval₂_hom (e.symm : B →+* A) b
  obtain ⟨a, ha, hmem⟩ := hA.is_henselian (f.map (e.symm : B →+* A)) (hf.map _) (e.symm a₀)
    (by rw [hev, mem_max_iff]; exact h1)
    (by rw [Polynomial.derivative_map, hev]; exact (isUnit_map_iff e.symm _).2 h2)
  refine ⟨e a, ?_, ?_⟩
  · have := ha.map (f := (e : A →+* B))
    rwa [map_symm_map] at this
  · rw [← mem_max_iff e]
    have : e.symm (e a - a₀) = a - e.symm a₀ := by simp
    rw [this]; exact hmem

theorem sepClosed_of_equiv {K L : Type} [Field K] [Field L] (e : K ≃+* L) [IsSepClosed K] : IsSepClosed L := by
  refine IsSepClosed.of_exists_root _ fun p hm hirr hsep => ?_
  have hdeg : (p.map (e.symm : L →+* K)).degree ≠ 0 := by
    rw [Polynomial.degree_map]
    intro h
    exact hirr.not_isUnit (Polynomial.isUnit_iff_degree_eq_zero.2 h)
  obtain ⟨x, hx⟩ := IsSepClosed.exists_root (p.map (e.symm : L →+* K)) hdeg (hsep.map)
  refine ⟨e x, ?_⟩
  have := hx.map (f := (e : K →+* L))
  rw [map_symm_map] at this
  exact this

theorem SH_of_equiv {A B : Type} [CommRing A] [CommRing B] (e : A ≃+* B) (h : SH A) : SH B := by
  obtain ⟨hA, hs⟩ := h
  haveI := hA
  haveI := henselian_of_equiv e
  refine ⟨inferInstance, ?_⟩
  haveI := hs
  exact sepClosed_of_equiv (IsLocalRing.ResidueField.mapEquiv e)

end LateralTheory.KummerTheory.TwSecPfGamma

namespace LateralTheory.KummerTheory

theorem SHGamma_holds (A : Type) [CommRing A] (h : SH A) : SH Γ(Spec (CommRingCat.of A), ⊤) :=
  TwSecPfGamma.SH_of_equiv (Scheme.ΓSpecIso (CommRingCat.of A)).commRingCatIsoToRingEquiv.symm h

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.TwSecPfGamma =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.TwSecPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.TwSecPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\npublic import Development.EtaleCohomology.KummerTheory.TwSecPfGamma\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory

def PrimTors : Prop := ∀ (q : ℕ) [NeZero q] (B : Type) [CommRing B], SH B → IsUnit (q : B) →
  Nonempty (Prim q B) ∧ ∀ (i : ℤ) (ζ : Prim q B), Function.Bijective fun t : ZMod q =>
    (ULift.up t : ULift.{1} (ZMod q)) • (Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q))) :
      (Prim q B →₀ ULift.{1} (ZMod q)) ⧸ twRel q i B)

def SecSH : Prop := ∀ (A : Type) [CommRing A], SH A → ∀ (R : Type) [CommRing R]
  (M : CommRingCat.{0} ⥤ ModuleCat.{1} (ULift.{1} R)), Function.Bijective (ofRings.sec (R := R) M (Spec (CommRingCat.of A)))

theorem TwSec_of (h1 : PrimTors) (h2 : SecSH) : TwSec := by
  intro q _ A _ hA hq
  have hB := SHGamma_holds A hA
  have hqB : IsUnit (q : Γ(Spec (CommRingCat.of A), ⊤)) := by
    simpa using hq.map (Scheme.ΓSpecIso (CommRingCat.of A)).inv.hom
  obtain ⟨hne, hbij⟩ := h1 q _ hB hqB
  refine ⟨hne, fun i ζ => ?_⟩
  have key : (fun t : ZMod q => (ULift.up t : ULift.{1} (ZMod q)) • twGen i ζ) =
      ofRings.sec (R := ZMod q) (twF q i) (Spec (CommRingCat.of A)) ∘ (fun t : ZMod q =>
        (ULift.up t : ULift.{1} (ZMod q)) • (Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q))) :
          (Prim q _ →₀ ULift.{1} (ZMod q)) ⧸ twRel q i _)) := by
    funext t
    simp only [twGen, ofRings.sec]
    exact (map_smul _ _ _).symm
  rw [key]
  exact (h2 A hA (ZMod q) (twF q i)).comp (hbij i ζ)

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.TwSecPf =====
