module

public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.TameAtOne
public import Formalism.LocalToGlobal.Divisibility.DefGroupLemmas
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemElt
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemSum
public import Formalism.LocalToGlobal.IndefiniteReal.FinitePlaces.IdemUniq
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta IsDedekindDomain NumberField Matrix
open Formalism.IndefR.Datum
open scoped TensorProduct



namespace Formalism.IndefR.Fin.LevelGroupLemmas

section Generic

theorem idem_sum_zero {K R ι : Type*} [Field K] [CharZero K] [CommRing R] [Algebra K R] (s : Finset ι) (p : ι → R)
    (hp : ∀ i ∈ s, IsIdempotentElem (p i)) (h : ∑ i ∈ s, p i = 0) : ∀ i ∈ s, p i = 0 := by
  classical
  suffices H : ∀ (t : Finset ι) (q : ι → R), (∀ i ∈ t, IsIdempotentElem (q i)) → ∑ i ∈ t, q i = 0 →
      ∀ i ∈ t, q i = 0 from H s p hp h
  intro t
  induction t using Finset.strongInduction with
  | H t ih =>
    intro q hq hsum
    have hle : ∀ j ∈ t, ∀ k ∈ t, j ≠ k → q j = q k * q j := by
      intro j hj k hk hjk
      have e1 : q k * q k = q k := (hq k hk).eq
      have hid : ∀ j' ∈ t.erase k, IsIdempotentElem ((1 - q k) * q j') := by
        intro j' hj'
        have e2 : q j' * q j' = q j' := (hq j' (Finset.mem_of_mem_erase hj')).eq
        show ((1 - q k) * q j') * ((1 - q k) * q j') = (1 - q k) * q j'
        linear_combination (1 - q k) ^ 2 * e2 + q j' * e1
      have hs2 : ∑ j' ∈ t.erase k, (1 - q k) * q j' = 0 := by
        rw [← Finset.mul_sum]
        have h2 := Finset.add_sum_erase t q hk
        rw [hsum] at h2
        linear_combination (1 - q k) * h2 + e1
      have := ih (t.erase k) (Finset.erase_ssubset hk) (fun j' => (1 - q k) * q j') hid hs2 j
        (Finset.mem_erase.mpr ⟨hjk, hj⟩)
      linear_combination this
    intro i hi
    have heq : ∀ j ∈ t, q j = q i := by
      intro j hj
      by_cases hji : j = i
      · rw [hji]
      · rw [hle j hj i hi hji, mul_comm, ← hle i hi j hj (Ne.symm hji)]
    have hsum' : ∑ j ∈ t, q j = (t.card : R) * q i := by
      rw [Finset.sum_congr rfl heq, Finset.sum_const, nsmul_eq_mul]
    rw [hsum] at hsum'
    have hc : (t.card : K) ≠ 0 := Nat.cast_ne_zero.mpr (Finset.card_ne_zero.mpr ⟨i, hi⟩)
    have hu : algebraMap K R (t.card : K)⁻¹ * (t.card : R) = 1 := by
      rw [← map_natCast (algebraMap K R), ← map_mul, inv_mul_cancel₀ hc, map_one]
    calc q i = algebraMap K R (t.card : K)⁻¹ * ((t.card : R) * q i) := by rw [← mul_assoc, hu, one_mul]
      _ = 0 := by rw [← hsum', mul_zero]

variable {R : Type*} [CommRing R] {n : Type*} [Fintype n] [DecidableEq n]

def resM (s : R) (A : Matrix n n R) : Matrix n n R := 1 + s • (A - 1)

theorem resM_mul {s : R} (hs : s * s = s) (A B : Matrix n n R) : resM s A * resM s B = resM s (A * B) := by
  simp only [resM]
  have key : (A - 1) + (B - 1) + (A - 1) * (B - 1) = A * B - 1 := by noncomm_ring
  rw [← key]
  simp only [add_mul, mul_add, one_mul, mul_one, smul_mul_assoc, mul_smul_comm, smul_smul, hs, smul_add]
  try abel

theorem resM_orth {s t : R} (hst : s * t = 0) (A B : Matrix n n R) :
    resM s A * resM t B = 1 + s • (A - 1) + t • (B - 1) := by
  have hts : t * s = 0 := by rw [mul_comm, hst]
  simp only [resM, hts, add_mul, mul_add, one_mul, mul_one, smul_mul_assoc, mul_smul_comm, smul_add, smul_smul, zero_smul, add_zero]

theorem resM_add {s t : R} (hst : s * t = 0) (A : Matrix n n R) : resM s A * resM t A = resM (s + t) A := by
  rw [resM_orth hst]
  simp only [resM, add_smul, add_assoc]

theorem resM_one_left (A : Matrix n n R) : resM 1 A = A := by
  simp [resM]

theorem resM_zero_left (A : Matrix n n R) : resM 0 A = 1 := by
  simp [resM]

theorem resM_one_right (s : R) : resM s (1 : Matrix n n R) = 1 := by
  simp [resM]

theorem resM_map {R' : Type*} [CommRing R'] (f : R →+* R') (s : R) (A : Matrix n n R) :
    (resM s A).map f = resM (f s) (A.map f) := by
  ext i j
  by_cases h : i = j <;> simp [resM, h]

theorem resM_transpose (s : R) (A : Matrix n n R) : (resM s A)ᵀ = resM s Aᵀ := by
  simp [resM, Matrix.transpose_sub]

theorem resM_conj (s : R) (A : Matrix n n R) (B C : Matrix n n R) (hBC : B * C = 1) :
    B * resM s A * C = resM s (B * A * C) := by
  simp only [resM, mul_add, add_mul, mul_one, mul_smul_comm, smul_mul_assoc, mul_sub, sub_mul, hBC]

theorem resM_unitary {s : R} (hs : s * s = s) (A A' G : Matrix n n R) (h : A' * G * A = G) :
    resM s A' * G * resM s A = G := by
  simp only [resM]
  have key : (A' - 1) * G + G * (A - 1) + (A' - 1) * G * (A - 1) = 0 := by
    have e : (A' - 1) * G + G * (A - 1) + (A' - 1) * G * (A - 1) = A' * G * A - G := by noncomm_ring
    rw [e, h, sub_self]
  calc (1 + s • (A' - 1)) * G * (1 + s • (A - 1))
      = G + s • ((A' - 1) * G + G * (A - 1) + (A' - 1) * G * (A - 1)) := by
        simp only [add_mul, mul_add, one_mul, mul_one, smul_mul_assoc, mul_smul_comm, smul_smul, hs, smul_add]
        abel
    _ = G := by rw [key, smul_zero, add_zero]

end Generic

section IdemSum

variable {D : D7}

theorem isIdem_cA {a : AE D} (h : a * a = a) : cA D a * cA D a = cA D a := by
  rw [← map_mul, h]

theorem idemAt_eps {e : AE D} {PP : Formalism.L2.DIV.Pl D.host.E} (h : Formalism.L2.NTheta.IsIdemAt e PP) :
    e * phiE (belowPl PP) 1 = e := by
  rw [← below_of_idemAt h, mul_add, h.1.1, h.1.2.1, add_zero]

theorem idemAt_int {e : AE D} {PP : Formalism.L2.DIV.Pl D.host.E} (h : Formalism.L2.NTheta.IsIdemAt e PP) :
    finPart D e ∈ intAE D := by
  have h1P : (1 : 𝓞 D.host.E) ∉ PP.asIdeal := fun h' => PP.isPrime.ne_top ((Ideal.eq_top_iff_one _).2 h')
  have := not_not.1 (mt (h.2 1 one_ne_zero).2 h1P)
  rwa [show ((1 : 𝓞 D.host.E) : D.host.E)⁻¹ = 1 by simp, map_one, mul_one] at this

variable {e : AE D} {P : Finset (Formalism.L2.DIV.Pl D.host.E)} {es : Formalism.L2.DIV.Pl D.host.E → AE D}

theorem idemSum_conj_orth (hes : ∀ PP ∈ P, Formalism.L2.NTheta.IsIdemAt (es PP) PP) (he : e = ∑ PP ∈ P, es PP)
    (hc : e * cA D e = 0) : ∀ PP ∈ P, ∀ PP' ∈ P, es PP * cA D (es PP') = 0 := by
  intro PP hPP PP' hPP'
  have hsum : ∑ x ∈ P ×ˢ P, es x.1 * cA D (es x.2) = 0 := by
    rw [Finset.sum_product]
    show ∑ x ∈ P, ∑ y ∈ P, es x * cA D (es y) = 0

    rw [← Finset.sum_mul_sum, ← map_sum, ← he, hc]
  refine idem_sum_zero (K := D.host.F) (P ×ˢ P) (fun x => es x.1 * cA D (es x.2)) ?_ hsum (PP, PP')
    (Finset.mem_product.2 ⟨hPP, hPP'⟩)
  rintro ⟨a, b⟩ hab
  obtain ⟨ha, hb⟩ := Finset.mem_product.1 hab
  have h1 := (hes a ha).1.1
  have h2 := isIdem_cA (hes b hb).1.1
  show (es a * cA D (es b)) * (es a * cA D (es b)) = es a * cA D (es b)
  calc (es a * cA D (es b)) * (es a * cA D (es b)) = (es a * es a) * (cA D (es b) * cA D (es b)) := by ring
    _ = _ := by rw [h1, h2]

theorem idemSum_below_inj (hes : ∀ PP ∈ P, Formalism.L2.NTheta.IsIdemAt (es PP) PP) (he : e = ∑ PP ∈ P, es PP)
    (hc : e * cA D e = 0) {PP PP' : Formalism.L2.DIV.Pl D.host.E} (hPP : PP ∈ P) (hPP' : PP' ∈ P)
    (hv : belowPl PP = belowPl PP') : PP = PP' := by
  have ho := idemSum_conj_orth hes he hc
  have ha := hes PP hPP
  have hb := hes PP' hPP'
  have hsa := below_of_idemAt ha
  have hsb := below_of_idemAt hb
  have h1 : es PP = es PP * es PP' := by
    calc es PP = es PP * phiE (belowPl PP) 1 := (idemAt_eps ha).symm
      _ = es PP * (es PP' + cA D (es PP')) := by rw [hsb, hv]
      _ = es PP * es PP' := by rw [mul_add, ho PP hPP PP' hPP', add_zero]
  have h2 : es PP' = es PP * es PP' := by
    calc es PP' = es PP' * phiE (belowPl PP') 1 := (idemAt_eps hb).symm
      _ = es PP' * (es PP + cA D (es PP)) := by rw [hsa, hv]
      _ = es PP * es PP' := by rw [mul_add, ho PP' hPP' PP hPP, add_zero, mul_comm]
  have hab : es PP = es PP' := h1.trans h2.symm
  apply HeightOneSpectrum.ext
  ext x
  by_cases hx0 : x = 0
  · subst hx0; simp only [zero_mem]
  rw [ha.2 x hx0, hb.2 x hx0, hab]

theorem idemSum_orth (hes : ∀ PP ∈ P, Formalism.L2.NTheta.IsIdemAt (es PP) PP) (he : e = ∑ PP ∈ P, es PP)
    (hc : e * cA D e = 0) {PP PP' : Formalism.L2.DIV.Pl D.host.E} (hPP : PP ∈ P) (hPP' : PP' ∈ P) (hne : PP ≠ PP') :
    es PP * es PP' = 0 := by
  have hv : belowPl PP ≠ belowPl PP' := fun hv => hne (idemSum_below_inj hes he hc hPP hPP' hv)
  calc es PP * es PP' = (es PP * phiE (belowPl PP) 1) * (es PP' * phiE (belowPl PP') 1) := by
        rw [idemAt_eps (hes PP hPP), idemAt_eps (hes PP' hPP')]
    _ = es PP * es PP' * (phiE (belowPl PP) 1 * phiE (belowPl PP') 1) := by ring
    _ = 0 := by rw [phiE_orth hv, mul_zero]

theorem idemSum_mul_mem (hes : ∀ PP ∈ P, Formalism.L2.NTheta.IsIdemAt (es PP) PP) (he : e = ∑ PP ∈ P, es PP)
    (hc : e * cA D e = 0) {PP : Formalism.L2.DIV.Pl D.host.E} (hPP : PP ∈ P) : es PP * e = es PP := by
  rw [he, Finset.mul_sum, Finset.sum_eq_single PP]
  · exact (hes PP hPP).1.1
  · intro PP' hPP' hne
    exact idemSum_orth hes he hc hPP hPP' (Ne.symm hne)
  · intro h
    exact absurd hPP h

theorem idemSum_sq (h : IsIdemSum e P) : e * e = e := by
  obtain ⟨⟨es, hes, he⟩, hc⟩ := h
  calc e * e = (∑ PP ∈ P, es PP) * e := by rw [← he]
    _ = ∑ PP ∈ P, es PP * e := by rw [Finset.sum_mul]
    _ = ∑ PP ∈ P, es PP := Finset.sum_congr rfl (fun PP hPP => idemSum_mul_mem hes he hc hPP)
    _ = e := he.symm

theorem idemSum_eps (h : IsIdemSum e P) :
    ∃ εP : AF D.host.F, IsIdempotentElem εP ∧ algebraMap (AF D.host.F) (AE D) εP = e + cA D e := by
  have hsq := idemSum_sq h
  obtain ⟨⟨es, hes, he⟩, hc⟩ := h
  have hinj : Function.Injective (algebraMap (AF D.host.F) (AE D)) := by
    have h0 := Algebra.TensorProduct.includeLeft_injective (R := D.host.F) (S := AF D.host.F)
      (A := AF D.host.F) (B := D.host.E) (algebraMap D.host.F D.host.E).injective
    intro a b hab
    apply h0
    simpa [Algebra.TensorProduct.algebraMap_apply] using hab
  choose! v ε hpl hε using fun PP (hPP : PP ∈ P) => (hes PP hPP).1.2.2
  have hsum : algebraMap (AF D.host.F) (AE D) (∑ PP ∈ P, ε PP) = e + cA D e := by

    rw [map_sum, he, map_sum, ← Finset.sum_add_distrib]
    exact Finset.sum_congr rfl (fun PP hPP => (hε PP hPP).symm)
  refine ⟨∑ PP ∈ P, ε PP, ?_, hsum⟩
  apply hinj
  rw [map_mul, hsum]
  have h3 : cA D e * cA D e = cA D e := isIdem_cA hsq
  linear_combination hsq + 2 * hc + h3

end IdemSum

section Res

variable {D : D7}

theorem cA_alg (a : AF D.host.F) :
    cA D (algebraMap (AF D.host.F) (AE D) a) = algebraMap (AF D.host.F) (AE D) a := by
  rw [Algebra.TensorProduct.algebraMap_apply]
  simp [cA, sigR]

theorem mtG_mul (V : HSp D) (a b : GA D V) : mt V (a * b) = mt V a * mt V b := by
  unfold Formalism.L2.Theta.mt
  rw [map_mul]
  rfl

theorem mtG_one (V : HSp D) : mt V (1 : GA D V) = 1 := by
  unfold Formalism.L2.Theta.mt
  rw [map_one]
  rfl

theorem mtG_inv (V : HSp D) (a : GA D V) : mt V a * mt V a⁻¹ = 1 := by
  rw [← mtG_mul, mul_inv_cancel, mtG_one]

theorem mtG_inv' (V : HSp D) (a : GA D V) : mt V a⁻¹ * mt V a = 1 := by
  rw [← mtG_mul, inv_mul_cancel, mtG_one]

theorem gaExt {V : HSp D} {a b : GA D V} (h : mt V a = mt V b) : a = b := by
  apply Subtype.ext
  exact Units.ext h

theorem mtG_unitary (V : HSp D) (g : GA D V) :
    ((mt V g).map (cA D))ᵀ * V.gram.map (incA D) * mt V g = V.gram.map (incA D) := g.2

def mkRes (V : HSp D) (ε : AF D.host.F) (hε : IsIdempotentElem ε) (g : GA D V) : GA D V :=
    have hs : algebraMap (AF D.host.F) (AE D) ε * algebraMap (AF D.host.F) (AE D) ε =
        algebraMap (AF D.host.F) (AE D) ε := by rw [← map_mul, hε.eq]
    let g' : HR (AF D.host.F) D.sp.cm.sig V.gram :=
      ⟨⟨resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g), resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g⁻¹),
        by rw [resM_mul hs, mtG_inv, resM_one_right], by rw [resM_mul hs, mtG_inv', resM_one_right]⟩, by
        show ((resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g)).map (cA D))ᵀ * V.gram.map (incA D) *
          resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g) = V.gram.map (incA D)
        rw [resM_map, resM_transpose, cA_alg]
        exact resM_unitary hs _ _ _ (mtG_unitary V g)⟩
    g'

theorem mt_mkRes (V : HSp D) (ε : AF D.host.F) (hε : IsIdempotentElem ε) (g : GA D V) :
    mt V (mkRes V ε hε g) = resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g) := rfl


open Classical in
def resG (V : HSp D) (ε : AF D.host.F) (g : GA D V) : GA D V :=
  if hε : IsIdempotentElem ε then mkRes V ε hε g else g

variable (V : HSp D) {ε ε' : AF D.host.F}

theorem mt_resG (hε : IsIdempotentElem ε) (g : GA D V) :
    mt V (resG V ε g) = resM (algebraMap (AF D.host.F) (AE D) ε) (mt V g) := by
  simp only [resG, dif_pos hε]
  exact mt_mkRes V ε hε g

theorem algIdem (hε : IsIdempotentElem ε) :
    algebraMap (AF D.host.F) (AE D) ε * algebraMap (AF D.host.F) (AE D) ε = algebraMap (AF D.host.F) (AE D) ε := by
  rw [← map_mul, hε.eq]

theorem resG_mul (hε : IsIdempotentElem ε) (g g' : GA D V) : resG V ε (g * g') = resG V ε g * resG V ε g' := by
  apply gaExt
  simp only [mt_resG V hε, mtG_mul, resM_mul (algIdem hε)]

theorem resG_one_eps (g : GA D V) : resG V 1 g = g := by
  apply gaExt
  rw [mt_resG V IsIdempotentElem.one, map_one, resM_one_left]

theorem resG_zero_eps (g : GA D V) : resG V 0 g = 1 := by
  apply gaExt
  rw [mt_resG V IsIdempotentElem.zero, map_zero, resM_zero_left, mtG_one]

theorem resG_one (hε : IsIdempotentElem ε) : resG V ε 1 = 1 := by
  apply gaExt
  rw [mt_resG V hε, mtG_one, resM_one_right]

theorem isIdem_add_orth (hε : IsIdempotentElem ε) (hε' : IsIdempotentElem ε') (h : ε * ε' = 0) :
    IsIdempotentElem (ε + ε') := by
  show (ε + ε') * (ε + ε') = ε + ε'
  have h1 := hε.eq
  have h2 := hε'.eq
  linear_combination h1 + h2 + 2 * h

theorem resG_orth (hε : IsIdempotentElem ε) (hε' : IsIdempotentElem ε') (h : ε * ε' = 0) (g : GA D V) :
    resG V ε g * resG V ε' g = resG V (ε + ε') g := by
  apply gaExt
  have hst : algebraMap (AF D.host.F) (AE D) ε * algebraMap (AF D.host.F) (AE D) ε' = 0 := by
    rw [← map_mul, h, map_zero]
  rw [mtG_mul, mt_resG V hε, mt_resG V hε', mt_resG V (isIdem_add_orth hε hε' h), map_add (f := _), resM_add hst]

theorem resG_compl (hε : IsIdempotentElem ε) (g : GA D V) : resG V ε g * resG V (1 - ε) g = g := by
  have h0 : ε * (1 - ε) = 0 := by rw [mul_sub, mul_one, hε.eq, sub_self]
  have h1 : ε + (1 - ε) = 1 := by ring
  rw [resG_orth V hε hε.one_sub h0 g, h1, resG_one_eps]


theorem resG_mem_GfC (hε : IsIdempotentElem ε) {g : GA D V} (hg : g ∈ GfC V) : resG V ε g ∈ GfC V := by
  unfold GfC at hg ⊢
  rw [MonoidHom.mem_ker] at hg ⊢
  have key : ∀ x : GA D V, ((infHom V x : GL (Fin V.rank) (Ainf D.host.F ⊗[D.host.F] D.host.E)) :
      Matrix (Fin V.rank) (Fin V.rank) (Ainf D.host.F ⊗[D.host.F] D.host.E)) = (mt V x).map (infPart D) :=
    fun x => rfl
  apply Units.ext
  have h1 : (mt V g).map (infPart D) = 1 := by rw [← key, hg, Units.val_one]
  rw [key, Units.val_one, mt_resG V hε, resM_map, h1, resM_one_right]

theorem suppAt_resG (hε : IsIdempotentElem ε) (g : GA D V) {e : AE D}
    (he : e + cA D e = algebraMap (AF D.host.F) (AE D) ε) : SuppAt e V (resG V ε g) := by
  intro i j
  rw [he, mt_resG V hε, resM, add_sub_cancel_left, Matrix.smul_apply, smul_eq_mul, ← mul_assoc, algIdem hε]

end Res

section Fin

variable {D : D7} (V : HSp D) {ε : AF D.host.F}

theorem finE_val (g : GA D V) :
    ((Lev.finE V g : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) =
      (mt V g).map (toEAf D) := rfl

theorem toEAf_alg (a : AF D.host.F) :
    toEAf D (algebraMap (AF D.host.F) (AE D) a) = (1 : D.host.E) ⊗ₜ[D.host.F] sndA D.host.F a := by
  rw [Algebra.TensorProduct.algebraMap_apply]
  simp [toEAf, finPart]

theorem sndA_idem_int (hε : IsIdempotentElem ε) : sndA D.host.F ε ∈ Formalism.UG.intAd D.host.F := by
  intro v
  have h : IsIdempotentElem (evalV D.host.F v (sndA D.host.F ε)) := by
    show _ * _ = _
    rw [← map_mul, ← map_mul, hε.eq]
  rcases IsIdempotentElem.iff_eq_zero_or_one.1 h with h0 | h1
  · show evalV D.host.F v (sndA D.host.F ε) ∈ _
    rw [h0]; exact zero_mem _
  · show evalV D.host.F v (sndA D.host.F ε) ∈ _
    rw [h1]; exact one_mem _

theorem frGL_val' {n : ℕ} (β : GL (Fin n) (Lev.EAf D)) (y : GL (Fin n) (Formalism.L2.Herm.intAf D.host.F D.host.E)) :
    ((Formalism.L2.DIV.frGL β y : GL (Fin n) (Lev.EAf D)) : Matrix (Fin n) (Fin n) (Lev.EAf D)) =
      (β : Matrix (Fin n) (Fin n) (Lev.EAf D)) *
        (y : Matrix (Fin n) (Fin n) (Formalism.L2.Herm.intAf D.host.F D.host.E)).map
          (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype *
        ((β⁻¹ : GL (Fin n) (Lev.EAf D)) : Matrix (Fin n) (Fin n) (Lev.EAf D)) := rfl



theorem finE_resG_mem_St (hε : IsIdempotentElem ε) {g : GA D V} {β : GL (Fin V.rank) (Lev.EAf D)}
    (hg : Lev.finE V g ∈ Formalism.L2.DIV.St β) : Lev.finE V (resG V ε g) ∈ Formalism.L2.DIV.St β := by
  obtain ⟨y, hy⟩ := hg
  obtain ⟨α, hαv⟩ : ∃ α : Formalism.L2.Herm.intAf D.host.F D.host.E,
      (α : Lev.EAf D) = (1 : D.host.E) ⊗ₜ[D.host.F] sndA D.host.F ε :=
    ⟨Formalism.L2.DIV.adS D.host.F D.host.E ⟨sndA D.host.F ε, sndA_idem_int hε⟩, rfl⟩
  have hα : α * α = α := Subtype.ext (by
    show (α : Lev.EAf D) * α = α
    rw [hαv, Algebra.TensorProduct.tmul_mul_tmul, mul_one, ← map_mul, hε.eq])
  refine ⟨⟨resM α (y : Matrix _ _ _), resM α ((y⁻¹ : GL _ _) : Matrix _ _ _),
    by rw [resM_mul hα, Units.mul_inv, resM_one_right], by rw [resM_mul hα, Units.inv_mul, resM_one_right]⟩, ?_⟩
  apply Units.ext
  rw [frGL_val']
  have hsub : (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype α = (1 : D.host.E) ⊗ₜ[D.host.F] sndA D.host.F ε := hαv
  have hy' : (β : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) *
      (y : Matrix (Fin V.rank) (Fin V.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E)).map
        (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype *
      ((β⁻¹ : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) = (mt V g).map (toEAf D) := by
    rw [← frGL_val', hy, finE_val]
  have hββ : (β : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) *
      ((β⁻¹ : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) = 1 := by
    rw [← Units.val_mul, mul_inv_cancel, Units.val_one]
  rw [resM_map, resM_conj _ _ _ _ hββ, hy', hsub, finE_val, mt_resG V hε, resM_map, toEAf_alg]

end Fin

section Det

variable {D : D7}


open Classical in
def detAt (e : AE D) (V : HSp D) (g : GA D V) : (AE D)ˣ :=
  if he : e * e = e then
    ⟨e * (mt V g).det + (1 - e), e * (mt V g⁻¹).det + (1 - e),
      by
        have hd : (mt V g).det * (mt V g⁻¹).det = 1 := by rw [← Matrix.det_mul, mtG_inv, Matrix.det_one]
        linear_combination (e * e) * hd + (2 - (mt V g).det - (mt V g⁻¹).det) * he,
      by
        have hd : (mt V g⁻¹).det * (mt V g).det = 1 := by rw [← Matrix.det_mul, mtG_inv', Matrix.det_one]
        linear_combination (e * e) * hd + (2 - (mt V g).det - (mt V g⁻¹).det) * he⟩
  else 1

theorem detAt_val {e : AE D} (he : e * e = e) (V : HSp D) (g : GA D V) :
    ((detAt e V g : (AE D)ˣ) : AE D) = e * (mt V g).det + (1 - e) := by
  rw [detAt, dif_pos he]

theorem isDetAt_detAt {e : AE D} (he : e * e = e) (V : HSp D) (g : GA D V) : IsDetAt e V g (detAt e V g) := by
  unfold IsDetAt
  exact detAt_val he V g

theorem comm_mem_intAf {z : Af D.host.F ⊗[D.host.F] D.host.E} (hz : z ∈ intAE D) :
    (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E) z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E := by
  induction hz using AddSubgroup.closure_induction with
  | mem y hy =>
    obtain ⟨a, ha, x, rfl⟩ := hy
    rw [Algebra.TensorProduct.comm_tmul]
    have hx : (x : D.host.E) ⊗ₜ[D.host.F] a =
        ((x : D.host.E) ⊗ₜ[D.host.F] (1 : Af D.host.F)) * ((1 : D.host.E) ⊗ₜ[D.host.F] a) := by
      rw [Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
    rw [hx]
    exact mul_mem (Subring.subset_closure (Or.inl ⟨⟨(x : D.host.E), ⟨x, rfl⟩⟩, rfl⟩))
      (Subring.subset_closure (Or.inr ⟨⟨a, fun v => ha v⟩, rfl⟩))
  | zero => rw [map_zero]; exact zero_mem _
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx

theorem toEAf_mem_intAf {z : AE D} (hz : finPart D z ∈ intAE D) : toEAf D z ∈ Formalism.L2.Herm.intAf D.host.F D.host.E :=
  comm_mem_intAf hz

theorem comm_mem_intAE {s : D.host.E ⊗[D.host.F] Af D.host.F} (hs : s ∈ Formalism.L2.Herm.intAf D.host.F D.host.E) :
    (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F)) s ∈ intAE D := by
  have hs' : s ∈ Subring.closure (Set.range (fun x : Formalism.UG.intOE D.host.E => (x : D.host.E) ⊗ₜ[D.host.F] (1 : Af D.host.F)) ∪
      Set.range (fun y : Formalism.UG.intAd D.host.F => (1 : D.host.E) ⊗ₜ[D.host.F] (y : Af D.host.F))) := hs
  clear hs
  have hone : (1 : Af D.host.F) ∈ intAf D.host.F := fun v => by rw [map_one]; exact one_mem _
  induction hs' using Subring.closure_induction with
  | mem x hx =>
    rcases hx with ⟨⟨x, y, rfl⟩, rfl⟩ | ⟨⟨a, ha⟩, rfl⟩
    · rw [Algebra.TensorProduct.comm_tmul]
      exact AddSubgroup.subset_closure ⟨1, hone, y, rfl⟩
    · rw [Algebra.TensorProduct.comm_tmul]
      exact AddSubgroup.subset_closure ⟨a, fun v => ha v, 1, by simp⟩
  | zero => rw [map_zero]; exact zero_mem _
  | one =>
    rw [map_one, Algebra.TensorProduct.one_def]
    exact AddSubgroup.subset_closure ⟨1, hone, 1, by simp⟩
  | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
  | neg x _ hx => rw [map_neg]; exact neg_mem hx
  | mul x y _ _ hx hy => rw [map_mul]; exact intAE_mul hx hy

theorem comm_comm (z : Af D.host.F ⊗[D.host.F] D.host.E) :
    (Algebra.TensorProduct.comm D.host.F D.host.E (Af D.host.F))
      ((Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E) z) = z := by
  induction z using TensorProduct.inductionOn with
  | tmul a b => simp
  | add x y hx hy => simp only [map_add (f := _), hx, hy]





theorem toEAf_det {V : HSp D} {g : GA D V} {β : GL (Fin V.rank) (Lev.EAf D)}
    {y : GL (Fin V.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E)} (hy : Formalism.L2.DIV.frGL β y = Lev.finE V g) :
    toEAf D (mt V g).det =
      (((Matrix.GeneralLinearGroup.det y : (Formalism.L2.Herm.intAf D.host.F D.host.E)ˣ) :
        Formalism.L2.Herm.intAf D.host.F D.host.E) : Lev.EAf D) := by
  obtain ⟨d, hd⟩ : ∃ d : (Formalism.L2.Herm.intAf D.host.F D.host.E)ˣ, d = Matrix.GeneralLinearGroup.det y := ⟨_, rfl⟩
  rw [← hd]
  have h1 : toEAf D (mt V g).det =
      ((Lev.finE V g : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)).det := by
    rw [finE_val, RingHom.map_det]; rfl
  rw [h1, ← hy]
  show ((β : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D)) *
    (y : Matrix (Fin V.rank) (Fin V.rank) (Formalism.L2.Herm.intAf D.host.F D.host.E)).map
      (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype *
    ((β⁻¹ : GL (Fin V.rank) (Lev.EAf D)) : Matrix (Fin V.rank) (Fin V.rank) (Lev.EAf D))).det = _
  rw [Matrix.det_mul, Matrix.det_mul, mul_comm, ← mul_assoc, ← Matrix.det_mul, ← Units.val_mul, inv_mul_cancel,
    Units.val_one, Matrix.det_one, one_mul, hd]
  exact (RingHom.map_det (Formalism.L2.Herm.intAf D.host.F D.host.E).subtype _).symm

theorem finPart_det_int {V : HSp D} {g : GA D V} {β : GL (Fin V.rank) (Lev.EAf D)}
    (hg : Lev.finE V g ∈ Formalism.L2.DIV.St β) : finPart D (mt V g).det ∈ intAE D := by
  obtain ⟨y, hy⟩ := hg
  rw [← comm_comm (finPart D (mt V g).det)]
  have h : (Algebra.TensorProduct.comm D.host.F (Af D.host.F) D.host.E) (finPart D (mt V g).det) =
      (((Matrix.GeneralLinearGroup.det y : (Formalism.L2.Herm.intAf D.host.F D.host.E)ˣ) :
        Formalism.L2.Herm.intAf D.host.F D.host.E) : Lev.EAf D) := toEAf_det hy
  rw [h]
  exact comm_mem_intAE (((Matrix.GeneralLinearGroup.det y : (Formalism.L2.Herm.intAf D.host.F D.host.E)ˣ) :
    Formalism.L2.Herm.intAf D.host.F D.host.E)).2

theorem one_mem_intAE : (1 : Af D.host.F ⊗[D.host.F] D.host.E) ∈ intAE D := by
  unfold intAE
  apply AddSubgroup.subset_closure
  exact ⟨1, by first | simp [Formalism.MainNotions.StandardLattice.intAf] | exact Subring.one_mem _, 1, by rw [Algebra.TensorProduct.one_def]; simp⟩

theorem infPart_idemAt {e : AE D} {PP : Formalism.L2.DIV.Pl D.host.E} (hPP : Formalism.L2.NTheta.IsIdemAt e PP) :
    infPart D e = 0 := by
  obtain ⟨⟨h1, h2, v, ε, ⟨α, hεα, -, -⟩, h3⟩, -⟩ := hPP
  have hx : infPart D e * infPart D (cA D e) = 0 := by rw [← map_mul, h2, map_zero]
  have hy : infPart D e + infPart D (cA D e) = 0 := by
    rw [← map_add (f := _), h3, hεα, Algebra.TensorProduct.algebraMap_apply]
    simp only [infPart, pairA, fstA]
    first
      | (erw [Algebra.TensorProduct.map_tmul]; exact TensorProduct.zero_tmul _ _)
  have hz : infPart D e * infPart D e = infPart D e := by rw [← map_mul, h1]
  linear_combination -hz + (infPart D e) * hy - hx



theorem unrOff_detAt {e e₁ : AE D} {PP₁ : Formalism.L2.DIV.Pl D.host.E} (hPP₁ : Formalism.L2.NTheta.IsIdemAt e₁ PP₁)
    (horth : (e + cA D e) * e₁ = 0) (V : HSp D) {g : GA D V} {β : GL (Fin V.rank) (Lev.EAf D)}
    (hg : Lev.finE V g ∈ Formalism.L2.DIV.St β) {χ : (AE D)ˣ →* Circle} (hU : UnrOff e χ) : χ (detAt e₁ V g) = 1 := by
  have he₁ := hPP₁.1.1
  have hinf := infPart_idemAt hPP₁
  have hint := idemAt_int hPP₁
  have hginv : Lev.finE V g⁻¹ ∈ Formalism.L2.DIV.St β := by rw [map_inv]; exact inv_mem hg
  have hx : ((detAt e₁ V g : (AE D)ˣ) : AE D) = e₁ * (mt V g).det + (1 - e₁) := detAt_val he₁ V g
  have hxi : (((detAt e₁ V g)⁻¹ : (AE D)ˣ) : AE D) = e₁ * (mt V g⁻¹).det + (1 - e₁) := by
    apply Units.inv_eq_of_mul_eq_one_right
    have hd : (mt V g).det * (mt V g⁻¹).det = 1 := by rw [← Matrix.det_mul, mtG_inv, Matrix.det_one]
    rw [hx]
    linear_combination (e₁ * e₁) * hd + (2 - (mt V g).det - (mt V g⁻¹).det) * he₁
  refine hU _ ?_ ?_ ?_ ?_
  · rw [hx, map_add (f := _), map_mul, map_sub, map_one, hinf, zero_mul, zero_add, sub_zero]
  · rw [hx, map_add (f := _), map_mul, map_sub, map_one]
    exact add_mem (intAE_mul hint (finPart_det_int hg)) (sub_mem one_mem_intAE hint)
  · rw [hxi, map_add (f := _), map_mul, map_sub, map_one]
    exact add_mem (intAE_mul hint (finPart_det_int hginv)) (sub_mem one_mem_intAE hint)
  · rw [hx]
    linear_combination ((mt V g).det - 1) * horth

end Det

section DetInt

variable {D : D7}

theorem finPart_detAt_int {e : AE D} (he : e * e = e) (hint : finPart D e ∈ intAE D) (V : HSp D) {g : GA D V}
    {β : GL (Fin V.rank) (Lev.EAf D)} (hg : Lev.finE V g ∈ Formalism.L2.DIV.St β) :
    finPart D ((detAt e V g : (AE D)ˣ) : AE D) ∈ intAE D := by
  rw [detAt_val he, map_add (f := _), map_mul, map_sub, map_one]
  exact add_mem (intAE_mul hint (finPart_det_int hg)) (sub_mem one_mem_intAE hint)

theorem finPart_detAt_inv_int {e : AE D} (he : e * e = e) (hint : finPart D e ∈ intAE D) (V : HSp D) {g : GA D V}
    {β : GL (Fin V.rank) (Lev.EAf D)} (hg : Lev.finE V g ∈ Formalism.L2.DIV.St β) :
    finPart D (((detAt e V g)⁻¹ : (AE D)ˣ) : AE D) ∈ intAE D := by
  have hginv : Lev.finE V g⁻¹ ∈ Formalism.L2.DIV.St β := by rw [map_inv]; exact inv_mem hg
  have hx : ((detAt e V g : (AE D)ˣ) : AE D) = e * (mt V g).det + (1 - e) := detAt_val he V g
  have hxi : (((detAt e V g)⁻¹ : (AE D)ˣ) : AE D) = e * (mt V g⁻¹).det + (1 - e) := by
    apply Units.inv_eq_of_mul_eq_one_right
    have hd : (mt V g).det * (mt V g⁻¹).det = 1 := by rw [← Matrix.det_mul, mtG_inv, Matrix.det_one]
    rw [hx]
    linear_combination (e * e) * hd + (2 - (mt V g).det - (mt V g⁻¹).det) * he
  rw [hxi, map_add (f := _), map_mul, map_sub, map_one]
  exact add_mem (intAE_mul hint (finPart_det_int hginv)) (sub_mem one_mem_intAE hint)

end DetInt

section Conj

variable {D : D7}

theorem isIdemAt_conj {e : AE D} {PP : Formalism.L2.DIV.Pl D.host.E} (h : Formalism.L2.NTheta.IsIdemAt e PP) :
    Formalism.L2.NTheta.IsIdemAt (cA D e) (Formalism.L2.DIV.conjPl PP) := by
  obtain ⟨⟨h1, h2, v, ε, hv, hs⟩, hcl⟩ := h
  refine ⟨⟨isIdem_cA h1, ?_, v, ε, hv, ?_⟩, ?_⟩
  · rw [cA_cA, mul_comm]; exact h2
  · rw [cA_cA, add_comm]; exact hs
  · intro x hx0
    have hs0 : Formalism.L2.DIV.starO x ≠ 0 := by
      intro h0; apply hx0
      rw [← Formalism.L2.DIV.starO_starO x, h0]
      apply RingOfIntegers.ext
      rw [Formalism.L2.DIV.starO_coe]
      simp
    have hmem : x ∈ (Formalism.L2.DIV.conjPl PP).asIdeal ↔ Formalism.L2.DIV.starO x ∈ PP.asIdeal := Iff.rfl
    rw [hmem, hcl _ hs0]
    have hf : finPart D (cA D e * incA D ((x : D.host.E)⁻¹)) =
        cF D (finPart D (e * incA D ((Formalism.L2.DIV.starO x : D.host.E)⁻¹))) := by
      rw [← finPart_cA, cA_mul_incA, Formalism.L2.DIV.starO_coe, star_inv₀, star_star]
    rw [hf]
    constructor
    · intro hn hm; exact hn (by have h3 := cF_int hm; rwa [cF_cF] at h3)
    · intro hn hm; exact hn (cF_int hm)


open Classical in
theorem isIdemSum_conj {e : AE D} {P : Finset (Formalism.L2.DIV.Pl D.host.E)} (h : IsIdemSum e P) :
    IsIdemSum (cA D e) (P.image Formalism.L2.DIV.conjPl) := by
  classical
  obtain ⟨⟨es, hes, he⟩, hc⟩ := h
  refine ⟨⟨fun Q => cA D (es (Formalism.L2.DIV.conjPl Q)), ?_, ?_⟩, ?_⟩
  · intro Q hQ
    obtain ⟨PP, hPP, rfl⟩ := Finset.mem_image.1 hQ
    show Formalism.L2.NTheta.IsIdemAt (cA D (es (Formalism.L2.DIV.conjPl (Formalism.L2.DIV.conjPl PP)))) (Formalism.L2.DIV.conjPl PP)
    rw [Formalism.L2.DIV.conjPl_conjPl]
    exact isIdemAt_conj (hes PP hPP)
  · rw [Finset.sum_image (fun a _ b _ (hab : Formalism.L2.DIV.conjPl a = Formalism.L2.DIV.conjPl b) => by
      rw [← Formalism.L2.DIV.conjPl_conjPl a, hab, Formalism.L2.DIV.conjPl_conjPl])]
    simp only [Formalism.L2.DIV.conjPl_conjPl]

    rw [he, map_sum]
  · rw [cA_cA, mul_comm]; exact hc



end Conj

end Formalism.IndefR.Fin.LevelGroupLemmas

end
