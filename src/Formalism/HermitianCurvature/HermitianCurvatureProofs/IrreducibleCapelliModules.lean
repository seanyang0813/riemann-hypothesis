module

public import Formalism.HermitianCurvature.CapelliDeterminantAndBranching
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.QuantumDetHighestWeightHolds
public import Mathlib.LinearAlgebra.Eigenspace.Minpoly
public import Mathlib.LinearAlgebra.Eigenspace.Basic
public import Mathlib.LinearAlgebra.Eigenspace.Triangularizable
public import Mathlib.LinearAlgebra.Lagrange
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorCommutation
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorExpansion
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BorderedDeterminants
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliAbstractCharacter
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.CommonEigenvectors
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.HighestWeightPolynomials
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.WeightMonotonicity
import Mathlib.NumberTheory.Height.NumberField
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.BranchingSystems, Formalism.HermitianCurvature.HermitianCurvatureProofs.ClosureOperators, Formalism.HermitianCurvature.HermitianCurvatureProofs.StarSumLemmas, Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictBoxOrder, Formalism.HermitianCurvature.HermitianCurvatureProofs.IrreducibleCapelliModules

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BranchingSystems =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.BranchingSystems", "h": "module\n\npublic import Formalism.HermitianCurvature.CapelliDeterminantAndBranching\npublic import Formalism.RealPlaceAnalysis.RealPlaceTaylor.QuantumDetHighestWeightHolds\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Minpoly\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace Formalism.FourierDecayAlt.P.BranchingSystems

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr

theorem between {n : ℕ} {L : Fin (n + 1) → ℤ} (hL : StrictAnti L) (i : Fin n) {x : ℤ}
    (h1 : L i.succ < x) (h2 : x < L i.castSucc) (j : Fin (n + 1)) : x ≠ L j := by
  intro hx
  subst hx
  rcases le_or_gt j i.castSucc with hj | hj
  · have h3 := hL.antitone hj
    omega
  · have hj' : i.succ ≤ j := Fin.castSucc_lt_iff_succ_le.mp hj
    have h3 := hL.antitone hj'
    omega

section Comb

variable {n : ℕ} {L : Fin (n + 1) → ℤ} {P : (Fin n → ℤ) → Prop}

theorem runUp (hR : ∀ M, P M → ∀ i, (∀ j, M i ≠ L j) → P (Function.update M i (M i + 1)))
    (M : Fin n → ℤ) (i : Fin n) (t0 : ℤ) (h0 : P (Function.update M i t0)) (t : ℤ) (ht : t0 ≤ t) :
    (∀ t', t0 ≤ t' → t' < t → ∀ j, t' ≠ L j) → P (Function.update M i t) := by
  induction t, ht using Int.leInduction with
  | base => intro _; exact h0
  | succ t ht ih =>
    intro hv
    have hP := ih (fun t' h1 h2 => hv t' h1 (by omega))
    have h2 := hR _ hP i (by simpa using hv t ht (by omega))
    simpa using h2

theorem runDown (hD : ∀ M, P M → ∀ i, (∀ j, M i - 1 ≠ L j) → P (Function.update M i (M i - 1)))
    (M : Fin n → ℤ) (i : Fin n) (t0 : ℤ) (h0 : P (Function.update M i t0)) (t : ℤ) (ht : t ≤ t0) :
    (∀ t', t ≤ t' → t' < t0 → ∀ j, t' ≠ L j) → P (Function.update M i t) := by
  induction t, ht using Int.leInductionDown with
  | base => intro _; exact h0
  | pred t ht ih =>
    intro hv
    have hP := ih (fun t' h1 h2 => hv t' (by omega) h2)
    have h2 := hD _ hP i (by simpa using hv (t - 1) le_rfl (by omega))
    simpa using h2

structure Sys {n : ℕ} (L : Fin (n + 1) → ℤ) (P : (Fin n → ℤ) → Prop) : Prop where
  anti : StrictAnti L
  inj : ∀ M, P M → Function.Injective M
  top : P (fun j => L j.castSucc)
  up : ∀ M, P M → ∀ i, (∀ j, M i ≠ L j) → P (Function.update M i (M i + 1))
  down : ∀ M, P M → ∀ i, (∀ j, M i - 1 ≠ L j) → P (Function.update M i (M i - 1))
  fin : ∀ M i, {t : ℤ | P (Function.update M i t)}.Finite

theorem Sys.box (h : Sys L P) (M : Fin n → ℤ) (hM : Box L M) : P M := by
  have key : ∀ s : Finset (Fin n), P (fun j => if j ∈ s then M j else L j.castSucc) := by
    intro s
    refine Finset.induction_on s (by simpa using h.top) ?_
    intro a s ha ih
    have e : (fun j => if j ∈ insert a s then M j else L j.castSucc) =
        Function.update (fun j => if j ∈ s then M j else L j.castSucc) a (M a) := by
      funext j
      by_cases hj : j = a
      · subst hj
        simp
      · simp [hj]
    rw [e]
    have h0 : P (Function.update (fun j => if j ∈ s then M j else L j.castSucc) a (L a.castSucc)) := by
      have e2 : Function.update (fun j => if j ∈ s then M j else L j.castSucc) a (L a.castSucc) =
          (fun j => if j ∈ s then M j else L j.castSucc) := by
        rw [Function.update_eq_self_iff]
        simp [ha]
      rw [e2]
      exact ih
    have hMa := hM a
    exact runDown h.down _ a (L a.castSucc) h0 (M a) hMa.2
      (fun t' h1 h2 j => between h.anti a (by omega) h2 j)
  simpa using key Finset.univ

theorem Sys.noUp (h : Sys L P) (M : Fin n → ℤ) (hM : Box L M) (i : Fin n) (hi : M i = L i.castSucc) :
    ¬ P (Function.update M i (M i + 1)) := by
  intro h0
  by_cases hz : (i : ℕ) = 0
  · have hall : ∀ t, M i + 1 ≤ t → P (Function.update M i t) := fun t ht =>
      runUp h.up M i _ h0 t ht (fun t' a _ j e => by
        have : L j ≤ L i.castSucc := h.anti.antitone (by rw [Fin.le_def]; simp [hz])
        omega)
    exact (Set.infinite_of_injective_forall_mem (f := fun s : ℕ => M i + 1 + (s : ℤ))
      (fun a b e => by simpa using e) (fun s => hall _ (by omega))) (h.fin M i)
  · let i' : Fin n := ⟨i - 1, by omega⟩
    have e1 : i'.succ = i.castSucc := by
      ext
      simp [i']
      omega
    have b1 := (hM i').1
    rw [e1, ← hi] at b1
    have h1 := runUp h.up M i _ h0 (M i') (by omega)
      (fun t' a b => between h.anti i' (by rw [e1]; omega) (by have := (hM i').2; omega))
    have hne : i' ≠ i := by
      intro e
      have := congrArg Fin.val e
      simp [i'] at this
      omega
    exact hne (h.inj _ h1 (by simp [Function.update_of_ne hne]))

theorem Sys.noDown (h : Sys L P) (M : Fin n → ℤ) (hM : Box L M) (i : Fin n) (hi : M i = L i.succ + 1) :
    ¬ P (Function.update M i (M i - 1)) := by
  intro h0
  by_cases hz : (i : ℕ) + 1 = n
  · have hall : ∀ t, t ≤ M i - 1 → P (Function.update M i t) := fun t ht =>
      runDown h.down M i _ h0 t ht (fun t' _ b j e => by
        have : L i.succ ≤ L j := h.anti.antitone (by
          rw [Fin.le_def]
          have := j.2
          simp
          omega)
        omega)
    exact (Set.infinite_of_injective_forall_mem (f := fun s : ℕ => M i - 1 - (s : ℤ))
      (fun a b e => by simpa using e) (fun s => hall _ (by omega))) (h.fin M i)
  · let i' : Fin n := ⟨i + 1, by have := i.2; omega⟩
    have e1 : i'.castSucc = i.succ := by
      ext
      simp [i']
    have b1 := (hM i').2
    rw [e1] at b1
    have h1 := runDown h.down M i _ h0 (M i') (by omega)
      (fun t' a b => between h.anti i' (by have := (hM i').1; omega) (by rw [e1]; omega))
    have hne : i' ≠ i := by
      intro e
      have := congrArg Fin.val e
      simp [i'] at this
    exact hne (h.inj _ h1 (by simp [Function.update_of_ne hne]))

end Comb

theorem shf_update {n : ℕ} (β : ℂ) (M : Fin n → ℤ) (i : Fin n) (t : ℤ) :
    Function.update (shf β M) i (β + (t : ℂ)) = shf β (Function.update M i t) := by
  funext j
  by_cases h : j = i
  · subst h
    simp [shf]
  · simp [shf, Function.update_of_ne h]

theorem shf_up {n : ℕ} (β : ℂ) (M : Fin n → ℤ) (i : Fin n) :
    Function.update (shf β M) i (shf β M i + 1) = shf β (Function.update M i (M i + 1)) := by
  rw [← shf_update]
  simp [shf]
  ring_nf

theorem shf_down {n : ℕ} (β : ℂ) (M : Fin n → ℤ) (i : Fin n) :
    Function.update (shf β M) i (shf β M i - 1) = shf β (Function.update M i (M i - 1)) := by
  rw [← shf_update]
  simp [shf]
  ring_nf

theorem sdec_shf {n : ℕ} (β : ℂ) {L : Fin n → ℤ} (hL : StrictAnti L) : SDec (shf β L) := by
  intro a b hab
  have h := hL hab
  refine ⟨(L a - L b - 1).toNat, ?_⟩
  simp only [shf]
  have e : ((L a - L b - 1).toNat : ℤ) = L a - L b - 1 := Int.toNat_of_nonneg (by omega)
  have e2 : (((L a - L b - 1).toNat : ℕ) : ℂ) = ((L a - L b - 1 : ℤ) : ℂ) := by exact_mod_cast e
  rw [e2]
  push_cast
  ring

section Cap

variable {V : Type} [AddCommGroup V] [Module ℂ V] [FiniteDimensional ℂ V]

theorem fin_cap {n : ℕ} (E : Fin n → Fin n → Module.End ℂ V) (β : ℂ) (M : Fin n → ℤ) (i : Fin n) :
    {t : ℤ | CapSp E (shf β (Function.update M i t)) ≠ ⊥}.Finite := by
  obtain ⟨w, hw⟩ := Infinite.exists_notMem_finset (Finset.univ.image fun j : Fin n => -(shf β M j))
  have hc : (∏ j ∈ Finset.univ.erase i, (w + shf β M j)) ≠ 0 := by
    rw [Finset.prod_ne_zero_iff]
    intro j _ h0
    apply hw
    rw [Finset.mem_image]
    exact ⟨j, Finset.mem_univ _, by linear_combination -h0⟩
  have hf : ∀ t : ℤ, cpol (shf β (Function.update M i t)) w =
      (w + β + (t : ℂ)) * ∏ j ∈ Finset.univ.erase i, (w + shf β M j) := by
    intro t
    unfold cpol
    rw [← Finset.mul_prod_erase Finset.univ _ (Finset.mem_univ i)]
    congr 1
    · simp [shf]; ring
    · apply Finset.prod_congr rfl
      intro j hj
      have hne : j ≠ i := Finset.ne_of_mem_erase hj
      simp [shf, Function.update_of_ne hne]
  refine Set.Finite.subset (Set.Finite.preimage
    (f := fun t : ℤ => cpol (shf β (Function.update M i t)) w) ?_
    (Module.End.finite_hasEigenvalue (qdet E w))) ?_
  · intro a _ b _ e
    simp only [hf] at e
    have e1 := mul_right_cancel₀ hc e
    have e2 : (a : ℂ) = b := by linear_combination e1
    exact_mod_cast e2
  · intro t ht
    obtain ⟨v, hv, hv0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot ht
    exact Module.End.hasEigenvalue_of_hasEigenvector
      ⟨Module.End.mem_eigenspace_iff.mpr (mem_CapSp.mp hv w), hv0⟩

theorem sys_of (hSM : ExistsSingMax) (hCS : CapSing) (hSR : SubRel) (hR : RaiseNZ) (hLo : LowerNZ)
    {n : ℕ} {E : Fin (n + 1) → Fin (n + 1) → Module.End ℂ V} {β : ℂ} {L : Fin (n + 1) → ℤ}
    (H : Hyp E β L) : Sys L (fun M => CapSp (subA E) (shf β M) ≠ ⊥) := by
  have gl' : GlRel (subA E) := (hSR (Module.End ℂ V) n E H.gl).1
  have hinj : ∀ M : Fin n → ℤ, CapSp (subA E) (shf β M) ≠ ⊥ → Function.Injective (shf β M) :=
    fun M hM => (hCS V n (subA E) _ gl' hM).1
  refine ⟨H.anti, ?_, ?_, ?_, ?_, fun M i => fin_cap (subA E) β M i⟩
  · intro M hM a b hab
    exact hinj M hM (by simp [shf, hab])
  · have := H.irr.1
    obtain ⟨ν, v, -, hv0, hHW, -⟩ := hSM V (n + 1) E H.gl ⊤ (fun _ _ _ _ => Submodule.mem_top) top_ne_bot
    have hvL : v ∈ CapSp E (shf β L) := mem_CapSp.mpr fun w => H.cap w v
    have hne : CapSp E (shf β L) ≠ ⊥ := fun e => hv0 (by rw [e] at hvL; simpa using hvL)
    have hν := (hCS V (n + 1) E _ H.gl hne).2 (sdec_shf β H.anti) ν v hvL hv0 hHW
    have hHW' : IsHW (subA E) (fun k => ν k.castSucc) v :=
      ⟨fun a => hHW.1 a.castSucc, fun a b hab => hHW.2 _ _ (Fin.castSucc_lt_castSucc_iff.mpr hab)⟩
    have hmem : v ∈ CapSp (subA E) (shf β fun j => L j.castSucc) := by
      rw [mem_CapSp]
      intro w
      rw [quantumDetHighestWeight_holds V n (subA E) _ v gl' hHW' w]
      congr 1
      unfold cpol
      apply Finset.prod_congr rfl
      intro k _
      rw [hν]
      simp [shf]
    intro e
    rw [e] at hmem
    exact hv0 (by simpa using hmem)
  · intro M hM i hj
    have := hR V n E (shf β L) H.gl H.cap (shf β M) (hinj M hM) hM i
      (fun j e => hj j (by simpa [shf] using e))
    rwa [shf_up] at this
  · intro M hM i hj
    have := hLo V n E (shf β L) H.gl H.cap (shf β M) (hinj M hM) hM i (fun j e => hj j (by
      simp only [shf] at e
      have e2 : ((M i - 1 : ℤ) : ℂ) = (L j : ℂ) := by
        push_cast
        linear_combination e
      exact_mod_cast e2))
    rwa [shf_down] at this

end Cap

end Formalism.FourierDecayAlt.P.BranchingSystems

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr BranchingSystems

theorem qr_decomp_of : Qr.ExistsSingMax → Qr.CapSing → Qr.CapStab → Qr.SubRel → Qr.CovUp → Qr.VecDown →
    Qr.RaiseNZ → Qr.LowerNZ → Qr.Decomp := by
  intro hSM hCS hSt hSR hCU hVD hR hLo V _ _ _ n E β L H
  have S := sys_of hSM hCS hSR hR hLo H
  obtain ⟨gl', hcov, hvec, -, hyy, hnn⟩ := hSR (Module.End ℂ V) n E H.gl
  refine ⟨fun M hM => S.box M hM, ?_⟩
  set V' : Submodule ℂ V := ⨆ (M : Fin n → ℤ) (_ : Box L M), CapSp (subA E) (shf β M) with hV'
  have hle : ∀ M, Box L M → CapSp (subA E) (shf β M) ≤ V' := fun M hM =>
    le_iSup₂ (f := fun (M : Fin n → ℤ) (_ : Box L M) => CapSp (subA E) (shf β M)) M hM
  have hstab : Stab E V' := by
    intro a b
    suffices h : V' ≤ V'.comap (E a b) from fun v hv => h hv
    refine iSup₂_le fun M hM v hv => ?_
    rw [Submodule.mem_comap]
    have hMinj : Function.Injective (shf β M) := (hCS V n (subA E) _ gl' (S.box M hM)).1
    induction a using Fin.lastCases with
    | last =>
      induction b using Fin.lastCases with
      | last => exact hle M hM ((hSt V n (subA E) _ gl').2 _ hnn v hv)
      | cast x =>
        obtain ⟨Φ, h1, h2, -⟩ := hVD V n (subA E) (yK E) gl' hvec hyy (shf β M) hMinj v hv
        change yK E x v ∈ V'
        rw [← h1 x]
        refine Submodule.sum_mem _ fun i _ => ?_
        have h3 := h2 i x
        rw [shf_down] at h3
        by_cases hi : M i = L i.succ + 1
        · have := not_not.mp (S.noDown M hM i hi)
          rw [this] at h3
          rw [(Submodule.mem_bot ℂ).mp h3]
          exact Submodule.zero_mem _
        · refine hle _ ?_ h3
          intro j
          by_cases hj : j = i
          · subst hj
            have := hM j
            simp only [Function.update_self]
            omega
          · rw [Function.update_of_ne hj]
            exact hM j
    | cast y =>
      induction b using Fin.lastCases with
      | last =>
        obtain ⟨Ψ, h1, h2, -⟩ := hCU V n (subA E) (etaK E) gl' hcov (shf β M) hMinj v hv
        change etaK E y v ∈ V'
        rw [← h1 y]
        refine Submodule.sum_mem _ fun i _ => ?_
        have h3 := h2 i y
        rw [shf_up] at h3
        by_cases hi : M i = L i.castSucc
        · have := not_not.mp (S.noUp M hM i hi)
          rw [this] at h3
          rw [(Submodule.mem_bot ℂ).mp h3]
          exact Submodule.zero_mem _
        · refine hle _ ?_ h3
          intro j
          by_cases hj : j = i
          · subst hj
            have := hM j
            simp only [Function.update_self]
            omega
          · rw [Function.update_of_ne hj]
            exact hM j
      | cast x => exact hle M hM ((hSt V n (subA E) _ gl').1 y x v hv)
  rcases H.irr.2 V' hstab with h | h
  · exfalso
    have hB : Box L (fun j => L j.castSucc) := fun j => ⟨H.anti (Fin.castSucc_lt_succ), le_rfl⟩
    exact S.top (le_bot_iff.mp (h ▸ hle _ hB))
  · exact h

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.BranchingSystems =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ClosureOperators =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.ClosureOperators", "h": "module\n\npublic import Formalism.HermitianCurvature.CapelliDeterminantAndBranching\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\npublic import Mathlib.LinearAlgebra.Eigenspace.Triangularizable\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.HaveILetI\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import Mathlib.LinearAlgebra.Eigenspace.Basic\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace Formalism.FourierDecayAlt.P.ClosureOperators

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Qr

variable {V : Type} [AddCommGroup V] [Module ℂ V]

def Cl {N : ℕ} (E : Fin N → Fin N → Module.End ℂ V) (L : Fin N → Fin N → Prop) (M : Submodule ℂ V) :
    Submodule ℂ V :=
  sInf {P | M ≤ P ∧ ∀ a b, L a b → ∀ q ∈ P, E a b q ∈ P}

theorem le_Cl {N : ℕ} (E : Fin N → Fin N → Module.End ℂ V) (L : Fin N → Fin N → Prop) (M : Submodule ℂ V) :
    M ≤ Cl E L M := le_sInf fun _ hP => hP.1

theorem Cl_closed {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} {L : Fin N → Fin N → Prop} {M : Submodule ℂ V}
    (a b : Fin N) (h : L a b) (q : V) (hq : q ∈ Cl E L M) : E a b q ∈ Cl E L M := by
  unfold Cl at hq ⊢
  rw [Submodule.mem_sInf] at hq ⊢
  intro P hP
  exact hP.2 a b h q (hq P hP)

theorem Cl_le {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} {L : Fin N → Fin N → Prop} {M : Submodule ℂ V}
    (P : Submodule ℂ V) (h1 : M ≤ P) (h2 : ∀ a b, L a b → ∀ q ∈ P, E a b q ∈ P) : Cl E L M ≤ P :=
  sInf_le ⟨h1, h2⟩

theorem gen {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} (hE : GlRel E) (T L : Fin N → Fin N → Prop)
    (M : Submodule ℂ V)
    (h0 : ∀ a b, T a b → ∀ m ∈ M, E a b m ∈ Cl E L M)
    (h1 : ∀ a b c d, T a b → L c d → b = c → T a d ∨ L a d)
    (h2 : ∀ a b c d, T a b → L c d → d = a → T c b ∨ L c b) :
    ∀ a b, T a b → ∀ q ∈ Cl E L M, E a b q ∈ Cl E L M := by
  have key : Cl E L M ≤ Cl E L M ⊓ ⨅ a, ⨅ b, ⨅ (_ : T a b), (Cl E L M).comap (E a b) := by
    apply Cl_le
    · intro m hm
      simp only [Submodule.mem_inf, Submodule.mem_iInf, Submodule.mem_comap]
      exact ⟨le_Cl E L M hm, fun a b hab => h0 a b hab m hm⟩
    · intro c d hcd q hq
      simp only [Submodule.mem_inf, Submodule.mem_iInf, Submodule.mem_comap] at hq ⊢
      obtain ⟨hq1, hq2⟩ := hq
      refine ⟨Cl_closed c d hcd q hq1, fun a b hab => ?_⟩
      have hc := hE a b c d
      have e : E a b (E c d q) = E c d (E a b q) +
          ((if b = c then E a d else 0) - (if d = a then E c b else 0)) q := by
        rw [← hc]
        simp only [LinearMap.sub_apply, Module.End.mul_apply]
        abel
      rw [e]
      refine Submodule.add_mem _ (Cl_closed c d hcd _ (hq2 a b hab)) ?_
      rw [LinearMap.sub_apply]
      refine Submodule.sub_mem _ ?_ ?_
      · split_ifs with hbc
        · rcases h1 a b c d hab hcd hbc with h | h
          · exact hq2 a d h
          · exact Cl_closed a d h q hq1
        · simp
      · split_ifs with hda
        · rcases h2 a b c d hab hcd hda with h | h
          · exact hq2 c b h
          · exact Cl_closed c b h q hq1
        · simp
  intro a b hab q hq
  have hk := key hq
  simp only [Submodule.mem_inf, Submodule.mem_iInf, Submodule.mem_comap] at hk
  exact hk.2 a b hab

theorem mono_succ {n : ℕ} (f : Fin (n + 1) → Module.End ℂ V) (a : Fin (n + 1) → ℕ) :
    mono f a = f 0 ^ a 0 * mono (fun x => f x.succ) (fun x => a x.succ) := by
  simp only [mono, List.ofFn_succ, List.prod_cons]

theorem mono_zero : ∀ {n : ℕ} (f : Fin n → Module.End ℂ V), mono f (fun _ => 0) = 1 := by
  intro n
  induction n with
  | zero => intro f; simp [mono]
  | succ k ih =>
    intro f
    rw [mono_succ]
    simp only [pow_zero, one_mul]
    exact ih _

theorem mul_mono : ∀ {n : ℕ} (f : Fin n → Module.End ℂ V), (∀ a b, f a * f b = f b * f a) →
    ∀ (a : Fin n → ℕ) (x : Fin n), ∃ a' : Fin n → ℕ, f x * mono f a = mono f a' := by
  intro n
  induction n with
  | zero => intro f _ a x; exact x.elim0
  | succ k ih =>
    intro f hf a x
    cases x using Fin.cases with
    | zero =>
      refine ⟨Fin.cons (a 0 + 1) (fun y => a y.succ), ?_⟩
      rw [mono_succ, mono_succ]
      simp only [Fin.cons_zero, Fin.cons_succ]
      rw [pow_succ', mul_assoc]
    | succ y =>
      obtain ⟨a'', h''⟩ := ih (fun z => f z.succ) (fun p q => hf _ _) (fun z => a z.succ) y
      refine ⟨Fin.cons (a 0) a'', ?_⟩
      rw [mono_succ, mono_succ]
      simp only [Fin.cons_zero, Fin.cons_succ]
      rw [← mul_assoc, ((show Commute (f y.succ) (f 0) from hf _ _).pow_right (a 0)).eq, mul_assoc, h'']

def MS {n : ℕ} (f : Fin n → Module.End ℂ V) (v : V) : Submodule ℂ V :=
  Submodule.span ℂ (Set.range fun a : Fin n → ℕ => mono f a v)

theorem mem_MS {n : ℕ} (f : Fin n → Module.End ℂ V) (v : V) : v ∈ MS f v := by
  apply Submodule.subset_span
  exact ⟨fun _ => 0, by simp [mono_zero]⟩

theorem MS_closed {n : ℕ} (f : Fin n → Module.End ℂ V) (hf : ∀ a b, f a * f b = f b * f a) (v : V) (x : Fin n) :
    ∀ p ∈ MS f v, f x p ∈ MS f v := by
  intro p hp
  have hle : MS f v ≤ (MS f v).comap (f x) := by
    unfold MS
    rw [Submodule.span_le]
    rintro _ ⟨a, rfl⟩
    obtain ⟨a', ha'⟩ := mul_mono f hf a x
    show f x (mono f a v) ∈ Submodule.span ℂ (Set.range fun a : Fin n → ℕ => mono f a v)
    rw [show f x (mono f a v) = (f x * mono f a) v from rfl, ha']
    exact Submodule.subset_span ⟨a', rfl⟩
  exact hle hp

theorem MS_le_ker {n : ℕ} (f : Fin n → Module.End ℂ V) (v : V) (ξ : Module.Dual ℂ V)
    (h : ∀ a : Fin n → ℕ, ξ (mono f a v) = 0) : MS f v ≤ LinearMap.ker ξ := by
  unfold MS
  rw [Submodule.span_le]
  rintro _ ⟨a, rfl⟩
  exact LinearMap.mem_ker.mpr (h a)

theorem yK_comm {n : ℕ} {E : Fin (n + 1) → Fin (n + 1) → Module.End ℂ V} (hE : GlRel E) (a b : Fin n) :
    yK E a * yK E b = yK E b * yK E a := by
  have h := hE (Fin.last n) a.castSucc (Fin.last n) b.castSucc
  rw [if_neg (Fin.castSucc_lt_last a).ne, if_neg (Fin.castSucc_lt_last b).ne, sub_zero] at h
  exact sub_eq_zero.mp h

theorem etaK_comm {n : ℕ} {E : Fin (n + 1) → Fin (n + 1) → Module.End ℂ V} (hE : GlRel E) (a b : Fin n) :
    etaK E a * etaK E b = etaK E b * etaK E a := by
  have h := hE a.castSucc (Fin.last n) b.castSucc (Fin.last n)
  rw [if_neg (Fin.castSucc_lt_last b).ne', if_neg (Fin.castSucc_lt_last a).ne', sub_zero] at h
  exact sub_eq_zero.mp h

theorem exists_castSucc {n : ℕ} (a : Fin (n + 1)) (h : a ≠ Fin.last n) : ∃ a' : Fin n, a = a'.castSucc := by
  first
  | exact ⟨a.castPred h, (Fin.castSucc_castPred a h).symm⟩

theorem top_of_stab {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} (hI : Irr E) (S : Submodule ℂ V) (hS : Stab E S)
    (v : V) (hv : v ∈ S) (hv0 : v ≠ 0) : S = ⊤ := by
  refine (hI.2 S hS).resolve_left (fun h => hv0 ?_)
  rw [h] at hv
  exact (Submodule.mem_bot ℂ).mp hv

theorem trace_comm {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} (hE : GlRel E) (a b : Fin N) :
    (∑ c, E c c) * E a b = E a b * ∑ c, E c c := by
  rw [Finset.sum_mul, Finset.mul_sum, ← sub_eq_zero, ← Finset.sum_sub_distrib]
  rw [Finset.sum_congr rfl (fun c _ => hE c c a b), Finset.sum_sub_distrib]
  simp

theorem trace_scalar [FiniteDimensional ℂ V] {N : ℕ} {E : Fin N → Fin N → Module.End ℂ V} (hE : GlRel E)
    (hI : Irr E) : ∃ ζ : ℂ, ∀ v : V, (∑ c, E c c) v = ζ • v := by
  haveI := hI.1
  obtain ⟨ζ, hζ⟩ := Module.End.exists_eigenvalue (∑ c, E c c)
  refine ⟨ζ, fun v => ?_⟩
  have hS : Stab E (LinearMap.ker ((∑ c, E c c) - ζ • 1)) := by
    intro a b w hw
    rw [LinearMap.mem_ker] at hw ⊢
    have e := congrArg (fun g : Module.End ℂ V => g w) (trace_comm hE a b)
    simp only [Module.End.mul_apply] at e
    rw [LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply] at hw ⊢
    rw [e, sub_eq_zero.mp hw, map_smul, sub_self]
  obtain ⟨w, hw⟩ := hζ.exists_hasEigenvector
  have hmem : w ∈ LinearMap.ker ((∑ c, E c c) - ζ • 1) := by
    rw [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, sub_eq_zero]
    exact hw.apply_eq_smul
  have htop := top_of_stab hI _ hS w hmem hw.2
  have hv : v ∈ LinearMap.ker ((∑ c, E c c) - ζ • 1) := by rw [htop]; trivial
  rw [LinearMap.mem_ker, LinearMap.sub_apply, LinearMap.smul_apply, Module.End.one_apply, sub_eq_zero] at hv
  exact hv

end Formalism.FourierDecayAlt.P.ClosureOperators

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Qr ClosureOperators

private theorem MS_le_of_mem_of_invariant {V : Type} [AddCommGroup V] [Module ℂ V] {n : ℕ} (f : Fin n → Module.End ℂ V)
    (v : V) (P : Submodule ℂ V) (hv : v ∈ P) (hf : ∀ x, ∀ q ∈ P, f x q ∈ P) : MS f v ≤ P := by
  have key : ∀ (k : ℕ) (g : Fin k → Module.End ℂ V), (∀ x, ∀ q ∈ P, g x q ∈ P) →
      ∀ b : Fin k → ℕ, mono g b v ∈ P := by
    intro k
    induction k with
    | zero =>
      intro g _ b
      have h1 : mono g b = 1 := by simp [mono]
      rw [h1]
      exact hv
    | succ k ih =>
      intro g hg b
      rw [mono_succ, Module.End.mul_apply]
      have h2 := ih (fun x => g x.succ) (fun x q hq => hg x.succ q hq) (fun x => b x.succ)
      generalize b 0 = j
      induction j with
      | zero => rw [pow_zero, Module.End.one_apply]; exact h2
      | succ j ihj => rw [pow_succ', Module.End.mul_apply]; exact hg 0 _ ihj
  unfold MS
  rw [Submodule.span_le]
  rintro _ ⟨b, rfl⟩
  exact key n f hf b

theorem span_top_vectors : Qr.SpanTop := by
  intro V _ _ n E ν v₀ hE hI hW hv0 ξ hξ hm
  let L : Fin (n + 1) → Fin (n + 1) → Prop := fun a b => a ≠ Fin.last n ∧ b ≠ Fin.last n ∧ b < a
  let M : Submodule ℂ V := MS (yK E) v₀
  have hyc : ∀ a b, yK E a * yK E b = yK E b * yK E a := yK_comm hE
  have hMC : M ≤ Cl E L M := le_Cl E L M
  have hv₀M : v₀ ∈ M := mem_MS (yK E) v₀
  have hNL : ∀ b, ¬ L (Fin.last n) b := fun b h => h.1 rfl
  have hY : ∀ (x : Fin n), ∀ q ∈ Cl E L M, E (Fin.last n) x.castSucc q ∈ Cl E L M := by
    intro x q hq
    refine gen hE (fun a b => a = Fin.last n ∧ b ≠ Fin.last n) L M ?_ ?_ ?_ _ _
      ⟨rfl, (Fin.castSucc_lt_last x).ne⟩ q hq
    · rintro a b ⟨rfl, hb⟩ m hm'
      obtain ⟨b', rfl⟩ := exists_castSucc b hb
      exact hMC (MS_closed (yK E) hyc v₀ b' m hm')
    · rintro a b c d ⟨ha, _⟩ ⟨_, hd, _⟩ _
      exact Or.inl ⟨ha, hd⟩
    · rintro a b c d ⟨ha, _⟩ ⟨_, hd, _⟩ hda
      exact absurd (hda.trans ha) hd
  let N : Submodule ℂ V :=
    { carrier := {m | m ∈ Cl E L M ∧ ∀ a b, ¬ L a b → E a b m ∈ Cl E L M}
      add_mem' := fun {x y} hx hy => ⟨add_mem hx.1 hy.1, fun a b h => by
        rw [LinearMap.map_add]
        exact add_mem (hx.2 a b h) (hy.2 a b h)⟩
      zero_mem' := ⟨zero_mem _, fun a b _ => by rw [map_zero]; exact zero_mem _⟩
      smul_mem' := fun c x hx => ⟨Submodule.smul_mem _ c hx.1, fun a b h => by
        rw [map_smul]; exact Submodule.smul_mem _ c (hx.2 a b h)⟩ }
  have hv₀N : v₀ ∈ N := by
    refine ⟨hMC hv₀M, ?_⟩
    intro a b hab
    rcases lt_trichotomy a b with h | rfl | h
    · rw [hW.2 a b h]; exact zero_mem _
    · rw [hW.1 a]; exact Submodule.smul_mem _ _ (hMC hv₀M)
    · have ha : a = Fin.last n := by
        by_contra ha
        exact hab ⟨ha, ne_of_lt (lt_of_lt_of_le h (Fin.le_last a)), h⟩
      subst ha
      obtain ⟨b', rfl⟩ := exists_castSucc b (ne_of_lt h)
      exact hMC (MS_closed (yK E) hyc v₀ b' v₀ hv₀M)
  have hNy : ∀ (x : Fin n), ∀ m ∈ N, yK E x m ∈ N := by
    intro x m hm
    obtain ⟨hm1, hm2⟩ : m ∈ Cl E L M ∧ ∀ a b, ¬ L a b → E a b m ∈ Cl E L M := hm
    refine ⟨hY x m hm1, ?_⟩
    intro a b hab
    have hrel := LinearMap.congr_fun (hE a b (Fin.last n) x.castSucc) m
    simp only [LinearMap.sub_apply, Module.End.mul_apply] at hrel
    have key : E a b (yK E x m) = E (Fin.last n) x.castSucc (E a b m) +
        ((if b = Fin.last n then E a x.castSucc else 0) m -
          (if x.castSucc = a then E (Fin.last n) b else 0) m) := by
      show E a b (E (Fin.last n) x.castSucc m) = _
      rw [sub_eq_iff_eq_add.mp hrel, add_comm]
    rw [key]
    refine add_mem (hY x _ (hm2 a b hab)) (sub_mem ?_ ?_)
    · split_ifs with hb
      · by_cases hL : L a x.castSucc
        · exact Cl_closed a x.castSucc hL m hm1
        · exact hm2 a x.castSucc hL
      · rw [LinearMap.zero_apply]; exact zero_mem _
    · split_ifs with hxa
      · exact hm2 (Fin.last n) b (hNL b)
      · rw [LinearMap.zero_apply]; exact zero_mem _
  have hMN : M ≤ N := MS_le_of_mem_of_invariant (yK E) v₀ N hv₀N hNy
  have hStab : Stab E (Cl E L M) := by
    intro a b q hq
    by_cases hab : L a b
    · exact Cl_closed a b hab q hq
    · refine gen hE (fun a b => ¬ L a b) L M ?_ (fun a b c d _ _ _ => (em (L a d)).symm)
        (fun a b c d _ _ _ => (em (L c b)).symm) a b hab q hq
      intro a b h m hm'
      have h' : m ∈ Cl E L M ∧ ∀ a b, ¬ L a b → E a b m ∈ Cl E L M := hMN hm'
      exact h'.2 a b h
  have htop : Cl E L M = ⊤ := top_of_stab hI _ hStab v₀ (hMC hv₀M) hv0
  have hker : Cl E L M ≤ LinearMap.ker ξ := by
    apply Cl_le
    · exact MS_le_ker (yK E) v₀ ξ hm
    · intro a b hab q _
      obtain ⟨ha, hb, hba⟩ := hab
      obtain ⟨a', rfl⟩ := exists_castSucc a ha
      obtain ⟨b', rfl⟩ := exists_castSucc b hb
      rw [LinearMap.mem_ker]
      exact hξ a' b' (Fin.castSucc_lt_castSucc_iff.mp hba) q
  ext v
  have hv : v ∈ Cl E L M := by rw [htop]; exact Submodule.mem_top
  rw [LinearMap.zero_apply]
  exact LinearMap.mem_ker.mp (hker hv)

theorem span_singular_vectors : Qr.SpanSing := by
  intro V _ _ _ n E ξ₀ μ w hE hI hξ0 hlow hW hm
  by_contra hw
  obtain ⟨ζ, hζ⟩ := trace_scalar hE hI
  let M : Submodule ℂ V := MS (etaK E) w
  have hec : ∀ a b, etaK E a * etaK E b = etaK E b * etaK E a := etaK_comm hE
  have hwM : w ∈ M := mem_MS (etaK E) w
  have hMη : ∀ (x : Fin n), ∀ q ∈ M, E x.castSucc (Fin.last n) q ∈ M :=
    fun x q hq => MS_closed (etaK E) hec w x q hq
  have hw_up : ∀ a b : Fin (n + 1), a ≤ b → E a b w ∈ M := by
    intro a b hab
    by_cases hb : b = Fin.last n
    · subst hb
      by_cases ha : a = Fin.last n
      · subst ha
        have htr := hζ w
        rw [LinearMap.sum_apply, Fin.sum_univ_castSucc] at htr
        have hdiag : ∀ i : Fin n, E i.castSucc i.castSucc w = μ i • w := fun i => hW.1 i
        have hE' : E (Fin.last n) (Fin.last n) w = ζ • w - ∑ i : Fin n, μ i • w := by
          rw [← htr]
          simp only [hdiag]
          abel
        rw [hE']
        exact sub_mem (Submodule.smul_mem _ _ hwM) (sum_mem fun i _ => Submodule.smul_mem _ _ hwM)
      · obtain ⟨a', rfl⟩ := exists_castSucc a ha
        exact hMη a' w hwM
    · obtain ⟨b', rfl⟩ := exists_castSucc b hb
      have ha : a ≠ Fin.last n := by
        rintro rfl
        exact absurd hab (not_le.mpr (Fin.castSucc_lt_last b'))
      obtain ⟨a', rfl⟩ := exists_castSucc a ha
      rcases (Fin.castSucc_le_castSucc_iff.mp hab).lt_or_eq with h | h
      · rw [show E a'.castSucc b'.castSucc w = subA E a' b' w from rfl, hW.2 a' b' h]
        exact zero_mem _
      · subst h
        rw [show E a'.castSucc a'.castSucc w = subA E a' a' w from rfl, hW.1 a']
        exact Submodule.smul_mem _ _ hwM
  let N : Submodule ℂ V :=
    { carrier := {m | m ∈ M ∧ ∀ a b : Fin (n + 1), a ≤ b → E a b m ∈ M}
      add_mem' := fun {x y} hx hy => ⟨add_mem hx.1 hy.1, fun a b h => by
        rw [LinearMap.map_add]
        exact add_mem (hx.2 a b h) (hy.2 a b h)⟩
      zero_mem' := ⟨zero_mem _, fun a b _ => by rw [map_zero]; exact zero_mem _⟩
      smul_mem' := fun c x hx => ⟨Submodule.smul_mem _ c hx.1, fun a b h => by
        rw [map_smul]; exact Submodule.smul_mem _ c (hx.2 a b h)⟩ }
  have hNη : ∀ (x : Fin n), ∀ m ∈ N, etaK E x m ∈ N := by
    intro x m hm
    obtain ⟨hm1, hm2⟩ : m ∈ M ∧ ∀ a b : Fin (n + 1), a ≤ b → E a b m ∈ M := hm
    refine ⟨hMη x m hm1, ?_⟩
    intro a b hab
    have hrel := LinearMap.congr_fun (hE a b x.castSucc (Fin.last n)) m
    simp only [LinearMap.sub_apply, Module.End.mul_apply] at hrel
    have key : E a b (etaK E x m) = E x.castSucc (Fin.last n) (E a b m) +
        ((if b = x.castSucc then E a (Fin.last n) else 0) m -
          (if Fin.last n = a then E x.castSucc b else 0) m) := by
      show E a b (E x.castSucc (Fin.last n) m) = _
      rw [sub_eq_iff_eq_add.mp hrel, add_comm]
    rw [key]
    refine add_mem (hMη x _ (hm2 a b hab)) (sub_mem ?_ ?_)
    · split_ifs with hb
      · exact hm2 a (Fin.last n) (Fin.le_last a)
      · rw [LinearMap.zero_apply]; exact zero_mem _
    · split_ifs with ha
      · subst ha
        have hb : b = Fin.last n := le_antisymm (Fin.le_last b) hab
        subst hb
        exact hm2 x.castSucc (Fin.last n) (Fin.le_last _)
      · rw [LinearMap.zero_apply]; exact zero_mem _
  have hwN : w ∈ N := ⟨hwM, hw_up⟩
  have hMN : M ≤ N := MS_le_of_mem_of_invariant (etaK E) w N hwN hNη
  let L : Fin (n + 1) → Fin (n + 1) → Prop := fun a b => b < a
  have hStab : Stab E (Cl E L M) := by
    intro a b q hq
    rcases lt_or_ge b a with hab | hab
    · exact Cl_closed a b hab q hq
    · refine gen hE (fun a b => a ≤ b) L M ?_ (fun a b c d _ _ _ => le_or_gt a d)
        (fun a b c d _ _ _ => le_or_gt c b) a b hab q hq
      intro a b h m hm'
      have h' : m ∈ M ∧ ∀ a b : Fin (n + 1), a ≤ b → E a b m ∈ M := hMN hm'
      exact le_Cl E L M (h'.2 a b h)
  have htop := top_of_stab hI _ hStab w (le_Cl E L M hwM) hw
  apply hξ0
  have hker : Cl E L M ≤ LinearMap.ker ξ₀ := by
    apply Cl_le
    · exact MS_le_ker (etaK E) w ξ₀ hm
    · intro a b hab q _
      rw [LinearMap.mem_ker]
      exact hlow a b hab q
  ext v
  have hv : v ∈ Cl E L M := by rw [htop]; exact Submodule.mem_top
  rw [LinearMap.zero_apply]
  exact LinearMap.mem_ker.mp (hker hv)

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.ClosureOperators =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StarSumLemmas =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.StarSumLemmas", "h": "module\n\npublic import Formalism.HermitianCurvature.CapelliDeterminantAndBranching\npublic import Mathlib.LinearAlgebra.Lagrange\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorCommutation\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.QuantumMinorExpansion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Finset Polynomial

noncomputable section

namespace Formalism.FourierDecayAlt.P.DeterminantVectorSums

open Formalism.REAL Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr

section ring

variable {A : Type} [Ring A] [Algebra ℂ A] {N : ℕ} (E : Fin (N + 1) → Fin (N + 1) → A)

def Tch (u : ℂ) (j l : Fin (N + 1)) : A :=
  ((-1 : ℂ) ^ ((j : ℕ) + (l : ℕ))) • qminor E j.succAbove l.succAbove u

theorem zs (k : ℕ) (a : A) : ((-1 : ℤ) ^ k) • a = ((-1 : ℂ) ^ k) • a := by
  rw [← Int.cast_smul_eq_zsmul ℂ]
  push_cast
  rfl

theorem sumT (hE : GlRel E) (w : ℂ) (j c : Fin (N + 1)) :
    ∑ l, Tch E (w - 1) j l * Tm E w c l = if c = j then qdet E w else 0 := by
  have h := QuantumMinorExpansion.sumA E hE id id j c w
  simp only [Function.id_comp, id_eq, zs] at h
  have h2 := congrArg (fun z => ((-1 : ℂ) ^ (j : ℕ)) • z) h
  simp only [Finset.smul_sum, smul_smul, ← pow_add] at h2
  simp only [Tch, smul_mul_assoc]
  rw [h2]
  split_ifs
  · rw [smul_smul, ← pow_add, Even.neg_one_pow ⟨_, rfl⟩, one_smul]
    rfl
  · rw [smul_zero]

theorem detVecR (hE : GlRel E) (y : Fin (N + 1) → A) (hy : IsVec E y) (w : ℂ) (j : Fin (N + 1)) :
    qdet E w * y j = y j * qdet E w - ∑ l, Tch E (w - 1) j l * y l := by
  have h := sumT E hE w j j
  rw [if_pos rfl] at h
  rw [← h, Finset.sum_mul, Finset.mul_sum, ← Finset.sum_sub_distrib]
  refine Finset.sum_congr rfl (fun l _ => ?_)
  have hM : Commute (y j) (Tch E (w - 1) j l) := by
    refine Commute.smul_right (QuantumMinorCommutation.commute_qminor E _ _ _ _ (fun s s' => ?_)) _
    have := hy (j.succAbove s) (l.succAbove s') j
    rw [if_neg (Fin.succAbove_ne j s), sub_eq_zero] at this
    exact this.symm
  have hT : Tm E w j l * y j - y j * Tm E w j l = -y l := by
    rw [QuantumMinorCommutation.Tm_comm, hy, if_pos rfl]
  have hT' : Tm E w j l * y j = y j * Tm E w j l - y l := by
    rw [sub_eq_add_neg, ← hT]; abel
  rw [mul_assoc, hT', mul_sub, ← mul_assoc, ← hM.eq, mul_assoc]

theorem star (hE : GlRel E) (y : Fin (N + 1) → A) (hy : IsVec E y) (w : ℂ) (j : Fin (N + 1)) :
    ∑ l, Tch E (w - 1) j l * ((w + 1) • y l + ∑ c, E c l * y c) = y j * qdet E w := by
  have h1 : ∀ l, (w + 1) • y l + ∑ c, E c l * y c = y l + ∑ c, Tm E w c l * y c := by
    intro l
    simp only [Tm, add_mul, Finset.sum_add_distrib, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
    rw [add_smul, one_smul, Algebra.smul_def]
    abel
  simp only [h1, mul_add, Finset.sum_add_distrib, Finset.mul_sum]
  rw [Finset.sum_comm]
  simp only [← mul_assoc, ← Finset.sum_mul, sumT E hE, ite_mul, zero_mul, Finset.sum_ite_eq', Finset.mem_univ, if_true]
  rw [detVecR E hE y hy]
  abel

theorem vecD (hE : GlRel E) (y : Fin (N + 1) → A) (hy : IsVec E y) : IsVec E (fun l => ∑ c, E c l * y c) := by
  intro a b l
  have h1 : ∀ c, E a b * (E c l * y c) - E c l * y c * E a b =
      ((if b = c then E a l else 0) - (if l = a then E c b else 0)) * y c + E c l * (if a = c then -y b else 0) := by
    intro c
    rw [← hE a b c l, ← hy a b c]
    noncomm_ring
  simp only []
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib]
  simp only [h1, sub_mul, ite_mul, zero_mul, mul_ite, mul_zero, Finset.sum_add_distrib, Finset.sum_sub_distrib,
    Finset.sum_ite_eq, Finset.mem_univ, if_true]
  by_cases hal : a = l
  · subst hal
    simp only [if_true, mul_neg]
    abel
  · rw [if_neg hal]
    simp [Ne.symm hal]

theorem vec_add {y z : Fin (N + 1) → A} (hy : IsVec E y) (hz : IsVec E z) : IsVec E (fun l => y l + z l) := by
  intro a b c
  have h1 := hy a b c
  have h2 := hz a b c
  simp only [mul_add, add_mul]
  rw [add_sub_add_comm, h1, h2]
  split_ifs <;> simp [add_comm]

theorem vec_smul (k : ℂ) {y : Fin (N + 1) → A} (hy : IsVec E y) : IsVec E (fun l => k • y l) := by
  intro a b c
  have h1 := hy a b c
  simp only [mul_smul_comm, smul_mul_assoc]
  rw [← smul_sub, h1]
  split_ifs <;> simp

end ring

section abs

variable {W : Type} [AddCommGroup W] [Module ℂ W]

theorem coeffs (hPV : PolyVanish) (K : Module.End ℂ W) (A : ℕ → Module.End ℂ W) (d : ℕ) (P : ℂ[X])
    (hP : P.natDegree < d + 1) (x : W)
    (h : ∀ u : ℂ, (∑ s ∈ range d, u ^ s • A s) (u • x - K x) = P.eval u • x) :
    ∀ s ∈ range (d + 1),
      (if s = 0 then 0 else A (s - 1) x) - (if s < d then A s (K x) else 0) = P.coeff s • x := by
  intro s hs
  have key := hPV W (d + 1)
    (fun s => (if s = 0 then 0 else A (s - 1) x) - (if s < d then A s (K x) else 0) - P.coeff s • x) ∅ ?_ s hs
  · exact sub_eq_zero.1 key
  intro u _
  have hu := h u
  simp only [smul_sub, Finset.sum_sub_distrib]
  have e1 : ∑ s ∈ range (d + 1), u ^ s • (if s = 0 then (0 : W) else A (s - 1) x) =
      ∑ s ∈ range d, u ^ s • A s (u • x) := by
    rw [Finset.sum_range_succ']
    simp only [if_true, smul_zero, add_zero, Nat.succ_ne_zero, if_false, Nat.add_sub_cancel, map_smul, smul_smul, pow_succ]
  have e2 : ∑ s ∈ range (d + 1), u ^ s • (if s < d then A s (K x) else (0 : W)) =
      ∑ s ∈ range d, u ^ s • A s (K x) := by
    rw [Finset.sum_range_succ, if_neg (lt_irrefl d), smul_zero, add_zero]
    refine Finset.sum_congr rfl (fun s hs => ?_)
    rw [if_pos (Finset.mem_range.1 hs)]
  have e3 : ∑ s ∈ range (d + 1), u ^ s • P.coeff s • x = P.eval u • x := by
    rw [Polynomial.eval_eq_sum_range' hP, Finset.sum_smul]
    refine Finset.sum_congr rfl (fun s _ => ?_)
    rw [smul_smul, mul_comm]
  rw [e1, e2, e3, ← hu, ← Finset.sum_sub_distrib]
  simp only [LinearMap.sum_apply, LinearMap.smul_apply, map_sub]
  rw [Finset.sum_sub_distrib, sub_self]

theorem pow_mem (G : Submodule ℂ W) (K : Module.End ℂ W) (hK : ∀ x ∈ G, K x ∈ G) (s : ℕ) : ∀ x ∈ G, (K ^ s) x ∈ G := by
  induction s with
  | zero => intro x hx; simpa using hx
  | succ s ih =>
    intro x hx
    rw [pow_succ', Module.End.mul_apply]
    exact hK _ (ih x hx)

theorem aeval_mem (G : Submodule ℂ W) (K : Module.End ℂ W) (hK : ∀ x ∈ G, K x ∈ G) (q : ℂ[X]) :
    ∀ x ∈ G, aeval K q x ∈ G := by
  intro x hx
  rw [Polynomial.aeval_eq_sum_range, LinearMap.sum_apply]
  refine Submodule.sum_mem _ (fun s _ => ?_)
  rw [LinearMap.smul_apply]
  exact Submodule.smul_mem _ _ (pow_mem G K hK s x hx)

theorem ch (hPV : PolyVanish) (G : Submodule ℂ W) (K : Module.End ℂ W) (hK : ∀ x ∈ G, K x ∈ G)
    (A : ℕ → Module.End ℂ W) (d : ℕ) (P : ℂ[X]) (hP : P.natDegree < d + 1)
    (h : ∀ x ∈ G, ∀ u : ℂ, (∑ s ∈ range d, u ^ s • A s) (u • x - K x) = P.eval u • x) :
    ∀ x ∈ G, aeval K P x = 0 := by
  intro x hx
  rw [Polynomial.aeval_eq_sum_range' hP, LinearMap.sum_apply]
  have h1 : ∀ s ∈ range (d + 1), (P.coeff s • K ^ s) x =
      (if s = 0 then 0 else A (s - 1) ((K ^ s) x)) - (if s < d then A s (K ((K ^ s) x)) else 0) := by
    intro s hs
    rw [LinearMap.smul_apply]
    exact (coeffs hPV K A d P hP _ (h _ (pow_mem G K hK s x hx)) s hs).symm
  rw [Finset.sum_congr rfl h1, Finset.sum_sub_distrib, Finset.sum_range_succ', Finset.sum_range_succ (fun s => if s < d then _ else _),
    if_neg (lt_irrefl d), if_pos rfl, add_zero, add_zero, sub_eq_zero]
  refine Finset.sum_congr rfl (fun s hs => ?_)
  rw [if_pos (Finset.mem_range.1 hs), if_neg (Nat.succ_ne_zero s), Nat.add_sub_cancel, pow_succ', Module.End.mul_apply]

theorem basis_mul {n : ℕ} (r : Fin n → ℂ) (i : Fin n) :
    (X - C (r i)) * Lagrange.basis univ r i =
      C (∏ j ∈ univ.erase i, (r i - r j)⁻¹) * ∏ j, (X - C (r j)) := by
  unfold Lagrange.basis Lagrange.basisDivisor
  rw [Finset.prod_mul_distrib, ← map_prod, ← Finset.mul_prod_erase univ _ (Finset.mem_univ i)]
  ring

theorem decomp (hPV : PolyVanish) (G : Submodule ℂ W) (K : Module.End ℂ W) (hK : ∀ x ∈ G, K x ∈ G)
    (A : ℕ → Module.End ℂ W) (N : ℕ) (r : Fin (N + 1) → ℂ) (hr : Function.Injective r)
    (h : ∀ x ∈ G, ∀ u : ℂ, (∑ s ∈ range (N + 1), u ^ s • A s) (u • x - K x) = (∏ j, (u - r j)) • x) :
    ∀ x ∈ G, ∃ Φ : Fin (N + 1) → W, (∀ i, Φ i ∈ G) ∧ ∑ i, Φ i = x ∧
      ∀ i u, (∑ s ∈ range (N + 1), u ^ s • A s) (Φ i) = (∏ j ∈ univ.erase i, (u - r j)) • Φ i := by
  intro x hx
  have hP : (∏ j, (X - C (r j))).natDegree < (N + 1) + 1 := by
    simp
  have hev : ∀ (S : Finset (Fin (N + 1))) (u : ℂ), (∏ j ∈ S, (X - C (r j))).eval u = ∏ j ∈ S, (u - r j) := by
    intro S u
    rw [Polynomial.eval_prod]
    simp
  have hch := ch hPV G K hK A (N + 1) (∏ j, (X - C (r j))) hP (by intro x hx u; rw [hev]; exact h x hx u)
  refine ⟨fun i => aeval K (Lagrange.basis univ r i) x, fun i => aeval_mem G K hK _ x hx, ?_, ?_⟩
  · set_option synthInstance.maxHeartbeats 100000 in
      rw [← LinearMap.sum_apply, ← map_sum, Lagrange.sum_basis (hr.injOn) Finset.univ_nonempty,
        map_one, Module.End.one_apply]
  intro i u
  set φ := aeval K (Lagrange.basis univ r i) x with hφ
  have hφG : φ ∈ G := aeval_mem G K hK _ x hx
  have hKφ : K φ = r i • φ := by
    have h1 : aeval K ((X - C (r i)) * Lagrange.basis univ r i) x = 0 := by
      rw [basis_mul, map_mul, Module.End.mul_apply, hch x hx, map_zero]
    rw [map_mul, Module.End.mul_apply, ← hφ, map_sub, aeval_X, aeval_C, LinearMap.sub_apply, sub_eq_zero] at h1
    rw [h1]
    rfl
  have hQ : (∏ j ∈ univ.erase i, (X - C (r j))).natDegree < N + 1 := by
    simp
  have h2 := hPV W (N + 1) (fun s => A s φ - (∏ j ∈ univ.erase i, (X - C (r j))).coeff s • φ) {r i} ?_
  · have h3 : ∑ s ∈ range (N + 1), u ^ s • (A s φ - (∏ j ∈ univ.erase i, (X - C (r j))).coeff s • φ) = 0 :=
      Finset.sum_eq_zero (fun s hs => by rw [h2 s hs, smul_zero])
    simp only [smul_sub, Finset.sum_sub_distrib, sub_eq_zero] at h3
    rw [LinearMap.sum_apply]
    simp only [LinearMap.smul_apply]
    rw [h3, ← hev, Polynomial.eval_eq_sum_range' hQ, Finset.sum_smul]
    refine Finset.sum_congr rfl (fun s _ => ?_)
    rw [smul_smul, mul_comm]
  intro u hu
  have hne : u - r i ≠ 0 := sub_ne_zero.2 (by simpa using hu)
  have h4 := h φ hφG u
  rw [hKφ, ← sub_smul, map_smul, ← Finset.mul_prod_erase univ _ (Finset.mem_univ i), mul_smul] at h4
  have h5 := smul_right_injective W hne h4
  simp only [smul_sub, Finset.sum_sub_distrib, sub_eq_zero]
  rw [LinearMap.sum_apply] at h5
  simp only [LinearMap.smul_apply] at h5
  rw [h5, ← hev, Polynomial.eval_eq_sum_range' hQ, Finset.sum_smul]
  refine Finset.sum_congr rfl (fun s _ => ?_)
  rw [smul_smul, mul_comm]

end abs

section mod

variable {V : Type} [AddCommGroup V] [Module ℂ V] {N : ℕ} (E : Fin (N + 1) → Fin (N + 1) → Module.End ℂ V)

def Gd (v : V) : Submodule ℂ (Fin (N + 1) → V) where
  carrier := {x | ∃ y : Fin (N + 1) → Module.End ℂ V, IsVec E y ∧ ∀ l, x l = y l v}
  add_mem' := by
    rintro x x' ⟨y, hy, hx⟩ ⟨y', hy', hx'⟩
    exact ⟨_, vec_add E hy hy', fun l => by rw [Pi.add_apply, hx, hx']; rfl⟩
  zero_mem' := ⟨fun _ => 0, fun a b c => by simp, fun l => rfl⟩
  smul_mem' := by
    rintro k x ⟨y, hy, hx⟩
    exact ⟨_, vec_smul E k hy, fun l => by rw [Pi.smul_apply, hx]; rfl⟩

def EE : Module.End ℂ (Fin (N + 1) → V) := LinearMap.pi fun l => ∑ c, (E c l) ∘ₗ LinearMap.proj c

theorem EE_apply (x : Fin (N + 1) → V) (l : Fin (N + 1)) : EE E x l = ∑ c, E c l (x c) := by
  simp [EE, LinearMap.sum_apply]

def MM (T : Fin (N + 1) → Fin (N + 1) → Module.End ℂ V) : Module.End ℂ (Fin (N + 1) → V) :=
  LinearMap.pi fun j => ∑ l, (T j l) ∘ₗ LinearMap.proj l

theorem MM_apply (T : Fin (N + 1) → Fin (N + 1) → Module.End ℂ V) (x : Fin (N + 1) → V) (j : Fin (N + 1)) :
    MM T x j = ∑ l, T j l (x l) := by
  simp [MM, LinearMap.sum_apply]

theorem EE_mem (hE : GlRel E) (v : V) : ∀ x ∈ Gd E v, EE E x ∈ Gd E v := by
  rintro x ⟨y, hy, hx⟩
  refine ⟨_, vecD E hE y hy, fun l => ?_⟩
  rw [EE_apply, LinearMap.sum_apply]
  exact Finset.sum_congr rfl (fun c _ => by rw [hx]; rfl)

theorem main (hQ : QminorPoly) (hPV : PolyVanish) (y : Fin (N + 1) → Module.End ℂ V) (hE : GlRel E) (hy : IsVec E y)
    (m : Fin (N + 1) → ℂ) (hm : Function.Injective m) (v : V) (hv : v ∈ CapSp E m) :
    ∃ Φ : Fin (N + 1) → Fin (N + 1) → V,
      (∀ x, ∑ i, Φ i x = y x v) ∧
      (∀ i x, Φ i x ∈ CapSp E (Function.update m i (m i - 1))) ∧
      ∀ (i x : Fin (N + 1)) (u : ℂ),
        ∑ l : Fin (N + 1), ((-1 : ℂ) ^ ((x : ℕ) + (l : ℕ))) • qminor (t := N) E (skip1 x) (skip1 l) (u - 1) (Φ i l) =
          (∏ j ∈ Finset.univ.erase i, (u + m j)) • Φ i x := by
  choose cf hcf using fun j l : Fin (N + 1) => hQ (Module.End ℂ V) (N + 1) N E j.succAbove l.succAbove
  have hMM : ∀ u : ℂ, ∑ s ∈ range (N + 1), u ^ s • MM (fun j l => ((-1 : ℂ) ^ ((j : ℕ) + (l : ℕ))) • cf j l s) =
      MM (Tch E u) := by
    intro u
    refine LinearMap.ext (fun x => ?_)
    funext j
    rw [MM_apply, LinearMap.sum_apply, Finset.sum_apply]
    simp only [LinearMap.smul_apply, Pi.smul_apply, MM_apply, Tch, hcf, Finset.smul_sum, LinearMap.sum_apply]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl (fun l _ => Finset.sum_congr rfl (fun s _ => ?_))
    rw [smul_comm]
  have hv' := mem_CapSp.1 hv
  have hK : ∀ x ∈ Gd E v, (-((2 : ℂ) • (1 : Module.End ℂ (Fin (N + 1) → V)) + EE E)) x ∈ Gd E v := by
    intro x hx
    rw [LinearMap.neg_apply, LinearMap.add_apply, LinearMap.smul_apply]
    exact Submodule.neg_mem _ (Submodule.add_mem _ (Submodule.smul_mem _ _ hx) (EE_mem E hE v x hx))
  have hstar : ∀ x ∈ Gd E v, ∀ u : ℂ,
      (∑ s ∈ range (N + 1), u ^ s • MM (fun j l => ((-1 : ℂ) ^ ((j : ℕ) + (l : ℕ))) • cf j l s))
        (u • x - (-((2 : ℂ) • (1 : Module.End ℂ (Fin (N + 1) → V)) + EE E)) x) = (∏ j, (u - (-1 - m j))) • x := by
    rintro x ⟨z, hz, hx⟩ u
    rw [hMM]
    funext j
    have h1 := congrArg (fun T : Module.End ℂ V => T v) (star E hE z hz (u + 1) j)
    simp only [add_sub_cancel_right, LinearMap.sum_apply, Module.End.mul_apply, LinearMap.add_apply,
      LinearMap.smul_apply, hv' (u + 1), map_smul] at h1
    rw [MM_apply, Pi.smul_apply, hx j]
    have h2 : cpol m (u + 1) = ∏ j, (u - (-1 - m j)) := by
      unfold cpol
      exact Finset.prod_congr rfl (fun j _ => by ring)
    rw [← h2, ← h1]
    refine Finset.sum_congr rfl (fun l _ => ?_)
    congr 1
    simp only [Pi.sub_apply, Pi.smul_apply, LinearMap.neg_apply, LinearMap.add_apply, LinearMap.smul_apply,
      Module.End.one_apply, Pi.neg_apply, Pi.add_apply, EE_apply, hx]
    rw [sub_neg_eq_add, ← add_assoc, ← add_smul]
    congr 2
    ring
  have hr : Function.Injective (fun j => -1 - m j) := by
    intro a b hab
    exact hm (by simpa using hab)
  obtain ⟨Φ, hΦG, hΦs, hΦ⟩ := decomp hPV (Gd E v) _ hK _ N (fun j => -1 - m j) hr hstar (fun l => y l v) ⟨y, hy, fun _ => rfl⟩
  have h3 : ∀ (i x : Fin (N + 1)) (u : ℂ), ∑ l, Tch E (u - 1) x l (Φ i l) = (∏ j ∈ Finset.univ.erase i, (u + m j)) • Φ i x := by
    intro i x u
    have := congrFun (hΦ i (u - 1)) x
    rw [hMM, MM_apply, Pi.smul_apply] at this
    rw [this]
    congr 1
    exact Finset.prod_congr rfl (fun j _ => by ring)
  refine ⟨Φ, fun x => ?_, fun i x => ?_, fun i x u => ?_⟩
  · have := congrFun hΦs x
    rwa [Finset.sum_apply] at this
  · obtain ⟨z, hz, hx⟩ := hΦG i
    rw [mem_CapSp]
    intro w
    have h4 := congrArg (fun T : Module.End ℂ V => T v) (detVecR E hE z hz w x)
    simp only [LinearMap.sub_apply, LinearMap.sum_apply, Module.End.mul_apply, hv' w, map_smul, ← hx] at h4
    rw [h4, h3, ← sub_smul]
    congr 1
    unfold cpol
    rw [← Finset.mul_prod_erase univ _ (Finset.mem_univ i), ← Finset.mul_prod_erase univ (fun j => w + Function.update m i (m i - 1) j) (Finset.mem_univ i),
      Function.update_self]
    have h5 : ∏ j ∈ univ.erase i, (w + Function.update m i (m i - 1) j) = ∏ j ∈ univ.erase i, (w + m j) :=
      Finset.prod_congr rfl (fun j hj => by rw [Function.update_of_ne (Finset.ne_of_mem_erase hj)])
    rw [h5]
    ring
  · rw [← h3]
    simp only [QuantumMinorCommutation.skip_one_eq_succAbove]
    rfl

end mod

end Formalism.FourierDecayAlt.P.DeterminantVectorSums

open Formalism.FourierDecayAlt.Qr in
theorem Formalism.FourierDecayAlt.P.qr_vecDown_of : QminorPoly → PolyVanish → VecDown := by
  intro hQ hPV V _ _ n E y hE hy _ m hm v hv
  cases n with
  | zero => exact ⟨fun i => i.elim0, fun x => x.elim0, fun i => i.elim0, fun i => i.elim0⟩
  | succ N => exact Formalism.FourierDecayAlt.P.DeterminantVectorSums.main E hQ hPV y hE hy m hm v hv
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StarSumLemmas =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictBoxOrder =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictBoxOrder", "h": "module\n\npublic import Formalism.HermitianCurvature.CapelliDeterminantAndBranching\nimport Mathlib.Algebra.Module.StablyFree.Basic\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.LinearAlgebra.Matrix.FiniteDimensional\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Matrix Finset

noncomputable section

namespace Formalism.FourierDecayAlt.P.StrictBoxOrder

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr

theorem box_strictAnti {n : ℕ} {L : Fin (n + 1) → ℤ} {M : Fin n → ℤ} (h : Box L M) : StrictAnti M := by
  cases n with
  | zero => intro a; exact a.elim0
  | succ k =>
    rw [Fin.strictAnti_iff_succ_lt]
    intro i
    have h1 := (h i.succ).2
    have h2 := (h i.castSucc).1
    rw [Fin.succ_castSucc] at h2
    exact lt_of_le_of_lt h1 h2

theorem sdec_shf {n : ℕ} (β : ℂ) {M : Fin n → ℤ} (h : StrictAnti M) : SDec (shf β M) := by
  intro a b hab
  have h1 := h hab
  refine ⟨(M a - M b - 1).toNat, ?_⟩
  simp only [shf]
  have h2 : ((M a - M b - 1).toNat : ℤ) = M a - M b - 1 := Int.toNat_of_nonneg (by omega)
  have h3 : (((M a - M b - 1).toNat : ℕ) : ℂ) = ((M a - M b - 1 : ℤ) : ℂ) := by
    rw [← Int.cast_natCast, h2]
  rw [h3]
  push_cast
  ring

variable {V : Type} [AddCommGroup V] [Module ℂ V]

def IsWt {n : ℕ} (E : Fin n → Fin n → Module.End ℂ V) (v : V) : Prop := ∀ c, ∃ t : ℂ, E c c v = t • v

theorem isWt_vec {n : ℕ} {E : Fin n → Fin n → Module.End ℂ V} {y : Fin n → Module.End ℂ V} (hy : IsVec E y)
    (x : Fin n) (v : V) (h : IsWt E v) : IsWt E (y x v) := by
  intro c
  obtain ⟨t, ht⟩ := h c
  have e := congrArg (fun g : Module.End ℂ V => g v) (hy c c x)
  simp only [LinearMap.sub_apply, Module.End.mul_apply, ht, map_smul] at e
  by_cases hcx : c = x
  · subst hcx
    rw [if_pos rfl, LinearMap.neg_apply, sub_eq_iff_eq_add] at e
    refine ⟨t - 1, ?_⟩
    rw [e, sub_smul, one_smul]
    abel
  · rw [if_neg hcx, LinearMap.zero_apply, sub_eq_zero] at e
    exact ⟨t, e⟩

theorem list_prod_pres (P : V → Prop) (l : List (Module.End ℂ V)) (h : ∀ f ∈ l, ∀ v, P v → P (f v)) :
    ∀ v, P v → P (l.prod v) := by
  induction l with
  | nil => intro v hv; simpa using hv
  | cons f l ih =>
    intro v hv
    rw [List.prod_cons, Module.End.mul_apply]
    exact h f (by simp) _ (ih (fun g hg => h g (by simp [hg])) v hv)

theorem pow_pres (P : V → Prop) (f : Module.End ℂ V) (h : ∀ v, P v → P (f v)) (k : ℕ) :
    ∀ v, P v → P ((f ^ k) v) := by
  induction k with
  | zero => intro v hv; simpa using hv
  | succ k ih =>
    intro v hv
    rw [pow_succ, Module.End.mul_apply]
    exact ih _ (h v hv)

theorem isWt_mono {n : ℕ} {E : Fin n → Fin n → Module.End ℂ V} {y : Fin n → Module.End ℂ V} (hy : IsVec E y)
    (a : Fin n → ℕ) (v : V) (h : IsWt E v) : IsWt E (mono y a v) := by
  unfold mono
  refine list_prod_pres (IsWt E) _ (fun f hf => ?_) v h
  simp only [List.mem_ofFn] at hf
  obtain ⟨x, rfl⟩ := hf
  exact pow_pres (IsWt E) (y x) (fun w hw => isWt_vec hy x w hw) (a x)

theorem core (hESM : ExistsSingMax) (hCS : CapSing) (hSR : SubRel) (hTW : TopWeightSing) (hDM : DualMinor)
    (hST : SpanTop) (hMO : MultOne) [FiniteDimensional ℂ V] {n : ℕ}
    (E : Fin (n + 1) → Fin (n + 1) → Module.End ℂ V) (hgl : GlRel E) (hirr : Irr E)
    (m : Fin n → ℂ) (hm : SDec m) (O : Submodule ℂ V) (hO : Stab (subA E) O)
    (hS : Stab (subA E) (CapSp (subA E) m)) (hOq : ∀ w, ∀ v ∈ O, qdet (subA E) w v ∈ O)
    (hdis : Disjoint (CapSp (subA E) m) O) (htop : CapSp (subA E) m ⊔ O = ⊤)
    (S' : Submodule ℂ V) (hS'le : S' ≤ CapSp (subA E) m) (hS' : Stab (subA E) S') (hne : S' ≠ ⊥) :
    S' = CapSp (subA E) m := by
  by_contra hcon
  obtain ⟨hgl', -, hvec, -, -, -⟩ := hSR _ n E hgl
  obtain ⟨hglD, hmin⟩ := hDM V n (subA E) hgl'
  have hdis' := Submodule.disjoint_def.1 hdis

  have hT : S' ⊔ O ≠ ⊤ := by
    intro hT
    apply hcon
    apply le_antisymm hS'le
    intro s hs
    have h1 : s ∈ S' ⊔ O := by rw [hT]; trivial
    obtain ⟨s', hs', t, ht, rfl⟩ := Submodule.mem_sup.1 h1
    have ht2 : t ∈ CapSp (subA E) m := by
      have h2 := (CapSp (subA E) m).sub_mem hs (hS'le hs')
      simpa using h2
    rw [hdis' t ht2 ht, add_zero]; exact hs'
  have hTstab : Stab (subA E) (S' ⊔ O) := by
    intro a b v hv
    obtain ⟨s', hs', t, ht, rfl⟩ := Submodule.mem_sup.1 hv
    rw [map_add (f := _)]
    exact Submodule.add_mem_sup (hS' a b _ hs') (hO a b _ ht)

  have hAnn : (S' ⊔ O).dualAnnihilator ≠ ⊥ := by
    obtain ⟨f, hf0, hf⟩ := Submodule.exists_dual_map_eq_bot_of_lt_top (lt_top_iff_ne_top.2 hT) inferInstance
    intro hbot
    apply hf0
    have h1 : f ∈ (S' ⊔ O).dualAnnihilator := by
      rw [Submodule.mem_dualAnnihilator]
      intro w hw
      have h2 : f w ∈ (S' ⊔ O).map f := Submodule.mem_map_of_mem hw
      rw [hf] at h2
      exact (Submodule.mem_bot ℂ).1 h2
    rw [hbot] at h1
    exact (Submodule.mem_bot ℂ).1 h1
  have hAnnStab : Stab (dualE (subA E)) (S' ⊔ O).dualAnnihilator := by
    intro a b ξ hξ
    rw [Submodule.mem_dualAnnihilator] at hξ ⊢
    intro v hv
    exact hξ _ (hTstab b a v hv)
  obtain ⟨μd, ξ, hξA, hξ0, hξHW, -⟩ := hESM (Module.Dual ℂ V) n (dualE (subA E)) hglD _ hAnnStab hAnn
  rw [Submodule.mem_dualAnnihilator] at hξA

  have hξC : ξ ∈ CapSp (dualE (subA E)) m := by
    rw [mem_CapSp]; intro w
    have h1 : qdet (dualE (subA E)) w = (qdet (subA E) w).dualMap := hmin n id id w
    rw [h1]
    ext v
    have hv : v ∈ CapSp (subA E) m ⊔ O := by rw [htop]; trivial
    obtain ⟨s, hs, t, ht, rfl⟩ := Submodule.mem_sup.1 hv
    simp only [LinearMap.dualMap_apply, LinearMap.smul_apply, map_add (f := _)]
    rw [mem_CapSp.1 hs w, hξA _ (Submodule.mem_sup_right (hOq w t ht)), hξA t (Submodule.mem_sup_right ht)]
    simp
  have hμ : ∀ j, μd j = m j + ((j : ℕ) : ℂ) :=
    (hCS (Module.Dual ℂ V) n (dualE (subA E)) m hglD
      (fun hb => hξ0 ((Submodule.mem_bot ℂ).1 (hb ▸ hξC)))).2 hm μd ξ hξC hξ0 hξHW

  have := hirr.1
  obtain ⟨ν, v₀, -, hv₀, hv₀HW, -⟩ := hESM V (n + 1) E hgl ⊤ (fun _ _ _ _ => trivial) top_ne_bot
  have hex : ∃ a, ξ (mono (yK E) a v₀) ≠ 0 := by
    by_contra hno
    push Not at hno
    refine hξ0 (hST V n E ν v₀ hgl hirr hv₀HW hv₀ ξ (fun a b hab v => ?_) hno)
    exact LinearMap.congr_fun (hξHW.2 b a hab) v
  obtain ⟨a, ha⟩ := hex
  have hv₀W : IsWt (subA E) v₀ := fun c => ⟨ν c.castSucc, hv₀HW.1 c.castSucc⟩
  have hxW : IsWt (subA E) (mono (yK E) a v₀) := isWt_mono hvec a v₀ hv₀W
  generalize mono (yK E) a v₀ = x at ha hxW
  have hxμ : ∀ c, subA E c c x = (m c + ((c : ℕ) : ℂ)) • x := by
    intro c
    obtain ⟨t, ht⟩ := hxW c
    have h1 : ξ (subA E c c x) = μd c * ξ x := LinearMap.congr_fun (hξHW.1 c) x
    rw [ht, map_smul, smul_eq_mul] at h1
    rw [ht, mul_right_cancel₀ ha h1, hμ]

  obtain ⟨s, hs, t, ht, hst⟩ := Submodule.mem_sup.1 (show x ∈ CapSp (subA E) m ⊔ O by rw [htop]; trivial)
  have hξs : ξ s ≠ 0 := by
    rw [← hst, map_add (f := _), hξA t (Submodule.mem_sup_right ht), add_zero] at ha
    exact ha
  have hsμ : ∀ c, subA E c c s = (m c + ((c : ℕ) : ℂ)) • s := by
    intro c
    have h1 := hxμ c
    rw [← hst, map_add (f := _), smul_add] at h1
    have h2 : subA E c c s - (m c + ((c : ℕ) : ℂ)) • s = -(subA E c c t - (m c + ((c : ℕ) : ℂ)) • t) := by
      rw [eq_neg_iff_add_eq_zero, ← sub_eq_zero.2 h1]
      abel
    have h3 : subA E c c s - (m c + ((c : ℕ) : ℂ)) • s ∈ CapSp (subA E) m :=
      Submodule.sub_mem _ (hS c c s hs) (Submodule.smul_mem _ _ hs)
    have h4 : subA E c c s - (m c + ((c : ℕ) : ℂ)) • s ∈ O := by
      rw [h2]
      exact O.neg_mem (O.sub_mem (hO c c t ht) (O.smul_mem _ ht))
    exact sub_eq_zero.1 (hdis' _ h3 h4)
  have hsHW := hTW V n (subA E) m hgl' hm s hs hsμ

  obtain ⟨ν', v', hv'S, hv'0, hv'HW, -⟩ := hESM V n (subA E) hgl' S' hS' hne
  have hν' := (hCS V n (subA E) m hgl'
    (fun hb => hv'0 ((Submodule.mem_bot ℂ).1 (hb ▸ hS'le hv'S)))).2 hm ν' v' (hS'le hv'S) hv'0 hv'HW
  have hν'' : ν' = fun a => m a + ((a : ℕ) : ℂ) := funext hν'
  rw [hν''] at hv'HW
  obtain ⟨c, hc⟩ := hMO V n E _ v' s hgl hirr hv'HW hsHW hv'0
  apply hξs
  rw [hc, map_smul, hξA v' (Submodule.mem_sup_left hv'S), smul_zero]

theorem sup_pres {ι : Type} (f : Module.End ℂ V) (F : ι → Submodule ℂ V) (p : ι → Prop)
    (h : ∀ j, ∀ v ∈ F j, f v ∈ F j) : ∀ v ∈ ⨆ (j) (_ : p j), F j, f v ∈ ⨆ (j) (_ : p j), F j := by
  have hle : (⨆ (j) (_ : p j), F j) ≤ (⨆ (j) (_ : p j), F j).comap f := by
    refine iSup₂_le (fun j hj => ?_)
    intro v hv
    exact (le_iSup₂ (f := fun j (_ : p j) => F j) j hj) (h j v hv)
  intro v hv
  exact hle hv

theorem box_indep (hCI : CapIndep) {n : ℕ} (E : Fin n → Fin n → Module.End ℂ V) (β : ℂ) (L : Fin (n + 1) → ℤ) :
    iSupIndep (fun M : {M : Fin n → ℤ // Box L M} => CapSp E (shf β M.1)) := by
  have h := (hCI V n E β).comp
    (f := fun M : {M : Fin n → ℤ // Box L M} => (⟨M.1, box_strictAnti M.2⟩ : {M : Fin n → ℤ // StrictAnti M}))
    (by
      intro M M' hMM
      exact Subtype.ext (congrArg (fun z : {M : Fin n → ℤ // StrictAnti M} => z.1) hMM))
  exact h

end Formalism.FourierDecayAlt.P.StrictBoxOrder

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.Qr

theorem qr_irredCap_of : Qr.ExistsSingMax → Qr.CapSing → Qr.CapStab → Qr.SubRel → Qr.TopWeightSing → Qr.DualMinor →
    Qr.SpanTop → Qr.MultOne → Qr.Decomp → Qr.CapIndep → Qr.IrredCap := by
  intro hESM hCS hCSt hSR hTW hDM hST hMO hDec hCI V _ _ _ n E β L hyp M hM S' hS'le hS'
  by_cases hne : S' = ⊥
  · exact Or.inl hne
  right
  have hgl' : GlRel (subA E) := (hSR _ n E hyp.gl).1
  have hind := StrictBoxOrder.box_indep hCI (subA E) β L
  have hsup : (⨆ M : {M : Fin n → ℤ // Box L M}, CapSp (subA E) (shf β M.1)) = ⊤ := by
    rw [← (hDec V n E β L hyp).2, iSup_subtype]
  rw [iSup_split_single _ (⟨M, hM⟩ : {M : Fin n → ℤ // Box L M})] at hsup
  refine StrictBoxOrder.core hESM hCS hSR hTW hDM hST hMO E hyp.gl hyp.irr (shf β M) (StrictBoxOrder.sdec_shf β (StrictBoxOrder.box_strictAnti hM))
    (⨆ (j : {M : Fin n → ℤ // Box L M}) (_ : j ≠ ⟨M, hM⟩), CapSp (subA E) (shf β j.1)) ?_
    (hCSt V n (subA E) (shf β M) hgl').1 ?_ (hind ⟨M, hM⟩) hsup S' hS'le hS' hne
  · intro a b
    exact StrictBoxOrder.sup_pres (subA E a b) _ _ fun j v hv => (hCSt V n (subA E) (shf β j.1) hgl').1 a b v hv
  · intro w
    refine StrictBoxOrder.sup_pres (qdet (subA E) w) _ _ fun j v hv => ?_
    rw [mem_CapSp.1 hv w]
    exact Submodule.smul_mem _ _ hv

theorem qr_branchingAlg_of : Qr.Decomp → Qr.CapIndep → Qr.IrredCap → Qr.BranchingAlg := by
  intro hD hCI hIC V _ _ _ n E β L H
  obtain ⟨hne, htop⟩ := hD V n E β L H
  refine ⟨?_, fun M => ⟨hne M.1 M.2, fun S' hS' hst => hIC V n E β L H M.1 M.2 S' hS' hst⟩⟩
  have hind := StrictBoxOrder.box_indep hCI (subA E) β L
  have hsup : (⨆ M : {M : Fin n → ℤ // Box L M}, CapSp (subA E) (shf β M.1)) = ⊤ :=
    iSup_subtype.trans htop
  first
  | exact DirectSum.isInternal_submodule_of_iSupIndep_of_iSup_eq_top hind hsup

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictBoxOrder =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IrreducibleCapelliModules =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.IrreducibleCapelliModules", "h": "module\n\npublic import Formalism.HermitianCurvature.CapelliDeterminantAndBranching\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BorderedDeterminants\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.BranchingSystems\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CapelliAbstractCharacter\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.ClosureOperators\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.CommonEigenvectors\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.HighestWeightPolynomials\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StarSumLemmas\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.StrictBoxOrder\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.WeightMonotonicity\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.P

open Formalism.FourierDecayAlt

theorem capelli_singular : Qr.CapSing := qr_capSing_of singular_dominant exists_singular_maximal_vector

theorem top_weight_singular : Qr.TopWeightSing := qr_topWeightSing_of exists_singular_maximal_vector capelli_singular

theorem vector_descent : Qr.VecDown := qr_vecDown_of quantum_minor_polynomial polynomial_vanishing

theorem raising_nonzero : Qr.RaiseNZ := qr_raiseNZ_of covariant_raising

theorem lowering_nonzero : Qr.LowerNZ := qr_lowerNZ_of vector_descent

theorem branching_decomposition : Qr.Decomp :=
  qr_decomp_of exists_singular_maximal_vector capelli_singular capelli_stabilizer submodule_relations covariant_raising vector_descent
    raising_nonzero lowering_nonzero

theorem multiplicity_one : Qr.MultOne := qr_multOne_of exists_singular_maximal_vector dual_minor span_singular_vectors

theorem irreducible_capelli_modules : Qr.IrredCap :=
  qr_irredCap_of exists_singular_maximal_vector capelli_singular capelli_stabilizer submodule_relations top_weight_singular
    dual_minor span_top_vectors multiplicity_one branching_decomposition capelli_independence

theorem branching_algebraic : Qr.BranchingAlg := qr_branchingAlg_of branching_decomposition capelli_independence irreducible_capelli_modules

end Formalism.FourierDecayAlt.P
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.IrreducibleCapelliModules =====
