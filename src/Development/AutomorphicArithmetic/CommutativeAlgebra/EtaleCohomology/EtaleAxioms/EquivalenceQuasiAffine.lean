module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgClosedFractionRing
public import Mathlib.RingTheory.Smooth.IntegralClosure
public import Development.EtaleCohomology.EtaleSheaves.LCSurjPf
public import Development.EtaleCohomology.EtaleSheaves.CoverPf
public import Development.EtaleCohomology.EtaleSheaves.EtaleDegreeZeroCohomologyEquivLocallyConstantFun
public import Development.EtaleCohomology.EtaleSheaves.FinEtSectionPf
public import Development.EtaleCohomology.EtaleSheaves.ZarLocalPf
public import Development.EtaleCohomology.EtaleSheaves.LPrimLocPf
public import Development.EtaleCohomology.EtaleSheaves.AcycQAPf
public import Development.EtaleCohomology.EtaleSheaves.TorEtPf
public import Development.EtaleCohomology.EtaleSheaves.PullInjOfIso
public import Development.EtaleCohomology.EtaleSheaves.LCBijPf
public import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
public import Development.EtaleCohomology.EtaleSheaves.EtAICPf
public import Development.EtaleCohomology.EtaleSheaves.LeafMVVanishPf
public import Development.EtaleCohomology.EtaleSheaves.ProjFPf
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
import Mathlib.RingTheory.Etale.Weakly
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.SimpleRing.Principal
import Mathlib.RingTheory.TotallySplit
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.HaveILetI
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.TypeStar
import Mathlib.Tactic.Linter.Style
import Mathlib.Order.CompletePartialOrder
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Tactic.Lemma
import Mathlib.CategoryTheory.Limits.Types.Pushouts
import Mathlib.CategoryTheory.Presentable.Type
import Mathlib.RingTheory.RegularLocalRing.Defs
import Development.EtaleCohomology.EtaleSheaves.DomOpenPf
import Development.EtaleCohomology.EtaleSheaves.LCMapPf
import Development.EtaleCohomology.EtaleSheaves.TorSecPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsOrthogonalIdempotentsIsDomainOfEtale, Development.EtaleCohomology.EtaleSheaves.DescentPf, Development.EtaleCohomology.EtaleSheaves.EmptyVan2, Development.EtaleCohomology.EtaleSheaves.EqvQAPf, Development.EtaleCohomology.EtaleSheaves.EtLiftPf, Development.EtaleCohomology.EtaleSheaves.FinOpenPf, Development.EtaleCohomology.EtaleSheaves.GlueOf, Development.EtaleCohomology.EtaleSheaves.LCGoodPf, Development.EtaleCohomology.EtaleSheaves.LocDiagPf, Development.EtaleCohomology.EtaleSheaves.LocFormPf, Development.EtaleCohomology.EtaleSheaves.LocSHPf, Development.EtaleCohomology.EtaleSheaves.PiecesPf, Development.EtaleCohomology.EtaleSheaves.PrimMapComp, Development.EtaleCohomology.EtaleSheaves.ProjGPf, Development.EtaleCohomology.EtaleSheaves.QAClosedPf, Development.EtaleCohomology.EtaleSheaves.StdCoverPf, Development.EtaleCohomology.EtaleSheaves.StdPBPf, Development.EtaleCohomology.EtaleSheaves.TwGenNZACPf, Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomology.EtaleAxioms.EquivalenceQuasiAffine

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsOrthogonalIdempotentsIsDomainOfEtale =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsOrthogonalIdempotentsIsDomainOfEtale", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.GalMapMul\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsAlgClosedFractionRing\npublic import Mathlib.RingTheory.Smooth.IntegralClosure\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Etale.Weakly\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TotallySplit\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct Polynomial

private theorem isIntegrallyClosed_of_AIC (T : Type) [CommRing T] [IsDomain T]
    (hT : GlobalTheory.EtC.AIC T) : IsIntegrallyClosed T := by
  rw [isIntegrallyClosed_iff (FractionRing T)]
  intro x hx
  obtain ⟨p, hp, hpx⟩ := hx
  induction h : p.natDegree using Nat.strong_induction_on generalizing p with
  | _ d ih =>
    rcases Nat.eq_zero_or_pos d with h0 | hpos
    · subst h0
      have h1 : p = 1 := hp.natDegree_eq_zero.1 h
      simp [h1] at hpx
    · obtain ⟨a, ha⟩ := hT p hp (h ▸ hpos)
      obtain ⟨q, hq⟩ := dvd_iff_isRoot.2 ha
      have hqm : q.Monic := (monic_X_sub_C a).of_mul_monic_left (hq ▸ hp)
      have hdeg : p.natDegree = 1 + q.natDegree := by
        rw [hq, (monic_X_sub_C a).natDegree_mul hqm, natDegree_X_sub_C]
      rw [hq, eval₂_mul] at hpx
      rcases mul_eq_zero.1 hpx with h1 | h1
      · refine ⟨a, ?_⟩
        simp only [eval₂_sub, eval₂_X, eval₂_C] at h1
        exact (sub_eq_zero.1 h1).symm
      · exact ih q.natDegree (by omega) q hqm h1 rfl

private theorem exists_of_idem (T C : Type) [CommRing T] [IsDomain T] [IsIntegrallyClosed T]
    [CommRing C] [Algebra T C] [Algebra.Etale T C] (z : C ⊗[T] FractionRing T) (hz : z * z = z) :
    ∃ s : C, algebraMap C (C ⊗[T] FractionRing T) s = z := by
  have hint : IsIntegral C z := by
    refine ⟨X ^ 2 - X, monic_X_pow_sub (n := 2) (lt_of_le_of_lt degree_X_le (by norm_num)), ?_⟩
    simp [eval₂_sub, pow_two, hz]
  obtain ⟨t, ht⟩ := (TensorProduct.toIntegralClosure_bijective_of_smooth (R := T) (S := C)
    (B := FractionRing T)).2 ⟨z, hint⟩
  have ht' : Algebra.TensorProduct.map (AlgHom.id C C)
      (integralClosure T (FractionRing T)).val t = z := congrArg Subtype.val ht
  rw [← ht']
  clear ht ht'
  induction t with
  | add x y hx hy =>
    obtain ⟨a, ha⟩ := hx
    obtain ⟨b, hb⟩ := hy
    exact ⟨a + b, by rw [map_add (f := _), map_add (f := _), ha, hb]⟩
  | tmul x y =>
    obtain ⟨r, hr⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral (R := T) y.2
    refine ⟨r • x, ?_⟩
    simp only [Algebra.TensorProduct.map_tmul, AlgHom.id_apply, Subalgebra.coe_val, ← hr,
      Algebra.TensorProduct.algebraMap_apply, Algebra.algebraMap_self, RingHom.id_apply]
    rw [Algebra.algebraMap_eq_smul_one, smul_tmul]

private theorem core (T C : Type) [CommRing T] [IsDomain T] [IsIntegrallyClosed T]
    [CommRing C] [Algebra T C] [Algebra.Etale T C] {n : ℕ}
    (g : C ⊗[T] FractionRing T ≃+* (Fin n → FractionRing T)) :
    ∃ (e : Fin n → C), CompleteOrthogonalIdempotents e ∧
      ∀ j, IsDomain (Localization.Away (e j)) := by
  classical
  let G : C →+* (Fin n → FractionRing T) :=
    g.toRingHom.comp (algebraMap C (C ⊗[T] FractionRing T))
  have hι : Function.Injective (algebraMap C (C ⊗[T] FractionRing T)) :=
    Algebra.TensorProduct.includeLeft_injective (S := T)
      (IsFractionRing.injective T (FractionRing T))
  have hG : Function.Injective G := g.injective.comp hι
  have hex : ∀ j : Fin n, ∃ s : C, G s = Pi.single j 1 := by
    intro j
    obtain ⟨s, hs⟩ := exists_of_idem T C (g.symm (Pi.single j 1)) (by
      apply g.injective
      rw [map_mul, g.apply_symm_apply, ← Pi.single_mul, one_mul])
    exact ⟨s, by simp [G, hs]⟩
  choose c hc using hex
  have hcoi : CompleteOrthogonalIdempotents c := by
    refine ⟨⟨fun i => hG ?_, fun i j hij => hG ?_⟩, hG ?_⟩
    · rw [map_mul, hc, ← Pi.single_mul, one_mul]
    · rw [map_mul, hc, hc, map_zero]
      ext k
      by_cases h : k = i
      · subst h; simp [Pi.single_eq_of_ne hij]
      · simp [Pi.single_eq_of_ne h]

    · rw [map_sum, map_one]
      simp only [hc]
      exact Finset.univ_sum_single 1
  refine ⟨c, hcoi, fun j => ?_⟩
  have hidem : IsIdempotentElem (c j) := hcoi.idem j
  let φ : C →+* FractionRing T := (Pi.evalRingHom _ j).comp G
  have hφ : φ (c j) = 1 := by simp [φ, hc]
  have hu : IsUnit (φ (c j)) := by rw [hφ]; exact isUnit_one
  let ψ : Localization.Away (c j) →+* FractionRing T := IsLocalization.Away.lift (c j) hu
  have hψ : ∀ x, ψ (algebraMap C _ x) = φ x := fun x => IsLocalization.Away.lift_eq (c j) hu x
  have hsurj : Function.Surjective (algebraMap C (Localization.Away (c j))) :=
    IsLocalization.Away.algebraMap_surjective_of_isIdempotentElem (c j) hidem
  have hone : algebraMap C (Localization.Away (c j)) (c j) = 1 :=
    (IsIdempotentElem.iff_eq_one_of_isUnit (IsLocalization.Away.algebraMap_isUnit (c j))).1
      (hidem.map _)
  have hinj : Function.Injective ψ := by
    set_option backward.isDefEq.respectTransparency.instanceSearchTypes false in rw [injective_iff_map_eq_zero]
    intro a ha
    obtain ⟨x, rfl⟩ := hsurj a
    rw [hψ] at ha
    have hx : x * c j = 0 := by
      apply hG
      rw [map_mul, hc, map_zero]
      ext k
      by_cases h : k = j
      · subst h
        simpa [φ] using ha
      · simp [Pi.single_eq_of_ne h]
    have := congrArg (algebraMap C (Localization.Away (c j))) hx
    rwa [map_mul, hone, mul_one, map_zero] at this
  exact hinj.isDomain ψ

theorem UpperTheory.exists_orthogonalIdempotents_isDomain_of_etale :
    ∀ (T C : Type) [CommRing T] [IsDomain T] [CommRing C] [Algebra T C] [Algebra.Etale T C], GlobalTheory.EtC.AIC T →
      ∃ (n : ℕ) (e : Fin n → C), CompleteOrthogonalIdempotents e ∧ ∀ j, IsDomain (Localization.Away (e j)) := by
  intro T C _ _ _ _ _ hT
  haveI := _root_.GlobalTheory.FractionRingRootRange.isAlgClosed_fractionRing T hT
  haveI := isIntegrallyClosed_of_AIC T hT
  let e0 := Algebra.FormallyEtale.equivPiOfIsSepClosed (FractionRing T) (FractionRing T ⊗[T] C)
  haveI := Algebra.FormallyUnramified.finite_of_free (FractionRing T) (FractionRing T ⊗[T] C)
  haveI : IsArtinianRing (FractionRing T ⊗[T] C) := isArtinian_of_tower (FractionRing T) inferInstance
  obtain ⟨n, ⟨eq⟩⟩ := Finite.exists_equiv_fin (PrimeSpectrum (FractionRing T ⊗[T] C))
  let g : C ⊗[T] FractionRing T ≃+* (Fin n → FractionRing T) :=
    ((Algebra.TensorProduct.comm T C (FractionRing T)).toRingEquiv.trans e0.toRingEquiv).trans
      (RingEquiv.piCongrLeft (fun _ : Fin n => FractionRing T) eq)
  obtain ⟨e, h1, h2⟩ := core T C g
  exact ⟨n, e, h1, h2⟩

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsOrthogonalIdempotentsIsDomainOfEtale =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.DescentPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.DescentPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LCSurjPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E1Cut LateralTheory.E.LocallyConstantH0

namespace LateralTheory.E.DescentPf

theorem res_comp {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (h : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res (h ≫ g) x = Sec.res h (Sec.res g x) := by
  simp [Sec.res]

theorem val_smul {q : ℕ} [NeZero q] (i : ℤ) {U : Scheme.{0}} (c : ZMod q) (x : Sec (tw q i) U) :
    c.val • x = (ULift.up c : ULift.{1} (ZMod q)) • x := by
  rw [← Nat.cast_smul_eq_nsmul (ULift.{1} (ZMod q))]
  congr 1
  apply ULift.ext
  rw [ULift.down_natCast, ZMod.natCast_zmod_val]

theorem Descent_of (hAC : LateralTheory.E.LCBijPf.TwGenNZAC) : LateralTheory.E.LCSurjPf.Descent := by
  intro q _ i m hm B _ ζ y hloc
  obtain ⟨S, hS, hP⟩ := hloc
  have hform : ∀ {V W : Scheme.{0}} (g : V ⟶ Spec (CommRingCat.of B)) (h : W ⟶ V) (c : ZMod q),
      Sec.res g y = c.val • twGen i ((gam ζ).map g.appTop.hom) →
      Sec.res (h ≫ g) y = c.val • twGen i ((gam ζ).map (h ≫ g).appTop.hom) := by
    intro V W g h c hc
    have hs : ∀ x : Sec (tw q i) V, Sec.res h (c.val • x) = c.val • Sec.res h x := fun x => map_nsmul _ _ x
    rw [res_comp, hc, hs, LateralTheory.E.LCBijPf.twGen_res]
    rfl
  have huniq : ∀ {V1 V2 : Scheme.{0}} (g1 : V1 ⟶ Spec (CommRingCat.of B)) (g2 : V2 ⟶ Spec (CommRingCat.of B))
      (c1 c2 : ZMod q), Sec.res g1 y = c1.val • twGen i ((gam ζ).map g1.appTop.hom) →
      Sec.res g2 y = c2.val • twGen i ((gam ζ).map g2.appTop.hom) →
      ∀ v1 v2, g1 v1 = g2 v2 → c1 = c2 := by
    intro V1 V2 g1 g2 c1 c2 h1 h2 v1 v2 hv
    obtain ⟨z, -, -⟩ := Scheme.Pullback.exists_preimage_pullback v1 v2 hv
    let A := (pullback g1 g2).affineOpenCover
    obtain ⟨w, -⟩ := A.covers z
    let a := A.f (A.idx z)
    have e1 := hform g1 (a ≫ pullback.fst g1 g2) c1 h1
    have e2 := hform g2 (a ≫ pullback.snd g1 g2) c2 h2
    have hcomp : (a ≫ pullback.snd g1 g2) ≫ g2 = (a ≫ pullback.fst g1 g2) ≫ g1 := by
      simp [pullback.condition]
    rw [hcomp] at e2
    have hne : Nontrivial (A.X (A.idx z)) := PrimeSpectrum.nontrivial w
    obtain ⟨φ, hφ⟩ := Spec.map_surjective ((a ≫ pullback.fst g1 g2) ≫ g1)
    have key := LateralTheory.E.LCBijPf.twGenNZ_of hAC q i (A.X (A.idx z)) (ζ.map φ.hom) (c1 - c2)
    refine sub_eq_zero.1 (key ?_)
    have e := e1.symm.trans e2
    rw [← hφ] at e
    rw [LateralTheory.E.LCBijPf.gam_map]
    rw [val_smul, val_smul] at e
    have hup : (ULift.up (c1 - c2) : ULift.{1} (ZMod q)) = ULift.up c1 - ULift.up c2 := rfl
    rw [val_smul, hup, sub_smul, sub_eq_zero]
    exact e
  obtain ⟨𝒰, h𝒰⟩ := (Scheme.mem_grothendieckTopology_iff (P := @Etale)).1 hS
  have hpiece : ∀ x : PrimeSpectrum B, ∃ (R : CommRingCat.{0}) (g : Spec R ⟶ Spec (CommRingCat.of B)),
      Etale g ∧ S.arrows g ∧ x ∈ Set.range g := by
    intro x
    obtain ⟨j, v, hv⟩ := ((Scheme.presieve₀_mem_precoverage_iff _).1 𝒰.mem₀).1 x
    let A := (𝒰.X j).affineOpenCover
    obtain ⟨w, hw⟩ := A.covers v
    have : Etale (𝒰.f j) := ((Scheme.presieve₀_mem_precoverage_iff _).1 𝒰.mem₀).2 j
    refine ⟨A.X (A.idx v), A.f (A.idx v) ≫ 𝒰.f j, inferInstance, S.downward_closed (h𝒰 _ _ (Presieve.ofArrows.mk j)) _, ⟨w, ?_⟩⟩
    rw [Scheme.Hom.comp_apply, hw, hv]
  choose R g hg hSg hx using hpiece
  have hc : ∀ x, ∃ c : ZMod q, Sec.res (g x) y = c.val • twGen i ((gam ζ).map (g x).appTop.hom) :=
    fun x => hP _ _ (hSg x)
  choose c hc using hc
  have key : ∀ (x : PrimeSpectrum B) {V : Scheme.{0}} (g' : V ⟶ Spec (CommRingCat.of B)) (c' : ZMod q),
      Sec.res g' y = c'.val • twGen i ((gam ζ).map g'.appTop.hom) → ∀ v, g' v = x → c x = c' := by
    intro x V g' c' h' v hv
    obtain ⟨u, hu⟩ := hx x
    exact huniq (g x) g' _ _ (hc x) h' u v (hu.trans hv.symm)
  have hlc : IsLocallyConstant c := by
    rw [IsLocallyConstant.iff_exists_open]
    intro x
    have := hg x
    refine ⟨Set.range (g x), (g x).isOpenMap.isOpen_range, hx x, fun x' hx' => ?_⟩
    obtain ⟨u, hu⟩ := hx'
    exact key x' (g x) (c x) (hc x) u hu
  let ψ : LocallyConstant (PrimeSpectrum B) (ZMod q) := ⟨c, hlc⟩
  refine ⟨ψ, Sieve.ofArrows (fun x => Spec (R x)) g, ?_, ?_⟩
  · exact Scheme.Cover.mem_grothendieckTopology
      (Scheme.Cover.mkOfCovers (P := @Etale) (PrimeSpectrum B) (fun x => Spec (R x)) g
        (fun x => by obtain ⟨u, hu⟩ := hx x; exact ⟨x, u, hu⟩) hg)
  · intro V k hk
    obtain ⟨W, h, k', hk', rfl⟩ := hk
    obtain ⟨x⟩ := hk'
    rw [res_comp, res_comp]
    congr 1
    rw [hc x]
    obtain ⟨φ, hφ⟩ := Spec.map_surjective (g x)
    have hlc' : lcMap φ.hom ψ = LocallyConstant.const _ (c x) := by
      ext u
      exact key _ (g x) (c x) (hc x) u (by rw [← hφ]; rfl)
    have e := hm.1 B (R x) φ.hom ζ ψ
    rw [hlc', hm.2, LateralTheory.E.LCBijPf.gam_map] at e
    rw [← hφ]
    exact e.symm

end LateralTheory.E.DescentPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.DescentPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EmptyVan2 =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EmptyVan2", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.CoverPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.EmptyVan₂

theorem sec_subsingleton {R : Type} [CommRing R] (G : Shv R) (X : Scheme.{0}) [IsEmpty X] :
    Subsingleton (G.obj.obj (op X)) := by
  have h := Sheaf.isTerminalOfBotCover G X (Scheme.bot_mem_grothendieckTopology X)
  constructor
  intro a b
  have e := h.hom_ext (ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} R) _ a))
    (ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} R) _ b))
  have := congrArg (fun f => f.hom (1 : ULift.{1} R)) e
  simpa using this

theorem free_isZero {R : Type} [CommRing R] (X : Scheme.{0}) [IsEmpty X] :
    IsZero ((free R).obj (yoneda.obj X)) := by
  rw [IsZero.iff_id_eq_zero]
  apply ((sheafificationAdjunction Scheme.etaleTopology _).homEquiv _ _).injective
  ext U x
  rcases isEmpty_or_nonempty U.unop with hU | hU
  · have := sec_subsingleton (R := R) ((free R).obj (yoneda.obj X)) U.unop
    exact @Subsingleton.elim _ this _ _
  · have : IsEmpty ((yoneda.obj X).obj U) := ⟨fun (f : U.unop ⟶ X) => IsEmpty.false (f.base (Classical.arbitrary U.unop))⟩
    have hx : x = 0 := Subsingleton.elim (α := ULift.{1} ((yoneda.obj X).obj U) →₀ ULift.{1} R) x 0
    rw [hx, map_zero, map_zero]

theorem chains_X_isZero {R : Type} [CommRing R] (X : Scheme.{0}) [IsEmpty X] (m : ℤ) :
    IsZero (((chains R).obj (sch.obj X)).X m) := by
  rcases le_or_gt m 0 with h | h
  · obtain ⟨p, rfl⟩ : ∃ p : ℕ, m = -(p : ℤ) := ⟨(-m).toNat, by omega⟩
    exact (free_isZero (R := R) X).of_iso (chainsXIso R _ p)
  · exact HomologicalComplex.isZero_extend_X _ _ m (fun i => by
      change -(i : ℤ) ≠ m; omega)

theorem cc_subsingleton {C : Type*} [Category C] [Preadditive C] {K L : CochainComplex C ℤ}
    (hK : ∀ m, IsZero (K.X m)) (n : ℤ) : Subsingleton (CohomologyClass K L n) := by
  have : Subsingleton (Cochain K L n) :=
    ⟨fun a b => Cochain.ext _ _ fun p q hpq => (hK p).eq_of_src _ _⟩
  have : Subsingleton (Cocycle K L n) := ⟨fun a b => Subtype.ext (Subsingleton.elim _ _)⟩
  constructor
  intro a b
  obtain ⟨a, rfl⟩ := QuotientAddGroup.mk_surjective a
  obtain ⟨b, rfl⟩ := QuotientAddGroup.mk_surjective b
  rw [Subsingleton.elim a b]

theorem EmptyVan_of : LateralTheory.E.CoverPf.EmptyVan := by
  intro _ q _ i n S _ hS x
  have : IsEmpty (Spec (CommRingCat.of S)) :=
    ⟨fun p => (p : PrimeSpectrum S).isPrime.ne_top (Subsingleton.elim _ _)⟩
  have := cc_subsingleton (L := res (ZMod q) (tw q i)) (chains_X_isZero (R := ZMod q) (Spec (CommRingCat.of S))) (n + 1)
  exact Subsingleton.elim _ _

end LateralTheory.E.EmptyVan₂
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EmptyVan2 =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EqvQAPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EqvQAPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleDegreeZeroCohomologyEquivLocallyConstantFun\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.EqvQAPf

theorem prim_of_aic (q : ℕ) [NeZero q] (S : Type) [CommRing S] (hS : AIC S) (hq : IsUnit (q : S)) :
    Nonempty (Prim q S) := by
  rcases subsingleton_or_nontrivial S with hs | hs
  · exact ⟨⟨0, hq, Subsingleton.elim _ _⟩⟩
  have hm : ((Polynomial.cyclotomic q ℤ).map (Int.castRingHom S)).Monic :=
    (Polynomial.cyclotomic.monic q ℤ).map _
  have hd : 0 < ((Polynomial.cyclotomic q ℤ).map (Int.castRingHom S)).natDegree := by
    rw [(Polynomial.cyclotomic.monic q ℤ).natDegree_map, Polynomial.natDegree_cyclotomic]
    exact Nat.totient_pos.mpr (Nat.pos_of_ne_zero (NeZero.ne q))
  obtain ⟨a, ha⟩ := hS _ hm hd
  exact ⟨⟨a, hq, by rw [Polynomial.aeval_def, Polynomial.eval₂_eq_eval_map]; simpa using ha⟩⟩

theorem bij_of_sub {A B : Type*} [AddZeroClass A] [AddZeroClass B] [Subsingleton A] [Subsingleton B] (f : A →+ B) :
    Function.Bijective f :=
  ⟨fun x y _ => Subsingleton.elim x y, fun _ => ⟨0, Subsingleton.elim _ _⟩⟩

end LateralTheory.E.EqvQAPf

open LateralTheory.E.t_E1Cut in
theorem LateralTheory.E.t_E1Cut.EqvQA_of (hAcyc : AcycQA) (hQA : QAClosed) (hH0 : EtaleDegreeZeroCohomologyEquivLocallyConstantFunctions) (hLC : LCGood) : EqvQA := by
  intro h1 h9 hb1 hb2 q _ S _ J hS hJ hq i n
  have hqJ : IsUnit (q : S ⧸ J) := by simpa using hq.map (Ideal.Quotient.mk J)
  have hSJ : QA (S ⧸ J) := (hQA S hS).2.2 J
  rcases lt_trichotomy n 0 with hn | rfl | hn
  · haveI := (h9 (ZMod q) (tw q i)).1 (sp S) n hn
    haveI := (h9 (ZMod q) (tw q i)).1 (sp (S ⧸ J)) n hn
    exact LateralTheory.E.EqvQAPf.bij_of_sub _
  · obtain ⟨ζ⟩ := LateralTheory.E.EqvQAPf.prim_of_aic q S (hQA S hS).1 hq
    obtain ⟨e, he⟩ := hH0 h9 q i
    have key : ∀ φ, pull _ (spMap (Ideal.Quotient.mk J)) (tw q i) 0 (e S ζ φ) =
        e (S ⧸ J) (ζ.map (Ideal.Quotient.mk J)) (lcMap (Ideal.Quotient.mk J) φ) :=
      fun φ => he S (S ⧸ J) (Ideal.Quotient.mk J) ζ φ
    have hcomp : (pull _ (spMap (Ideal.Quotient.mk J)) (tw q i) 0) =
        (e (S ⧸ J) (ζ.map (Ideal.Quotient.mk J))) ∘
          (fun φ => lcMap (Ideal.Quotient.mk J) φ) ∘ (e S ζ).symm := by
      funext x
      obtain ⟨φ, rfl⟩ := (e S ζ).surjective x
      simp only [Function.comp_apply, AddEquiv.symm_apply_apply]
      exact key φ
    rw [hcomp]
    exact (e _ _).bijective.comp ((hLC S J hJ (ZMod q)).comp (e S ζ).symm.bijective)
  · haveI := hAcyc h1 h9 hb1 hb2 q S hS hq n i hn
    haveI := hAcyc h1 h9 hb1 hb2 q (S ⧸ J) hSJ hqJ n i hn
    exact LateralTheory.E.EqvQAPf.bij_of_sub _
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EqvQAPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.EtLiftPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.EtLiftPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleDegreeZeroCohomologyEquivLocallyConstantFun\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open MvPolynomial

namespace LateralTheory.E.EtLiftPf

set_option linter.style.haveILetI false

theorem EtLift_of : LateralTheory.E.t_E1Cut.EtLift := by
  intro T S C _ _ _ _ _ π hπ
  letI : Algebra T S := π.toAlgebra
  letI : Algebra T C := ((algebraMap S C).comp π).toAlgebra
  haveI : IsScalarTower T S C := IsScalarTower.of_algebraMap_eq (fun _ => rfl)
  obtain ⟨ι, σ, _, _, P, hP⟩ := (Algebra.Etale.iff_isStandardSmoothOfRelativeDimension_zero.1 ‹_›).out
  haveI : P.HasCoeffs T := ⟨fun x _ => hπ x⟩
  let M := P.ModelOfHasCoeffs T
  let P0 := P.toPreSubmersivePresentation.ofHasCoeffs T
  let J : M := P0.jacobian
  let C' := Localization.Away J
  let Q := Algebra.PreSubmersivePresentation.localizationAway C' J
  let R0 := Q.comp P0
  have hJu : IsUnit (algebraMap M C' J) := IsLocalization.Away.algebraMap_isUnit J
  have hJ : R0.jacobian = algebraMap M C' J * algebraMap M C' J := by
    simp only [R0, Algebra.PreSubmersivePresentation.comp_jacobian_eq_jacobian_smul_jacobian, Q,
      Algebra.PreSubmersivePresentation.localizationAway_jacobian, Algebra.smul_def]
    rfl
  let R1 : Algebra.SubmersivePresentation T C' (Unit ⊕ ι) (Unit ⊕ σ) :=
    { R0 with jacobian_isUnit := by rw [hJ]; exact hJu.mul hJu }
  have hdim : R1.dimension = 0 := by
    have := Algebra.PreSubmersivePresentation.dimension_comp_eq_dimension_add_dimension Q P0
    have hQ : Q.dimension = 0 := Algebra.Presentation.localizationAway_dimension_zero J
    have hP0 : P0.dimension = 0 := hP
    exact this.trans (by rw [hQ, hP0])
  haveI : Algebra.Etale T C' := by
    haveI := R1.isStandardSmoothOfRelativeDimension hdim
    infer_instance

  let φM : M →ₐ[T] C := Ideal.Quotient.liftₐ _ (MvPolynomial.aeval P.val) (by
    intro a ha
    have hle : Ideal.span (Set.range (P.relationOfHasCoeffs T)) ≤
        RingHom.ker (MvPolynomial.aeval (R := T) P.val) := by
      rw [Ideal.span_le]; rintro _ ⟨r, rfl⟩
      exact P.toPresentation.aeval_val_relationOfHasCoeffs T r
    exact hle ha)
  have hφmk : ∀ p : MvPolynomial ι T, φM (Ideal.Quotient.mk _ p) = MvPolynomial.aeval P.val p :=
    fun p => rfl
  have hφJ : φM J = P.jacobian := by
    classical
    cases nonempty_fintype σ
    rw [← P.aeval_jacobianOfHasCoeffs T]
    show φM P0.jacobian = _
    rw [P0.jacobian_eq_jacobiMatrix_det]
    unfold Algebra.SubmersivePresentation.jacobianOfHasCoeffs
    exact (hφmk _).trans (by congr 1; convert rfl)
  let ρ : C' →+* C := IsLocalization.Away.lift J (hφJ ▸ P.jacobian_isUnit)
  have hρM : ∀ m : M, ρ (algebraMap M C' m) = φM m := fun m => IsLocalization.lift_eq _ m
  refine ⟨C', inferInstance, inferInstance, ρ, inferInstance, ?_, ?_, ?_⟩
  · intro c
    obtain ⟨q, hq⟩ := MvPolynomial.map_surjective π hπ (P.σ c)
    refine ⟨algebraMap M C' (Ideal.Quotient.mk _ q), ?_⟩
    rw [hρM, hφmk, ← MvPolynomial.aeval_map_algebraMap S]
    change MvPolynomial.aeval P.val (MvPolynomial.map π q) = c
    rw [hq, P.aeval_val_σ]
  · ext t
    show ρ (algebraMap T C' t) = _
    rw [IsScalarTower.algebraMap_apply T M C', hρM, AlgHom.commutes]
    rfl
  · let K : Ideal C' := (RingHom.ker π).map (algebraMap T C')
    have hT : ∀ t, ρ (algebraMap T C' t) = algebraMap S C (π t) := by
      intro t; rw [IsScalarTower.algebraMap_apply T M C', hρM, AlgHom.commutes]; rfl
    apply le_antisymm
    swap
    · rw [Ideal.map_le_iff_le_comap]
      intro t ht
      rw [Ideal.mem_comap, RingHom.mem_ker, hT, RingHom.mem_ker.1 ht, map_zero]
    let e := RingHom.quotientKerEquivOfSurjective hπ
    let θ : S →+* C' ⧸ K :=
      (Ideal.quotientMap K (algebraMap T C') Ideal.le_comap_map).comp e.symm.toRingHom
    have hθ : ∀ t, θ (π t) = Ideal.Quotient.mk K (algebraMap T C' t) := by
      intro t
      have : e.symm (π t) = Ideal.Quotient.mk _ t := by
        rw [RingEquiv.symm_apply_eq]; rfl
      show Ideal.quotientMap K (algebraMap T C') Ideal.le_comap_map (e.symm (π t)) = _
      rw [this, Ideal.quotientMap_mk]
    let xv : ι → C' ⧸ K := fun i => Ideal.Quotient.mk K (algebraMap M C' (Ideal.Quotient.mk _ (X i)))
    let χ : MvPolynomial ι S →+* C' ⧸ K := MvPolynomial.eval₂Hom θ xv
    have hkey : ∀ q : MvPolynomial ι T, χ (MvPolynomial.map π q) =
        Ideal.Quotient.mk K (algebraMap M C' (Ideal.Quotient.mk _ q)) := by
      intro q
      have h2 : χ.comp (MvPolynomial.map π) =
          ((Ideal.Quotient.mk K).comp (algebraMap M C')).comp (Ideal.Quotient.mk _) := by
        apply MvPolynomial.ringHom_ext
        · intro t
          simp only [RingHom.comp_apply, MvPolynomial.map_C, χ, MvPolynomial.coe_eval₂Hom,
            MvPolynomial.eval₂_C, hθ]
          rw [IsScalarTower.algebraMap_apply T M C']
          rfl
        · intro i
          simp [χ, xv]
      exact RingHom.congr_fun h2 q
    have hker : ∀ a ∈ P.ker, χ a = 0 := by
      intro a ha
      rw [← P.span_range_relation_eq_ker] at ha
      have hle : Ideal.span (Set.range P.relation) ≤ RingHom.ker χ := by
        rw [Ideal.span_le]; rintro _ ⟨r, rfl⟩
        rw [SetLike.mem_coe, RingHom.mem_ker, ← P.toPresentation.map_relationOfHasCoeffs T r]
        change χ (MvPolynomial.map π _) = 0
        rw [hkey, Ideal.Quotient.eq_zero_iff_mem.2 (Ideal.subset_span (Set.mem_range_self r)), map_zero, map_zero]
      exact hle ha
    let ψ : C →+* C' ⧸ K := (Ideal.Quotient.lift P.ker χ hker).comp P.quotientEquiv.symm.toRingHom
    have hψP : ∀ p, ψ (algebraMap P.Ring C p) = χ p := by
      intro p
      show Ideal.Quotient.lift P.ker χ hker (P.quotientEquiv.symm (algebraMap _ _ p)) = χ p
      rw [← P.quotientEquiv_mk, AlgEquiv.symm_apply_apply]
      rfl
    have hψ : ψ.comp ρ = Ideal.Quotient.mk K := by
      apply IsLocalization.ringHom_ext (Submonoid.powers J)
      apply Ideal.Quotient.ringHom_ext
      refine RingHom.ext fun q => ?_
      simp only [RingHom.comp_apply]
      rw [hρM, hφmk, ← MvPolynomial.aeval_map_algebraMap S, ← hkey, ← hψP,
        Algebra.Generators.algebraMap_apply]
      rfl
    intro z hz
    rw [RingHom.mem_ker] at hz
    have h3 := RingHom.congr_fun hψ z
    simp only [RingHom.comp_apply, hz, map_zero] at h3
    exact Ideal.Quotient.eq_zero_iff_mem.1 h3.symm
end LateralTheory.E.EtLiftPf -- clump:auto
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.EtLiftPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.FinOpenPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.FinOpenPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.FinEtSectionPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.E.FinOpenPf

theorem range_closed (S C : Type) [CommRing S] [CommRing C] [Algebra S C] [Module.Finite S C] (e : C)
    (he : IsIdempotentElem e) :
    IsClosed (Set.range (PrimeSpectrum.comap ((algebraMap C (Localization.Away e)).comp (algebraMap S C)))) := by
  rw [PrimeSpectrum.comap_comp, Set.range_comp,
    PrimeSpectrum.localization_away_comap_range (Localization.Away e) e,
    PrimeSpectrum.basicOpen_eq_zeroLocus_of_isIdempotentElem e he]
  exact PrimeSpectrum.isClosedMap_comap_of_isIntegral _ (fun x => Algebra.IsIntegral.isIntegral (R := S) x) _
    (PrimeSpectrum.isClosed_zeroLocus _)

theorem FinOpen_of : LateralTheory.E.FinEtSectionPf.FinOpen := by
  intro S C _ _ _ _ e he hoi
  set φ := (algebraMap C (Localization.Away e)).comp (algebraMap S C) with hφ
  have hopen : IsOpen (Set.range (PrimeSpectrum.comap φ)) := hoi.isOpen_range
  obtain ⟨ε, hε, hr⟩ := PrimeSpectrum.exists_idempotent_basicOpen_eq_of_isClopen
    ⟨range_closed S C e he, hopen⟩
  refine ⟨ε, hε, hr, ?_⟩
  let f := Spec.map (CommRingCat.ofHom φ)
  let g := Spec.map (CommRingCat.ofHom (algebraMap S (Localization.Away ε)))
  have H : Set.range g ⊆ Set.range f := by
    change Set.range (PrimeSpectrum.comap (algebraMap S (Localization.Away ε))) ⊆
      Set.range (PrimeSpectrum.comap φ)
    rw [PrimeSpectrum.localization_away_comap_range (Localization.Away ε) ε, hr]
  let l := IsOpenImmersion.lift f g H
  refine ⟨(Spec.preimage l).hom, ?_⟩
  have key : CommRingCat.ofHom φ ≫ Spec.preimage l =
      CommRingCat.ofHom (algebraMap S (Localization.Away ε)) := by
    apply Spec.map_injective
    rw [Spec.map_comp, Spec.map_preimage]
    exact IsOpenImmersion.lift_fac f g H
  exact congrArg CommRingCat.Hom.hom key

end LateralTheory.E.FinOpenPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.FinOpenPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.GlueOf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.GlueOf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.FinEtSectionPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.E.Gluing₂

theorem orth {S : Type} [CommRing S] : ∀ (n : ℕ) (ε : Fin n → S), (∀ j, IsIdempotentElem (ε j)) →
    ∃ ε' : Fin n → S, OrthogonalIdempotents ε' ∧ (∀ j, ∃ c, ε' j = ε j * c) ∧
      ∑ j, ε' j = 1 - ∏ j, (1 - ε j) := by
  intro n
  induction n with
  | zero => intro ε _; exact ⟨fun _ => 0, ⟨fun i => i.elim0, fun i => i.elim0⟩, fun i => i.elim0, by simp⟩
  | succ n ih =>
    intro ε hε
    obtain ⟨ε₀, ho, hd, hs⟩ := ih (fun j => ε j.succ) (fun j => hε j.succ)
    have ha : IsIdempotentElem (ε 0) := hε 0
    have ha' : IsIdempotentElem (1 - ε 0) := ha.one_sub
    refine ⟨Fin.cons (ε 0) (fun j => (1 - ε 0) * ε₀ j), ⟨?_, ?_⟩, ?_, ?_⟩
    · intro i
      refine Fin.cases ?_ (fun j => ?_) i
      · simpa using ha
      · simp only [Fin.cons_succ]
        exact ha'.mul (ho.idem j)
    · intro i k hik
      induction i using Fin.cases with
      | zero =>
        induction k using Fin.cases with
        | zero => exact absurd rfl hik
        | succ k =>
          simp only [Fin.cons_zero, Fin.cons_succ]
          rw [← mul_assoc, mul_sub, mul_one, ha.eq, sub_self, zero_mul]
      | succ i =>
        induction k using Fin.cases with
        | zero =>
          simp only [Fin.cons_zero, Fin.cons_succ]
          rw [mul_comm, ← mul_assoc, mul_sub, mul_one, ha.eq, sub_self, zero_mul]
        | succ k =>
          simp only [Fin.cons_succ]
          have hik' : i ≠ k := fun h => hik (by rw [h])
          calc (1 - ε 0) * ε₀ i * ((1 - ε 0) * ε₀ k) = ((1 - ε 0) * (1 - ε 0)) * (ε₀ i * ε₀ k) := by ring
            _ = 0 := by rw [ho.ortho hik', mul_zero]
    · intro i
      refine Fin.cases ⟨1, by simp⟩ (fun j => ?_) i
      obtain ⟨c, hc⟩ := hd j
      exact ⟨(1 - ε 0) * c, by simp only [Fin.cons_succ, hc]; ring⟩
    · rw [Fin.sum_univ_succ, Fin.prod_univ_succ]
      simp only [Fin.cons_zero, Fin.cons_succ]
      rw [← Finset.mul_sum, hs]
      ring

theorem glue : LateralTheory.E.FinEtSectionPf.Glue := by
  intro S C _ _ _ n e he hsurj ε hε hr hh
  obtain ⟨ε', ho, hd, hs⟩ := orth n ε hε

  have hf0 : ∏ j, (1 - ε j) = 0 := by
    have hidem : IsIdempotentElem (∏ j, (1 - ε j)) := by
      have := ho.isIdempotentElem_sum (s := Finset.univ).one_sub
      rwa [hs, sub_sub_cancel] at this
    refine hidem.eq_zero_of_isNilpotent ((nilpotent_iff_mem_prime).2 fun J hJ => ?_)
    obtain ⟨q, hq⟩ := hsurj ⟨J, hJ⟩
    have : ∃ j, e j ∉ q.asIdeal := by
      by_contra hall
      push_neg at hall
      exact q.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 (he.complete ▸ Ideal.sum_mem _ fun j _ => hall j))
    obtain ⟨j, hj⟩ := this
    have hq' : q ∈ Set.range (PrimeSpectrum.comap (algebraMap C (Localization.Away (e j)))) := by
      rw [PrimeSpectrum.localization_away_comap_range (Localization.Away (e j)) (e j)]; exact hj
    obtain ⟨q', rfl⟩ := hq'
    have hmem : (⟨J, hJ⟩ : PrimeSpectrum S) ∈ (PrimeSpectrum.basicOpen (ε j) : Set (PrimeSpectrum S)) := by
      rw [← hr j]; exact ⟨q', by rw [PrimeSpectrum.comap_comp_apply, hq]⟩
    have hεj : ε j ∉ J := hmem
    have h1 : 1 - ε j ∈ J := by
      have : ε j * (1 - ε j) ∈ J := by rw [mul_sub, mul_one, (hε j).eq, sub_self]; exact J.zero_mem
      exact (hJ.mem_or_mem this).resolve_left hεj
    exact J.mem_of_dvd (Finset.dvd_prod_of_mem (fun i => 1 - ε i) (Finset.mem_univ j)) h1
  have hco : CompleteOrthogonalIdempotents ε' := ⟨ho, by rw [hs, hf0, sub_zero]⟩
  choose h hh using hh
  choose c hc using hd
  have hunit : ∀ j, IsUnit (Ideal.Quotient.mk (Ideal.span {1 - ε' j}) (ε j)) := by
    intro j
    refine isUnit_iff_exists_inv.2 ⟨Ideal.Quotient.mk _ (c j), ?_⟩
    rw [← (Ideal.Quotient.mk (Ideal.span {1 - ε' j})).map_mul, ← hc j, ← (Ideal.Quotient.mk (Ideal.span {1 - ε' j})).map_one, Ideal.Quotient.eq]
    have hm := (Ideal.span {1 - ε' j}).neg_mem (Ideal.mem_span_singleton_self (1 - ε' j))
    rwa [neg_sub] at hm
  let L : ∀ j, Localization.Away (ε j) →+* S ⧸ Ideal.span {1 - ε' j} :=
    fun j => IsLocalization.Away.lift (ε j) (hunit j)
  let Φ : C →+* (∀ j, S ⧸ Ideal.span {1 - ε' j}) :=
    RingHom.pi fun j => ((L j).comp (h j)).comp (algebraMap C (Localization.Away (e j)))
  let E := RingEquiv.ofBijective _ hco.bijective_pi
  have hΦ : ∀ s : S, Φ (algebraMap S C s) = E s := by
    intro s
    funext j
    have := congrArg (fun g => L j (g s)) (hh j)
    simp only [RingHom.comp_apply] at this
    show L j (h j (algebraMap C _ (algebraMap S C s))) = Ideal.Quotient.mk _ s
    rw [this]
    exact IsLocalization.Away.lift_eq (ε j) (hunit j) s
  refine ⟨{ E.symm.toRingHom.comp Φ with commutes' := fun s => ?_ }⟩
  simp only [RingHom.toMonoidHom_eq_coe, OneHom.toFun_eq_coe, MonoidHom.toOneHom_coe,
    MonoidHom.coe_coe, RingHom.coe_comp, Function.comp_apply, hΦ]
  simp

end LateralTheory.E.Gluing₂
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.GlueOf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LCGoodPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LCGoodPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleDegreeZeroCohomologyEquivLocallyConstantFun\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open LateralTheory.E.t_E1Cut

namespace LateralTheory.E.LCGoodPf

theorem closed_empty {C : Type} [CommRing C] {J : Ideal C} (hJ : J ≤ Ideal.jacobson ⊥)
    (Z : Set (PrimeSpectrum C)) (hZ : IsClosed Z)
    (h : ∀ z : PrimeSpectrum (C ⧸ J), PrimeSpectrum.comap (Ideal.Quotient.mk J) z ∉ Z) : Z = ∅ := by
  obtain ⟨I, rfl⟩ := (PrimeSpectrum.isClosed_iff_zeroLocus_ideal Z).1 hZ
  by_cases hI : I = ⊤
  · subst hI; simp
  obtain ⟨M, hM, hIM⟩ := Ideal.exists_le_maximal I hI
  exfalso
  have hJM : J ≤ M := le_trans hJ (sInf_le ⟨bot_le, hM⟩)
  have hp : (⟨M, hM.isPrime⟩ : PrimeSpectrum C) ∈ Set.range (PrimeSpectrum.comap (Ideal.Quotient.mk J)) := by
    have hker : RingHom.ker (Ideal.Quotient.mk J) ≤ M := by rw [Ideal.mk_ker]; exact hJM
    have := hM.isPrime
    have hpr : (M.map (Ideal.Quotient.mk J)).IsPrime := Ideal.map_isPrime_of_surjective Ideal.Quotient.mk_surjective hker
    refine ⟨⟨M.map (Ideal.Quotient.mk J), hpr⟩, ?_⟩
    ext1
    show Ideal.comap _ (Ideal.map _ M) = M
    rw [Ideal.comap_map_of_surjective _ Ideal.Quotient.mk_surjective]
    refine sup_eq_left.2 ?_
    rw [← RingHom.ker_eq_comap_bot]; exact hker
  obtain ⟨z, hz⟩ := hp
  apply h z
  rw [hz]
  exact hIM

theorem lcMap_apply {A B : Type} [CommRing A] [CommRing B] (f : A →+* B) {Y : Type}
    (φ : LocallyConstant (PrimeSpectrum A) Y) (z : PrimeSpectrum B) :
    lcMap f φ z = φ (PrimeSpectrum.comap f z) := rfl

theorem isClosed_ne {X Y : Type} [TopologicalSpace X] (a b : LocallyConstant X Y) :
    IsClosed {x | a x ≠ b x} := by
  have : IsLocallyConstant (fun x => (a x = b x : Prop)) :=
    IsLocallyConstant.comp₂ a.isLocallyConstant b.isLocallyConstant (fun u v => (u = v : Prop))
  have h2 := this.isClosed_fiber False
  convert h2 using 1
  ext x; simp

theorem LCGood_of : LCGood := by
  intro C _ J hG Y
  obtain ⟨hJ, hlift⟩ := hG
  constructor
  · intro a b hab
    have hZ := closed_empty hJ _ (isClosed_ne a b) (fun z hz => hz (by
      have := congrArg (fun φ => φ z) hab
      simpa [lcMap_apply] using this))
    ext x
    by_contra hx
    have : x ∈ ({x | a x ≠ b x} : Set _) := hx
    rw [hZ] at this; exact this
  · intro ψ

    have hU : ∀ y : Y, ∃ U : Set (PrimeSpectrum C), IsClopen U ∧
        PrimeSpectrum.comap (Ideal.Quotient.mk J) ⁻¹' U = ψ ⁻¹' {y} := by
      intro y
      obtain ⟨e, he, hF⟩ := PrimeSpectrum.isClopen_iff.1 (ψ.isLocallyConstant.isClopen_fiber y)
      obtain ⟨x, hx, hxe⟩ := hlift e he
      refine ⟨PrimeSpectrum.basicOpen x, PrimeSpectrum.isClopen_iff.2 ⟨x, hx, rfl⟩, ?_⟩
      have hF' : ψ ⁻¹' {y} = (PrimeSpectrum.basicOpen e : Set (PrimeSpectrum (C ⧸ J))) := hF
      rw [hF', ← hxe]
      ext p
      simp
    choose U hUc hUp using hU
    have hmem : ∀ z y, PrimeSpectrum.comap (Ideal.Quotient.mk J) z ∈ U y ↔ ψ z = y := by
      intro z y
      have := congrArg (fun s => z ∈ s) (hUp y)
      simpa using this
    have hcover : ∀ x, ∃ y, x ∈ U y := by
      have hE := closed_empty hJ (⋃ y, U y)ᶜ
        (isOpen_iUnion (fun y => (hUc y).isOpen)).isClosed_compl
        (fun z hz => hz (Set.mem_iUnion.2 ⟨ψ z, (hmem z _).2 rfl⟩))
      intro x
      by_contra hx
      push Not at hx
      have : x ∈ (⋃ y, U y)ᶜ := by simpa using hx
      rw [hE] at this
      exact this
    have huniq : ∀ x y y', x ∈ U y → x ∈ U y' → y = y' := by
      intro x y y' h1 h2
      by_contra hne
      have := closed_empty hJ (U y ∩ U y') ((hUc y).isClosed.inter (hUc y').isClosed)
        (fun z hz => hne (((hmem z y).1 hz.1).symm.trans ((hmem z y').1 hz.2)))
      have hx : x ∈ U y ∩ U y' := ⟨h1, h2⟩
      rw [this] at hx; exact hx
    classical
    let g : PrimeSpectrum C → Y := fun x => Classical.choose (hcover x)
    have hg : ∀ x y, g x = y ↔ x ∈ U y := by
      intro x y
      constructor
      · rintro rfl; exact Classical.choose_spec (hcover x)
      · intro h; exact huniq x _ _ (Classical.choose_spec (hcover x)) h
    have hgl : IsLocallyConstant g := by
      rw [IsLocallyConstant.iff_isOpen_fiber]
      intro y
      have : g ⁻¹' {y} = U y := by ext x; simp [hg]
      rw [this]; exact (hUc y).isOpen
    refine ⟨⟨g, hgl⟩, ?_⟩
    ext z
    rw [lcMap_apply]
    exact (hg _ _).2 ((hmem z _).2 rfl)

end LateralTheory.E.LCGoodPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LCGoodPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocDiagPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocDiagPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ZarLocalPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits Opposite

namespace LateralTheory.E.LocDiagPf


open Classical in
def g {S : Type} [CommRing S] (p : PrimeSpectrum S) (s : Finset p.asIdeal.primeCompl) : S :=
  ∏ x ∈ s, (x : S)

variable {S : Type} [CommRing S] (p : PrimeSpectrum S)

theorem g_mem (s : Finset p.asIdeal.primeCompl) : g p s ∈ p.asIdeal.primeCompl := by
  classical
  unfold g
  convert Submonoid.prod_mem _ (fun (x : p.asIdeal.primeCompl) _ => x.2)

theorem g_dvd {s t : Finset p.asIdeal.primeCompl} (h : s ⊆ t) : g p s ∣ g p t := by
  classical
  unfold g
  convert Finset.prod_dvd_prod_of_subset s t (fun x : p.asIdeal.primeCompl => (x : S)) h

theorem g_single (y : p.asIdeal.primeCompl) : g p {y} = (y : S) := by
  classical
  unfold g
  convert Finset.prod_singleton (fun x : p.asIdeal.primeCompl => (x : S)) y

theorem unitAway {s t : Finset p.asIdeal.primeCompl} (h : s ⊆ t) :
    IsUnit (algebraMap S (Localization.Away (g p t)) (g p s)) :=
  isUnit_of_dvd_unit (map_dvd _ (g_dvd p h)) (IsLocalization.Away.algebraMap_isUnit _)

def tr {s t : Finset p.asIdeal.primeCompl} (h : s ⊆ t) :
    Localization.Away (g p s) →+* Localization.Away (g p t) :=
  IsLocalization.Away.lift (g p s) (unitAway p h)

theorem tr_comp {s t : Finset p.asIdeal.primeCompl} (h : s ⊆ t) :
    (tr p h).comp (algebraMap S _) = algebraMap S _ :=
  IsLocalization.Away.lift_comp _ _

theorem tr_apply {s t : Finset p.asIdeal.primeCompl} (h : s ⊆ t) (x : S) :
    tr p h (algebraMap S _ x) = algebraMap S _ x :=
  IsLocalization.Away.lift_eq _ _ _

theorem away_ext {s : Finset p.asIdeal.primeCompl} {P : Type} [CommRing P]
    {u v : Localization.Away (g p s) →+* P}
    (h : u.comp (algebraMap S _) = v.comp (algebraMap S _)) : u = v :=
  IsLocalization.ringHom_ext (Submonoid.powers (g p s)) h

def Dg : Finset p.asIdeal.primeCompl ⥤ CommRingCat.{0} where
  obj s := CommRingCat.of (Localization.Away (g p s))
  map {s t} h := CommRingCat.ofHom (tr p (leOfHom h))
  map_id s := by
    ext1
    apply away_ext
    simp only [CommRingCat.hom_ofHom, CommRingCat.hom_id, tr_comp]
    rfl
  map_comp {s t u} a b := by
    ext1
    apply away_ext
    simp only [CommRingCat.hom_ofHom, CommRingCat.hom_comp]
    rw [RingHom.comp_assoc, tr_comp, tr_comp, tr_comp]

theorem unitLoc (s : Finset p.asIdeal.primeCompl) :
    IsUnit (algebraMap S (Localization.AtPrime p.asIdeal) (g p s)) :=
  IsLocalization.map_units _ (⟨g p s, g_mem p s⟩ : p.asIdeal.primeCompl)

def toLoc (s : Finset p.asIdeal.primeCompl) :
    Localization.Away (g p s) →+* Localization.AtPrime p.asIdeal :=
  IsLocalization.Away.lift (g p s) (unitLoc p s)

theorem toLoc_comp (s : Finset p.asIdeal.primeCompl) :
    (toLoc p s).comp (algebraMap S _) = algebraMap S _ :=
  IsLocalization.Away.lift_comp _ _

theorem toLoc_apply (s : Finset p.asIdeal.primeCompl) (x : S) :
    toLoc p s (algebraMap S _ x) = algebraMap S _ x :=
  IsLocalization.Away.lift_eq _ _ _

def Cc : Cocone (Dg p) where
  pt := CommRingCat.of (Localization.AtPrime p.asIdeal)
  ι :=
    { app := fun s => (CommRingCat.ofHom (toLoc p s) : (Dg p).obj s ⟶ CommRingCat.of (Localization.AtPrime p.asIdeal))
      naturality := fun s t h => by
        ext1
        apply away_ext
        simp only [Functor.const_obj_map, CommRingCat.hom_comp, CommRingCat.hom_ofHom, Dg]
        rw [RingHom.comp_assoc, tr_comp, toLoc_comp, RingHom.comp_assoc, toLoc_comp]
        rfl }

def phi (c : Cocone (Dg p)) : S →+* c.pt :=
  (c.ι.app ∅).hom.comp (algebraMap S (Localization.Away (g p ∅)))

theorem cocone_comp (c : Cocone (Dg p)) (s : Finset p.asIdeal.primeCompl) :
    (c.ι.app s).hom.comp (algebraMap S (Localization.Away (g p s))) = phi p c := by
  have hw := c.w (homOfLE (Finset.empty_subset s))
  unfold phi
  rw [← hw]
  ext x
  exact congrArg (c.ι.app s).hom (tr_apply p (Finset.empty_subset s) x).symm

theorem phi_unit (c : Cocone (Dg p)) (y : p.asIdeal.primeCompl) : IsUnit (phi p c y) := by
  rw [← DFunLike.congr_fun (cocone_comp p c {y}) (y : S)]
  have hy : IsUnit (algebraMap S (Localization.Away (g p {y})) y) := by
    rw [show (y : S) = g p {y} from (g_single p y).symm]
    exact IsLocalization.Away.algebraMap_isUnit _
  exact IsUnit.map (c.ι.app {y}).hom hy

def isColim : IsColimit (Cc p) where
  desc c := CommRingCat.ofHom (IsLocalization.lift (M := p.asIdeal.primeCompl)
    (S := Localization.AtPrime p.asIdeal) (phi_unit p c))
  fac c s := by
    ext1
    apply away_ext
    ext x
    change (IsLocalization.lift (M := p.asIdeal.primeCompl) (S := Localization.AtPrime p.asIdeal)
      (phi_unit p c)) (toLoc p s (algebraMap S _ x)) =
      (c.ι.app s).hom (algebraMap S (Localization.Away (g p s)) x)
    rw [toLoc_apply, IsLocalization.lift_eq]
    exact (DFunLike.congr_fun (cocone_comp p c s) x).symm
  uniq c m hm := by
    ext1
    refine IsLocalization.ringHom_ext (S := Localization.AtPrime p.asIdeal) p.asIdeal.primeCompl ?_
    ext x
    have hx := DFunLike.congr_fun (congrArg CommRingCat.Hom.hom (hm ∅))
      (algebraMap S (Localization.Away (g p ∅)) x)
    change m.hom (algebraMap S (Localization.AtPrime p.asIdeal) x) =
      (IsLocalization.lift (M := p.asIdeal.primeCompl) (S := Localization.AtPrime p.asIdeal)
      (phi_unit p c)) (algebraMap S _ x)
    rw [IsLocalization.lift_eq]
    refine Eq.trans ?_ hx
    change _ = m.hom (toLoc p ∅ (algebraMap S _ x))
    rw [toLoc_apply]

theorem LocDiag_of : LateralTheory.E.ZarLocalPf.LocDiag := by
  intro S _ p
  refine ⟨Finset p.asIdeal.primeCompl, inferInstance, inferInstance, Dg p, Cc p,
    ⟨isColim p⟩, id, ∅, algebraMap S (Localization.Away (g p ∅)), ?_⟩
  intro k m
  refine ⟨g p k, g_mem p k, RingHom.id _, ?_⟩
  ext x
  exact tr_apply p (leOfHom m) x

end LateralTheory.E.LocDiagPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocDiagPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocFormPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocFormPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LCSurjPf\npublic import Development.EtaleCohomology.EtaleSheaves.LPrimLocPf\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E1Cut LateralTheory.E.LocallyConstantH0

namespace LateralTheory.E.LocFormPf

instance ls (q : ℕ) (i : ℤ) : Presheaf.IsLocallySurjective Scheme.etaleTopology (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)) :=
  Presheaf.isLocallySurjective_toSheafify'.{0, 1} (J := Scheme.etaleTopology.{0}) (Scheme.Γ ⋙ twF q i)

theorem loc_top {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : ∀ V g, P V g) : Loc U P :=
  ⟨⊤, Scheme.etaleTopology.top_mem U, fun V g _ => h V g⟩

theorem loc_and {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (hP : Loc U P) (hQ : Loc U Q) :
    Loc U fun V g => P V g ∧ Q V g := by
  obtain ⟨S, hS, hS'⟩ := hP
  obtain ⟨T, hT, hT'⟩ := hQ
  exact ⟨S ⊓ T, Scheme.etaleTopology.intersection_covering hS hT, fun V g hg => ⟨hS' V g hg.1, hT' V g hg.2⟩⟩

theorem loc_trans {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop}
    (hP : ∀ (V W : Scheme.{0}) (k : W ⟶ V) (g : V ⟶ U), P V g → P W (k ≫ g))
    (h : Loc U fun V g => Loc V fun W k => P W (k ≫ g)) : Loc U P := by
  obtain ⟨S, hS, hS'⟩ := h
  let R : Sieve U := { arrows := fun V g => P V g, downward_closed := fun {V W g} hg k => hP V W k g hg }
  refine ⟨R, Scheme.etaleTopology.transitive hS R fun V g hg => ?_, fun V g hg => hg⟩
  obtain ⟨T, hT, hT'⟩ := hS' V g hg
  exact Scheme.etaleTopology.superset_covering (fun W k hk => hT' W k hk) hT

theorem res_comp {R : Type} [CommRing R] (F : Shv R) {X W V : Scheme.{0}} (k : X ⟶ W) (h : W ⟶ V) (s : Sec F V) :
    Sec.res (k ≫ h) s = Sec.res k (Sec.res h s) := by
  show (F.obj.map (k ≫ h).op).hom s = (F.obj.map k.op).hom ((F.obj.map h.op).hom s)
  rw [op_comp, Functor.map_comp]
  rfl

theorem prim_map_comp {q : ℕ} {X W V : Scheme.{0}} (k : X ⟶ W) (h : W ⟶ V) (ζ : Prim q Γ(V, ⊤)) :
    ζ.map (k ≫ h).appTop.hom = (ζ.map h.appTop.hom).map k.appTop.hom := by
  apply Subtype.ext
  show (k ≫ h).appTop.hom ζ.1 = k.appTop.hom (h.appTop.hom ζ.1)
  rw [Scheme.Hom.comp_appTop]
  rfl

theorem sec_res (q : ℕ) (i : ℤ) {W V : Scheme.{0}} (h : W ⟶ V) (x : (twF q i).obj Γ(V, ⊤)) :
    Sec.res h (ofRings.sec (twF q i) V x) = ofRings.sec (twF q i) W ((twF q i).map (Scheme.Γ.map h.op) x) := by
  unfold Sec.res ofRings.sec
  erw [← ModuleCat.comp_apply, ← NatTrans.naturality, ConcreteCategory.comp_apply]

def Q (q : ℕ) (i : ℤ) {U : Scheme.{0}} (ζ : Prim q Γ(U, ⊤)) (y : Sec (tw q i) U) (V : Scheme.{0}) (g : V ⟶ U) : Prop :=
  ∃ c : ULift.{1} (ZMod q), Sec.res g y = c • twGen i (ζ.map g.appTop.hom)

theorem Q_stable (q : ℕ) (i : ℤ) {U : Scheme.{0}} (ζ : Prim q Γ(U, ⊤)) (y : Sec (tw q i) U)
    (V W : Scheme.{0}) (k : W ⟶ V) (g : V ⟶ U) (hg : Q q i ζ y V g) : Q q i ζ y W (k ≫ g) := by
  obtain ⟨c, hc⟩ := hg
  refine ⟨c, ?_⟩
  rw [res_comp, hc, prim_map_comp, ← LateralTheory.E.LCBijPf.twGen_res q i k (ζ.map g.appTop.hom)]
  exact LinearMap.map_smul ((tw q i).obj.map k.op).hom c _

end LateralTheory.E.LocFormPf

namespace LateralTheory.E.LocFormPf

theorem sec_add (q : ℕ) (i : ℤ) (V : Scheme.{0}) (x y : (twF q i).obj Γ(V, ⊤)) :
    ofRings.sec (twF q i) V (x + y) = ofRings.sec (twF q i) V x + ofRings.sec (twF q i) V y := by
  unfold ofRings.sec; exact map_add _ _ _

theorem sec_smul (q : ℕ) (i : ℤ) (V : Scheme.{0}) (c : ULift.{1} (ZMod q)) (x : (twF q i).obj Γ(V, ⊤)) :
    ofRings.sec (twF q i) V (c • x) = c • ofRings.sec (twF q i) V x := by
  unfold ofRings.sec; exact map_smul _ _ _

theorem sec_zero (q : ℕ) (i : ℤ) (V : Scheme.{0}) : ofRings.sec (twF q i) V 0 = 0 := by
  unfold ofRings.sec; exact map_zero _

def S (q : ℕ) (i : ℤ) (V : Scheme.{0}) (f : Prim q Γ(V, ⊤) →₀ ULift.{1} (ZMod q)) : Sec (tw q i) V :=
  ofRings.sec (twF q i) V (Submodule.Quotient.mk f)

theorem S_zero (q : ℕ) (i : ℤ) (V : Scheme.{0}) : S q i V 0 = 0 := sec_zero q i V

theorem S_add (q : ℕ) (i : ℤ) (V : Scheme.{0}) (f g : Prim q Γ(V, ⊤) →₀ ULift.{1} (ZMod q)) :
    S q i V (f + g) = S q i V f + S q i V g :=
  sec_add q i V (Submodule.Quotient.mk f) (Submodule.Quotient.mk g)

theorem S_smul (q : ℕ) (i : ℤ) (V : Scheme.{0}) (a : ULift.{1} (ZMod q)) (f : Prim q Γ(V, ⊤) →₀ ULift.{1} (ZMod q)) :
    S q i V (a • f) = a • S q i V f :=
  sec_smul q i V a (Submodule.Quotient.mk f)

theorem S_single (q : ℕ) (i : ℤ) (V : Scheme.{0}) (ζ : Prim q Γ(V, ⊤)) (a : ULift.{1} (ZMod q)) :
    S q i V (Finsupp.single ζ a) = a • twGen i ζ := by
  have h3 : Finsupp.single ζ a = a • Finsupp.single ζ (1 : ULift.{1} (ZMod q)) := by
    rw [Finsupp.smul_single, smul_eq_mul, mul_one]
  rw [h3, S_smul]
  rfl

theorem S_res_single (q : ℕ) (i : ℤ) {W V : Scheme.{0}} (k : W ⟶ V) (ξ : Prim q Γ(V, ⊤)) (a : ULift.{1} (ZMod q)) :
    Sec.res k (S q i V (Finsupp.single ξ a)) = S q i W (Finsupp.single (ξ.map k.appTop.hom) a) := by
  refine (sec_res q i k _).trans ?_
  unfold S
  congr 1
  change Submodule.Quotient.mk (Finsupp.mapDomain (Prim.map (Scheme.Γ.map k.op).hom) (Finsupp.single ξ a)) = _
  erw [Finsupp.mapDomain_single]
  rfl

theorem S_rel (q : ℕ) (i : ℤ) (W : Scheme.{0}) (ζ ξ : Prim q Γ(W, ⊤)) (e : (ZMod q)ˣ) (he : ξ.1 = ζ.1 ^ (e : ZMod q).val) :
    S q i W (Finsupp.single ξ 1) = S q i W (Finsupp.single ζ (ULift.up ((e ^ i : (ZMod q)ˣ) : ZMod q))) := by
  unfold S
  congr 1
  exact (Submodule.Quotient.eq _).2 (Submodule.subset_span ⟨ζ, ξ, e, he, rfl⟩)

theorem res_add {q : ℕ} (i : ℤ) {W V : Scheme.{0}} (k : W ⟶ V) (x y : Sec (tw q i) V) :
    Sec.res k (x + y) = Sec.res k x + Sec.res k y := map_add _ _ _

theorem res_smul {q : ℕ} (i : ℤ) {W V : Scheme.{0}} (k : W ⟶ V) (c : ULift.{1} (ZMod q)) (x : Sec (tw q i) V) :
    Sec.res k (c • x) = c • Sec.res k x := map_smul _ _ _

theorem res_zero {q : ℕ} (i : ℤ) {W V : Scheme.{0}} (k : W ⟶ V) : Sec.res k (0 : Sec (tw q i) V) = 0 := map_zero _

theorem single_loc (q : ℕ) [NeZero q] (i : ℤ) {V : Scheme.{0}} (ζ ξ : Prim q Γ(V, ⊤)) :
    Loc V fun W k => ∃ c : ULift.{1} (ZMod q), Sec.res k (S q i V (Finsupp.single ξ 1)) = c • twGen i (ζ.map k.appTop.hom) := by
  refine LateralTheory.E.L_prim_locPf.loc_mono' (LateralTheory.E.L_prim_locPf.c2 LateralTheory.E.L_prim_locPf.algPow q V ζ ξ)
    fun W k ⟨e, he⟩ => ⟨ULift.up ((e ^ i : (ZMod q)ˣ) : ZMod q), ?_⟩
  rw [S_res_single, S_rel q i W (ζ.map k.appTop.hom) (ξ.map k.appTop.hom) e he, S_single]

theorem elt_loc (q : ℕ) [NeZero q] (i : ℤ) {V : Scheme.{0}} (ζ : Prim q Γ(V, ⊤)) (f : Prim q Γ(V, ⊤) →₀ ULift.{1} (ZMod q)) :
    Loc V fun W k => ∃ c : ULift.{1} (ZMod q), Sec.res k (S q i V f) = c • twGen i (ζ.map k.appTop.hom) := by
  induction f using Finsupp.induction_linear with
  | zero => exact loc_top fun W k => ⟨0, by rw [S_zero, res_zero, zero_smul]⟩
  | add f g hf hg =>
    refine LateralTheory.E.L_prim_locPf.loc_mono' (loc_and hf hg) fun W k ⟨⟨c1, h1⟩, ⟨c2, h2⟩⟩ => ⟨c1 + c2, ?_⟩
    rw [S_add, res_add, h1, h2, add_smul]
  | single ξ a =>
    refine LateralTheory.E.L_prim_locPf.loc_mono' (single_loc q i ζ ξ) fun W k ⟨c, h⟩ => ⟨a * c, ?_⟩
    have h3 : Finsupp.single ξ a = a • Finsupp.single ξ (1 : ULift.{1} (ZMod q)) := by
      rw [Finsupp.smul_single, smul_eq_mul, mul_one]
    rw [h3, S_smul, res_smul, h, mul_smul]

theorem LocForm_of : LateralTheory.E.LCSurjPf.LocForm := by
  intro q _ i B _ ζ y
  have key : Loc (Spec (CommRingCat.of B)) (Q q i (gam ζ) y) := by
    apply loc_trans (Q_stable q i (gam ζ) y)
    refine ⟨_, Presheaf.imageSieve_mem Scheme.etaleTopology (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i))
      (U := op (Spec (CommRingCat.of B))) y, fun V g hg => ?_⟩
    obtain ⟨x, hx⟩ := hg
    obtain ⟨f, hf⟩ := Submodule.Quotient.mk_surjective _ (x : (twF q i).obj Γ(V, ⊤))
    have hy : Sec.res g y = S q i V f := by
      refine (hx.symm : _ = ofRings.sec (twF q i) V x).trans ?_
      exact (congrArg (ofRings.sec (twF q i) V) hf).symm
    refine LateralTheory.E.L_prim_locPf.loc_mono' (elt_loc q i ((gam ζ).map g.appTop.hom) f) fun W k ⟨c, hc⟩ => ⟨c, ?_⟩
    rw [res_comp, prim_map_comp, hy, hc]
  refine LateralTheory.E.L_prim_locPf.loc_mono' key fun V g ⟨c, hc⟩ => ⟨c.down, ?_⟩
  rw [hc, ← Nat.cast_smul_eq_nsmul (ULift.{1} (ZMod q))]
  have hcv : ((c.down.val : ℕ) : ULift.{1} (ZMod q)) = c := by
    apply ULift.ext
    rw [ULift.down_natCast, ZMod.natCast_zmod_val]
  rw [hcv]

end LateralTheory.E.LocFormPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocFormPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.LocSHPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.LocSHPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ZarLocalPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial IsLocalRing GlobalTheory.EtC

namespace LateralTheory.E.LocSHPf

theorem aic_localization (S : Type) [CommRing S] (hS : AIC S) (M : Submonoid S) (R : Type) [CommRing R]
    [Algebra S R] [IsLocalization M R] : AIC R := by
  intro P hP hd
  classical
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finset M ((Finset.range (P.natDegree + 1)).image P.coeff)
  set s : R := algebraMap S R (b : S) with hs
  have hlift : P.scaleRoots s ∈ lifts (algebraMap S R) := by
    rw [lifts_iff_coeff_lifts]
    intro i
    rw [coeff_scaleRoots]
    rcases lt_trichotomy i P.natDegree with hi | hi | hi
    · obtain ⟨y, hy⟩ := hb (P.coeff i) (Finset.mem_image.2 ⟨i, Finset.mem_range.2 (by omega), rfl⟩)
      obtain ⟨k, hk⟩ : ∃ k, P.natDegree - i = k + 1 := ⟨P.natDegree - i - 1, by omega⟩
      refine ⟨y * (b : S) ^ k, ?_⟩
      rw [map_mul, map_pow, hy, hk, pow_succ, Algebra.smul_def, ← hs]
      ring
    · subst hi
      rw [Nat.sub_self, pow_zero, mul_one]
      exact ⟨1, by rw [map_one]; exact hP.symm⟩
    · rw [coeff_eq_zero_of_natDegree_lt hi, zero_mul]
      exact ⟨0, map_zero _⟩
  have hmon : (P.scaleRoots s).Monic := by
    rw [Monic, leadingCoeff, natDegree_scaleRoots, coeff_scaleRoots_natDegree]; exact hP
  obtain ⟨Q, hQ, hQd, hQm⟩ := lifts_and_natDegree_eq_and_monic hlift hmon
  obtain ⟨a, ha⟩ := hS Q hQm (by rw [hQd, natDegree_scaleRoots]; exact hd)
  have hu : IsUnit s := IsLocalization.map_units R b
  refine ⟨hu.unit⁻¹ * algebraMap S R a, ?_⟩
  have h1 := scaleRoots_eval₂_mul (p := P) (RingHom.id R) (hu.unit⁻¹ * algebraMap S R a) s
  have h2 : s * (hu.unit⁻¹ * algebraMap S R a) = algebraMap S R a := by
    rw [← mul_assoc, hu.mul_val_inv, one_mul]
  rw [RingHom.id_apply, h2, ← eval, ← eval, ← hQ, eval_map, eval₂_hom, ha, map_zero] at h1
  have := (hu.pow P.natDegree).mul_right_eq_zero.1 h1.symm
  exact this

theorem root_near (R : Type) [CommRing R] [IsLocalRing R] (hR : AIC R) (a₀ : R) :
    ∀ n : ℕ, ∀ f : R[X], f.natDegree = n → f.Monic → f.eval a₀ ∈ maximalIdeal R →
      ∃ a : R, f.IsRoot a ∧ a - a₀ ∈ maximalIdeal R := by
  intro n
  induction n with
  | zero =>
    intro f hn hf he
    rw [eq_one_of_monic_natDegree_zero hf hn, eval_one] at he
    exact absurd he (Ideal.IsMaximal.ne_top inferInstance |> fun h => fun h1 => h ((Ideal.eq_top_iff_one _).2 h1))
  | succ n ih =>
    intro f hn hf he
    obtain ⟨a, ha⟩ := hR f hf (by omega)
    have hfac := (mul_divByMonic_eq_iff_isRoot (p := f) (a := a)).2 ha
    have hgm : (f /ₘ (X - C a)).Monic := (monic_X_sub_C a).of_mul_monic_left (by rw [hfac]; exact hf)
    have hgd : (f /ₘ (X - C a)).natDegree = n := by
      rw [natDegree_divByMonic _ (monic_X_sub_C a), natDegree_X_sub_C]; omega
    rw [← hfac, eval_mul, eval_sub, eval_X, eval_C] at he
    rcases Ideal.IsPrime.mem_or_mem (inferInstance : (maximalIdeal R).IsPrime) he with h | h
    · refine ⟨a, ha, ?_⟩
      rw [← neg_sub]; exact (Ideal.neg_mem_iff _).2 h
    · obtain ⟨b, hb, hb'⟩ := ih _ hgd hgm h
      refine ⟨b, ?_, hb'⟩
      rw [← hfac, IsRoot, eval_mul, hb.eq_zero, mul_zero]

theorem henselian_of_aic (R : Type) [CommRing R] [IsLocalRing R] (hR : AIC R) : HenselianLocalRing R where
  is_henselian f hf a₀ he _ := root_near R hR a₀ _ f rfl hf he

theorem residue_algClosed (R : Type) [CommRing R] [IsLocalRing R] (hR : AIC R) : IsAlgClosed (ResidueField R) := by
  refine IsAlgClosed.of_exists_root _ fun p hp hirr => ?_
  have hl : p ∈ lifts (residue R) := by
    rw [lifts_iff_coeff_lifts]; intro n; exact residue_surjective _
  obtain ⟨q, hq, hqd, hqm⟩ := lifts_and_natDegree_eq_and_monic hl hp
  have hpos : 0 < p.natDegree := natDegree_pos_iff_degree_pos.2 (degree_pos_of_irreducible hirr)
  obtain ⟨a, ha⟩ := hR q hqm (by omega)
  exact ⟨residue R a, by rw [← hq, eval_map, eval₂_hom, ha, map_zero]⟩

theorem LocSH_of : LateralTheory.E.ZarLocalPf.LocSH := by
  intro S _ hS p
  have hA := aic_localization S hS p.asIdeal.primeCompl (Localization.AtPrime p.asIdeal)
  have := residue_algClosed _ hA
  exact ⟨henselian_of_aic _ hA, inferInstance⟩

end LateralTheory.E.LocSHPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.LocSHPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PiecesPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PiecesPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.FinEtSectionPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.E.PiecesPf

lemma sq1 {T S C' C : Type} [CommRing T] [CommRing S] [CommRing C'] [CommRing C]
    (a : T →+* C') (π : T →+* S) (ρ : C' →+* C) (b : S →+* C) (hρ : Function.Surjective ρ) (hπ : Function.Surjective π)
    (hcomm : ρ.comp a = b.comp π) (hker : RingHom.ker ρ = (RingHom.ker π).map a) :
    IsPushout (CommRingCat.ofHom a) (CommRingCat.ofHom π) (CommRingCat.ofHom ρ) (CommRingCat.ofHom b) := by
  have w : CommRingCat.ofHom a ≫ CommRingCat.ofHom ρ = CommRingCat.ofHom π ≫ CommRingCat.ofHom b := by
    ext x; exact congrArg (fun f : T →+* C => f x) hcomm
  refine IsPushout.of_isColimit' ⟨w⟩ (PushoutCocone.IsColimit.mk w ?_ ?_ ?_ ?_)
  · intro s
    refine CommRingCat.ofHom (ρ.liftOfSurjective hρ ⟨s.inl.hom, ?_⟩)
    rw [hker, Ideal.map_le_iff_le_comap]
    intro t ht
    have h1 := congrArg (fun f => f.hom t) s.condition
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h1
    simp only [Ideal.mem_comap, RingHom.mem_ker] at ht ⊢
    rw [h1, ht, map_zero]
  · intro s
    ext x
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom]
    exact RingHom.liftOfSurjective_comp_apply ρ hρ _ x
  · intro s
    ext x
    obtain ⟨t, rfl⟩ := hπ x
    have h1 := congrArg (fun f => f.hom t) s.condition
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at h1 ⊢
    rw [← RingHom.comp_apply b π, ← hcomm, RingHom.comp_apply, RingHom.liftOfSurjective_comp_apply]
    exact h1
  · intro s m hm _
    ext x
    obtain ⟨y, rfl⟩ := hρ x
    simp only [CommRingCat.hom_ofHom]
    rw [RingHom.liftOfSurjective_comp_apply]
    have := congrArg (fun f => f.hom y) hm
    simpa using this

theorem Pieces_of (hL : LateralTheory.E.t_E1Cut.EtLift) (hA : LateralTheory.E.t_E1Cut.EtAIC) :
    LateralTheory.E.FinEtSectionPf.Pieces := by
  intro _ _ S C _ _ _ _ hQA
  obtain ⟨T, _, _, π, hAIC, hπ⟩ := hQA
  obtain ⟨C', _, _, ρ, hEt, hρ, hcomm, hker⟩ := hL T S C π hπ
  have := hEt
  obtain ⟨n, e', he', hoi⟩ := hA T C' hAIC
  refine ⟨n, ρ ∘ e', he'.map ρ, fun j => ?_⟩
  let fₘ : Localization.Away (e' j) →+* Localization.Away (ρ (e' j)) :=
    IsLocalization.Away.map _ _ ρ (e' j)
  have : IsLocalization ((Submonoid.powers (e' j)).map ρ) (Localization.Away (ρ (e' j))) := by
    rw [Submonoid.map_powers]; infer_instance
  have H : fₘ.comp (algebraMap C' _) = (algebraMap C _).comp ρ := IsLocalization.map_comp _
  have sq2 := CommRingCat.isPushout_of_isLocalization ρ fₘ H (Submonoid.powers (e' j))
  have sq := (sq1 (algebraMap T C') π ρ (algebraMap S C) hρ hπ hcomm hker).paste_horiz sq2.flip
  have pb := isPullback_SpecMap_of_isPushout _ _ _ _ sq
  have hj := hoi j
  rw [CommRingCat.ofHom_comp] at hj
  have := MorphismProperty.of_isPullback (P := @IsOpenImmersion) pb hj
  rw [CommRingCat.ofHom_comp]
  exact this

end LateralTheory.E.PiecesPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PiecesPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.PrimMapComp =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.PrimMapComp", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.AcycQAPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E1Cut LateralTheory.E.AcycQAPf

namespace LateralTheory.E.Deg0Pf

theorem exists_prim (q : ℕ) [NeZero q] (S : Type) [CommRing S] (hA : AIC S) (hq : IsUnit (q : S)) :
    Nonempty (Prim q S) := by
  obtain ⟨z, hz⟩ : ∃ z : S, (Polynomial.cyclotomic q S).eval z = 0 := by
    rcases subsingleton_or_nontrivial S with hs | hs
    · exact ⟨0, Subsingleton.elim _ _⟩
    · exact hA _ (Polynomial.cyclotomic.monic q S) (by
        rw [Polynomial.natDegree_cyclotomic]
        exact Nat.totient_pos.2 (Nat.pos_of_ne_zero (NeZero.ne q)))
  refine ⟨⟨z, hq, ?_⟩⟩
  rw [Polynomial.aeval_def, Polynomial.eval₂_eq_eval_map, Polynomial.map_cyclotomic]
  exact hz

theorem prim_map_comp {q : ℕ} {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C)
    (ζ : Prim q A) : (ζ.map f).map g = ζ.map (g.comp f) := rfl

theorem rL_comp {S : Type} [CommRing S] (f g : S) :
    (rL f g).comp (algebraMap S (Localization.Away f)) = algebraMap S (Localization.Away (f * g)) := by
  ext a; exact IsLocalization.Away.awayToAwayRight_eq f g a

theorem rR_comp {S : Type} [CommRing S] (f g : S) :
    (rR f g).comp (algebraMap S (Localization.Away g)) = algebraMap S (Localization.Away (f * g)) := by
  ext a; exact IsLocalization.Away.awayToAwayLeft_eq g f a

theorem Deg0_of : LateralTheory.E.AcycQAPf.Deg0 := by
  intro hQ hH hL h9 q _ i S _ hS hq f g hfg c
  obtain ⟨e, he⟩ := hH h9 q i
  obtain ⟨ζ⟩ := exists_prim q S (hQ S hS).1 hq
  obtain ⟨a, b, hab⟩ := hL q S hS f g hfg ((e _ (ζ.map (algebraMap S (Localization.Away (f * g))))).symm c)
  refine ⟨e _ (ζ.map (algebraMap S (Localization.Away f))) a, e _ (ζ.map (algebraMap S (Localization.Away g))) b, ?_⟩
  rw [he, he, prim_map_comp, prim_map_comp, rL_comp, rR_comp, ← map_sub, ← hab, AddEquiv.apply_symm_apply]

end LateralTheory.E.Deg0Pf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.PrimMapComp =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ProjGPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ProjGPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.TorEtPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open LateralTheory.E.t_E1Cut LateralTheory.E.LCSplitPf LateralTheory.E.TorEtPf

namespace LateralTheory.E.ProjGPf

variable {S : Type} [CommRing S]

theorem isUnit_f_fg (f g : S) : IsUnit (algebraMap S (Localization.Away (f * g)) f) :=
  isUnit_of_dvd_unit (map_dvd _ (dvd_mul_right f g)) (IsLocalization.Away.algebraMap_isUnit (f * g))

theorem rL_alg (f g : S) (a : S) :
    rL f g (algebraMap S _ a) = algebraMap S (Localization.Away (f * g)) a :=
  IsLocalization.Away.awayToAwayRight_eq f g a

theorem rR_alg (f g : S) (a : S) :
    rR f g (algebraMap S _ a) = algebraMap S (Localization.Away (f * g)) a :=
  IsLocalization.Away.awayToAwayLeft_eq g f a

theorem rL_surj {ι : Type} [Finite ι] (f g : S) (w : ι → Localization.Away (f * g)) :
    ∃ (n : ℕ) (x : ι → Localization.Away f), ∀ k, rL f g (x k) = algebraMap S _ (g ^ n) * w k := by
  obtain ⟨⟨b, hb'⟩, hb⟩ := IsLocalization.exist_integer_multiples_of_finite (Submonoid.powers (f * g)) w
  obtain ⟨n, rfl⟩ := Submonoid.mem_powers_iff _ _ |>.mp hb'
  choose a ha using hb
  refine ⟨n, fun k => IsLocalization.mk' (Localization.Away f) (a k) (⟨f ^ n, n, rfl⟩ : Submonoid.powers f), fun k => ?_⟩
  have hu : IsUnit (algebraMap S (Localization.Away (f * g)) (f ^ n)) := by
    rw [map_pow]; exact (isUnit_f_fg f g).pow n
  apply hu.mul_left_cancel
  have hs := IsLocalization.mk'_spec' (Localization.Away f) (a k) (⟨f ^ n, n, rfl⟩ : Submonoid.powers f)
  change algebraMap S _ (f ^ n) * _ = _ at hs
  rw [← rL_alg, ← map_mul, hs, rL_alg, ha k, Algebra.smul_def]
  change algebraMap S _ ((f * g) ^ n) * w k = _
  rw [mul_pow, map_mul, mul_assoc, rL_alg]

theorem rL_ker (f g : S) (x : Localization.Away f) (hx : rL f g x = 0) :
    ∃ n : ℕ, algebraMap S _ (g ^ n) * x = 0 := by
  obtain ⟨⟨a, s⟩, hs⟩ := IsLocalization.surj (Submonoid.powers f) x
  have h0 : algebraMap S (Localization.Away (f * g)) a = 0 := by
    rw [← rL_alg, ← hs, map_mul, hx, zero_mul]
  obtain ⟨⟨m, n, rfl⟩, hm⟩ := (IsLocalization.map_eq_zero_iff (Submonoid.powers (f * g)) _ a).mp h0
  refine ⟨n, ?_⟩
  have hu : IsUnit (algebraMap S (Localization.Away f) (f ^ n * s)) :=
    IsLocalization.map_units (Localization.Away f)
      (⟨f ^ n * s, Submonoid.mul_mem _ (Submonoid.pow_mem _ (Submonoid.mem_powers f) n) s.2⟩ : Submonoid.powers f)
  apply (hu.mul_left_eq_zero).mp
  have e1 : algebraMap S (Localization.Away f) (g ^ n) * x * algebraMap S _ (f ^ n * s)
      = algebraMap S _ (g ^ n * f ^ n) * (x * algebraMap S _ (s : S)) := by
    simp only [map_mul]; ring
  rw [e1, hs, ← map_mul, show g ^ n * f ^ n * a = (f * g) ^ n * a by ring, hm, map_zero]

theorem rL_ker_fam {ι : Type} [Fintype ι] (f g : S) (x : ι → Localization.Away f)
    (hx : ∀ k, rL f g (x k) = 0) : ∃ n : ℕ, ∀ k, algebraMap S _ (g ^ n) * x k = 0 := by
  choose n hn using fun k => rL_ker f g (x k) (hx k)
  refine ⟨Finset.univ.sup n, fun k => ?_⟩
  rw [← Nat.sub_add_cancel (Finset.le_sup (Finset.mem_univ k) : n k ≤ _), pow_add, map_mul, mul_assoc, hn k,
    mul_zero]

theorem twist_apply {q : ℕ} [NeZero q] {A : Type} [CommRing A] {ε : ZMod q → A}
    (hε : CompleteOrthogonalIdempotents ε) (z : ZMod q → A) (k : ZMod q) :
    twist hε z k = ∑ c, ε c * z (k + c) := rfl

theorem ProjG_of : ProjG := by
  intro q _ S _ f g hfg ε hε
  let _ := (torMap f g hε).toAlgebra
  let _ := (pr2 f g hε).toAlgebra
  refine ⟨?_, ?_, ?_⟩
  · rintro ⟨_, n, rfl⟩
    have e : algebraMap (Tor f g hε) (ZMod q → Localization.Away g) (algebraMap S (Tor f g hε) g ^ n)
        = fun _ => algebraMap S (Localization.Away g) g ^ n := by
      rw [map_pow]; rfl
    rw [e]
    exact Pi.isUnit_iff.mpr fun _ => (IsLocalization.Away.algebraMap_isUnit g).pow n
  · intro y
    obtain ⟨n, x, hx⟩ := rL_surj f g (twist hε (fun k => rR f g (y k)))
    have hmem : ((x, fun k => algebraMap S _ (g ^ n) * y k) : Amb f g q) ∈ Tor f g hε := by
      show h1 f g _ = h2 f g hε _
      funext k
      change rL f g (x k) = ∑ c, ε c * rR f g (algebraMap S _ (g ^ n) * y (k + c))
      rw [hx k, twist_apply]
      simp only [map_mul, rR_alg]
      rw [Finset.mul_sum]
      exact Finset.sum_congr rfl fun c _ => by ring
    refine ⟨(⟨_, hmem⟩, ⟨algebraMap S _ g ^ n, n, rfl⟩), ?_⟩
    show y * pr2 f g hε (torMap f g hε g ^ n) = pr2 f g hε ⟨_, hmem⟩
    rw [map_pow]
    funext k
    change y k * (algebraMap S (Localization.Away g) g) ^ n = algebraMap S _ (g ^ n) * y k
    rw [map_pow, mul_comm]
  · intro t1 t2 h
    have h0 : (t1 - t2).1.2 = 0 := by
      have : pr2 f g hε (t1 - t2) = 0 := by
        rw [map_sub]; exact sub_eq_zero.mpr h
      exact this
    have hx : ∀ k, rL f g ((t1 - t2).1.1 k) = 0 := by
      intro k
      have hm : h1 f g (t1 - t2).1 = h2 f g hε (t1 - t2).1 := (t1 - t2).2
      have hk := congrFun hm k
      change rL f g ((t1 - t2).1.1 k) = ∑ c, ε c * rR f g ((t1 - t2).1.2 (k + c)) at hk
      rw [hk, h0]; simp
    obtain ⟨n, hn⟩ := rL_ker_fam f g (fun k => (t1 - t2).1.1 k) hx
    refine ⟨⟨algebraMap S _ g ^ n, n, rfl⟩, ?_⟩
    rw [← sub_eq_zero, ← mul_sub]
    show torMap f g hε g ^ n * (t1 - t2) = 0
    apply Subtype.ext
    refine Prod.ext (funext fun k => ?_) (funext fun k => ?_)
    · change (algebraMap S (Localization.Away f) g) ^ n * (t1 - t2).1.1 k = 0
      rw [← map_pow]; exact hn k
    · change (algebraMap S (Localization.Away g) g) ^ n * (t1 - t2).1.2 k = 0
      rw [h0]; simp

end LateralTheory.E.ProjGPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ProjGPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.QAClosedPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.QAClosedPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.EtaleDegreeZeroCohomologyEquivLocallyConstantFun\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open Polynomial GlobalTheory.EtC

namespace LateralTheory.E.QAClosedPf

open LateralTheory.E.t_E1Cut

theorem aic_of_surj {T S : Type} [CommRing T] [CommRing S] (π : T →+* S) (hT : AIC T)
    (hπ : Function.Surjective π) : AIC S := by
  intro p hp hdeg
  have hl : p ∈ lifts π := (lifts_iff_coeff_lifts p).2 fun n => hπ _
  obtain ⟨q, hq, hqd, hqm⟩ := lifts_and_natDegree_eq_and_monic hl hp
  obtain ⟨a, ha⟩ := hT q hqm (hqd ▸ hdeg)
  refine ⟨π a, ?_⟩
  rw [← hq, eval_map, eval₂_at_apply, ha, map_zero]

theorem aic_away {T : Type} [CommRing T] [IsDomain T] (hT : AIC T) (t : T) (ht : t ≠ 0) :
    AIC (Localization.Away t) := by
  classical
  have : IsDomain (Localization.Away t) :=
    IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors ht)
  intro p hp hdeg
  obtain ⟨b, hb⟩ := IsLocalization.exist_integer_multiples_of_finset (Submonoid.powers t)
    (p.support.image p.coeff)
  set c : Localization.Away t := algebraMap T _ b
  have hcu : IsUnit c := IsLocalization.map_units _ b
  have hl : p.scaleRoots c ∈ lifts (algebraMap T (Localization.Away t)) := by
    refine (lifts_iff_coeff_lifts _).2 fun i => ?_
    rw [coeff_scaleRoots]
    by_cases hi : i ∈ p.support
    · have hle : i ≤ p.natDegree := le_natDegree_of_mem_supp i hi
      rcases lt_or_eq_of_le hle with hlt | heq
      · obtain ⟨z, hz⟩ := hb _ (Finset.mem_image_of_mem _ hi)
        refine ⟨z * b ^ (p.natDegree - i - 1), ?_⟩
        rw [map_mul, hz, Algebra.smul_def, map_pow]
        rw [show c ^ (p.natDegree - i) = c * c ^ (p.natDegree - i - 1) by
          rw [← pow_succ']; congr 1; omega]
        simp only [c]
        ring
      · subst heq
        refine ⟨1, ?_⟩
        rw [hp.coeff_natDegree, Nat.sub_self, pow_zero, one_mul, map_one]
    · rw [Polynomial.notMem_support_iff.1 hi]
      exact ⟨0, by simp⟩
  obtain ⟨q, hq, hqd, hqm⟩ := lifts_and_natDegree_eq_and_monic hl ((monic_scaleRoots_iff c).2 hp)
  rw [natDegree_scaleRoots] at hqd
  obtain ⟨a, ha⟩ := hT q hqm (hqd ▸ hdeg)
  refine ⟨hcu.unit⁻¹ * algebraMap T _ a, ?_⟩
  have h1 : eval (algebraMap T _ a) (p.scaleRoots c) = 0 := by
    rw [← hq, eval_map, eval₂_at_apply, ha, map_zero]
  have h2 : algebraMap T (Localization.Away t) a = (RingHom.id _) c * (hcu.unit⁻¹ * algebraMap T _ a) := by
    rw [RingHom.id_apply, ← mul_assoc, IsUnit.mul_val_inv, one_mul]
  rw [eval, h2, scaleRoots_eval₂_mul] at h1
  rw [eval]
  exact (mul_eq_zero.1 h1).resolve_left (by simpa using (hcu.pow _).ne_zero)

theorem QAClosed_of : QAClosed := by
  intro S _ hS
  obtain ⟨T, _, _, π, hT, hπ⟩ := hS
  refine ⟨aic_of_surj π hT hπ, ?_, ?_⟩
  · intro f
    obtain ⟨t, rfl⟩ := hπ f
    by_cases ht : t = 0
    · have hu : IsUnit (algebraMap S (Localization.Away (π t)) (π t)) :=
        IsLocalization.Away.algebraMap_isUnit _
      rw [show algebraMap S (Localization.Away (π t)) (π t) = 0 by rw [ht, map_zero, map_zero]] at hu
      have : Subsingleton (Localization.Away (π t)) := subsingleton_of_zero_eq_one (isUnit_zero_iff.1 hu)
      exact ⟨T, inferInstance, inferInstance, (algebraMap S _).comp π, hT, fun y => ⟨0, Subsingleton.elim _ _⟩⟩
    · have : IsDomain (Localization.Away t) :=
        IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors ht)
      have : IsLocalization (Submonoid.map π (Submonoid.powers t)) (Localization.Away (π t)) := by
        rw [Submonoid.map_powers]; infer_instance
      exact ⟨Localization.Away t, inferInstance, inferInstance, _, aic_away hT t ht,
        IsLocalization.map_surjective_of_surjective (Submonoid.powers t) (Localization.Away t)
          (Localization.Away (π t)) hπ⟩
  · intro J
    exact ⟨T, inferInstance, inferInstance, (Ideal.Quotient.mk J).comp π, hT,
      (Ideal.Quotient.mk_surjective).comp hπ⟩

end LateralTheory.E.QAClosedPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.QAClosedPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.StdCoverPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.StdCoverPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.PullInjOfIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.StdCoverPf

theorem mono_spMap {A B : Type} [CommRing A] [CommRing B] (φ : A →+* B)
    [Mono (Spec.map (CommRingCat.ofHom φ))] : Mono (spMap φ) := by
  have h : Mono (yoneda.map (Spec.map (CommRingCat.ofHom φ))) := inferInstance
  haveI : ∀ X, Mono ((spMap φ).app X) := fun _ => h
  exact NatTrans.mono_of_mono_app _

abbrev Xs {S : Type} [CommRing S] (f g : S) (b : Bool) : Scheme.{0} :=
  Spec (CommRingCat.of (Localization.Away (bif b then f else g)))

abbrev ι {S : Type} [CommRing S] (f g : S) (b : Bool) : Xs f g b ⟶ Spec (CommRingCat.of S) :=
  Spec.map (CommRingCat.ofHom (algebraMap S (Localization.Away (bif b then f else g))))

theorem cover_mem {S : Type} [CommRing S] (f g : S) (hfg : Ideal.span {f, g} = ⊤) :
    Sieve.ofArrows (Xs f g) (ι f g) ∈ Scheme.etaleTopology.{0} (Spec (CommRingCat.of S)) := by
  apply Precoverage.generate_mem_toGrothendieck
  refine (Scheme.ofArrows_mem_precoverage_iff (P := @Etale) (f := ι f g)).2 ⟨fun pt => ?_, fun b => inferInstance⟩
  let p : PrimeSpectrum S := pt
  have hp : f ∉ p.asIdeal ∨ g ∉ p.asIdeal := by
    by_contra hc
    push_neg at hc
    have : Ideal.span {f, g} ≤ p.asIdeal := by
      rw [Ideal.span_le]; intro z hz
      rcases hz with rfl | hz
      · exact hc.1
      · rw [Set.mem_singleton_iff] at hz; exact hz ▸ hc.2
    rw [hfg] at this
    exact p.isPrime.ne_top (top_le_iff.mp this)
  rcases hp with h | h
  · have hm : p ∈ Set.range (PrimeSpectrum.comap (algebraMap S (Localization.Away f))) := by
      rw [PrimeSpectrum.localization_away_comap_range (Localization.Away f) f]; exact h
    obtain ⟨q, hq⟩ := hm
    exact ⟨true, q, hq⟩
  · have hm : p ∈ Set.range (PrimeSpectrum.comap (algebraMap S (Localization.Away g))) := by
      rw [PrimeSpectrum.localization_away_comap_range (Localization.Away g) g]; exact h
    obtain ⟨q, hq⟩ := hm
    exact ⟨false, q, hq⟩

theorem key (R : Type) [CommRing R] (S : Type) [CommRing S] (f g : S) (hfg : Ideal.span {f, g} = ⊤) {G : Shv R}
    (u v : (free R).obj (yoneda.obj (Spec (CommRingCat.of S))) ⟶ G)
    (hb : ∀ b, (free R).map (yoneda.map (ι f g b)) ≫ u = (free R).map (yoneda.map (ι f g b)) ≫ v) : u = v := by
  let adj := sheafificationAdjunction Scheme.etaleTopology.{0} (ModuleCat.{1} (ULift.{1} R))
  apply (adj.homEquiv ((freeP R).obj (yoneda.obj (Spec (CommRingCat.of S)))) G).injective
  have hb' : ∀ b, (freeP R).map (yoneda.map (ι f g b)) ≫ adj.homEquiv _ G u =
      (freeP R).map (yoneda.map (ι f g b)) ≫ adj.homEquiv _ G v := by
    intro b
    have h0 : (presheafToSheaf _ _).map ((freeP R).map (yoneda.map (ι f g b))) ≫ u =
        (presheafToSheaf _ _).map ((freeP R).map (yoneda.map (ι f g b))) ≫ v := hb b
    have h1 := congrArg (adj.homEquiv _ G) h0
    erw [adj.homEquiv_naturality_left, adj.homEquiv_naturality_left] at h1
    exact h1
  generalize adj.homEquiv _ G u = u' at hb' ⊢
  generalize adj.homEquiv _ G v = v' at hb' ⊢
  ext X : 2
  apply ModuleCat.free_hom_ext
  intro x0
  have hT := Scheme.etaleTopology.pullback_stable x0.down (cover_mem f g hfg)
  have e := G.property.hom_ext ⟨_, hT⟩
    (ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} R) _ (u'.app X (ModuleCat.freeMk x0))))
    (ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} R) _ (v'.app X (ModuleCat.freeMk x0)))) ?_
  · have := congrArg (fun e => e.hom 1) e
    simp only [ModuleCat.hom_ofHom, LinearMap.toSpanSingleton_apply, one_smul] at this
    exact this
  rintro ⟨W, k, hk⟩
  obtain ⟨Z, h, _, ⟨b⟩, hh⟩ := hk
  ext1
  apply LinearMap.ext_ring
  simp only [ModuleCat.hom_comp, ModuleCat.hom_ofHom, LinearMap.coe_comp, Function.comp_apply,
    LinearMap.toSpanSingleton_apply, one_smul]
  have hm : (((freeP R).obj (yoneda.obj (Spec (CommRingCat.of S)))).map k.op).hom (ModuleCat.freeMk x0) =
      (((freeP R).map (yoneda.map (ι f g b))).app (op W)).hom (ModuleCat.freeMk (ULift.up h)) := by
    simp only [freeP, ModuleCat.freeMk]
    erw [Finsupp.lmapDomain_apply, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single, Finsupp.mapDomain_single]
    change Finsupp.single (ULift.up (k ≫ x0.down)) _ = Finsupp.single (ULift.up (h ≫ ι f g b)) _
    rw [hh]
  change ((u'.app X ≫ (G.obj.map k.op)).hom (ModuleCat.freeMk x0)) =
    ((v'.app X ≫ (G.obj.map k.op)).hom (ModuleCat.freeMk x0))
  erw [← u'.naturality, ← v'.naturality]
  change (u'.app (op W)).hom ((((freeP R).obj (yoneda.obj (Spec (CommRingCat.of S)))).map k.op).hom (ModuleCat.freeMk x0)) =
    (v'.app (op W)).hom ((((freeP R).obj (yoneda.obj (Spec (CommRingCat.of S)))).map k.op).hom (ModuleCat.freeMk x0))
  rw [hm]
  change ((((freeP R).map (yoneda.map (ι f g b))) ≫ u').app (op W)).hom (ModuleCat.freeMk (ULift.up h)) =
    ((((freeP R).map (yoneda.map (ι f g b))) ≫ v').app (op W)).hom (ModuleCat.freeMk (ULift.up h))
  rw [hb' b]

theorem epi_cover (R : Type) [CommRing R] (S : Type) [CommRing S] (f g : S) (hfg : Ideal.span {f, g} = ⊤)
    (n : SimplexCategoryᵒᵖ) :
    Epi (biprod.desc ((free R).map ((spMap (algebraMap S (Localization.Away f))).app n))
      ((free R).map ((spMap (algebraMap S (Localization.Away g))).app n))) := by
  constructor
  intro G u v h
  have hf := congrArg (biprod.inl ≫ ·) h
  have hg := congrArg (biprod.inr ≫ ·) h
  simp only [biprod.inl_desc_assoc, biprod.inr_desc_assoc] at hf hg
  exact key R S f g hfg u v (fun b => by cases b; exacts [hg, hf])

end LateralTheory.E.StdCoverPf

open LateralTheory.E.StdCoverPf in
theorem LateralTheory.E.MVPf.StdCover_of : LateralTheory.E.MVPf.StdCover := by
  intro R _ S _ f g hfg
  exact ⟨mono_spMap _, mono_spMap _, epi_cover R S f g hfg⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.StdCoverPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.StdPBPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.StdPBPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.PullInjOfIso\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.Limits.Types.Pushouts\nimport Mathlib.CategoryTheory.Presentable.Type\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.StandardPushout

variable {S : Type} [CommRing S] (f g : S)

def descR {T : Type} [CommRing T] (a : Localization.Away f →+* T) (b : Localization.Away g →+* T)
    (h : a.comp (algebraMap S _) = b.comp (algebraMap S _)) : Localization.Away (f * g) →+* T :=
  IsLocalization.Away.lift (f * g) (g := a.comp (algebraMap S _)) (by
    rw [map_mul]
    refine IsUnit.mul ?_ ?_
    · exact (IsLocalization.Away.algebraMap_isUnit f).map a
    · rw [h]; exact (IsLocalization.Away.algebraMap_isUnit g).map b)

theorem descR_alg {T : Type} [CommRing T] (a : Localization.Away f →+* T) (b : Localization.Away g →+* T)
    (h : a.comp (algebraMap S _) = b.comp (algebraMap S _)) (s : S) :
    descR f g a b h (algebraMap S _ s) = a (algebraMap S _ s) :=
  IsLocalization.lift_eq _ _

theorem rL_alg (s : S) : LateralTheory.E.t_E1Cut.rL f g (algebraMap S _ s) = algebraMap S _ s :=
  IsLocalization.Away.awayToAwayRight_eq f g s

theorem rR_alg (s : S) : LateralTheory.E.t_E1Cut.rR f g (algebraMap S _ s) = algebraMap S _ s :=
  IsLocalization.Away.awayToAwayLeft_eq g f s

theorem isPushout_away :
    IsPushout (CommRingCat.ofHom (algebraMap S (Localization.Away f)))
      (CommRingCat.ofHom (algebraMap S (Localization.Away g)))
      (CommRingCat.ofHom (LateralTheory.E.t_E1Cut.rL f g)) (CommRingCat.ofHom (LateralTheory.E.t_E1Cut.rR f g)) := by
  have hw : CommRingCat.ofHom (algebraMap S (Localization.Away f)) ≫ CommRingCat.ofHom (LateralTheory.E.t_E1Cut.rL f g)
      = CommRingCat.ofHom (algebraMap S (Localization.Away g)) ≫ CommRingCat.ofHom (LateralTheory.E.t_E1Cut.rR f g) := by
    ext x
    simp [rL_alg, rR_alg]
  refine IsPushout.of_isColimit (c := PushoutCocone.mk _ _ hw) ?_
  have hc : ∀ s : PushoutCocone (CommRingCat.ofHom (algebraMap S (Localization.Away f)))
      (CommRingCat.ofHom (algebraMap S (Localization.Away g))),
      s.inl.hom.comp (algebraMap S _) = s.inr.hom.comp (algebraMap S _) := fun s => by
    have := congrArg CommRingCat.Hom.hom s.condition
    simpa using this
  refine PushoutCocone.IsColimit.mk _ (fun s => CommRingCat.ofHom (descR f g s.inl.hom s.inr.hom (hc s)))
    ?_ ?_ ?_
  · intro s
    ext1
    apply IsLocalization.ringHom_ext (Submonoid.powers f)
    ext x
    simp [rL_alg, descR_alg]
  · intro s
    ext1
    apply IsLocalization.ringHom_ext (Submonoid.powers g)
    ext x
    have := congrArg (fun φ => φ x) (hc s)
    simp only [RingHom.comp_apply] at this
    simp [rR_alg, descR_alg, this]
  · intro s m h1 _
    ext1
    apply IsLocalization.ringHom_ext (Submonoid.powers (f * g))
    ext x
    have := congrArg (fun φ => (CommRingCat.Hom.hom φ) (algebraMap S (Localization.Away f) x)) h1
    simp only [CommRingCat.hom_comp, CommRingCat.hom_ofHom, RingHom.comp_apply, rL_alg] at this
    simp [descR_alg, this]

instance constPreserves (J : Type) [SmallCategory J] :
    PreservesLimitsOfShape J (SimplicialObject.const PSh) := by
  apply preservesLimitsOfShape_of_evaluation
  intro k
  exact preservesLimitsOfShape_of_natIso
    (NatIso.ofComponents (fun X => Iso.refl X) (by intros; rfl) :
      𝟭 PSh ≅ SimplicialObject.const PSh ⋙ (evaluation _ _).obj k)

instance schPreserves (J : Type) [SmallCategory J] : PreservesLimitsOfShape J sch := by
  unfold sch
  infer_instance

theorem isPullback_sp :
    IsPullback (spMap (LateralTheory.E.t_E1Cut.rL f g)) (spMap (LateralTheory.E.t_E1Cut.rR f g))
      (spMap (algebraMap S (Localization.Away f))) (spMap (algebraMap S (Localization.Away g))) :=
  (isPullback_SpecMap_of_isPushout _ _ _ _ (isPushout_away f g)).map sch

end LateralTheory.E.StandardPushout

open LateralTheory.E.StandardPushout in
theorem LateralTheory.E.MVPf.StdPB_of : LateralTheory.E.MVPf.StdPB := by
  intro S _ f g
  have h := isPullback_sp f g
  exact ⟨h.isoPullback.hom, inferInstance, h.isoPullback_hom_fst, h.isoPullback_hom_snd⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.StdPBPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.TwGenNZACPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.TwGenNZACPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LCBijPf\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC LateralTheory.E.t_E1Cut LateralTheory.E.LocallyConstantH0

namespace LateralTheory.E.TwGenNZACPf

section Field
variable {q : ℕ} [NeZero q] {L : Type} [Field L]

theorem prim_isPrimitiveRoot (z : Prim q L) : IsPrimitiveRoot z.1 q := by
  have : NeZero (q : L) := ⟨z.2.1.ne_zero⟩
  have h := z.2.2
  rw [Polynomial.aeval_def, Polynomial.eval₂_eq_eval_map, Polynomial.map_cyclotomic] at h
  exact Polynomial.isRoot_cyclotomic_iff.1 h


open Classical in
def lg (q : ℕ) (z x : L) : ZMod q := if h : ∃ n : ℕ, z ^ n = x then (h.choose : ZMod q) else 0

theorem lg_pow {z : L} (hz : IsPrimitiveRoot z q) (n : ℕ) : lg q z (z ^ n) = n := by
  have h : ∃ m : ℕ, z ^ m = z ^ n := ⟨n, rfl⟩
  unfold lg
  rw [dite_eq_left h, ZMod.natCast_eq_natCast_iff]
  have h2 := h.choose_spec
  have h3 := ((hz.isOfFinOrder (NeZero.ne q)).pow_eq_pow_iff_modEq).1 h2
  rwa [← hz.eq_orderOf] at h3


open Classical in
def fv (q : ℕ) (i : ℤ) (z x : L) : ZMod q :=
  if h : IsUnit (lg q z x) then ((h.unit ^ i : (ZMod q)ˣ) : ZMod q) else 0

theorem fv_rel (i : ℤ) (z : Prim q L) (ζ ξ : Prim q L) (a : (ZMod q)ˣ) (h : ξ.1 = ζ.1 ^ (a : ZMod q).val) :
    fv q i z.1 ξ.1 = ((a ^ i : (ZMod q)ˣ) : ZMod q) * fv q i z.1 ζ.1 := by
  have hz := prim_isPrimitiveRoot z
  obtain ⟨m, -, hm⟩ := hz.eq_pow_of_pow_eq_one (prim_isPrimitiveRoot ζ).pow_eq_one
  have hl : lg q z.1 ξ.1 = lg q z.1 ζ.1 * a := by
    rw [h, ← hm, ← pow_mul, lg_pow hz, lg_pow hz]
    push_cast
    rw [ZMod.natCast_zmod_val]
  unfold fv
  by_cases hu : IsUnit (lg q z.1 ζ.1)
  · have hu' : IsUnit (lg q z.1 ξ.1) := hl ▸ hu.mul a.isUnit
    rw [dite_eq_left hu, dite_eq_left hu']
    have : hu'.unit = hu.unit * a := Units.ext (by simp [hl])
    rw [this, mul_zpow, Units.val_mul, mul_comm]
  · have hu' : ¬ IsUnit (lg q z.1 ξ.1) := by
      rw [hl]; exact fun h' => hu ((Units.isUnit_mul_units _ a).1 h')
    rw [dite_eq_right hu, dite_eq_right hu', mul_zero]

theorem fv_self (i : ℤ) (z : Prim q L) : fv q i z.1 z.1 = 1 := by
  have hl : lg q z.1 z.1 = 1 := by
    have := lg_pow (prim_isPrimitiveRoot z) 1
    rw [pow_one] at this
    rw [this, Nat.cast_one]
  unfold fv
  have hu : IsUnit (lg q z.1 z.1) := hl ▸ isUnit_one
  rw [dite_eq_left hu]
  have : hu.unit = 1 := Units.ext (by simp [hl])
  rw [this, one_zpow, Units.val_one]

def lin (i : ℤ) (z : L) : (Prim q L →₀ ULift.{1} (ZMod q)) →ₗ[ULift.{1} (ZMod q)] ULift.{1} (ZMod q) :=
  Finsupp.linearCombination _ (fun ξ : Prim q L => ULift.up (fv q i z ξ.1))

theorem lin_rel (i : ℤ) (z : Prim q L) : twRel q i L ≤ LinearMap.ker (lin i z.1) := by
  refine Submodule.span_le.2 ?_
  rintro x ⟨ζ, ξ, a, h, rfl⟩
  simp only [SetLike.mem_coe, LinearMap.mem_ker, map_sub, lin, Finsupp.linearCombination_single]
  rw [sub_eq_zero]
  apply ULift.ext
  simp [fv_rel i z ζ ξ a h]

theorem field_nz (i : ℤ) (z : Prim q L) (c : ZMod q)
    (h : c.val • (Submodule.Quotient.mk (Finsupp.single z 1) : (Prim q L →₀ ULift.{1} (ZMod q)) ⧸ twRel q i L) = 0) :
    c = 0 := by
  have h2 := congrArg ((twRel q i L).liftQ (lin i z.1) (lin_rel i z)) h
  rw [map_nsmul, Submodule.liftQ_apply, map_zero, lin, Finsupp.linearCombination_single, fv_self] at h2
  rw [one_smul] at h2
  have h3 := congrArg AddEquiv.ulift h2
  rw [map_nsmul, map_zero] at h3
  change c.val • (1 : ZMod q) = 0 at h3
  rwa [nsmul_eq_mul, mul_one, ZMod.natCast_zmod_val] at h3

end Field

theorem ring_nz {q : ℕ} [NeZero q] (i : ℤ) {A : Type} [CommRing A] [Nontrivial A] (ζ : Prim q A) (c : ZMod q)
    (h : c.val • (Submodule.Quotient.mk (Finsupp.single ζ 1) : (Prim q A →₀ ULift.{1} (ZMod q)) ⧸ twRel q i A) = 0) :
    c = 0 := by
  obtain ⟨M, hM⟩ := Ideal.exists_maximal A
  let _ := Ideal.Quotient.field M
  apply field_nz i (ζ.map (Ideal.Quotient.mk M)) c
  have h2 := congrArg (Submodule.mapQ _ _ (Finsupp.lmapDomain (ULift.{1} (ZMod q)) (ULift.{1} (ZMod q))
    (Prim.map (Ideal.Quotient.mk M))) (twRel_le q i (Ideal.Quotient.mk M))) h
  rw [map_nsmul, map_zero, Submodule.mapQ_apply, Finsupp.lmapDomain_apply, Finsupp.mapDomain_single] at h2
  exact h2

theorem gamma_nontrivial (V : Scheme.{0}) [Nonempty V] : Nontrivial Γ(V, ⊤) := by
  obtain ⟨y⟩ := ‹Nonempty V›
  exact RingHom.domain_nontrivial (V.presheaf.germ ⊤ y trivial).hom

theorem TwGenNZAC_of : LateralTheory.E.LCBijPf.TwGenNZAC := by
  intro q _ i K _ _ ζ c h
  let P : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} (ZMod q)) := Scheme.Γ ⋙ twF q i
  let U : Scheme.{0} := Spec (CommRingCat.of K)
  let m : P.obj (op U) := Submodule.Quotient.mk (Finsupp.single (gam ζ) 1)
  have h1 : ((toSheafify Scheme.etaleTopology P).app (op U)).hom (c.val • m) =
      ((toSheafify Scheme.etaleTopology P).app (op U)).hom 0 := by
    rw [map_nsmul, map_zero]
    exact h
  have hS := Presheaf.equalizerSieve_mem Scheme.etaleTopology (toSheafify Scheme.etaleTopology P) (c.val • m) 0 h1
  obtain ⟨𝒰, hle⟩ := Scheme.exists_cover_of_mem_grothendieckTopology hS
  obtain ⟨p⟩ : Nonempty U := inferInstance
  obtain ⟨j, y, -⟩ := ((Scheme.presieve₀_mem_precoverage_iff _).1 𝒰.mem₀).1 p
  have hj := hle _ _ (Presieve.ofArrows.mk j)
  have : Nonempty (𝒰.X j) := ⟨y⟩
  have : Nontrivial (Scheme.Γ.obj (op (𝒰.X j))) := gamma_nontrivial (𝒰.X j)
  apply ring_nz i ((gam ζ).map (Scheme.Γ.map (𝒰.f j).op).hom) c
  change (P.map (𝒰.f j).op).hom (c.val • m) = (P.map (𝒰.f j).op).hom 0 at hj
  rw [map_nsmul, map_zero] at hj
  change c.val • Submodule.Quotient.mk (Finsupp.mapDomain (Prim.map (Scheme.Γ.map (𝒰.f j).op).hom)
    (Finsupp.single (gam ζ) 1)) = _ at hj
  erw [Finsupp.mapDomain_single] at hj
  exact hj

end LateralTheory.E.TwGenNZACPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.TwGenNZACPf =====

-- ===== clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomology.EtaleAxioms.EquivalenceQuasiAffine =====
-- clump-header: {"m": "Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomology.EtaleAxioms.EquivalenceQuasiAffine", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.CoverPf\npublic import Development.EtaleCohomology.EtaleSheaves.EtAICPf\npublic import Development.EtaleCohomology.EtaleSheaves.FinEtSectionPf\npublic import Development.EtaleCohomology.EtaleSheaves.LCSurjPf\npublic import Development.EtaleCohomology.EtaleSheaves.PullInjOfIso\npublic import Development.EtaleCohomology.EtaleSheaves.TorEtPf\npublic import Development.EtaleCohomology.EtaleSheaves.ZarLocalPf\nimport Development.AutomorphicArithmetic.CommutativeAlgebra.ExistsOrthogonalIdempotentsIsDomainOfEtale\nimport Development.EtaleCohomology.EtaleSheaves.DescentPf\nimport Development.EtaleCohomology.EtaleSheaves.DomOpenPf\nimport Development.EtaleCohomology.EtaleSheaves.EmptyVan2\nimport Development.EtaleCohomology.EtaleSheaves.EqvQAPf\npublic import Development.EtaleCohomology.EtaleSheaves.EtLiftPf\nimport Development.EtaleCohomology.EtaleSheaves.FinOpenPf\nimport Development.EtaleCohomology.EtaleSheaves.GlueOf\nimport Development.EtaleCohomology.EtaleSheaves.LCGoodPf\nimport Development.EtaleCohomology.EtaleSheaves.LCMapPf\npublic import Development.EtaleCohomology.EtaleSheaves.LeafMVVanishPf\nimport Development.EtaleCohomology.EtaleSheaves.LocDiagPf\nimport Development.EtaleCohomology.EtaleSheaves.LocFormPf\nimport Development.EtaleCohomology.EtaleSheaves.LocSHPf\nimport Development.EtaleCohomology.EtaleSheaves.PiecesPf\nimport Development.EtaleCohomology.EtaleSheaves.PrimMapComp\npublic import Development.EtaleCohomology.EtaleSheaves.ProjFPf\nimport Development.EtaleCohomology.EtaleSheaves.ProjGPf\npublic import Development.EtaleCohomology.EtaleSheaves.QAClosedPf\nimport Development.EtaleCohomology.EtaleSheaves.StdCoverPf\nimport Development.EtaleCohomology.EtaleSheaves.StdPBPf\nimport Development.EtaleCohomology.EtaleSheaves.TorSecPf\npublic import Development.EtaleCohomology.EtaleSheaves.TwGenNZACPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace UpperTheory.Et.QuasiAffineEquivalence

theorem a1 : LateralTheory.E.ZarLocalPf.LocSH := LateralTheory.E.LocSHPf.LocSH_of
theorem a2 : LateralTheory.E.ZarLocalPf.LocDiag := LateralTheory.E.LocDiagPf.LocDiag_of
theorem a3 : LateralTheory.E.t_E1Cut.ZarLocal := LateralTheory.E.ZarLocalPf.ZarLocal_of a1 a2
alias a4 := _root_.LateralTheory.E.LeafMVVanishPf.mvSpc
theorem a5 : LateralTheory.E.MVPf.StdCover := LateralTheory.E.MVPf.StdCover_of
theorem a7 : LateralTheory.E.t_E1Cut.MV := LateralTheory.E.t_E1Cut.MV_of a4 a5 _root_.LateralTheory.E.MVPf.StdPB_of
alias a9 := _root_.LateralTheory.E.TwGenNZACPf.TwGenNZAC_of
theorem a11 : LateralTheory.E.LCSurjPf.Descent := LateralTheory.E.DescentPf.Descent_of a9
theorem a12 : LateralTheory.E.LCBijPf.LCSurj := LateralTheory.E.LCSurjPf.LCSurj_of _root_.LateralTheory.E.LocFormPf.LocForm_of a11
theorem a13 : LateralTheory.E.LocallyConstantH0.LCBij := LateralTheory.E.LCBijPf.LCBij_of a9 a12
theorem a14 : LateralTheory.E.t_E1Cut.EtaleDegreeZeroCohomologyEquivLocallyConstantFunctions := LateralTheory.E.LocallyConstantH0.localConstant_H0 _root_.LateralTheory.E.LCMapPf.LCMap_of a13
theorem a16 : LateralTheory.E.EtAICPf.Split := fun T C _ _ _ _ _ h => UpperTheory.exists_orthogonalIdempotents_isDomain_of_etale T C h
theorem a18 : LateralTheory.E.t_E1Cut.EtAIC := LateralTheory.E.EtAICPf.EtAIC_of a16 _root_.LateralTheory.E.DomOpenPf.DomOpen_of
theorem a19 : LateralTheory.E.FinEtSectionPf.Pieces := LateralTheory.E.PiecesPf.Pieces_of _root_.LateralTheory.E.EtLiftPf.EtLift_of a18
theorem a22 : LateralTheory.E.t_E1Cut.FinEtSection := LateralTheory.E.FinEtSectionPf.FinEtSection_of _root_.LateralTheory.E.EtLiftPf.EtLift_of a18 a19 _root_.LateralTheory.E.FinOpenPf.FinOpen_of _root_.LateralTheory.E.Gluing₂.glue
theorem a25 : LateralTheory.E.LCSplitPf.TorEt := LateralTheory.E.TorEtPf.TorEt_of_proj _root_.LateralTheory.E.ProjFPf.projF _root_.LateralTheory.E.ProjGPf.ProjG_of
theorem a27 : LateralTheory.E.t_E1Cut.LCSplit := LateralTheory.E.LCSplitPf.LCSplit_of_tor a22 a25 _root_.LateralTheory.E.TorSecPf.TorSec_of
theorem a30 : LateralTheory.E.AcycQAPf.Cover := LateralTheory.E.CoverPf.Cover_of _root_.LateralTheory.E.EmptyVan₂.EmptyVan_of
theorem a31 : LateralTheory.E.t_E1Cut.AcycQA := LateralTheory.E.AcycQAPf.AcycQA_of _root_.LateralTheory.E.QAClosedPf.QAClosed_of a3 a7 a14 a27 _root_.LateralTheory.E.Deg0Pf.Deg0_of a30
theorem a33 : LateralTheory.E.t_E1Cut.EqvQA := LateralTheory.E.t_E1Cut.EqvQA_of a31 _root_.LateralTheory.E.QAClosedPf.QAClosed_of a14 _root_.LateralTheory.E.LCGoodPf.LCGood_of

alias intersectionNumber_baseChange := _root_.UpperTheory.Et.QuasiAffineEquivalence.a33

end UpperTheory.Et.QuasiAffineEquivalence
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicArithmetic.CommutativeAlgebra.EtaleCohomology.EtaleAxioms.EquivalenceQuasiAffine =====
