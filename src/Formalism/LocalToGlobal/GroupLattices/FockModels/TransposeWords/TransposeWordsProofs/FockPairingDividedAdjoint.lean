module

public import Formalism.LocalToGlobal.GroupLattices.FockModels.TransposeWords.FockPairingHighestWeight
import Formalism.GradedWeylDivisibility.FinalB
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LClosedeqLemmas
public import Formalism.GradedWeylDivisibility.FockSpaceTableaux.LRowdivLemmas
import Formalism.FockPairing

@[expose] public section

open MvPolynomial

noncomputable section

namespace Formalism.L2.G.Model.TS

open Formalism.GradedWeylDivisibility

lemma adj_fockR_add_left {σ R : Type*} [CommRing R] (f f' g : MvPolynomial σ R) :
    fockR (f + f') g = fockR f g + fockR f' g :=
  FockPairing.pair_add_left f f' g

lemma adj_fockR_smul_left {σ R : Type*} [CommRing R] (a : R) (f g : MvPolynomial σ R) :
    fockR (a • f) g = a * fockR f g :=
  FockPairing.pair_smul_left a f g

lemma adj_fockR_add_right {σ R : Type*} [CommRing R] (f g g' : MvPolynomial σ R) :
    fockR f (g + g') = fockR f g + fockR f g' :=
  FockPairing.pair_add_right f g g'

lemma adj_fockR_smul_right {σ R : Type*} [CommRing R] (a : R) (f g : MvPolynomial σ R) :
    fockR f (a • g) = a * fockR f g :=
  FockPairing.pair_smul_right a f g

lemma adj_fockR_map {σ R S : Type*} [CommRing R] [CommRing S] (φ : R →+* S) (f g : MvPolynomial σ R) :
    fockR (map φ f) (map φ g) = φ (fockR f g) :=
  FockPairing.pair_map φ f g

lemma adj_rowDiv_int {r n : ℕ} (a b : Fin r) (k : ℕ) (f g : MvPolynomial (Fin r × Fin n) ℤ) :
    fockR (rowDiv ℤ a b k f) g = fockR f (rowDiv ℤ b a k g) := by
  apply Int.cast_injective (α := ℚ)
  have e1 := adj_fockR_map (Int.castRingHom ℚ) (rowDiv ℤ a b k f) g
  have e2 := adj_fockR_map (Int.castRingHom ℚ) f (rowDiv ℤ b a k g)
  simp only [eq_intCast] at e1 e2
  rw [← e1, ← e2, ← lclosedeq_rowDiv_map, ← lclosedeq_rowDiv_map]
  exact fockQRowDivAdj r n a b k _ _

lemma adj_monomial_eq {σ R : Type*} [CommRing R] (m : σ →₀ ℕ) (c : R) :
    (monomial m c : MvPolynomial σ R) = c • map (Int.castRingHom R) (monomial m (1 : ℤ)) := by
  rw [MvPolynomial.map_monomial, map_one, MvPolynomial.smul_monomial, smul_eq_mul, mul_one]

theorem fock_pairing_divided_adjoint : FockRRowDivAdj := by
  intro R _ r n a b k f g
  induction f using MvPolynomial.induction_on' with
  | monomial m c =>
    induction g using MvPolynomial.induction_on' with
    | monomial m' c' =>
      rw [adj_monomial_eq m c, adj_monomial_eq m' c', rowDiv_smul, rowDiv_smul,
        lclosedeq_rowDiv_map, lclosedeq_rowDiv_map]
      rw [adj_fockR_smul_left, adj_fockR_smul_right, adj_fockR_smul_left, adj_fockR_smul_right,
        adj_fockR_map, adj_fockR_map, adj_rowDiv_int]
    | add g1 g2 h1 h2 =>
      rw [rowDiv_add, adj_fockR_add_right, adj_fockR_add_right, h1, h2]
  | add f1 f2 h1 h2 =>
    rw [rowDiv_add, adj_fockR_add_left, adj_fockR_add_left, h1, h2]

lemma adj_applyWord_cons {R : Type*} [CommRing R] {r n : ℕ} (x : Fin r × Fin r × ℕ)
    (w : List (Fin r × Fin r × ℕ)) (F : MvPolynomial (Fin r × Fin n) R) :
    applyWord R (x :: w) F = rowDiv R x.1 x.2.1 x.2.2 (applyWord R w F) := by
  rfl

lemma adj_applyWord_append {R : Type*} [CommRing R] {r n : ℕ} (l1 l2 : List (Fin r × Fin r × ℕ))
    (F : MvPolynomial (Fin r × Fin n) R) :
    applyWord R (l1 ++ l2) F = applyWord R l1 (applyWord R l2 F) := by
  unfold applyWord
  rw [List.foldr_append]

lemma adj_transposeWord_cons {r : ℕ} (x : Fin r × Fin r × ℕ) (w : List (Fin r × Fin r × ℕ)) :
    transposeWord (x :: w) = transposeWord w ++ [(x.2.1, x.1, x.2.2)] := by
  simp [transposeWord]

theorem fock_pairing_word_adjoint : FockRWordAdj := by
  intro R _ r n w
  induction w with
  | nil =>
    intro F G
    rfl
  | cons x w ih =>
    intro F G
    rw [adj_applyWord_cons, fock_pairing_divided_adjoint R r n x.1 x.2.1 x.2.2, ih, adj_transposeWord_cons,
      adj_applyWord_append]
    rfl

end Formalism.L2.G.Model.TS
