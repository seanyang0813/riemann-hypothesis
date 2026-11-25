module

public import Development.AbelianVarietyTheory.PublishedTheorems.PublishedFoundations.BlockTriangularOfSubOne
public import Formalism.PadicSubsetSums.CentralIdempotents.IsConstituent
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.IsIrreducibleIff
public import Development.AbelianVarietyTheory.Proofs.CharacterTheory.ExistsTeichmullerMapAlgebraicClosureFiniteField
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsCuspidalWithLabel
public import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.SimpleIffIrreducible
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Polynomial CategoryTheory

noncomputable section

namespace GlobalTheory.CompanionTheory.Hypotheses₂.CuspExists

section Generators

variable (K : Type) [Field K] [Fintype K]

theorem exists_root_over {F : Type} [Field F] {N M : ℕ} (hM : 0 < M) (hNM : N ∣ M) {z w : F}
    (hz : IsPrimitiveRoot z N) (hw : IsPrimitiveRoot w M) : ∃ z' : F, IsPrimitiveRoot z' M ∧ z' ^ (M / N) = z := by
  have hN : 0 < N := Nat.pos_of_dvd_of_pos hNM hM
  have : NeZero N := ⟨hN.ne'⟩
  have : NeZero M := ⟨hM.ne'⟩
  have hw' : IsPrimitiveRoot (w ^ (M / N)) N := hw.pow hM (Nat.div_mul_cancel hNM).symm
  obtain ⟨a, -, ha, hza⟩ := (hw'.isPrimitiveRoot_iff).1 hz
  obtain ⟨u, hu⟩ := ZMod.unitsMap_surjective hNM (ZMod.unitOfCoprime a ha)
  have h1 : ((u : ZMod M).val : ZMod N) = (a : ZMod N) := by
    have := congrArg (fun v : (ZMod N)ˣ => (v : ZMod N)) hu
    simpa [ZMod.unitsMap_val] using this
  refine ⟨w ^ (u : ZMod M).val, hw.pow_of_coprime _ (ZMod.val_coe_unit_coprime u), ?_⟩
  rw [← pow_mul, mul_comm, pow_mul, ← hza]
  exact pow_eq_pow_of_modEq ((ZMod.natCast_eq_natCast_iff _ _ _).1 h1) hw'.pow_eq_one

theorem lev_pos {d : ℕ} (hd : 0 < d) : 0 < Fintype.card K ^ d - 1 :=
  Nat.sub_pos_of_lt (Nat.one_lt_pow hd.ne' Fintype.one_lt_card)

theorem exists_prim {d : ℕ} (hd : 0 < d) :
    ∃ w : AlgebraicClosure K, IsPrimitiveRoot w (Fintype.card K ^ d - 1) := by
  have h1 : 1 ≤ Fintype.card K ^ d := Nat.one_le_pow _ _ Fintype.card_pos
  have hq : ((Fintype.card K : ℕ) : AlgebraicClosure K) = 0 := by
    rw [← map_natCast (algebraMap K (AlgebraicClosure K)), Nat.cast_card_eq_zero, map_zero]
  have : NeZero ((Fintype.card K ^ d - 1 : ℕ) : AlgebraicClosure K) := ⟨by
    rw [Nat.cast_sub h1, Nat.cast_pow, hq, zero_pow hd.ne']
    simp⟩
  have : NeZero (Fintype.card K ^ d - 1) := ⟨(lev_pos K hd).ne'⟩
  exact HasEnoughRootsOfUnity.exists_primitiveRoot _ _

noncomputable def tower : (k : ℕ) → {z : AlgebraicClosure K // IsPrimitiveRoot z (Fintype.card K ^ k.factorial - 1)}
  | 0 => ⟨(exists_prim K (Nat.factorial_pos 0)).choose, (exists_prim K (Nat.factorial_pos 0)).choose_spec⟩
  | k + 1 =>
    have h := exists_root_over (lev_pos K (Nat.factorial_pos (k + 1)))
      (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.factorial_dvd_factorial (Nat.le_succ k))) (tower k).2
      (exists_prim K (Nat.factorial_pos (k + 1))).choose_spec
    ⟨h.choose, h.choose_spec.1⟩

theorem tower_succ (k : ℕ) :
    (tower K (k + 1)).1 ^ ((Fintype.card K ^ (k + 1).factorial - 1) / (Fintype.card K ^ k.factorial - 1)) =
      (tower K k).1 :=
  (exists_root_over (lev_pos K (Nat.factorial_pos (k + 1)))
      (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.factorial_dvd_factorial (Nat.le_succ k))) (tower K k).2
      (exists_prim K (Nat.factorial_pos (k + 1))).choose_spec).choose_spec.2

theorem tower_le {k l : ℕ} (h : k ≤ l) :
    (tower K l).1 ^ ((Fintype.card K ^ l.factorial - 1) / (Fintype.card K ^ k.factorial - 1)) = (tower K k).1 := by
  induction l, h using Nat.le_induction with
  | base => rw [Nat.div_self (lev_pos K (Nat.factorial_pos k)), pow_one]
  | succ l hl ih =>
    rw [← Nat.div_mul_div (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.factorial_dvd_factorial (Nat.le_succ l)))
      (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.factorial_dvd_factorial hl)), pow_mul, tower_succ, ih]

theorem exists_genSys : ∃ ζ : ℕ → AlgebraicClosure K, ∀ d, 0 < d → orderOf (ζ d) = Fintype.card K ^ d - 1 ∧
    ∀ d', d ∣ d' → 0 < d' → ζ d' ^ ((Fintype.card K ^ d' - 1) / (Fintype.card K ^ d - 1)) = ζ d := by
  refine ⟨fun d => (tower K d).1 ^ ((Fintype.card K ^ d.factorial - 1) / (Fintype.card K ^ d - 1)),
    fun d hd => ⟨?_, fun d' hdd hd' => ?_⟩⟩
  · have hdv := Nat.pow_sub_one_dvd_pow_sub_one (Fintype.card K) (Nat.dvd_factorial hd le_rfl)
    exact ((tower K d).2.pow (lev_pos K (Nat.factorial_pos d)) (Nat.div_mul_cancel hdv).symm).eq_orderOf.symm
  · have hle : d ≤ d' := Nat.le_of_dvd hd' hdd
    show ((tower K d').1 ^ _) ^ _ = (tower K d).1 ^ _
    rw [← pow_mul, Nat.div_mul_div (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.dvd_factorial hd' le_rfl))
      (Nat.pow_sub_one_dvd_pow_sub_one _ hdd), ← tower_le K hle, ← pow_mul,
      Nat.div_mul_div (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.factorial_dvd_factorial hle))
        (Nat.pow_sub_one_dvd_pow_sub_one _ (Nat.dvd_factorial hd le_rfl))]

theorem nonempty_labelConv [DecidableEq K] : Nonempty (Formalism.IrreducibleCountingLemmas.TYPES.LabelConv K) := by
  obtain ⟨θ, hθ⟩ := GlobalTheory.CuspGL.TeichEmb.exists_teichmuller K
  obtain ⟨ζ, hζ⟩ := exists_genSys K
  exact ⟨{ ι := θ, ι_inj := hθ, gen := ζ, gen_order := fun d hd => (hζ d hd).1
           gen_norm := fun d e hd he => (hζ d hd).2 (d * e) (Dvd.intro _ rfl) (Nat.mul_pos hd he) }⟩

theorem exists_monic_irreducible (d : ℕ) (hd : 1 ≤ d) :
    ∃ P : K[X], P.Monic ∧ Irreducible P ∧ P ≠ X ∧ P.natDegree = d := by
  have : Fact (Nat.Prime (ringChar K)) := ⟨CharP.char_is_prime K (ringChar K)⟩
  have : NeZero d := ⟨by omega⟩
  let E := FiniteField.Extension K (ringChar K) d
  have hfin : Module.finrank K E = d := FiniteField.finrank_extension K (ringChar K) d
  obtain ⟨β, hβ⟩ := Field.exists_primitive_element K E
  obtain ⟨α, hα0, hα⟩ : ∃ α : E, α ≠ 0 ∧ IntermediateField.adjoin K {α} = ⊤ := by
    by_cases h : β = 0
    · refine ⟨1, one_ne_zero, ?_⟩
      subst h
      rw [IntermediateField.adjoin_one]
      rwa [IntermediateField.adjoin_zero] at hβ
    · exact ⟨β, h, hβ⟩
  have hint : IsIntegral K α := Algebra.IsIntegral.isIntegral α
  refine ⟨minpoly K α, minpoly.monic hint, minpoly.irreducible hint, fun h => hα0 ?_, ?_⟩
  · have h0 := minpoly.aeval K α
    rwa [h, aeval_X] at h0
  · rw [← IntermediateField.adjoin.finrank hint, hα, IntermediateField.finrank_top', hfin]

end Generators

end GlobalTheory.CompanionTheory.Hypotheses₂.CuspExists
