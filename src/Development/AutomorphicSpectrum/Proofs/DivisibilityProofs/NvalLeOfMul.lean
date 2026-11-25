module

public import Development.AbelianVarietyTheory.Definitions.Divisors.GenRatios
public import Formalism.LocalToGlobal.ProjectiveLattices.IntAllFree
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.LawsFieldsSeparately
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.IntegralFrameExtensionOfRankZeroSignature
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ModuliPointIntegralFrameAfterFiniteExtension
import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.ExistsFramedPointBaseChangeAlgebraMap
public import Development.AbelianVarietyTheory.Proofs.UnitaryExistence.FrameLawsOfModuli
public import Development.AutomorphicSpectrum.Proofs.GeometryProofs.RootOriginFrameSectionBound
public import Formalism.LocalToGlobal.ProjectiveLattices.SatLeaves
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Definitions.Divisors.FirstChernLeviEqConstant
import Development.AbelianVarietyTheory.Definitions.Divisors.NormNegCmConstantEqAtAllEmbeddings
import Development.AbelianVarietyTheory.Definitions.Divisors.SemiposAtOfPositive
import Development.AbelianVarietyTheory.Definitions.Divisors.SlopeTestRemainingChoices
public import Formalism.LocalToGlobal.ProjectiveLattices.IntAllProof

@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Pj Formalism.BasicNotions.TH Formalism.L2.Theta ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD GlobalTheory.AllWt GlobalTheory.CompHt GlobalTheory.CovTop GlobalTheory.CovHt GlobalTheory.Mean4 GlobalTheory.Mean4O
open scoped ENNReal Classical

namespace GlobalTheory.CompanionTheory.SmallFin

theorem le_of_mem_span {K R : Type} [Field K] [NumberField K] [CommRing R] [Algebra K R] [Algebra (𝓞 K) R]
    [IsScalarTower (𝓞 K) K R] {la : HeightOneSpectrum (𝓞 K)} {v : R → EReal} (hv : IsVal la v) {C : Submodule K R}
    {n : ℕ} (w : Fin n → C) {d : EReal} (hd : ∀ i, d ≤ v (w i : R)) {x : C}
    (hx : x ∈ Submodule.span (𝓞 K) (Set.range w)) : d ≤ v (x : R) := by
  induction hx using Submodule.span_induction with
  | mem x hx =>
    obtain ⟨i, rfl⟩ := hx
    exact hd i
  | zero =>
    show d ≤ v 0
    rw [hv.zero]
    exact le_top
  | add x y _ _ hx hy => exact (le_min hx hy).trans (hv.add _ _)
  | smul a x _ hx =>
    have h1 : ((a • x : C) : R) = (a : K) • (x : R) := (algebraMap_smul K a (x : R)).symm
    rw [h1]
    by_cases ha : (a : K) = 0
    · rw [ha, zero_smul, hv.zero]
      exact le_top
    · rw [hv.smul _ _ ha]
      have h2 : (0 : EReal) ≤ (((vAdd la (a : K) : ℤ) : ℝ) : EReal) := by
        exact_mod_cast vAdd_int_nonneg la ha
      exact hx.trans (le_add_of_nonneg_left h2)

theorem adjoin_ratios {K V Ω : Type} [Field K] [AddCommGroup V] [Module K V] [Field Ω] [Algebra K Ω] (ev : V →ₗ[K] Ω)
    (hB : GlobalTheory.DegVal.ratioField ev = ⊤) {n : ℕ} (w : Fin n → V) (hs : Submodule.span K (Set.range w) = ⊤) (i₀ : Fin n)
    (h0 : ev (w i₀) ≠ 0) : IntermediateField.adjoin K (Set.range fun i => ev (w i) / ev (w i₀)) = ⊤ := by
  set F := IntermediateField.adjoin K (Set.range fun i => ev (w i) / ev (w i₀)) with hF
  have key : ∀ v, ev v / ev (w i₀) ∈ F := fun v => by
    have hv : v ∈ Submodule.span K (Set.range w) := hs ▸ Submodule.mem_top
    induction hv using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨i, rfl⟩ := hx
      exact IntermediateField.subset_adjoin _ _ ⟨i, rfl⟩
    | zero => simp
    | add x y _ _ hx hy =>
      rw [map_add (f := _), add_div]
      exact F.add_mem hx hy
    | smul a x _ hx =>
      rw [map_smul, Algebra.smul_def, mul_div_assoc]
      exact F.mul_mem (F.algebraMap_mem a) hx
  rw [eq_top_iff, ← hB, GlobalTheory.DegVal.ratioField, IntermediateField.adjoin_le_iff]
  rintro _ ⟨v, v', rfl⟩
  by_cases h : ev v' = 0
  · rw [h, div_zero]
    exact F.zero_mem
  · have : ev v / ev v' = (ev v / ev (w i₀)) / (ev v' / ev (w i₀)) := by field_simp
    rw [this]
    exact F.div_mem (key v) (key v')

alias vV_pow := _root_.GlobalTheory.PlaceExtField.vV_pow

theorem nval_le_of_mul {V K' : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Field K'] [Algebra V K']
    [IsFractionRing V K'] (e : ℕ) {x y : K'} (hx : x ≠ 0) (hy : 0 ≤ vV V y) : nval V e x ≤ nval V e (y * x) := by
  by_cases h : y = 0
  · rw [h, zero_mul, nval_zero]
    exact le_top
  · rw [nval_of_ne hx, nval_of_ne (mul_ne_zero h hx), vV_mul h hx]
    refine EReal.coe_le_coe_iff.2 (div_le_div_of_nonneg_right ?_ (Nat.cast_nonneg e))
    have : vV V x ≤ vV V y + vV V x := by omega
    exact_mod_cast this

section Main

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H}
  {l : Level H} {Xo : Moduli Dw l} {c : Coeff l}

theorem intAll_all (Xo : Moduli Dw l) (c : Coeff l) : Formalism.L2.PjFree.IntAll Xo c := by
  obtain ⟨⟨-, -, -, -, hA, hBC⟩, -⟩ := GlobalTheory.Exist.frame_laws_of_moduli E H Dw l Xo c
  have hE : IntFrExt Xo c := by
    rcases Nat.eq_zero_or_pos (Dw.p + Dw.q) with h | h
    · exact GlobalTheory.RankZeroFrames.intFrExt_of_rank_zero E H Dw l Xo c h
    · exact GlobalTheory.AnyLevelFrame.intFrExt E H Dw l Xo c h
  have hB : FrBaseChg Xo c := fun S S' _ _ _ _ φ y =>
    GlobalTheory.Frames.FramedBaseChange.exists_frMap GlobalTheory.lawsFieldsSeparately.2.1 E H Dw l Xo c S S' φ y
  exact intAll_of_allTest hE hB hA

theorem evR_test {g : Rul Xo c}
    (hg : IsNatural (K := c.F) (fun S _ _ => FrPt Xo c S) (fun φ y z => FrMap φ y z) g) {L : Type} [CommRing L]
    [Algebra c.F L] (p : TRing c.F) (χ : p.R →ₐ[c.F] L) (u : FrPt Xo c p.R) (z : FrPt Xo c L) (hz : FrMap χ u z) :
    evR Xo c g z = χ (g p u) := by
  obtain ⟨⟨-, hC, -, -, -, -⟩, -⟩ := GlobalTheory.Exist.frame_laws_of_moduli E H Dw l Xo c
  have hWD := evalWD_fr hC
  have hft : FromTest (K := c.F) (fun S _ _ => FrPt Xo c S) (fun φ y z => FrMap φ y z) z := ⟨p, χ, u, hz⟩
  unfold evR evalAt
  rw [dite_eq_left hft]
  exact hWD g hg L _ p _ χ _ u z hft.choose_spec.choose_spec.choose_spec hz

theorem evR_bor {e : Ix Dw → ℤ} {g : Rul Xo c} (hg : g ∈ secZ Xo c e) {L : Type} [Field L] [Algebra c.F L]
    (p : TRing c.F) (χ : p.R →ₐ[c.F] L) (u : FrPt Xo c p.R) (z w : FrPt Xo c L) (hz : FrMap χ u z)
    (t : Ix Dw → Lˣ) (hb : FrBor t z w) :
    evR Xo c g w = ((∏ i, t i ^ e i : Lˣ) : L) * χ (g p u) := by
  obtain ⟨⟨-, -, hB, -, hA, -⟩, -⟩ := GlobalTheory.Exist.frame_laws_of_moduli E H Dw l Xo c
  rw [← evR_test hg.1 p χ u z hz]
  exact GlobalTheory.CompanionTheory.Ar.Rec.FinRd.evalAt_bor_zpow hB e hg.1 hg.2 L t z w (hA L z) (hA L w) hb

theorem prod_exZ_nsmul {M : Type} [CommGroup M] (t : Ix Dw → M) (G : WTZ E) (n : ℕ) :
    ∏ i, t i ^ exZ Dw (n • G) i = (∏ i, t i ^ exZ Dw G i) ^ n := by
  rw [← Finset.prod_pow]
  refine Finset.prod_congr rfl fun i _ => ?_
  have : exZ Dw (n • G) i = exZ Dw G i * n := by
    cases i <;> simp [exZ, mul_comm]
  rw [this, zpow_mul, zpow_natCast]


end Main

end GlobalTheory.CompanionTheory.SmallFin
