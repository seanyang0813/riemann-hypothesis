module

public import Mathlib.RingTheory.Henselian
public import Mathlib.RingTheory.Kaehler.Basic
public import Mathlib.RingTheory.RegularLocalRing.Defs
public import Mathlib.Topology.Separation.CompletelyRegular
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.TheoremA
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
import Mathlib.MeasureTheory.Measure.RegularityCompacts
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
import Mathlib.Topology.Sheaves.Init
import Mathlib.Topology.UniformSpace.Uniformizable
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.HeightTheory.SacSuccAbove
import ReciprocityTheory.SemistableReduction.AlgAll

@[expose] public section

open NumberField ReciprocityTheory.ChartRestriction.G.T0
open scoped TensorProduct

namespace GlobalTheory

namespace SectionSum

open MvPolynomial MeasureTheory

theorem sImg_indep_finite (K Ω : Type) [Field K] [CharZero K] [Field Ω] [Algebra K Ω] (D N : ℕ)
    (j₀ : Fin (N + 1)) (x : Fin N → Ω) (hfg : (⊤ : IntermediateField K Ω).FG)
    (htr : Algebra.trdeg K Ω = D)
    (hJ : ∃ J : Fin D → Fin N, LinearIndependent Ω fun k => KaehlerDifferential.D K Ω (x (J k))) :
    Function.Injective (sHom (K := K) (D := D) j₀ x) ∧
      FiniteDimensional (IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x)))
        (OmS Ω D N) := by
  have hfs := _root_.ReciprocityTheory.MultiplicativeHeights.genericImageFinite K Ω D N x hfg htr hJ
  let e : TVar D N ≃ TVar D N :=
    Equiv.prodCongr (Equiv.refl _) (Fin.cycleRange j₀).symm
  have key : (ReciprocityTheory.MultiplicativeHeights.sImage (D := D) x) = (sImg (D := D) j₀ x) ∘ e := by
    funext p
    obtain ⟨i, j⟩ := p
    refine Fin.cases ?_ (fun k => ?_) j
    · simp [e, ReciprocityTheory.MultiplicativeHeights.sImage, sImg, Fin.cycleRange_symm_zero]
    · simp [e, ReciprocityTheory.MultiplicativeHeights.sImage, sImg, Fin.cycleRange_symm_succ]
  have hrange : Set.range (ReciprocityTheory.MultiplicativeHeights.sImage (D := D) x) = Set.range (sImg (D := D) j₀ x) := by
    rw [key, EquivLike.range_comp]
  refine ⟨?_, ?_⟩
  · have hind : AlgebraicIndependent K (ReciprocityTheory.MultiplicativeHeights.sImage (D := D) x) := hfs.1
    rw [key] at hind
    have h2 := hind.comp _ e.symm.injective
    have h3 : AlgebraicIndependent K (sImg (D := D) j₀ x) := by
      simpa [Function.comp_def] using h2
    exact h3
  · have h2 := hfs.2
    rw [hrange] at h2
    exact h2

noncomputable def liftS {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D N : ℕ}
    {j₀ : Fin (N + 1)} {x : Fin N → Ω} (h : Function.Injective (sHom (K := K) (D := D) j₀ x)) :
    FractionRing (MvPolynomial (TVar D N) K) →+* OmS Ω D N :=
  IsFractionRing.lift (A := MvPolynomial (TVar D N) K)
    (g := (sHom (K := K) (D := D) j₀ x).toRingHom) h

theorem liftS_algebraMap {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D N : ℕ}
    {j₀ : Fin (N + 1)} {x : Fin N → Ω} (h : Function.Injective (sHom (K := K) (D := D) j₀ x))
    (q : MvPolynomial (TVar D N) K) :
    liftS h (algebraMap _ _ q) = sHom (K := K) (D := D) j₀ x q := by
  rw [liftS, IsFractionRing.lift_algebraMap]; rfl

theorem liftS_fieldRange {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D N : ℕ}
    {j₀ : Fin (N + 1)} {x : Fin N → Ω} (h : Function.Injective (sHom (K := K) (D := D) j₀ x)) :
    (liftS h).fieldRange =
      (IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x))).toSubfield := by
  rw [IntermediateField.adjoin_toSubfield, liftS, IsFractionRing.lift_fieldRange]
  apply le_antisymm
  · rw [Subfield.closure_le]
    rintro _ ⟨p, rfl⟩
    induction p using MvPolynomial.induction_on
    next a =>
      exact Subfield.subset_closure (Or.inl ⟨a, by simp [sHom]⟩)
    next p q hp hq =>
      rw [map_add (f := _)]
      exact add_mem hp hq
    next p i hp =>
      rw [map_mul]
      exact mul_mem hp (Subfield.subset_closure (Or.inr ⟨i, by simp [sHom]⟩))
  · rw [Subfield.closure_le]
    rintro _ (⟨a, rfl⟩ | ⟨i, rfl⟩)
    · exact Subfield.subset_closure ⟨MvPolynomial.C a, by simp [sHom]⟩
    · exact Subfield.subset_closure ⟨MvPolynomial.X i, by simp [sHom]⟩

theorem liftS_finite {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D N : ℕ}
    {j₀ : Fin (N + 1)} {x : Fin N → Ω} (h : Function.Injective (sHom (K := K) (D := D) j₀ x))
    (hfin : FiniteDimensional (IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x)))
        (OmS Ω D N)) :
    letI : Algebra (FractionRing (MvPolynomial (TVar D N) K)) (OmS Ω D N) := (liftS h).toAlgebra;
    FiniteDimensional (FractionRing (MvPolynomial (TVar D N) K)) (OmS Ω D N) := by
  letI : Algebra (FractionRing (MvPolynomial (TVar D N) K)) (OmS Ω D N) := (liftS h).toAlgebra
  let i : FractionRing (MvPolynomial (TVar D N) K) ≃+*
      (IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x))) :=
    (liftS h).rangeRestrictFieldEquiv.trans (RingEquiv.subfieldCongr (liftS_fieldRange h))
  have hc : (algebraMap (IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x)))
      (OmS Ω D N)).comp i.toRingHom =
      (RingEquiv.refl (OmS Ω D N)).toRingHom.comp
        (algebraMap (FractionRing (MvPolynomial (TVar D N) K)) (OmS Ω D N)) := by
    refine RingHom.ext fun y => ?_
    show ((i y : IntermediateField.adjoin K (Set.range (sImg (D := D) j₀ x))) : OmS Ω D N) =
      liftS h y
    rfl
  have hrk := Algebra.finrank_eq_of_equiv_equiv i (RingEquiv.refl _) hc
  apply FiniteDimensional.of_finrank_pos
  rw [hrk]
  exact Module.finrank_pos

theorem exists_ae_cons {α : Type} [MeasurableSpace α] (μ : Measure α) [SigmaFinite μ] (hμ : μ ≠ 0)
    (D : ℕ) (p : (Fin (D + 1) → α) → Prop)
    (hp : ∀ᵐ t ∂(Measure.pi fun _ : Fin (D + 1) => μ), p t) :
    ∃ t₀ : α, ∀ᵐ t ∂(Measure.pi fun _ : Fin D => μ), p (Fin.cons t₀ t) := by
  have hm := (measurePreserving_piFinSuccAbove (fun _ : Fin (D + 1) => μ) 0).symm
  have h1 := hm.quasiMeasurePreserving.ae hp
  have h2 := Measure.ae_ae_of_ae_prod h1
  haveI : (ae μ).NeBot := ae_neBot.2 hμ
  obtain ⟨t₀, ht₀⟩ := h2.exists
  refine ⟨t₀, ht₀.mono fun t ht => ?_⟩
  simpa [MeasurableEquiv.piFinSuccAbove_symm_apply, Fin.insertNthEquiv] using ht

theorem sImg_rel {Ω : Type} [Field Ω] {D N : ℕ} (j₀ : Fin (N + 1)) (x : Fin N → Ω) (i : Fin D) :
    sImg (D := D) j₀ x (i.succ, j₀) +
      ∑ k, sImg (D := D) j₀ x (i.succ, j₀.succAbove k) * algebraMap Ω (OmS Ω D N) (x k) = 0 := by
  have hC : ∀ a : Ω, algebraMap (MvPolynomial (SVar D N) Ω) (OmS Ω D N) (C a) =
      algebraMap Ω (OmS Ω D N) a := fun a => by
    rw [← MvPolynomial.algebraMap_eq, ← IsScalarTower.algebraMap_apply]

  simp only [sImg, sac_self, sac_succAbove, Fin.succ_ne_zero, ↓reduceIte, map_neg, map_sum, map_mul, hC]
  exact neg_add_cancel _

theorem bijOn_restrict {K Ω : Type} [Field K] [Field Ω] [Algebra K Ω] {D N : ℕ}
    (j₀ : Fin (N + 1)) (x : Fin N → Ω) (sg : K →+* ℂ) (pt : TVar D N → ℂ)
    (hext : ∀ Q : Ω →+* ℂ, Q ∈ PT (Ω := Ω) sg →
      (∀ i : Fin D, pt (i.succ, j₀) + ∑ k, pt (i.succ, j₀.succAbove k) * Q (x k) = 0) →
      ∃! P : OmS Ω D N →+* ℂ, (∀ a : Ω, P (algebraMap Ω (OmS Ω D N) a) = Q a) ∧
        ∀ p, P (sImg j₀ x p) = pt p) :
    Set.BijOn (fun P : OmS Ω D N →+* ℂ => P.comp (algebraMap Ω (OmS Ω D N)))
      {P | ∀ p : MvPolynomial (TVar D N) K, P (sHom (K := K) j₀ x p) = eval₂ sg pt p}
      {Q | Q ∈ PT (Ω := Ω) sg ∧
        ∀ i : Fin D, pt (i.succ, j₀) + ∑ k, pt (i.succ, j₀.succAbove k) * Q (x k) = 0} := by
  have hX : ∀ P : OmS Ω D N →+* ℂ,
      (∀ p : MvPolynomial (TVar D N) K, P (sHom (K := K) j₀ x p) = eval₂ sg pt p) →
      ∀ p, P (sImg j₀ x p) = pt p := fun P hP p => by
    simpa [sHom] using hP (X p)
  have hmaps : Set.MapsTo (fun P : OmS Ω D N →+* ℂ => P.comp (algebraMap Ω (OmS Ω D N)))
      {P | ∀ p : MvPolynomial (TVar D N) K, P (sHom (K := K) j₀ x p) = eval₂ sg pt p}
      {Q | Q ∈ PT (Ω := Ω) sg ∧
        ∀ i : Fin D, pt (i.succ, j₀) + ∑ k, pt (i.succ, j₀.succAbove k) * Q (x k) = 0} := by
    intro P hP
    refine ⟨?_, fun i => ?_⟩
    · ext a
      simp only [RingHom.comp_apply]
      rw [← IsScalarTower.algebraMap_apply K Ω (OmS Ω D N)]
      have := hP (C a)
      rwa [show sHom (K := K) (D := D) j₀ x (C a) = algebraMap K _ a by
        rw [← MvPolynomial.algebraMap_eq]; exact (sHom (K := K) (D := D) j₀ x).commutes a,
        eval₂_C] at this
    · have := congrArg P (sImg_rel (D := D) j₀ x i)

      simpa [map_sum, map_mul, hX P hP] using this
  refine ⟨hmaps, ?_, ?_⟩
  · intro P₁ h₁ P₂ h₂ he
    have hm := hmaps h₁
    refine (hext _ hm.1 hm.2).unique ⟨fun a => rfl, hX _ h₁⟩ ⟨fun a => ?_, hX _ h₂⟩
    exact (DFunLike.congr_fun he a).symm
  · rintro Q ⟨hQ, hrel⟩
    obtain ⟨P, ⟨hP1, hP2⟩, -⟩ := hext Q hQ hrel
    refine ⟨P, fun p => ?_, RingHom.ext hP1⟩
    have : P.comp (sHom (K := K) (D := D) j₀ x).toRingHom = eval₂Hom sg pt := by
      apply MvPolynomial.ringHom_ext
      · intro a
        have h1 : sHom (K := K) (D := D) j₀ x (C a) = algebraMap K _ a := by
          rw [← MvPolynomial.algebraMap_eq]; exact (sHom (K := K) (D := D) j₀ x).commutes a
        simp only [RingHom.comp_apply, AlgHom.toRingHom_eq_coe, AlgHom.coe_toRingHom, h1,
          coe_eval₂Hom, eval₂_C]
        rw [IsScalarTower.algebraMap_apply K Ω (OmS Ω D N), hP1]
        exact DFunLike.congr_fun hQ a
      · intro q
        simp [sHom, hP2]
    exact DFunLike.congr_fun this p

end SectionSum

end GlobalTheory
