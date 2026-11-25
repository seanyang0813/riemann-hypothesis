module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeightAndVanishing.EtaKer
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CharacterLevelBounds.ClsFacts
public import Development.AutomorphicArithmetic.AutomorphicVarieties.CharacterLevelBounds.ClsOnto
public import Development.AutomorphicArithmetic.AutomorphicVarieties.GaloisLibrary.SelmerTransport.GalEmbTop
public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeightAndVanishing.CongrFacts
public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeightAndVanishing.ExistsStrictHenselianAbsolutelyClosedLocalRing
public import Development.AutomorphicArithmetic.AutomorphicVarieties.HeightAndVanishing.PsiBar
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IneLeFixingSubgroup
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
import Mathlib.RingTheory.Valuation.LocalSubring
import Mathlib.RingTheory.WittVector.IsPoly
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual Formalism.HC ReciprocityTheory.Gal Formalism.GaloisCohomology UpperTheory.V UpperTheory.V.Base UpperTheory.Top UpperTheory.V.HV

/-- If inertia acts nontrivially on a number field, every natural multiple of its absolute
discriminant has valuation less than one. -/
theorem UpperTheory.V.HV.valuation_lt_one_of_ramified_of_discr_dvd
    {Ω : Type} [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω]
    (K : Type) [Field K] [NumberField K] [Algebra K Ω] (A : ValuationSubring Ω)
    (hram : ¬ Ine (F := ℚ) A ≤ galOf ℚ K Ω) {m : ℕ} (hm : (discr K).natAbs ∣ m) :
    A.valuation (m : Ω) < 1 := by
  have : IsAlgClosed Ω := IsAlgClosure.isAlgClosed ℚ
  have hd : A.valuation ((discr K : ℤ) : Ω) < 1 := by
    by_contra hunit
    apply hram
    intro σ hσ
    have heq := GlobalTheory.UnramDiscr.embedding_eq A hunit
      ((σ : Ω →+* Ω).comp (algebraMap K Ω)) (algebraMap K Ω) (fun x => by
        apply hσ.2
        exact (A.valuation_le_one_iff _).mpr (GlobalTheory.UnramDiscr.mem_of_isIntegral A
          ((RingOfIntegers.isIntegral_coe x).map (algebraMap K Ω).toIntAlgHom)))
    exact fun x => DFunLike.congr_fun heq x
  obtain ⟨k, rfl⟩ := hm
  rw [Nat.cast_mul, map_mul, mul_comm]
  refine lt_of_le_of_lt (mul_le_of_le_one_left' ((A.valuation_le_one_iff _).2 (natCast_mem A k))) ?_
  rcases Int.natAbs_eq (discr K) with h | h
  · rwa [h, Int.cast_natCast] at hd
  · rwa [h, Int.cast_neg, Int.cast_natCast, Valuation.map_neg] at hd

private theorem ine_le (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (K : Type) [Field K] [NumberField K]
    [Algebra K Ω] {l : ℕ} (hl : l.Prime) (hd : ¬ l ∣ (discr K).natAbs) (A : ValuationSubring Ω)
    (hA : A.valuation (l : Ω) < 1) : Ine (F := ℚ) A ≤ galOf ℚ K Ω := by
  by_contra hram
  have hdisc := valuation_lt_one_of_ramified_of_discr_dvd K A hram (dvd_refl _)
  have hcop : IsCoprime (l : A) ((discr K).natAbs : A) :=
    ((Nat.Prime.coprime_iff_not_dvd hl).2 hd).cast
  exact Ideal.IsPrime.notMem_of_isCoprime_of_mem (I := IsLocalRing.maximalIdeal A) hcop
    ((A.valuation_lt_one_iff _).2 (by simpa using hA))
    ((A.valuation_lt_one_iff _).2 (by simpa using hdisc))

private theorem exists_neg (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (l : ℕ) [Fact l.Prime] (hl : l ≠ 2)
    {O : Type} [CommRing O] [IsDomain O] {N : ℕ} [NeZero N] (ψ : DirichletCharacter O N) (w : G ℚ Ω →* Oˣ)
    (hw : w.ker = (Chr.cls ℚ Ω l).ker) : ∃ σ : G ℚ Ω, w σ = -1 ∧ ((Chr.dirG ℚ Ω ψ σ : Oˣ) : O) = ψ (-1) := by
  have hp : l.Prime := Fact.out
  haveI : NeZero l := ⟨hp.ne_zero⟩
  haveI : NeZero (l * N) := ⟨Nat.mul_ne_zero hp.ne_zero (NeZero.ne N)⟩
  obtain ⟨σ, hσ⟩ := (Chr.clsOnto Ω (l * N)).1 (-1)
  have hcomp := (Chr.clsFacts ℚ Ω (l * N)).2.1
  have hdown : ∀ (M : ℕ) [NeZero M] (h : M ∣ l * N), Chr.cls ℚ Ω M σ = -1 := by
    intro M _ h
    rw [← hcomp M h, MonoidHom.comp_apply, hσ]
    ext
    simp [ZMod.unitsMap_def]
  have hl1 := hdown l (dvd_mul_right l N)
  have hN1 := hdown N (dvd_mul_left N l)
  refine ⟨σ, ?_, ?_⟩
  · have hsq : σ * σ ∈ w.ker := by
      rw [hw, MonoidHom.mem_ker, map_mul, hl1]
      simp
    have hne : w σ ≠ 1 := by
      intro h
      have h' : σ ∈ w.ker := h
      rw [hw, MonoidHom.mem_ker, hl1] at h'
      haveI : Fact (2 < l) := ⟨lt_of_le_of_ne hp.two_le (Ne.symm hl)⟩
      exact ZMod.neg_one_ne_one (congrArg Units.val h')
    have e1 : w σ * w σ = 1 := by rw [← map_mul]; exact hsq
    have e2 : ((w σ : Oˣ) : O) * (w σ : O) = 1 := by rw [← Units.val_mul, e1, Units.val_one]
    rcases mul_self_eq_one_iff.mp e2 with h | h
    · exact absurd (Units.ext h) hne
    · exact Units.ext (by rw [h, Units.val_neg, Units.val_one])
  · show ((MulChar.toUnitHom ψ (Chr.cls ℚ Ω N σ) : Oˣ) : O) = ψ (-1)
    rw [MulChar.coe_toUnitHom, hN1, Units.val_neg, Units.val_one]

private theorem eq_of_index_two {Γ M : Type} [Group Γ] [CommRing M] [IsDomain M] (H : Subgroup Γ) (hH : H.index = 2)
    (θ : Γ →* Mˣ) (hθ : H ≤ θ.ker) {τ : Γ} (hτ : θ τ ≠ 1) {σ : Γ} (hσ : σ ∉ H) : θ σ = -1 := by
  have hτH : τ ∉ H := fun h => hτ (hθ h)
  have h1 : σ * σ ∈ H := (Subgroup.mul_mem_iff_of_index_two hH).mpr (Iff.rfl)
  have h2 : σ * τ ∈ H := (Subgroup.mul_mem_iff_of_index_two hH).mpr (iff_of_false hσ hτH)
  have e1 : θ σ * θ σ = 1 := by rw [← map_mul]; exact hθ h1
  have e2 : θ σ * θ τ = 1 := by rw [← map_mul]; exact hθ h2
  have e3 : θ τ = θ σ := by
    calc θ τ = θ σ * θ σ * θ τ := by rw [e1, one_mul]
      _ = θ σ * (θ σ * θ τ) := mul_assoc _ _ _
      _ = θ σ := by rw [e2, mul_one]
  have e4 : ((θ σ : Mˣ) : M) * (θ σ : M) = 1 := by rw [← Units.val_mul, e1, Units.val_one]
  rcases mul_self_eq_one_iff.mp e4 with h | h
  · exact absurd (by rw [e3]; exact Units.ext h) hτ
  · exact Units.ext (by rw [h, Units.val_neg, Units.val_one])

theorem UpperTheory.V.HV.gdLoc :
    ∀ (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (K : Type) [Field K] [NumberField K] [Algebra K Ω] (l : ℕ) [Fact l.Prime] (c : Coef l) (e N : ℕ) [NeZero N]
      (ψ : DirichletCharacter c.O N) (w η : G ℚ Ω →* c.Oˣ) (a : ℕ), GDlit c K e ψ w η a →
      (∀ A : ValuationSubring Ω, A.valuation (l : Ω) < 1 → Ine (F := ℚ) A ≤ galOf ℚ K Ω ∧ ∃ σ ∈ Ine (F := ℚ) A,
        ((Chr.Psi l e (Chr.dirG ℚ Ω ψ) σ ^ 2 : c.Oˣ) : c.O) - 1 ∉ IsLocalRing.maximalIdeal c.O) ∧
      (∃ σ ∈ galOf ℚ K Ω, ((w σ * Chr.Psi l e (Chr.dirG ℚ Ω ψ) σ : c.Oˣ) : c.O) - 1 ∉ IsLocalRing.maximalIdeal c.O) ∧
      (∃ σ ∈ galOf ℚ K Ω, (((w σ)⁻¹ * Chr.Psi l e (Chr.dirG ℚ Ω ψ) σ : c.Oˣ) : c.O) - 1 ∉ IsLocalRing.maximalIdeal c.O) := by
  intro Ω _ _ _ K _ _ _ l _ c e N _ ψ w η a hG
  have hp : l.Prime := Fact.out
  have hl2 : l ≠ 2 := hG.l_odd
  have hl3 : 3 ≤ l := by have := hp.two_le; omega
  have hom := hG.om
  have hw1 : w ^ (l - 1) = 1 := hom.1
  have hwc : Congr c w (chiO ℚ Ω l c.O) := hom.2
  have hOm := (omT Ω l c).2 w hom
  have hCF := congrFacts Ω l c
  set D := Chr.dirG ℚ Ω ψ with hD
  have hcE : ∀ n : ℕ, Congr c (chiO ℚ Ω l c.O ^ n) (w ^ n) := by
    intro n
    induction n with
    | zero => simp only [pow_zero]; exact hCF.1.refl _
    | succ n ih => rw [pow_succ, pow_succ]; exact (hCF.2.1 _ _ _ _ ih (hCF.1.symm hwc)).1
  have hΨc : Congr c (Chr.Psi l e D) (w ^ e * D) := by
    have hΨ : Chr.Psi l e D = chiO ℚ Ω l c.O ^ e * D := by simp [Chr.Psi]
    rw [hΨ]
    exact (hCF.2.1 _ _ _ _ (hcE e) (hCF.1.refl D)).1
  have hl1 : ¬ l ∣ l - 1 := Nat.not_dvd_of_pos_of_lt (by omega) (by omega)
  have hwσ : ∀ σ, (w σ) ^ (l - 1) = 1 := by
    intro σ
    rw [← MonoidHom.pow_apply, hw1, MonoidHom.one_apply]
  have hdisc : ¬ l ∣ (discr K).natAbs := fun h => hG.l_cop (dvd_mul_of_dvd_left h _)
  have hidx : (galOf ℚ K Ω).index = 2 := by
    haveI : IsAlgClosure K Ω := ⟨IsAlgClosure.isAlgClosed ℚ, Algebra.IsAlgebraic.tower_top (K := ℚ) K⟩
    rw [(galEmbTop ℚ K Ω).2.2, hG.quad]
  set m := (l - 1) * orderOf D with hmdef
  have hm : ¬ l ∣ m := by
    intro h
    rcases (Nat.Prime.dvd_mul hp).mp h with h | h
    · exact hl1 h
    · exact hG.ord h
  have hpow : ∀ j : ℕ, (w ^ j * D) ^ m = 1 := by
    intro j
    rw [mul_pow, ← pow_mul, hmdef, show j * ((l - 1) * orderOf D) = (l - 1) * (j * orderOf D) by ring,
      pow_mul, hw1, one_pow, one_mul, mul_comm, pow_mul, pow_orderOf_eq_one, one_pow]
  obtain ⟨σ₀, hwσ₀, hDσ₀⟩ := exists_neg Ω l hl2 ψ w hOm.2.1
  have hev : ψ (-1) = (-1) ^ e := ((psiBar Ω l c w hom N ψ).2.1 e).mpr hG.par
  have hne1 : ((-1 : (c.O)ˣ)) ≠ 1 := by
    intro h
    have h2 : ((-1 : (c.O)ˣ) : PadicAlgCl l) = ((1 : (c.O)ˣ) : PadicAlgCl l) := by rw [h]
    simp at h2
    norm_num at h2
  have hθ0 : ∀ j : ℕ, (((w ^ j * D) σ₀ : (c.O)ˣ) : c.O) = (-1) ^ j * (-1) ^ e := by
    intro j
    rw [MonoidHom.mul_apply, MonoidHom.pow_apply, hwσ₀, Units.val_mul, Units.val_pow_eq_pow_val, hDσ₀, hev,
      Units.val_neg, Units.val_one]
  have key : ∀ j : ℕ, (∀ σ ∈ galOf ℚ K Ω, (((w ^ j * D) σ : (c.O)ˣ) : c.O) - 1 ∈ IsLocalRing.maximalIdeal c.O) →
      (-1 : c.O) ^ j * (-1) ^ e = -1 → η = w ^ j * D := by
    intro j hj hv
    have hle : galOf ℚ K Ω ≤ (w ^ j * D).ker := by
      intro σ hσ
      rw [MonoidHom.mem_ker]
      refine hCF.2.2.2.1 _ 1 m hm ?_ (one_pow _) (by simpa using hj σ hσ)
      rw [← MonoidHom.pow_apply, hpow, MonoidHom.one_apply]
    have hτ : (w ^ j * D) σ₀ ≠ 1 := by
      intro h
      apply hne1
      apply Units.ext
      rw [Units.val_neg, Units.val_one, ← hv, ← hθ0 j, h, Units.val_one]
    have hηle : galOf ℚ K Ω ≤ η.ker := le_of_eq hG.eta_ker.symm
    refine MonoidHom.ext (fun σ => ?_)
    by_cases hσ : σ ∈ galOf ℚ K Ω
    · rw [MonoidHom.mem_ker.mp (hηle hσ), MonoidHom.mem_ker.mp (hle hσ)]
    · have hητ : η σ ≠ 1 := by
        intro h
        apply hσ
        rw [← hG.eta_ker]
        exact h
      rw [eq_of_index_two _ hidx η hηle hητ hσ, eq_of_index_two _ hidx _ hle hτ hσ]
  refine ⟨?_, ?_, ?_⟩
  · intro A hA
    refine ⟨ine_le Ω K hp hdisc A hA, ?_⟩
    by_contra hcon
    push_neg at hcon
    apply hG.gen
    apply hOm.2.2.2.2.2.2.1 A hA (2 * (e + a))
    intro σ hσ
    rw [MonoidHom.mem_ker]
    have hx : (w ^ (2 * (e + a))) σ = ((w ^ e * D) σ) ^ 2 := by
      rw [MonoidHom.mul_apply, MonoidHom.pow_apply, MonoidHom.pow_apply, hD, hG.ine A hA σ hσ,
        ← pow_add, ← pow_mul, mul_comm 2]
    have hm1 : (((w ^ (2 * (e + a))) σ : (c.O)ˣ) : c.O) - (((Chr.Psi l e D σ) ^ 2 : (c.O)ˣ) : c.O)
        ∈ IsLocalRing.maximalIdeal c.O := by
      rw [hx, Units.val_pow_eq_pow_val, Units.val_pow_eq_pow_val, sq_sub_sq]
      apply Ideal.mul_mem_left
      have := hΨc σ
      rw [← neg_sub]
      exact Submodule.neg_mem _ this
    have hm2 := hcon σ hσ
    refine hCF.2.2.2.1 _ 1 (l - 1) hl1 ?_ (one_pow _) ?_
    · rw [← MonoidHom.pow_apply, ← pow_mul, mul_comm, pow_mul, hw1, one_pow, MonoidHom.one_apply]
    · have := Ideal.add_mem _ hm1 hm2
      rw [sub_add_sub_cancel] at this
      simpa using this
  · by_contra hcon
    push_neg at hcon
    have hθ := key (e + 1) (fun σ hσ => by
        have h1 := hcon σ hσ
        have h2 : (((w ^ (e + 1) * D) σ : (c.O)ˣ) : c.O) - ((w σ * Chr.Psi l e D σ : (c.O)ˣ) : c.O)
            ∈ IsLocalRing.maximalIdeal c.O := by
          have hu : (w ^ (e + 1) * D) σ = w σ * ((w ^ e * D) σ) := by
            rw [MonoidHom.mul_apply, MonoidHom.mul_apply, MonoidHom.pow_apply, MonoidHom.pow_apply, pow_succ',
              mul_assoc]
          rw [hu, Units.val_mul, Units.val_mul, ← mul_sub]
          apply Ideal.mul_mem_left
          rw [← neg_sub]
          exact Submodule.neg_mem _ (hΨc σ)
        have := Ideal.add_mem _ h2 h1
        rwa [sub_add_sub_cancel] at this)
      (by rw [← pow_add]; exact Odd.neg_one_pow ⟨e, by ring⟩)
    apply hG.eta (e + 1 + a) 1
    have hg : w ^ (e + 1 + a) * (D * (w ^ a)⁻¹) ^ 1 = w ^ (e + 1) * D := by
      rw [pow_one, pow_add w (e + 1) a, mul_comm D, ← mul_assoc, mul_inv_cancel_right]
    rw [hθ, hg]
    exact hCF.1.refl _
  · by_contra hcon
    push_neg at hcon
    obtain ⟨e', he⟩ : ∃ e', e = e' + 1 := ⟨e - 1, by have := hG.e_pos; omega⟩
    have hθ := key e' (fun σ hσ => by
        have h1 := hcon σ hσ
        have h2 : (((w ^ e' * D) σ : (c.O)ˣ) : c.O) - (((w σ)⁻¹ * Chr.Psi l e D σ : (c.O)ˣ) : c.O)
            ∈ IsLocalRing.maximalIdeal c.O := by
          have hu : (w ^ e' * D) σ = (w σ)⁻¹ * ((w ^ e * D) σ) := by
            rw [he, MonoidHom.mul_apply, MonoidHom.mul_apply, MonoidHom.pow_apply, MonoidHom.pow_apply, pow_succ',
              mul_assoc, inv_mul_cancel_left]
          rw [hu, Units.val_mul, Units.val_mul, ← mul_sub]
          apply Ideal.mul_mem_left
          rw [← neg_sub]
          exact Submodule.neg_mem _ (hΨc σ)
        have := Ideal.add_mem _ h2 h1
        rwa [sub_add_sub_cancel] at this)
      (by rw [he, ← pow_add]; exact Odd.neg_one_pow ⟨e', by ring⟩)
    apply hG.eta (e' + a) 1
    have hg : w ^ (e' + a) * (D * (w ^ a)⁻¹) ^ 1 = w ^ e' * D := by
      rw [pow_one, pow_add w e' a, mul_comm D, ← mul_assoc, mul_inv_cancel_right]
    rw [hθ, hg]
    exact hCF.1.refl _
