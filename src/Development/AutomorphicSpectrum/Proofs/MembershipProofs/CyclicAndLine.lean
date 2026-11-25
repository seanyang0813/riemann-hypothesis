module

public import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar
public import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.LaEqSqrtSmulLam
public import Mathlib.Algebra.Module.BigOperators
public import Mathlib.LinearAlgebra.Finsupp.LinearCombination
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SchrodingerModelSelfDualLattice, Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsStd, Development.AutomorphicSpectrum.Proofs.MembershipProofs.Irreducible, Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalFiniteIdeleFactorization, Development.AutomorphicSpectrum.Proofs.MembershipProofs.CyclicAndLine

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SchrodingerModelSelfDualLattice =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.SchrodingerModelSelfDualLattice", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix

namespace GlobalTheory.CompanionTheory.CosetMod

theorem sum_out {G : Type} [AddCommGroup G] (H : AddSubgroup G) [Fintype (G ⧸ H)] (χ : AddChar G ℂ)
    (hχ : ∀ h ∈ H, χ h = 1) :
    ((∀ g, χ g = 1) → ∑ q : G ⧸ H, χ q.out = Fintype.card (G ⧸ H)) ∧
      (¬ (∀ g, χ g = 1) → ∑ q : G ⧸ H, χ q.out = 0) := by
  have hcoset : ∀ a b : G, (a : G ⧸ H) = b → χ a = χ b := by
    intro a b hab
    have hmem : -a + b ∈ H := QuotientAddGroup.eq.mp hab
    calc χ a = χ a * χ (-a + b) := by rw [hχ _ hmem, mul_one]
      _ = χ b := by rw [← AddChar.map_add_eq_mul, add_neg_cancel_left]
  refine ⟨fun h => ?_, fun h => ?_⟩
  · simp [h]
  · push_neg at h
    obtain ⟨g, hg⟩ := h
    have hshift : ∀ q : G ⧸ H, χ g * χ q.out = χ ((QuotientAddGroup.mk g + q).out) := by
      intro q
      rw [← AddChar.map_add_eq_mul]
      apply hcoset
      rw [QuotientAddGroup.mk_add, QuotientAddGroup.out_eq', QuotientAddGroup.out_eq']
    have key : χ g * ∑ q : G ⧸ H, χ q.out = ∑ q : G ⧸ H, χ q.out := by
      rw [Finset.mul_sum]
      simp_rw [hshift]
      exact Fintype.sum_equiv (Equiv.addLeft (QuotientAddGroup.mk g)) _ _ (fun q => rfl)
    have h0 : (χ g - 1) * ∑ q : G ⧸ H, χ q.out = 0 := by rw [sub_mul, key, one_mul, sub_self]
    rcases mul_eq_zero.mp h0 with h1 | h1
    · exact absurd (sub_eq_zero.mp h1) hg
    · exact h1

private theorem addChar_sum_eq_one_of_forall {R ι : Type} [CommRing R] (ψ : AddChar R ℂ) (s : Finset ι) (f : ι → R)
    (h : ∀ i ∈ s, ψ (f i) = 1) : ψ (∑ i ∈ s, f i) = 1 := by
  classical
  revert h
  refine Finset.induction_on s (fun _ => by simp) ?_
  intro a s ha ih h
  rw [Finset.sum_insert ha, AddChar.map_add_eq_mul, h a (Finset.mem_insert_self a s),
    ih (fun i hi => h i (Finset.mem_insert_of_mem hi)), one_mul]

theorem indicator_mem_span : ∀ {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R] [LocallyCompactSpace R] [T2Space R] [Invertible (2 : R)] (ψ : AddChar R ℂ) (O : Subring R) (u : Rˣ) {κ : Type} [Fintype κ] (v : Rˣ), GoodChar ψ O u → (v : R) ∈ O → (Set.indicator {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O} fun _ => (1 : ℂ)) ∈ Submodule.span ℂ {f : (κ → R) → ℂ | ∃ y : κ → R, f = schr ψ (0, y) (Set.indicator {x : κ → R | ∀ i, x i ∈ O} fun _ => (1 : ℂ))} := by
  intro R _ _ _ _ _ _ ψ O u κ _ v hG hv
  classical
  let L : AddSubgroup (κ → R) := AddSubgroup.pi Set.univ (fun _ => O.toAddSubgroup)
  have memL : ∀ y : κ → R, y ∈ L ↔ ∀ i, y i ∈ O := by
    intro y; simp [L, AddSubgroup.mem_pi]
  let Gs : AddSubgroup (κ → R) :=
    L.comap (DistribSMul.toAddMonoidHom (κ → R) (((u⁻¹ * v : Rˣ)) : R))
  let Hs : AddSubgroup (κ → R) :=
    L.comap (DistribSMul.toAddMonoidHom (κ → R) (((u⁻¹ : Rˣ)) : R))
  have memG : ∀ y : κ → R, y ∈ Gs ↔ ∀ i, (((u⁻¹ * v : Rˣ)) : R) * y i ∈ O := by
    intro y; simp only [Gs, AddSubgroup.mem_comap, DistribSMul.toAddMonoidHom_apply, memL,
      Pi.smul_apply, smul_eq_mul]
  have memH : ∀ y : κ → R, y ∈ Hs ↔ ∀ i, (((u⁻¹ : Rˣ)) : R) * y i ∈ O := by
    intro y; simp only [Hs, AddSubgroup.mem_comap, DistribSMul.toAddMonoidHom_apply, memL,
      Pi.smul_apply, smul_eq_mul]
  have hLset : (L : Set (κ → R)) = Set.univ.pi (fun _ => (O : Set R)) := by
    ext y; simp [memL]
  have hLopen : IsOpen (L : Set (κ → R)) := by
    rw [hLset]; exact isOpen_set_pi Set.finite_univ (fun _ _ => hG.isOpen)
  have hLcpt : IsCompact (L : Set (κ → R)) := by
    rw [hLset]; exact isCompact_univ_pi (fun _ => hG.compact)
  have hGset : (Gs : Set (κ → R)) =
      (fun y : κ → R => ((((u⁻¹ * v : Rˣ))⁻¹ : Rˣ) : R) • y) '' (L : Set (κ → R)) := by
    ext y
    constructor
    · intro hy
      refine ⟨(((u⁻¹ * v : Rˣ)) : R) • y, hy, ?_⟩
      simp only [smul_smul, Units.inv_mul, one_smul]
    · rintro ⟨z, hz, rfl⟩
      show (((u⁻¹ * v : Rˣ)) : R) • ((((u⁻¹ * v : Rˣ))⁻¹ : Rˣ) : R) • z ∈ L
      rw [smul_smul, Units.mul_inv, one_smul]; exact hz
  have hGcpt : IsCompact (Gs : Set (κ → R)) := by
    rw [hGset]; exact hLcpt.image (continuous_const_smul _)
  have hHopen : IsOpen (Hs : Set (κ → R)) :=
    hLopen.preimage (continuous_const_smul (((u⁻¹ : Rˣ)) : R))
  let H : AddSubgroup Gs := Hs.addSubgroupOf Gs
  have hHopen' : IsOpen (H : Set Gs) := hHopen.preimage continuous_subtype_val
  haveI : CompactSpace Gs := isCompact_iff_compactSpace.mp hGcpt
  haveI : Finite (Gs ⧸ H) := AddSubgroup.quotient_finite_of_isOpen H hHopen'
  letI : Fintype (Gs ⧸ H) := Fintype.ofFinite _
  have hfun : (Set.indicator {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O} fun _ => (1 : ℂ)) =
      ∑ q : Gs ⧸ H, ((Fintype.card (Gs ⧸ H) : ℂ)⁻¹) •
        schr ψ (0, ((q.out : Gs) : κ → R)) (Set.indicator {x : κ → R | ∀ i, x i ∈ O} fun _ => (1 : ℂ)) := by
    funext x
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, smul_eq_mul, GlobalTheory.WeilM.schr, zero_dotProduct, mul_zero, add_zero]
    by_cases hx : ∀ i, x i ∈ O
    · let χx : AddChar Gs ℂ :=
        { toFun := fun y => ψ (x ⬝ᵥ (y : κ → R))
          map_zero_eq_one' := by simp
          map_add_eq_mul' := by intro a b; simp [dotProduct_add, AddChar.map_add_eq_mul] }
      have hχ : ∀ h ∈ H, χx h = 1 := by
        intro h hh
        have hh' : ((h : Gs) : κ → R) ∈ Hs := AddSubgroup.mem_addSubgroupOf.mp hh
        show ψ (x ⬝ᵥ ((h : Gs) : κ → R)) = 1
        apply addChar_sum_eq_one_of_forall
        intro i _
        have h1 := (hG.ann _).mpr ((memH _).mp hh' i) (x i) (hx i)
        rwa [mul_comm] at h1
      obtain ⟨hA, hB⟩ := sum_out H χx hχ
      have hrw : ∀ q : Gs ⧸ H, (Fintype.card (Gs ⧸ H) : ℂ)⁻¹ *
          (ψ (x ⬝ᵥ ((q.out : Gs) : κ → R)) *
            Set.indicator {x : κ → R | ∀ i, x i ∈ O} (fun _ => (1 : ℂ)) x) =
          (Fintype.card (Gs ⧸ H) : ℂ)⁻¹ * χx q.out := by
        intro q
        simp only [Set.indicator_of_mem (show x ∈ {x : κ → R | ∀ i, x i ∈ O} from hx), mul_one]
        rfl
      rw [Finset.sum_congr rfl (fun q _ => hrw q), ← Finset.mul_sum]
      by_cases hs : ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O
      · have htriv : ∀ g, χx g = 1 := by
          intro g
          show ψ (x ⬝ᵥ ((g : Gs) : κ → R)) = 1
          apply addChar_sum_eq_one_of_forall
          intro i _
          have hg := (memG _).mp g.2 i
          have hz : ((u⁻¹ : Rˣ) : R) * ((v : R) * (g : κ → R) i) ∈ O := by
            rw [← mul_assoc, ← Units.val_mul]; exact hg
          have h1 := (hG.ann _).mpr hz _ (hs i)
          have e : (v : R) * (g : κ → R) i * (((v⁻¹ : Rˣ) : R) * x i) = x i * (g : κ → R) i := by
            rw [mul_comm (v : R) ((g : κ → R) i), mul_assoc, Units.mul_inv_cancel_left, mul_comm]
          rwa [e] at h1
        rw [hA htriv, Set.indicator_of_mem (show x ∈ {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O} from hs)]
        exact (inv_mul_cancel₀ (Nat.cast_ne_zero.mpr Fintype.card_ne_zero)).symm
      · have hnt : ¬ ∀ g, χx g = 1 := by
          push_neg at hs
          obtain ⟨i, hi⟩ := hs
          have hz : ¬ ((u⁻¹ : Rˣ) : R) * (((v⁻¹ : Rˣ) : R) * (u : R) * x i) ∈ O := by
            have e : ((u⁻¹ : Rˣ) : R) * (((v⁻¹ : Rˣ) : R) * (u : R) * x i) = ((v⁻¹ : Rˣ) : R) * x i := by
              rw [mul_comm (((v⁻¹ : Rˣ) : R)) (u : R), mul_assoc (u : R), Units.inv_mul_cancel_left]
            rw [e]; exact hi
          rw [← hG.ann] at hz
          push_neg at hz
          obtain ⟨y, hy, hψ⟩ := hz
          intro hall
          have hmem : (Pi.single i (((v⁻¹ : Rˣ) : R) * (u : R) * y) : κ → R) ∈ Gs := by
            rw [memG]
            intro j
            by_cases hj : j = i
            · subst hj
              simp only [Pi.single_eq_same]
              have e : (((u⁻¹ * v : Rˣ)) : R) * (((v⁻¹ : Rˣ) : R) * (u : R) * y) = y := by
                rw [Units.val_mul, mul_assoc, ← mul_assoc (v : R), ← mul_assoc (v : R),
                  Units.mul_inv, one_mul, Units.inv_mul_cancel_left]
              rw [e]; exact hy
            · simp only [Pi.single_eq_of_ne hj, mul_zero]; exact O.zero_mem
          have h1 := hall ⟨_, hmem⟩
          apply hψ
          have e2 : x ⬝ᵥ (Pi.single i (((v⁻¹ : Rˣ) : R) * (u : R) * y) : κ → R) =
              ((v⁻¹ : Rˣ) : R) * (u : R) * x i * y := by
            rw [dotProduct_single]; ring
          rw [← e2]; exact h1
        rw [hB hnt, mul_zero, Set.indicator_of_notMem (show x ∉ {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O} from hs)]
    · have hs : ¬ ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O := by
        intro h
        apply hx
        intro i
        have := O.mul_mem hv (h i)
        rwa [Units.mul_inv_cancel_left] at this
      rw [Set.indicator_of_notMem (show x ∉ {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O} from hs)]
      symm
      apply Finset.sum_eq_zero
      intro q _
      rw [Set.indicator_of_notMem (show x ∉ {x : κ → R | ∀ i, x i ∈ O} from hx), mul_zero, mul_zero]
  rw [hfun]
  exact Submodule.sum_mem _ (fun q _ => Submodule.smul_mem _ _ (Submodule.subset_span ⟨_, rfl⟩))

end GlobalTheory.CompanionTheory.CosetMod
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.SchrodingerModelSelfDualLattice =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsStd =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsStd", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.SchrodingerModelSelfDualLattice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix Topology

namespace GlobalTheory.CompanionTheory.StdLattice

theorem exists_nhds_invariant {G : Type} [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G] {f : G → ℂ}
    (hf : f ∈ SB G) : ∀ᶠ u in 𝓝 (0 : G), ∀ y ∈ tsupport f, f (y + u) = f y := by
  have hf' : IsLocallyConstant f ∧ HasCompactSupport f := hf
  obtain ⟨hlc, hcs⟩ := hf'
  have hg : IsLocallyConstant (fun z : G × G => f (z.2 + z.1)) :=
    hlc.comp_continuous (continuous_snd.add continuous_fst)
  have hg2 : IsLocallyConstant (fun z : G × G => f z.2) := hlc.comp_continuous continuous_snd
  refine hcs.isCompact.eventually_forall_of_forall_eventually fun y _ => ?_
  filter_upwards [hg.eventually_eq (0, y), hg2.eventually_eq (0, y)] with z hz1 hz2
  exact hz1.trans ((congrArg f (add_zero y)).trans hz2.symm)

theorem mem_span_cosets {G : Type} [AddCommGroup G] [TopologicalSpace G] [IsTopologicalAddGroup G] {f : G → ℂ}
    (hf : HasCompactSupport f) (H : AddSubgroup G) (hH : IsOpen (H : Set G))
    (hinv : ∀ y ∈ tsupport f, ∀ u ∈ H, f (y + u) = f y) :
    f ∈ Submodule.span ℂ (Set.range fun a : G => fun x : G => (H : Set G).indicator (fun _ => (1 : ℂ)) (x + a)) := by
  classical
  haveI : DiscreteTopology (G ⧸ H) := QuotientAddGroup.discreteTopology hH
  have hfin : ((QuotientAddGroup.mk : G → G ⧸ H) '' tsupport f).Finite :=
    (hf.isCompact.image QuotientAddGroup.continuous_mk).finite_of_discrete
  have key : ∀ c ∈ hfin.toFinset, ∀ x : G, (QuotientAddGroup.mk x : G ⧸ H) = c →
      f x = f (Quotient.out c) := by
    intro c hc x hx
    rw [Set.Finite.mem_toFinset] at hc
    obtain ⟨k, hk, rfl⟩ := hc
    have h1 : ∀ z : G, (QuotientAddGroup.mk z : G ⧸ H) = QuotientAddGroup.mk k → f z = f k := by
      intro z hz
      have hm : -k + z ∈ H := QuotientAddGroup.eq.1 hz.symm
      have h2 := hinv k hk (-k + z) hm
      rwa [add_neg_cancel_left] at h2
    rw [h1 x hx, h1 _ (QuotientAddGroup.out_eq' _)]
  have hfeq : f = ∑ c ∈ hfin.toFinset, f (Quotient.out c) •
      (fun x : G => (H : Set G).indicator (fun _ => (1 : ℂ)) (x + -Quotient.out c)) := by
    funext x
    rw [Finset.sum_apply]
    simp only [Pi.smul_apply, smul_eq_mul]
    have hind : ∀ c : G ⧸ H, (H : Set G).indicator (fun _ => (1 : ℂ)) (x + -Quotient.out c) =
        if c = (QuotientAddGroup.mk x : G ⧸ H) then 1 else 0 := by
      intro c
      have hiff : x + -Quotient.out c ∈ H ↔ c = (QuotientAddGroup.mk x : G ⧸ H) := by
        rw [add_comm, ← QuotientAddGroup.eq, QuotientAddGroup.out_eq']
      simp only [Set.indicator_apply, SetLike.mem_coe, hiff]
    simp only [hind, mul_ite, mul_one, mul_zero]
    rw [Finset.sum_ite_eq']
    split_ifs with hx
    · exact key _ hx x rfl
    · apply image_eq_zero_of_notMem_tsupport
      intro hxK
      apply hx
      rw [Set.Finite.mem_toFinset]
      exact ⟨x, hxK, rfl⟩
  rw [hfeq]
  exact Submodule.sum_mem _ fun c _ =>
    Submodule.smul_mem _ _ (Submodule.subset_span ⟨-Quotient.out c, rfl⟩)

variable {R : Type} [CommRing R] {κ : Type} [Fintype κ]

def box (O : Subring R) (v : Rˣ) (κ : Type) : AddSubgroup (κ → R) where
  carrier := {x | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O}
  zero_mem' := fun i => by simp
  add_mem' := fun hx hy i => by simpa [mul_add] using O.add_mem (hx i) (hy i)
  neg_mem' := fun hx i => by simpa using O.neg_mem (hx i)

def ind (O : Subring R) (κ : Type) : (κ → R) → ℂ := Set.indicator {x : κ → R | ∀ i, x i ∈ O} fun _ => (1 : ℂ)

variable [TopologicalSpace R]

theorem ind_mem_SB [T2Space R] {O : Subring R} (hc : IsCompact (O : Set R)) (ho : IsOpen (O : Set R)) :
    ind O κ ∈ SB (κ → R) := by
  have hO : IsClosed (O : Set R) := hc.isClosed
  have hset : {x : κ → R | ∀ i, x i ∈ O} = Set.univ.pi (fun _ => (O : Set R)) := by
    ext x
    simp [Set.mem_pi]
  have hS : IsOpen {x : κ → R | ∀ i, x i ∈ O} := by
    rw [hset]
    exact isOpen_set_pi Set.finite_univ (fun _ _ => ho)
  have hS' : IsClosed {x : κ → R | ∀ i, x i ∈ O} := by
    rw [hset]
    exact isClosed_set_pi (fun _ _ => hO)
  show IsLocallyConstant (ind O κ) ∧ HasCompactSupport (ind O κ)
  refine ⟨fun t => ?_, ?_⟩
  · show IsOpen (Set.indicator {x : κ → R | ∀ i, x i ∈ O} (fun _ => (1 : ℂ)) ⁻¹' t)
    rw [Set.indicator_preimage]
    exact ((IsLocallyConstant.const (1 : ℂ) t).inter hS).union
      ((IsLocallyConstant.const (0 : ℂ) t).sdiff hS')
  · exact HasCompactSupport.of_support_subset_isCompact
      (by rw [hset]; exact isCompact_univ_pi fun _ => hc) Set.support_indicator_subset

theorem psi_dot {ψ : AddChar R ℂ} {O : Subring R} {u : Rˣ} (h : GoodChar ψ O u) {x y : κ → R} (hx : ∀ i, x i ∈ O)
    (hy : y ∈ box O u κ) : ψ (x ⬝ᵥ y) = 1 := by
  have hy' : ∀ i, ((u⁻¹ : Rˣ) : R) * y i ∈ O := hy
  have hxy : ∀ i, ψ (x i * y i) = 1 := fun i => by
    rw [mul_comm]
    exact (h.ann (y i)).2 (hy' i) (x i) (hx i)
  show ψ (∑ i, x i * y i) = 1
  exact Finset.sum_induction _ (fun z => ψ z = 1)
    (fun a b ha hb => by rw [AddChar.map_add_eq_mul, ha, hb, one_mul])
    (AddChar.map_zero_eq_one ψ) (fun i _ => hxy i)

variable [IsTopologicalRing R] [Invertible (2 : R)]

theorem mem_span_schr [LocallyCompactSpace R] [T2Space R] {ψ : AddChar R ℂ} {O : Subring R} {u : Rˣ}
    (h : GoodChar ψ O u) {f : (κ → R) → ℂ} (hf : f ∈ SB (κ → R)) :
    f ∈ Submodule.span ℂ (Set.range fun w => schr ψ w (ind O κ)) := by
  classical
  set V := Submodule.span ℂ (Set.range fun w => schr ψ w (ind O κ)) with hV
  have htr : ∀ g ∈ Submodule.span ℂ {g : (κ → R) → ℂ | ∃ y, g = schr ψ (0, y) (ind O κ)},
      ∀ a : κ → R, (fun x => g (x + a)) ∈ V := by
    intro g hg a
    induction hg using Submodule.span_induction with
    | mem g hg =>
      obtain ⟨y, rfl⟩ := hg
      have heq : (fun x => schr ψ (0, y) (ind O κ) (x + a)) =
          ψ (a ⬝ᵥ y - ⅟2 * (a ⬝ᵥ y)) • schr ψ (a, y) (ind O κ) := by
        funext x
        simp only [schr, Pi.smul_apply, smul_eq_mul, add_zero, zero_dotProduct, mul_zero]
        rw [← mul_assoc, ← AddChar.map_add_eq_mul, add_dotProduct,
          show x ⬝ᵥ y + a ⬝ᵥ y = a ⬝ᵥ y - ⅟2 * (a ⬝ᵥ y) + (x ⬝ᵥ y + ⅟2 * (a ⬝ᵥ y)) by ring]
      rw [heq]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨(a, y), rfl⟩)
    | zero => exact V.zero_mem
    | add g1 g2 _ _ h1 h2 => exact V.add_mem h1 h2
    | smul c g _ h => exact V.smul_mem c h
  have hsb : IsLocallyConstant f ∧ HasCompactSupport f := hf
  have hA := exists_nhds_invariant hf
  rw [nhds_pi] at hA
  obtain ⟨I, t, ht, hIt⟩ := Filter.mem_pi'.1 hA
  have hU' : (⋂ i, t i) ∈ 𝓝 (0 : R) := Filter.iInter_mem.2 fun i => ht i
  obtain ⟨v, hv⟩ := h.basis _ (Filter.inter_mem hU' (h.isOpen.mem_nhds O.zero_mem))
  have hvO : ((v : Rˣ) : R) ∈ O := by
    have h1 := (hv 1 O.one_mem).2
    rwa [mul_one] at h1
  have hboxU : ∀ w ∈ box O v κ, ∀ y ∈ tsupport f, f (y + w) = f y := by
    intro w hw
    have hw' : ∀ i, ((v⁻¹ : Rˣ) : R) * w i ∈ O := hw
    have hwI : w ∈ (↑I : Set κ).pi t := fun i _ => by
      have h2 := (hv _ (hw' i)).1
      rw [Units.mul_inv_cancel_left] at h2
      exact Set.mem_iInter.1 h2 i
    exact hIt hwI
  have hbox_open : IsOpen ((box O v κ : AddSubgroup (κ → R)) : Set (κ → R)) := by
    show IsOpen {x : κ → R | ∀ i, ((v⁻¹ : Rˣ) : R) * x i ∈ O}
    rw [Set.setOf_forall]
    exact isOpen_iInter_of_finite fun i =>
      h.isOpen.preimage (continuous_const.mul (continuous_apply i))
  have hmem := mem_span_cosets hsb.2 (box O v κ) hbox_open (fun y hy w hw => hboxU w hw y hy)
  refine Submodule.span_le.2 ?_ hmem
  rintro _ ⟨a, rfl⟩
  exact htr _ (_root_.GlobalTheory.CompanionTheory.CosetMod.indicator_mem_span ψ O u v h hvO) a

theorem exists_std : ∀ {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R] [LocallyCompactSpace R] [T2Space R] [Invertible (2 : R)] (ψ : AddChar R ℂ) (O : Subring R) (u : Rˣ) {W : Type} [AddCommGroup W] [Module R W] {B : W → W → R} {κ : Type} [Fintype κ] (d : Darboux B κ) (μ : @Measure (κ → R) (borel _)) (S : Sys W (SB (κ → R))), GoodChar ψ O u → IsModel ψ d μ S → ∃ (Γ : AddSubgroup W) (al : W → ℂ) (φ : SB (κ → R)), SelfDual S Γ ∧ IsSemi S al Γ ∧ Law S al Γ φ ∧ Cyclic S φ ∧ φ ≠ 0 := by
  intro R _ _ _ _ _ _ ψ O u W _ _ B κ _ d μ S h hM
  classical
  obtain ⟨hrho, -, hc⟩ := hM
  let Γ : AddSubgroup W :=
    AddSubgroup.comap d.e.toLinearMap.toAddMonoidHom ((box O 1 κ).prod (box O u κ))
  have hΓ : ∀ w, w ∈ Γ ↔ (∀ i, (d.e w).1 i ∈ O) ∧ (∀ i, ((u⁻¹ : Rˣ) : R) * (d.e w).2 i ∈ O) := by
    intro w
    show ((∀ i, ((1⁻¹ : Rˣ) : R) * (d.e w).1 i ∈ O) ∧ (∀ i, ((u⁻¹ : Rˣ) : R) * (d.e w).2 i ∈ O)) ↔ _
    simp only [inv_one, Units.val_one, one_mul]
  have hsq : ∀ z : R, ψ (⅟2 * z) ^ 2 = ψ z := by
    intro z
    rw [← AddChar.map_nsmul_eq_pow, nsmul_eq_mul, Nat.cast_ofNat, ← mul_assoc, mul_invOf_self, one_mul]
  have hB1 : ∀ γ x, S.c γ x ^ 2 = ψ ((d.e γ).1 ⬝ᵥ (d.e x).2 - (d.e x).1 ⬝ᵥ (d.e γ).2) := by
    intro γ x
    rw [hc, hsq, d.form]
  refine ⟨Γ, fun x => ψ (-(⅟2 * ((d.e x).1 ⬝ᵥ (d.e x).2))),
    ⟨ind O κ, ind_mem_SB h.compact h.isOpen⟩, ?_, ?_, ?_, ?_, ?_⟩
  · intro x
    constructor
    · intro hx γ hγ
      obtain ⟨hxa, hxb⟩ := (hΓ x).1 hx
      obtain ⟨hga, hgb⟩ := (hΓ γ).1 hγ
      rw [hB1, AddChar.map_sub_eq_div, psi_dot h hga hxb, psi_dot h hxa hgb, div_one]
    · intro hall
      rw [hΓ]
      constructor
      · intro i
        have key : ∀ z ∈ O, ψ (((u : Rˣ) : R) * (d.e x).1 i * z) = 1 := by
          intro z hz
          have hγ : d.e.symm (0, Pi.single i (((u : Rˣ) : R) * z)) ∈ Γ := by
            rw [hΓ, LinearEquiv.apply_symm_apply]
            refine ⟨fun j => by simp, fun j => ?_⟩
            by_cases hj : j = i <;> simp [hj, hz]
          have h3 := hall _ hγ
          rw [hB1, LinearEquiv.apply_symm_apply] at h3
          simp only [zero_dotProduct, dotProduct_single, zero_sub] at h3
          rw [AddChar.map_neg_eq_inv, inv_eq_one] at h3
          rw [mul_comm ((u : Rˣ) : R) _, mul_assoc]
          exact h3
        have h4 := (h.ann _).1 key
        rwa [← mul_assoc, Units.inv_mul, one_mul] at h4
      · intro i
        apply (h.ann _).1
        intro z hz
        have hγ : d.e.symm (Pi.single i z, 0) ∈ Γ := by
          rw [hΓ, LinearEquiv.apply_symm_apply]
          refine ⟨fun j => ?_, fun j => by simp⟩
          by_cases hj : j = i <;> simp [hj, hz]
        have h3 := hall _ hγ
        rw [hB1, LinearEquiv.apply_symm_apply] at h3
        simp only [single_dotProduct, dotProduct_zero, sub_zero] at h3
        rw [mul_comm]
        exact h3
  · refine ⟨fun x hx => ?_, fun x hx y hy => ?_⟩
    · obtain ⟨hxa, hxb⟩ := (hΓ x).1 hx
      have h2 : ψ (-(⅟2 * ((d.e x).1 ⬝ᵥ (d.e x).2))) * ψ (-(⅟2 * ((d.e x).1 ⬝ᵥ (d.e x).2))) = 1 := by
        rw [← pow_two, ← mul_neg, hsq, AddChar.map_neg_eq_inv, psi_dot h hxa hxb, inv_one]
      exact mul_self_eq_one_iff.1 h2
    · obtain ⟨hxa, hxb⟩ := (hΓ x).1 hx
      obtain ⟨hya, hyb⟩ := (hΓ y).1 hy
      show ψ (-(⅟2 * ((d.e (x + y)).1 ⬝ᵥ (d.e (x + y)).2))) =
        ψ (-(⅟2 * ((d.e x).1 ⬝ᵥ (d.e x).2))) * ψ (-(⅟2 * ((d.e y).1 ⬝ᵥ (d.e y).2))) * S.c x y
      have h0 : ψ (-(2 * ⅟2 * ((d.e x).1 ⬝ᵥ (d.e y).2))) = 1 := by
        rw [mul_invOf_self, one_mul, AddChar.map_neg_eq_inv, psi_dot h hxa hyb, inv_one]
      have hX : -(⅟2 * ((d.e x + d.e y).1 ⬝ᵥ (d.e x + d.e y).2)) =
          (-(⅟2 * ((d.e x).1 ⬝ᵥ (d.e x).2)) + -(⅟2 * ((d.e y).1 ⬝ᵥ (d.e y).2)) +
            ⅟2 * ((d.e x).1 ⬝ᵥ (d.e y).2 - (d.e y).1 ⬝ᵥ (d.e x).2)) +
          -(2 * ⅟2 * ((d.e x).1 ⬝ᵥ (d.e y).2)) := by
        simp only [Prod.fst_add, Prod.snd_add, add_dotProduct, dotProduct_add]
        ring
      rw [hc, d.form, map_add (f := _), hX, AddChar.map_add_eq_mul, h0, mul_one, AddChar.map_add_eq_mul,
        AddChar.map_add_eq_mul]
  · intro γ hγ
    obtain ⟨ha, hb⟩ := (hΓ γ).1 hγ
    apply Subtype.ext
    rw [hrho, Submodule.coe_smul]
    funext x
    simp only [GlobalTheory.WeilM.Darboux.rho, schr, Pi.smul_apply, smul_eq_mul, ind, Set.indicator_apply,
      Set.mem_setOf_eq, AddChar.map_neg_eq_inv, inv_inv]
    by_cases hx : ∀ i, x i ∈ O
    · have hxa : ∀ i, (x + (d.e γ).1) i ∈ O := fun i => O.add_mem (hx i) (ha i)
      rw [if_pos hxa, if_pos hx, AddChar.map_add_eq_mul, psi_dot h hx hb, one_mul]
    · have hxa : ¬ ∀ i, (x + (d.e γ).1) i ∈ O := fun h' => hx fun i => by
        simpa using O.sub_mem (h' i) (ha i)
      rw [if_neg hxa, if_neg hx, mul_zero, mul_zero]
  · show Submodule.span ℂ (Set.range fun x => S.rho x ⟨ind O κ, ind_mem_SB h.compact h.isOpen⟩) = ⊤
    rw [eq_top_iff]
    rintro g -
    have hg := mem_span_schr h g.2
    have hmap : Submodule.span ℂ (Set.range fun w => schr ψ w (ind O κ)) =
        (Submodule.span ℂ (Set.range fun x => S.rho x ⟨ind O κ, ind_mem_SB h.compact h.isOpen⟩)).map
          (GlobalTheory.WeilM.SB (κ → R)).subtype := by
      rw [Submodule.map_span, ← Set.range_comp]
      congr 1
      ext f
      constructor
      · rintro ⟨w, rfl⟩
        refine ⟨d.e.symm w, ?_⟩
        simp [hrho, GlobalTheory.WeilM.Darboux.rho]
      · rintro ⟨x, rfl⟩
        exact ⟨d.e x, by simp [hrho, GlobalTheory.WeilM.Darboux.rho]⟩
    rw [hmap] at hg
    obtain ⟨y, hy, hyg⟩ := Submodule.mem_map.1 hg
    have hyg' : y = g := Subtype.ext hyg
    rwa [← hyg']
  · intro h0
    have h5 := congrArg (fun g : GlobalTheory.WeilM.SB (κ → R) => (g : (κ → R) → ℂ) 0) h0
    simp [ind] at h5

end GlobalTheory.CompanionTheory.StdLattice
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsStd =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.Irreducible =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.Irreducible", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.LaEqSqrtSmulLam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.Algebra.Module.BigOperators\npublic import Mathlib.LinearAlgebra.Finsupp.LinearCombination\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.FinHeis.Irred

open GlobalTheory.CompanionTheory.FinHeis

variable {X M : Type} [AddCommGroup X] [AddCommGroup M] [Module ℂ M] (S : Sys X M)

theorem c_ne (x y : X) : S.c x y ≠ 0 := by
  intro h
  have := S.c_norm x y
  rw [h, norm_zero] at this
  exact zero_ne_one this

theorem rho_comm (x y : X) (v : M) :
    S.rho x (S.rho y v) = S.c x y ^ 2 • S.rho y (S.rho x v) := by
  rw [S.rho_rho, S.rho_rho, smul_smul, add_comm y x]
  congr 1
  linear_combination (-S.c x y) * _root_.GlobalTheory.CompanionTheory.FinHeis.Sys.c_mul_c_swap S x y

theorem eigen {al : X → ℂ} {Γ : AddSubgroup X} {φ : M} (hs : IsSemi S al Γ) (hl : Law S al Γ φ)
    {γ : X} (hγ : γ ∈ Γ) (x : X) :
    al γ • S.rho γ (S.rho x φ) = S.c γ x ^ 2 • S.rho x φ := by
  have ha : al γ ≠ 0 := by
    rcases hs.1 γ hγ with h | h <;> rw [h] <;> norm_num
  rw [rho_comm, hl γ hγ, map_smul, smul_smul, smul_smul]
  congr 1
  field_simp

theorem mem_of_sum {al : X → ℂ} {Γ : AddSubgroup X} {φ : M} (hd : SelfDual S Γ)
    (hs : IsSemi S al Γ) (hl : Law S al Γ φ) (N : Submodule ℂ M)
    (hN : ∀ x, ∀ v ∈ N, S.rho x v ∈ N) (s : Finset X) :
    ∀ a : X → ℂ, (∑ x ∈ s, a x • S.rho x φ) ∈ N → (∑ x ∈ s, a x • S.rho x φ) ≠ 0 → φ ∈ N := by
  classical
  induction s using Finset.strongInduction with
  | H s ih =>
    intro a hm hne
    have key : ∀ γ ∈ Γ, ∀ x₀ ∈ s,
        al γ • S.rho γ (∑ x ∈ s, a x • S.rho x φ) - S.c γ x₀ ^ 2 • (∑ x ∈ s, a x • S.rho x φ)
          = ∑ x ∈ s.erase x₀, (a x * (S.c γ x ^ 2 - S.c γ x₀ ^ 2)) • S.rho x φ := by
      intro γ hγ x₀ _

      rw [Finset.sum_erase _ (by simp), map_sum, Finset.smul_sum, Finset.smul_sum,
      ← Finset.sum_sub_distrib]
      refine Finset.sum_congr rfl fun x _ => ?_
      rw [map_smul, smul_comm (al γ), eigen S hs hl hγ, smul_smul, smul_smul, ← sub_smul]
      congr 1
      ring
    by_cases h : ∃ γ ∈ Γ, ∃ x₀ ∈ s,
        (∑ x ∈ s.erase x₀, (a x * (S.c γ x ^ 2 - S.c γ x₀ ^ 2)) • S.rho x φ) ≠ 0
    · obtain ⟨γ, hγ, x₀, hx₀, h⟩ := h
      refine ih (s.erase x₀) (Finset.erase_ssubset hx₀) _ ?_ h
      rw [← key γ hγ x₀ hx₀]
      exact N.sub_mem (N.smul_mem _ (hN _ _ hm)) (N.smul_mem _ hm)
    · push Not at h
      obtain ⟨x₀, hx₀⟩ : s.Nonempty := by
        rw [Finset.nonempty_iff_ne_empty]
        rintro rfl
        exact hne (by simp)
      have hΓ : ∀ x ∈ s, x - x₀ ∈ Γ := by
        intro x hx
        refine (hd _).2 fun γ hγ => ?_
        have h1 := key γ hγ x hx
        have h2 := key γ hγ x₀ hx₀
        rw [h γ hγ x hx, sub_eq_zero] at h1
        rw [h γ hγ x₀ hx₀, sub_eq_zero, h1] at h2
        have h3 : S.c γ x ^ 2 = S.c γ x₀ ^ 2 := smul_left_injective ℂ hne h2
        have h4 := S.c_add_right γ (x - x₀) x₀
        rw [sub_add_cancel] at h4
        rw [h4, mul_pow] at h3
        exact mul_right_cancel₀ (pow_ne_zero 2 (c_ne S γ x₀)) (by rw [h3, one_mul])
      have hx : ∀ x ∈ s, S.rho x φ = ((S.c x₀ (x - x₀))⁻¹ * (al (x - x₀))⁻¹) • S.rho x₀ φ := by
        intro x hx
        have h1 := S.rho_rho x₀ (x - x₀) φ
        rw [hl _ (hΓ x hx), map_smul, add_sub_cancel] at h1
        rw [mul_smul, h1, smul_smul, inv_mul_cancel₀ (c_ne S _ _), one_smul]
      have hv : (∑ x ∈ s, a x • S.rho x φ)
          = (∑ x ∈ s, a x * ((S.c x₀ (x - x₀))⁻¹ * (al (x - x₀))⁻¹)) • S.rho x₀ φ := by
        rw [Finset.sum_smul]
        refine Finset.sum_congr rfl fun x hxs => ?_
        rw [hx x hxs, smul_smul]
      rw [hv] at hm hne
      have h0 := (N.smul_mem_iff (left_ne_zero_of_smul hne)).1 hm
      have h1 := hN (-x₀) _ h0
      rw [S.rho_rho, neg_add_cancel, S.rho_zero] at h1
      exact (N.smul_mem_iff (c_ne S _ _)).1 h1

theorem irreducible : ∀ {X M : Type} [AddCommGroup X] [AddCommGroup M] [Module ℂ M] (S : Sys X M)
    (al : X → ℂ) (Γ : AddSubgroup X) (φ : M), SelfDual S Γ → IsSemi S al Γ → Law S al Γ φ →
    Cyclic S φ →
    (∀ N : Submodule ℂ M, (∀ x, ∀ v ∈ N, S.rho x v ∈ N) → N = ⊥ ∨ N = ⊤) ∧
      ∀ v : M, v ≠ 0 → Cyclic S v := by
  intro X M _ _ _ S al Γ φ hd hs hl hc
  have main : ∀ N : Submodule ℂ M, (∀ x, ∀ v ∈ N, S.rho x v ∈ N) → N = ⊥ ∨ N = ⊤ := by
    intro N hN
    rw [or_iff_not_imp_left]
    intro hb
    obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hb
    have hmem : v ∈ Submodule.span ℂ (Set.range fun x => S.rho x φ) := by
      rw [hc]; trivial
    obtain ⟨f, hf⟩ := Finsupp.mem_span_range_iff_exists_finsupp.1 hmem
    have hφ : φ ∈ N := by
      refine mem_of_sum S hd hs hl N hN f.support f ?_ ?_
      · rw [← hf] at hv
        exact hv
      · exact fun h => hv0 (hf.symm.trans h)
    rw [eq_top_iff, ← hc, Submodule.span_le]
    rintro _ ⟨x, rfl⟩
    exact hN x φ hφ
  refine ⟨main, fun v hv => ?_⟩
  have hinv : ∀ x, ∀ w ∈ Submodule.span ℂ (Set.range fun x => S.rho x v),
      S.rho x w ∈ Submodule.span ℂ (Set.range fun x => S.rho x v) := by
    intro x w hw
    induction hw using Submodule.span_induction with
    | mem w hw =>
      obtain ⟨y, rfl⟩ := hw
      show S.rho x (S.rho y v) ∈ _
      rw [S.rho_rho]
      exact Submodule.smul_mem _ _ (Submodule.subset_span ⟨x + y, rfl⟩)
    | zero => simp
    | add a b _ _ ha hb => rw [map_add (f := _)]; exact Submodule.add_mem _ ha hb
    | smul c a _ ha => rw [map_smul]; exact Submodule.smul_mem _ _ ha
  rcases main _ hinv with h | h
  · exfalso
    have : v ∈ Submodule.span ℂ (Set.range fun x => S.rho x v) :=
      Submodule.subset_span ⟨0, S.rho_zero v⟩
    rw [h] at this
    exact hv this
  · exact h

end GlobalTheory.CompanionTheory.FinHeis.Irred
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.Irreducible =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalFiniteIdeleFactorization =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalFiniteIdeleFactorization", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.LaEqSqrtSmulLam\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.CStarAlgebra.Classes\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.FinHeis.LawLine

open GlobalTheory.CompanionTheory.FinHeis

variable {X M : Type} [AddCommGroup X] [AddCommGroup M] [Module ℂ M]

theorem rho_comm (S : Sys X M) (x y : X) (v : M) :
    S.rho x (S.rho y v) = S.c x y ^ 2 • S.rho y (S.rho x v) := by
  rw [S.9 x y v, S.9 y x v, smul_smul, add_comm y x]
  congr 1
  have h := _root_.GlobalTheory.CompanionTheory.FinHeis.Sys.c_mul_c_swap S x y
  calc S.c x y = S.c x y * (S.c x y * S.c y x) := by rw [h, mul_one]
    _ = S.c x y ^ 2 * S.c y x := by ring

theorem orth (S : Sys X M) (al : X → ℂ) (Γ : AddSubgroup X) (φ φ' : M) (x : X)
    (hΓ : SelfDual S Γ) (hal : IsSemi S al Γ) (hφ : Law S al Γ φ) (hφ' : Law S al Γ φ')
    (hx : x ∉ Γ) : S.B φ' (S.rho x φ) = 0 := by
  have hΓ₀ : ∀ y, y ∈ Γ ↔ ∀ γ ∈ Γ, S.c γ y ^ 2 = 1 := hΓ
  obtain ⟨hal₁, -⟩ : (∀ y ∈ Γ, al y = 1 ∨ al y = -1) ∧
      ∀ y ∈ Γ, ∀ z ∈ Γ, al (y + z) = al y * al z * S.c y z := hal
  have hφ₀ : ∀ γ ∈ Γ, S.rho γ φ = (al γ)⁻¹ • φ := hφ
  have hφ₀' : ∀ γ ∈ Γ, S.rho γ φ' = (al γ)⁻¹ • φ' := hφ'
  have hnot : ¬ ∀ γ ∈ Γ, S.c γ x ^ 2 = 1 := fun h => hx ((hΓ₀ x).2 h)
  push_neg at hnot
  obtain ⟨γ, hγ, hcx⟩ := hnot
  have hinv := S.12 γ φ' (S.rho x φ)
  rw [hφ₀' γ hγ, GlobalTheory.CompanionTheory.FinHeis.LawLine.rho_comm S γ x φ, hφ₀ γ hγ] at hinv
  simp only [LinearMap.map_smulₛₗ₂, map_smul, smul_eq_mul] at hinv
  have hunit : (starRingEnd ℂ) (al γ)⁻¹ * (al γ)⁻¹ = 1 := by
    rcases hal₁ γ hγ with h1 | h1 <;> simp [h1]
  have hzero : (S.c γ x ^ 2 - 1) * S.B φ' (S.rho x φ) = 0 := by
    linear_combination hinv - (S.c γ x ^ 2 * S.B φ' (S.rho x φ)) * hunit
  rcases mul_eq_zero.1 hzero with h | h
  · exact absurd (sub_eq_zero.1 h) hcx
  · exact h

theorem law_line {X M : Type} [AddCommGroup X] [AddCommGroup M] [Module ℂ M] (S : Sys X M)
    (al : X → ℂ) (Γ : AddSubgroup X) (φ φ' : M) (hΓ : SelfDual S Γ) (hal : IsSemi S al Γ)
    (hφ : Law S al Γ φ) (hc : Cyclic S φ) (hφ' : Law S al Γ φ') : ∃ a : ℂ, φ' = a • φ := by
  have hφ₀ : ∀ γ ∈ Γ, S.rho γ φ = (al γ)⁻¹ • φ := hφ
  have hφ₀' : ∀ γ ∈ Γ, S.rho γ φ' = (al γ)⁻¹ • φ' := hφ'
  have hc₀ : Submodule.span ℂ (Set.range fun x => S.rho x φ) = ⊤ := hc
  obtain ⟨a, ha⟩ : ∃ a : ℂ, a = S.B φ φ' / S.B φ φ := ⟨_, rfl⟩
  obtain ⟨ψ, hψ⟩ : ∃ ψ : M, ψ = φ' - a • φ := ⟨_, rfl⟩
  have hψeig : ∀ γ ∈ Γ, S.rho γ ψ = (al γ)⁻¹ • ψ := by
    intro γ hγ
    rw [hψ, map_sub, map_smul, hφ₀' γ hγ, hφ₀ γ hγ, smul_sub, smul_comm (al γ)⁻¹ a φ]
  have hBφψ : S.B φ ψ = 0 := by
    by_cases h0 : φ = 0
    · rw [h0, map_zero, LinearMap.zero_apply]
    · have hpos := S.11 φ h0
      have hne : S.B φ φ ≠ 0 := fun h => by
        rw [h, Complex.zero_re] at hpos
        exact lt_irrefl _ hpos
      rw [hψ, map_sub, map_smul, smul_eq_mul, ha, div_mul_cancel₀ _ hne, sub_self]
  have hall : ∀ x, S.B ψ (S.rho x φ) = 0 := by
    intro x
    by_cases hx : x ∈ Γ
    · rw [hφ₀ x hx, map_smul, smul_eq_mul, ← S.10 φ ψ, hBφψ, map_zero, mul_zero]
    · exact GlobalTheory.CompanionTheory.FinHeis.LawLine.orth S al Γ φ ψ x hΓ hal hφ hψeig hx
  have hker : Submodule.span ℂ (Set.range fun x => S.rho x φ) ≤ LinearMap.ker (S.B ψ) := by
    rw [Submodule.span_le]
    rintro _ ⟨x, rfl⟩
    rw [SetLike.mem_coe, LinearMap.mem_ker]
    exact hall x
  have hmem : ψ ∈ Submodule.span ℂ (Set.range fun x => S.rho x φ) := by
    rw [hc₀]
    exact Submodule.mem_top
  have hψψ : S.B ψ ψ = 0 := LinearMap.mem_ker.1 (hker hmem)
  have hψ0 : ψ = 0 := by
    by_contra hne
    have hpos := S.11 ψ hne
    rw [hψψ, Complex.zero_re] at hpos
    exact lt_irrefl _ hpos
  refine ⟨a, ?_⟩
  rw [hψ] at hψ0
  exact sub_eq_zero.1 hψ0

end GlobalTheory.CompanionTheory.FinHeis.LawLine
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalFiniteIdeleFactorization =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.CyclicAndLine =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.MembershipProofs.CyclicAndLine", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.MembershipCriteria.GoodChar\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.ExistsStd\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.Irreducible\npublic import Development.AutomorphicSpectrum.Proofs.MembershipProofs.RationalFiniteIdeleFactorization\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open GlobalTheory.CompanionTheory.VacLoc GlobalTheory.CompanionTheory.FinHeis GlobalTheory.WeilM MeasureTheory Matrix

namespace GlobalTheory.CompanionTheory.VacLoc.ModelLine

theorem cyclic_and_line : ∀ {R : Type} [CommRing R] [TopologicalSpace R] [IsTopologicalRing R] [LocallyCompactSpace R]
    [T2Space R] [Invertible (2 : R)] (ψ : AddChar R ℂ) (O : Subring R) (u : Rˣ) {W : Type} [AddCommGroup W] [Module R W]
    {B : W → W → R} {κ : Type} [Fintype κ] (d : Darboux B κ) (μ : @Measure (κ → R) (borel _)) (S : Sys W (SB (κ → R)))
    (Γ : AddSubgroup W) (al : W → ℂ) (φ φ' : SB (κ → R)), GoodChar ψ O u → IsModel ψ d μ S →
    (φ ≠ 0 → Cyclic S φ) ∧
      (SelfDual S Γ → IsSemi S al Γ → Law S al Γ φ → Law S al Γ φ' → φ ≠ 0 → ∃ a : ℂ, φ' = a • φ) := by
  intro R _ _ _ _ _ _ ψ O u W _ _ B κ _ d μ S Γ al φ φ' hg hm
  obtain ⟨Γ₀, al₀, φ₀, h1, h2, h3, h4, _⟩ := _root_.GlobalTheory.CompanionTheory.StdLattice.exists_std ψ O u d μ S hg hm
  have hcyc : φ ≠ 0 → Cyclic S φ := fun h =>
    (GlobalTheory.CompanionTheory.FinHeis.Irred.irreducible S al₀ Γ₀ φ₀ h1 h2 h3 h4).2 φ h
  refine ⟨hcyc, fun hΓ hal hφ hφ' h0 => ?_⟩
  exact GlobalTheory.CompanionTheory.FinHeis.LawLine.law_line S al Γ φ φ' hΓ hal hφ (hcyc h0) hφ'

end GlobalTheory.CompanionTheory.VacLoc.ModelLine
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.MembershipProofs.CyclicAndLine =====
