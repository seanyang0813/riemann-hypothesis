module

public import Formalism.LocalToGlobal.ProjectiveLattices.CompTie
public import Formalism.LocalToGlobal.ProjectiveLattices.CompHt
public import Formalism.LocalToGlobal.ProjectiveLattices.CompTieA

@[expose] public section

noncomputable section

namespace Formalism.L2.Pj

open NumberField IsDedekindDomain ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.T0

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}
  {Xo : Moduli Dw l} {c : Coeff l}

def IntAlg (f : Rul Xo c) : Prop := ∀ la, ∀ v ∈ valSet Xo c (algCls Xo c) la, 0 ≤ v f

theorem intAlg_zero : IntAlg (0 : Rul Xo c) := by
  intro la v hv
  simp only [valSet] at hv
  obtain ⟨y, rfl⟩ := hv
  unfold vAtV
  obtain ⟨⟨w, q⟩, T, io, e, ho, z, hz, eta, -, hw⟩ := y
  unfold profI at hw
  obtain ⟨rfl, -⟩ := Prod.mk.inj hw
  simp [evI, evR, evalAt, nval]

theorem intAlg_add {f g : Rul Xo c} (hf : IntAlg f) (hg : IntAlg g) : IntAlg (f + g) := fun la v hv =>
  (le_min (hf la v hv) (hg la v hv)).trans ((isVal_valSet la v hv).add f g)

theorem intAlg_smul (a : 𝓞 c.F) {f : Rul Xo c} (hf : IntAlg f) : IntAlg (a • f) := fun la v hv => by
  have e : (a • f : Rul Xo c) = (a : c.F) • f := rfl
  rw [e]
  by_cases ha : (a : c.F) = 0
  · set_option synthInstance.maxHeartbeats 200000 in
      rw [ha, zero_smul, (isVal_valSet la v hv).zero]
    exact le_top
  · rw [(isVal_valSet la v hv).smul _ _ ha]
    exact add_nonneg (by exact_mod_cast vAdd_int_nonneg la ha) (hf la v hv)

theorem intAlg_span {s : Set (Rul Xo c)} (hs : ∀ f ∈ s, IntAlg f) {f : Rul Xo c}
    (hf : f ∈ Submodule.span (𝓞 c.F) s) : IntAlg f := by
  induction hf using Submodule.span_induction with
  | mem x h => exact hs x h
  | zero => exact intAlg_zero
  | add x y _ _ hx hy => exact intAlg_add hx hy
  | smul a x _ hx => exact intAlg_smul a hx


variable (Xo c) in
def RegularityR1ValuedPoints (C : ((E →+* ℂ) × ℕ → ℕ) → ℕ → Submodule c.F (Rul Xo c))
    (cls : ∀ (T : CDVR) (ι : c.F →+* T.Fr), IntFr Xo c T ι → Prop) (PY : HeightOneSpectrum (𝓞 c.F) → Type)
    (lies : ∀ la (T : CDVR) (ι : c.F →+* T.Fr), IntFr Xo c T ι → PY la → Prop) : Prop :=
  ∀ (a : (E →+* ℂ) × ℕ → ℕ) (n : ℕ), ∀ f ∈ C a n, IntAlg f →
    ∀ la (y : PtV Xo c cls (PY la) (lies la) la), 0 ≤ vAtV y f

theorem ramIdx_nonneg {Ω : Type} [Field Ω] [Algebra c.F Ω] {v : AddValuation Ω (WithTop ℤ)}
    {la : HeightOneSpectrum (𝓞 c.F)} (ho : IsOver (K := c.F) v la) : 0 ≤ ramIdx (K := c.F) v la := by
  unfold ramIdx
  have hpos : ∀ n ∈ {n : ℤ | ∃ a ∈ la.asIdeal, a ≠ 0 ∧ v ((algebraMap c.F Ω) ↑a) = ↑n}, 0 ≤ n := by
    rintro n ⟨a, ha, -, hv⟩
    have h := (ho a).mpr ha
    rw [hv] at h
    exact_mod_cast h.le
  rcases Set.eq_empty_or_nonempty
      {n : ℤ | ∃ a ∈ la.asIdeal, a ≠ 0 ∧ v ((algebraMap c.F Ω) ↑a) = ↑n} with he | hne
  · rw [he, Int.csInf_empty]
  · exact hpos _ (Int.csInf_mem hne ⟨0, hpos⟩)

variable (h : GenFrEx Xo c) (δ : ∀ Z : Comp Xo c, AddValuation (Om Z) (WithTop ℤ) → Ix Dw → ℤ)
  (C : ((E →+* ℂ) × ℕ → ℕ) → ℕ → Submodule c.F (Rul Xo c))
  (cls : ∀ (T : CDVR) (ι : c.F →+* T.Fr), IntFr Xo c T ι → Prop) (PY : HeightOneSpectrum (𝓞 c.F) → Type)
  (lies : ∀ la (T : CDVR) (ι : c.F →+* T.Fr), IntFr Xo c T ι → PY la → Prop)

theorem mem_of_mem_span_int (S : Submodule c.F (Rul Xo c)) {s : Set (Rul Xo c)} (hs : s ⊆ S) {F : Rul Xo c}
    (hF : F ∈ Submodule.span (𝓞 c.F) s) : F ∈ S := by
  induction hF using Submodule.span_induction with
  | mem x h => exact hs h
  | zero => exact S.zero_mem
  | add x y _ _ hx hy => exact S.add_mem hx hy
  | smul a x _ hx => exact S.smul_mem (a : c.F) hx


omit δ C cls PY lies in
theorem exists_of_mem_span_valG {u : WtR E} {ι : Type} {R : ι → Rul Xo c} {x : ∀ Z : Comp Xo c, AC Z}
    (hx : x ∈ (letI : ∀ Z : Comp Xo c, Module (𝓞 c.F) (AC Z) := fun _ => Algebra.toModule
      Submodule.span (𝓞 c.F) (Set.range fun k => valG h u (R k)))) :
    ∃ F ∈ Submodule.span (𝓞 c.F) (Set.range R), x = valG h u F := by
  try dsimp only at hx
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨k, rfl⟩ := hy
    exact ⟨R k, Submodule.subset_span ⟨k, rfl⟩, rfl⟩
  | zero => exact ⟨0, zero_mem _, funext fun Z => (valC_zero h u.1 u.2 Z).symm⟩
  | add y z _ _ hy hz =>
    obtain ⟨F, hF, rfl⟩ := hy
    obtain ⟨G, hG, rfl⟩ := hz
    exact ⟨F + G, add_mem hF hG, funext fun Z => (valC_add h u.1 u.2 F G Z).symm⟩
  | smul a y _ hy =>
    obtain ⟨F, hF, rfl⟩ := hy
    refine ⟨a • F, Submodule.smul_mem _ a hF, funext fun Z => ?_⟩
    refine (Algebra.smul_def a (valG h u F Z)).trans ?_
    rw [IsScalarTower.algebraMap_apply (𝓞 c.F) c.F (AC Z)]
    exact (valC_smul_ct h u.1 u.2 (a : c.F) F Z).symm

section LawA2Of

variable [Fintype (Comp Xo c)]
    (fn : ∀ σ : c.F →+* ℂ, FrPt Xo c (CAt σ) → Ix Dw → ℝ)
    (yP : ∀ Z : Comp Xo c, ∀ P : Om Z →+* ℂ, FrPt Xo c (CAt (sgOf P)))
    (Dd N T i g0 : ℕ) (cc : ℝ) (uL uF uka ude uet uta1 uta2 : WtR E)
    (wR : Fin (N + 1) → Rul Xo c) (jc : Comp Xo c → Fin (N + 1))
    (np : ℕ) (thpR : Fin np → Rul Xo c) (n0 : ℕ) (th0R : Fin n0 → Rul Xo c) (uF0 : WtR E)
    (nk : ℕ) (thkR : Fin nk → Rul Xo c) (MR : Set (Rul Xo c)) (etR ta1R ta2R : Rul Xo c)
    (nu : HeightOneSpectrum (𝓞 c.F) → ℝ)
    (ip : (c.F →+* ℂ) → (∀ Z : Comp Xo c, AC Z) → (∀ Z : Comp Xo c, AC Z) → ℂ)
    (wsize : WTZ E → ℝ) (DF PN PQ tableDegreeThreeBase PP0' Pd Gc PI4 Pet tableLineDegreeFive tableLineDegreeTwo Prw PO f r : ℝ)

end LawA2Of

end Formalism.L2.Pj
