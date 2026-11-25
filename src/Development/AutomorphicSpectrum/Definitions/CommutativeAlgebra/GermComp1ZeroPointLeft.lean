module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CocycleRightZeroThd
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.IsSplitGaussChars
public import Mathlib.RingTheory.Valuation.ValuationSubring
import Mathlib.Tactic.Linter.Style
import Std.Tactic.BVDecide.Normalize.Prop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.ConnectionKillsSeries
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.TaylorDiscriminants.WickVanishing.GaugeBilinearTermEqNegDoubleSum

@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Conj

open MvPowerSeries ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ GlobalTheory.CompanionTheory.Ar.Crv

variable {R : Type} [CommRing R] {d : ℕ} {O : Type} [CommRing O] [StarRing O]

def lin (φ : Pt R 1 d) (m : ℕ) : Matrix (Fin d) (Fin d) R :=
  fun i j => coeff (Finsupp.single ((0 : Fin 1), j) m) (φ i)

def bil (f : PS R 2 d) (m n : ℕ) : Matrix (Fin d) (Fin d) R :=
  fun i j => coeff (Finsupp.single ((0 : Fin 2), i) m + Finsupp.single ((1 : Fin 2), j) n) f

def AxOne (f : PS R 2 d) : Prop := ev (n := 1) ![0, pt R d 0] f = 1 ∧ ev (n := 1) ![pt R d 0, 0] f = 1

def ptPow (R : Type) [CommRing R] {n : ℕ} (d p : ℕ) (j : Fin n) : Pt R n d := fun i => X (j, i) ^ p

def rho (B : FB R d O) (a : O) : Matrix (Fin d) (Fin d) R := lin (B.A.act a) 1

def pow1 (B : FB R d O) (m : ℕ) : PS R 2 d :=
  ∏ n ∈ Finset.range m, ev (n := 2) ![comp1 (B.A.act (n : O)) (pt R d 0), pt R d 0, pt R d 1] B.ph1

def pow2 (B : FB R d O) (m : ℕ) : PS R 2 d :=
  ∏ n ∈ Finset.range m, ev (n := 2) ![pt R d 0, comp1 (B.A.act (n : O)) (pt R d 1), pt R d 1] B.ph2

def hw (B : FB R d O) (p : ℕ) : Matrix (Fin d) (Fin d) R := lin (B.A.act (p : O)) p

def am (B : FB R d O) (p : ℕ) : Matrix (Fin d) (Fin d) R := bil (pow1 B p) p 1

def rhoH (B : FB R d O) (a : O) : Module.End R ((Fin d → R) × (Fin d → R)) :=
  LinearMap.prod (Matrix.toLin' (rho B a) ∘ₗ LinearMap.fst R _ _)
    (Matrix.toLin' (rho B (star a)).transpose ∘ₗ LinearMap.snd R _ _ -
      Matrix.toLin' (bil (B.ad a) 1 1).transpose ∘ₗ LinearMap.fst R _ _)

def pairH (B : FB R d O) (y y' : (Fin d → R) × (Fin d → R)) : R :=
  y'.2 ⬝ᵥ y.1 - y.2 ⬝ᵥ y'.1 + y.1 ⬝ᵥ (bil B.sy 1 1).mulVec y'.1

def alpha (B : FB R d O) (p : ℕ) : (Fin d → R) →ₗ[R] (Fin d → R) × (Fin d → R) :=
  LinearMap.prod (Matrix.toLin' (hw B p)) (Matrix.toLin' (am B p).transpose)

def beta (B : FB R d O) (p : ℕ) : ((Fin d → R) × (Fin d → R)) →ₗ[R] (Fin d → R) :=
  Matrix.toLin' (hw B p).transpose ∘ₗ LinearMap.snd R _ _ -
    Matrix.toLin' (am B p - (hw B p).transpose * bil B.sy 1 1) ∘ₗ LinearMap.fst R _ _

structure IsMapOf {R₂ : Type} [CommRing R₂] (f : R →+* R₂) (B : FB R d O) (B₂ : FB R₂ d O) : Prop where

  F : ∀ i, B₂.G.F i = MvPowerSeries.map f (B.G.F i)

  act : ∀ a i, B₂.A.act a i = MvPowerSeries.map f (B.A.act a i)

  ph1 : B₂.ph1 = MvPowerSeries.map f B.ph1

  ph2 : B₂.ph2 = MvPowerSeries.map f B.ph2

  sy : B₂.sy = MvPowerSeries.map f B.sy

  ad : ∀ a, B₂.ad a = MvPowerSeries.map f (B.ad a)

structure IsIso (B B₂ : FB R d O) (φ ψ : Pt R 1 d) (lam : PS R 2 d) : Prop where

  c₁ : ∀ i, constantCoeff (φ i) = 0

  c₂ : ∀ i, constantCoeff (ψ i) = 0

  inv₁ : comp1 φ ψ = pt R (n := 1) d 0

  inv₂ : comp1 ψ φ = pt R (n := 1) d 0

  ax : AxOne lam

  law : comp1 φ (B₂.G.add (pt R (n := 2) d 0) (pt R d 1)) = B.G.add (comp1 φ (pt R d 0)) (comp1 φ (pt R d 1))

  act : ∀ a, comp1 φ (B₂.A.act a) = comp1 (B.A.act a) φ

  ph1 : B₂.ph1 * ev (n := 3) ![B₂.G.add (pt R d 0) (pt R d 1), pt R d 2] lam =
    ev (n := 3) ![pt R d 0, pt R d 2] lam * ev (n := 3) ![pt R d 1, pt R d 2] lam *
      ev (n := 3) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1), comp1 φ (pt R d 2)] B.ph1

  ph2 : B₂.ph2 * ev (n := 3) ![pt R d 0, B₂.G.add (pt R d 1) (pt R d 2)] lam =
    ev (n := 3) ![pt R d 0, pt R d 1] lam * ev (n := 3) ![pt R d 0, pt R d 2] lam *
      ev (n := 3) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1), comp1 φ (pt R d 2)] B.ph2

  sy : B₂.sy * lam = ev (n := 2) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1)] B.sy *
    ev (n := 2) ![pt R d 1, pt R d 0] lam

  ad : ∀ a, B₂.ad a * ev (n := 2) ![pt R d 0, comp1 (B₂.A.act (star a)) (pt R d 1)] lam =
    ev (n := 2) ![comp1 (B₂.A.act a) (pt R d 0), pt R d 1] lam *
      ev (n := 2) ![comp1 φ (pt R d 0), comp1 φ (pt R d 1)] (B.ad a)

def transH (φ ψ : Pt R 1 d) (lam : PS R 2 d) : ((Fin d → R) × (Fin d → R)) →ₗ[R] (Fin d → R) × (Fin d → R) :=
  LinearMap.prod (Matrix.toLin' (lin φ 1) ∘ₗ LinearMap.fst R _ _)
    (Matrix.toLin' (lin ψ 1).transpose ∘ₗ
      (LinearMap.snd R _ _ + Matrix.toLin' (bil lam 1 1).transpose ∘ₗ LinearMap.fst R _ _))

def ConjInj (B : FB R d O) (p : ℕ) : Prop := Function.Injective (alpha B p)

structure Family {K : Type} [Field K] (C : ACurve K) (p d : ℕ) (O : Type) [CommRing O] [StarRing O] where

  B : FB K d O

  Bi : ∀ i : C.I, FB (C.v i).valuationSubring d O

  BK : C.I → FB K d O

  Bk : ∀ i : C.I, FB (IsLocalRing.ResidueField (C.v i).valuationSubring) d O

  mapK : ∀ i, IsMapOf (C.v i).valuationSubring.subtype (Bi i) (BK i)

  mapk : ∀ i, IsMapOf (IsLocalRing.residue _) (Bi i) (Bk i)

  inj : ∀ i, ConjInj (Bk i) p

  φ : C.I → Pt K 1 d

  ψ : C.I → Pt K 1 d

  lam : C.I → PS K 2 d

  iso : ∀ i, IsIso B (BK i) (φ i) (ψ i) (lam i)

  ae : {i | ¬ ∀ a b, C.v i (lin (φ i) 1 a b) ≤ 1 ∧ C.v i (lin (ψ i) 1 a b) ≤ 1 ∧
    C.v i (bil (lam i) 1 1 a b) ≤ 1}.Finite

theorem rhoH_apply (B : FB R d O) (a : O) (y : (Fin d → R) × (Fin d → R)) :
    rhoH B a y = ((rho B a).mulVec y.1,
      (rho B (star a)).transpose.mulVec y.2 - (bil (B.ad a) 1 1).transpose.mulVec y.1) := by
  simp [rhoH]

theorem alpha_apply (B : FB R d O) (p : ℕ) (u : Fin d → R) :
    alpha B p u = ((hw B p).mulVec u, (am B p).transpose.mulVec u) := by
  simp [alpha]

theorem beta_apply (B : FB R d O) (p : ℕ) (y : (Fin d → R) × (Fin d → R)) :
    beta B p y = (hw B p).transpose.mulVec y.2 -
      (am B p - (hw B p).transpose * bil B.sy 1 1).mulVec y.1 := by
  simp [beta, Matrix.toLin'_apply, Matrix.sub_mulVec]

theorem transH_apply (φ ψ : Pt R 1 d) (lam : PS R 2 d) (y : (Fin d → R) × (Fin d → R)) :
    transH φ ψ lam y = ((lin φ 1).mulVec y.1,
      (lin ψ 1).transpose.mulVec (y.2 + (bil lam 1 1).transpose.mulVec y.1)) := by
  simp only [transH, LinearMap.prod_apply, Function.prod_apply, LinearMap.add_apply, LinearMap.comp_apply,
    Matrix.toLin'_apply, LinearMap.fst_apply, LinearMap.snd_apply]

theorem rhoH_inr (B : FB R d O) (a : O) (φ : Fin d → R) :
    rhoH B a (0, φ) = (0, (rho B (star a)).transpose.mulVec φ) := by
  simp [rhoH_apply]

theorem rhoH_fst (B : FB R d O) (a : O) (y : (Fin d → R) × (Fin d → R)) :
    (rhoH B a y).1 = (rho B a).mulVec y.1 := by
  rw [rhoH_apply]

theorem dotProduct_beta (B : FB R d O) (p : ℕ) (u : Fin d → R) (y : (Fin d → R) × (Fin d → R)) :
    u ⬝ᵥ beta B p y = pairH B (alpha B p u) y := by
  rw [beta_apply, alpha_apply]
  simp only [pairH, Matrix.sub_mulVec, dotProduct_sub, Matrix.dotProduct_mulVec,
    ← Matrix.mulVec_mulVec, Matrix.mulVec_transpose]
  have key : u ⬝ᵥ Matrix.vecMul ((bil B.sy 1 1).mulVec y.1) (hw B p) =
      Matrix.vecMul ((hw B p).mulVec u) (bil B.sy 1 1) ⬝ᵥ y.1 := by
    rw [dotProduct_comm, ← Matrix.dotProduct_mulVec, dotProduct_comm, Matrix.dotProduct_mulVec]
  rw [key, dotProduct_comm u]
  ring

theorem beta_alpha_apply (B : FB R d O) (p : ℕ) (u : Fin d → R) :
    beta B p (alpha B p u) = ((hw B p).transpose * (am B p).transpose - am B p * hw B p +
      (hw B p).transpose * bil B.sy 1 1 * hw B p).mulVec u := by
  rw [alpha_apply, beta_apply]
  simp only [Matrix.sub_mul, Matrix.add_mulVec, Matrix.sub_mulVec, Matrix.mulVec_mulVec, Matrix.mul_assoc]
  abel

theorem bil_one_eq_zero {m : ℕ} (hm : m ≠ 0) (n : ℕ) : bil (1 : PS R 2 d) m n = 0 := by
  ext i j
  simp only [bil, MvPowerSeries.coeff_one, Matrix.zero_apply]
  apply ite_eq_right
  intro h
  have h0 := congrArg (fun f => f ((0 : Fin 2), i)) h
  simp at h0
  exact hm h0

theorem lin_pt_eq_one : lin (pt R (n := 1) d 0) 1 = 1 := by
  ext i j
  simp [lin, pt, MvPowerSeries.coeff_X, Matrix.one_apply, Finsupp.single_eq_single_iff]
  exact if_congr eq_comm rfl rfl

theorem IsMapOf.trans {R₂ R₃ : Type} [CommRing R₂] [CommRing R₃] {f : R →+* R₂} {g : R₂ →+* R₃} {B : FB R d O}
    {B₂ : FB R₂ d O} {B₃ : FB R₃ d O} (h : IsMapOf f B B₂) (h' : IsMapOf g B₂ B₃) : IsMapOf (g.comp f) B B₃ := by
  constructor
  · intro i
    simp only [h'.F, h.F, MvPowerSeries.map_comp, RingHom.comp_apply]
  · intro a i
    simp only [h'.act, h.act, MvPowerSeries.map_comp, RingHom.comp_apply]
  · simp only [h'.ph1, h.ph1, MvPowerSeries.map_comp, RingHom.comp_apply]
  · simp only [h'.ph2, h.ph2, MvPowerSeries.map_comp, RingHom.comp_apply]
  · simp only [h'.sy, h.sy, MvPowerSeries.map_comp, RingHom.comp_apply]
  · intro a
    simp only [h'.ad, h.ad, MvPowerSeries.map_comp, RingHom.comp_apply]

theorem ev_pt_self {n : ℕ} (a : Fin n → Pt R n d) (ha : ∀ j, a j = pt R d j) (f : PS R n d) : ev a f = f := by
  have hx : (fun q : Fin n × Fin d => a q.1 q.2) = MvPowerSeries.X := by
    funext q
    rw [ha]
    rfl
  show MvPowerSeries.subst (fun q : Fin n × Fin d => a q.1 q.2) f = f
  rw [hx, MvPowerSeries.subst_self]
  rfl

theorem germ_comp1_zero_point_left {n : ℕ} (a : Pt R n d) (ha : ∀ i, constantCoeff (a i) = 0) : comp1 (pt R d 0) a = a := by
  funext i
  have hs : MvPowerSeries.HasSubst (fun q : Fin 1 × Fin d => (![a] : Fin 1 → Pt R n d) q.1 q.2) :=
    ⟨fun q => by
      rcases q with ⟨j, k⟩
      fin_cases j
      simp [ha], fun _ => Set.toFinite _⟩
  show MvPowerSeries.subst (fun q : Fin 1 × Fin d => (![a] : Fin 1 → Pt R n d) q.1 q.2) (MvPowerSeries.X ((0 : Fin 1), i)) = a i
  rw [MvPowerSeries.subst_X hs]
  rfl

section Gauge

open ReciprocityTheory.ChartRestriction.G.TB ReciprocityTheory.ChartRestriction.G.TB.WickVanishing

variable (k : Type) [CommRing k] [Algebra ℚ k] [Algebra R k]

end Gauge

end GlobalTheory.CompanionTheory.Ar.Conj
