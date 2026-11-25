module

import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ArchimedeanOrbitMeasures.EqOneOfToHAFin
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.MassComputations.NVolAllOf
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

open MeasureTheory NumberField Set
open Formalism.BasicNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.Measures Formalism.L2.SG.HidaSetting Formalism.L2.SG.AdBridge
  Formalism.L2.SG.TypedSets
open scoped TensorProduct

namespace MassDataMassesW

theorem prod_rect_of_ne_zero {α β : Type*} [MeasurableSpace α] [MeasurableSpace β] (μ : Measure α)
    (ν : Measure β) (h0 : μ.prod ν ≠ 0) {s : Set α} {t : Set β} (hs : MeasurableSet s)
    (ht : MeasurableSet t) : μ.prod ν (s ×ˢ t) = μ s * ν t := by
  have hν : SFinite ν := by
    by_contra hν
    exact h0 (Measure.prod_eq_zero_of_not_sfinite hν)
  letI : SFinite ν := hν
  exact Measure.prod_prod s t

theorem toHA_fin_one {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (s : X.B.I.Ginf) :
    (splitA X.B.I.cm.sig X.B.I.J (toHA X.B.I hb (s, 1))).2 = 1 := by
  apply PI.AprimeInfU.toHA_fin_one

section Split

variable {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I)

theorem eq_one_of_toHA_fin {D : D7} (X : HidaSetting D) (hb : AdBridgeIso X.B.I) (p : X.B.I.GA)
    (h : (splitA X.B.I.cm.sig X.B.I.J (toHA X.B.I hb p)).2 = 1) : p.2 = 1 := by
  apply PI.AprimeInfU.eq_one_of_toHA_fin <;> assumption

theorem split_unitary_infinite_one (s : X.B.I.Ginf) :
    splitA X.B.I.cm.sig X.B.I.J (toHA X.B.I hb (s, 1)) = (X.toInf hb s, 1) :=
  Prod.ext rfl (toHA_fin_one X hb s)

theorem toInf_injective (hS : SplitIso) : Function.Injective (X.toInf hb) := by
  intro s t hst
  obtain ⟨e, he⟩ := hS X.B.I.cm.sig X.B.I.J
  have h1 : e (toHA X.B.I hb (s, 1)) = e (toHA X.B.I hb (t, 1)) := by
    rw [he, split_unitary_infinite_one, split_unitary_infinite_one, hst]
  have h2 := (toHA X.B.I hb).injective (e.injective h1)
  exact congrArg Prod.fst h2

theorem continuous_toInf_of (hS : SplitIso) : Continuous (X.toInf hb) := by
  obtain ⟨e, he⟩ := hS X.B.I.cm.sig X.B.I.J
  have hc : Continuous (splitA X.B.I.cm.sig X.B.I.J) := by rw [← he]; exact e.continuous_toFun
  exact continuous_fst.comp (hc.comp ((toHA X.B.I hb).continuous_toFun.comp
    (continuous_id.prodMk continuous_const)))

theorem measurable_toInf_of (hS : SplitIso) : Measurable (X.toInf hb) := by
  haveI : BorelSpace (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  exact (continuous_toInf_of X hb hS).measurable

theorem measurableSet_image_toInf (hS : SplitIso) {FdN : Set X.B.I.Ginf} (hF : MeasurableSet FdN) :
    MeasurableSet (X.toInf hb '' FdN) := by
  obtain ⟨e, he⟩ := hS X.B.I.cm.sig X.B.I.J
  let Φ : X.B.I.GA ≃ₜ* (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J × HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J) :=
    (toHA X.B.I hb).trans e
  have hΦ : ∀ s, Φ (s, 1) = (X.toInf hb s, 1) := fun s => by
    show e (toHA X.B.I hb (s, 1)) = _
    rw [he]
    exact split_unitary_infinite_one X hb s
  let ψ : HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J → X.B.I.GA := fun y => Φ.symm (y, 1)
  have hψc : Continuous ψ := Φ.symm.continuous_toFun.comp (continuous_id.prodMk continuous_const)
  have hset : X.toInf hb '' FdN = (fun y => (ψ y).1) ⁻¹' FdN := by
    ext y
    constructor
    · rintro ⟨s, hs, rfl⟩
      show (Φ.symm (X.toInf hb s, 1)).1 ∈ FdN
      rw [← hΦ, Φ.symm_apply_apply]
      exact hs
    · intro h1
      have h2 : (ψ y).2 = 1 := by
        apply eq_one_of_toHA_fin X hb
        have h3 : e (toHA X.B.I hb (ψ y)) = (y, 1) := Φ.apply_symm_apply _
        rw [he] at h3
        rw [h3]
      refine ⟨(ψ y).1, h1, ?_⟩
      have hp : ψ y = ((ψ y).1, 1) := Prod.ext rfl h2
      have := congrArg Φ hp
      rw [show Φ (ψ y) = (y, 1) from Φ.apply_symm_apply _, hΦ] at this
      exact (congrArg Prod.fst this).symm
  haveI : BorelSpace (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  rw [hset]
  exact (continuous_fst.comp hψc).measurable hF

end Split

theorem elliptic_centralizer_quotient_compact (hKo : KCompactOpen) : N4 := by
  intro hS D X hb u FdN hT hTie hF
  haveI : BorelSpace (HA (Ainf X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  haveI : BorelSpace (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  haveI : BorelSpace (HA (AF X.B.I.F) X.B.I.cm.sig X.B.I.J) := ⟨rfl⟩
  obtain ⟨e, he⟩ := hS X.B.I.cm.sig X.B.I.J
  have hc : Continuous (splitA X.B.I.cm.sig X.B.I.J) := by rw [← he]; exact e.continuous_toFun
  have hm : Measurable (splitA X.B.I.cm.sig X.B.I.J) :=
    (continuous_fst.comp hc).measurable.prodMk (continuous_snd.comp hc).measurable
  have hTm : MeasurableSet (X.toInf hb '' FdN) := measurableSet_image_toInf X hb hS hF.1
  have hKm : MeasurableSet (KX X : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J)) := (hKo X).2.measurableSet
  have hRm : MeasurableSet ((X.toInf hb '' FdN) ×ˢ (KX X : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J))) :=
    hTm.prod hKm
  have hFd : FdA X hb u FdN = Subtype.val ⁻¹' (splitA X.B.I.cm.sig X.B.I.J ⁻¹'
      ((X.toInf hb '' FdN) ×ˢ (KX X : Set (HA (Af X.B.I.F) X.B.I.cm.sig X.B.I.J)))) := by
    ext n
    simp only [FdA, Set.mem_setOf_eq, Set.mem_preimage, Set.mem_prod, Set.mem_image]
    constructor
    · rintro ⟨s, hs, h1, h2⟩
      exact ⟨⟨s, hs, h1.symm⟩, h2⟩
    · rintro ⟨⟨s, hs, h1⟩, h2⟩
      exact ⟨s, hs, h1.symm, h2⟩
  have hN := hT.2.2.2.2.2.2.2.2.2.1
  have hHaar : (X.measW u).μN.IsHaarMeasure := hT.2.2.2.1
  have h0 : (amb (X.measW u).μNinf).prod (amb (X.measW u).μNf) ≠ 0 := by
    rw [← hN]
    intro h
    have h' := congrArg (fun μ => μ Set.univ) h
    simp only [Measure.map_apply hm MeasurableSet.univ, Set.preimage_univ,
      Measure.map_apply measurable_subtype_coe MeasurableSet.univ, Measure.coe_zero, Pi.zero_apply] at h'
    exact (isOpen_univ.measure_ne_zero (X.measW u).μN Set.univ_nonempty) h'
  rw [hFd]
  erw [← Measure.map_apply measurable_subtype_coe (hm hRm)]
  rw [← Measure.map_apply hm hRm]
  change ((amb (X.measW u).μN).map (splitA X.B.I.cm.sig X.B.I.J)) _ = _
  rw [hN, prod_rect_of_ne_zero _ _ h0 hTm hKm, (hTie.2.2.2 u).1,
    Measure.map_apply (measurable_toInf_of X hb hS) hTm, Set.preimage_image_eq _ (toInf_injective X hb hS),
    Measure.map_apply measurable_subtype_coe hKm]

end MassDataMassesW
