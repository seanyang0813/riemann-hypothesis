module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.PlainAtR
import Development.AbelianVarietyTheory.Definitions.Foundations.GLintEqKOAndPrincEqKOne
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.MkMemAdmissibleAtIffCocycle
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.ContinuousRingEquivLocalFieldPreservesValuation
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SatakeParameterSphericalProductSpehQuotients
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EquivOfISupRange
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFixedOfMemISup
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLocCompAndIsLocLoc
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPolarizedTwistAbsPow
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.ExistsCharacterSupportBaseChangeLiftDegreeOne
public import Development.AbelianVarietyTheory.Proofs.SatakeParameters.PlainTorExistsChars
public import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.LocIsotypic
public import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.TemperedLocalComponents.ExistsContRep
public import Development.WeilBound.RepresentationTheoryGL.ConstantTermFiniteness.LieInvariants.InvariantOfLieOneLEqZero
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
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
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.IsSubquotientComp
import Development.AutomorphicArithmetic.AutomorphicVarieties.ModularityArgument.AutomorphyLifting.WeakOfAtt
import PositivityTheory.AutomorphicForms.PublishedInputs.RealGaloisRepresentations.IwahoriSphericalTransfer.OrbitFiniteType

@[expose] public section

open NumberField IsDedekindDomain Formalism.L2.Host Formalism.ConjugateSelfDual ReciprocityTheory.Gal Formalism.BasicNotions Formalism.MainNotions.N Polynomial GlobalTheory.CuspRep
open GlobalTheory.PRep GlobalTheory.SmGL GlobalTheory.LocGL GlobalTheory.LocLanglands GlobalTheory.GalOfCusp UpperTheory.Zero.LLC UpperTheory.V UpperTheory.V.Af UpperTheory.V.Z.Gam UpperTheory.V.Z.Win
open GroundTheory.Global.SemiLocal UpperTheory.V.Published

namespace UpperTheory.V.Z.Win.SplitTorusFixedPoints

open Matrix

section Transport

variable {k k' : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]
  [Field k'] [ValuativeRel k'] [TopologicalSpace k'] [IsNonarchimedeanLocalField k']

private theorem smooth_comp (i : k ≃+* k') (hi' : Continuous i.symm) {χ : kˣ →* ℂˣ} (h : IsSmoothChar χ) :
    IsSmoothChar (χ.comp (Units.map i.symm.toRingHom.toMonoidHom)) :=
  IsOpen.preimage (f := Units.map i.symm.toRingHom.toMonoidHom) (Continuous.units_map _ hi') h

private theorem plainTor_of_iso (i : k ≃+* k') (hi : Continuous i) (hi' : Continuous i.symm) {n : ℕ} {V W : Type}
    [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]
    {ρ : Representation ℂ (GL (Fin n) k) V} {ρ' : Representation ℂ (GL (Fin n) k') W}
    (hs : IsSmooth ρ) (hr : ρ.IsIrreducible) (hs' : IsSmooth ρ') (hr' : ρ'.IsIrreducible)
    (e : V ≃ₗ[ℂ] W) (he : ∀ g x, e (ρ g x) = ρ' (GeneralLinearGroup.map i.toRingHom g) (e x))
    (h : GlobalTheory.RoadU.PlainTor (IrrGL.of ρ hs hr)) : GlobalTheory.RoadU.PlainTor (IrrGL.of ρ' hs' hr') := by
  obtain ⟨s, hS, h1, hU⟩ := h
  have hρ : HasSupport ρ s := hS.of_equiv (IrrGL.equivOf ρ hs hr).symm
  have hg : ∀ g : GL (Fin n) k',
      GeneralLinearGroup.map i.toRingHom (GeneralLinearGroup.map i.symm.toRingHom g) = g := fun g =>
    Units.ext (Matrix.ext fun _ _ => i.apply_symm_apply _)
  let φ : Representation.Equiv (ρ.comp (GeneralLinearGroup.map (n := Fin n) i.symm.toRingHom)) ρ' :=
    GlobalTheory.LocGL.equivOfBijective ⟨e.toLinearMap, fun g => LinearMap.ext fun x => by
      rw [LinearMap.comp_apply, LinearMap.comp_apply]
      change e (ρ (GeneralLinearGroup.map i.symm.toRingHom g) x) = ρ' g (e x)
      rw [he, hg]⟩ e.bijective
  have h3 := (GlobalTheory.SuppIne.hasSupport_comp i hi hi' hρ).of_equiv φ
  refine ⟨s.map (GlobalTheory.SuppIne.trGL i hi'), h3.of_equiv (IrrGL.equivOf ρ' hs' hr'), ?_, ?_⟩
  · intro y hy
    obtain ⟨z, hz, rfl⟩ := Multiset.mem_map.1 hy
    exact h1 z hz
  · intro y hy z hz heq
    obtain ⟨y0, hy0, rfl⟩ := Multiset.mem_map.1 hy
    obtain ⟨z0, hz0, rfl⟩ := Multiset.mem_map.1 hz
    obtain ⟨χ, hχ, rfl⟩ := GlobalTheory.RoadU.PlainChars.exists_eq_ofChar y0 (h1 y0 hy0)
    obtain ⟨ψ, hψ, rfl⟩ := GlobalTheory.RoadU.PlainChars.exists_eq_ofChar z0 (h1 z0 hz0)
    rw [GlobalTheory.DegOneChar.trGL_ofChar i hi' χ hχ (smooth_comp i hi' hχ),
      GlobalTheory.DegOneChar.trGL_ofChar i hi' ψ hψ (smooth_comp i hi' hψ), IrrGL.nu, IrrGL.tw_ofChar,
      IrrGL.ofChar_inj] at heq
    refine hU _ hy0 _ hz0 ?_
    rw [IrrGL.nu, IrrGL.tw_ofChar, IrrGL.ofChar_inj]
    refine MonoidHom.ext fun t => ?_
    have h4 := DFunLike.congr_fun heq (Units.map i.toRingHom.toMonoidHom t)
    have h5 : Units.map i.symm.toRingHom.toMonoidHom (Units.map i.toRingHom.toMonoidHom t) = t :=
      Units.ext (i.symm_apply_apply _)
    rw [MonoidHom.mul_apply, MonoidHom.comp_apply, MonoidHom.comp_apply, h5,
      GlobalTheory.LocalFieldIso.absPow_map i hi] at h4
    exact h4

end Transport

section Fixed

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E]

private theorem integers_symm {v : HeightOneSpectrum (𝓞 F)} {w : HeightOneSpectrum (𝓞 E)}
    (i : v.adicCompletion F ≃+* w.adicCompletion E) (hi' : Continuous i.symm) {y : w.adicCompletion E}
    (hy : y ∈ w.adicCompletionIntegers E) : i.symm y ∈ v.adicCompletionIntegers F := by
  haveI : (Valued.v : Valuation (v.adicCompletion F) (WithZero (Multiplicative ℤ))).Compatible :=
    Valuation.Compatible.ofValuation _
  haveI : (Valued.v : Valuation (w.adicCompletion E) (WithZero (Multiplicative ℤ))).Compatible :=
    Valuation.Compatible.ofValuation _
  have hy' : Valued.v y ≤ 1 := hy
  change Valued.v (i.symm y) ≤ 1
  rw [← (ValuativeRel.isEquiv (ValuativeRel.valuation _) Valued.v).le_one_iff_le_one] at hy' ⊢
  exact (GlobalTheory.LocalFieldIso.valuation_map_le_one_iff i.symm hi' y).2 hy'

private theorem hasFixed_of_iso {v : HeightOneSpectrum (𝓞 F)} {w : HeightOneSpectrum (𝓞 E)}
    (i : v.adicCompletion F ≃+* w.adicCompletion E) (hi' : Continuous i.symm) {n : ℕ} {V W : Type}
    [AddCommGroup V] [Module ℂ V] [AddCommGroup W] [Module ℂ W]
    {ρ : Representation ℂ (GL (Fin n) (v.adicCompletion F)) V}
    {ρ' : Representation ℂ (GL (Fin n) (w.adicCompletion E)) W}
    (e : V ≃ₗ[ℂ] W) (he : ∀ g x, e (ρ g x) = ρ' (GeneralLinearGroup.map i.toRingHom g) (e x))
    (h : HasFixed ρ (GlobalTheory.LFun.KGL v (n := n))) : HasFixed ρ' (GlobalTheory.LFun.KGL w (n := n)) := by
  obtain ⟨x, h0, hx⟩ := h
  refine ⟨e x, (map_ne_zero_iff e e.injective).2 h0, fun u hu => ?_⟩
  obtain ⟨h1, h2⟩ := GlobalTheory.AdelicU.mem_GLint_iff.1 hu
  have hm : GeneralLinearGroup.map (n := Fin n) i.symm.toRingHom u ∈ GlobalTheory.LFun.KGL v (n := n) := by
    refine GlobalTheory.AdelicU.mem_GLint_iff.2 ⟨fun a b => integers_symm i hi' (h1 a b), fun a b => ?_⟩
    rw [← map_inv]
    exact integers_symm i hi' (h2 a b)
  have hg : GeneralLinearGroup.map i.toRingHom (GeneralLinearGroup.map (n := Fin n) i.symm.toRingHom u) = u :=
    Units.ext (Matrix.ext fun _ _ => i.apply_symm_apply _)
  have := he (GeneralLinearGroup.map (n := Fin n) i.symm.toRingHom u) x
  rw [hx _ hm, hg] at this
  exact this.symm

end Fixed

end UpperTheory.V.Z.Win.SplitTorusFixedPoints

open UpperTheory.V.Z.Win.SplitTorusFixedPoints GlobalTheory.CuspRep.LocEx Matrix in
open GlobalTheory.RealGal.LocCompRProof (orb orb_comm orb_act annPart exists_type_of_range) in
theorem UpperTheory.V.Z.Win.splitTr :
    SplitTr := by
  intro F E _ _ _ _ _ _ _ n _ π P hBC v w i hi
  have hReal : ∃ σ, π.IsLocComp v σ ∧ LocIsotypic π.finPart v σ := by
    have exists_type {K V : Type} [Group K] [AddCommGroup V] [Module ℂ V]
        (κ : Representation ℂ K V) (φ : V)
        (hφ : FiniteDimensional ℂ (Submodule.span ℂ (Set.range fun k => κ k φ))) :
        ∃ (d : ℕ) (ξ : K →* Matrix (Fin d) (Fin d) ℂ), ∀ x ∈ annPart κ φ, ∃ f : (Fin d → ℂ) →ₗ[ℂ] V,
          (∀ k v, f (ξ k *ᵥ v) = κ k (f v)) ∧ x ∈ LinearMap.range f ∧ ∀ v, ∃ c, f v = orb κ x c := by
      have hO : ∀ k, ∀ y ∈ LinearMap.range (orb κ φ), κ k y ∈ LinearMap.range (orb κ φ) := by
        rintro k _ ⟨c, rfl⟩
        exact ⟨_, orb_act κ φ k c⟩
      have : FiniteDimensional ℂ (LinearMap.range (orb κ φ)) := by
        change FiniteDimensional ℂ (LinearMap.range (Finsupp.linearCombination ℂ fun k => κ k φ))
        rwa [Finsupp.range_linearCombination]
      exact exists_type_of_range κ φ hO

    have smooth_fin (π : TR.CuspSub F n) : IsSmooth π.finPart := fun v => by
      convert (π.cusp v.1 v.2).1.level using 1
      ext k
      exact Subtype.ext_iff

    have smooth_loc (π : TR.CuspSub F n) (w : HeightOneSpectrum (𝓞 F)) : IsSmooth (π.locRep w) := fun v =>
      (smooth_fin π v).preimage (GlobalTheory.CuspRep.CuspSub.continuous_locGL w)

    have cpt_fin (π : TR.CuspSub F n) (k : TR.Kinf F n) (g : GL (Fin n) (Af F)) (y : π.V) :
        π.op (.cpt k) (π.finPart g y) = π.finPart g (π.op (.cpt k) y) := by
      refine Subtype.ext ?_
      change (TR.rt F n (TR.infGL F n (Unitary.toUnits k)) * TR.rt F n (finGL F n g)) y.1 =
        (TR.rt F n (finGL F n g) * TR.rt F n (TR.infGL F n (Unitary.toUnits k))) y.1
      rw [← map_mul, ← map_mul, TR.infGL_comm]

    have fin_loc (π : TR.CuspSub F n) (w : HeightOneSpectrum (𝓞 F)) {k : GL (Fin n) (Af F)}
        (hk : GeneralLinearGroup.map (pLoc F w) k = 1) (g : GL (Fin n) (w.adicCompletion F)) (y : π.V) :
        π.finPart k (π.locRep w g y) = π.locRep w g (π.finPart k y) := by
      simp only [TR.CuspSub.locRep, MonoidHom.comp_apply]
      rw [← mul_apply_eq_comp, ← mul_apply_eq_comp, ← map_mul, ← map_mul, GlobalTheory.CuspRep.LocUniq.comm_locGL w hk]

    have bot_or_top (π : TR.CuspSub F n) (w : HeightOneSpectrum (𝓞 F)) (W : Submodule ℂ π.V)
        (h1 : ∀ g, ∀ x ∈ W, π.locRep w g x ∈ W)
        (h2 : ∀ T : Module.End ℂ π.V, (∀ g x, T (π.locRep w g x) = π.locRep w g (T x)) → ∀ x ∈ W, T x ∈ W) :
        W = ⊥ ∨ W = ⊤ := by
      have hi := Submodule.map_injective_of_injective π.V.injective_subtype
      have hop : ∀ o, ∀ x ∈ W, π.op o x ∈ W := fun o x hx => by
        cases o with
        | fin k =>
          have h3 := h1 (GeneralLinearGroup.map (pLoc F w) k) _ (h2
            (π.finPart ((locGL F n w (GeneralLinearGroup.map (pLoc F w) k))⁻¹ * k))
            (fin_loc π w (map_pLoc_inv_mul w k)) x hx)
          rwa [TR.CuspSub.locRep, MonoidHom.comp_apply, ← mul_apply_eq_comp, ← map_mul, mul_inv_cancel_left] at h3
        | cpt k => exact h2 _ (fun g y => cpt_fin π k _ y) x hx
        | lie X => exact h2 _ (fun g y => Subtype.ext (LinearMap.congr_fun (TR.lie_rt_fin X (locGL F n w g)) y.1)) x hx
      rcases π.irred (W.map π.V.subtype) (Submodule.map_subtype_le _ _) (by
        rintro o _ ⟨x, hx, rfl⟩
        exact ⟨_, hop o x hx, rfl⟩) with h | h
      · exact Or.inl (hi (h.trans (Submodule.map_bot _).symm))
      · exact Or.inr (hi (h.trans (Submodule.map_subtype_top _).symm))

    have isotypic (π : TR.CuspSub F n) (w : HeightOneSpectrum (𝓞 F)) (σ : SmIrr (GL (Fin n) (w.adicCompletion F)))
        (h : π.IsLocComp w σ) : LocIsotypic π.finPart w σ := by
      refine ⟨Submodule.nontrivial_iff_ne_bot.2 π.ne_bot, ?_⟩
      refine (bot_or_top π w _ (fun g x hx => ?_) (fun T hT x hx => ?_)).resolve_left fun e => ?_
      · refine Submodule.mem_comap.1 ((iSup_le (a := Submodule.comap (π.locRep w g) _) fun f => ?_) hx)
        rintro _ ⟨v, rfl⟩
        exact Submodule.mem_iSup_of_mem f ⟨σ.ρ g v, f.2 g v⟩
      · refine Submodule.mem_comap.1 ((iSup_le (a := Submodule.comap T _) fun f => ?_) hx)
        rintro _ ⟨v, rfl⟩
        exact Submodule.mem_iSup_of_mem ⟨T ∘ₗ f.1, fun g v => by
          rw [LinearMap.comp_apply, f.2]; exact hT g _⟩ ⟨v, rfl⟩
      · obtain ⟨f, h0, hf⟩ := h
        exact h0 (LinearMap.range_eq_bot.1 ((iSup_eq_bot.1 e) ⟨f, hf⟩))

    let cptPart (π : TR.CuspSub F n) : Representation ℂ (TR.Kinf F n) π.V :=
      sub (TR.cptRep F n) π.V fun k => π.stable (.cpt k)

    have exists_comp : ∃ σ, π.IsLocComp v σ := by
      let w := v
      obtain ⟨φ₀, hφ, h0⟩ := (Submodule.ne_bot_iff _).1 π.ne_bot
      set φ : π.V := ⟨φ₀, hφ⟩
      have h0' : φ ≠ 0 := fun e => h0 (congrArg Subtype.val e)
      set L := stab π.finPart φ
      have hL : IsOpen (L : Set (GL (Fin n) (Af F))) := smooth_fin π _
      obtain ⟨K, ho, hc, hK⟩ := exists_compact_open w _ hL
      have hfd : FiniteDimensional ℂ (Submodule.span ℂ (Set.range fun k => cptPart π k φ)) := by
        have := (π.cusp φ₀ hφ).1.kfin
        refine FiniteDimensional.of_injective ((π.V.subtype ∘ₗ Submodule.subtype _).codRestrict
          (Submodule.span ℂ (Set.range fun k => TR.cptRep F n k φ₀)) fun v => ?_)
          fun v v' e => Subtype.ext (Subtype.ext (by have e' := congrArg Subtype.val e; exact e'))
        refine Submodule.mem_comap.1 ((Submodule.span_le (p := Submodule.comap π.V.subtype _)).2 ?_ v.2)
        rintro _ ⟨k, rfl⟩
        exact Submodule.subset_span ⟨k, rfl⟩
      obtain ⟨d, ξ, hξ⟩ := exists_type (cptPart π) φ hfd
      have hcomm : ∀ g k x, π.finPart g (cptPart π k x) = cptPart π k (π.finPart g x) := fun g k x => (cpt_fin π k g x).symm
      let U : Submodule ℂ π.V := annPart (cptPart π) φ ⊓
        fixed π.finPart (L ⊓ (GeneralLinearGroup.map (n := Fin n) (pLoc F w)).ker)
      obtain ⟨σ, hσ, -⟩ := exists_irred (smooth_loc π w) ho (fun W hW e => by
          rcases bot_or_top π w (nullPart (π.locRep w) K) (fun g x hx => nullPart_act _ K g hx)
            (fun T hT x hx => nullPart_comm _ K T hT hx) with h2 | h2
          · exact le_bot_iff.1 (h2 ▸ le_nullPart (smooth_loc π w) hc W hW e)
          · exact absurd (eq_zero_of_mem_nullPart (smooth_loc π w) hc (mem_fix.2 hK) (h2 ▸ Submodule.mem_top)) h0')
        U (fun g x hx => ⟨fun c hc => by
            rw [TR.CuspSub.locRep, MonoidHom.comp_apply, orb_comm _ _ (hcomm _), hx.1 c hc, map_zero],
          mem_fix.2 fun k hk => by rw [fin_loc π w hk.2, mem_fix.1 hx.2 k hk]⟩)
        ((Submodule.ne_bot_iff _).2 ⟨φ, ⟨fun _ hc => hc, mem_fix.2 fun k hk => hk.1⟩, h0'⟩) (fun K' hK' => by
          obtain ⟨W, hW, hWf⟩ := admissibleReal F n π (L ⊓ (K' ⊓ L.comap (locGL F n w)).comap (GeneralLinearGroup.map (pLoc F w)))
            (hL.inter ((hK'.inter (hL.preimage (GlobalTheory.CuspRep.CuspSub.continuous_locGL w))).preimage
              (continuous_map_pLoc w))) d ξ
          refine Submodule.finiteDimensional_of_le (S₂ := W) fun x hx => ?_
          obtain ⟨f, hf, hx1, hf2⟩ := hξ x hx.1.1
          refine hWf f hf (fun k hk v => ?_) hx1
          have h1 := mem_fix.1 hx.1.2 _ ⟨L.mul_mem (L.inv_mem hk.2.2) hk.1, map_pLoc_inv_mul w k⟩
          have h2 := mem_fix.1 hx.2 _ hk.2.1
          have h3 : π.finPart k x = x := by
            rw [← mul_inv_cancel_left (locGL F n w (GeneralLinearGroup.map (pLoc F w) k)) k, map_mul,
              mul_apply_eq_comp, h1]
            exact h2
          obtain ⟨c, hc⟩ := hf2 v
          rw [hc, ← orb_comm _ _ (hcomm k), h3])
      exact ⟨σ, hσ⟩
    obtain ⟨σ, hσ⟩ := exists_comp
    exact ⟨σ, hσ, isotypic π v σ hσ⟩
  obtain ⟨σ, hσ, hIso⟩ := hReal
  obtain ⟨σ', hσ', -⟩ := GlobalTheory.CuspRep.LocEx.exists_isLocComp PositivityTheory.Rg.HF.GL.automorphicFormsFiniteGL E n P w
  have hi' : Continuous i.symm := GlobalTheory.LocalFieldIso.continuous_symm i hi.1
  have hsplit := hBC.split v w i hi.1 hi.2
  refine ⟨⟨fun h τ' hτ' => ?_, fun h τ hτ => ?_⟩, fun ⟨B, hB⟩ => ?_⟩
  · obtain ⟨e, he⟩ := hsplit σ τ' hσ hτ'
    exact plainTor_of_iso i hi.1 hi' _ _ _ _ e he (h σ hσ)
  · obtain ⟨e, he⟩ := hsplit τ σ' hτ hσ'
    refine plainTor_of_iso i.symm hi' hi.1 _ _ _ _ e.symm (fun g x => ?_) (h σ' hσ')
    apply e.injective
    rw [LinearEquiv.apply_symm_apply, he, LinearEquiv.apply_symm_apply]
    congr 2
    exact (Units.ext (Matrix.ext fun _ _ => (i.apply_symm_apply _).symm) :
      g = Matrix.GeneralLinearGroup.map i.toRingHom (Matrix.GeneralLinearGroup.map i.symm.toRingHom g))
  · obtain ⟨e, he⟩ := hsplit σ σ' hσ hσ'
    obtain ⟨x, hx, hx0⟩ := (Submodule.ne_bot_iff _).1 hB.1
    have hfixed : HasFixed σ.ρ (GlobalTheory.LFun.KGL v (n := n)) :=
      LocSph.exists_fixed_of_mem_iSup (π.locRep v) σ.ρ σ.irred
        (fun f : {f : σ.V →ₗ[ℂ] π.V // ∀ g y, f (σ.ρ g y) = π.locRep v g (f y)} => f.1)
        (fun f => f.2) _ x hx0 (fun k hk => GlobalTheory.LGrp.mem_fixed.1 hx k hk)
        (hIso.2 ▸ Submodule.mem_top)
    obtain ⟨y, hy0, hy⟩ := hasFixed_of_iso i hi' e he hfixed
    obtain ⟨B', hB'⟩ := GlobalTheory.SatInd.exists_hasSatGL_of_isIrreducible σ'.smooth σ'.irred
      ((Submodule.ne_bot_iff _).2 ⟨y, GlobalTheory.LGrp.mem_fixed.2 hy, hy0⟩)
    exact ⟨B', (CG.hasSat_mk _ _ _).2 (GlobalTheory.HeightCounting.Blocks.hasSatGL_locRep hσ' hB')⟩
