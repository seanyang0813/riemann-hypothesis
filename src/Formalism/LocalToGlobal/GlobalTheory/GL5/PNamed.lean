module

public import Formalism.LocalRingCardinality.SpanPowerMembership.Spaces
public import Formalism.SharpRestriction.GlobalSchurBounds.StandardLattice
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.CardinalityOfBand
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.GenusMassVolumes

open Formalism.BasicNotions Formalism.MainNotions.StandardLattice Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes MeasureTheory
open scoped TensorProduct

def VolSigIndep (D : D7) : Prop :=
  ∀ (W W₀ : HSpace D.host.E) (P Q P₀ Q₀ : ℕ), W.SigOK → W₀.SigOK → (∀ τ, W.sig τ = (P, Q)) →
    (∀ τ, W₀.sig τ = (P₀, Q₀)) → W.rank = W₀.rank →
    ∀ (μ : Measure (HA (AF D.host.F) D.sp.cm.sig W.gram)) (𝓕 : Set (HA (AF D.host.F) D.sp.cm.sig W.gram))
      (μ₀ : Measure (HA (AF D.host.F) D.sp.cm.sig W₀.gram))
      (𝓕₀ : Set (HA (AF D.host.F) D.sp.cm.sig W₀.gram)),
      IsVolMeas D W P Q μ → IsFundamentalDomain (HFinIn (AF D.host.F) D.sp.cm.sig W.gram) 𝓕 μ →
      IsVolMeas D W₀ P₀ Q₀ μ₀ → IsFundamentalDomain (HFinIn (AF D.host.F) D.sp.cm.sig W₀.gram) 𝓕₀ μ₀ →
      μ 𝓕 = μ₀ 𝓕₀

def stdPos (D : D7) (n : ℕ) : HSpace D.host.E :=
  Formalism.BasicNotions.Examples₂.posSpace (E := D.host.E) (fun x hx => Formalism.BasicNotions.Examples₂.star_isIntegral x hx) n


def band (m a b : ℕ) : Fin m → Bool := fun i => decide (a ≤ (i : ℕ) ∧ (i : ℕ) < b)

theorem card_band (m a b : ℕ) (hb : b ≤ m) :
    (Finset.univ.filter (fun i : Fin m => band m a b i = true)).card = b - a := by
  first | (apply UpperTheory.Reformulated.B.CardinalityOfBand.card_band <;> assumption)

theorem hasSig_diag_sgn {N : ℕ} (d : Fin N → Bool) (q : ℕ)
    (hq : (Finset.univ.filter (fun i => d i = true)).card = q) :
    Formalism.UG.HasSignature (Matrix.diagonal fun i : Fin N => (Formalism.BasicNotions.Examples₂.sgn (d i) : ℂ)) (N - q) q := by
  classical
  have hsum := Finset.card_filter_add_card_filter_not (s := (Finset.univ : Finset (Fin N)))
    (p := fun i => d i = true)
  rw [hq, Finset.card_univ, Fintype.card_fin] at hsum
  have hp : Fintype.card {i // d i = false} = N - q := by
    rw [Fintype.card_subtype]
    have : (Finset.univ.filter (fun i : Fin N => d i = false)) =
        (Finset.univ.filter (fun i : Fin N => ¬ d i = true)) := by
      ext i; simp
    rw [this]; omega
  have hq' : Fintype.card {i // ¬ d i = false} = q := by
    rw [Fintype.card_subtype, ← hq]
    congr 1; ext i; simp
  let e1 : {i // d i = false} ≃ Fin (N - q) := Fintype.equivFinOfCardEq hp
  let e2 : {i // ¬ d i = false} ≃ Fin q := Fintype.equivFinOfCardEq hq'
  let e : Fin N ≃ Fin (N - q) ⊕ Fin q :=
    (Equiv.sumCompl (fun i => d i = false)).symm.trans (Equiv.sumCongr e1 e2)
  have hl : ∀ a, e.symm (Sum.inl a) = (e1.symm a).1 := fun a => rfl
  have hr : ∀ a, e.symm (Sum.inr a) = (e2.symm a).1 := fun a => rfl
  refine ⟨e, 1, ?_⟩
  simp only [Units.val_one, Formalism.UG.cT_one, Matrix.one_mul, Matrix.mul_one]
  ext a b
  rcases a with a | a <;> rcases b with b | b
  · rw [Matrix.reindex_apply, Matrix.submatrix_apply, hl, hl, Matrix.diagonal_apply]
    simp only [Formalism.UG.Jpq, Matrix.fromBlocks_apply₁₁, Matrix.one_apply]
    by_cases h : a = b
    · subst h; simp [(e1.symm a).2, Formalism.BasicNotions.Examples₂.sgn]
    · have h' : (e1.symm a).1 ≠ (e1.symm b).1 := fun h' => h (e1.symm.injective (Subtype.val_injective h'))
      simp [h, h']
  · rw [Matrix.reindex_apply, Matrix.submatrix_apply, hl, hr, Matrix.diagonal_apply]
    simp only [Formalism.UG.Jpq, Matrix.fromBlocks_apply₁₂, Matrix.zero_apply]
    have h' : (e1.symm a).1 ≠ (e2.symm b).1 := fun h => (e2.symm b).2 (h ▸ (e1.symm a).2)
    simp [h']
  · rw [Matrix.reindex_apply, Matrix.submatrix_apply, hr, hl, Matrix.diagonal_apply]
    simp only [Formalism.UG.Jpq, Matrix.fromBlocks_apply₂₁, Matrix.zero_apply]
    have h' : (e2.symm a).1 ≠ (e1.symm b).1 := fun h => (e2.symm a).2 (h ▸ (e1.symm b).2)
    simp [h']
  · rw [Matrix.reindex_apply, Matrix.submatrix_apply, hr, hr, Matrix.diagonal_apply]
    simp only [Formalism.UG.Jpq, Matrix.fromBlocks_apply₂₂, Matrix.neg_apply, Matrix.one_apply]
    have hd : d (e2.symm a).1 = true := by simpa using (e2.symm a).2
    by_cases h : a = b
    · subst h; simp [hd, Formalism.BasicNotions.Examples₂.sgn]
    · have h' : (e2.symm a).1 ≠ (e2.symm b).1 := fun h' => h (e2.symm.injective (Subtype.val_injective h'))
      simp [h, h']

def bandSpace (D : D7) (m a b : ℕ) : HSpace D.host.E :=
  Formalism.BasicNotions.Examples₂.stdSpace (E := D.host.E) (fun x hx => Formalism.BasicNotions.Examples₂.star_isIntegral x hx) m (band m a b)
    (m - (b - a)) (b - a)

theorem bandSpace_sigOK (D : D7) (m a b : ℕ) (hb : b ≤ m) : (bandSpace D m a b).SigOK := by
  intro τ
  have hg : (bandSpace D m a b).gram.map τ =
      Matrix.diagonal fun i : Fin m => (Formalism.BasicNotions.Examples₂.sgn (band m a b i) : ℂ) := by
    ext i j
    rw [Matrix.map_apply]
    refine (congrArg τ (Formalism.BasicNotions.Examples₂.stdSpace_gram_apply (E := D.host.E)
      (fun x hx => Formalism.BasicNotions.Examples₂.star_isIntegral x hx) m (band m a b) (m - (b - a)) (b - a) i j)).trans ?_
    change τ (if i = j then (Formalism.BasicNotions.Examples₂.sgn (band m a b i) : D.host.E) else 0) =
      if i = j then (Formalism.BasicNotions.Examples₂.sgn (band m a b i) : ℂ) else 0
    by_cases h : i = j <;> simp [h, Formalism.BasicNotions.Examples₂.map_sgn]
  rw [hg]
  exact hasSig_diag_sgn (band m a b) (b - a) (card_band m a b hb)



end Formalism.L2.GlobalTheoryTheory.GenusMassVolumes

end
