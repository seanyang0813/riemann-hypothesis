module

public import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.GlobalEulerFormulaInf
public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackey
public import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.DefsForms
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules
public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyPlaces
public import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroCoind
public import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroReal
public import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer
public import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
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
import GroundTheory.ProfiniteCohomology.EulerChar
import Mathlib.Algebra.Ring.IsFormallyReal

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.CardCohomologyZeroMackeyRepOfNeTop, GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroRatio, GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.Shapiro

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.CardCohomologyZeroMackeyRepOfNeTop =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.CardCohomologyZeroMackeyRepOfNeTop", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.GlobalEulerFormulaInf\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackey\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.DefsForms\nimport GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  {L : FiniteSubfield} [Fact (K ≤ L)]
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)

instance isDiscreteRep_res_gsBaseChange_symm
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B] : IsDiscreteRep (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B) :=
  IsDiscreteRep.res (continuous_mulEquiv_toMonoidHom _) B

variable (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)

theorem gsRealH0Card_coind
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B]
    (v : {v : InfinitePlace K.1 // v.IsReal}) :
    gsRealH0Card S (Rep.coind (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype B)
        ιr v =
      ∏ d : MackeyDoubleCoset (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
          (gsRealFamily S ιr v).toMonoidHom,
        Nat.card (cohomology (mackeyRep (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
          (gsRealFamily S ιr v).toMonoidHom B d.out) 0) :=
  (Nat.card_congr (mackeyCohomologyEquiv (gsOpenSubgroup S hL) (gsRealFamily S ιr v) B 0).toEquiv).trans
    Nat.card_pi

theorem card_cohomology_zero_mackeyRep_of_ne_top
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B]
    (v : {v : InfinitePlace K.1 // v.IsReal})
    (d : MackeyDoubleCoset (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
      (gsRealFamily S ιr v).toMonoidHom)
    (hd : ¬ mackeySubgroup (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
      (gsRealFamily S ιr v).toMonoidHom d.out = ⊤) :
    Nat.card (cohomology (mackeyRep (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
      (gsRealFamily S ιr v).toMonoidHom B d.out) 0) = Nat.card B :=
  card_cohomology_zero_of_forall_eq_one _ fun g => by
    have hb := eq_bot_of_ne_top_realGal v _ hd
    have hg : g = 1 := Subtype.ext (Subgroup.mem_bot.1 (hb ▸ g.2))
    subst hg
    exact map_one _

private theorem card_cohomology_zero_mackeyRep_top_aux
    {k G H J H' : Type} [CommRing k]
    [Group G] [TopologicalSpace G] [IsTopologicalGroup G]
    [Group H] [TopologicalSpace H] [IsTopologicalGroup H]
    [Group J] [TopologicalSpace J] [IsTopologicalGroup J]
    [Group H'] [TopologicalSpace H'] [IsTopologicalGroup H']
    (W : OpenSubgroup G) (φ : H →ₜ* G) (ψ : H' →ₜ* J)
    (β : (W : Subgroup G) ≃ₜ* J) (N : Rep k (W : Subgroup G)) [IsDiscreteRep N]
    [hN' : IsDiscreteRep (Rep.res β.symm.toMulEquiv.toMonoidHom N)]
    (x : G) (htop : mackeySubgroup (W : Subgroup G) φ.toMonoidHom x = ⊤)
    (e : H ≃* H')
    (he : ∀ (g : H) (hg : x * φ.toMonoidHom g * x⁻¹ ∈ (W : Subgroup G)),
      β ⟨x * φ.toMonoidHom g * x⁻¹, hg⟩ = ψ.toMonoidHom (e g)) :
    Nat.card (cohomology (mackeyRep (W : Subgroup G) φ.toMonoidHom N x) 0) =
      Nat.card (@cohomology k H' _ _ _ _ _
        (isDiscreteRep_res_toMonoidHom ψ (Rep.res β.symm.toMulEquiv.toMonoidHom N)) 0) := by
  let P := mackeySubgroup (W : Subgroup G) φ.toMonoidHom x
  let c := mackeyConj (W : Subgroup G) φ.toMonoidHom x
  have he' : Function.Surjective (fun g : P => e g.1) := fun g =>
    ⟨⟨e.symm g, (Subgroup.eq_top_iff' P).1 htop (e.symm g)⟩, e.apply_symm_apply g⟩
  have hconj (g : P) : β.symm (ψ.toMonoidHom (e g.1)) = c g :=
    (ContinuousMulEquiv.symm_apply_eq β).2 (he g.1 g.2).symm
  have hiff (b : N) : (∀ g : P, N.ρ (c g) b = b) ↔
      (∀ g : H', N.ρ (β.symm (ψ.toMonoidHom g)) b = b) := by
    constructor
    · intro hb g
      obtain ⟨a, rfl⟩ := he' g
      exact (congrArg (fun t => N.ρ t b) (hconj a)).trans (hb a)
    · intro hb a
      exact (congrArg (fun t => N.ρ t b) (hconj a).symm).trans (hb (e a.1))
  have hleft := Nat.card_congr
    (H0Iso (mackeyRep (W : Subgroup G) φ.toMonoidHom N x)).toLinearEquiv.toEquiv
  let _ := isDiscreteRep_res_toMonoidHom ψ (Rep.res β.symm.toMulEquiv.toMonoidHom N)
  have hright := Nat.card_congr
    (H0Iso (Rep.res ψ.toMonoidHom (Rep.res β.symm.toMulEquiv.toMonoidHom N))).toLinearEquiv.toEquiv
  exact hleft.trans ((Nat.card_congr (Equiv.subtypeEquivRight hiff)).trans hright.symm)

theorem card_cohomology_zero_mackeyRep_top
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B]
    (ιrL : ∀ w : {w : InfinitePlace L.1 // w.IsReal}, ℚ̄ →ₐ[L.1] AlgebraicClosure w.1.Completion)
    (p : MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL)) (w : {w : InfinitePlace L.1 // w.IsReal})
    (e : Gal(AlgebraicClosure p.1.1.1.Completion / p.1.1.1.Completion) ≃*
      Gal(AlgebraicClosure w.1.Completion / w.1.Completion))
    (he : ∀ (g : Gal(AlgebraicClosure p.1.1.1.Completion / p.1.1.1.Completion))
      (hg : p.1.2.out * gsRealFamily S ιr p.1.1 g * p.1.2.out⁻¹ ∈ gsOpenSubgroup S hL),
      gsBaseChange S hL ⟨p.1.2.out * gsRealFamily S ιr p.1.1 g * p.1.2.out⁻¹, hg⟩ =
        decompHomS w.1.Completion (placesOver S) (ιrL w) (e g)) :
    Nat.card (cohomology (mackeyRep (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
      (gsRealFamily S ιr p.1.1).toMonoidHom B p.1.2.out) 0) =
      gsRealH0Card (placesOver S) (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B) ιrL w := by
  unfold gsRealH0Card
  exact card_cohomology_zero_mackeyRep_top_aux (gsOpenSubgroup S hL) (gsRealFamily S ιr p.1.1)
    (gsRealFamily (placesOver S) ιrL w) (gsBaseChange S hL) B
    (hN' := isDiscreteRep_res_gsBaseChange_symm S hL B) p.1.2.out p.2 e he

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.CardCohomologyZeroMackeyRepOfNeTop =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroRatio =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroRatio", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.CardCohomologyZeroMackeyRepOfNeTop\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyPlaces\nimport GroundTheory.ProfiniteCohomology.EulerChar\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroCoind\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroReal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Ring.IsFormallyReal\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

local notation "ℚ̄" => AlgebraicClosure ℚ

noncomputable section

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  {L : FiniteSubfield} [Fact (K ≤ L)]
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)


private theorem prod_sigma_of_subtype_bijective
    {α γ : Type*} {β : α → Type*} [Fintype α] [fintypeFiber : ∀ a, Fintype (β a)] [Fintype γ]
    (p : Sigma β → Prop) [DecidablePred p] (mem : γ → {x // p x})
    (hbij : Function.Bijective mem) (f : (a : α) → β a → ℕ) (g : γ → ℕ) (n : ℕ)
    (htop : ∀ w, g w = f (mem w).1.1 (mem w).1.2)
    (hlow : ∀ x : Sigma β, ¬ p x → f x.1 x.2 = n) :
    (∏ a, ∏ b, f a b) = (∏ w, g w) * n ^ Nat.card {x // ¬ p x} := by
  have htopProd := Fintype.prod_bijective mem hbij g (fun x => f x.1.1 x.1.2) htop
  have hlowProd : (∏ x : {x // ¬ p x}, f x.1.1 x.1.2) = n ^ Nat.card {x // ¬ p x} :=
    (Finset.prod_congr rfl (fun x _ => hlow x.1 x.2)).trans <| by
      rw [Finset.prod_const, Finset.card_univ, Fintype.card_eq_nat_card]
  exact (Fintype.prod_sigma' f).symm.trans <|
    (Fintype.prod_subtype_mul_prod_subtype p (fun x => f x.1 x.2)).symm.trans <|
      congrArg₂ (· * ·) htopProd.symm hlowProd

open scoped Classical in
theorem prod_gsRealH0Card_coind
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B]
    (ιrL : ∀ w : {w : InfinitePlace L.1 // w.IsReal}, ℚ̄ →ₐ[L.1] AlgebraicClosure w.1.Completion)
    (mem : {w : InfinitePlace L.1 // w.IsReal} → MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL))
    (hmem : ∀ w, realMemberPlace S ιr hL (mem w) = w)
    (e : ∀ w, Gal(AlgebraicClosure (mem w).1.1.1.Completion / (mem w).1.1.1.Completion) ≃*
      Gal(AlgebraicClosure w.1.Completion / w.1.Completion))
    (he : ∀ w (g : Gal(AlgebraicClosure (mem w).1.1.1.Completion / (mem w).1.1.1.Completion))
      (hg : (mem w).1.2.out * gsRealFamily S ιr (mem w).1.1 g * (mem w).1.2.out⁻¹ ∈ gsOpenSubgroup S hL),
      gsBaseChange S hL ⟨(mem w).1.2.out * gsRealFamily S ιr (mem w).1.1 g * (mem w).1.2.out⁻¹, hg⟩ =
        decompHomS w.1.Completion (placesOver S) (ιrL w) (e w g)) :
    ∏ v : {v : InfinitePlace K.1 // v.IsReal},
        gsRealH0Card S (Rep.coind (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype B)
          ιr v =
      (∏ w : {w : InfinitePlace L.1 // w.IsReal},
          gsRealH0Card (placesOver S) (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B) ιrL w) *
        Nat.card B ^ Nat.card {p : Σ v : {v : InfinitePlace K.1 // v.IsReal},
            MackeyDoubleCoset (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
              (gsRealFamily S ιr v).toMonoidHom //
          ¬ mackeySubgroup (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S))
            (gsRealFamily S ιr p.1).toMonoidHom p.2.out = ⊤} := by
  have hbij : Function.Bijective mem :=
    ⟨fun w w' h => (hmem w).symm.trans ((congrArg (realMemberPlace S ιr hL) h).trans (hmem w')),
      fun p => ⟨realMemberPlace S ιr hL p, realMemberPlace_injective S ιr hL (hmem _)⟩⟩
  let W := gsOpenSubgroup S hL
  let ψ := gsRealFamily S ιr
  let D (v : {v : InfinitePlace K.1 // v.IsReal}) :=
    MackeyDoubleCoset (W : Subgroup _) (ψ v).toMonoidHom
  let p (x : Sigma D) := mackeySubgroup (W : Subgroup _) (ψ x.1).toMonoidHom x.2.out = ⊤
  let f (v : {v : InfinitePlace K.1 // v.IsReal}) (d : D v) :=
    Nat.card (@cohomology _ _ _ _ _ _ _
      (isDiscreteRep_mackeyRep_continuousMonoidHom W (ψ v) B d.out) 0)
  let g (w : {w : InfinitePlace L.1 // w.IsReal}) :=
    gsRealH0Card (placesOver S) (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B) ιrL w
  have hsplit := prod_sigma_of_subtype_bijective
    (fintypeFiber := fun v => fintype_mackeyDoubleCoset W (ψ v)) p mem hbij f g (Nat.card B)
    (fun w => (card_cohomology_zero_mackeyRep_top S hL ιr B ιrL (mem w) w (e w) (he w)).symm)
    (fun x hx => card_cohomology_zero_mackeyRep_of_ne_top S hL ιr B x.1 x.2 hx)
  exact (Finset.prod_congr rfl (fun v _ => gsRealH0Card_coind S hL ιr B v)).trans hsplit

theorem ratio_coind_arith {χ χ' PK PL nC nB : ℚ} {cK cL b n : ℕ} (hχ : χ = χ') (hC : nC = nB ^ n)
    (hP : PK = PL * nB ^ b) (hN : cL + b = n * cK) (hB : nB ≠ 0) :
    χ * nC ^ cK / PK = χ' * nB ^ cL / PL := by
  subst hχ hC hP
  rw [← pow_mul, ← hN, pow_add, ← mul_assoc, mul_div_mul_right _ _ (pow_ne_zero _ hB)]


private theorem rat_prod_eq_of_nat_prod_eq {α β : Type*} [Fintype α] [Fintype β]
    {f : α → ℕ} {g : β → ℕ} {n b : ℕ}
    (h : (∏ x, f x) = (∏ y, g y) * n ^ b) :
    (∏ x, (f x : ℚ)) = (∏ y, (g y : ℚ)) * (n : ℚ) ^ b := by
  simpa only [Nat.cast_prod, Nat.cast_mul, Nat.cast_pow] using
    congrArg (fun m : ℕ => (m : ℚ)) h

open scoped Classical in
theorem gsEulerRatio_coind_eq_of
    (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
    [IsDiscreteRep B] [Finite B]
    (ιrL : ∀ w : {w : InfinitePlace L.1 // w.IsReal}, ℚ̄ →ₐ[L.1] AlgebraicClosure w.1.Completion)
    (mem : {w : InfinitePlace L.1 // w.IsReal} → MackeyTopIndex (gsRealFamily S ιr) (gsOpenSubgroup S hL))
    (hmem : ∀ w, realMemberPlace S ιr hL (mem w) = w)
    (e : ∀ w, Gal(AlgebraicClosure (mem w).1.1.1.Completion / (mem w).1.1.1.Completion) ≃*
      Gal(AlgebraicClosure w.1.Completion / w.1.Completion))
    (he : ∀ w (g : Gal(AlgebraicClosure (mem w).1.1.1.Completion / (mem w).1.1.1.Completion))
      (hg : (mem w).1.2.out * gsRealFamily S ιr (mem w).1.1 g * (mem w).1.2.out⁻¹ ∈ gsOpenSubgroup S hL),
      gsBaseChange S hL ⟨(mem w).1.2.out * gsRealFamily S ιr (mem w).1.1 g * (mem w).1.2.out⁻¹, hg⟩ =
        decompHomS w.1.Completion (placesOver S) (ιrL w) (e w g)) :
    gsEulerRatio S (Rep.coind (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype B) ιr =
      gsEulerRatio (placesOver S) (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B) ιrL := by
  have hχ := (eulerChar_coind (gsOpenSubgroup S hL) B).trans
    (eulerChar_res_continuousMulEquiv (gsBaseChange S hL).symm B).symm
  have hC := (congrArg (fun m : ℕ => (m : ℚ)) (card_coind_gsOpenSubgroup S hL B)).trans
    (Nat.cast_pow _ _)
  have hPq := rat_prod_eq_of_nat_prod_eq (prod_gsRealH0Card_coind S hL ιr B ιrL mem hmem e he)
  have hN := card_infinitePlace_add_card S hL ιr
  simp only [Nat.card_eq_fintype_card (α := InfinitePlace K.1), Nat.card_eq_fintype_card (α := InfinitePlace L.1)]
    at hN
  have hB : (Nat.card B : ℚ) ≠ 0 := Nat.cast_ne_zero.2 Nat.card_pos.ne'
  exact ratio_coind_arith hχ hC hPq hN hB

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroRatio =====

-- ===== clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.Shapiro =====
-- clump-header: {"m": "GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.Shapiro", "h": "module\n\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.GlobalEulerFormulaInf\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.BaseChangeModules\npublic import GroundTheory.ProfiniteCohomology.RestrictedRamification.Brauer\npublic import GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.ShapiroRatio\npublic import GroundTheory.ProfiniteCohomology.RealPlaces.VanishingMackeyTransfer\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.ProfCoh

open CategoryTheory NumberField IsDedekindDomain GroundTheory.Global

noncomputable section

local notation "ℚ̄" => AlgebraicClosure ℚ

variable {K : FiniteSubfield} (S : Set (HeightOneSpectrum (𝓞 K.1)))
  {L : FiniteSubfield} [Fact (K ≤ L)]
  (hL : ∀ x : L.1, algebraMap L.1 ℚ̄ x ∈ maxUnramifiedOutside K.1 ℚ̄ S)
  (ιr : ∀ v : {v : InfinitePlace K.1 // v.IsReal}, ℚ̄ →ₐ[K.1] AlgebraicClosure v.1.Completion)

theorem exists_gsEulerRatio_coind_eq :
    ∃ ιrL : ∀ w : {w : InfinitePlace L.1 // w.IsReal}, ℚ̄ →ₐ[L.1] AlgebraicClosure w.1.Completion,
      ∀ (B : Rep.{0} (ULift.{0} ℤ) (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)))
        [IsDiscreteRep B] [Finite B],
        gsEulerRatio S (Rep.coind (gsOpenSubgroup S hL : Subgroup (galUnramifiedOutside K.1 ℚ̄ S)).subtype B)
            ιr =
          @gsEulerRatio L (placesOver S) (Rep.res (gsBaseChange S hL).symm.toMulEquiv.toMonoidHom B)
            (IsDiscreteRep.res (continuous_mulEquiv_toMonoidHom (gsBaseChange S hL).symm) B) ιrL := by
  choose mem hmem using realMemberPlace_surjective S ιr hL
  choose ιrL e he using fun w => exists_real_data_of_eq S ιr hL (mem w) w
    ((coe_realMemberPlace S ιr hL (mem w)).symm.trans (congrArg Subtype.val (hmem w)))
  exact ⟨ιrL, fun B _ _ => gsEulerRatio_coind_eq_of S hL ιr B ιrL mem hmem e he⟩

end

end GroundTheory.ProfCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ProfiniteCohomology.GlobalEulerCharacteristic.Shapiro =====
