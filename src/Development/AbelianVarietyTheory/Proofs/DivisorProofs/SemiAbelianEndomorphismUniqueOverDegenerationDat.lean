module

public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsSplitTorusPointsMulEquiv
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp
public import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp
public import Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.NeTopOfAdmissibleBase
public import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FlatQuotientIsoOfSameKernel
public import Mathlib.AlgebraicGeometry.Geometrically.Connected
public import Mathlib.AlgebraicGeometry.Morphisms.Smooth
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceOfSmoothOfGeometricallyConnected
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceThickening
import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsAppTopEqOfEffectiveEpi
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.AlgebraicGeometry.Sites.Fpqc
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Gamma.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.CategoryTheory.ExtremalEpi
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
import Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing
import Development.AbelianVarietyTheory.Definitions.Degenerations.ExistsGenPullTriv
import Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat
import Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HenselianLocalRingOfIsAdicComplete
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon
import Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqToUnitCompOfConstOnFibres, Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromSpecStalkCompEqOfAgreeOnClosedThickenings, Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianEndomorphismUniqueOverDegenerationDat

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqToUnitCompOfConstOnFibres =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqToUnitCompOfConstOnFibres", "h": "module\n\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.AbelianSchemeQuotients.IsAbelianScheme\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.ExistsSplitTorusPointsMulEquiv\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds\nimport Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsAppTopEqOfEffectiveEpi\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.AlgebraicGeometry.Sites.Fpqc\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.CategoryTheory.ExtremalEpi\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AbelianSchemeLaws.FirstCohomologyVanishesSpecOfIsLocalRing\nimport Development.AbelianVarietyTheory.Definitions.Degenerations.ExistsGenPullTriv\nimport Development.AbelianVarietyTheory.Definitions.Uniformization.ExistsUniqueTorusCompat\nimport Development.AbelianVarietyTheory.PublishedTheorems.Divisors₂.HenselianLocalRingOfIsAdicComplete\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory CategoryTheory.Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open GlobalTheory GlobalTheory.AbLaw GlobalTheory.UU GlobalTheory.LN GlobalTheory.Raynaud IsLocalRing
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory

namespace GlobalTheory

namespace FibreConstTorus

theorem toUnit_left {S : Scheme.{0}} (G : Over S) : (toUnit G).left = G.hom := by
  simpa using Over.w (toUnit G)

theorem appTop_comp_apply {X Y Z : Scheme.{0}} (f : X ⟶ Y) (g : Y ⟶ Z) (a : Γ(Z, ⊤)) :
    (f ≫ g).appTop a = f.appTop (g.appTop a) := by
  rw [Scheme.Hom.comp_appTop]; rfl

end FibreConstTorus


open FibreConstTorus in
theorem eq_toUnit_comp_of_const_on_fibres : ∀ (S : Scheme.{0}) (G B : Over S) [GrpObj B], IsAbelianScheme B → ∀ q : G ⟶ B, Flat q.left → Surjective q.left → QuasiCompact q.left → ∀ (X : Type) [AddCommGroup X] (d : G ⟶ splitTorus S X), (∀ (Z : Over S) (x y : Z ⟶ G), x ≫ q = y ≫ q → x ≫ d = y ≫ d) → ∃ a : 𝟙_ (Over S) ⟶ splitTorus S X, d = toUnit G ≫ a := by
  intro S G B _ hB q hfl hsu hqc X _ d hd
  have hE : EffectiveEpi q.left := inferInstance
  have hq : q.left ≫ B.hom = G.hom := Over.w q
  have hbij : Function.Bijective B.hom.appTop.hom := globalFns_holds S B hB

  have hpb := IsPullback.of_hasPullback q.left q.left
  let Z : Over S := Over.mk (pullback.fst q.left q.left ≫ G.hom)
  let x : Z ⟶ G := Over.homMk (pullback.fst q.left q.left) rfl
  let y : Z ⟶ G := Over.homMk (pullback.snd q.left q.left) (by
    change pullback.snd q.left q.left ≫ G.hom = pullback.fst q.left q.left ≫ G.hom
    rw [← hq, pullback.condition_assoc])
  have hxy : x ≫ q = y ≫ q := by
    ext1
    exact (pullback.condition (f := q.left) (g := q.left))
  have hdl : pullback.fst q.left q.left ≫ d.left = pullback.snd q.left q.left ≫ d.left :=
    congrArg CommaMorphism.left (hd Z x y hxy)
  have key : ∀ c : Γ((splitTorus S X).left, ⊤),
      (pullback.fst q.left q.left).appTop (d.left.appTop c) =
        (pullback.snd q.left q.left).appTop (d.left.appTop c) := fun c => by
    rw [← appTop_comp_apply, ← appTop_comp_apply, hdl]

  obtain ⟨f, hf⟩ : ∃ f, f = splitTorusPointsEquiv S X G d := ⟨_, rfl⟩
  have hfv : ∀ χ : X, (f (Multiplicative.ofAdd χ)).val = d.left.appTop (charUnit S X χ).val :=
    fun χ => hf ▸ splitTorusPointsEquiv_val S X G d χ
  let incl : Γ(S, ⊤)ˣ →* Γ(G.left, ⊤)ˣ := Units.map G.hom.appTop.hom.toMonoidHom
  have hinclv : ∀ u, (incl u).val = G.hom.appTop u.val := fun u => rfl
  have hinj : Function.Injective incl := by
    intro u u' h
    apply Units.ext
    apply hbij.1
    apply FlatDescent.injective_appTop_of_epi q.left
    have h' := congrArg Units.val h
    rw [hinclv, hinclv, ← hq, appTop_comp_apply, appTop_comp_apply] at h'
    exact h'
  have hrange : ∀ m, f m ∈ incl.range := by
    intro m
    obtain ⟨χ, rfl⟩ : ∃ χ : X, Multiplicative.ofAdd χ = m := ⟨Multiplicative.toAdd m, rfl⟩
    obtain ⟨v, hv, -⟩ := (FlatDescent.existsUnique_units_appTop_eq_iff q.left hpb
      (f (Multiplicative.ofAdd χ))).2 (by
        apply Units.ext
        rw [Units.coe_map, Units.coe_map]
        change (pullback.fst q.left q.left).appTop (f (Multiplicative.ofAdd χ)).val =
          (pullback.snd q.left q.left).appTop (f (Multiplicative.ofAdd χ)).val
        rw [hfv]
        exact key _)
    let e := RingEquiv.ofBijective B.hom.appTop.hom hbij
    refine ⟨Units.map e.symm.toMonoidHom v, Units.ext ?_⟩
    rw [← hv, hinclv]
    change G.hom.appTop (e.symm v.val) = q.left.appTop v.val
    rw [← hq, appTop_comp_apply]
    congr 1
    exact e.apply_symm_apply v.val
  let φ : Multiplicative X →* Γ(S, ⊤)ˣ :=
    (MonoidHom.ofInjective hinj).symm.toMonoidHom.comp (f.codRestrict incl.range hrange)
  have hφ : ∀ m, incl (φ m) = f m := by
    intro m
    have h2 := MonoidHom.ofInjective_apply hinj (x := (MonoidHom.ofInjective hinj).symm ⟨f m, hrange m⟩)
    rw [MulEquiv.apply_symm_apply] at h2
    exact h2.symm
  refine ⟨(splitTorusPointsEquiv S X (𝟙_ (Over S))).symm φ, ?_⟩
  apply (splitTorusPointsEquiv S X G).injective
  refine MonoidHom.ext fun m => Units.ext ?_
  obtain ⟨χ, rfl⟩ : ∃ χ : X, Multiplicative.ofAdd χ = m := ⟨Multiplicative.toAdd m, rfl⟩
  have h3 := splitTorusPointsEquiv_val S X (𝟙_ (Over S))
    ((splitTorusPointsEquiv S X (𝟙_ (Over S))).symm φ) χ
  rw [MulEquiv.apply_symm_apply] at h3
  rw [splitTorusPointsEquiv_val, splitTorusPointsEquiv_val, Over.comp_left, toUnit_left,
    appTop_comp_apply, ← h3, ← hinclv, hφ, hfv]

end GlobalTheory
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqToUnitCompOfConstOnFibres =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromSpecStalkCompEqOfAgreeOnClosedThickenings =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromSpecStalkCompEqOfAgreeOnClosedThickenings", "h": "module\n\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits IsLocalRing
open ReciprocityTheory.ChartRestriction.G.Out

namespace GlobalTheory.ThickStalkEq

theorem isLocalHom_mk {A : Type} [CommRing A] [IsLocalRing A] (I : Ideal A) (hI : I ≠ ⊤) :
    IsLocalHom (Ideal.Quotient.mk I) := by
  refine ⟨fun a ha => ?_⟩
  by_contra hna
  obtain ⟨v, hv⟩ := ha
  obtain ⟨b, hb⟩ := Ideal.Quotient.mk_surjective (↑v⁻¹ : A ⧸ I)
  have h1 : Ideal.Quotient.mk I (a * b - 1) = 0 := by
    rw [map_sub, map_mul, hb, ← hv]; simp
  rw [Ideal.Quotient.eq_zero_iff_mem] at h1
  have hm : a * b - 1 ∈ maximalIdeal A := le_maximalIdeal hI h1
  have ha' : a * b ∈ maximalIdeal A := Ideal.mul_mem_right _ _ ((mem_maximalIdeal _).2 hna)
  have h2 : (1 : A) ∈ maximalIdeal A := by simpa using Ideal.sub_mem _ ha' hm
  exact (maximalIdeal.isMaximal A).ne_top ((Ideal.eq_top_iff_one _).2 h2)

theorem pow_succ_ne_top (A : Type) [CommRing A] [IsLocalRing A] (e : ℕ) :
    maximalIdeal A ^ (e + 1) ≠ ⊤ :=
  ne_top_of_le_ne_top (maximalIdeal.isMaximal A).ne_top (Ideal.pow_le_self (Nat.succ_ne_zero e))

instance (A : Type) [CommRing A] [IsLocalRing A] (e : ℕ) :
    Nontrivial (A ⧸ maximalIdeal A ^ (e + 1)) :=
  Ideal.Quotient.nontrivial_iff.2 (pow_succ_ne_top A e)

instance (A : Type) [CommRing A] [IsLocalRing A] (e : ℕ) :
    IsLocalRing (A ⧸ maximalIdeal A ^ (e + 1)) :=
  IsLocalRing.of_surjective' _ Ideal.Quotient.mk_surjective

instance (A : Type) [CommRing A] [IsLocalRing A] (e : ℕ) :
    IsLocalHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1))) :=
  isLocalHom_mk _ (pow_succ_ne_top A e)

theorem eq_of_forall_pow {X : Scheme.{0}} (A : CommRingCat.{0}) [IsLocalRing A]
    [IsNoetherianRing A] (u u' : Spec A ⟶ X)
    (h : ∀ e : ℕ, Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1)))) ≫ u =
      Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1)))) ≫ u') :
    u = u' := by
  obtain ⟨⟨y, ψ, hψ⟩, rfl⟩ := (SpecToEquivOfLocalRing X A).symm.surjective u
  obtain ⟨⟨y', ψ', hψ'⟩, rfl⟩ := (SpecToEquivOfLocalRing X A).symm.surjective u'
  have key : ∀ e : ℕ, ∃ h₁ : y = y',
      ψ ≫ CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1))) =
        (X.presheaf.stalkCongr (by rw [h₁]; rfl)).hom ≫
          ψ' ≫ CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1))) := by
    intro e
    have he := h e
    simp only [SpecToEquivOfLocalRing_symm_apply, ← Spec.map_comp_assoc] at he
    have l1 : IsLocalHom (ψ ≫ CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1)))).hom := by
      rw [CommRingCat.hom_comp, CommRingCat.hom_ofHom]; infer_instance
    have l2 : IsLocalHom (ψ' ≫ CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1)))).hom := by
      rw [CommRingCat.hom_comp, CommRingCat.hom_ofHom]; infer_instance
    have hinj := (SpecToEquivOfLocalRing X (.of (A ⧸ maximalIdeal A ^ (e + 1)))).symm.injective
      (a₁ := ⟨y, ψ ≫ CommRingCat.ofHom (Ideal.Quotient.mk _), l1⟩)
      (a₂ := ⟨y', ψ' ≫ CommRingCat.ofHom (Ideal.Quotient.mk _), l2⟩)
      (by simpa only [SpecToEquivOfLocalRing_symm_apply] using he)
    obtain ⟨h₁, h₂⟩ := SpecToEquivOfLocalRing_eq_iff.mp hinj
    exact ⟨h₁, h₂⟩
  obtain ⟨rfl, -⟩ := key 0
  have hψψ : ψ = ψ' := by
    ext f
    rw [← sub_eq_zero, ← Ideal.mem_bot,
      ← Ideal.iInf_pow_eq_bot_of_isLocalRing (maximalIdeal A) (maximalIdeal.isMaximal A).ne_top,
      Ideal.mem_iInf]
    intro n
    cases n with
    | zero => simp
    | succ e =>
      obtain ⟨_, h₂⟩ := key e
      simp only [TopCat.Presheaf.stalkCongr_hom, TopCat.Presheaf.stalkSpecializes_refl,
        Category.id_comp] at h₂
      have := congrArg (fun g => g.hom f) h₂
      simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at this
      exact Ideal.Quotient.eq.mp this
  subst hψψ
  rfl

end GlobalTheory.ThickStalkEq

namespace GlobalTheory.ThickStalkEq

theorem fromSpecStalk_comp_eq : ∀ (R : Type) [CommRing R] [IsLocalRing R] [IsNoetherianRing R]
    (G : Over (Spec (CommRingCat.of R))), LocallyOfFiniteType G.hom → ∀ (b b' : G ⟶ G),
    (∀ e : ℕ, (Over.pullback (thick R (maximalIdeal R) e)).map b =
      (Over.pullback (thick R (maximalIdeal R) e)).map b') →
    ∀ x : G.left, G.hom x = closedPoint R →
      G.left.fromSpecStalk x ≫ b.left = G.left.fromSpecStalk x ≫ b'.left := by
  intro R _ _ _ G hG b b' hb x hx
  haveI : IsLocallyNoetherian G.left := LocallyOfFiniteType.isLocallyNoetherian G.hom
  let A := G.left.presheaf.stalk x
  let φ : CommRingCat.of R ⟶ A := Spec.preimage (G.left.fromSpecStalk x ≫ G.hom)
  have hφ : Spec.map φ = G.left.fromSpecStalk x ≫ G.hom := Spec.map_preimage _
  have h1 : (Spec.map φ) (closedPoint A) = closedPoint R := by
    rw [hφ]
    exact (Scheme.Hom.comp_apply _ _ _).trans ((congrArg G.hom Scheme.fromSpecStalk_closedPoint).trans hx)
  have hloc : ∀ r ∈ maximalIdeal R, φ.hom r ∈ maximalIdeal A := by
    intro r hr
    have hc : PrimeSpectrum.comap φ.hom (closedPoint A) = closedPoint R := h1
    have : r ∈ (PrimeSpectrum.comap φ.hom (closedPoint A)).asIdeal := by rw [hc]; exact hr
    exact this
  refine eq_of_forall_pow A _ _ (fun e => ?_)
  have hle : maximalIdeal R ^ (e + 1) ≤ (maximalIdeal A ^ (e + 1)).comap φ.hom := by
    rw [← Ideal.map_le_iff_le_comap, Ideal.map_pow]
    exact Ideal.pow_right_mono (Ideal.map_le_iff_le_comap.2 hloc) _
  let χ : R ⧸ maximalIdeal R ^ (e + 1) →+* A ⧸ maximalIdeal A ^ (e + 1) :=
    Ideal.quotientMap _ φ.hom hle
  have hw : (Spec.map (CommRingCat.ofHom (Ideal.Quotient.mk (maximalIdeal A ^ (e + 1)))) ≫
      G.left.fromSpecStalk x) ≫ G.hom = Spec.map (CommRingCat.ofHom χ) ≫ thick R (maximalIdeal R) e := by
    rw [Category.assoc, ← hφ, thick, ← Spec.map_comp, ← Spec.map_comp]
    congr 1
  have := congrArg (fun g => pullback.lift _ _ hw ≫ g.left ≫ pullback.fst _ _) (hb e)
  simp only [Over.pullback_map_left] at this
  simpa only [Category.assoc, pullback.lift_fst, pullback.lift_fst_assoc] using this

end GlobalTheory.ThickStalkEq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromSpecStalkCompEqOfAgreeOnClosedThickenings =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianEndomorphismUniqueOverDegenerationDat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianEndomorphismUniqueOverDegenerationDat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.FormalEnd\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.DegExp\npublic import Development.AbelianVarietyTheory.Counterexamples.UniformisationSurvey.NeTopOfAdmissibleBase\npublic import Development.AbelianVarietyTheory.Definitions.ShimuraVarieties.PowObjGeometricallyConnected\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.FlatQuotientIsoOfSameKernel\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.EqToUnitCompOfConstOnFibres\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ExtensionDescent.ThickTransComp\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FromSpecStalkCompEqOfAgreeOnClosedThickenings\npublic import Mathlib.AlgebraicGeometry.Geometrically.Connected\npublic import Mathlib.AlgebraicGeometry.Morphisms.Smooth\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IrreducibleSpaceOfSmoothOfGeometricallyConnected\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.IsReducedAlgebraOfSmoothOfIsNoetherianRing\npublic import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.ConnectedSpaceThickening\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\nimport Development.AbelianVarietyTheory.Definitions.Uniformization.IsCPPullback\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.ExistsToricRankOne\n\n"}
section -- clump:auto
@[expose] public section

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Geo.Tor
open scoped CategoryTheory.Obj
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.Mum

namespace GlobalTheory.MumUniq

variable {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegPre R} {e : ℕ}
  {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]

theorem isAbelianScheme_thick (D : DegPre R) (e : ℕ) : IsAbelianScheme (thickObj R I e D.P.A) := by
  have : IsProper D.P.A.hom := D.P.isAb.proper
  exact
    { comm := inferInstance
      smooth := by have := D.P.isAb.smooth; show Smooth (pullback.snd _ _); infer_instance
      proper := by show IsProper (pullback.snd _ _); infer_instance
      geomConnected := by
        have := D.P.isAb.geomConnected
        show GeometricallyConnected (pullback.snd _ _)
        infer_instance }

theorem eq_of_q_of_i (g : GtCoord I D e G) (b₁ b₂ : thickObj R I e G ⟶ thickObj R I e G)
    [IsMonHom b₁] [IsMonHom b₂] (aB : thickObj R I e D.P.A ⟶ thickObj R I e D.P.A)
    (h₁ : b₁ ≫ g.q = g.q ≫ aB) (h₂ : b₂ ≫ g.q = g.q ≫ aB) (hi : g.i ≫ b₁ = g.i ≫ b₂) :
    b₁ = b₂ := by
  have := g.q_hom
  have := g.i_hom
  have := g.q_flat
  have := g.q_surj
  have := g.q_affine
  have hk := g.isKernel
  have : Mono g.i := by
    have : Mono (η[thickObj R I e D.P.A]) := ⟨fun _ _ _ => toUnit_unique _ _⟩
    exact (MorphismProperty.monomorphisms _).of_isPullback hk.flip (.infer_property _)
  have hc : IsMonHom (b₁ / b₂) := by
    rw [div_eq_mul_inv]; exact GlobalTheory.Serre.isMonHom_mul _ _
  have hcq : (b₁ / b₂) ≫ g.q = toUnit _ ≫ η[thickObj R I e D.P.A] := by
    rw [GrpObj.div_comp, h₁, h₂, div_self', Hom.one_def]
  let τ := hk.lift (b₁ / b₂) (toUnit _) hcq
  have hτ : τ ≫ g.i = b₁ / b₂ := hk.lift_fst _ _ _
  have : IsMonHom (τ ≫ g.i) := hτ ▸ hc
  have : IsMonHom τ := GlobalTheory.EndTorus.isMonHom_of_mono τ g.i
  have hiτ : g.i ≫ τ = toUnit _ ≫ η := by
    rw [← cancel_mono g.i, Category.assoc, hτ, GrpObj.comp_div, hi, div_self', Category.assoc,
      IsMonHom.one_hom, Hom.one_def]
  obtain ⟨a₀, ha₀⟩ := GlobalTheory.eq_toUnit_comp_of_const_on_fibres _ _ _ (isAbelianScheme_thick D e) g.q
    g.q_flat g.q_surj inferInstance D.X τ
    (fun Z x y hxy => GlobalTheory.FlatQuotient.comp_eq_of_kills_kernel g.q g.i τ hk hiτ x y hxy)
  have hτ1 : τ = toUnit _ ≫ η := by
    have h := IsMonHom.one_hom τ
    rw [ha₀, ← Category.assoc, toUnit_unique (η ≫ toUnit _) (𝟙 _), Category.id_comp] at h
    rw [ha₀, h]
  have : b₁ / b₂ = 1 := by rw [← hτ, hτ1, Category.assoc, IsMonHom.one_hom, Hom.one_def]
  exact div_eq_one.1 this

end GlobalTheory.MumUniq

namespace GlobalTheory.MumUniq

theorem eq_of_stalk {R : Type} [CommRing R] [IsDomain R] (G : Over (Sp R)) [Smooth G.hom]
    [IsSeparated G.hom] [GeometricallyConnected G.hom] (b b' : G ⟶ G) (x : G.left)
    (h : G.left.fromSpecStalk x ≫ b.left = G.left.fromSpecStalk x ≫ b'.left) : b = b' := by
  have : IrreducibleSpace G.left := _root_.GlobalTheory.irreducibleSpace_of_smooth_of_geometricallyConnected_domain R G inferInstance inferInstance ⟨x⟩
  have : IsReduced G.left := GlobalTheory.isReduced_of_smooth_of_isReduced G.hom
  have : IsDominant (G.left.fromSpecStalk x) := by
    refine ⟨?_⟩
    rw [DenseRange, Scheme.range_fromSpecStalk, dense_iff_closure_eq, Set.eq_univ_iff_forall]
    intro y
    exact closure_mono (Set.singleton_subset_iff.2 (genericPoint_specializes x))
      ((genericPoint_spec G.left).def ▸ Set.mem_univ y)
  exact Over.OverMorphism.ext (ext_of_isDominant_of_isSeparated G.hom (by rw [Over.w b, Over.w b'])
    (G.left.fromSpecStalk x) h)

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R], AdmBase R (maximalIdeal R) → ∀ (D : DegData R (maximalIdeal R)) (A : PolAV (Sp (FractionRing R))) (G : Over (Sp R)) [GrpObj G] [IsCommMonObj G], IsSemiAbelian G → ∀ U : Unif (maximalIdeal R) D A G, ∀ (a : D.toPre.P.A ⟶ D.toPre.P.A) (h' : D.toPre.X →+ D.toPre.X), (∀ b b', FormalEnd U.toUnifPre a h' b → FormalEnd U.toUnifPre a h' b' → b = b') ∧ ∀ b b' : G ⟶ G, (∀ e, (Over.pullback (thick R (maximalIdeal R) e)).map b = (Over.pullback (thick R (maximalIdeal R) e)).map b') → b = b' := by
  intro R _ _ _ hR D A G _ _ hG U a h'
  refine ⟨fun b b' hb hb' => funext fun e => ?_, fun b b' hbb => ?_⟩
  · obtain ⟨hm, -, hq, ht⟩ := hb
    obtain ⟨hm', -, hq', ht'⟩ := hb'
    have := hm e
    have := hm' e
    obtain ⟨t, htt, hti⟩ := ht e
    obtain ⟨t', htt', hti'⟩ := ht' e
    obtain rfl := GlobalTheory.LinearUnifCheck.torusEndOf_unique htt htt'
    exact eq_of_q_of_i (U.gt e) (b e) (b' e) _ (hq e) (hq' e) (hti.trans hti'.symm)
  · have := hG.smooth
    have := hG.separated
    have := hG.geomConnected
    have : IsNoetherianRing R := hR.1
    have hw : (η[G]).left ≫ G.hom = 𝟙 _ := Over.w (η[G])
    have hx : G.hom ((η[G]).left (closedPoint R : (𝟙_ (Over (Sp R))).left)) = closedPoint R := by
      show ((η[G]).left ≫ G.hom) (closedPoint R : (𝟙_ (Over (Sp R))).left) = _
      rw [hw]
      rfl
    exact eq_of_stalk G b b' _ (_root_.GlobalTheory.ThickStalkEq.fromSpecStalk_comp_eq R G inferInstance b b' hbb _ hx)

end GlobalTheory.MumUniq
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.SemiAbelianEndomorphismUniqueOverDegenerationDat =====
