module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.HeckeAdjoints.HasPairingOfHerm
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.SatakeParameterSphericalProductSpehQuotients
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.EquivOfISupRange
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsFixedOfMemISup
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIsLocCompAndIsLocLoc
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPolarizedTwistAbsPow
public import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.IsGalRepOfOfIso
public import Development.AutomorphicArithmetic.AutomorphicVarieties.AutomorphicForms.TemperedLocalComponents.ExistsContRep
import GroundTheory.GlobalFields.LocalFieldAtPlace
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
import PositivityTheory.AutomorphicForms.PublishedInputs.RealGaloisRepresentations.IwahoriSphericalTransfer.OrbitFiniteType

@[expose] public section

open NumberField IsDedekindDomain GlobalTheory.CuspRep GlobalTheory.LFun GlobalTheory.PRep UpperTheory.V.Af

private theorem satLocFree : UpperTheory.V.Af.SatLoc := by
  intro F _ _ n w σ
  have hex : GlobalTheory.LGrp.IsSpherical σ.ρ (KGL w (n := n)) → ∃ B, HasSatGL w σ.ρ B :=
    GlobalTheory.SatInd.exists_hasSatGL_of_isIrreducible σ.smooth σ.irred
  refine ⟨fun ⟨v, h0, hv⟩ => hex ((Submodule.ne_bot_iff _).2 ⟨v, GlobalTheory.LGrp.mem_fixed.2 hv, h0⟩), ?_⟩
  intro V _ _ ρ ⟨hV, htop⟩ B
  have up : ∀ B, HasSatGL w σ.ρ B → HasSatGL w (ρ.comp (locGL F n w)) B := by
    intro B h
    constructor
    · obtain ⟨f, h0⟩ : ∃ f : {f : σ.V →ₗ[ℂ] V // ∀ g v, f (σ.ρ g v) = ρ (locGL F n w g) (f v)}, f.1 ≠ 0 := by
        by_contra hc
        push Not at hc
        refine top_ne_bot (htop.symm.trans (eq_bot_iff.2 (iSup_le fun f => ?_)))
        rw [hc f, LinearMap.range_zero]
      obtain ⟨x, hx⟩ := h.exists_vec
      have hi : LinearMap.ker f.1 = ⊥ := ((isIrreducible_iff σ.ρ).1 σ.irred).2 _ (fun g v hv => by
        rw [LinearMap.mem_ker] at hv ⊢
        rw [f.2, hv, map_zero]) |>.resolve_right fun e => h0 (LinearMap.ker_eq_top.1 e)
      have h1 := hx.map (ρ' := ρ.comp (locGL F n w)) f.1 f.2
        ((map_ne_zero_iff f.1 (LinearMap.ker_eq_bot.1 hi)).2 hx.1)
      exact (Submodule.ne_bot_iff _).2 ⟨_, h1.2.1, h1.1⟩
    · intro x hx h0
      exact GlobalTheory.HeightCounting.Blocks.isSatVecGL_of_mem_iSup (ρ := ρ.comp (locGL F n w)) σ.irred h
        (fun f : {f : σ.V →ₗ[ℂ] V // ∀ g v, f (σ.ρ g v) = ρ (locGL F n w g) (f v)} => f.1) (fun f => f.2)
        (htop ▸ Submodule.mem_top) hx h0
  refine ⟨fun h => ?_, up B⟩
  obtain ⟨x, hx, hx0⟩ := (Submodule.ne_bot_iff _).1 h.1
  obtain ⟨y, hy0, hy⟩ := LocSph.exists_fixed_of_mem_iSup (ρ.comp (locGL F n w)) σ.ρ σ.irred
    (fun f : {f : σ.V →ₗ[ℂ] V // ∀ g v, f (σ.ρ g v) = ρ (locGL F n w g) (f v)} => f.1) (fun f => f.2)
    (KGL w (n := n) : Set _) x hx0 (fun k hk => GlobalTheory.LGrp.mem_fixed.1 hx k hk) (htop ▸ Submodule.mem_top)
  obtain ⟨B', hB'⟩ := hex ((Submodule.ne_bot_iff _).2 ⟨y, GlobalTheory.LGrp.mem_fixed.2 hy, hy0⟩)
  exact (up B' hB').unique h ▸ hB'

open Formalism.L2.Host Matrix GlobalTheory.CuspRep.LocEx in
open GlobalTheory.RealGal.LocCompRProof (orb orb_comm orb_act annPart exists_type_of_range) in
theorem UpperTheory.V.Af.Gk.satAE :
    UpperTheory.V.Af.Gk.SatAE := by
  intro F _ _ _ n π
  refine ExLib.eventually_sat satLocFree π.finPart π.isSmooth_finPart fun w => ?_
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
      rw [Finsupp.range_linearCombination]
      exact hφ
    exact exists_type_of_range κ φ hO

  have hSmooth : IsSmooth (π.locRep w) := fun v =>
    (π.isSmooth_finPart v).preimage (GlobalTheory.CuspRep.CuspSub.continuous_locGL w)

  have cpt_fin (k : TR.Kinf F n) (g : GL (Fin n) (Af F)) (y : π.V) :
      π.op (.cpt k) (π.finPart g y) = π.finPart g (π.op (.cpt k) y) := by
    refine Subtype.ext ?_
    change (TR.rt F n (TR.infGL F n (Unitary.toUnits k)) * TR.rt F n (finGL F n g)) y.1 =
      (TR.rt F n (finGL F n g) * TR.rt F n (TR.infGL F n (Unitary.toUnits k))) y.1
    rw [← map_mul, ← map_mul, TR.infGL_comm]

  have fin_loc {k : GL (Fin n) (Af F)}
      (hk : GeneralLinearGroup.map (pLoc F w) k = 1) (g : GL (Fin n) (w.adicCompletion F)) (y : π.V) :
      π.finPart k (π.locRep w g y) = π.locRep w g (π.finPart k y) := by
    simp only [TR.CuspSub.locRep, MonoidHom.comp_apply]
    rw [← mul_apply_eq_comp, ← mul_apply_eq_comp, ← map_mul, ← map_mul,
      GlobalTheory.CuspRep.LocUniq.comm_locGL w hk]

  have bot_or_top (W : Submodule ℂ π.V)
      (h1 : ∀ g, ∀ x ∈ W, π.locRep w g x ∈ W)
      (h2 : ∀ T : Module.End ℂ π.V, (∀ g x, T (π.locRep w g x) = π.locRep w g (T x)) → ∀ x ∈ W, T x ∈ W) :
      W = ⊥ ∨ W = ⊤ := by
    have hi := Submodule.map_injective_of_injective π.V.injective_subtype
    have hop : ∀ o, ∀ x ∈ W, π.op o x ∈ W := fun o x hx => by
      cases o with
      | fin k =>
        have h3 := h1 (GeneralLinearGroup.map (pLoc F w) k) _ (h2
          (π.finPart ((locGL F n w (GeneralLinearGroup.map (pLoc F w) k))⁻¹ * k))
          (fin_loc (map_pLoc_inv_mul w k)) x hx)
        rwa [TR.CuspSub.locRep, MonoidHom.comp_apply, ← mul_apply_eq_comp, ← map_mul, mul_inv_cancel_left] at h3
      | cpt k => exact h2 _ (fun g y => cpt_fin k _ y) x hx
      | lie X => exact h2 _ (fun g y => Subtype.ext (LinearMap.congr_fun (TR.lie_rt_fin X (locGL F n w g)) y.1)) x hx
    rcases π.irred (W.map π.V.subtype) (Submodule.map_subtype_le _ _) (by
      rintro o _ ⟨x, hx, rfl⟩
      exact ⟨_, hop o x hx, rfl⟩) with h | h
    · exact Or.inl (hi (h.trans (Submodule.map_bot _).symm))
    · exact Or.inr (hi (h.trans (Submodule.map_subtype_top _).symm))

  have isotypic (σ : SmIrr (GL (Fin n) (w.adicCompletion F)))
      (h : π.IsLocComp w σ) : LocIsotypic π.finPart w σ := by
    refine ⟨Submodule.nontrivial_iff_ne_bot.2 π.ne_bot, ?_⟩
    refine (bot_or_top _ (fun g x hx => ?_) (fun T hT x hx => ?_)).resolve_left fun e => ?_
    · refine Submodule.mem_comap.1 ((iSup_le (a := Submodule.comap (π.locRep w g) _) fun f => ?_) hx)
      rintro _ ⟨v, rfl⟩
      exact Submodule.mem_iSup_of_mem f ⟨σ.ρ g v, f.2 g v⟩
    · refine Submodule.mem_comap.1 ((iSup_le (a := Submodule.comap T _) fun f => ?_) hx)
      rintro _ ⟨v, rfl⟩
      exact Submodule.mem_iSup_of_mem ⟨T ∘ₗ f.1, fun g v => by
        rw [LinearMap.comp_apply, f.2]; exact hT g _⟩ ⟨v, rfl⟩
    · obtain ⟨f, h0, hf⟩ := h
      exact h0 (LinearMap.range_eq_bot.1 ((iSup_eq_bot.1 e) ⟨f, hf⟩))

  let cptPart : Representation ℂ (TR.Kinf F n) π.V :=
    sub (TR.cptRep F n) π.V fun k => π.stable (.cpt k)

  have exists_comp : ∃ σ, π.IsLocComp w σ := by
    obtain ⟨φ₀, hφ, h0⟩ := (Submodule.ne_bot_iff _).1 π.ne_bot
    set φ : π.V := ⟨φ₀, hφ⟩
    have h0' : φ ≠ 0 := fun e => h0 (congrArg Subtype.val e)
    set L := stab π.finPart φ
    have hL : IsOpen (L : Set (GL (Fin n) (Af F))) := π.isSmooth_finPart _
    obtain ⟨K, ho, hc, hK⟩ := exists_compact_open w _ hL
    have hfd : FiniteDimensional ℂ (Submodule.span ℂ (Set.range fun k => cptPart k φ)) := by
      have := (π.cusp φ₀ hφ).1.kfin
      refine FiniteDimensional.of_injective ((π.V.subtype ∘ₗ Submodule.subtype _).codRestrict
        (Submodule.span ℂ (Set.range fun k => TR.cptRep F n k φ₀)) fun v => ?_)
        fun v v' e => Subtype.ext (Subtype.ext (by have e' := congrArg Subtype.val e; exact e'))
      refine Submodule.mem_comap.1 ((Submodule.span_le (p := Submodule.comap π.V.subtype _)).2 ?_ v.2)
      rintro _ ⟨k, rfl⟩
      exact Submodule.subset_span ⟨k, rfl⟩
    obtain ⟨d, ξ, hξ⟩ := exists_type cptPart φ hfd
    have hcomm : ∀ g k x, π.finPart g (cptPart k x) = cptPart k (π.finPart g x) := fun g k x => (cpt_fin k g x).symm
    let U : Submodule ℂ π.V := annPart cptPart φ ⊓
      fixed π.finPart (L ⊓ (GeneralLinearGroup.map (n := Fin n) (pLoc F w)).ker)
    obtain ⟨σ, hσ, -⟩ := exists_irred hSmooth ho (fun W hW e => by
        rcases bot_or_top (nullPart (π.locRep w) K) (fun g x hx => nullPart_act _ K g hx)
          (fun T hT x hx => nullPart_comm _ K T hT hx) with h2 | h2
        · exact le_bot_iff.1 (h2 ▸ le_nullPart hSmooth hc W hW e)
        · exact absurd (eq_zero_of_mem_nullPart hSmooth hc (mem_fix.2 hK) (h2 ▸ Submodule.mem_top)) h0')
      U (fun g x hx => ⟨fun c hc => by
          rw [TR.CuspSub.locRep, MonoidHom.comp_apply, orb_comm _ _ (hcomm _), hx.1 c hc, map_zero],
        mem_fix.2 fun k hk => by rw [fin_loc hk.2, mem_fix.1 hx.2 k hk]⟩)
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

  exact exists_comp.imp isotypic
