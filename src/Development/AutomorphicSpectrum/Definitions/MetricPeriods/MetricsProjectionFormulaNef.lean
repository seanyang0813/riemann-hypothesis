module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.InterRes
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.TargetSt
public import Development.AutomorphicSpectrum.Definitions.DivisibilityTowers.Birational
public import Development.AutomorphicSpectrum.Definitions.MetricPeriods.IsTwiceDifferentiableAt
public import ReciprocityTheory.AnalyticForms.PotentialTheory.IsPotentialPullbackStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.MixedFieldContraction.ContractMixedFieldStatement
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArithmeticIntersection.RationalSections.ThmISt
public import GroundTheory.HeightsAndTheta.Heights.HilbertSamuel.GenericComplexPoint

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.PB

open ReciprocityTheory.AnForm ReciprocityTheory.AnForm.M ReciprocityTheory.AnForm.P ReciprocityTheory.ChartRestriction.G.Geo MvPolynomial Filter Topology

variable {K : Type} [Fintype K] {ι : K → Type} [∀ k, Fintype (ι k)]

def combLine {σ : Type} [Fintype σ] (A : σ → HermLine ι) (n : σ → ℤ) : HermLine ι where
  a := fun k => ∑ x, n x * (A x).a k
  h z := ∏ x, (A x).h z ^ n x
  pos z hz := Finset.prod_pos fun x _ => zpow_pos ((A x).pos z hz) _
  smul c z hc := by
    have h0 : ∀ k, ‖c k‖ ≠ 0 := fun k => norm_ne_zero_iff.mpr (hc k)
    have h1 : ∀ k, ‖c k‖ ^ (∑ x, n x * (A x).a k) = ∏ x, (‖c k‖ ^ (A x).a k) ^ n x := by
      intro k
      classical
      induction (Finset.univ : Finset σ) using Finset.induction_on with
      | empty => simp
      | insert x s hx ih =>
        rw [Finset.sum_insert hx, Finset.prod_insert hx, zpow_add₀ (h0 k), ih, ← zpow_mul, mul_comm (n x)]
    simp only [fun x => (A x).smul c z hc, mul_zpow, Finset.prod_mul_distrib, h1]
    rw [Finset.prod_comm]
    simp only [Finset.prod_zpow]

theorem combLine_eq_top {σ : Type} [Fintype σ] (A : σ → HermLine ι) (n : σ → ℤ) :
    combLine A n = GlobalTheory.CompanionTheory.Ar.Top.combLine A n := by
  unfold combLine GlobalTheory.CompanionTheory.Ar.Top.combLine
  congr 1
  funext k
  simp [Finset.sum_apply]

theorem combLine_a {σ : Type} [Fintype σ] (A : σ → HermLine ι) (n : σ → ℤ) (k : K) :
    (combLine A n).a k = ∑ x, n x * (A x).a k := rfl

theorem combLine_h {σ : Type} [Fintype σ] (A : σ → HermLine ι) (n : σ → ℤ) (z : (Σ k, ι k) → ℂ) :
    (combLine A n).h z = ∏ x, (A x).h z ^ n x := rfl

theorem combLine_div (A B : HermLine ι) :
    (combLine ![A, B] ![1, -1]).a = A.a - B.a ∧ ∀ z, (combLine ![A, B] ![1, -1]).h z = A.h z / B.h z :=
  ⟨funext fun k => by simp [combLine_a, sub_eq_add_neg], fun z => by simp [combLine_h, div_eq_mul_inv]⟩

namespace AnSys

variable {e : ℕ} {σ : Type} (S : AnSys e σ)

end AnSys

theorem formPoly_const_mul {σ : Type} [Fintype σ] (n : ℕ) (c : ℝ) (a : (Fin n → σ) → ℝ) :
    formPoly n (fun w => c * a w) = c • formPoly n a := by
  simp only [formPoly, Finset.smul_sum, map_mul, smul_eq_C_mul, mul_assoc]

structure Realis {D : ℕ} {σ : Type} (S : AnSys D σ) (P : Ideal (MRing ι)) where
  arith : IsArithVar P (D + 1)

  J : Ideal (MRing ι)

  R : AnLogRes P J D

  π : R.X → S.X
  holo : HoloMap R.A S.A π

  deg : ℕ
  deg_pos : 0 < deg

  br : Set S.X
  degree : IsDegreeOff S.A R.A π deg br

  ref : σ → HermLine ι
  ref_smooth : ∀ a, IsSmoothHerm (ref a)
  ref_pot : ∀ a, SamePot R.A Set.univ (potOf R (ref a)) ((S.th a).pullback π holo.1)

  line : σ → ℝ → HermLine ι
  line_deg : ∀ a t, (line a t).a = (ref a).a
  line_smooth : ∀ a t, 0 < t → t ≤ S.t₀ → IsSmoothHerm (line a t)
  line_eq : ∀ a t, 0 < t → t ≤ S.t₀ → ∀ x,
    Real.log ((line a t).h (R.lift x x)) = Real.log ((ref a).h (R.lift x x)) + S.phT a t (π x)

namespace Realis

variable {D : ℕ} {σ : Type} {S : AnSys D σ} {P : Ideal (MRing ι)} (Re : Realis S P) (II : IntersectionSystem)

def num (t : ℝ) (w : Fin (D + 1) → σ) : ℝ :=
  II K ι P (D + 1) (fun j => Re.line (w j) t) / Re.deg

def limNum (w : Fin (D + 1) → σ) : ℝ := limUnder (𝓝[>] 0) fun t => Re.num II t w

def FT [Fintype σ] (t : ℝ) : MvPolynomial σ ℝ := formPoly (D + 1) (Re.num II t)

def PB [Fintype σ] : MvPolynomial σ ℝ := formPoly (D + 1) (Re.limNum II)


include Re in
theorem nonempty_base : Nonempty S.X := by
  obtain ⟨z, hz, hJ⟩ :=
    GroundTheory.Heights₂.Heights.HilbertSamuel.exists_mcPts_not_mem_mcPts Re.arith Re.R.nondeg
  obtain ⟨x, -⟩ := Re.R.surj z hz hJ
  exact ⟨Re.π x⟩


def comap {σ' : Type} (f : σ' → σ) : Realis (S.comap f) P where
  arith := Re.arith
  J := Re.J
  R := Re.R
  π := Re.π
  holo := Re.holo
  deg := Re.deg
  deg_pos := Re.deg_pos
  br := Re.br
  degree := Re.degree
  ref a := Re.ref (f a)
  ref_smooth a := Re.ref_smooth (f a)
  ref_pot a := Re.ref_pot (f a)
  line a := Re.line (f a)
  line_deg a := Re.line_deg (f a)
  line_smooth a := Re.line_smooth (f a)
  line_eq a := Re.line_eq (f a)

end Realis

section Weights

variable {D N : ℕ} {Ψ : Type} [Fintype Ψ] {S : AnSys D (Option (Ψ × Fin N))} {P : Ideal (MRing ι)}
  (Re : Realis S P) (II : IntersectionSystem)

def Realis.PBs : MvPolynomial (Option (Ψ × Fin N)) ℝ := toWtS (Re.PB II)

def Realis.PBwt : MvPolynomial (Ψ × Fin N) ℝ := toWt ((Re.comap some).PB II)

end Weights

def NefAt (P : Ideal (MRing ι)) (p : ℕ) (a : K → ℤ) : Prop :=
  ∀ W : Ideal (MRing ι), IsMultiProjPrime W → P ≤ W → charOf W = p →
    ringKrullDim (MRing ι ⧸ W) = ((1 + Fintype.card K : ℕ) : WithBot ℕ∞) → 0 ≤ geoNum 1 W fun _ => a

theorem prime_charOf_of_ne_zero {W : Ideal (MRing ι)} (hW : W.IsPrime) (h : charOf W ≠ 0) : (charOf W).Prime := by
  have hI : (W.comap (C : ℤ →+* MRing ι)).IsPrime := Ideal.comap_isPrime _ _
  have h0 : Submodule.IsPrincipal.generator (W.comap (C : ℤ →+* MRing ι)) ≠ 0 := fun e => h (by simp [charOf, e])
  rw [← Ideal.span_singleton_generator (W.comap (C : ℤ →+* MRing ι)), Ideal.span_singleton_prime h0] at hI
  exact Int.prime_iff_natAbs_prime.1 hI

def VertClose (P : Ideal (MRing ι)) (T : Finset ℕ) (α : ℕ → ℝ) (A B : HermLine ι) : Prop :=
  ∃ (f g : MRing ι) (df dg : K → ℕ), IsMultiHomog f df ∧ IsMultiHomog g dg ∧ f ∉ P ∧ g ∉ P ∧
    (∀ k, (df k : ℤ) - dg k = A.a k - B.a k) ∧
    (∀ z ∈ mcPts P, ‖eval z (map (Int.castRingHom ℂ) f)‖ * B.h z = ‖eval z (map (Int.castRingHom ℂ) g)‖ * A.h z) ∧
    (∀ W, charOf W ∉ T → divCycle P f W = divCycle P g W) ∧
    ∀ W, charOf W ∈ T →
      |(divCycle P f W : ℝ) - divCycle P g W| ≤ α (charOf W) * divCycle P (C (charOf W : ℤ)) W

theorem VertClose.symm {P : Ideal (MRing ι)} {T : Finset ℕ} {α : ℕ → ℝ} {A B : HermLine ι}
    (h : VertClose P T α A B) : VertClose P T α B A := by
  obtain ⟨f, g, df, dg, hf, hg, hfP, hgP, hd, hn, h1, h2⟩ := h
  refine ⟨g, f, dg, df, hg, hf, hgP, hfP, fun k => by linarith [hd k], fun z hz => (hn z hz).symm,
    fun W hW => (h1 W hW).symm, fun W hW => ?_⟩
  rw [abs_sub_comm]
  exact h2 W hW

def Inputs : Prop :=
  (ConvergenceStatement ∧ ConvergenceSignedStatement ∧ ConvergenceRateStatement ∧ UnifIntStatement ∧
    PullbackStatement ∧ RegGlobalStatement) ∧
  (ResExistsStatement ∧ ReciprocityTheory.ChartRestriction.G.Geo.DegreeStatement ∧ ArithmeticIntersectionNonneg) ∧
  (ReciprocityTheory.ChartRestriction.G.AI.I2.RatRStatement ∧ ReciprocityTheory.ChartRestriction.G.AI.I2.MetricLocalStatement) ∧
  (ReciprocityTheory.ChartRestriction.G.AI.I4.PFStatement ∧ ReciprocityTheory.ChartRestriction.G.AI.I4.LineFibreStatement ∧
    ReciprocityTheory.ChartRestriction.G.AI.I4.FibreDimStatement) ∧
  (ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefIntersectionNonneg ∧ ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement ∧
    ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.SiuZStatement)

namespace Inputs

theorem convergenceSigned (h : Inputs) : ConvergenceSignedStatement := h.1.2.1

theorem convergenceRate (h : Inputs) : ConvergenceRateStatement := h.1.2.2.1

theorem unifInt (h : Inputs) : UnifIntStatement := h.1.2.2.2.1

theorem pullback (h : Inputs) : PullbackStatement := h.1.2.2.2.2.1

theorem regGlobal (h : Inputs) : RegGlobalStatement := h.1.2.2.2.2.2

theorem resExists (h : Inputs) : ResExistsStatement := h.2.1.1

theorem degree (h : Inputs) : ReciprocityTheory.ChartRestriction.G.Geo.DegreeStatement := h.2.1.2.1

theorem ratR (h : Inputs) : ReciprocityTheory.ChartRestriction.G.AI.I2.RatRStatement := h.2.2.1.1

theorem metricLocal (h : Inputs) : ReciprocityTheory.ChartRestriction.G.AI.I2.MetricLocalStatement := h.2.2.1.2

theorem projFormula (h : Inputs) : ReciprocityTheory.ChartRestriction.G.AI.I4.PFStatement := h.2.2.2.1.1

theorem fibreDim (h : Inputs) : ReciprocityTheory.ChartRestriction.G.AI.I4.FibreDimStatement := h.2.2.2.1.2.2

theorem kleimanNef (h : Inputs) : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefIntersectionNonneg := h.2.2.2.2.1

theorem kleimanNefF (h : Inputs) : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.KleimanNefFStatement := h.2.2.2.2.2.1

theorem siuZ (h : Inputs) : ReciprocityTheory.ChartRestriction.G.ArakelovGeometry.KH.SiuZStatement := h.2.2.2.2.2.2

end Inputs

end GlobalTheory.CompanionTheory.Ar.PB
