module

public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.OmVBadTOf
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.LatCpt
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.BasIntSmulMem
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.IsCompactSpanRange
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CrossMSmulRight
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.TrOntoHolds
public import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.HRSumSmulRight
import Aesop.Main
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensFibV
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHG
import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHL
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIndep, Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FibPOfDual

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIndep =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIndep", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.OmVBadTOf\nimport Aesop.Main\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.AdelicLocalCompactness.T2SpaceTensorProductFiniteExtension\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.IsTopRingTens\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalMassOrder.LatCpt\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.BasIntSmulMem\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.IsCompactSpanRange\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.DensFibV\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHG\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.StabilizerOrbitVolume.LocDensHL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Connected.Separation\nimport Mathlib.Topology.MetricSpace.Ultra.TotallySeparated\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVd

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain MeasureTheory Topology Filter
  PI.OmLocU
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))

theorem prim_indep {a : ℕ} (X : TupV (E := E) v n a) (hX : IsPrim v Λ X) :
    X ∈ IndepV (E := E) (n := n) v a := by
  show LinearIndependent (Fv F v ⊗[F] E) X
  rw [Fintype.linearIndependent_iff]
  intro c hc i
  obtain ⟨ϖ, hϖ⟩ := unifEx_holds v
  obtain ⟨h0, hπ, -⟩ := unif_spec v ϖ hϖ
  have hm : ∀ m : ℕ, sc (E := E) v (ϖ ^ m)⁻¹ * c i ∈ OEv (E := E) v := by
    intro m
    refine hX.2 (fun j => sc (E := E) v (ϖ ^ m)⁻¹ * c j) ?_ i
    have e : (∑ j, (sc (E := E) v (ϖ ^ m)⁻¹ * c j) • X j) = sc (E := E) v (ϖ ^ m)⁻¹ • ∑ j, c j • X j := by
      rw [Finset.smul_sum]
      refine Finset.sum_congr rfl (fun j _ => ?_)
      rw [mul_smul]
    rw [e, hc, smul_zero]
    exact (latLoc (E := E) v Λ).zero_mem
  by_contra hne
  have hN : {x : Fv F v ⊗[F] E | x ≠ c i} ∈ 𝓝 (0 : Fv F v ⊗[F] E) := isOpen_ne.mem_nhds (Ne.symm hne)
  obtain ⟨k, hk⟩ := PI.VolStabSW.eventually_smul_sub (OEv (E := E) v) (isCompact_oEv v) (fun k => ϖ ^ k) hπ _ hN
  apply hk _ (hm k)
  show ϖ ^ k • (sc (E := E) v (ϖ ^ k)⁻¹ * c i) = c i
  rw [smul_eq_sc, ← mul_assoc, sc_mul, mul_inv_cancel₀ (pow_ne_zero _ h0), sc_one, one_mul]

def FibHensP (a : ℕ) (Y : TupV (E := E) v n a) : Prop :=
  GoodP σ J ψ v Λ a Y → ∀ ϖ : Fv F v, IsUnif v ϖ → ∀ (hσ : ∀ x, σ (σ x) = x)
    (hJ : ∀ i j, σ (J j i) = J i j),
    ∀ y ∈ PrimT v Λ a, PI.VolStabSW.gramH (Fv F v) σ hσ J hJ y -
        PI.VolStabSW.gramH (Fv F v) σ hσ J hJ Y ∈ hN σ v ϖ a 0 →
      ∃ D : TupV (E := E) v n a →+ HermR (Fv F v) σ a,
        (∀ k, (lamN v Λ ϖ a k).map D = hN σ v ϖ a k) ∧
        ∀ k, ∀ Z ∈ lamN v Λ ϖ a 0, ∀ W ∈ lamN v Λ ϖ a k,
          PI.VolStabSW.gramH (Fv F v) σ hσ J hJ (y + Z + W) -
            PI.VolStabSW.gramH (Fv F v) σ hσ J hJ (y + Z) - D W ∈ hN σ v ϖ a (k + 1)

theorem fibP_of (a : ℕ) (Y : TupV (E := E) v n a) (hC : PrimCos σ J ψ v Λ a) (h3 : FibHensP σ J ψ v Λ a Y) :
    FibP σ J ψ v Λ a Y := by
  intro hG hW hH hfib ϖ hϖ
  have hG' := hG
  obtain ⟨hS, hL, hSD, hUn, ha, hP⟩ := hG
  have hσ : ∀ x, σ (σ x) = x := PI.VolStabSW.sigma_invol σ hS.1.2.2.2
  have hJ : ∀ i j, σ (J j i) = J i j := hS.2.1.1
  obtain ⟨h0, hπ, hint⟩ := unif_spec v ϖ hϖ
  have hFG : (latLoc (E := E) v Λ).FG := by
    obtain ⟨L, hLat, rfl⟩ := hL
    exact basLat_fg v L hLat
  have hLo' := LocMassOrdLat.isOpen_latLoc σ J v Λ hSD hFG
  have hLc' := isCompact_latLoc v Λ hL
  have hLam : LamT v Λ a = Set.pi Set.univ fun _ =>
      (latLoc (E := E) v Λ : Set (Fin n → Fv F v ⊗[F] E)) := by
    ext X
    exact ⟨fun h i _ => h i, fun h i => h i trivial⟩
  have hLo : IsOpen (LamT v Λ a) := by
    rw [hLam]
    exact isOpen_set_pi Set.finite_univ fun _ _ => hLo'
  have hLc : IsCompact (LamT v Λ a) := by
    rw [hLam]
    exact isCompact_univ_pi fun _ => hLc'
  obtain ⟨hHo', hHc'⟩ := hermOC_holds v σ a
  have := PI.VolStabSW.secondCountable_Fv F v
  have := PI.VolStabSW.locallyCompact_Fv F v
  have : SecondCountableTopology (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) :=
    inferInstanceAs (SecondCountableTopology (Fin a → Fin a → Fv F v ⊗[F] E))
  have : T2Space (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) :=
    inferInstanceAs (T2Space (Fin a → Fin a → Fv F v ⊗[F] E))
  have : LocallyCompactSpace (Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E)) :=
    inferInstanceAs (LocallyCompactSpace (Fin a → Fin a → Fv F v ⊗[F] E))
  have : SecondCountableTopology (HermR (Fv F v) σ a) :=
    TopologicalSpace.Subtype.secondCountableTopology _
  have hμ : SdW F E σ n J (Fv F v) (psiV F ψ v) a (dX σ J ψ v a) := by
    unfold dX; rw [dite_eq_left hW]; exact hW.choose_spec
  have hν : SdHerm F E σ (Fv F v) (psiV F ψ v) a (dT σ ψ v a) := by
    unfold dT; rw [dite_eq_left hH]; exact hH.choose_spec
  have := hμ.1
  have := hν.1
  have hfibC : IsOm σ J ψ v a (omFam σ J ψ v a) := by
    unfold omFam; rw [dite_eq_left hfib]; exact hfib.choose_spec
  have hTm := PI.VolStabSW.gramR_mem (Fv F v) σ hσ J hJ Y
  have hom : omAt σ J ψ v (gramR (Fv F v) σ J Y) =
      omFam σ J ψ v a (PI.VolStabSW.gramH (Fv F v) σ hσ J hJ Y) := by
    unfold omAt; rw [dite_eq_left hTm]; rfl
  rw [hom]
  set G := PI.VolStabSW.gramH (n := a) (Fv F v) σ hσ J hJ with hGdef
  set T := G Y with hTdef
  set fb := omFam σ J ψ v a with hfb

  have hΛL : lamN v Λ ϖ a 0 ≤ lamS v Λ a := by
    intro x hx
    obtain ⟨p, hp, rfl⟩ := (PI.VolStabSW.mem_smulSub _ _ _).1 hx
    exact lamS_smul v Λ (pow_mem hint _) hp
  have hΛo : ∀ k, IsOpen (lamN v Λ ϖ a k : Set (TupV (E := E) v n a)) := fun k =>
    PI.VolStabSW.isOpen_smulSub _ (pow_ne_zero _ h0) _ hLo
  have hΛc : ∀ k, IsCompact (lamN v Λ ϖ a k : Set (TupV (E := E) v n a)) := fun k =>
    PI.VolStabSW.isCompact_smulSub _ _ hLc
  have hΛa : Antitone (lamN v Λ ϖ a) := by
    intro m k hmk x hx
    simp only [lamN, PI.VolStabSW.mem_smulSub] at hx ⊢
    obtain ⟨p, hp, rfl⟩ := hx
    refine ⟨ϖ ^ (k - m) • p, lamS_smul v Λ (pow_mem hint _) hp, ?_⟩
    rw [smul_smul, ← pow_add]
    congr 2
    omega
  have hHo : ∀ k, IsOpen (hN σ v ϖ a k : Set (HermR (Fv F v) σ a)) := fun k =>
    PI.VolStabSW.isOpen_smulSub _ (pow_ne_zero _ h0) _ hHo'
  have hHc : ∀ k, IsCompact (hN σ v ϖ a k : Set (HermR (Fv F v) σ a)) := fun k =>
    PI.VolStabSW.isCompact_smulSub _ _ hHc'
  have hHb : ∀ N' ∈ 𝓝 (0 : HermR (Fv F v) σ a), ∃ k, (hN σ v ϖ a k : Set (HermR (Fv F v) σ a)) ⊆ N' := by
    intro N hN'
    obtain ⟨k, hk⟩ := PI.VolStabSW.eventually_smul_sub (hermOE σ v a : Set (HermR (Fv F v) σ a))
      hHc' (fun k => ϖ ^ (k + 1)) (hπ.comp (tendsto_add_atTop_nat 1)) N hN'
    refine ⟨k, ?_⟩
    simp only [hN, PI.VolStabSW.coe_smulSub]
    rintro _ ⟨p, hp, rfl⟩
    exact hk p hp

  have hPcos : ∀ y ∈ PrimT v Λ a, ∀ Z ∈ lamN v Λ ϖ a 0, y + Z ∈ PrimT v Λ a := hC hS hL hSD hUn ϖ hϖ
  have hPsub : PrimT v Λ a ⊆ LamT v Λ a := fun x hx => hx.1
  have hPo : IsOpen (PrimT v Λ a) := by
    rw [isOpen_iff_mem_nhds]
    intro y hy
    refine Filter.mem_of_superset (((hΛo 0).preimage (continuous_id.sub continuous_const)).mem_nhds
      (show y - y ∈ (lamN v Λ ϖ a 0 : Set (TupV (E := E) v n a)) by rw [sub_self]; exact zero_mem _)) ?_
    intro x hx
    have := hPcos y hy (x - y) hx
    rwa [show y + (x - y) = x by abel] at this
  have hPcl : IsClosed (PrimT v Λ a) := by
    rw [← isOpen_compl_iff, isOpen_iff_mem_nhds]
    intro y hy
    refine Filter.mem_of_superset (((hΛo 0).preimage (continuous_id.sub continuous_const)).mem_nhds
      (show y - y ∈ (lamN v Λ ϖ a 0 : Set (TupV (E := E) v n a)) by rw [sub_self]; exact zero_mem _)) ?_
    intro x hx hxP
    apply hy
    have := hPcos x hxP (-(x - y)) (neg_mem hx)
    rwa [show x + -(x - y) = y by abel] at this
  have hPc : IsCompact (PrimT v Λ a) := hLc.of_isClosed_subset hPcl hPsub
  have hPU : PrimT v Λ a ⊆ IndepV (E := E) (n := n) v a := fun x hx => prim_indep v Λ x hx
  have e := PI.VolStabSW.fibLatGen_holds _ _ _ (dX σ J ψ v a) (dT σ ψ v a) hμ.1 hν.1
    (gramR (Fv F v) σ J) Subtype.val Subtype.val_injective G
    (PI.VolStabSW.continuous_gramH (Fv F v) σ hσ J hJ) (fun _ => rfl) (IndepV (E := E) (n := n) v a)
    Set.univ fb hfibC T Filter.univ_mem (lamS v Λ a) hLo hLc (lamN v Λ ϖ a) (hN σ v ϖ a) hΛL hΛo hΛc
    hΛa hHo hHc hHb (PrimT v Λ a) hPsub hPcos
    hPo hPcl Set.univ Filter.univ_mem (fun x hx _ => hPU hx) (fun y hy hyT => h3 hG' ϖ hϖ hσ hJ y hy hyT)
  have hA : PrimT v Λ a ∩ G ⁻¹' {z | z - T ∈ hN σ v ϖ a 0} =
      PrimT v Λ a ∩ NearT v σ J ϖ (gramR (Fv F v) σ J Y) := by
    ext x
    simp only [Set.mem_inter_iff, Set.mem_preimage, Set.mem_ofPred_eq]
    rw [mem_uniformizer_hermitian_ideal σ v ϖ h0]
    rfl
  have hHP : (hN σ v ϖ a 0 : Set (HermR (Fv F v) σ a)) = HermP v σ a ϖ := by
    ext z
    exact mem_uniformizer_hermitian_ideal σ v ϖ h0 a z
  rw [hA, hHP] at e
  have hPm : MeasurableSet (PrimT v Λ a) := hPo.measurableSet
  have hind : (PrimT v Λ a).indicator (1 : TupV (E := E) v n a → ℂ) =
      fun x => (((PrimT v Λ a).indicator (1 : TupV (E := E) v n a → ℝ) x : ℝ) : ℂ) := by
    funext x
    by_cases hx : x ∈ PrimT v Λ a <;> simp [Set.indicator, hx]
  rw [hind, integral_complex_ofReal, integral_indicator_one hPm] at e
  have e' := Complex.ofReal_injective e
  set φ : TupV (E := E) v n a → ℝ := (PrimT v Λ a).indicator (fun _ => (1 : ℝ)) with hφdef
  have hφc : Continuous φ :=
    (LocallyConstant.indicator (LocallyConstant.const _ (1 : ℝ)) ⟨hPcl, hPo⟩).isLocallyConstant.continuous
  have hφs : HasCompactSupport φ :=
    HasCompactSupport.intro' hPc hPcl fun x hx => Set.indicator_of_notMem hx _
  have hφU : tsupport φ ⊆ IndepV (E := E) (n := n) v a :=
    (closure_minimal Set.support_indicator_subset hPcl).trans hPU
  obtain ⟨hint', -⟩ := hfibC.2.2 φ hφc hφs hφU
  have hfin : fb T (PrimT v Λ a) ≠ ⊤ := by
    have h := hint' T (Set.mem_univ _)
    rw [hφdef, integrable_indicator_iff hPm] at h
    exact ((integrableOn_const_iff (C := (1 : ℝ))).1 h).resolve_left (by simp) |>.ne
  have hR : dX σ J ψ v a (PrimT v Λ a ∩ NearT v σ J ϖ (gramR (Fv F v) σ J Y)) /
      dT σ ψ v a (HermP v σ a ϖ) ≠ ⊤ := by
    refine (ENNReal.div_lt_top ?_ ?_).ne
    · exact ((measure_mono Set.inter_subset_left).trans_lt hPc.measure_lt_top).ne
    · rw [← hHP]
      exact ((hHo 0).measure_pos _ ⟨0, (hN σ v ϖ a 0).zero_mem⟩).ne'
  rw [measureReal_def] at e'
  exact (ENNReal.toReal_eq_toReal_iff' hfin hR).1 e'

end PI.OmVd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIndep =====

-- ===== clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FibPOfDual =====
-- clump-header: {"m": "Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FibPOfDual", "h": "module\n\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.PrimIndep\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.CrossMSmulRight\nimport Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.MemUniformizerHermitianIdeal\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.TrOntoHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.PeriodIntegrals.UnitaryGroupMassFormula.LocalUnitaryOrbits.HRSumSmulRight\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace PI.OmVd

open Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.SG.Sub Formalism.L2.SG.LocVol NumberField IsDedekindDomain MeasureTheory PI.OmLocU
open scoped TensorProduct

variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
  (σ : E →ₐ[F] E) {n : ℕ} (J : Matrix (Fin n) (Fin n) E) (ψ : AddChar (AF F) ℂ)
  (v : HeightOneSpectrum (𝓞 F)) (Λ : Set (Fin n → E))

def PrimDual (a : ℕ) : Prop :=
  StdHyp σ J ψ → IsSDLoc σ J v Λ → UnramAt (E := E) v →
    (∃ L : Submodule (𝓞 E) (Fin n → E), Submodule.IsLattice E L ∧ (L : Set (Fin n → E)) = Λ) →
    ∀ y ∈ PrimT v Λ a, ∃ W ∈ LamT v Λ a, ∀ i j,
      hR (Fv F v) σ J (y i) (W j) = (if i = j then 1 else 0) ∧
        hR (Fv F v) σ J (W j) (y i) = (if i = j then 1 else 0)

def HensOntoP (a : ℕ) : Prop :=
  StdHyp σ J ψ → IsSDLoc σ J v Λ → UnramAt (E := E) v →
    (∃ L : Submodule (𝓞 E) (Fin n → E), Submodule.IsLattice E L ∧ (L : Set (Fin n → E)) = Λ) →
    ∀ y ∈ PrimT v Λ a, ∀ S : HermR (Fv F v) σ a, S ∈ hermOE σ v a →
      ∃ W0 ∈ LamT v Λ a, crossM σ J y W0 = (S : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E))

theorem henselSurjective_of_primitiveDual (a : ℕ) (hD : PrimDual σ J ψ v Λ a) : HensOntoP σ J ψ v Λ a := by
  classical
  intro hS hSD hUn hL y hy S hS'
  obtain ⟨W, hW, hd⟩ := hD hS hSD hUn hL y hy
  obtain ⟨L, -, hLΛ⟩ := hL
  have hTr : TrOnto σ v := PI.OmLocU.Red.trOnto_holds σ J ψ v hS
  have hdiag : ∀ i, ∃ x ∈ OEv (E := E) v, x + sigR (Fv F v) σ x = (S : Matrix (Fin a) (Fin a) _) i i :=
    fun i => hTr hUn _ (hS' i i) (S.2 i i)
  choose x hx hxs using hdiag
  set A : Matrix (Fin a) (Fin a) (Fv F v ⊗[F] E) := fun i j =>
    if i < j then (S : Matrix (Fin a) (Fin a) _) i j else if i = j then x i else 0 with hAdef
  have hA : ∀ i j, A i j ∈ OEv (E := E) v := by
    intro i j
    simp only [hAdef]
    split_ifs
    · exact hS' i j
    · exact hx i
    · exact oEv_zero v
  have hAS : ∀ i j, A i j + sigR (Fv F v) σ (A j i) = (S : Matrix (Fin a) (Fin a) _) i j := by
    intro i j
    rcases lt_trichotomy i j with h | rfl | h
    · simp [hAdef, h, not_lt.2 h.le, h.ne']
    · simp [hAdef, hxs]
    · simp only [hAdef, h, not_lt.2 h.le, h.ne, h.ne', if_false, if_true, zero_add]
      exact S.2 i j
  subst hLΛ
  refine ⟨fun j => ∑ k, A k j • W k, fun j => ?_, ?_⟩
  · exact Submodule.sum_mem _ fun k _ => oEv_smul_mem v L (hA k j) (hW k)
  · funext i j
    simp only [crossM]
    rw [hR_sum_smul_right, hR_sum_smul_left]
    have e1 : ∑ k, A k j * hR (Fv F v) σ J (y i) (W k) = A i j := by
      simp only [fun k => (hd i k).1, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    have e2 : ∑ k, sigR (Fv F v) σ (A k i) * hR (Fv F v) σ J (W k) (y j) = sigR (Fv F v) σ (A j i) := by
      simp only [fun k => (hd j k).2, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq, Finset.mem_univ, if_true]
    rw [e1, e2, hAS]

theorem fiberHensel_of_henselOnto (a : ℕ) (Y : TupV (E := E) v n a) (h : HensOntoP σ J ψ v Λ a) :
    FibHensP σ J ψ v Λ a Y := by
  intro hG ϖ hϖ hσ hJ y hy hyT
  obtain ⟨h0, -, hint⟩ := unif_spec v ϖ hϖ
  have hSD : IsSDLoc σ J v Λ := hG.2.2.1
  refine ⟨dH σ J v hσ hJ y, fun k => ?_, fun k Z hZ W hW => ?_⟩
  · ext S
    constructor
    · rintro ⟨W, hW, rfl⟩
      obtain ⟨W0, hW0, rfl⟩ := (PI.VolStabSW.mem_smulSub _ _ _).1 hW
      rw [mem_hN σ v ϖ h0]
      intro i j
      refine ⟨crossM σ J y W0 i j, ?_, ?_⟩
      · exact oEv_add v (hR_mem_oEv σ J v Λ hSD (hy.1 i) (hW0 j)) (hR_mem_oEv σ J v Λ hSD (hW0 i) (hy.1 j))
      · rw [coe_dH, crossM_smul_right]
    · intro hS
      obtain ⟨S0, hS0, rfl⟩ := (PI.VolStabSW.mem_smulSub _ _ _).1 hS
      obtain ⟨W0, hW0, hc⟩ := h hG.1 hSD hG.2.2.2.1 hG.2.1 y hy S0 hS0
      refine AddSubgroup.mem_map.2 ⟨ϖ ^ (k + 1) • W0, (PI.VolStabSW.mem_smulSub _ _ _).2 ⟨W0, hW0, rfl⟩, ?_⟩
      apply Subtype.ext
      funext i j
      rw [coe_dH, crossM_smul_right, hc, PI.VolStabSW.coe_hermSMul, Matrix.smul_apply, smul_eq_sc]
  · apply rem_mem σ J v Λ hSD ϖ h0 hint hZ hW
    show gramR (Fv F v) σ J (y + Z + W) - gramR (Fv F v) σ J (y + Z) -
      (gramR (Fv F v) σ J (y + W) - gramR (Fv F v) σ J y - gramR (Fv F v) σ J W) = _
    exact gram_rem σ J y Z W

theorem fibP_of_dual (a : ℕ) (Y : TupV (E := E) v n a) (hC : PrimCos σ J ψ v Λ a) (hD : PrimDual σ J ψ v Λ a) :
    FibP σ J ψ v Λ a Y :=
  fibP_of σ J ψ v Λ a Y hC (fiberHensel_of_henselOnto σ J ψ v Λ a Y (henselSurjective_of_primitiveDual σ J ψ v Λ a hD))

end PI.OmVd
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.PeriodIntegrals.UnitaryGroupMassFormula.ValuationLocalVolumes.FibPOfDual =====
