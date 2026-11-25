module

public import Development.AutomorphicSpectrum.Definitions.GlobalGeometry.EtaleLocalizationAtPrimeTensorOfLowHeight
public import GroundTheory.HeightsAndTheta.Heights.HodgeLowerBound.FrameDefinitions.Weights
public import GroundTheory.HeightsAndTheta.Heights.ComplexProjective

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Cusp

open AlgebraicGeometry CategoryTheory MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo GroundTheory.Heights₂.Heights.LowerBoundFree
open GroundTheory.Heights₂.Heights.Regular (PotentialCharts)
open ReciprocityTheory.AnForm.M (LocPot)

section Free

variable {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)] {II : IntersectionSystem} {Ψ : Type} [Fintype Ψ]
  {Ω : Type} [Field Ω] [Algebra ℚ Ω] {W : Ψ → Type} [∀ τ, AddCommGroup (W τ)] [∀ τ, Module Ω (W τ)]
  (D : ComponentData II Ψ K J Ω W)

def offBd (a : Fin D.nCharts) : Set (Fin (Fintype.card Ψ * D.j * (D.N - D.j)) → ℂ) :=
  {t | t ∈ Metric.ball 0 1 ∧ (D.chart a).γ t ∉ D.Bd}

def ChartPsh (w : ((Σ k, J k) → ℂ) → ℝ) : Prop :=
  ∀ a, ReciprocityTheory.AnForm.A.IsPsh (offBd D a) fun t => w ((D.chart a).γ t)

def ChartCont (w : ((Σ k, J k) → ℂ) → ℝ) : Prop :=
  ∀ a, ContinuousOn (fun t => w ((D.chart a).γ t)) (offBd D a)

def ChartBdd (w : ((Σ k, J k) → ℂ) → ℝ) : Prop :=
  ∀ a, ∀ t₀ ∈ Metric.ball (0 : Fin (Fintype.card Ψ * D.j * (D.N - D.j)) → ℂ) 1, ∃ ε > (0 : ℝ), ∃ C : ℝ,
    ∀ t ∈ offBd D a, ‖t - t₀‖ < ε → |w ((D.chart a).γ t)| ≤ C

def LogHom (a : K → ℤ) (w : ((Σ k, J k) → ℂ) → ℝ) : Prop :=
  ∀ z ∈ D.Xo, ∀ c : K → ℂ, (∀ k, c k ≠ 0) → w (torusSmul c z) = w z + ∑ k, (a k : ℝ) * Real.log ‖c k‖

def ConjOff (w : ((Σ k, J k) → ℂ) → ℝ) : Prop := ∀ z ∈ D.Xo, w (conjVec z) = w z

variable {D} (M : XModel D)

def ThRef (ref : HermLine J) (th : LocPot M.Xc) : Prop :=
  ∀ x, ∀ y ∈ th.U x, ∃ U : Set M.Xc, IsOpen U ∧ y ∈ U ∧ U ⊆ th.U x ∧
    ∃ s : M.Xc → (Σ k, J k) → ℂ, (∀ y' ∈ U, s y' ∈ mcPts (mCoordIdeal D.y) ∧ M.proj (s y') = y') ∧
      (∀ p, M.atlas.HoloOn U fun y' => s y' p) ∧ ∃ G : M.Xc → ℂ, M.atlas.HoloOn U G ∧
        ∀ y' ∈ U, th.φ x y' - Real.log (ref.h (s y')) = (G y').re

def Adapted (P : PotentialCharts M.atlas) (S : Fin P.N → Finset (Fin D.n)) : Prop :=
  ∀ j, ∀ z ∈ mcPts (mCoordIdeal D.y), M.proj z ∈ (P.chart j).source →
    (z ∈ D.Bd ↔ P.chart j (M.proj z) ∈ ReciprocityTheory.AnForm.A.coordDiv (S j))

def FromSnc (P : PotentialCharts M.atlas) : Prop :=
  ∀ j, (P.chart j).target = Metric.ball 0 1 ∧
    ∃ (a : Fin D.nCharts) (t₀ : Fin D.n → ℂ) (ε : ℝ), ‖t₀‖ ≤ 1 / 2 ∧ 0 < ε ∧ ε ≤ 1 / 4 ∧
      (∀ i : Fin D.n, (i : ℕ) < (D.chart a).a → t₀ i ≠ 0 → 2 * ε ≤ ‖t₀ i‖) ∧
      ((∀ t ∈ (P.chart j).target, (P.chart j).symm t = M.proj ((D.chart a).γ (t₀ + (ε : ℂ) • t))) ∨
        ∀ t ∈ (P.chart j).target, (P.chart j).symm t = M.proj (conjVec ((D.chart a).γ (t₀ + (ε : ℂ) • star t))))

def SymmCharts (P : PotentialCharts M.atlas) (κ : Equiv.Perm (Fin P.N)) : Prop :=
  (∀ j, κ (κ j) = j) ∧ (∀ j t, P.q (κ j) (star t) = P.q j t) ∧ ∀ j, ∀ z ∈ mcPts (mCoordIdeal D.y),
    (M.proj (conjVec z) ∈ (P.chart (κ j)).source ↔ M.proj z ∈ (P.chart j).source) ∧
    (M.proj (conjVec z) ∈ P.mid (κ j) ↔ M.proj z ∈ P.mid j) ∧
    (M.proj (conjVec z) ∈ P.inner (κ j) ↔ M.proj z ∈ P.inner j) ∧
    (M.proj z ∈ (P.chart j).source → P.chart (κ j) (M.proj (conjVec z)) = star (P.chart j (M.proj z)))

end Free

def detLat {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X} {E : Type} [AddCommGroup E]
    [Module Ω E] (L : Lat ξ E) {r : ℕ} (b₀ : Fin r → E) : Lat ξ Ω := fun p =>
  Submodule.span (regAt ξ p) {t | ∃ (b : Fin r → E) (T : Matrix (Fin r) (Fin r) Ω), L.IsFrameAt b p ∧
    (∀ k, b k = ∑ k', T k' k • b₀ k') ∧ t = T.det}

namespace SncPiece

section Coord

variable {K : Type} {J : K → Type}

theorem conj_conj (z : (Σ k, J k) → ℂ) : conjVec (conjVec z) = z := by
  funext p
  simp [conjVec]

theorem conj_mem {P : Ideal (MRing J)} {z : (Σ k, J k) → ℂ} (hz : z ∈ mcPts P) : conjVec z ∈ mcPts P := by
  have h : ∀ f : MRing J, eval (conjVec z) (map (Int.castRingHom ℂ) f) =
      starRingEnd ℂ (eval z (map (Int.castRingHom ℂ) f)) := fun f => by
    induction f using MvPolynomial.induction_on with
    | C a => simp
    | add p q hp hq => simp [hp, hq]
    | mul_X p i hp => simp [hp, conjVec]
  exact ⟨fun k => (hz.1 k).imp fun i hi => (map_ne_zero _).2 hi, fun f hf => by rw [h, hz.2 f hf, map_zero]⟩

theorem add_smul_mem_ball {n : ℕ} {t₀ t : Fin n → ℂ} {ε : ℝ} (h₀ : ‖t₀‖ ≤ 1 / 2) (hε : 0 < ε) (hε' : ε ≤ 1 / 4)
    (ht : ‖t‖ < 2) : t₀ + (ε : ℂ) • t ∈ Metric.ball (0 : Fin n → ℂ) 1 := by
  rw [mem_ball_zero_iff]
  refine (norm_add_le _ _).trans_lt ?_
  rw [norm_smul, Complex.norm_real, Real.norm_of_nonneg hε.le]
  nlinarith [norm_nonneg t]

theorem add_smul_eq_zero_iff {n : ℕ} {t₀ t : Fin n → ℂ} {ε : ℝ} (hε : 0 < ε) (ht : ‖t‖ < 2) {i : Fin n}
    (hi : t₀ i ≠ 0 → 2 * ε ≤ ‖t₀ i‖) : (t₀ + (ε : ℂ) • t) i = 0 ↔ t₀ i = 0 ∧ t i = 0 := by
  simp only [Pi.add_apply, Pi.smul_apply, smul_eq_mul]
  refine ⟨fun h => ?_, fun h => by rw [h.1, h.2, mul_zero, add_zero]⟩
  have h0 : t₀ i = 0 := by
    by_contra hne
    have h1 := hi hne
    rw [eq_neg_of_add_eq_zero_left h, norm_neg, norm_mul, Complex.norm_real, Real.norm_of_nonneg hε.le] at h1
    nlinarith [norm_le_pi_norm t i]
  rw [h0, zero_add] at h
  exact ⟨h0, (mul_eq_zero.1 h).resolve_left (Complex.ofReal_ne_zero.2 hε.ne')⟩

end Coord

section Free

variable {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)] {II : IntersectionSystem} {Ψ : Type} [Fintype Ψ]
  {Ω : Type} [Field Ω] [Algebra ℚ Ω] {W : Ψ → Type} [∀ τ, AddCommGroup (W τ)] [∀ τ, Module Ω (W τ)]
  (D : ComponentData II Ψ K J Ω W)

theorem conj_mem_bd_iff (z : (Σ k, J k) → ℂ) : conjVec z ∈ D.Bd ↔ z ∈ D.Bd :=
  ⟨fun h => conj_conj z ▸ D.bd_conj _ h, D.bd_conj z⟩

theorem conj_mem_Xo {z : (Σ k, J k) → ℂ} (hz : z ∈ D.Xo) : conjVec z ∈ D.Xo :=
  ⟨conj_mem hz.1, fun h => hz.2 ((conj_mem_bd_iff D z).1 h)⟩

theorem mem_offBd {a : Fin D.nCharts} {t : Fin (Fintype.card Ψ * D.j * (D.N - D.j)) → ℂ} :
    t ∈ offBd D a ↔ ‖t‖ < 1 ∧ ∀ i : Fin _, (i : ℕ) < (D.chart a).a → t i ≠ 0 := by
  rw [← mem_ball_zero_iff]
  refine and_congr_right fun h => ?_
  rw [(D.chart a).boundary t h]
  simp

theorem isOpen_offBd (a : Fin D.nCharts) : IsOpen (offBd D a) := by
  have : offBd D a = {t | ‖t‖ < 1} ∩ ⋂ i : Fin (Fintype.card Ψ * D.j * (D.N - D.j)), {t | (i : ℕ) < (D.chart a).a → t i ≠ 0} := by
    ext t
    simp [mem_offBd]
  rw [this]
  refine (isOpen_lt continuous_norm continuous_const).inter (isOpen_iInter_of_finite fun i => ?_)
  by_cases h : (i : ℕ) < (D.chart a).a
  · simpa [h] using isOpen_ne_fun (continuous_apply i) continuous_const
  · simp [h]

theorem mem_Xo_of_offBd {a : Fin D.nCharts} {t : Fin (Fintype.card Ψ * D.j * (D.N - D.j)) → ℂ} (ht : t ∈ offBd D a) :
    (D.chart a).γ t ∈ D.Xo := ⟨(D.chart a).mem t ht.1, ht.2⟩

theorem mem_bd_iff {a : Fin D.nCharts} {t₀ t : Fin D.n → ℂ} {ε : ℝ} (h₀ : ‖t₀‖ ≤ 1 / 2) (hε : 0 < ε) (hε' : ε ≤ 1 / 4)
    (hsep : ∀ i : Fin D.n, (i : ℕ) < (D.chart a).a → t₀ i ≠ 0 → 2 * ε ≤ ‖t₀ i‖) (ht : ‖t‖ < 2) :
    (D.chart a).γ (t₀ + (ε : ℂ) • t) ∈ D.Bd ↔ ∃ i : Fin D.n, ((i : ℕ) < (D.chart a).a ∧ t₀ i = 0) ∧ t i = 0 := by
  refine ((D.chart a).boundary _ (add_smul_mem_ball h₀ hε hε' ht)).trans (exists_congr fun i => ?_)
  rw [and_assoc]
  exact and_congr_right fun hi => add_smul_eq_zero_iff hε ht (hsep i hi)

theorem logHom_log (A : HermLine J) : LogHom D A.a fun z => Real.log (A.h z) := by
  intro z hz c hc
  have hp : ∀ k, ‖c k‖ ^ A.a k ≠ 0 := fun k => zpow_ne_zero _ (norm_ne_zero_iff.2 (hc k))
  change Real.log (A.h fun p => c p.1 * z p) = _
  rw [A.smul c z hc, Real.log_mul (Finset.prod_ne_zero_iff.2 fun k _ => hp k) (A.pos z hz.1.1).ne',
    Real.log_prod fun k _ => hp k, add_comm]
  simp only [Real.log_zpow]

variable {D} {M : XModel D}

end Free

section Det

variable {X : Scheme.{0}} {Ω : Type} [Field Ω] {ξ : Spec (CommRingCat.of Ω) ⟶ X} {E : Type} [AddCommGroup E]
  [Module Ω E] {L : Lat ξ E} {r : ℕ} {b₀ : Fin r → E} {p : Cpt ξ}

theorem det_mem_detLat {b : Fin r → E} {T : Matrix (Fin r) (Fin r) Ω} (hb : L.IsFrameAt b p)
    (hT : ∀ k, b k = ∑ k', T k' k • b₀ k') : T.det ∈ detLat L b₀ p :=
  Submodule.subset_span ⟨b, T, hb, hT, rfl⟩

end Det

end SncPiece

section Free

variable {K : Type} [Fintype K] {J : K → Type} [∀ k, Fintype (J k)] {II : IntersectionSystem} {Ψ : Type} [Fintype Ψ]
  {Ω : Type} [Field Ω] [Algebra ℚ Ω] {W : Ψ → Type} [∀ τ, AddCommGroup (W τ)] [∀ τ, Module Ω (W τ)]
  {D : ComponentData II Ψ K J Ω W} {M : XModel D} {P : PotentialCharts M.atlas} {S : Fin P.N → Finset (Fin D.n)}

theorem Adapted.mem_bd_iff (h : Adapted M P S) {j : Fin P.N} {t : Fin D.n → ℂ} (ht : t ∈ (P.chart j).target)
    {z : (Σ k, J k) → ℂ} (hz : z ∈ mcPts (mCoordIdeal D.y)) (e : (P.chart j).symm t = M.proj z) :
    z ∈ D.Bd ↔ t ∈ ReciprocityTheory.AnForm.A.coordDiv (S j) := by
  rw [h j z hz (e ▸ (P.chart j).map_target ht), ← e, (P.chart j).right_inv ht]

theorem Adapted.mem_iff_of_piece (h : Adapted M P S) {j : Fin P.N} (hj : (P.chart j).target = Metric.ball 0 1)
    {a : Fin D.nCharts} {t₀ : Fin D.n → ℂ} {ε : ℝ} (h₀ : ‖t₀‖ ≤ 1 / 2) (hε : 0 < ε) (hε' : ε ≤ 1 / 4)
    (hsep : ∀ i : Fin D.n, (i : ℕ) < (D.chart a).a → t₀ i ≠ 0 → 2 * ε ≤ ‖t₀ i‖)
    (hγ : (∀ t ∈ (P.chart j).target, (P.chart j).symm t = M.proj ((D.chart a).γ (t₀ + (ε : ℂ) • t))) ∨
      ∀ t ∈ (P.chart j).target, (P.chart j).symm t = M.proj (conjVec ((D.chart a).γ (t₀ + (ε : ℂ) • star t))))
    (i : Fin D.n) : i ∈ S j ↔ (i : ℕ) < (D.chart a).a ∧ t₀ i = 0 := by
  let t : Fin D.n → ℂ := fun l => if l = i then 0 else 1 / 2
  have ht0 : ∀ l, t l = 0 ↔ l = i := fun l => by by_cases hl : l = i <;> simp [t, hl]
  have hst : star t = t := funext fun l => by by_cases hl : l = i <;> simp [t, hl]
  have hn : ‖t‖ < 1 := (pi_norm_lt_iff one_pos).2 fun l => by by_cases hl : l = i <;> norm_num [t, hl]
  have ht : t ∈ (P.chart j).target := hj ▸ mem_ball_zero_iff.2 hn
  have hm := (D.chart a).mem _ (SncPiece.add_smul_mem_ball h₀ hε hε' (hn.trans one_lt_two))
  have key : (D.chart a).γ (t₀ + (ε : ℂ) • t) ∈ D.Bd ↔ t ∈ ReciprocityTheory.AnForm.A.coordDiv (S j) := by
    rcases hγ with hγ | hγ
    · exact h.mem_bd_iff ht hm (hγ t ht)
    · exact (SncPiece.conj_mem_bd_iff D _).symm.trans
        (h.mem_bd_iff ht (SncPiece.conj_mem hm) (by rw [hγ t ht, hst]))
  rw [SncPiece.mem_bd_iff D h₀ hε hε' hsep (hn.trans one_lt_two)] at key
  simpa [ReciprocityTheory.AnForm.A.coordDiv, ht0] using key.symm

end Free

namespace SncLine

open Metric GroundTheory.Heights₂.Heights.LowerBoundFree.Line
open GroundTheory.Heights₂.Heights (CP)
open scoped Matrix ComplexOrder

end SncLine

end GlobalTheory.CompanionTheory.Ar.Cusp
