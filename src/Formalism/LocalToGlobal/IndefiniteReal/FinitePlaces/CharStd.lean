module

public import Formalism.LocalToGlobal.IndefiniteReal.LevelTypeEquivalence.InfFam
public import ReciprocityTheory.AdeleApproximation.AdeleIntA
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.StdCharExists
public import Formalism.LocalToGlobal.IndefiniteReal.PHeisThC
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
public import Formalism.LocalToGlobal.GlobalTheory.GL1.CompactFixesLattice.CompactFixesLattice
public import Formalism.LocalToGlobal.IndefiniteReal.PHeisFCA
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemUniq

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR.Datum MeasureTheory
  IsDedekindDomain NumberField Topology NumberField.InfinitePlace.Completion
open scoped TensorProduct ComplexConjugate

namespace Formalism.IndefR.Fin

section Gen

variable {F : Type} [Field F] [NumberField F]

theorem pairA_add (a a' : Ainf F) (b b' : Af F) : pairA F (a + a') (b + b') = pairA F a b + pairA F a' b' := rfl

theorem pairA_split (a : Ainf F) (b : Af F) : pairA F a b = pairA F a 0 + pairA F 0 b := by
  rw [← pairA_add, add_zero, zero_add]

theorem algebraMap_AF (q : F) :
    algebraMap F (AF F) q = pairA F (algebraMap F (Ainf F) q) (algebraMap F (Af F) q) := rfl

theorem exp_two_pi_int (n : ℤ) : Complex.exp (2 * Real.pi * Complex.I * n) = 1 := by
  rw [show (2 * Real.pi * Complex.I * n : ℂ) = n * (2 * Real.pi * Complex.I) by ring]
  exact Complex.exp_int_mul_two_pi_mul_I n

theorem exists_nsmul_mem_cpt {X : Type*} [AddCommGroup X] [TopologicalSpace X] [IsTopologicalAddGroup X]
    (K : Set X) (hK : IsCompact K) (hKs : ∀ y ∈ K, ∀ n : ℕ, n • y ∈ K) (H : AddSubgroup X)
    (hH : IsOpen (H : Set X)) : ∃ m : ℕ, 0 < m ∧ ∀ y ∈ K, m • y ∈ H := by
  classical
  haveI : DiscreteTopology (X ⧸ H) := QuotientAddGroup.discreteTopology hH
  have hSfin : ((fun y : X => (y : X ⧸ H)) '' K).Finite :=
    (hK.image QuotientAddGroup.continuous_mk).finite_of_discrete
  have hord : ∀ y ∈ K, IsOfFinAddOrder (y : X ⧸ H) := by
    intro y hy
    obtain ⟨a, b, hab, he⟩ := Set.Finite.exists_lt_map_eq_of_forall_mem
      (f := fun n : ℕ => ((n • y : X) : X ⧸ H)) (fun n => Set.mem_image_of_mem _ (hKs y hy n)) hSfin
    obtain ⟨c, rfl⟩ := Nat.exists_eq_add_of_lt hab
    refine isOfFinAddOrder_iff_nsmul_eq_zero.mpr ⟨c + 1, Nat.succ_pos c, ?_⟩
    have h2 : (a + (c + 1)) • (y : X ⧸ H) = a • (y : X ⧸ H) := by
      rw [← Nat.add_assoc, ← QuotientAddGroup.mk_nsmul, ← QuotientAddGroup.mk_nsmul]
      exact he.symm
    rw [add_nsmul] at h2
    simpa using h2
  refine ⟨∏ q ∈ hSfin.toFinset, addOrderOf q, ?_, ?_⟩
  · apply Finset.prod_pos
    intro q hq
    obtain ⟨y, hy, rfl⟩ := hSfin.mem_toFinset.mp hq
    exact (hord y hy).addOrderOf_pos
  · intro y hy
    have hmem : (y : X ⧸ H) ∈ hSfin.toFinset := hSfin.mem_toFinset.mpr ⟨y, hy, rfl⟩
    have h0 : (∏ q ∈ hSfin.toFinset, addOrderOf q) • (y : X ⧸ H) = 0 :=
      addOrderOf_dvd_iff_nsmul_eq_zero.mp (Finset.dvd_prod_of_mem (fun q => addOrderOf q) hmem)
    rw [← QuotientAddGroup.mk_nsmul, QuotientAddGroup.eq_zero_iff] at h0
    exact h0

end Gen

section Psi

variable {D : D7} {ψ : AddChar (AF D.host.F) ℂ}

theorem sum_fEmb (x : D.host.F) : ∑ τ : D.what₂.Tau, Eqv.fEmb D τ x = ((Algebra.trace ℚ D.host.F x : ℚ) : ℂ) := by
  classical
  have hb : Function.Bijective (fun τ => Eqv.fEmb D τ) := by
    constructor
    · intro τ τ' h
      simp only at h
      have h' : Eqv.plW D τ = Eqv.plW D τ' := by
        show InfinitePlace.mk (Eqv.fEmb D τ) = InfinitePlace.mk (Eqv.fEmb D τ')
        rw [h]
      rw [Eqv.plW_eq_tauPl, Eqv.plW_eq_tauPl] at h'
      exact (Formalism.L2.Host.tauPl D).injective h'
    · intro φ
      refine ⟨(Formalism.L2.Host.tauPl D).symm (InfinitePlace.mk φ), ?_⟩
      have h1 := Eqv.plW_embedding D ((Formalism.L2.Host.tauPl D).symm (InfinitePlace.mk φ))
      rw [Eqv.plW_symm] at h1
      have hr := Eqv.fEmb_isReal D ((Formalism.L2.Host.tauPl D).symm (InfinitePlace.mk φ))
      show Eqv.fEmb D _ = φ
      rcases InfinitePlace.embedding_mk_eq φ with h2 | h2
      · rw [← h1, h2]
      · rw [← h1] at hr
        rw [← h1, h2]
        rw [h2] at hr
        exact ComplexEmbedding.isReal_conjugate_iff.mp hr
  have htr := trace_eq_sum_embeddings (K := ℚ) (L := D.host.F) (E := ℂ) (x := x)
  rw [show ((Algebra.trace ℚ D.host.F x : ℚ) : ℂ) = algebraMap ℚ ℂ (Algebra.trace ℚ D.host.F x) from
    (eq_ratCast _ _).symm, htr]
  let e : (D.host.F →+* ℂ) ≃ (D.host.F →ₐ[ℚ] ℂ) := RingHom.equivRatAlgHom D.host.F ℂ
  exact Fintype.sum_bijective (e ∘ fun τ => Eqv.fEmb D τ) (e.bijective.comp hb) _ _ (fun τ => rfl)

theorem psi_inf (hψ : IsStdChar D ψ (-1)) (a : Ainf D.host.F) :
    ψ (pairA D.host.F a 0) = Complex.exp (-(2 * Real.pi * Complex.I * ∑ τ, Eqv.gW D (Eqv.plW D τ) a)) := by
  obtain ⟨-, -, hθ⟩ := hψ
  have h := hθ (Eqv.thetaC D) (Eqv.isInfFam_thetaC D) a
  simp only [Eqv.thetaC_tmul, map_one, mul_one] at h
  rw [show ψ (pairA D.host.F a 0) = psiInf D.host.F ψ a from rfl, h]
  congr 1
  push_cast
  ring

theorem psi_fin_rat (hψ : IsStdChar D ψ (-1)) (q : D.host.F) :
    ψ (pairA D.host.F 0 (algebraMap D.host.F (Af D.host.F) q)) =
      Complex.exp (2 * Real.pi * Complex.I * (Algebra.trace ℚ D.host.F q : ℚ)) := by
  have hrat : ψ (algebraMap D.host.F (AF D.host.F) q) = 1 := by
    obtain ⟨⟨-, -, h, -⟩, -⟩ := hψ
    exact h q
  have hinf := psi_inf hψ (algebraMap D.host.F (Ainf D.host.F) q)
  simp only [Eqv.gW_algebraMap, sum_fEmb] at hinf
  rw [algebraMap_AF, pairA_split, AddChar.map_add_eq_mul, hinf] at hrat
  have h2 := congrArg
    (fun w => Complex.exp (2 * Real.pi * Complex.I * ((Algebra.trace ℚ D.host.F q : ℚ) : ℂ)) * w) hrat
  simp only [← mul_assoc, ← Complex.exp_add, add_neg_cancel, Complex.exp_zero, one_mul, mul_one] at h2
  exact h2

theorem psi_pair0_add (a b : Af D.host.F) :
    ψ (pairA D.host.F 0 (a + b)) = ψ (pairA D.host.F 0 a) * ψ (pairA D.host.F 0 b) := by
  rw [← AddChar.map_add_eq_mul, ← pairA_add, add_zero]

theorem psi_invDiff (hψ : IsStdChar D ψ (-1)) (d : D.host.F) (hd : d ∈ invDiff D.host.F) (y : Af D.host.F)
    (hy : y ∈ intAf D.host.F) : ψ (pairA D.host.F 0 (algebraMap D.host.F (Af D.host.F) d * y)) = 1 := by
  obtain ⟨G, hGo, -, hG⟩ := Formalism.IndefR.PHeisTh.psiOpen D.host.F ψ hψ.1
  let md : Af D.host.F →+ Af D.host.F := AddMonoidHom.mulLeft (algebraMap D.host.F (Af D.host.F) d)
  let H : AddSubgroup (Af D.host.F) := AddSubgroup.comap md G
  have hHo : IsOpen (H : Set (Af D.host.F)) := hGo.preimage (continuous_const.mul continuous_id)
  obtain ⟨m, hm, hmH⟩ := exists_nsmul_mem_cpt (Formalism.IndefR.PHeisFC.Ohat D.host.F)
    (Formalism.IndefR.PHeisFC.isCompact_Ohat D.host.F)
    (fun y hy n => (Formalism.L2.GlobalTheoryTheory.FiltrationBoundaryCriterion.CompactFixesLatticeTheory.intAd D.host.F).toAddSubgroup.nsmul_mem hy n) H hHo
  have hm0 : ((m : ℕ) : 𝓞 D.host.F) ≠ 0 := Nat.cast_ne_zero.2 hm.ne'
  obtain ⟨a, ha⟩ := ReciprocityTheory.UG.AdeleIntA.exists_approx y (fun v => hy v) _ hm0

  set z : Af D.host.F := algebraMap D.host.F (Af D.host.F) (1 / (m : D.host.F)) *
    (y - algebraMap D.host.F (Af D.host.F) (a : D.host.F)) with hz
  have hmF : (m : D.host.F) ≠ 0 := Nat.cast_ne_zero.2 hm.ne'
  have hyz : y = algebraMap D.host.F (Af D.host.F) (a : D.host.F) + m • z := by
    rw [hz, nsmul_eq_mul, ← mul_assoc, show (m : Af D.host.F) = algebraMap D.host.F (Af D.host.F) (m : D.host.F) by
      simp, ← map_mul, mul_one_div_cancel hmF, map_one, one_mul]
    abel
  have hzint : z ∈ Formalism.IndefR.PHeisFC.Ohat D.host.F := by
    intro v
    have hv := ha v
    show (algebraMap D.host.F (Af D.host.F) (1 / (m : D.host.F)) *
      (y - algebraMap D.host.F (Af D.host.F) (a : D.host.F))) v ∈ v.adicCompletionIntegers D.host.F
    rw [HeightOneSpectrum.mem_adicCompletionIntegers]
    have e : (algebraMap D.host.F (Af D.host.F) (1 / (m : D.host.F)) *
        (y - algebraMap D.host.F (Af D.host.F) (a : D.host.F))) v =
        algebraMap D.host.F (v.adicCompletion D.host.F) (1 / (m : D.host.F)) *
          (y v - algebraMap D.host.F _ (algebraMap (𝓞 D.host.F) D.host.F a)) := rfl
    rw [e, map_mul]
    have hval : Valued.v (algebraMap D.host.F (v.adicCompletion D.host.F) (1 / (m : D.host.F))) =
        (v.intValuation ((m : ℕ) : 𝓞 D.host.F))⁻¹ := by
      rw [one_div, map_inv₀, map_inv₀]
      congr 1
      rw [show ((m : ℕ) : D.host.F) = algebraMap (𝓞 D.host.F) D.host.F ((m : ℕ) : 𝓞 D.host.F) by simp]
      exact ReciprocityTheory.UG.AdeleIntA.val_R v _
    rw [hval]
    have hv0 : v.intValuation ((m : ℕ) : 𝓞 D.host.F) ≠ 0 := v.intValuation_ne_zero _ hm0
    calc (v.intValuation ((m : ℕ) : 𝓞 D.host.F))⁻¹ * Valued.v _
        ≤ (v.intValuation ((m : ℕ) : 𝓞 D.host.F))⁻¹ * v.intValuation ((m : ℕ) : 𝓞 D.host.F) :=
          mul_le_mul' le_rfl hv
      _ = 1 := inv_mul_cancel₀ hv0
  rw [hyz, mul_add, psi_pair0_add]
  have h1 : ψ (pairA D.host.F 0 (algebraMap D.host.F (Af D.host.F) d *
      algebraMap D.host.F (Af D.host.F) (a : D.host.F))) = 1 := by
    rw [← map_mul, psi_fin_rat hψ]
    obtain ⟨n, hn⟩ := hd a
    rw [hn]; push_cast; exact exp_two_pi_int n
  have h2 : ψ (pairA D.host.F 0 (algebraMap D.host.F (Af D.host.F) d * m • z)) = 1 :=
    hG _ (hmH z hzint)
  rw [h1, h2, one_mul]

end Psi

section Kernel

variable {D : D7} {ψ : AddChar (AF D.host.F) ℂ}

theorem intAf_of_isInt (y : Af D.host.F) (hy : ReciprocityTheory.UG.AdeleIntA.IsInt y) : y ∈ intAf D.host.F := by
  simp only [Formalism.MainNotions.StandardLattice.intAf, ReciprocityTheory.UG.AdeleIntA.IsInt] at hy ⊢
  exact hy

theorem intAf_int (r : 𝓞 D.host.F) : algebraMap D.host.F (Af D.host.F) (r : D.host.F) ∈ intAf D.host.F := by
  have h := ReciprocityTheory.UG.AdeleIntA.isInt_R (K := D.host.F) r
  rw [IsScalarTower.algebraMap_apply (𝓞 D.host.F) D.host.F] at h
  exact intAf_of_isInt _ h

theorem one_intAf : (1 : Af D.host.F) ∈ intAf D.host.F := by
  simpa using intAf_int (D := D) 1

end Kernel

section Exist

variable {D : D7}

end Exist

end Formalism.IndefR.Fin

end
