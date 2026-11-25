module

public import Formalism.HermitianCurvature.StatementQ
public import Formalism.FormalDegreeBessel.FormalDegreeRatio.GBasic
public import Formalism.RealPlaceAnalysis.RealPlaceTaylor.ComplexifiedDerivativeCommutator
public import Mathlib.Analysis.LocallyConvex.AbsConvexOpen
public import Development.AutomorphicArithmetic.IntegralCasts.CapelliIdentities.MulIntegralStatement
public import Formalism.FormalDegreeBessel.FinalG
import Formalism.FormalDegreeBessel.FormalDegreeRatio.UnitaryWeylNormalHolds
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.GammaFamilyCommuteGenerators
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.InterlaceSignTwo
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.OrbitalIntegralAeConvergenceContinuity
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RegularisedPairingViaPhase
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TransferRtt
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.TwoByOneBlock
import Formalism.RealPlaceAnalysis.RealPlaceTaylor.CartanInvolutionConjTransposeMul
import Mathlib.Algebra.Order.Archimedean.Real.Hom
public import Mathlib.Analysis.Calculus.Deriv.Prod
import Mathlib.Analysis.Calculus.FDeriv.Symmetric
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

open Matrix Finset MeasureTheory
open scoped ContDiff InnerProductSpace

noncomputable section

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

theorem herm_UH {ι : Type*} [Fintype ι] [DecidableEq ι] {H g : Matrix ι ι ℂ} (hg : g ∈ UH H) (x w : ι → ℂ) :
    herm H (g *ᵥ x) (g *ᵥ w) = herm H x w := by
  have hg' : gᴴ * H * g = H := hg
  unfold herm
  rw [Matrix.star_mulVec, ← Matrix.dotProduct_mulVec, Matrix.mulVec_mulVec, Matrix.mulVec_mulVec, hg']

theorem herm_bvec_right {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (v : Fin m → ℂ) (p : Fin m) :
    herm H v (bvec p) = (H *ᵥ v) p := by
  simp [herm, bvec, dotProduct, Pi.single_apply]

theorem Hpk_mulVec (k r : ℕ) (v : Fin (2 * r + k + 1) → ℂ) (p : Fin (2 * r + k + 1)) :
    (Hpk k r *ᵥ v) p = GBasic.sgn k r p * v (GBasic.sig k r p) := by
  simp [mulVec, dotProduct, GBasic.Hpk_eq]

theorem mulVec_bvec {m : ℕ} (g : Matrix (Fin m) (Fin m) ℂ) (i j : Fin m) : (g *ᵥ bvec j) i = g i j := by
  simp [mulVec, dotProduct, bvec, Pi.single_apply]

theorem fvec_last (k r : ℕ) (z : Fin (2 * r + k + 1) → ℂ) : fvec k r z (Fin.last r) = z := by
  unfold fvec
  rw [dite_eq_right (by simp)]

theorem Nlev_last {k r : ℕ} {n : Mx k r} (hn : n ∈ Nlev k r (Fin.last r)) : n = 1 := by
  obtain ⟨⟨hU, -, h3⟩, -, hfix⟩ := hn
  ext i j
  by_cases hj1 : j.val < r
  · have h := (hfix ⟨j.val, hj1⟩ (by simpa using hj1)).1
    have e : eI k r ⟨j.val, hj1⟩ = j := Fin.ext rfl
    rw [e] at h
    have := congrFun h i
    rw [mulVec_bvec] at this
    rw [this, Matrix.one_apply, bvec, Pi.single_apply]
  by_cases hj2 : r + k < j.val
  · have hjl := j.isLt
    have ha : 2 * r + k - j.val < r := by omega
    have h := (hfix ⟨2 * r + k - j.val, ha⟩ (by simpa using ha)).2
    have e : esI k r ⟨2 * r + k - j.val, ha⟩ = j := Fin.ext (by simp only [esI]; omega)
    rw [e] at h
    have := congrFun h i
    rw [mulVec_bvec] at this
    rw [this, Matrix.one_apply, bvec, Pi.single_apply]
  by_cases hi : r ≤ i.val
  · rw [h3 i j (by omega) (by omega) hi, Matrix.one_apply]
  · have hi' : i.val < r := by omega
    have h := (hfix ⟨i.val, hi'⟩ (by simpa using hi')).2
    have h1 := herm_UH hU (bvec j) (bvec (esI k r ⟨i.val, hi'⟩))
    rw [h, herm_bvec_right, herm_bvec_right, Hpk_mulVec, Hpk_mulVec] at h1
    have es : GBasic.sig k r (esI k r ⟨i.val, hi'⟩) = i := by
      apply Fin.ext
      have hv : (esI k r ⟨i.val, hi'⟩).val = 2 * r + k - i.val := rfl
      rw [GBasic.sig_hi k r _ (by rw [hv]; omega), hv]
      omega
    have sg : GBasic.sgn k r (esI k r ⟨i.val, hi'⟩) = 1 := by
      have hv : (esI k r ⟨i.val, hi'⟩).val = 2 * r + k - i.val := rfl
      unfold GBasic.sgn
      rw [if_neg (by rw [hv]; omega)]
    rw [es, sg, one_mul, one_mul, mulVec_bvec] at h1
    rw [h1, Matrix.one_apply, bvec, Pi.single_apply]

theorem psi_one {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (c : ℂ) : psi k r z c 1 = 1 := by
  have : ell k r z 1 = 0 := by
    unfold ell
    apply Finset.sum_eq_zero
    intro a _
    split_ifs with h
    · rw [Matrix.one_apply, if_neg]
      intro e
      have := congrArg Fin.val e
      simp [eI] at this
    · rw [Matrix.one_mulVec]
      exact hz _ (Or.inl a.isLt)
  unfold psi
  rw [this]
  simp

theorem zetaL_equiv {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {h h' : Mx k r} (hh : h ∈ UWset k r z)
    (hh' : h' ∈ UWset k r z') (g : Mx k r) :
    zetaL k r z z' (Fin.last r) (h * g * h') = zetaL k r z z' (Fin.last r) g := by
  unfold zetaL
  rw [fvec_last, fvec_last, ← Matrix.mulVec_mulVec, hh'.2.2, ← Matrix.mulVec_mulVec]
  conv_lhs => rw [← hh.2.2]
  rw [herm_UH hh.1]

theorem GGl_equiv {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {h h' : Mx k r} (hh : h ∈ UWset k r z)
    (hh' : h' ∈ UWset k r z') (g : Mx k r) : GGl k r z z' (h * g * h') = GGl k r z z' g := by
  unfold GGl
  rw [zetaL_equiv hh hh']

theorem zetaL_cont (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) (i : Fin (r + 1)) :
    Continuous (zetaL k r z z' i) := by
  unfold zetaL herm
  exact continuous_const.dotProduct (continuous_const.matrix_mulVec (continuous_id.matrix_mulVec continuous_const))

theorem GGl_cont (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) : Continuous (GGl k r z z') := by
  unfold GGl
  exact (Complex.continuous_normSq.comp (zetaL_cont k r z z' _)).sub continuous_const

def Dp (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) : Set (Mx k r) := {g | 0 < GGl k r z z' g}

theorem Dp_open (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) : IsOpen (Dp k r z z') :=
  isOpen_lt continuous_const (GGl_cont k r z z')

theorem Slev_last {k r : ℕ} {z : Fin (2 * r + k + 1) → ℂ} {s : Mx k r} (hs : s ∈ Slev k r z (Fin.last r)) :
    s ∈ UWset k r z := by
  obtain ⟨h, hh, m, hm, rfl⟩ := hs
  rw [Nlev_last hm, mul_one]
  exact hh

theorem Dp_dom (k r : ℕ) (z z' : Fin (2 * r + k + 1) → ℂ) : IsDom k r z z' (Fin.last r) (Dp k r z z') := by
  refine ⟨Dp_open k r z z', ?_⟩
  rintro g ⟨-, hg⟩ s hs s' hs'
  show 0 < GGl k r z z' (s * g * s')
  rw [GGl_equiv (Slev_last hs) (Slev_last hs')]
  exact hg

section PairAlg

variable {V : Type} [AddCommGroup V] [Module ℂ V]

theorem mkPair_mul_mkPair (a a' b b' : Module.End ℂ V) : mkP a a' * mkP b b' = mkP (a * b) (b' * a') := rfl
theorem mkPair_sub_mkPair (a a' b b' : Module.End ℂ V) : mkP a a' - mkP b b' = mkP (a - b) (a' - b') := rfl
theorem star_mkPair (a a' : Module.End ℂ V) : star (mkP a a') = mkP a' a := rfl
theorem algebraMap_Pr (w : ℂ) :
    algebraMap ℂ (Pr V) w = mkP (algebraMap ℂ _ w) (algebraMap ℂ _ (star w)) := rfl
theorem smul_mkP (w : ℂ) (a a' : Module.End ℂ V) : w • mkP a a' = mkP (w • a) (star w • a') := by
  rw [Algebra.smul_def, algebraMap_Pr, mkPair_mul_mkPair, Algebra.smul_def, Algebra.smul_def, Algebra.commutes (star w) a']
theorem mkPair_congr' {a a' b b' : Module.End ℂ V} (h : a = b) (h' : a' = b') : mkP a a' = mkP b b' := by rw [h, h']

def pairM (t : ℂ → Fin 2 → Fin 2 → Module.End ℂ V) (Y : ℂ) : Matrix (Fin 2) (Fin 2) (Pr V) :=
  Matrix.of fun a b => mkP (t Y a b) (t (star Y) b a)

theorem TJM_apply {B : Type} [Ring B] (A' M : Matrix (Fin 2) (Fin 2) B) (c d : Fin 2) :
    (A'ᵀ * YangianSpanCharacter.T.J B * M) c d = A' 0 c * M 1 d - A' 1 c * M 0 d := by
  simp [Matrix.mul_apply, YangianSpanCharacter.T.J, Fin.sum_univ_two, sub_eq_add_neg, add_comm]

theorem MJT_apply {B : Type} [Ring B] (A' M : Matrix (Fin 2) (Fin 2) B) (c d : Fin 2) :
    (M * YangianSpanCharacter.T.J B * A'ᵀ) c d = M c 0 * A' d 1 - M c 1 * A' d 0 := by
  simp [Matrix.mul_apply, YangianSpanCharacter.T.J, Fin.sum_univ_two, sub_eq_add_neg, add_comm]

theorem smulJ_apply {B : Type} [Ring B] [Algebra ℂ B] (w : ℂ) (c d : Fin 2) :
    (algebraMap ℂ B w • YangianSpanCharacter.T.J B) c d = algebraMap ℂ B (w * epsJ c d) := by
  fin_cases c <;> fin_cases d <;> simp [YangianSpanCharacter.T.J, epsJ]

theorem epsJ_star (c d : Fin 2) : star (epsJ c d) = epsJ c d := by
  fin_cases c <;> fin_cases d <;> simp [epsJ]

theorem epsJ_swap (c d : Fin 2) : epsJ d c = -epsJ c d := by
  fin_cases c <;> fin_cases d <;> simp [epsJ]

theorem isStart_pair (t : ℂ → Fin 2 → Fin 2 → Module.End ℂ V) (q : ℂ → ℂ) (hq : ∀ Y, star (q Y) = q (star Y))
    (hrtt : ∀ u v a b c d, (u - v) • (t u a b * t v c d - t v c d * t u a b) =
      t u c b * t v a d - t v c b * t u a d)
    (hdet1 : ∀ Y c d, t (Y + 1) 0 c * t Y 1 d - t (Y + 1) 1 c * t Y 0 d = (q Y * epsJ c d) • 1)
    (hdet2 : ∀ Y c d, t Y c 0 * t (Y + 1) d 1 - t Y c 1 * t (Y + 1) d 0 = (q Y * epsJ c d) • 1) :
    Wd.IsStart (pairM t) q ∧ ∀ Y Y', Commute (pairM t Y 1 0) (pairM t Y' 1 0) := by
  have hent : ∀ (u v : ℂ) (i j k l : Fin 2),
      (u - v) • (pairM t u i j * pairM t v k l - pairM t v k l * pairM t u i j) =
        pairM t u k j * pairM t v i l - pairM t v k j * pairM t u i l := by
    intro u v i j k l
    simp only [pairM, Matrix.of_apply, mkPair_mul_mkPair, mkPair_sub_mkPair, smul_mkP]
    refine mkPair_congr' (hrtt u v i j k l) ?_
    have h := hrtt (star u) (star v) j i l k
    rw [star_sub, ← neg_inj, ← smul_neg, neg_sub, neg_sub]
    exact h
  have hcomm : ∀ (a b : Fin 2) (u v : ℂ), t u a b * t v a b = t v a b * t u a b := by
    intro a b u v
    have h1 := hrtt u v a b a b
    have h2 := hrtt v u a b a b
    have e1 : (u - v - 1) • (t u a b * t v a b - t v a b * t u a b) = 0 := by
      rw [sub_smul, one_smul, h1, sub_self]
    have e2 : (u - v + 1) • (t u a b * t v a b - t v a b * t u a b) = 0 := by
      have : (v - u - 1) • (t v a b * t u a b - t u a b * t v a b) = 0 := by
        rw [sub_smul, one_smul, h2, sub_self]
      rw [← neg_sub (t u a b * t v a b), smul_neg, ← neg_smul] at this
      rw [← this]
      congr 1
      ring
    have e3 : (2 : ℂ) • (t u a b * t v a b - t v a b * t u a b) = 0 := by
      have : (2 : ℂ) = (u - v + 1) - (u - v - 1) := by ring
      rw [this, sub_smul, e1, e2, sub_zero]
    exact sub_eq_zero.mp ((smul_eq_zero.mp e3).resolve_left two_ne_zero)
  refine ⟨⟨?_, ?_, ?_, ?_⟩, ?_⟩
  · intro Y hY
    ext a b : 1
    rw [Matrix.conjTranspose_apply]
    simp only [pairM, Matrix.of_apply, star_mkPair, hY]
  · intro Y Y'
    apply Matrix.ext
    rintro ⟨i, k⟩ ⟨j, l⟩
    rw [Matrix.mul_assoc, Matrix.sub_mul, Matrix.mul_sub, Matrix.smul_mul, Matrix.mul_smul,
      Matrix.one_mul, Matrix.mul_one, Matrix.sub_apply, Matrix.sub_apply, Matrix.smul_apply,
      Matrix.smul_apply, Mx6.PC.Pf_mul_apply, Mx6.PC.mul_Pf_apply, Mx6.PC.kronecker_E1_E2_apply, Mx6.PC.kronecker_E1_E2_apply,
      Mx6.PC.kronecker_embed_mul_apply, Mx6.PC.kronecker_embed_mul_apply]
    have h := hent Y' Y i j k l
    rw [smul_sub] at h
    rw [sub_eq_sub_iff_sub_eq_sub]
    exact h
  · intro Y
    constructor
    · ext c d : 1
      rw [TJM_apply, smulJ_apply, algebraMap_Pr]
      simp only [pairM, Matrix.of_apply, mkPair_mul_mkPair, mkPair_sub_mkPair]
      refine mkPair_congr' ?_ ?_
      · rw [hdet1, Algebra.algebraMap_eq_smul_one]
      · have h := hdet2 (star Y) d c
        rw [star_add, star_one, ← neg_sub, h, Algebra.algebraMap_eq_smul_one, star_mul', hq, epsJ_star,
          epsJ_swap c d, ← neg_smul]
        congr 1
        ring
    · ext c d : 1
      rw [MJT_apply, smulJ_apply, algebraMap_Pr]
      simp only [pairM, Matrix.of_apply, mkPair_mul_mkPair, mkPair_sub_mkPair]
      refine mkPair_congr' ?_ ?_
      · rw [hdet2, Algebra.algebraMap_eq_smul_one]
      · have h := hdet1 (star Y) d c
        rw [star_add, star_one, ← neg_sub, h, Algebra.algebraMap_eq_smul_one, star_mul', hq, epsJ_star,
          epsJ_swap c d, ← neg_smul]
        congr 1
        ring
  · intro Y hY
    rw [hq, hY]
  · intro Y Y'
    show pairM t Y 1 0 * pairM t Y' 1 0 = pairM t Y' 1 0 * pairM t Y 1 0
    simp only [pairM, Matrix.of_apply, mkPair_mul_mkPair]
    exact mkPair_congr' (hcomm 1 0 Y Y') (hcomm 0 1 _ _)

end PairAlg

section Rad

theorem smoothLev_congr {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {k r : ℕ} {i : Fin (r + 1)}
    {D : Set (Mx k r)} (hD : IsOpen D) {f f₂ : Mx k r → E} (h : SmoothLev k r i D f)
    (he : ∀ x ∈ Glev k r i ∩ D, f₂ x = f x) : SmoothLev k r i D f₂ := by
  intro g₀ hg₀
  obtain ⟨U, F, hU, hgU, hF, hfF⟩ := h g₀ hg₀
  exact ⟨U ∩ D, F, hU.inter hD, ⟨hgU, hg₀.2⟩, hF.mono Set.inter_subset_left,
    fun g hg hgl => by rw [he g ⟨hgl, hg.2⟩, hfF g hg.1 hgl]⟩

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem slice_smooth {Φ : Fn k r (Wq →L[ℂ] Wp)} (hΦ : Φ ∈ RadSp k r z z' π π') {c : Fin r → ℂ} (hc : c ∈ OmX r) :
    SmoothLev k r (Fin.last r) (Dp k r z z') (Φ c) := by
  rintro g₀ ⟨hg, hD⟩
  obtain ⟨U, F, hU, hx, hF, hΦF⟩ := hΦ.2.1 (c, g₀) ⟨hc, hg, hD⟩
  refine ⟨(fun g => (c, g)) ⁻¹' U, fun g => F (c, g), hU.preimage (by fun_prop), hx, ?_,
    fun g hg hgl => hΦF (c, g) hg hgl⟩
  exact hF.comp (contDiff_const.prodMk contDiff_id).contDiffOn (fun g hg => hg)

theorem slice_FF (hz : inWb k r z) (hz' : inWb k r z') {Φ : Fn k r (Wq →L[ℂ] Wp)} (hΦ : Φ ∈ RadSp k r z z' π π')
    {c : Fin r → ℂ} (hc : c ∈ OmX r) : Φ c ∈ FFl k r z z' π π' (Fin.last r) (Dp k r z z') := by
  refine ⟨slice_smooth hΦ hc, ?_, ?_, ?_⟩
  · intro g _ n hn
    rw [Nlev_last hn, one_mul, psi_one hz, one_smul]
  · intro g _ n hn
    rw [Nlev_last hn, mul_one, psi_one hz', one_smul]
  · rintro g ⟨hg, hD⟩ h hh h' hh'
    exact hΦ.2.2 (c, g) ⟨hc, hg, hD⟩ h hh h' hh'

theorem rad_ext {Φ Ψ : RadSp k r z z' π π'}
    (h : ∀ x ∈ DomR k r z z', (Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 = (Ψ : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2) : Φ = Ψ := by
  apply Subtype.ext
  funext c g
  by_cases hx : (c, g) ∈ DomR k r z z'
  · exact h (c, g) hx
  · rw [Φ.2.1 (c, g) hx, Ψ.2.1 (c, g) hx]

theorem t_comp (hT : TLinLoc) (X : ActualOps k r z z' π π') (u v : ℂ) (a b c d : Fin 2) (Φ : RadSp k r z z' π π')
    (x : (Fin r → ℂ) × Mx k r) (hx : x ∈ DomR k r z z') :
    (X.t u a b (X.t v c d Φ) : Fn k r (Wq →L[ℂ] Wp)) x.1 x.2 =
      tL k r z z' (Fin.last r) u a b (tL k r z z' (Fin.last r) v c d ((Φ : Fn k r (Wq →L[ℂ] Wp)) x.1)) x.2 := by
  rw [X.t_apply u a b _ x hx]
  have hs := slice_smooth (X.t v c d Φ).2 hx.1
  have he : ∀ y ∈ Glev k r (Fin.last r) ∩ Dp k r z z',
      tL k r z z' (Fin.last r) v c d ((Φ : Fn k r (Wq →L[ℂ] Wp)) x.1) y =
        (X.t v c d Φ : Fn k r (Wq →L[ℂ] Wp)) x.1 y := fun y hy =>
    (X.t_apply v c d Φ (x.1, y) ⟨hx.1, hy.1, hy.2⟩).symm
  exact (hT _ k r z z' (Fin.last r) (Dp k r z z') u a b _ _ 0 (Dp_open k r z z') hs
    (smoothLev_congr (Dp_open k r z z') hs he) x.2 ⟨hx.2.1, hx.2.2⟩).2 (fun y hy => (he y hy).symm)

end Rad

theorem qC_star (P : M.Par) (Y : ℂ) : star (M.qC P Y) = M.qC P (star Y) := by
  unfold M.qC
  simp only [star_mul', star_neg, star_prod, star_add, Complex.star_def, Complex.conj_ofReal, map_div₀, map_one,
    map_ofNat]

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.Qx8

open scoped Matrix.Norms.Elementwise

theorem actual_start_from_level_starts : Formalism.FourierDecayAlt.Q.ActualStartFromLevels := by
  intro hR hDet hT Wp Wq _ _ _ _ _ _ P z z' π π' hP X
  obtain ⟨hOK, hz, hz', -, -, -, -⟩ := id hP
  have hdom := Dp_dom P.k P.r z z'
  have key := isStart_pair (V := RadSp P.k P.r z z' π π') X.t (M.qC P) (qC_star P) ?_ ?_ ?_
  · exact key
  · intro u v a b c d
    apply LinearMap.ext
    intro Φ
    apply rad_ext
    intro x hx
    simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply, Submodule.coe_smul, Submodule.coe_sub,
      Pi.smul_apply, Pi.sub_apply]
    rw [t_comp hT, t_comp hT, t_comp hT, t_comp hT]
    exact hR P.k P.r (Fin.last P.r) Wp Wq z z' π π' _ hz hz' hdom _ (slice_FF hz hz' Φ.2 hx.1) x.2
      ⟨hx.2.1, hx.2.2⟩ u v a b c d
    all_goals exact hx
  · intro Y c d
    apply LinearMap.ext
    intro Φ
    apply rad_ext
    intro x hx
    simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply, Submodule.coe_smul, Submodule.coe_sub,
      Pi.smul_apply, Pi.sub_apply, Module.End.one_apply]
    rw [t_comp hT, t_comp hT]
    exact (hDet Wp Wq P z z' π π' _ hP hdom _ (slice_FF hz hz' Φ.2 hx.1) x.2 ⟨hx.2.1, hx.2.2⟩ Y c d).1
    all_goals exact hx
  · intro Y c d
    apply LinearMap.ext
    intro Φ
    apply rad_ext
    intro x hx
    simp only [LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply, Submodule.coe_smul, Submodule.coe_sub,
      Pi.smul_apply, Pi.sub_apply, Module.End.one_apply]
    rw [t_comp hT, t_comp hT]
    exact (hDet Wp Wq P z z' π π' _ hP hdom _ (slice_FF hz hz' Φ.2 hx.1) x.2 ⟨hx.2.1, hx.2.2⟩ Y c d).2
    all_goals exact hx

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

section Eigen

open Formalism.FourierDecayAlt.B

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

theorem rdV_congr {f f₂ : Mat k r → E} (h : ∀ g ∈ GV k r, f g = f₂ g) {X : Mat k r} (hX : inLie k r X) :
    ∀ g ∈ GV k r, RdV X f g = RdV X f₂ g := by
  intro g hg
  unfold RdV
  congr 1
  funext t
  exact h _ (B5.curve_mem hg hX t)

theorem ldV_congr {f f₂ : Mat k r → E} (h : ∀ g ∈ GV k r, f g = f₂ g) {X : Mat k r} (hX : inLie k r X) :
    ∀ g ∈ GV k r, B.LdV X f g = B.LdV X f₂ g := by
  intro g hg
  unfold B.LdV
  congr 1
  funext t
  have e : -((t : ℂ) • X) = (((-t : ℝ)) : ℂ) • X := by push_cast; rw [neg_smul]
  rw [e]
  exact h _ (WeylGroupFacts.uh_mul (B5.exp_mem hX (-t)) hg)

theorem Rw_congr {f f₂ : Mat k r → E} (h : ∀ g ∈ GV k r, f g = f₂ g) (v : List (Mat k r))
    (hv : ∀ X ∈ v, inLie k r X) : ∀ g ∈ GV k r, Rw v f g = Rw v f₂ g := by
  induction v with
  | nil => exact h
  | cons X v ih =>
    exact rdV_congr (ih fun Y hY => hv Y (by simp [hY])) (hv X (by simp))

theorem dLR_congr {f f₂ : Mat k r → E} (h : ∀ g ∈ GV k r, f g = f₂ g) (u v : List (Mat k r))
    (hu : ∀ X ∈ u, inLie k r X) (hv : ∀ X ∈ v, inLie k r X) : ∀ g ∈ GV k r, dLR u v f g = dLR u v f₂ g := by
  induction u with
  | nil => exact Rw_congr h v hv
  | cons X u ih =>
    exact ldV_congr (ih fun Y hY => hu Y (by simp [hY])) (hu X (by simp))

theorem CCle_congr {f f₂ : Mat k r → E} (h : ∀ g ∈ GV k r, f g = f₂ g) {A : ℝ} {m : ℕ} {c : ℝ}
    (hf : CCle A m f c) : CCle A m f₂ c := by
  refine ⟨?_, ?_⟩
  · intro g₀ hg₀
    obtain ⟨U, f', hU, hgU, hf', he⟩ := hf.1 g₀ hg₀
    exact ⟨U, f', hU, hgU, hf', fun g hg hgG => by rw [← h g hgG, he g hg hgG]⟩
  · intro u v hu hv hl g hg
    rw [← dLR_congr h u v (fun X hX => (hu X hX).1) (fun X hX => (hv X hX).1) g hg]
    exact hf.2 u v hu hv hl g hg

theorem JF_congr {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (D : RealPlaceData k r Wp Wq) {F F' : Mat k r → (Wq →L[ℂ] Wp)} {a : ℂ}
    (h : ∀ g ∈ GV k r, F' g = a • F g) {g : Mat k r} (hg : g ∈ GV k r) : JF D F' g = a • JF D F g := by
  unfold JF besselJ
  rw [← integral_smul]
  apply integral_congr_ae
  filter_upwards [B7.ae_inSS D] with p hp
  have h1 := h _ (B7.sgs_mem D hp hg)
  unfold sgs at h1
  rw [h1, ContinuousLinearMap.smul_comp, ContinuousLinearMap.comp_smul, smul_comm]

end Eigen

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

section NF

open Formalism.FourierDecayAlt.M Formalism.FourierDecayAlt.Fr Formalism.FourierDecayAlt.R

variable {P : M.Par} {𝒜 : Type} [Ring 𝒜] [StarRing 𝒜] [Algebra ℂ 𝒜] [StarModule ℂ 𝒜]

theorem nf_low_sum (d : NFData P 𝒜) (hR : d.Rel) (Y : ℂ) (hY : ∀ π, xC P π Y ≠ 0) :
    d.x Y * ∑ j ∈ Icc 1 (P.k - 1), (d.κ fun π => (Y + (rho P π j : ℂ))⁻¹) * d.SS j = d.weightedSumBis Y := by
  rw [Finset.mul_sum, NFData.weightedSumBis]
  refine Finset.sum_congr rfl fun j hj => ?_
  rw [← mul_assoc, NFData.x, ← map_mul]
  refine hR.2.2.2.1 j _ _ fun π π' hU => ?_
  have hsub : ({j} : Finset ℕ) ⊆ Icc 1 (P.k - 1) := Finset.singleton_subset_iff.2 hj
  have h1 : xC P π' Y = xEx P {j} π' Y * (Y + (rho P π' j : ℂ)) := by
    rw [xC, xEx, ← Finset.prod_sdiff hsub, Finset.prod_singleton]
  have h2 : Y + (rho P π' j : ℂ) ≠ 0 := fun h0 => hY π' (by rw [h1, h0, mul_zero])
  have h3 : xEx P {j} π' Y = xEx P {j} π Y := by
    unfold xEx
    refine Finset.prod_congr rfl fun i hi => ?_
    rw [Finset.mem_sdiff, Finset.mem_singleton] at hi
    rw [rho_raise P j π π' hU i hi.1, if_neg hi.2, add_zero]
  show xC P π' Y * (Y + (rho P π' j : ℂ))⁻¹ = xEx P {j} π Y
  rw [h1, mul_assoc, mul_inv_cancel₀ h2, mul_one, h3]

theorem normal_form_kappa_of_start_vector (d : NFData P 𝒜) (l : ℕ) (Y : ℂ) : (d.κ fun π => x0 P l π Y) = sgn P l • d.x Y := by
  have h : (fun π => x0 P l π Y) = sgn P l • (fun π => xC P π Y) := by
    ext π; simp [x0, M.sgn, xC]
  rw [h, map_smul]; rfl

def nfStart (d : NFData P 𝒜) (QQ : ℂ → Matrix (Fin 2) (Fin 2) 𝒜) (l : ℕ) : Fr.Start 𝒜 where
  QQ Y := sgn P l • QQ Y
  q := qC P
  x Y := d.κ fun π => x0 P l π Y
  xi Y := d.κ fun π => (x0 P l π Y)⁻¹
  ee Y := d.L.ζ * d.L.ζbi * ∑ j ∈ Icc 1 (P.k - 1), (d.κ fun π => (Y + (rho P π j : ℂ))⁻¹) * d.SS j
  inv := {Y | ∀ π, xC P π Y ≠ 0}

theorem nf_levelStart (d : NFData P 𝒜) (hR : d.Rel) (QQ : ℂ → Matrix (Fin 2) (Fin 2) 𝒜) (hQ : ∀ Y, QQ Y = d.QQ Y)
    (hS : Wd.IsStart QQ (qC P)) (hT : ∀ Y Y', Commute (QQ Y 1 0) (QQ Y' 1 0)) (l : ℕ) :
    Fr.IsLevelStart d.L (nfStart d QQ l) := by
  obtain ⟨hstar, hκ, hSS, hshift, -, -⟩ := id hR
  have hzf : ∀ g ∈ zfns d.L, g ∈ d.L.fns := fun g hg => Or.inr hg
  refine ⟨Mx8.isStart_smul QQ (qC P) (sgn P l) (Mx8.sgn_sq P l) (Mx8.sgn_star P l) hS, ?_, ?_, ?_, ?_, ?_, ?_, ?_,
    ?_, ?_⟩
  · intro Y Y'
    show Commute (sgn P l • QQ Y 1 0) (sgn P l • QQ Y' 1 0)
    exact ((hT Y Y').smul_left _).smul_right _
  · intro Y hY
    have hne : ∀ π, x0 P l π Y ≠ 0 := fun π =>
      mul_ne_zero (pow_ne_zero _ (by norm_num)) (hY π)
    have h1 : ((fun π => x0 P l π Y) * fun π => (x0 P l π Y)⁻¹) = (1 : Ty P → ℂ) := by
      funext π; exact mul_inv_cancel₀ (hne π)
    have h2 : ((fun π => (x0 P l π Y)⁻¹) * fun π => x0 P l π Y) = (1 : Ty P → ℂ) := by
      funext π; exact inv_mul_cancel₀ (hne π)
    refine ⟨?_, ?_⟩
    · show (d.κ fun π => x0 P l π Y) * (d.κ fun π => (x0 P l π Y)⁻¹) = 1
      rw [← map_mul, h1, map_one]
    · show (d.κ fun π => (x0 P l π Y)⁻¹) * (d.κ fun π => x0 P l π Y) = 1
      rw [← map_mul, h2, map_one]
  · intro Y Y'
    show _ * _ = _ * _
    simp only [nfStart]
    rw [← map_mul, ← map_mul, mul_comm]
  · intro Y g hg
    exact hκ _ g (Or.inl (hzf g hg))
  · intro Y
    exact hκ _ _ (Or.inr (by simp))
  · intro Y hY
    show star (d.κ fun π => x0 P l π Y) = d.κ fun π => x0 P l π Y
    rw [hstar]
    congr 1
    funext π
    exact Mx8.coordinate_real P l π Y hY
  · intro Y g hg
    have h1 : Commute d.L.ζ g := d.L.fns_comm _ (Or.inr (by simp)) g (Or.inr hg)
    have h2 : Commute d.L.ζbi g := d.L.fns_comm _ (Or.inr (by simp)) g (Or.inr hg)
    have h3 : Commute (∑ j ∈ Icc 1 (P.k - 1), (d.κ fun π => (Y + (rho P π j : ℂ))⁻¹) * d.SS j) g :=
      Commute.sum_left _ _ _ fun j _ =>
        (hκ _ g (Or.inl (hzf g hg))).mul_left (hSS j g (Or.inl (Or.inl (hzf g hg))))
    exact (h1.mul_left h2).mul_left h3
  · intro Y
    show sgn P l • QQ Y 1 1 = d.L.GG * d.κ (fun π => x0 P l π Y)
    rw [normal_form_kappa_of_start_vector, mul_smul_comm, hQ]
    rfl
  · intro Y hY
    have hcan := Mx8.fn_cancel d.L
    have hgi := d.L.GG_GGi
    have hcx : d.L.GG * d.x Y = d.x Y * d.L.GG := ((hκ _ d.L.GG (Or.inl (Or.inr (by simp)))).eq).symm
    show sgn P l • QQ Y 1 0 = d.L.GG * (d.κ fun π => x0 P l π Y) * (d.L.l0 Y + d.L.ζb * d.L.ζi * d.L.GGi *
      (d.L.ζ * d.L.ζbi * ∑ j ∈ Icc 1 (P.k - 1), (d.κ fun π => (Y + (rho P π j : ℂ))⁻¹) * d.SS j))
    have e : QQ Y 1 0 = d.L.GG * d.x Y * d.L.l0 Y + d.weightedSumBis Y := by rw [hQ]; rfl
    rw [e, normal_form_kappa_of_start_vector, ← nf_low_sum d hR Y hY, ← mul_assoc _ (d.L.ζ * d.L.ζbi), hcan,
      mul_smul_comm, smul_mul_assoc, mul_add]
    congr 2
    rw [hcx, mul_assoc, ← mul_assoc d.L.GG, hgi, one_mul]

end NF

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.Qx8

open scoped Matrix.Norms.Elementwise

theorem level_start_from_normal_form : Formalism.FourierDecayAlt.Q.LevelStartFromNormalForm := by
  intro hNF hAS _ _ Wp Wq _ _ _ _ _ _ P z z' π π' hP X l
  obtain ⟨d, hL, hst, hRel, hQ⟩ := hNF Wp Wq P z z' π π' hP X
  obtain ⟨hS, hT⟩ := hAS Wp Wq P z z' π π' hP X
  exact ⟨d.L, nfStart d X.QQ l, hL, fun _ => rfl, rfl, rfl, hst, nf_levelStart d hRel X.QQ hQ hS hT l⟩

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

section Lie

variable {k r : ℕ}

theorem glev_one (i : Fin (r + 1)) : (1 : Mx k r) ∈ Glev k r i :=
  ⟨WeylGroupFacts.uh_one, fun _ _ => ⟨by simp, by simp⟩⟩

theorem glev_mul {i : Fin (r + 1)} {g h : Mx k r} (hg : g ∈ Glev k r i) (hh : h ∈ Glev k r i) :
    g * h ∈ Glev k r i := by
  refine ⟨WeylGroupFacts.uh_mul hg.1 hh.1, fun a ha => ⟨?_, ?_⟩⟩
  · rw [← Matrix.mulVec_mulVec, (hh.2 a ha).1, (hg.2 a ha).1]
  · rw [← Matrix.mulVec_mulVec, (hh.2 a ha).2, (hg.2 a ha).2]

theorem uw_glev {z : Fin (2 * r + k + 1) → ℂ} (i : Fin (r + 1)) : UWset k r z ⊆ Glev k r i :=
  fun _ hg => ⟨hg.1, fun a _ => hg.2.1 a⟩

theorem uw_one (z : Fin (2 * r + k + 1) → ℂ) : (1 : Mx k r) ∈ UWset k r z :=
  ⟨WeylGroupFacts.uh_one, fun _ => ⟨by simp, by simp⟩, by simp⟩

theorem nlev_one (i : Fin (r + 1)) : (1 : Mx k r) ∈ Nlev k r i :=
  ⟨⟨WeylGroupFacts.uh_one, fun _ _ _ => Matrix.one_apply, fun _ _ _ _ _ => Matrix.one_apply⟩, glev_one i⟩

def mulVecL (v : Fin (2 * r + k + 1) → ℂ) : Mx k r →L[ℝ] (Fin (2 * r + k + 1) → ℂ) :=
  LinearMap.toContinuousLinearMap
    { toFun := fun A => A *ᵥ v
      map_add' := fun A B => Matrix.add_mulVec A B v
      map_smul' := fun c A => Matrix.smul_mulVec c A v }

theorem exp_fix {X : Mx k r} {v : Fin (2 * r + k + 1) → ℂ} (h : X *ᵥ v = 0) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) *ᵥ v = v := by
  have hd : ∀ s : ℝ, HasDerivAt (fun s : ℝ => mulVecL v ((1 : Mx k r) * NormedSpace.exp ((s : ℂ) • X))) 0 s := by
    intro s
    have h1 := B5.curve_hasDerivAt (1 : Mx k r) X s
    have h2 := (mulVecL v).hasFDerivAt.comp_hasDerivAt s h1
    refine h2.congr_deriv ?_
    show ((1 : Mx k r) * NormedSpace.exp ((s : ℂ) • X) * X) *ᵥ v = 0
    rw [← Matrix.mulVec_mulVec, h, Matrix.mulVec_zero]
  have hc := is_const_of_deriv_eq_zero (fun s => (hd s).differentiableAt) (fun s => (hd s).deriv) t 0
  simpa [mulVecL, NormedSpace.exp_zero] using hc

theorem exp_lev {i : Fin (r + 1)} {X : Mx k r} (hX : inLieLev k r i X) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • X) ∈ Glev k r i :=
  ⟨B5.exp_mem hX.1 t, fun a ha => ⟨exp_fix (hX.2 a ha).1 t, exp_fix (hX.2 a ha).2 t⟩⟩

theorem hpk_e (a : Fin r) : Hpk k r *ᵥ bvec (eI k r a) = bvec (esI k r a) := by
  funext p
  simp only [bvec, Matrix.mulVec_single_one, Matrix.col_apply, Pi.single_apply]
  unfold Hpk eI esI
  simp only [Fin.ext_iff]
  have := p.isLt
  have := a.isLt
  split_ifs <;> first | rfl | (exfalso; omega)

theorem hpk_es (a : Fin r) : Hpk k r *ᵥ bvec (esI k r a) = bvec (eI k r a) := by
  funext p
  simp only [bvec, Matrix.mulVec_single_one, Matrix.col_apply, Pi.single_apply]
  unfold Hpk eI esI
  simp only [Fin.ext_iff]
  have := p.isLt
  have := a.isLt
  split_ifs <;> first | rfl | (exfalso; omega)

theorem hpk_herm : (Hpk k r)ᴴ = Hpk k r := (hermitian_pos_facts_hold k r).1

theorem hpk_inv : (Hpk k r)⁻¹ = Hpk k r := Matrix.inv_eq_right_inv WeylGroupFacts.hpk_sq

theorem hpart_skew {n : ℕ} (H Z : Matrix (Fin n) (Fin n) ℂ) (hsq : H * H = 1) (hh : Hᴴ = H) :
    (hpart1 H Z)ᴴ * H + H * hpart1 H Z = 0 ∧ (hpart2 H Z)ᴴ * H + H * hpart2 H Z = 0 := by
  have hinv : H⁻¹ = H := Matrix.inv_eq_right_inv hsq
  have e1 : H * Z * H * H = H * Z := by rw [Matrix.mul_assoc, hsq, Matrix.mul_one]
  have e2 : H * (H * Zᴴ * H) = Zᴴ * H := by
    rw [Matrix.mul_assoc H Zᴴ H, ← Matrix.mul_assoc H H, hsq, Matrix.one_mul]
  have e3 : (H * Zᴴ * H)ᴴ = H * Z * H := by
    rw [Matrix.conjTranspose_mul, Matrix.conjTranspose_mul, Matrix.conjTranspose_conjTranspose, hh,
      Matrix.mul_assoc]
  constructor
  · unfold hpart1
    rw [hinv, Matrix.conjTranspose_smul, Matrix.conjTranspose_sub, e3, Matrix.smul_mul, Matrix.mul_smul,
      Matrix.sub_mul, Matrix.mul_sub, e1, e2]
    have : star (1 / 2 : ℂ) = 1 / 2 := by simp
    rw [this, ← smul_add]
    simp
  · unfold hpart2
    rw [hinv, Matrix.conjTranspose_smul, Matrix.conjTranspose_add, e3, Matrix.smul_mul, Matrix.mul_smul,
      Matrix.add_mul, Matrix.mul_add, e1, e2]
    have : star (1 / (2 * Complex.I) : ℂ) = -(1 / (2 * Complex.I)) := by
      simp [Complex.conj_I]
    rw [this, neg_smul, add_comm (Zᴴ * H) (H * Z), neg_add_cancel]

theorem herm_sum {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (u v : Fin m → ℂ) :
    ∑ j, herm H (bvec j) v * u j = herm H u v := by
  simp only [herm, dotProduct, mulVec, bvec, Pi.single_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq',
    Finset.mem_univ, if_true, Finset.sum_mul, Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl; intro i _
  apply Finset.sum_congr rfl; intro j _
  ring

theorem unitB_mulVec {n m : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) (Bs : Fin m → Fin n → ℂ) (a b : Fin m)
    (v : Fin n → ℂ) : unitB H Bs a b *ᵥ v = herm H v (Bs b) • Bs a := by
  funext p
  simp only [unitB, mulVec, dotProduct, Matrix.of_apply, Pi.smul_apply, smul_eq_mul]
  rw [← herm_sum, Finset.sum_mul]
  apply Finset.sum_congr rfl; intro j _
  ring

theorem unitB_conj_bvec {n m : ℕ} (H : Matrix (Fin n) (Fin n) ℂ) (Bs : Fin m → Fin n → ℂ) (a b : Fin m)
    (c : Fin n) (h : Bs a c = 0) : (unitB H Bs a b)ᴴ *ᵥ bvec c = 0 := by
  funext p
  rw [mulVec_bvec, Matrix.conjTranspose_apply]
  simp [unitB, h]

theorem herm_bvec_left {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (c : Fin m) (w : Fin m → ℂ) :
    herm H (bvec c) w = star w ⬝ᵥ (H *ᵥ bvec c) := rfl

theorem dot_bvec {m : ℕ} (w : Fin m → ℂ) (c : Fin m) : w ⬝ᵥ bvec c = w c := by
  simp [dotProduct, bvec, Pi.single_apply]

theorem unitB_lie {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (hB : ∀ a, inWb k r (Bs a)) (i : Fin (r + 1))
    (a b : Fin m) :
    inLieLev k r i (hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b)) ∧
      inLieLev k r i (hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b)) := by
  have hs := hpart_skew (Hpk k r) (unitB (Hpk k r) Bs a b) WeylGroupFacts.hpk_sq hpk_herm
  have he : ∀ c : Fin r, ∀ a : Fin m, Bs a (eI k r c) = 0 := fun c a => hB a _ (Or.inl c.isLt)
  have hes : ∀ c : Fin r, ∀ a : Fin m, Bs a (esI k r c) = 0 := fun c a =>
    hB a _ (Or.inr (by have := c.isLt; simp only [esI]; omega))
  have z1 : ∀ c : Fin r, unitB (Hpk k r) Bs a b *ᵥ bvec (eI k r c) = 0 := by
    intro c
    rw [unitB_mulVec, herm_bvec_left, hpk_e, dot_bvec, Pi.star_apply, hes, star_zero, zero_smul]
  have z2 : ∀ c : Fin r, unitB (Hpk k r) Bs a b *ᵥ bvec (esI k r c) = 0 := by
    intro c
    rw [unitB_mulVec, herm_bvec_left, hpk_es, dot_bvec, Pi.star_apply, he, star_zero, zero_smul]
  have z3 : ∀ c : Fin r, ((Hpk k r)⁻¹ * (unitB (Hpk k r) Bs a b)ᴴ * Hpk k r) *ᵥ bvec (eI k r c) = 0 := by
    intro c
    rw [← Matrix.mulVec_mulVec, hpk_e, ← Matrix.mulVec_mulVec, unitB_conj_bvec _ _ _ _ _ (hes c a),
      Matrix.mulVec_zero]
  have z4 : ∀ c : Fin r, ((Hpk k r)⁻¹ * (unitB (Hpk k r) Bs a b)ᴴ * Hpk k r) *ᵥ bvec (esI k r c) = 0 := by
    intro c
    rw [← Matrix.mulVec_mulVec, hpk_es, ← Matrix.mulVec_mulVec, unitB_conj_bvec _ _ _ _ _ (he c a),
      Matrix.mulVec_zero]
  refine ⟨⟨hs.1, fun c _ => ⟨?_, ?_⟩⟩, ⟨hs.2, fun c _ => ⟨?_, ?_⟩⟩⟩
  · unfold hpart1; rw [Matrix.smul_mulVec, Matrix.sub_mulVec, z1, z3]; simp
  · unfold hpart1; rw [Matrix.smul_mulVec, Matrix.sub_mulVec, z2, z4]; simp
  · unfold hpart2; rw [Matrix.smul_mulVec, Matrix.add_mulVec, z1, z3]; simp
  · unfold hpart2; rw [Matrix.smul_mulVec, Matrix.add_mulVec, z2, z4]; simp

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

def LocOn (S : Set (Mx k r)) (T : (Mx k r → E) → Mx k r → E) : Prop :=
  ∀ f f₂ : Mx k r → E, (∀ x ∈ S, f x = f₂ x) → ∀ x ∈ S, T f x = T f₂ x

theorem lcurve_cont (X g : Mx k r) : Continuous fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) * g := by
  have h : Continuous fun t : ℝ => (1 : Mx k r) * NormedSpace.exp ((t : ℂ) • X) :=
    continuous_iff_continuousAt.2 fun t => (B5.curve_hasDerivAt (1 : Mx k r) X t).continuousAt
  simp only [Matrix.one_mul] at h
  exact h.matrix_mul continuous_const

theorem loc_LdV {i : Fin (r + 1)} {D : Set (Mx k r)} (hD : IsOpen D) {X : Mx k r} (hX : inLieLev k r i X) :
    LocOn (E := E) (Glev k r i ∩ D) (Q.LdV X) := by
  intro f f₂ h x hx
  unfold Q.LdV
  apply Filter.EventuallyEq.deriv_eq
  have h0 : NormedSpace.exp (((0 : ℝ) : ℂ) • X) * x = x := by simp [NormedSpace.exp_zero]
  have hmem : ∀ᶠ t : ℝ in nhds 0, NormedSpace.exp ((t : ℂ) • X) * x ∈ D :=
    (lcurve_cont X x).continuousAt.preimage_mem_nhds (by rw [h0]; exact hD.mem_nhds hx.2)
  filter_upwards [hmem] with t ht
  exact h _ ⟨glev_mul (exp_lev hX t) hx.1, ht⟩

theorem loc_LZ {i : Fin (r + 1)} {D : Set (Mx k r)} (hD : IsOpen D) {Z : Mx k r}
    (h1 : inLieLev k r i (hpart1 (Hpk k r) Z)) (h2 : inLieLev k r i (hpart2 (Hpk k r) Z)) :
    LocOn (E := E) (Glev k r i ∩ D) (LZ (Hpk k r) Z) := by
  intro f f₂ h x hx
  unfold LZ
  rw [loc_LdV hD h1 f f₂ h x hx, loc_LdV hD h2 f f₂ h x hx]

theorem loc_foldl {S : Set (Mx k r)} (L : List ((Mx k r → E) → Mx k r → E)) (hL : ∀ T ∈ L, LocOn S T) :
    LocOn S (fun f => L.foldl (fun h T => T h) f) := by
  induction L with
  | nil => exact fun f f₂ h => h
  | cons T L ih =>
    intro f f₂ h
    exact ih (fun T' hT' => hL T' (by simp [hT'])) (T f) (T f₂) (hL T (by simp) f f₂ h)

theorem loc_capLft {i : Fin (r + 1)} {D : Set (Mx k r)} (hD : IsOpen D) {m : ℕ}
    (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (hB : ∀ a, inWb k r (Bs a)) (w : ℂ) :
    LocOn (E := E) (Glev k r i ∩ D) (capLft k r Bs w) := by
  intro f f₂ h x hx
  unfold capLft qmFrev
  simp only [Finset.sum_apply, Pi.smul_apply]
  refine Finset.sum_congr rfl fun σ _ => ?_
  congr 1
  refine loc_foldl _ ?_ f f₂ h x hx
  intro T hT
  rw [List.mem_ofFn] at hT
  obtain ⟨j, rfl⟩ := hT
  intro f f₂ h x hx
  have h3 := loc_LZ (E := E) hD (unitB_lie Bs hB i (σ j) j).1 (unitB_lie Bs hB i (σ j) j).2 f f₂ h x hx
  simp only [id, Pi.add_apply]
  rw [h3]
  split_ifs
  · simp only [Pi.smul_apply, h x hx]
  · rfl

end Lie

section Frames

variable {k r : ℕ}

theorem sig_eI (c : Fin r) : GBasic.sig k r (eI k r c) = esI k r c := by
  apply Fin.ext
  rw [GBasic.sig_lo k r _ c.isLt]
  rfl

theorem sig_esI (c : Fin r) : GBasic.sig k r (esI k r c) = eI k r c := by
  have hv : (esI k r c).val = 2 * r + k - c.val := rfl
  have := c.isLt
  apply Fin.ext
  rw [GBasic.sig_hi k r _ (by rw [hv]; omega), hv]
  show _ = c.val
  omega

theorem sgn_eI (c : Fin r) : GBasic.sgn k r (eI k r c) = 1 := by
  have hv : (eI k r c).val = c.val := rfl
  have := c.isLt
  unfold GBasic.sgn
  rw [if_neg (by rw [hv]; omega)]

theorem sgn_esI (c : Fin r) : GBasic.sgn k r (esI k r c) = 1 := by
  have hv : (esI k r c).val = 2 * r + k - c.val := rfl
  have := c.isLt
  unfold GBasic.sgn
  rw [if_neg (by rw [hv]; omega)]

theorem coord_e (v : Fin (2 * r + k + 1) → ℂ) (c : Fin r) : herm (Hpk k r) v (bvec (esI k r c)) = v (eI k r c) := by
  rw [herm_bvec_right, Hpk_mulVec, sig_esI, sgn_esI, one_mul]

theorem coord_es (v : Fin (2 * r + k + 1) → ℂ) (c : Fin r) : herm (Hpk k r) v (bvec (eI k r c)) = v (esI k r c) := by
  rw [herm_bvec_right, Hpk_mulVec, sig_eI, sgn_eI, one_mul]

theorem inWb_iff (v : Fin (2 * r + k + 1) → ℂ) :
    inWb k r v ↔ ∀ c : Fin r, v (eI k r c) = 0 ∧ v (esI k r c) = 0 := by
  constructor
  · intro h c
    exact ⟨h _ (Or.inl c.isLt), h _ (Or.inr (by have := c.isLt; simp only [esI]; omega))⟩
  · intro h i hi
    rcases hi with hi | hi
    · have e : eI k r ⟨i.val, hi⟩ = i := Fin.ext rfl
      rw [← e]; exact (h _).1
    · have hl := i.isLt
      have ha : 2 * r + k - i.val < r := by omega
      have e : esI k r ⟨2 * r + k - i.val, ha⟩ = i := Fin.ext (by simp only [esI]; omega)
      rw [← e]; exact (h _).2

theorem inWb_mulVec {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r)) {v : Fin (2 * r + k + 1) → ℂ} (hv : inWb k r v) :
    inWb k r (g *ᵥ v) := by
  rw [inWb_iff] at hv ⊢
  intro c
  have hc := hg.2 c (by simp)
  constructor
  · rw [← coord_e (g *ᵥ v) c]
    conv_lhs => rw [← hc.2]
    rw [herm_UH hg.1, coord_e]; exact (hv c).1
  · rw [← coord_es (g *ᵥ v) c]
    conv_lhs => rw [← hc.1]
    rw [herm_UH hg.1, coord_es]; exact (hv c).2

theorem inWb_bvec_wI (j : Fin (k + 1)) : inWb k r (bvec (wI k r j)) := by
  intro i hi
  have hj := j.isLt
  rw [bvec, Pi.single_apply, if_neg]
  intro e
  have := congrArg Fin.val e
  simp only [wI] at this
  omega

theorem herm_wI (a b : Fin (k + 1)) :
    herm (Hpk k r) (bvec (wI k r a)) (bvec (wI k r b)) = if a = b then (if a = Fin.last k then -1 else 1) else 0 := by
  rw [GBasic.herm_bvec, TwoByOneBlock.Hpk_wI]
  unfold Hb
  rw [Matrix.diagonal_apply]
  by_cases h : a = b
  · subst h; simp
  · rw [if_neg (fun e => h e.symm), if_neg h]

theorem herm_smul_left' {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (c : ℂ) (x w : Fin m → ℂ) :
    herm H (c • x) w = c * herm H x w := by
  unfold herm
  rw [Matrix.mulVec_smul, dotProduct_smul, smul_eq_mul]

theorem herm_smul_right' {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (c : ℂ) (x w : Fin m → ℂ) :
    herm H x (c • w) = star c * herm H x w := by
  unfold herm
  rw [star_smul, smul_dotProduct, smul_eq_mul]

theorem frame_exists {z : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hT : 0 < Tz k r z) :
    ∃ Bs : Fin k → Fin (2 * r + k + 1) → ℂ, IsFrameOf k r [z] Bs := by
  set s : ℝ := Real.sqrt (Tz k r z) with hs
  have hss : (s : ℂ) * (s : ℂ) = ((Tz k r z : ℝ) : ℂ) := by
    rw [← Complex.ofReal_mul, hs, Real.mul_self_sqrt hT.le]
  set a : Fin (2 * r + k + 1) → ℂ := (s : ℂ) • bvec (wI k r (Fin.last k)) with ha
  have haW : inWb k r a := by
    intro i hi
    rw [ha, Pi.smul_apply, inWb_bvec_wI _ i hi, smul_zero]
  have haa : herm (Hpk k r) a a = ((-(Tz k r z) : ℝ) : ℂ) := by
    rw [ha, herm_smul_left', herm_smul_right', herm_wI, if_pos rfl, if_pos rfl]
    have : star (s : ℂ) = s := Complex.conj_ofReal s
    rw [this]
    push_cast
    linear_combination -hss
  have hzz : herm (Hpk k r) z z = ((-(Tz k r z) : ℝ) : ℂ) := by
    rw [TwoByOneBlock.herm_self_eq]; push_cast; rfl
  obtain ⟨g, hgU, hga, hfix⟩ := TwoByOneBlock.trans (Hpk k r) hpk_herm a z (-(Tz k r z)) (by linarith [hT]) haa hzz
  have horth : ∀ (w : Fin (2 * r + k + 1) → ℂ), inWb k r w → ∀ c : Fin r,
      herm (Hpk k r) (bvec (eI k r c)) w = 0 ∧ herm (Hpk k r) (bvec (esI k r c)) w = 0 := by
    intro w hw c
    rw [inWb_iff] at hw
    rw [herm_bvec_left, hpk_e, dot_bvec, herm_bvec_left, hpk_es, dot_bvec, Pi.star_apply, Pi.star_apply, (hw c).1,
      (hw c).2]
    simp
  have hgL : g ∈ Glev k r (Fin.last r) :=
    ⟨hgU, fun c _ => ⟨hfix _ (horth a haW c).1 (horth z hz c).1, hfix _ (horth a haW c).2 (horth z hz c).2⟩⟩
  refine ⟨fun j => g *ᵥ bvec (wI k r j.castSucc), fun j => inWb_mulVec hgL (inWb_bvec_wI _), ?_, ?_⟩
  · intro i j
    rw [herm_UH hgU, herm_wI]
    have h1 : (i.castSucc = j.castSucc) ↔ i = j := Fin.castSucc_inj
    have h2 : i.castSucc ≠ Fin.last k := Fin.castSucc_ne_last i
    simp only [h1, if_neg h2]
  · intro j v hv
    rw [List.mem_singleton] at hv
    rw [hv, ← hga, herm_UH hgU, ha, herm_smul_right', herm_wI, if_neg (Fin.castSucc_ne_last j), mul_zero]

end Frames

section FFmod

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
  {i : Fin (r + 1)} {D : Set (Mx k r)}

theorem dom_mem (hD : IsDom k r z z' i D) {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) {h n h' n' : Mx k r}
    (hh : h ∈ UWset k r z) (hn : n ∈ Nlev k r i) (hh' : h' ∈ UWset k r z') (hn' : n' ∈ Nlev k r i) :
    (h * n) * g * (h' * n') ∈ Glev k r i ∩ D :=
  ⟨glev_mul (glev_mul (glev_mul (uw_glev i hh) hn.2) hg.1) (glev_mul (uw_glev i hh') hn'.2),
    hD.2 g hg _ ⟨h, hh, n, hn, rfl⟩ _ ⟨h', hh', n', hn', rfl⟩⟩

theorem smooth_add {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {f f₂ : Mx k r → E}
    (hf : SmoothLev k r i D f) (hf₂ : SmoothLev k r i D f₂) : SmoothLev k r i D (f + f₂) := by
  intro g₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := hf g₀ hg₀
  obtain ⟨U', F', hU', hxU', hF', hΨ⟩ := hf₂ g₀ hg₀
  exact ⟨U ∩ U', F + F', hU.inter hU', ⟨hxU, hxU'⟩,
    (hF.mono Set.inter_subset_left).add (hF'.mono Set.inter_subset_right),
    fun x hx hg => by simp [hΦ x hx.1 hg, hΨ x hx.2 hg]⟩

theorem smooth_smul {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {f : Mx k r → E}
    (hf : SmoothLev k r i D f) (a : ℂ) : SmoothLev k r i D (a • f) := by
  intro g₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := hf g₀ hg₀
  exact ⟨U, a • F, hU, hxU, hF.const_smul a, fun x hx hg => by simp [hΦ x hx hg]⟩

theorem smooth_zero {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] :
    SmoothLev k r i D (0 : Mx k r → E) :=
  fun _ _ => ⟨Set.univ, 0, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩

theorem FFl_congr (hD : IsDom k r z z' i D) {J J' : Mx k r → (Wq →L[ℂ] Wp)} (hJ : J ∈ FFl k r z z' π π' i D)
    (he : ∀ x ∈ Glev k r i ∩ D, J' x = J x) : J' ∈ FFl k r z z' π π' i D := by
  obtain ⟨h1, h2, h3, h4⟩ := hJ
  refine ⟨smoothLev_congr hD.1 h1 he, ?_, ?_, ?_⟩
  · intro g hg n hn
    have hm := dom_mem hD hg (uw_one z) hn (uw_one z') (nlev_one i)
    simp only [one_mul, mul_one] at hm
    rw [he _ hm, he _ hg, h2 g hg n hn]
  · intro g hg n hn
    have hm := dom_mem hD hg (uw_one z) (nlev_one i) (uw_one z') hn
    simp only [one_mul, mul_one] at hm
    rw [he _ hm, he _ hg, h3 g hg n hn]
  · intro g hg h hh h' hh'
    have hm := dom_mem hD hg hh (nlev_one i) hh' (nlev_one i)
    simp only [mul_one] at hm
    rw [he _ hm, he _ hg, h4 g hg h hh h' hh']

theorem FFl_add {J J' : Mx k r → (Wq →L[ℂ] Wp)} (hJ : J ∈ FFl k r z z' π π' i D)
    (hJ' : J' ∈ FFl k r z z' π π' i D) : J + J' ∈ FFl k r z z' π π' i D := by
  obtain ⟨h1, h2, h3, h4⟩ := hJ
  obtain ⟨h1', h2', h3', h4'⟩ := hJ'
  refine ⟨smooth_add h1 h1', ?_, ?_, ?_⟩
  · intro g hg n hn
    simp only [Pi.add_apply]
    rw [h2 g hg n hn, h2' g hg n hn, smul_add]
  · intro g hg n hn
    simp only [Pi.add_apply]
    rw [h3 g hg n hn, h3' g hg n hn, smul_add]
  · intro g hg h hh h' hh'
    simp only [Pi.add_apply]
    rw [h4 g hg h hh h' hh', h4' g hg h hh h' hh']
    ext v
    simp

theorem FFl_smul {J : Mx k r → (Wq →L[ℂ] Wp)} (hJ : J ∈ FFl k r z z' π π' i D) (a : ℂ) :
    a • J ∈ FFl k r z z' π π' i D := by
  obtain ⟨h1, h2, h3, h4⟩ := hJ
  refine ⟨smooth_smul h1 a, ?_, ?_, ?_⟩
  · intro g hg n hn
    simp only [Pi.smul_apply]
    rw [h2 g hg n hn, smul_comm]
  · intro g hg n hn
    simp only [Pi.smul_apply]
    rw [h3 g hg n hn, smul_comm]
  · intro g hg h hh h' hh'
    simp only [Pi.smul_apply]
    rw [h4 g hg h hh h' hh']
    ext v
    simp

theorem FFl_zero : (0 : Mx k r → (Wq →L[ℂ] Wp)) ∈ FFl k r z z' π π' i D :=
  ⟨smooth_zero, fun _ _ _ _ => by simp, fun _ _ _ _ => by simp, fun _ _ _ _ _ _ => by simp⟩


variable (k r z z' π π' i D) in
def FFV : Submodule ℂ (Mx k r → (Wq →L[ℂ] Wp)) where
  carrier := {J | J ∈ FFl k r z z' π π' i D ∧ ∀ g, g ∉ Glev k r i ∩ D → J g = 0}
  zero_mem' := ⟨FFl_zero, fun _ _ => rfl⟩
  add_mem' := fun hJ hJ' => ⟨FFl_add hJ.1 hJ'.1, fun g hg => by simp [hJ.2 g hg, hJ'.2 g hg]⟩
  smul_mem' := fun a _ hJ => ⟨FFl_smul hJ.1 a, fun g hg => by simp [hJ.2 g hg]⟩

theorem FFV_ext {Φ Ψ : FFV k r z z' π π' i D}
    (h : ∀ x ∈ Glev k r i ∩ D, (Φ : Mx k r → (Wq →L[ℂ] Wp)) x = (Ψ : Mx k r → (Wq →L[ℂ] Wp)) x) : Φ = Ψ := by
  apply Subtype.ext
  funext g
  by_cases hg : g ∈ Glev k r i ∩ D
  · exact h g hg
  · rw [Φ.2.2 g hg, Ψ.2.2 g hg]


open Classical in
def cutV (hD : IsDom k r z z' i D) (J : Mx k r → (Wq →L[ℂ] Wp)) (hJ : J ∈ FFl k r z z' π π' i D) :
    FFV k r z z' π π' i D :=
  ⟨(Glev k r i ∩ D).indicator J, FFl_congr hD hJ (fun _ hx => Set.indicator_of_mem hx _),
    fun _ hg => Set.indicator_of_notMem hg _⟩

theorem cutV_apply (hD : IsDom k r z z' i D) (J : Mx k r → (Wq →L[ℂ] Wp)) (hJ : J ∈ FFl k r z z' π π' i D)
    {x : Mx k r} (hx : x ∈ Glev k r i ∩ D) : (cutV hD J hJ : Mx k r → (Wq →L[ℂ] Wp)) x = J x :=
  Set.indicator_of_mem hx _

theorem tl_zero (hT : TLinLoc) {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (hD : IsOpen D) (Y : ℂ)
    (a b : Fin 2) {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) : tL k r z z' i Y a b (0 : Mx k r → E) g = 0 := by
  have h := (hT E k r z z' i D Y a b 0 0 1 hD smooth_zero smooth_zero g hg).1
  have e : (fun x => (0 : Mx k r → E) x + (1 : ℂ) • (0 : Mx k r → E) x) = 0 := by funext x; simp
  rw [e, one_smul] at h
  exact left_eq_add.mp h

theorem tl_add (hT : TLinLoc) {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (hD : IsOpen D) (Y : ℂ)
    (a b : Fin 2) {f f₂ : Mx k r → E} (hf : SmoothLev k r i D f) (hf₂ : SmoothLev k r i D f₂) {g : Mx k r}
    (hg : g ∈ Glev k r i ∩ D) :
    tL k r z z' i Y a b (f + f₂) g = tL k r z z' i Y a b f g + tL k r z z' i Y a b f₂ g := by
  have h := (hT E k r z z' i D Y a b f f₂ 1 hD hf hf₂ g hg).1
  have e : (fun x => f x + (1 : ℂ) • f₂ x) = f + f₂ := by funext x; simp
  rw [e, one_smul] at h
  exact h

theorem tl_smul (hT : TLinLoc) {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] (hD : IsOpen D) (Y : ℂ)
    (a b : Fin 2) (s : ℂ) {f : Mx k r → E} (hf : SmoothLev k r i D f) {g : Mx k r}
    (hg : g ∈ Glev k r i ∩ D) : tL k r z z' i Y a b (s • f) g = s • tL k r z z' i Y a b f g := by
  have h := (hT E k r z z' i D Y a b 0 f s hD smooth_zero hf g hg).1
  have e : (fun x => (0 : Mx k r → E) x + s • f x) = s • f := by funext x; simp
  rw [e, tl_zero hT hD Y a b hg, zero_add] at h
  exact h

def TV (hT : TLinLoc) (hP : TPreservesFF) (hz : inWb k r z) (hz' : inWb k r z') (hD : IsDom k r z z' i D) (Y : ℂ)
    (a b : Fin 2) : Module.End ℂ (FFV k r z z' π π' i D) where
  toFun Φ := cutV hD (tL k r z z' i Y a b (Φ : Mx k r → (Wq →L[ℂ] Wp)))
    (hP Wp Wq k r z z' π π' i D Y a b hz hz' hD _ Φ.2.1)
  map_add' Φ Ψ := by
    apply FFV_ext
    intro x hx
    rw [cutV_apply hD _ _ hx, Submodule.coe_add, Submodule.coe_add, Pi.add_apply, cutV_apply hD _ _ hx,
      cutV_apply hD _ _ hx]
    exact tl_add hT hD.1 Y a b Φ.2.1.1 Ψ.2.1.1 hx
  map_smul' s Φ := by
    apply FFV_ext
    intro x hx
    rw [cutV_apply hD _ _ hx, Submodule.coe_smul, RingHom.id_apply, Submodule.coe_smul, Pi.smul_apply,
      cutV_apply hD _ _ hx]
    exact tl_smul hT hD.1 Y a b s Φ.2.1.1 hx

theorem TV_apply (hT : TLinLoc) (hP : TPreservesFF) (hz : inWb k r z) (hz' : inWb k r z')
    (hD : IsDom k r z z' i D) (Y : ℂ) (a b : Fin 2) (Φ : FFV k r z z' π π' i D) {x : Mx k r}
    (hx : x ∈ Glev k r i ∩ D) :
    (TV hT hP hz hz' hD Y a b Φ : Mx k r → (Wq →L[ℂ] Wp)) x =
      tL k r z z' i Y a b (Φ : Mx k r → (Wq →L[ℂ] Wp)) x :=
  cutV_apply hD _ (hP Wp Wq k r z z' π π' i D Y a b hz hz' hD _ Φ.2.1) hx

theorem TV_comp (hT : TLinLoc) (hP : TPreservesFF) (hz : inWb k r z) (hz' : inWb k r z')
    (hD : IsDom k r z z' i D) (u v : ℂ) (a b c d : Fin 2) (Φ : FFV k r z z' π π' i D) {x : Mx k r}
    (hx : x ∈ Glev k r i ∩ D) :
    (TV hT hP hz hz' hD u a b (TV hT hP hz hz' hD v c d Φ) : Mx k r → (Wq →L[ℂ] Wp)) x =
      tL k r z z' i u a b (tL k r z z' i v c d (Φ : Mx k r → (Wq →L[ℂ] Wp))) x := by
  rw [TV_apply hT hP hz hz' hD u a b _ hx]
  exact (hT _ k r z z' i D u a b _ _ 0 hD.1 (TV hT hP hz hz' hD v c d Φ).2.1.1
    (hP Wp Wq k r z z' π π' i D v c d hz hz' hD _ Φ.2.1).1 x hx).2
    (fun y hy => TV_apply hT hP hz hz' hD v c d Φ hy)

theorem restriction_irrelevant_double_level_operator (hT : TLinLoc) (hP : TPreservesFF) (hz : inWb k r z) (hz' : inWb k r z')
    (hD : IsDom k r z z' i D) (u v : ℂ) (a b c d : Fin 2) {J : Mx k r → (Wq →L[ℂ] Wp)}
    (hJ : J ∈ FFl k r z z' π π' i D) {x : Mx k r} (hx : x ∈ Glev k r i ∩ D) :
    tL k r z z' i u a b (tL k r z z' i v c d (cutV hD J hJ : Mx k r → (Wq →L[ℂ] Wp))) x =
      tL k r z z' i u a b (tL k r z z' i v c d J) x := by
  refine (hT _ k r z z' i D u a b _ _ 0 hD.1
    (hP Wp Wq k r z z' π π' i D v c d hz hz' hD _ (cutV hD J hJ).2.1).1
    (hP Wp Wq k r z z' π π' i D v c d hz hz' hD _ hJ).1 x hx).2 (fun y hy => ?_)
  exact (hT _ k r z z' i D v c d _ _ 0 hD.1 (cutV hD J hJ).2.1.1 hJ.1 y hy).2
    (fun w hw => cutV_apply hD J hJ hw)

end FFmod

theorem isRTT_of_entries {B : Type} [Ring B] [Algebra ℂ B] (M : ℂ → Matrix (Fin 2) (Fin 2) B)
    (hent : ∀ (u v : ℂ) (i j k l : Fin 2),
      (u - v) • (M u i j * M v k l - M v k l * M u i j) = M u k j * M v i l - M v k j * M u i l) : W.IsRTT M := by
  intro Y Y'
  apply Matrix.ext
  rintro ⟨i, k⟩ ⟨j, l⟩
  rw [Matrix.mul_assoc, Matrix.sub_mul, Matrix.mul_sub, Matrix.smul_mul, Matrix.mul_smul,
    Matrix.one_mul, Matrix.mul_one, Matrix.sub_apply, Matrix.sub_apply, Matrix.smul_apply,
    Matrix.smul_apply, Mx6.PC.Pf_mul_apply, Mx6.PC.mul_Pf_apply, Mx6.PC.kronecker_E1_E2_apply, Mx6.PC.kronecker_E1_E2_apply,
    Mx6.PC.kronecker_embed_mul_apply, Mx6.PC.kronecker_embed_mul_apply]
  have h := hent Y' Y i j k l
  rw [smul_sub] at h
  rw [sub_eq_sub_iff_sub_eq_sub]
  exact h

theorem J_apply {B : Type} [Ring B] [Algebra ℂ B] (c d : Fin 2) : YangianSpanCharacter.T.J B c d = algebraMap ℂ B (epsJ c d) := by
  fin_cases c <;> fin_cases d <;> simp [YangianSpanCharacter.T.J, epsJ]

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P.Qx8

open scoped Matrix.Norms.Elementwise

theorem determinant_capelli_from_descent : Formalism.FourierDecayAlt.Q.DetCoreFromSteps := by
  intro hR hQ hDH hRT hLT hP hT Wp Wq _ _ _ _ _ _ P z z' π π' D hPl hD J hJ g hg Y c d
  obtain ⟨hOK, hz, hz', hTz, hTz', hπ, hπ'⟩ := id hPl
  obtain ⟨-, hrep, hcont, -, -, hcap⟩ := id hπ
  obtain ⟨-, hrep', hcont', -, -, hcap'⟩ := id hπ'
  have hTpos : 0 < Tz P.k P.r z := by rw [hTz]; exact hOK.T_pos
  have hTpos' : 0 < Tz P.k P.r z' := by rw [hTz']; exact hOK.T'_pos
  obtain ⟨Bs, hBs⟩ := frame_exists hz hTpos
  obtain ⟨Bs', hBs'⟩ := frame_exists hz' hTpos'
  set t := TV (π := π) (π' := π') hT hP hz hz' hD with ht
  set QQ : ℂ → Matrix (Fin 2) (Fin 2) (Module.End ℂ (FFV P.k P.r z z' π π' (Fin.last P.r) D)) :=
    fun Y => Matrix.of (t Y) with hQQ
  have hrtt : W.IsRTT QQ := by
    apply isRTT_of_entries
    intro u v a b c d
    apply LinearMap.ext
    intro Φ
    apply FFV_ext
    intro x hx
    simp only [hQQ, Matrix.of_apply, LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply,
      Submodule.coe_smul, Submodule.coe_sub, Pi.smul_apply, Pi.sub_apply]
    rw [ht, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx,
      TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx]
    exact hR P.k P.r (Fin.last P.r) Wp Wq z z' π π' D hz hz' hD _ Φ.2.1 x hx u v a b c d
  obtain ⟨qh, h1, h2, -⟩ := hQ _ QQ hrtt Y

  have hqh : qh = M.qC P Y • 1 := by
    have e := congrFun (congrFun h1 0) 1
    rw [TJM_apply, Matrix.smul_apply, J_apply] at e
    have e1 : epsJ 0 1 = 1 := by simp [epsJ]
    rw [e1, map_one, smul_eq_mul, mul_one] at e
    rw [← e]
    apply LinearMap.ext
    intro Φ
    apply FFV_ext
    intro x hx
    simp only [hQQ, Matrix.of_apply, LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply,
      Submodule.coe_smul, Submodule.coe_sub, Pi.smul_apply, Pi.sub_apply, Module.End.one_apply]
    rw [ht, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hx]
    have hdh := hDH _ P.k P.r z z' D (Φ : Mx P.k P.r → (Wq →L[ℂ] Wp)) hz hz' hTpos hTpos' hD.1 Φ.2.1.1 Bs Bs' hBs
      hBs' x hx Y
    unfold qhat at hdh
    rw [hdh]
    set w : ℂ := Y + (P.k : ℂ) / 2 with hw
    set c' : ℂ := ∏ i ∈ Finset.Icc 1 P.k, (w - (P.k : ℂ) / 2 + 1 / 2 + (P.u' i : ℂ)) with hc'
    set c₀ : ℂ := ∏ i ∈ Finset.Icc 1 P.k, (w - (P.k : ℂ) / 2 + 1 / 2 + (P.u i : ℂ)) with hc₀
    have hA : ∀ y ∈ Glev P.k P.r (Fin.last P.r) ∩ D,
        capR P.k P.r Bs' w (Φ : Mx P.k P.r → (Wq →L[ℂ] Wp)) y = (c' • (Φ : Mx P.k P.r → (Wq →L[ℂ] Wp))) y := by
      intro y hy
      ext v
      rw [hRT Wp Wq P.k P.r P.k z z' π π' D hz hz' hD hrep' hcont' _ Φ.2.1 y hy Bs' hBs' w v, hcap' Bs' hBs' w v,
        map_smul]
      rfl
    have hB : capLft P.k P.r Bs w (c' • (Φ : Mx P.k P.r → (Wq →L[ℂ] Wp))) x =
        c₀ • (c' • (Φ : Mx P.k P.r → (Wq →L[ℂ] Wp))) x := by
      ext v
      rw [hLT Wp Wq P.k P.r P.k z z' π π' D hz hz' hD hrep hcont _ (FFl_smul Φ.2.1 c') x hx Bs hBs w v,
        hcap Bs hBs w _]
      rfl
    rw [loc_capLft hD.1 Bs hBs.1 w _ _ hA x hx, hB, Pi.smul_apply, smul_smul, smul_smul]
    congr 1
    rw [hc', hc₀, hw, M.qC, hTz, hTz', Finset.prod_mul_distrib]
    have e2 : ∀ a : ℂ, Y + (P.k : ℂ) / 2 - (P.k : ℂ) / 2 + 1 / 2 + a = Y + 1 / 2 + a := fun a => by ring
    simp only [e2]
    push_cast
    ring
  set Φ := cutV hD J hJ with hΦ
  constructor
  · have e := congrFun (congrFun h1 c) d
    rw [TJM_apply, Matrix.smul_apply, J_apply, hqh, smul_eq_mul, Algebra.algebraMap_eq_smul_one, smul_mul_smul_comm,
      one_mul] at e
    have e' := congrFun (congrArg (fun (Ψ : FFV P.k P.r z z' π π' (Fin.last P.r) D) =>
      (Ψ : Mx P.k P.r → (Wq →L[ℂ] Wp))) (LinearMap.congr_fun e Φ)) g
    simp only [hQQ, Matrix.of_apply, LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply,
      Submodule.coe_smul, Submodule.coe_sub, Pi.smul_apply, Pi.sub_apply, Module.End.one_apply] at e'
    rw [ht, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hg, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hg, hΦ,
      restriction_irrelevant_double_level_operator hT hP hz hz' hD _ _ _ _ _ _ hJ hg, restriction_irrelevant_double_level_operator hT hP hz hz' hD _ _ _ _ _ _ hJ hg,
      cutV_apply hD J hJ hg] at e'
    exact e'
  · have e := congrFun (congrFun h2 c) d
    rw [MJT_apply, Matrix.smul_apply, J_apply, hqh, smul_eq_mul, Algebra.algebraMap_eq_smul_one, smul_mul_smul_comm,
      one_mul] at e
    have e' := congrFun (congrArg (fun (Ψ : FFV P.k P.r z z' π π' (Fin.last P.r) D) =>
      (Ψ : Mx P.k P.r → (Wq →L[ℂ] Wp))) (LinearMap.congr_fun e Φ)) g
    simp only [hQQ, Matrix.of_apply, LinearMap.smul_apply, LinearMap.sub_apply, Module.End.mul_apply,
      Submodule.coe_smul, Submodule.coe_sub, Pi.smul_apply, Pi.sub_apply, Module.End.one_apply] at e'
    rw [ht, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hg, TV_comp hT hP hz hz' hD _ _ _ _ _ _ Φ hg, hΦ,
      restriction_irrelevant_double_level_operator hT hP hz hz' hD _ _ _ _ _ _ hJ hg, restriction_irrelevant_double_level_operator hT hP hz hz' hD _ _ _ _ _ _ hJ hg,
      cutV_apply hD J hJ hg] at e'
    exact e'

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

section CDsec

open Topology

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]

abbrev XX (k r : ℕ) := (Fin r → ℂ) × Mx k r

variable {i : Fin (r + 1)} {U₀ : Set (XX k r)}

def dv (v : Fin r → ℂ) (Φ : Fn k r E) : Fn k r E := fun c g => fderiv ℝ (fun c' => Φ c' g) c v

theorem slice_hasFDeriv {Φ : Fn k r E} {F : XX k r → E} {U : Set (XX k r)} (hU : IsOpen U)
    (hF : ContDiffOn ℝ ∞ F U) (hΦ : ∀ x ∈ U, x.2 ∈ Glev k r i → Φ x.1 x.2 = F x) {x : XX k r} (hx : x ∈ U)
    (hG : x.2 ∈ Glev k r i) :
    HasFDerivAt (fun c' => Φ c' x.2) ((fderiv ℝ F x).comp (ContinuousLinearMap.inl ℝ (Fin r → ℂ) (Mx k r))) x.1 := by
  have hFd : DifferentiableAt ℝ F x := (hF.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hx)
  have hγ : HasFDerivAt (fun c' : Fin r → ℂ => ((c', x.2) : XX k r))
      (ContinuousLinearMap.inl ℝ (Fin r → ℂ) (Mx k r)) x.1 := hasFDerivAt_prodMk_left x.1 x.2
  have hcomp : HasFDerivAt (fun c' => F (c', x.2))
      ((fderiv ℝ F x).comp (ContinuousLinearMap.inl ℝ (Fin r → ℂ) (Mx k r))) x.1 :=
    HasFDerivAt.comp x.1 (f := fun c' : Fin r → ℂ => ((c', x.2) : XX k r)) hFd.hasFDerivAt hγ
  refine hcomp.congr_of_eventuallyEq ?_
  have hmem : ∀ᶠ c' in 𝓝 x.1, ((c', x.2) : XX k r) ∈ U :=
    hγ.continuousAt.preimage_mem_nhds (hU.mem_nhds hx)
  filter_upwards [hmem] with c' hc'
  exact hΦ _ hc' hG

theorem dv_eq {Φ : Fn k r E} {F : XX k r → E} {U : Set (XX k r)} (hU : IsOpen U)
    (hF : ContDiffOn ℝ ∞ F U) (hΦ : ∀ x ∈ U, x.2 ∈ Glev k r i → Φ x.1 x.2 = F x) {x : XX k r} (hx : x ∈ U)
    (hG : x.2 ∈ Glev k r i) (v : Fin r → ℂ) : dv v Φ x.1 x.2 = fderiv ℝ F x (v, 0) := by
  unfold dv
  rw [(slice_hasFDeriv hU hF hΦ hx hG).fderiv]
  rfl

theorem sf_diff {Φ : Fn k r E} (h : SmoothFam k r i U₀ Φ) {x : XX k r} (hx : x ∈ U₀) (hG : x.2 ∈ Glev k r i) :
    DifferentiableAt ℝ (fun c' => Φ c' x.2) x.1 := by
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x hx hG
  exact (slice_hasFDeriv hU hF hΦ hxU hG).differentiableAt

theorem sf_dv (v : Fin r → ℂ) {Φ : Fn k r E} (h : SmoothFam k r i U₀ Φ) : SmoothFam k r i U₀ (dv v Φ) := by
  intro x₀ hx₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x₀ hx₀ hg₀
  exact ⟨U, fun x => fderiv ℝ F x (v, 0), hU, hxU,
    (hF.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty).clm_apply contDiffOn_const,
    fun x hx hxG => dv_eq hU hF hΦ hx hxG v⟩

def Ldir (X : Mx k r) : XX k r →L[ℝ] XX k r := (ContinuousLinearMap.inr ℝ (Fin r → ℂ) (Mx k r)).comp
    ((mulRightRealCLM X).comp (ContinuousLinearMap.snd ℝ (Fin r → ℂ) (Mx k r)))

theorem rd_eq {Φ : Fn k r E} {F : XX k r → E} {U : Set (XX k r)} (hU : IsOpen U)
    (hF : ContDiffOn ℝ ∞ F U) (hΦ : ∀ x ∈ U, x.2 ∈ Glev k r i → Φ x.1 x.2 = F x) {X : Mx k r}
    (hX : inLieLev k r i X) {x : XX k r} (hx : x ∈ U) (hxG : x.2 ∈ Glev k r i) :
    RdV X (Φ x.1) x.2 = fderiv ℝ F x (Ldir X x) := by
  have hγ : HasDerivAt (fun t : ℝ => ((x.1, x.2 * NormedSpace.exp ((t : ℂ) • X)) : XX k r)) (Ldir X x) 0 :=
    (hasDerivAt_const (0 : ℝ) x.1).prodMk (hasDerivAt_mul_exp_smul_zero x.2 X)
  have hγ0 : ((x.1, x.2 * NormedSpace.exp (((0 : ℝ) : ℂ) • X)) : XX k r) = x := by
    simp [NormedSpace.exp_zero]
  have hFd : DifferentiableAt ℝ F x :=
    (hF.differentiableOn (by simp)).differentiableAt (hU.mem_nhds hx)
  have hcomp : HasDerivAt (fun t : ℝ => F (x.1, x.2 * NormedSpace.exp ((t : ℂ) • X)))
      (fderiv ℝ F x (Ldir X x)) 0 :=
    hFd.hasFDerivAt.comp_hasDerivAt_of_eq (0 : ℝ) hγ hγ0.symm
  have hev : (fun t : ℝ => Φ x.1 (x.2 * NormedSpace.exp ((t : ℂ) • X))) =ᶠ[𝓝 0]
      (fun t : ℝ => F (x.1, x.2 * NormedSpace.exp ((t : ℂ) • X))) := by
    have hmem : ∀ᶠ t : ℝ in 𝓝 0, ((x.1, x.2 * NormedSpace.exp ((t : ℂ) • X)) : XX k r) ∈ U :=
      hγ.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact hU.mem_nhds hx)
    filter_upwards [hmem] with t ht
    exact hΦ _ ht (glev_mul hxG (exp_lev hX t))
  show deriv (fun t : ℝ => Φ x.1 (x.2 * NormedSpace.exp ((t : ℂ) • X))) 0 = _
  rw [hev.deriv_eq]
  exact hcomp.deriv

structure CD (i : Fin (r + 1)) (U₀ : Set (XX k r)) (T : (Mx k r → E) → Mx k r → E) : Prop where
  sm : ∀ Φ : Fn k r E, SmoothFam k r i U₀ Φ → SmoothFam k r i U₀ (fun c => T (Φ c))
  loc : ∀ Φ Ψ : Fn k r E, (∀ x ∈ U₀, x.2 ∈ Glev k r i → Φ x.1 x.2 = Ψ x.1 x.2) →
    ∀ x ∈ U₀, x.2 ∈ Glev k r i → T (Φ x.1) x.2 = T (Ψ x.1) x.2
  comm : ∀ (v : Fin r → ℂ) (Φ : Fn k r E), SmoothFam k r i U₀ Φ → ∀ x ∈ U₀, x.2 ∈ Glev k r i →
    dv v (fun c => T (Φ c)) x.1 x.2 = T (dv v Φ x.1) x.2

theorem CD.rdV (hU₀ : IsOpen U₀) {X : Mx k r} (hX : inLieLev k r i X) : CD (E := E) i U₀ (RdV X) := by
  refine ⟨?_, ?_, ?_⟩
  · intro Φ h x₀ hx₀ hg₀
    obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x₀ hx₀ hg₀
    exact ⟨U, fun x => fderiv ℝ F x (Ldir X x), hU, hxU,
      (hF.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty).clm_apply (Ldir X).contDiff.contDiffOn,
      fun x hx hxG => rd_eq hU hF hΦ hX hx hxG⟩
  · intro Φ Ψ h x hx hxG
    have hγ : HasDerivAt (fun t : ℝ => ((x.1, x.2 * NormedSpace.exp ((t : ℂ) • X)) : XX k r)) (Ldir X x) 0 :=
      (hasDerivAt_const (0 : ℝ) x.1).prodMk (hasDerivAt_mul_exp_smul_zero x.2 X)
    have hγ0 : ((x.1, x.2 * NormedSpace.exp (((0 : ℝ) : ℂ) • X)) : XX k r) = x := by
      simp [NormedSpace.exp_zero]
    have hmem : ∀ᶠ t : ℝ in 𝓝 0, ((x.1, x.2 * NormedSpace.exp ((t : ℂ) • X)) : XX k r) ∈ U₀ :=
      hγ.continuousAt.preimage_mem_nhds (by rw [hγ0]; exact hU₀.mem_nhds hx)
    unfold RdV
    apply Filter.EventuallyEq.deriv_eq
    filter_upwards [hmem] with t ht
    exact h _ ht (glev_mul hxG (exp_lev hX t))
  · intro v Φ h x hx hxG
    obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x hx hxG
    have hF1 : ContDiffOn ℝ ∞ (fun y => fderiv ℝ F y (Ldir X y)) U :=
      (hF.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty).clm_apply (Ldir X).contDiff.contDiffOn
    have hF2 : ContDiffOn ℝ ∞ (fun y => fderiv ℝ F y ((v, 0) : XX k r)) U :=
      (hF.fderiv_of_isOpen (m := ∞) hU withTop_enat_infty_add_one_le_infty).clm_apply contDiffOn_const
    rw [dv_eq (Φ := fun c => RdV X (Φ c)) hU hF1 (fun y hy hyG => rd_eq hU hF hΦ hX hy hyG) hxU hxG v,
      rd_eq (Φ := dv v Φ) hU hF2 (fun y hy hyG => dv_eq hU hF hΦ hy hyG v) hX hxU hxG]
    have hFa : ContDiffAt ℝ ∞ F x := hF.contDiffAt (hU.mem_nhds hxU)
    have hc : DifferentiableAt ℝ (fderiv ℝ F) x :=
      (hFa.fderiv_right (m := ∞) withTop_enat_infty_add_one_le_infty).differentiableAt (by simp)
    have H1 := (hc.hasFDerivAt.clm_apply (Ldir X).hasFDerivAt).fderiv
    have H2 := (hc.hasFDerivAt.clm_apply (hasFDerivAt_const ((v, 0) : XX k r) x)).fderiv
    have e1 := congrFun (congrArg DFunLike.coe H1) ((v, 0) : XX k r)
    have e2 := congrFun (congrArg DFunLike.coe H2) (Ldir X x)
    refine e1.trans (Eq.trans ?_ e2.symm)
    have hsym : IsSymmSndFDerivAt ℝ F x := hFa.isSymmSndFDerivAt (by simp only [minSmoothness_of_isRCLikeNormedField]; exact WithTop.coe_le_coe.2 (le_top : (2 : ℕ∞) ≤ ⊤))
    have hL0 : Ldir X ((v, 0) : XX k r) = 0 := by
      simp [Ldir, mulRightCLM_apply]
    show fderiv ℝ F x (Ldir X ((v, 0) : XX k r)) + fderiv ℝ (fderiv ℝ F) x ((v, 0) : XX k r) (Ldir X x) =
      fderiv ℝ F x 0 + fderiv ℝ (fderiv ℝ F) x (Ldir X x) ((v, 0) : XX k r)
    rw [hL0, map_zero, zero_add, zero_add]
    exact hsym _ _

theorem CD.id : CD (E := E) i U₀ (fun f => f) := ⟨fun _ h => h, fun _ _ h => h, fun _ _ _ _ _ _ => rfl⟩

theorem sf_zero : SmoothFam k r i U₀ (fun _ _ => (0 : E)) :=
  fun _ _ _ => ⟨Set.univ, fun _ => 0, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩

theorem sf_add {Φ Ψ : Fn k r E} (h : SmoothFam k r i U₀ Φ) (h' : SmoothFam k r i U₀ Ψ) :
    SmoothFam k r i U₀ (fun c g => Φ c g + Ψ c g) := by
  intro x₀ hx₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x₀ hx₀ hg₀
  obtain ⟨U', F', hU', hxU', hF', hΦ'⟩ := h' x₀ hx₀ hg₀
  exact ⟨U ∩ U', fun x => F x + F' x, hU.inter hU', ⟨hxU, hxU'⟩,
    (hF.mono Set.inter_subset_left).add (hF'.mono Set.inter_subset_right),
    fun x hx hxG => by
      show Φ x.1 x.2 + Ψ x.1 x.2 = F x + F' x
      rw [hΦ x hx.1 hxG, hΦ' x hx.2 hxG]⟩

theorem sf_smul {a : Fn k r ℂ} {Φ : Fn k r E} (h : SmoothFam k r i U₀ a) (h' : SmoothFam k r i U₀ Φ) :
    SmoothFam k r i U₀ (fun c g => a c g • Φ c g) := by
  intro x₀ hx₀ hg₀
  obtain ⟨U, F, hU, hxU, hF, hΦ⟩ := h x₀ hx₀ hg₀
  obtain ⟨U', F', hU', hxU', hF', hΦ'⟩ := h' x₀ hx₀ hg₀
  exact ⟨U ∩ U', fun x => F x • F' x, hU.inter hU', ⟨hxU, hxU'⟩,
    (hF.mono Set.inter_subset_left).smul (hF'.mono Set.inter_subset_right),
    fun x hx hxG => by
      show a x.1 x.2 • Φ x.1 x.2 = F x • F' x
      rw [hΦ x hx.1 hxG, hΦ' x hx.2 hxG]⟩

theorem sf_const (s : ℂ) : SmoothFam k r i U₀ (fun _ _ => s) :=
  fun _ _ _ => ⟨Set.univ, fun _ => s, isOpen_univ, trivial, contDiffOn_const, fun _ _ _ => rfl⟩

theorem CD.zero : CD (E := E) i U₀ (fun _ _ => 0) :=
  ⟨fun _ _ => sf_zero, fun _ _ _ _ _ _ => rfl, fun v _ _ _ _ _ => by simp [dv]⟩

theorem CD.comp {T S : (Mx k r → E) → Mx k r → E} (hT : CD i U₀ T) (hS : CD i U₀ S) :
    CD i U₀ (fun f => T (S f)) := by
  refine ⟨fun Φ h => hT.sm _ (hS.sm Φ h), fun Φ Ψ h => hT.loc (fun c => S (Φ c)) (fun c => S (Ψ c)) (hS.loc Φ Ψ h), ?_⟩
  intro v Φ h x hx hxG
  rw [hT.comm v _ (hS.sm Φ h) x hx hxG]
  exact hT.loc (dv v fun c => S (Φ c)) (fun c => S (dv v Φ c)) (fun y hy hyG => hS.comm v Φ h y hy hyG) x hx hxG

theorem CD.add {T S : (Mx k r → E) → Mx k r → E} (hT : CD i U₀ T) (hS : CD i U₀ S) :
    CD i U₀ (fun f g => T f g + S f g) := by
  refine ⟨fun Φ h => sf_add (hT.sm Φ h) (hS.sm Φ h), fun Φ Ψ h x hx hxG => ?_, ?_⟩
  · show T (Φ x.1) x.2 + S (Φ x.1) x.2 = T (Ψ x.1) x.2 + S (Ψ x.1) x.2
    rw [hT.loc Φ Ψ h x hx hxG, hS.loc Φ Ψ h x hx hxG]
  · intro v Φ h x hx hxG
    show _ = T (dv v Φ x.1) x.2 + S (dv v Φ x.1) x.2
    rw [← hT.comm v Φ h x hx hxG, ← hS.comm v Φ h x hx hxG]
    unfold dv
    have := fderiv_fun_add (sf_diff (hT.sm Φ h) hx hxG) (sf_diff (hS.sm Φ h) hx hxG)
    rw [this]
    rfl

theorem CD.coef {T : (Mx k r → E) → Mx k r → E} (hT : CD i U₀ T) (a : Mx k r → ℂ)
    (ha : SmoothFam k r i U₀ (fun _ g => a g)) : CD i U₀ (fun f g => a g • T f g) := by
  refine ⟨fun Φ h => sf_smul ha (hT.sm Φ h), fun Φ Ψ h x hx hxG => ?_, ?_⟩
  · show a x.2 • T (Φ x.1) x.2 = a x.2 • T (Ψ x.1) x.2
    rw [hT.loc Φ Ψ h x hx hxG]
  · intro v Φ h x hx hxG
    show _ = a x.2 • T (dv v Φ x.1) x.2
    rw [← hT.comm v Φ h x hx hxG]
    unfold dv
    have := fderiv_fun_const_smul (sf_diff (hT.sm Φ h) hx hxG) (a x.2)
    rw [this]
    rfl

theorem CD.csmul {T : (Mx k r → E) → Mx k r → E} (hT : CD i U₀ T) (s : ℂ) : CD i U₀ (fun f g => s • T f g) :=
  hT.coef (fun _ => s) (sf_const s)

theorem CD.neg {T : (Mx k r → E) → Mx k r → E} (hT : CD i U₀ T) : CD i U₀ (fun f g => -(T f g)) := by
  have := hT.csmul (-1)
  simpa using this

theorem CD.sum {ι : Type*} (s : Finset ι) {T : ι → (Mx k r → E) → Mx k r → E} (h : ∀ j ∈ s, CD i U₀ (T j)) :
    CD i U₀ (fun f g => ∑ j ∈ s, T j f g) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (CD.zero (E := E) (i := i) (U₀ := U₀))
  | insert a s ha ih =>
    have := (h a (Finset.mem_insert_self a s)).add (ih fun j hj => h j (Finset.mem_insert_of_mem hj))
    simpa [Finset.sum_insert ha] using this

theorem CD.foldr (L : List ((Mx k r → E) → Mx k r → E)) (hL : ∀ T ∈ L, CD i U₀ T) :
    CD i U₀ (fun f => L.foldr (fun T h => T h) f) := by
  induction L with
  | nil => exact CD.id
  | cons T L ih =>
    exact (hL T List.mem_cons_self).comp (ih fun T' hT' => hL T' (List.mem_cons_of_mem _ hT'))

end CDsec

section CDentries

variable {k r : ℕ} {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E]
variable {i : Fin (r + 1)} {U₀ : Set (XX k r)}

theorem single_bvec {p q c : Fin (2 * r + k + 1)} (h : q ≠ c) :
    (Matrix.single p q (1 : ℂ)) *ᵥ bvec c = 0 := by
  funext x
  simp [bvec, h]

theorem posL_ne_e (i : Fin (r + 1)) (a : Fin (mdim k r i)) (b : Fin r) (hb : b.val < i.val) :
    posL k r i a ≠ eI k r b ∧ posL k r i a ≠ esI k r b := by
  have h1 := a.isLt
  have h2 := i.isLt
  unfold mdim at h1
  simp only [posL, eI, esI, ne_eq, Fin.ext_iff]
  omega

theorem hpart_lie (i : Fin (r + 1)) (a b : Fin (mdim k r i)) :
    inLieLev k r i (hpart1 (Hpk k r) (Matrix.single (posL k r i a) (posL k r i b) 1)) ∧
    inLieLev k r i (hpart2 (Hpk k r) (Matrix.single (posL k r i a) (posL k r i b) 1)) := by
  have hs := hpart_skew (Hpk k r) (Matrix.single (posL k r i a) (posL k r i b) 1) WeylGroupFacts.hpk_sq hpk_herm
  have hZh : (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ))ᴴ =
      Matrix.single (posL k r i b) (posL k r i a) 1 := by
    rw [Matrix.conjTranspose_single, star_one]
  have hkill : ∀ c : Fin r, c.val < i.val →
      (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ)) *ᵥ bvec (eI k r c) = 0 ∧
      (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ)) *ᵥ bvec (esI k r c) = 0 ∧
      (Hpk k r * (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ))ᴴ * Hpk k r) *ᵥ bvec (eI k r c) = 0 ∧
      (Hpk k r * (Matrix.single (posL k r i a) (posL k r i b) (1 : ℂ))ᴴ * Hpk k r) *ᵥ bvec (esI k r c) = 0 := by
    intro c hc
    refine ⟨single_bvec (posL_ne_e i b c hc).1, single_bvec (posL_ne_e i b c hc).2, ?_, ?_⟩
    · rw [← Matrix.mulVec_mulVec, hpk_e, ← Matrix.mulVec_mulVec, hZh, single_bvec (posL_ne_e i a c hc).2,
        Matrix.mulVec_zero]
    · rw [← Matrix.mulVec_mulVec, hpk_es, ← Matrix.mulVec_mulVec, hZh, single_bvec (posL_ne_e i a c hc).1,
        Matrix.mulVec_zero]
  refine ⟨⟨hs.1, fun c hc => ?_⟩, ⟨hs.2, fun c hc => ?_⟩⟩
  · obtain ⟨k1, k2, k3, k4⟩ := hkill c hc
    unfold hpart1
    rw [hpk_inv]
    simp only [Matrix.smul_mulVec, Matrix.sub_mulVec, k1, k2, k3, k4, sub_zero, smul_zero, and_self]
  · obtain ⟨k1, k2, k3, k4⟩ := hkill c hc
    unfold hpart2
    rw [hpk_inv]
    simp only [Matrix.smul_mulVec, Matrix.add_mulVec, k1, k2, k3, k4, add_zero, smul_zero, and_self]

theorem sf_mul {a b : Fn k r ℂ} (h : SmoothFam k r i U₀ a) (h' : SmoothFam k r i U₀ b) :
    SmoothFam k r i U₀ (fun c g => a c g * b c g) := sf_smul h h'

theorem sf_sub' {a b : Fn k r ℂ} (h : SmoothFam k r i U₀ a) (h' : SmoothFam k r i U₀ b) :
    SmoothFam k r i U₀ (fun c g => a c g - b c g) := by
  have := sf_add h (sf_smul (sf_const (-1)) h')
  simpa [sub_eq_add_neg] using this

theorem sf_lin (L : Mx k r →ₗ[ℝ] ℂ) {a : Mx k r → ℂ} (h : ∀ g ∈ Glev k r i, a g = L g) :
    SmoothFam k r i U₀ (fun _ g => a g) :=
  fun _ _ _ => ⟨Set.univ, fun x => (LinearMap.toContinuousLinearMap L) x.2, isOpen_univ, trivial,
    ((LinearMap.toContinuousLinearMap L).contDiff.comp contDiff_snd).contDiffOn, fun x _ hx => h x.2 hx⟩

theorem uh_inv_eq {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g⁻¹ = Hpk k r * gᴴ * Hpk k r := by
  apply Matrix.inv_eq_left_inv
  have hg' : gᴴ * Hpk k r * g = Hpk k r := hg
  calc Hpk k r * gᴴ * Hpk k r * g = Hpk k r * (gᴴ * Hpk k r * g) := by simp only [Matrix.mul_assoc]
    _ = 1 := by rw [hg', WeylGroupFacts.hpk_sq]

theorem sf_yv (z : Fin (2 * r + k + 1) → ℂ) (j : Fin (mdim k r i)) :
    SmoothFam k r i U₀ (fun _ g => yv k r z i g j) := by
  refine sf_lin
    { toFun := fun g => ((Hpk k r * gᴴ * Hpk k r) *ᵥ fvec k r z i) (posL k r i j)
      map_add' := ?_
      map_smul' := ?_ } ?_
  · intro x y
    simp [Matrix.conjTranspose_add, Matrix.mul_add, Matrix.add_mul, Matrix.add_mulVec]
  · intro c x
    simp [Matrix.conjTranspose_smul, Matrix.smul_mulVec]
  · intro g hg
    show (g⁻¹ *ᵥ fvec k r z i) (posL k r i j) = _
    rw [uh_inv_eq hg.1]
    rfl

theorem sf_ybv (z : Fin (2 * r + k + 1) → ℂ) (j : Fin (mdim k r i)) :
    SmoothFam k r i U₀ (fun _ g => ybv k r z i g j) := by
  refine sf_lin
    { toFun := fun g => herm (Hpk k r) (g *ᵥ bvec (posL k r i j)) (fvec k r z i)
      map_add' := ?_
      map_smul' := ?_ } ?_
  · intro x y
    simp [herm, Matrix.add_mulVec, Matrix.mulVec_add, dotProduct_add]
  · intro c x
    simp [herm, Matrix.smul_mulVec, Matrix.mulVec_smul, dotProduct_smul]
  · intro g _
    rfl

theorem cd_EH (hU₀ : IsOpen U₀) (a b : Fin (mdim k r i)) :
    CD (E := E) i U₀ (EH k r (posL k r i a) (posL k r i b)) :=
  (CD.rdV hU₀ (hpart_lie i a b).1).add ((CD.rdV hU₀ (hpart_lie i a b).2).csmul Complex.I)

theorem cd_Top (hU₀ : IsOpen U₀) (u : ℂ) (a b : Fin (mdim k r i)) :
    CD (E := E) i U₀ (Top (EH k r) u (posL k r i a) (posL k r i b)) := by
  by_cases hab : posL k r i a = posL k r i b
  · have := (CD.id (E := E) (i := i) (U₀ := U₀)).csmul u |>.add (cd_EH hU₀ a b)
    unfold QuantumDeterminants.Top
    simpa only [if_pos hab] using this
  · have := (CD.zero (E := E) (i := i) (U₀ := U₀)).add (cd_EH hU₀ a b)
    unfold QuantumDeterminants.Top
    simpa only [if_neg hab] using this

theorem cd_qminor (hU₀ : IsOpen U₀) {t : ℕ} (a b : Fin t → Fin (mdim k r i)) (u : ℂ) :
    CD (E := E) i U₀ (qminorOp (EH k r) (posL k r i ∘ a) (posL k r i ∘ b) u) := by
  have key : ∀ σ : Equiv.Perm (Fin t), CD (E := E) i U₀ (fun f g =>
      (((Equiv.Perm.sign σ : ℤ) : ℂ) • (List.ofFn fun j : Fin t =>
        Top (E := E) (EH k r) (u - ((j : ℕ) : ℂ)) ((posL k r i ∘ a) (σ j)) ((posL k r i ∘ b) j)).foldr
          (fun T h => T h) f g)) := by
    intro σ
    refine CD.csmul (CD.foldr _ ?_) _
    intro T hT
    obtain ⟨j, rfl⟩ := (List.mem_ofFn' _ _).1 hT
    exact cd_Top hU₀ _ _ _
  have := CD.sum Finset.univ (fun σ _ => key σ)
  convert this using 3
  simp [qminorOp, Finset.sum_apply]

theorem cd_chatL (hU₀ : IsOpen U₀) (u : ℂ) (a β : Mx k r → Fin (mdim k r i) → ℂ)
    (ha : ∀ j, SmoothFam k r i U₀ (fun _ g => a g j)) (hβ : ∀ j, SmoothFam k r i U₀ (fun _ g => β g j)) :
    CD (E := E) i U₀ (chatL (EH k r) (posL k r i) u a β) := by
  unfold chatL
  exact CD.sum _ fun i' _ => CD.sum _ fun j' _ =>
    (cd_qminor hU₀ _ _ _).coef _ (sf_mul (sf_mul (sf_const _) (hβ i')) (ha j'))

theorem cd_chat2L (hU₀ : IsOpen U₀) (u : ℂ) (a a' β β' : Mx k r → Fin (mdim k r i) → ℂ)
    (ha : ∀ j, SmoothFam k r i U₀ (fun _ g => a g j)) (ha' : ∀ j, SmoothFam k r i U₀ (fun _ g => a' g j))
    (hβ : ∀ j, SmoothFam k r i U₀ (fun _ g => β g j)) (hβ' : ∀ j, SmoothFam k r i U₀ (fun _ g => β' g j)) :
    CD (E := E) i U₀ (chat2L (EH k r) (posL k r i) u a a' β β') := by
  unfold chat2L
  refine CD.sum _ fun i₁ _ => CD.sum _ fun i₂ _ => CD.sum _ fun j₁ _ => CD.sum _ fun j₂ _ => ?_
  by_cases hc : i₁ < i₂ ∧ j₁ < j₂
  · simp only [if_pos hc]
    exact (cd_qminor hU₀ _ _ _).coef _
      (sf_mul (sf_mul (sf_const _) (sf_sub' (sf_mul (hβ i₁) (hβ' i₂)) (sf_mul (hβ i₂) (hβ' i₁))))
      (sf_sub' (sf_mul (ha j₁) (ha' j₂)) (sf_mul (ha j₂) (ha' j₁))))
  · simp only [if_neg hc]
    exact CD.zero

theorem cd_tL (hU₀ : IsOpen U₀) (z z' : Fin (2 * r + k + 1) → ℂ) (Y : ℂ) (p q : Fin 2) :
    CD (E := E) i U₀ (tL k r z z' i Y p q) := by
  fin_cases p <;> fin_cases q
  · show CD i U₀ (fun f => capL k r i (uC k r i Y) f)
    exact cd_qminor hU₀ id id _
  · show CD i U₀ (fun f g => -(chatL (EH k r) (posL k r i) (uC k r i Y - 1) (fun _ => xv k r z' i)
      (ybv k r z i) f g))
    exact (cd_chatL hU₀ (uC k r i Y - 1) (fun _ => xv k r z' i) (ybv k r z i)
      (fun j => sf_const _) (fun j => sf_ybv z j)).neg
  · show CD i U₀ (fun f g => -(chatL (EH k r) (posL k r i) (uC k r i Y) (yv k r z i)
      (fun _ => xbv k r z' i) f g))
    exact (cd_chatL hU₀ (uC k r i Y) (yv k r z i) (fun _ => xbv k r z' i)
      (fun j => sf_yv z j) (fun j => sf_const _)).neg
  · show CD i U₀ (fun f g => -(chat2L (EH k r) (posL k r i) (uC k r i Y - 1) (yv k r z i)
      (fun _ => xv k r z' i) (ybv k r z i) (fun _ => xbv k r z' i) f g))
    exact (cd_chat2L hU₀ (uC k r i Y - 1) (yv k r z i) (fun _ => xv k r z' i) (ybv k r z i)
      (fun _ => xbv k r z' i) (fun j => sf_yv z j) (fun j => sf_const _) (fun j => sf_ybv z j)
      (fun j => sf_const _)).neg

end CDentries

section FamMod

open Topology

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
  {i : Fin (r + 1)} {Dc : (Fin r → ℂ) → Set (Mx k r)}

def UU (Dc : (Fin r → ℂ) → Set (Mx k r)) : Set (XX k r) := {x | x.1 ∈ OmX r ∧ x.2 ∈ Dc x.1}






theorem sf_slice {E : Type*} [NormedAddCommGroup E] [NormedSpace ℂ E] {Φ : Fn k r E}
    (h : SmoothFam k r i (UU Dc) Φ) {c : Fin r → ℂ} (hc : c ∈ OmX r) : SmoothLev k r i (Dc c) (Φ c) := by
  rintro g₀ ⟨hg, hD⟩
  obtain ⟨U, F, hU, hx, hF, hΦF⟩ := h (c, g₀) ⟨hc, hD⟩ hg
  refine ⟨(fun g => (c, g)) ⁻¹' U, fun g => F (c, g), hU.preimage (by fun_prop), hx, ?_,
    fun g hg hgl => hΦF (c, g) hg hgl⟩
  exact hF.comp (contDiff_const.prodMk contDiff_id).contDiffOn (fun g hg => hg)

end FamMod

section FamRing

open Topology Formalism.YangianSpanCharacter.T

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}
  {i : Fin (r + 1)} {Dc : (Fin r → ℂ) → Set (Mx k r)}

theorem tl_comb (hT : TLinLoc) {E : Type} [NormedAddCommGroup E] [NormedSpace ℂ E] {D : Set (Mx k r)}
    (hD : IsOpen D) (Y : ℂ) (a b : Fin 2) (s s₂ : ℂ) {f f₂ : Mx k r → E} (hf : SmoothLev k r i D f)
    (hf₂ : SmoothLev k r i D f₂) {g : Mx k r} (hg : g ∈ Glev k r i ∩ D) :
    tL k r z z' i Y a b (fun x => s • (f x + s₂ • f₂ x)) g =
      s • (tL k r z z' i Y a b f g + s₂ • tL k r z z' i Y a b f₂ g) := by
  have h1 := tl_smul (z := z) (z' := z') hT hD Y a b s (smooth_add hf (smooth_smul hf₂ s₂)) hg
  have h2 := tl_add (z := z) (z' := z') hT hD Y a b hf (smooth_smul hf₂ s₂) hg
  have h3 := tl_smul (z := z) (z' := z') hT hD Y a b s₂ hf₂ hg
  rw [h2, h3] at h1
  exact h1

end FamRing

section Final

open Topology Formalism.YangianSpanCharacter.T

variable {k r : ℕ} {z z' : Fin (2 * r + k + 1) → ℂ} {Wp Wq : Type} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp]
  [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)}

theorem inv_mul_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g⁻¹ * g = 1 :=
  Matrix.nonsing_inv_mul _ (WeylGroupFacts.isUnit_of_uh hg)

theorem mul_inv_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) : g * g⁻¹ = 1 :=
  Matrix.mul_nonsing_inv _ (WeylGroupFacts.isUnit_of_uh hg)

theorem glev_inv {i : Fin (r + 1)} {g : Mx k r} (hg : g ∈ Glev k r i) : g⁻¹ ∈ Glev k r i := by
  refine ⟨WeylGroupFacts.uh_inv hg.1, fun a ha => ⟨?_, ?_⟩⟩
  · conv_lhs => rw [← (hg.2 a ha).1]
    rw [Matrix.mulVec_mulVec, inv_mul_uh hg.1, Matrix.one_mulVec]
  · conv_lhs => rw [← (hg.2 a ha).2]
    rw [Matrix.mulVec_mulVec, inv_mul_uh hg.1, Matrix.one_mulVec]

theorem nlev_inv {i : Fin (r + 1)} {n : Mx k r} (hn : n ∈ Nlev k r i) : n⁻¹ ∈ Nlev k r i :=
  ⟨WeylGroupFacts.mem_n_inv hn.1, glev_inv hn.2⟩

end Final

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P

namespace Formalism.FourierDecayAlt.P.Qx8

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q

open scoped Matrix.Norms.Elementwise

section RepDer

open Topology

def IsLin {W : Type*} [AddCommGroup W] [Module ℂ W] (T : W → W) : Prop :=
  ∀ (a b : W) (c : ℂ), T (a + c • b) = T a + c • T b

namespace IsLin

variable {W : Type*} [AddCommGroup W] [Module ℂ W]

theorem map_zero {T : W → W} (h : IsLin T) : T 0 = 0 := by
  have := h 0 0 1
  simp only [one_smul, add_zero] at this
  exact left_eq_add.mp this

theorem map_smul {T : W → W} (h : IsLin T) (c : ℂ) (b : W) : T (c • b) = c • T b := by
  have := h 0 b c
  rwa [zero_add, h.map_zero, zero_add] at this

theorem map_add {T : W → W} (h : IsLin T) (a b : W) : T (a + b) = T a + T b := by
  have := h a b 1
  rwa [one_smul, one_smul] at this

theorem id : IsLin (fun x : W => x) := fun _ _ _ => rfl

theorem zero : IsLin (fun _ : W => (0 : W)) := fun _ _ _ => by simp

theorem comp {T S : W → W} (hT : IsLin T) (hS : IsLin S) : IsLin (fun x => T (S x)) := fun a b c => by
  show T (S (a + c • b)) = _
  rw [hS, hT]

theorem add {T S : W → W} (hT : IsLin T) (hS : IsLin S) : IsLin (fun x => T x + S x) := fun a b c => by
  show T (a + c • b) + S (a + c • b) = _
  rw [hT, hS, smul_add]; exact add_add_add_comm _ _ _ _

theorem smul {T : W → W} (hT : IsLin T) (s : ℂ) : IsLin (fun x => s • T x) := fun a b c => by
  show s • T (a + c • b) = _
  rw [hT, smul_add, smul_comm]

theorem foldr (L : List (W → W)) (hL : ∀ T ∈ L, IsLin T) : IsLin (fun x => L.foldr (fun T h => T h) x) := by
  induction L with
  | nil => exact IsLin.id
  | cons T L ih => exact (hL T List.mem_cons_self).comp (ih fun T' hT' => hL T' (List.mem_cons_of_mem _ hT'))

theorem sum {ι : Type*} (s : Finset ι) {T : ι → W → W} (h : ∀ j ∈ s, IsLin (T j)) :
    IsLin (fun x => ∑ j ∈ s, T j x) := by
  classical
  induction s using Finset.induction_on with
  | empty => simpa using (IsLin.zero (W := W))
  | insert a s ha ih =>
    have := (h a (Finset.mem_insert_self a s)).add (ih fun j hj => h j (Finset.mem_insert_of_mem hj))
    simpa [Finset.sum_insert ha] using this

end IsLin

theorem qmF_lin {W : Type*} [AddCommGroup W] [Module ℂ W] {n t : ℕ} (Eop : Fin n → Fin n → W → W)
    (hE : ∀ a b, IsLin (Eop a b)) (a b : Fin t → Fin n) (u : ℂ) : IsLin (qmF Eop a b u) := by
  unfold qmF
  refine IsLin.sum _ fun σ _ => IsLin.smul (IsLin.foldr _ ?_) _
  intro T hT
  obtain ⟨j, rfl⟩ := (List.mem_ofFn' _ _).1 hT
  refine IsLin.add ?_ (hE _ _)
  split_ifs
  · exact IsLin.id.smul _
  · exact IsLin.zero

theorem qmF_intertwine {W W' : Type*} [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W'] {n t : ℕ}
    (Eop' : Fin n → Fin n → W' → W') (Eop : Fin n → Fin n → W → W) (A : W' →ₗ[ℂ] W)
    (h : ∀ a b v, A (Eop' a b v) = Eop a b (A v)) (a b : Fin t → Fin n) (u : ℂ) (v : W') :
    A (qmF Eop' a b u v) = qmF Eop a b u (A v) := by
  unfold qmF

  rw [map_sum]
  refine Finset.sum_congr rfl fun σ _ => ?_
  rw [_root_.map_smul]
  congr 1
  have key : ∀ (L : List (Fin t)) (v : W'),
      A ((L.map fun k : Fin t => fun y : W' =>
        (if a (σ k) = b k then (u - ((k : ℕ) : ℂ)) • y else 0) + Eop' (a (σ k)) (b k) y).foldr (fun T h => T h) v) =
      (L.map fun k : Fin t => fun y : W =>
        (if a (σ k) = b k then (u - ((k : ℕ) : ℂ)) • y else 0) + Eop (a (σ k)) (b k) y).foldr (fun T h => T h)
          (A v) := by
    intro L v
    induction L with
    | nil => rfl
    | cons j L ih =>
      simp only [List.map_cons, List.foldr_cons]
      rw [_root_.map_add (f := _), h, ih]
      congr 1
      split_ifs
      · rw [_root_.map_smul, ih]
      · rw [_root_.map_zero]
  rw [List.ofFn_eq_map, List.ofFn_eq_map]
  exact key _ v

variable {k r : ℕ} {Wp : Type*} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [FiniteDimensional ℂ Wp]

def InU (U : Set (Mx k r)) (X : Mx k r) : Prop := ∀ t : ℝ, NormedSpace.exp ((t : ℂ) • X) ∈ U

theorem rep_hasDeriv {U : Set (Mx k r)} {π : Mx k r → (Wp →L[ℂ] Wp)} (hrep : IsCRepOn U π)
    (hcont : ContinuousOn π U) {X : Mx k r} (hX : InU U X) (v : Wp) :
    HasDerivAt (fun t : ℝ => π (NormedSpace.exp ((t : ℂ) • X)) v) (dRep π X v) 0 := by
  haveI : CompleteSpace Wp := FiniteDimensional.complete ℂ Wp
  have hce : Continuous fun t : ℝ => NormedSpace.exp ((t : ℂ) • X) := by
    have := lcurve_cont X (1 : Mx k r)
    simpa only [Matrix.mul_one] using this
  have hφ := _root_.UpperTheory.Reformulated.B.OneParameterGroupDifferentiableAtZero.main (fun t : ℝ => π (NormedSpace.exp ((t : ℂ) • X)))
    (hcont.comp_continuous hce hX) (by simp [NormedSpace.exp_zero, hrep.1])
    (fun s t => by
      have e := B5.exp_add' X s t
      push_cast at e
      show π (NormedSpace.exp (((s + t : ℝ) : ℂ) • X)) = _
      push_cast
      rw [e, hrep.2 _ (hX s) _ (hX t)]
      rfl)
  have hd : DifferentiableAt ℝ (fun t : ℝ => π (NormedSpace.exp ((t : ℂ) • X)) v) 0 :=
    ((ContinuousLinearMap.apply ℂ Wp v).restrictScalars ℝ).differentiableAt.comp 0 hφ
  exact hd.hasDerivAt

theorem dRep_lin {U : Set (Mx k r)} {π : Mx k r → (Wp →L[ℂ] Wp)} (hrep : IsCRepOn U π)
    (hcont : ContinuousOn π U) {X : Mx k r} (hX : InU U X) : IsLin (dRep π X) := by
  intro a b c
  have h1 := (rep_hasDeriv hrep hcont hX a).add ((rep_hasDeriv hrep hcont hX b).const_smul c)
  have h2 := rep_hasDeriv hrep hcont hX (a + c • b)
  refine h2.unique (h1.congr_of_eventuallyEq (Filter.Eventually.of_forall fun t => ?_))
  simp

theorem EcRep_lin {U : Set (Mx k r)} {π : Mx k r → (Wp →L[ℂ] Wp)} (hrep : IsCRepOn U π)
    (hcont : ContinuousOn π U) {H Z : Mx k r} (h1 : InU U (hpart1 H Z)) (h2 : InU U (hpart2 H Z)) :
    IsLin (EcRep H π Z) :=
  (dRep_lin hrep hcont h1).add ((dRep_lin hrep hcont h2).smul Complex.I)

theorem dRep_intertwine {Wq : Type*} [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] {π : Mx k r → (Wp →L[ℂ] Wp)}
    {π' : Mx k r → (Wq →L[ℂ] Wq)} (A : Wq →L[ℂ] Wp) {X X' : Mx k r} {v : Wq}
    (h' : HasDerivAt (fun t : ℝ => π' (NormedSpace.exp ((t : ℂ) • X')) v) (dRep π' X' v) 0)
    (hint : ∀ t : ℝ, A (π' (NormedSpace.exp ((t : ℂ) • X')) v) = π (NormedSpace.exp ((t : ℂ) • X)) (A v)) :
    A (dRep π' X' v) = dRep π X (A v) := by
  have h1 : HasDerivAt (fun t : ℝ => A (π' (NormedSpace.exp ((t : ℂ) • X')) v)) (A (dRep π' X' v)) 0 :=
    (A.restrictScalars ℝ).hasFDerivAt.comp_hasDerivAt 0 h'
  unfold dRep at h1 ⊢
  rw [← h1.deriv]
  congr 1
  funext t
  exact hint t

end RepDer

section UnitB

variable {k r : ℕ}

theorem mat_ext {n : ℕ} {M N : Matrix (Fin n) (Fin n) ℂ} (h : ∀ v, M *ᵥ v = N *ᵥ v) : M = N := by
  ext i j
  rw [← mulVec_bvec M, h, mulVec_bvec]

theorem herm_add_left' {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (x y w : Fin m → ℂ) :
    herm H (x + y) w = herm H x w + herm H y w := by
  unfold herm; rw [Matrix.mulVec_add, dotProduct_add]

theorem herm_add_right' {m : ℕ} (H : Matrix (Fin m) (Fin m) ℂ) (x w w' : Fin m → ℂ) :
    herm H x (w + w') = herm H x w + herm H x w' := by
  unfold herm; rw [star_add, add_dotProduct]

theorem herm_conj (v w : Fin (2 * r + k + 1) → ℂ) : star (herm (Hpk k r) v w) = herm (Hpk k r) w v :=
  (TwoByOneBlock.herm_symm (Hpk k r) hpk_herm v w).symm

theorem unitB_adj {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) :
    (Hpk k r)⁻¹ * (unitB (Hpk k r) Bs a b)ᴴ * Hpk k r = unitB (Hpk k r) Bs b a := by
  apply mat_ext
  intro v
  have h1 : ∀ u : Fin (2 * r + k + 1) → ℂ,
      (unitB (Hpk k r) Bs a b)ᴴ *ᵥ u = (star (Bs a) ⬝ᵥ u) • (Hpk k r *ᵥ Bs b) := by
    intro u
    funext p
    rw [Pi.smul_apply, smul_eq_mul, ← herm_bvec_right (Hpk k r) (Bs b) p, ← herm_conj]
    simp only [mulVec, dotProduct, Matrix.conjTranspose_apply, unitB, Matrix.of_apply, star_mul', Pi.star_apply,
      Finset.sum_mul]
    refine Finset.sum_congr rfl fun q _ => ?_
    ring
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, h1, Matrix.mulVec_smul, Matrix.mulVec_mulVec, hpk_inv,
    WeylGroupFacts.hpk_sq, Matrix.one_mulVec, unitB_mulVec]
  rfl

theorem hpart1_unitB {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) :
    hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) =
      (1 / 2 : ℂ) • (unitB (Hpk k r) Bs a b - unitB (Hpk k r) Bs b a) := by
  unfold hpart1; rw [unitB_adj]

theorem hpart2_unitB {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) :
    hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) =
      (1 / (2 * Complex.I) : ℂ) • (unitB (Hpk k r) Bs a b + unitB (Hpk k r) Bs b a) := by
  unfold hpart2; rw [unitB_adj]

theorem inv_mulVec_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (v : Fin (2 * r + k + 1) → ℂ) : g *ᵥ (g⁻¹ *ᵥ v) = v := by
  rw [Matrix.mulVec_mulVec, Matrix.mul_nonsing_inv _ (WeylGroupFacts.isUnit_of_uh hg), Matrix.one_mulVec]

theorem unitB_conj {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) {g : Mx k r}
    (hg : g ∈ UH (Hpk k r)) :
    g * unitB (Hpk k r) Bs a b * g⁻¹ = unitB (Hpk k r) (fun a => g *ᵥ Bs a) a b := by
  apply mat_ext
  intro v
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec, unitB_mulVec, unitB_mulVec, Matrix.mulVec_smul]
  congr 1
  conv_rhs => rw [← inv_mulVec_uh hg v]
  rw [herm_UH hg]

theorem hpart_conj {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) {g : Mx k r}
    (hg : g ∈ UH (Hpk k r)) :
    hpart1 (Hpk k r) (unitB (Hpk k r) (fun a => g *ᵥ Bs a) a b) =
        g * hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) * g⁻¹ ∧
      hpart2 (Hpk k r) (unitB (Hpk k r) (fun a => g *ᵥ Bs a) a b) =
        g * hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) * g⁻¹ := by
  rw [hpart1_unitB, hpart1_unitB, hpart2_unitB, hpart2_unitB, ← unitB_conj Bs a b hg, ← unitB_conj Bs b a hg]
  constructor
  · rw [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_sub, Matrix.sub_mul]
  · rw [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_add, Matrix.add_mul]

theorem hpart_kill {m : ℕ} (Bs : Fin m → Fin (2 * r + k + 1) → ℂ) (a b : Fin m) {v : Fin (2 * r + k + 1) → ℂ}
    (hv : ∀ a, herm (Hpk k r) v (Bs a) = 0) :
    hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 ∧ hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b) *ᵥ v = 0 := by
  rw [hpart1_unitB, hpart2_unitB]
  constructor
  · rw [Matrix.smul_mulVec, Matrix.sub_mulVec, unitB_mulVec, unitB_mulVec, hv, hv]; simp
  · rw [Matrix.smul_mulVec, Matrix.add_mulVec, unitB_mulVec, unitB_mulVec, hv, hv]; simp

theorem frame_orth {m : ℕ} {vs : List (Fin (2 * r + k + 1) → ℂ)} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (h : IsFrameOf k r vs Bs) {v : Fin (2 * r + k + 1) → ℂ} (hv : v ∈ vs) (a : Fin m) :
    herm (Hpk k r) v (Bs a) = 0 := by
  rw [← herm_conj, h.2.2 a v hv, star_zero]

theorem frame_InU {m : ℕ} {vs : List (Fin (2 * r + k + 1) → ℂ)} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (h : IsFrameOf k r vs Bs) {z : Fin (2 * r + k + 1) → ℂ} (hz : z ∈ vs) (a b : Fin m) :
    InU (UWset k r z) (hpart1 (Hpk k r) (unitB (Hpk k r) Bs a b)) ∧
      InU (UWset k r z) (hpart2 (Hpk k r) (unitB (Hpk k r) Bs a b)) := by
  have hl := unitB_lie Bs h.1 (Fin.last r) a b
  have hk := hpart_kill Bs a b (frame_orth h hz)
  constructor
  · intro t
    have := exp_lev hl.1 t
    exact ⟨this.1, fun c => this.2 c (by simp), exp_fix hk.1 t⟩
  · intro t
    have := exp_lev hl.2 t
    exact ⟨this.1, fun c => this.2 c (by simp), exp_fix hk.2 t⟩

theorem exp_conj_uh {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (X : Mx k r) (t : ℝ) :
    NormedSpace.exp ((t : ℂ) • (g * X * g⁻¹)) = g * NormedSpace.exp ((t : ℂ) • X) * g⁻¹ := by
  have hu : IsUnit g := (Matrix.isUnit_iff_isUnit_det _).2 (WeylGroupFacts.isUnit_of_uh hg)
  rw [← Matrix.exp_conj _ _ hu, Matrix.mul_smul, Matrix.smul_mul]

theorem capRep_lin {Wp : Type*} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [FiniteDimensional ℂ Wp] {m : ℕ}
    {vs : List (Fin (2 * r + k + 1) → ℂ)} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ} (h : IsFrameOf k r vs Bs)
    {z : Fin (2 * r + k + 1) → ℂ} (hz : z ∈ vs) {π : Mx k r → (Wp →L[ℂ] Wp)} (hrep : IsCRepOn (UWset k r z) π)
    (hcont : ContinuousOn π (UWset k r z)) (w : ℂ) : IsLin (capRep k r π Bs w) :=
  qmF_lin _ (fun a b => EcRep_lin hrep hcont (frame_InU h hz a b).1 (frame_InU h hz a b).2) _ _ _

theorem capRep_intertwine {Wp Wq : Type*} [NormedAddCommGroup Wp] [NormedSpace ℂ Wp] [FiniteDimensional ℂ Wp]
    [NormedAddCommGroup Wq] [NormedSpace ℂ Wq] [FiniteDimensional ℂ Wq] {m : ℕ}
    {y z' : Fin (2 * r + k + 1) → ℂ} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ} (h : IsFrameOf k r [y, z'] Bs)
    {π : Mx k r → (Wp →L[ℂ] Wp)} {π' : Mx k r → (Wq →L[ℂ] Wq)} (hrep' : IsCRepOn (UWset k r z') π')
    (hcont' : ContinuousOn π' (UWset k r z')) {g : Mx k r} (hg : g ∈ UH (Hpk k r)) (A : Wq →L[ℂ] Wp)
    (hint : ∀ h' ∈ UWset k r z', h' *ᵥ y = y → ∀ v, A (π' h' v) = π (g * h' * g⁻¹) (A v)) (w : ℂ) (v : Wq) :
    A (capRep k r π' Bs w v) = capRep k r π (fun a => g *ᵥ Bs a) w (A v) := by
  unfold capRep
  refine qmF_intertwine _ _ (A : Wq →ₗ[ℂ] Wp) ?_ _ _ _ v
  intro a b v
  have hU := frame_InU h (z := z') (by simp) a b
  have hky := hpart_kill Bs a b (frame_orth h (v := y) (by simp))
  have hc := hpart_conj Bs a b hg
  show A (dRep π' _ v + Complex.I • dRep π' _ v) = dRep π _ (A v) + Complex.I • dRep π _ (A v)
  rw [map_add (f := _), map_smul, hc.1, hc.2]
  congr 1
  · refine dRep_intertwine A (rep_hasDeriv hrep' hcont' hU.1 v) fun t => ?_
    rw [exp_conj_uh hg]
    exact hint _ (hU.1 t) (exp_fix hky.1 t) v
  · congr 1
    refine dRep_intertwine A (rep_hasDeriv hrep' hcont' hU.2 v) fun t => ?_
    rw [exp_conj_uh hg]
    exact hint _ (hU.2 t) (exp_fix hky.2 t) v

end UnitB

section Geom2

variable {k r : ℕ}

theorem orth_e {w : Fin (2 * r + k + 1) → ℂ} (hw : inWb k r w) (c : Fin r) :
    herm (Hpk k r) (bvec (eI k r c)) w = 0 ∧ herm (Hpk k r) (bvec (esI k r c)) w = 0 := by
  rw [inWb_iff] at hw
  rw [herm_bvec_left, hpk_e, dot_bvec, herm_bvec_left, hpk_es, dot_bvec, Pi.star_apply, Pi.star_apply, (hw c).1,
    (hw c).2]
  simp

theorem move {a b : Fin (2 * r + k + 1) → ℂ} (ha : inWb k r a) (hb : inWb k r b) (q : ℝ) (hq : q ≠ 0)
    (haa : herm (Hpk k r) a a = q) (hbb : herm (Hpk k r) b b = q) :
    ∃ g ∈ Glev k r (Fin.last r), g *ᵥ a = b ∧
      ∀ x, herm (Hpk k r) x a = 0 → herm (Hpk k r) x b = 0 → g *ᵥ x = x := by
  obtain ⟨g, hgU, hga, hfix⟩ := TwoByOneBlock.trans (Hpk k r) hpk_herm a b q hq haa hbb
  exact ⟨g, ⟨hgU, fun c _ => ⟨hfix _ (orth_e ha c).1 (orth_e hb c).1, hfix _ (orth_e ha c).2 (orth_e hb c).2⟩⟩, hga,
    hfix⟩

theorem inWb_smul {v : Fin (2 * r + k + 1) → ℂ} (hv : inWb k r v) (s : ℂ) : inWb k r (s • v) := by
  intro i hi
  rw [Pi.smul_apply, hv i hi, smul_zero]

theorem inWb_add {v w : Fin (2 * r + k + 1) → ℂ} (hv : inWb k r v) (hw : inWb k r w) : inWb k r (v + w) := by
  intro i hi
  rw [Pi.add_apply, hv i hi, hw i hi, add_zero]

theorem frame2_exists (hk : 1 ≤ k) {z e : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hT : 0 < Tz k r z)
    (he : inWb k r e) (hez : herm (Hpk k r) e z = 0) (hee : herm (Hpk k r) e e = 1) :
    ∃ Bs : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ, IsFrameOf k r [z, e] Bs := by
  set s : ℝ := Real.sqrt (Tz k r z) with hs
  have hss : (s : ℂ) * (s : ℂ) = ((Tz k r z : ℝ) : ℂ) := by
    rw [← Complex.ofReal_mul, hs, Real.mul_self_sqrt hT.le]
  set a : Fin (2 * r + k + 1) → ℂ := (s : ℂ) • bvec (wI k r (Fin.last k)) with ha
  have haW : inWb k r a := inWb_smul (inWb_bvec_wI _) _
  have haa : herm (Hpk k r) a a = ((-(Tz k r z) : ℝ) : ℂ) := by
    rw [ha, herm_smul_left', herm_smul_right', herm_wI, if_pos rfl, if_pos rfl]
    have : star (s : ℂ) = s := Complex.conj_ofReal s
    rw [this]
    push_cast
    linear_combination -hss
  have hzz : herm (Hpk k r) z z = ((-(Tz k r z) : ℝ) : ℂ) := by
    rw [TwoByOneBlock.herm_self_eq]; push_cast; rfl
  obtain ⟨g₁, hg₁, hg₁a, -⟩ := move haW hz (-(Tz k r z)) (by linarith [hT]) haa hzz
  set p : Fin (k + 1) := ⟨k - 1, by omega⟩ with hp
  have hpl : p ≠ Fin.last k := by
    intro h
    have := congrArg Fin.val h
    simp only [hp, Fin.val_last] at this
    omega
  set b : Fin (2 * r + k + 1) → ℂ := g₁ *ᵥ bvec (wI k r p) with hb
  have hbW : inWb k r b := inWb_mulVec hg₁ (inWb_bvec_wI _)
  have hbb : herm (Hpk k r) b b = ((1 : ℝ) : ℂ) := by
    rw [hb, herm_UH hg₁.1, herm_wI, if_pos rfl, if_neg hpl]; simp
  have hzb : herm (Hpk k r) z b = 0 := by
    rw [← hg₁a, hb, herm_UH hg₁.1, ha, herm_smul_left', herm_wI, if_neg (Ne.symm hpl), mul_zero]
  have hze : herm (Hpk k r) z e = 0 := by rw [← herm_conj, hez, star_zero]
  obtain ⟨g₂, hg₂, hg₂b, hfix⟩ := move hbW he 1 one_ne_zero hbb (by rw [hee]; simp)
  have hg₂z : g₂ *ᵥ z = z := hfix z hzb hze
  let ι : Fin (k - 1) → Fin (k + 1) := fun j => ⟨j.val, by omega⟩
  have hι1 : ∀ j, ι j ≠ Fin.last k := by
    intro j h
    have := congrArg Fin.val h
    have hj := j.isLt
    simp only [ι, Fin.val_last] at this
    omega
  have hι2 : ∀ j, ι j ≠ p := by
    intro j h
    have := congrArg Fin.val h
    have hj := j.isLt
    simp only [ι, hp] at this
    omega
  refine ⟨fun j => g₂ *ᵥ (g₁ *ᵥ bvec (wI k r (ι j))),
    fun j => inWb_mulVec hg₂ (inWb_mulVec hg₁ (inWb_bvec_wI _)), ?_, ?_⟩
  · intro i j
    rw [herm_UH hg₂.1, herm_UH hg₁.1, herm_wI, if_neg (hι1 i)]
    have : (ι i = ι j) ↔ i = j := by
      constructor
      · intro h; exact Fin.ext (by simpa [ι] using congrArg Fin.val h)
      · rintro rfl; rfl
    simp only [this]
  · intro j v hv
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hv
    rcases hv with rfl | rfl
    · conv_lhs => rw [← hg₂z, ← hg₁a]
      rw [herm_UH hg₂.1, herm_UH hg₁.1, ha, herm_smul_right', herm_wI, if_neg (hι1 j), mul_zero]
    · rw [← hg₂b, hb, herm_UH hg₂.1, herm_UH hg₁.1, herm_wI, if_neg (hι2 j)]

theorem orth_unit {a b : Fin (2 * r + k + 1) → ℂ} (ha : inWb k r a) (hb : inWb k r b) {A B : ℝ} (hB : 0 < B)
    (haa : herm (Hpk k r) a a = -(A : ℂ)) (hbb : herm (Hpk k r) b b = -(B : ℂ))
    (hG : 0 < Complex.normSq (herm (Hpk k r) a b) - A * B) :
    ∃ (e : Fin (2 * r + k + 1) → ℂ) (s c : ℂ), s ≠ 0 ∧ e = s • (a + c • b) ∧ inWb k r e ∧
      herm (Hpk k r) e b = 0 ∧ herm (Hpk k r) e e = 1 := by
  set ζ := herm (Hpk k r) a b with hζ
  have hBC : (B : ℂ) ≠ 0 := by exact_mod_cast hB.ne'
  set c : ℂ := ζ / B with hc
  set G : ℝ := (Complex.normSq ζ - A * B) / B with hGd
  have hGpos : 0 < G := div_pos hG hB
  set t : ℝ := Real.sqrt G with ht
  have htpos : 0 < t := Real.sqrt_pos.2 hGpos
  have htt : (t : ℂ) * (t : ℂ) = (G : ℂ) := by
    rw [← Complex.ofReal_mul, ht, Real.mul_self_sqrt hGpos.le]
  have htC : (t : ℂ) ≠ 0 := by exact_mod_cast htpos.ne'
  have hba : herm (Hpk k r) b a = star ζ := (herm_conj a b).symm
  have h1 : herm (Hpk k r) (a + c • b) b = 0 := by
    rw [herm_add_left', herm_smul_left', hbb, ← hζ, hc]
    field_simp
    ring
  have hnorm : ζ * star ζ = (Complex.normSq ζ : ℂ) := Complex.mul_conj ζ
  have h2 : herm (Hpk k r) (a + c • b) (a + c • b) = (G : ℂ) := by
    rw [herm_add_right', herm_smul_right', h1, mul_zero, add_zero, herm_add_left', herm_smul_left', haa, hba, hc, hGd]
    push_cast
    rw [← hnorm]
    field_simp
    ring
  refine ⟨(t : ℂ)⁻¹ • (a + c • b), (t : ℂ)⁻¹, c, inv_ne_zero htC, rfl, inWb_smul (inWb_add ha (inWb_smul hb _)) _, ?_,
    ?_⟩
  · rw [herm_smul_left', h1, mul_zero]
  · rw [herm_smul_left', herm_smul_right', h2, ← htt]
    have : star ((t : ℂ)⁻¹) = (t : ℂ)⁻¹ := by
      rw [star_inv₀]
      congr 1
      exact Complex.conj_ofReal t
    rw [this]
    field_simp

theorem herm_self' (z : Fin (2 * r + k + 1) → ℂ) : herm (Hpk k r) z z = -((Tz k r z : ℝ) : ℂ) :=
  TwoByOneBlock.herm_self_eq z

theorem GGl_pos {z z' : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hz' : inWb k r z') (hT : 0 < Tz k r z)
    (hT' : 0 < Tz k r z') {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r)) (hne : GGl k r z z' g ≠ 0) :
    0 < GGl k r z z' g := by
  have hgz : inWb k r (g *ᵥ z') := inWb_mulVec hg hz'
  have hTg : Tz k r (g *ᵥ z') = Tz k r z' := by unfold Tz; rw [herm_UH hg.1]
  have h := revCS k r z (g *ᵥ z') hz hgz (by unfold Tz at hT; linarith) (by rw [← hTg] at hT'; unfold Tz at hT'; linarith)
  rw [hTg] at h
  have h0 : 0 ≤ GGl k r z z' g := by
    unfold GGl zetaL
    rw [fvec_last, fvec_last]
    linarith
  exact lt_of_le_of_ne h0 (Ne.symm hne)

theorem geom_at (hk : 1 ≤ k) {z z' : Fin (2 * r + k + 1) → ℂ} (hz : inWb k r z) (hz' : inWb k r z')
    (hT : 0 < Tz k r z) (hT' : 0 < Tz k r z') {g : Mx k r} (hg : g ∈ Glev k r (Fin.last r))
    (hne : GGl k r z z' g ≠ 0) :
    ∃ (e' e'' : Fin (2 * r + k + 1) → ℂ) (Bs : Fin (k - 1) → Fin (2 * r + k + 1) → ℂ),
      (inWb k r e' ∧ herm (Hpk k r) e' z' = 0 ∧ herm (Hpk k r) e' e' = 1) ∧
      (inWb k r e'' ∧ herm (Hpk k r) e'' z = 0 ∧ herm (Hpk k r) e'' e'' = 1) ∧
      IsFrameOf k r [z', e'] Bs ∧ IsFrameOf k r [g⁻¹ *ᵥ z, z'] Bs ∧
      IsFrameOf k r [z, e''] (fun a => g *ᵥ Bs a) := by
  have hpos := GGl_pos hz hz' hT hT' hg hne
  set y := g⁻¹ *ᵥ z with hy
  have hgy : g *ᵥ y = z := inv_mulVec_uh hg.1 z
  have hginv : g⁻¹ ∈ Glev k r (Fin.last r) := by
    refine ⟨WeylGroupFacts.uh_inv hg.1, fun a ha => ⟨?_, ?_⟩⟩
    · conv_lhs => rw [← (hg.2 a ha).1]
      rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ (WeylGroupFacts.isUnit_of_uh hg.1), Matrix.one_mulVec]
    · conv_lhs => rw [← (hg.2 a ha).2]
      rw [Matrix.mulVec_mulVec, Matrix.nonsing_inv_mul _ (WeylGroupFacts.isUnit_of_uh hg.1), Matrix.one_mulVec]
  have hyW : inWb k r y := inWb_mulVec hginv hz
  have hyy : herm (Hpk k r) y y = -((Tz k r z : ℝ) : ℂ) := by
    rw [← herm_self', ← hgy, herm_UH hg.1]
  have hζ : herm (Hpk k r) z' y = zetaL k r z z' (Fin.last r) g := by
    unfold zetaL
    rw [fvec_last, fvec_last, ← hgy, herm_UH hg.1]
  have hG1 : 0 < Complex.normSq (herm (Hpk k r) z' y) - Tz k r z' * Tz k r z := by
    rw [hζ, mul_comm]; exact hpos
  have hG2 : 0 < Complex.normSq (herm (Hpk k r) y z') - Tz k r z * Tz k r z' := by
    rw [← herm_conj, hζ]
    have : Complex.normSq (star (zetaL k r z z' (Fin.last r) g)) = Complex.normSq (zetaL k r z z' (Fin.last r) g) :=
      Complex.normSq_conj _
    rw [this]; exact hpos
  obtain ⟨e', s, c, hs, he', he'W, he'z, he'e⟩ := orth_unit hyW hz' hT' hyy (herm_self' z') hG2
  obtain ⟨f, s₂, c₂, hs₂, hf, hfW, hfy, hff⟩ := orth_unit hz' hyW hT (herm_self' z') hyy hG1
  obtain ⟨Bs, hBs⟩ := frame2_exists hk hz' hT' he'W he'z he'e
  have hBz : ∀ a, herm (Hpk k r) (Bs a) z' = 0 := fun a => hBs.2.2 a z' (by simp)
  have hBe : ∀ a, herm (Hpk k r) (Bs a) e' = 0 := fun a => hBs.2.2 a e' (by simp)
  have hBy : ∀ a, herm (Hpk k r) (Bs a) y = 0 := by
    intro a
    have h := hBe a
    rw [he', herm_smul_right', herm_add_right', herm_smul_right', hBz, mul_zero, add_zero] at h
    exact (mul_eq_zero.1 h).resolve_left (star_ne_zero.2 hs)
  have hBf : ∀ a, herm (Hpk k r) (Bs a) f = 0 := by
    intro a
    rw [hf, herm_smul_right', herm_add_right', herm_smul_right', hBz, hBy]; simp
  refine ⟨e', g *ᵥ f, Bs, ⟨he'W, he'z, he'e⟩, ⟨inWb_mulVec hg hfW, ?_, ?_⟩, hBs, ⟨hBs.1, hBs.2.1, ?_⟩,
    ⟨fun a => inWb_mulVec hg (hBs.1 a), ?_, ?_⟩⟩
  · rw [← hgy, herm_UH hg.1, hfy]
  · rw [herm_UH hg.1, hff]
  · intro a v hv
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hv
    rcases hv with rfl | rfl
    · exact hBy a
    · exact hBz a
  · intro a b
    rw [herm_UH hg.1]; exact hBs.2.1 a b
  · intro a v hv
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hv
    rcases hv with rfl | rfl
    · conv_lhs => rw [← hgy]
      rw [herm_UH hg.1]; exact hBy a
    · rw [herm_UH hg.1]; exact hBf a

end Geom2

section Params

open Formalism.FourierDecayAlt.M

def P1 (P : M.Par) : M.Par := ⟨P.k, P.r, P.T, P.T', P.u', P.u'⟩

def P2 (P : M.Par) : M.Par := ⟨P.k, P.r, P.T, P.T', P.u, P.u⟩

variable {P : M.Par}

theorem one_mem_Icc (h : P.OK) : 1 ∈ Finset.Icc 1 P.k := Finset.mem_Icc.2 ⟨le_rfl, h.k_pos⟩

theorem first_projection_preserves_ok (h : P.OK) : (P1 P).OK := by
  obtain ⟨n₁, hn₁⟩ := h.int_u' 1 (one_mem_Icc h)
  have hint : ∀ i ∈ Finset.Icc 1 P.k, ∃ n : ℤ, P.u' i - P.u' 1 = n := by
    intro i hi
    obtain ⟨n, hn⟩ := h.int_u' i hi
    exact ⟨n - n₁, by push_cast; linarith⟩
  refine ⟨h.k_pos, h.T_pos, h.T'_pos, hint, hint, ?_⟩
  intro i hi
  have := h.gap i hi
  unfold M.Par.lo M.Par.hi at this ⊢
  show max (P.u' (i + 1)) (P.u' (i + 1)) + 1 / 2 ≤ min (P.u' i) (P.u' i) - 1 / 2
  rw [max_self, min_self]
  have h1 := le_max_right (P.u (i + 1)) (P.u' (i + 1))
  have h2 := min_le_right (P.u i) (P.u' i)
  linarith

theorem second_projection_preserves_ok (h : P.OK) : (P2 P).OK := by
  refine ⟨h.k_pos, h.T_pos, h.T'_pos, h.int_u, h.int_u, ?_⟩
  intro i hi
  have := h.gap i hi
  unfold M.Par.lo M.Par.hi at this ⊢
  show max (P.u (i + 1)) (P.u (i + 1)) + 1 / 2 ≤ min (P.u i) (P.u i) - 1 / 2
  rw [max_self, min_self]
  have h1 := le_max_left (P.u (i + 1)) (P.u' (i + 1))
  have h2 := min_le_left (P.u i) (P.u' i)
  linarith

theorem anti_of_step (a : ℕ → ℝ) (n : ℕ) (h : ∀ i, 1 ≤ i → i + 1 ≤ n → a (i + 1) < a i) :
    ∀ i j, 1 ≤ i → i < j → j ≤ n → a j < a i := by
  intro i j hi hij
  induction j, hij using Nat.le_induction with
  | base => exact fun hn => h i hi hn
  | succ j hj ih =>
    intro hn
    exact lt_trans (h j (by omega) hn) (ih (by omega))

theorem prod_match (a b : ℕ → ℝ) (n : ℕ) (ha : ∀ i j, 1 ≤ i → i < j → j ≤ n → a j < a i)
    (hb : ∀ i j, 1 ≤ i → i < j → j ≤ n → b j < b i)
    (h : ∀ Y : ℂ, ∏ i ∈ Finset.Icc 1 n, (Y + (a i : ℂ)) = ∏ i ∈ Finset.Icc 1 n, (Y + (b i : ℂ))) :
    ∀ j ∈ Finset.Icc 1 n, a j = b j := by
  have root : ∀ (a b : ℕ → ℝ), (∀ Y : ℂ, ∏ i ∈ Finset.Icc 1 n, (Y + (a i : ℂ)) = ∏ i ∈ Finset.Icc 1 n, (Y + (b i : ℂ))) →
      ∀ j ∈ Finset.Icc 1 n, ∃ m ∈ Finset.Icc 1 n, b m = a j := by
    intro a b h j hj
    have h0 : ∏ i ∈ Finset.Icc 1 n, (-(a j : ℂ) + (a i : ℂ)) = 0 :=
      Finset.prod_eq_zero hj (by ring)
    rw [h] at h0
    obtain ⟨m, hm, hm0⟩ := Finset.prod_eq_zero_iff.1 h0
    refine ⟨m, hm, ?_⟩
    have : (b m : ℂ) = (a j : ℂ) := by linear_combination hm0
    exact_mod_cast this
  intro j
  induction j using Nat.strong_induction_on with
  | _ j ih =>
    intro hj
    have hj' := Finset.mem_Icc.1 hj
    obtain ⟨m, hm, hbm⟩ := root a b h j hj
    obtain ⟨m', hm', ham'⟩ := root b a (fun Y => (h Y).symm) j hj
    have hm1 := Finset.mem_Icc.1 hm
    have hm1' := Finset.mem_Icc.1 hm'
    have h1 : a j ≤ b j := by
      rcases lt_trichotomy m j with hlt | heq | hgt
      · exfalso
        have := ih m hlt hm
        have h2 := ha m j hm1.1 hlt hj'.2
        linarith
      · rw [← hbm, heq]
      · have := hb j m hj'.1 hgt hm1.2
        linarith
    have h2 : b j ≤ a j := by
      rcases lt_trichotomy m' j with hlt | heq | hgt
      · exfalso
        have := ih m' hlt hm'
        have h2 := hb m' j hm1'.1 hlt hj'.2
        linarith
      · rw [← ham', heq]
      · have := ha j m' hj'.1 hgt hm1'.2
        linarith
    exact le_antisymm h1 h2

theorem rho_anti (h : P.OK) (π : Ty P) : ∀ i j, 1 ≤ i → i < j → j ≤ P.k - 1 → rho P π j < rho P π i := by
  apply anti_of_step
  intro i hi hn
  have hI := types_interlace P h π
  have h1 := hI i (Finset.mem_Icc.2 ⟨hi, by omega⟩)
  have h2 := hI (i + 1) (Finset.mem_Icc.2 ⟨by omega, hn⟩)
  linarith [h1.2.2.1, h2.1]

theorem rho_int (h : P.OK) (π : Ty P) (i : ℕ) (hi : i ∈ Finset.Icc 1 (P.k - 1)) :
    ∃ n : ℤ, rho P π i - P.u 1 - 1 / 2 = n := by
  have hi' := Finset.mem_Icc.1 hi
  have hi1 : i + 1 ∈ Finset.Icc 1 P.k := Finset.mem_Icc.2 ⟨by omega, by omega⟩
  obtain ⟨n₁, hn₁⟩ := h.int_u (i + 1) hi1
  obtain ⟨n₂, hn₂⟩ := h.int_u' (i + 1) hi1
  unfold rho
  rw [dite_eq_left hi']
  unfold M.Par.lo
  rcases max_choice (P.u (i + 1)) (P.u' (i + 1)) with hm | hm
  · rw [hm]
    exact ⟨n₁ + ((π ⟨i - 1, by omega⟩ : Fin _) : ℕ), by push_cast; linarith⟩
  · rw [hm]
    exact ⟨n₂ + ((π ⟨i - 1, by omega⟩ : Fin _) : ℕ), by push_cast; linarith⟩

theorem xC_sep (h : P.OK) {σ σ₀ : Ty P} (hne : σ ≠ σ₀) : ∃ Y, xC P σ Y ≠ xC P σ₀ Y := by
  by_contra hcon
  push_neg at hcon
  exact hne ((types_complete P h).2 σ σ₀
    (prod_match _ _ _ (rho_anti h σ) (rho_anti h σ₀) hcon))

end Params

section Spectral

open Formalism.FourierDecayAlt.M

theorem frame_sub {k r m : ℕ} {vs vs' : List (Fin (2 * r + k + 1) → ℂ)} {Bs : Fin m → Fin (2 * r + k + 1) → ℂ}
    (h : IsFrameOf k r vs Bs) (hsub : ∀ v ∈ vs', v ∈ vs) : IsFrameOf k r vs' Bs :=
  ⟨h.1, h.2.1, fun a v hv => h.2.2 a v (hsub v hv)⟩

end Spectral

end Formalism.FourierDecayAlt.P.Qx8

namespace Formalism.FourierDecayAlt.P

end Formalism.FourierDecayAlt.P
