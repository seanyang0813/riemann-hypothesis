module

public import Formalism.SharpRestriction.ParConsts

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.flipTwoThree

open Formalism.BasicNotions NumberField

def lamCol (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) (i : ℕ) : ℚ :=
  if h : i < D.R.k then hcToWeightQ (D.hcW u τ).u ⟨i, h⟩ else 0

def wJ (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) (j : ℕ) : ℚ :=
  if h : j < D.R.m then wG D.R ((D.hcW u τ).e ⟨j, h⟩) (j + 1) else 0

def lamLiftN (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) (i : ℕ) : ℚ :=
  if i < D.R.k then lamCol D u τ i else - wJ D u τ ((i - D.R.k) / (D.R.t + 1))

def plc (D : D7) (τ : D.what₂.Tau) : D.R.GG := ((D.eTau τ : D.R.Psi) : _)

def IsTop (D : D7) (τ : D.what₂.Tau) : Prop := plc D τ ∈ D.host.topPlaces

def IsThick (D : D7) (τ : D.what₂.Tau) : Prop := plc D τ ∈ D.host.thickPlaces

def Nums (D : D7) (T g1 g2 : ℕ) (Cn x b L b' Sc eta : ℝ) : Prop :=
  0 < b ∧ Real.log (x * b * D.host.v) ≤ L ∧
  Real.log T ≤ Cn * D.R.m * L ∧ Real.log g1 ≤ Cn * L ∧ Real.log g2 ≤ Cn * L ∧
  b' ≤ x * b / x ∧ 1 ≤ Sc ∧ 1 ≤ eta ∧ Sc + eta + D.R.m * D.R.t ≤ b' / x ∧
  (D.R.N D.R.m : ℝ) ^ 2 * (L + Real.log T) ≤ D.R.N D.R.m * b' ∧
  (D.R.N D.R.m : ℝ) * L + Real.log T ≤ b' ∧
  (D.R.m : ℝ) ^ 2 * (D.R.N D.R.m : ℝ) ^ 2 * (L + Real.log T + Real.log ((g1 : ℝ) * g2)) ≤ D.R.N D.R.m * b' * L ∧
  |dlogL D 1| ≤ Cn * L ∧ 2 ≤ x ∧ 1 ≤ D.host.v ∧
  (1 + 2 * (2 * Cn + 4)) * (D.R.m : ℝ) ^ 3 * D.R.N D.R.m ≤ b'

def Wts (D : D7) (u : D.what₂.Word) (Cn x b b' Sc eta : ℝ) : Prop :=
  ∀ τ : D.what₂.Tau,
    (∀ i < D.R.k, ∃ z : ℤ, lamCol D u τ i = z) ∧
    (IsTop D τ → x * b ≤ (lamCol D u τ 0 : ℝ) ∧ (lamCol D u τ 0 : ℝ) ≤ 2 * (x * b) ∧
      b' ≤ -(lamCol D u τ (D.R.k - 1) : ℝ) ∧ -(lamCol D u τ (D.R.k - 1) : ℝ) < 2 * b' ∧
      ∀ i, 0 < i → i < D.R.k - 1 → 0 ≤ (lamCol D u τ i : ℝ) ∧ (lamCol D u τ i : ℝ) ≤ Sc) ∧
    (¬ IsTop D τ → ∀ i < D.R.k, 0 ≤ (lamCol D u τ i : ℝ) ∧ (lamCol D u τ i : ℝ) ≤ Cn * Sc) ∧
    (∀ j, j + 1 < D.R.m → wJ D u τ j ≤ wJ D u τ (j + 1)) ∧
    (¬ IsThick D τ → ∀ j < D.R.m, (wJ D u τ j : ℝ) ≤ 2 * b') ∧
    (IsThick D τ → ∀ j < D.R.m, b - D.R.N D.R.m ≤ (wJ D u τ j : ℝ) ∧ (wJ D u τ j : ℝ) ≤ b + eta + 1) ∧
    - lamCol D u τ (D.R.k - 1) ≤ wJ D u τ 0 ∧
    ((wJ D u τ (D.R.m - 1) - wJ D u τ 0 : ℚ) : ℝ) ≤ eta

def Tu (D : D7) (u : D.what₂.Word) : ℕ := (D.mem u).A.T

def dualSub {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) (L : Submodule (𝓞 E) S.V) :
    AddSubgroup S.V where
  carrier := {x | ∀ y ∈ L, S.hT y x ∈ (algebraMap (𝓞 E) E).range}
  zero_mem' := fun y _ => by rw [map_zero]; exact zero_mem _
  add_mem' := fun {a b} ha hb y hy => by
    rw [(S.hT y).map_add]
    exact add_mem (ha y hy) (hb y hy)
  neg_mem' := fun {a} ha y hy => by rw [map_neg]; exact neg_mem (ha y hy)

def LatT {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) (q : ℕ) (L : Submodule (𝓞 E) S.V) : Prop :=
  (∀ x ∈ L, x ∈ dualSub S L) ∧ L.toAddSubgroup.relIndex (dualSub S L) = q

def SameCls {E : Type} [Field E] [NumberField E] [StarRing E] (S : HSpace E) (M : ℕ) {n : ℕ}
    (L L' : Submodule (𝓞 E) S.V) (e e' : Fin n → S.V) : Prop :=
  ∃ γ : S.V ≃ₗ[E] S.V, (∀ x y, S.hT (γ x) (γ y) = S.hT x y) ∧ (∀ x, x ∈ L ↔ γ x ∈ L') ∧
    ∀ a, ∃ z ∈ dualSub S L', γ (e a) - e' a = (M : E) • z

def ClsTie (D : D7) (u : D.what₂.Word) : Prop :=
  (∀ i ≤ D.R.m, (∀ c, LatT (D.sp.X i) (Tu D u ^ (2 * D.R.f)) (D.clsLat u i c)) ∧
    ∃ e : (D.mem u).C.cls i → Fin (D.R.N i) → (D.sp.X i).V,
      (∀ c a, e c a ∈ dualSub (D.sp.X i) (D.clsLat u i c)) ∧
      ∀ c c', SameCls (D.sp.X i) (Tu D u * D.host.g 0 * D.host.g 1) (D.clsLat u i c) (D.clsLat u i c')
        (e c) (e c') → c = c') ∧
  ∃ LP : (D.fm u).clsP → Submodule (𝓞 D.host.E) D.sp.X'.V,
    (∀ c, Submodule.IsLattice D.host.E (LP c) ∧ LatT D.sp.X' 1 (LP c)) ∧
    ∃ e : (D.fm u).clsP → Fin (D.R.N D.R.m - 1) → D.sp.X'.V,
      (∀ c a, e c a ∈ dualSub D.sp.X' (LP c)) ∧
      ∀ c c', SameCls D.sp.X' (Tu D u * D.host.g 0 * D.host.g 1) (LP c) (LP c') (e c) (e c') → c = c'

def adm3 (D : D7) : Prop := ∀ (u : D.what₂.Word) (c : (D.mem u).C.cls 0), Subsingleton ((D.mem u).C.stab 0 c)

def aT (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) : ℝ := (lamCol D u τ 0 : ℝ)

def bT (D : D7) (u : D.what₂.Word) (τ : D.what₂.Tau) : ℝ := -(lamCol D u τ (D.R.k - 1) : ℝ)

def tops (D : D7) : Finset D.what₂.Tau := topsOf D.host D.eTau

abbrev Gx (D : D7) (i : ℕ) : Type := D.what₂.Tau × Fin (D.R.N i) × Fin (D.R.N (i + 1))

def Hherm (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) (z w : Gx D i → ℂ) : ℂ :=
  ∑ g, z g * star (w g) / ((Real.pi * D.gx.Om g.1 s : ℝ) : ℂ)

def Hq (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) (z : Gx D i → ℂ) : ℝ :=
  ∑ g, ‖z g‖ ^ 2 / (Real.pi * D.gx.Om g.1 s)

def dz (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) : MeasureTheory.Measure (Gx D i → ℂ) :=
  ENNReal.ofReal (∏ g : Gx D i, (Real.pi * D.gx.Om g.1 s)⁻¹) • MeasureTheory.volume

def dens (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) (Th : (Gx D i → ℂ) → ℂ) (z : Gx D i → ℂ) : ℝ :=
  ‖Th z‖ ^ 2 * Real.exp (-Real.pi * Hq D i s z)

def trans (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) (x : Gx D i → ℂ) (Th : (Gx D i → ℂ) → ℂ) :
    (Gx D i → ℂ) → ℂ :=
  fun z => Th (z - x) * Complex.exp (Real.pi * Hherm D i s z x - ((Real.pi * Hq D i s x / 2 : ℝ) : ℂ))

structure Torus (D : D7) (i : ℕ) (s : D.what₂.LL →+* ℂ) where
  La : AddSubgroup (Gx D i → ℂ)
  F : Set (Gx D i → ℂ)
  fund : MeasureTheory.IsAddFundamentalDomain La F (dz D i s)
  covol : dz D i s F = 1
  Hmin : ∀ y ∈ La, y ≠ 0 → ∃ β : D.host.E, β ≠ 0 ∧
    (∀ a : 𝓞 D.host.E, ∃ n : ℤ, Algebra.trace ℚ D.host.E (β * (a : D.host.E)) = (n : ℚ)) ∧
    Hq D i s y = 2 * ∑ τ : D.what₂.Tau, ‖D.host.emb (plc D τ) β‖

def Torus.Admis {D : D7} {i : ℕ} {s : D.what₂.LL →+* ℂ} (T : Torus D i s) (Th : (Gx D i → ℂ) → ℂ) : Prop :=
  Differentiable ℂ Th ∧ (∀ y ∈ T.La, ∀ z, dens D i s Th (z + y) = dens D i s Th z) ∧
  MeasureTheory.IntegrableOn (dens D i s Th) T.F (dz D i s)

def Torus.l2Sq {D : D7} {i : ℕ} {s : D.what₂.LL →+* ℂ} (T : Torus D i s) (Th : (Gx D i → ℂ) → ℂ) : ℝ :=
  ∫ z in T.F, dens D i s Th z ∂(dz D i s)

structure KerData (D : D7) (u : D.what₂.Word) where

  embS : ∀ i (s : D.what₂.LL →+* ℂ), ((D.fm u).lat i).V →ₛₗ[s] ((D.mem u).C.cls i → (D.mem u).C.Y i → ℂ)

  ipS : ∀ i (_s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i →
    (((D.mem u).C.Y i → ℂ) →ₗ⋆[ℂ] ((D.mem u).C.Y i → ℂ) →ₗ[ℂ] ℂ)
  tor : ∀ i (s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i → (D.mem u).C.cls (i + 1) → Torus D i s

  Th : ∀ i (_s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i → (D.mem u).C.cls (i + 1) → (Gx D i → ℂ) → ℂ

  cf : ∀ i (_s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i → (D.mem u).C.cls (i + 1) → (Gx D i →₀ ℕ) → ℂ
  cf_sum : ∀ i < D.R.m, ∀ s L L' z, HasSum (fun e => cf i s L L' e * e.prod fun g n => z g ^ n) (Th i s L L' z)

  e0 : ∀ i (_s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i → (D.mem u).C.cls (i + 1) → (Gx D i → ℂ) → ℂ
  initial_theta_admissible : ∀ i < D.R.m, ∀ s L L', (tor i s L L').Admis (e0 i s L L')

  levelZeroComparison_norm : ∀ i < D.R.m, ∀ s L L', (D.fm u).thFree i s L L' ^ 2 = (tor i s L L').l2Sq (e0 i s L L')

  Q : ∀ i (_s : D.what₂.LL →+* ℂ), (D.mem u).C.cls i → (D.mem u).C.cls (i + 1) →
    ((D.fm u).lat i).V → ((D.fm u).lat (i + 1)).V → MvPolynomial (Gx D i) ℂ

namespace KerData

variable {D : D7} {u : D.what₂.Word} (X : KerData D u)

end KerData

section Tensor

variable {ι : Type} [Fintype ι]

def ten {R : Type} [CommRing R] {n : ℕ} (f : ι → MvPolynomial (Fin n × Fin n) R) :
    MvPolynomial (ι × Fin n × Fin n) R :=
  ∏ τ, MvPolynomial.rename (Prod.mk τ) (f τ)

def TSpan (K : Type) [Field K] {n : ℕ} (lam : ι → DomWeight n) :
    Submodule K (MvPolynomial (ι × Fin n × Fin n) K) :=
  Submodule.span K {p | ∃ f : ι → MvPolynomial (Fin n × Fin n) K, (∀ τ, f τ ∈ delSq K n (lam τ)) ∧ p = ten f}

def actAll {K : Type} [Field K] {n : ℕ} (lam : ι → DomWeight n) (g : ι → Matrix (Fin n) (Fin n) K)
    (p : MvPolynomial (ι × Fin n × Fin n) K) : MvPolynomial (ι × Fin n × Fin n) K :=
  (∏ τ, (g τ).det ^ (lam τ).detShift) •
    MvPolynomial.aeval (fun v : ι × Fin n × Fin n =>
      ∑ b, MvPolynomial.C (g v.1 b v.2.1) * MvPolynomial.X (v.1, b, v.2.2)) p

def nfAll {n : ℕ} (lam : ι → DomWeight n) (p q : MvPolynomial (ι × Fin n × Fin n) ℂ) : ℂ :=
  Formalism.REAL.fockF p q / ∏ τ, Formalism.REAL.fockF (extremal ℂ n (lam τ)) (extremal ℂ n (lam τ))

end Tensor

def IntSpanAt (D : D7) {n : ℕ} (w : D.what₂.places.Pl) (lam : D.what₂.Tau → DomWeight n) :
    AddSubgroup (MvPolynomial (D.what₂.Tau × Fin n × Fin n) D.what₂.LL) :=
  AddSubgroup.closure {p | ∃ (r : D.what₂.LL) (f : D.what₂.Tau → MvPolynomial (Fin n × Fin n) ℤ),
    r ∈ intW D.what₂.places w ∧ (∀ τ, f τ ∈ delSq ℤ n (lam τ)) ∧
    p = r • ten (fun τ => MvPolynomial.map (Int.castRingHom D.what₂.LL) (f τ))}

def LocBasis (D : D7) {n : ℕ} (w : D.what₂.places.Pl) (Q : HLat D.what₂.LL) (e : Q.ι ≃ Fin n)
    (γ : Matrix (Fin n) (Fin n) D.what₂.LL) : Prop :=
  IsUnit γ.det ∧ locW D.what₂.places w Q.L =
    Submodule.span (intW D.what₂.places w) (Set.range fun a : Fin n => ∑ i, γ i a • Q.b (e.symm i))

structure ColVal (D : D7) (u : D.what₂.Word) where

  ne : Nonempty ((D.mem u).C.cls 0)
  rho : D.what₂.Tau → (D.host.E →+* D.what₂.LL)
  Q : (D.mem u).C.cls 0 → D.what₂.Tau → HLat D.what₂.LL
  Q_good : ∀ c τ, (Q c τ).Good
  eQ : ∀ c τ, (Q c τ).ι ≃ Fin (D.R.N 0)

  bc : ∀ c τ, (D.sp.X 0).V →+ (Q c τ).V
  bc_smul : ∀ c τ (a : D.host.E) y, bc c τ (a • y) = rho τ a • bc c τ y

  bc_L : ∀ c τ, (Q c τ).L = Submodule.span (𝓞 D.what₂.LL) (bc c τ '' (D.clsLat u 0 c : Set (D.sp.X 0).V))

  bc_norm : ∀ c τ (v : InfinitePlace D.what₂.LL) y,
    (Formalism.HermitianLatticesTheory.majAt (Q c τ).b (Q c τ).X v (bc c τ y) (bc c τ y)).re =
      (v.embedding (rho τ ((D.sp.X 0).hT y y))).re

  latT : ∀ c, LatT (D.sp.X 0) (Tu D u ^ (2 * D.R.f)) (D.clsLat u 0 c)

  co : ((D.fm u).lat 0).V →ₗ[D.what₂.LL]
    ((D.mem u).C.cls 0 → MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) D.what₂.LL)
  co_inj : Function.Injective co

  co_range : ∀ F, (∃ x, co x = F) ↔ ∀ c, F c ∈ TSpan D.what₂.LL ((D.fm u).lam 0)

  fin : ∀ (w : D.what₂.places.Pl)
    (γ : (D.mem u).C.cls 0 → D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.what₂.LL),
    (∀ c τ, LocBasis D w (Q c τ) (eQ c τ) (γ c τ)) →
    ∀ x, x ∈ locW D.what₂.places w ((D.fm u).lat 0).L ↔
      ∀ c, actAll ((D.fm u).lam 0) (fun τ => (γ c τ)⁻¹) (co x c) ∈ IntSpanAt D w ((D.fm u).lam 0)

  inf : ∀ (v : InfinitePlace D.what₂.LL) x,
    (Formalism.HermitianLatticesTheory.majAt ((D.fm u).lat 0).b ((D.fm u).lat 0).X v x x).re =
      ∑ c, (nfAll ((D.fm u).lam 0)
        (actAll ((D.fm u).lam 0) (fun τ => Matrix.reindex (eQ c τ) (eQ c τ) ((Q c τ).X v)⁻¹)
          (MvPolynomial.map v.embedding (co x c)))
        (actAll ((D.fm u).lam 0) (fun τ => Matrix.reindex (eQ c τ) (eQ c τ) ((Q c τ).X v)⁻¹)
          (MvPolynomial.map v.embedding (co x c)))).re

def Conclusion5 (D : D7) (Cn C x : ℝ) : Prop :=
  ∀ (u : D.what₂.Word) (b L b' Sc eta : ℝ),
    Nums D (Tu D u) (D.host.g 0) (D.host.g 1) Cn x b L b' Sc eta → Wts D u Cn x b b' Sc eta →
    ColVal D u →
    -(∑ t ∈ tops D, aT D u t / D.R.k * Real.log (Tu D u)) - C * D.host.TT.card * (x * b) * Real.log D.R.k -
        C * D.R.f * D.R.k * (b' + Sc) * Real.log D.R.k - C * D.R.f * Sc * Real.log (Tu D u) -
        C * D.R.f * (D.R.k : ℝ) ^ 2 * L ≤ ((D.fm u).lat 0).mu

def Conclusion6 (D : D7) (Cn C x : ℝ) : Prop :=
  ∀ (u : D.what₂.Word) (b L b' Sc eta : ℝ),
    Nums D (Tu D u) (D.host.g 0) (D.host.g 1) Cn x b L b' Sc eta → Wts D u Cn x b b' Sc eta →
    ColVal D u →
    ((D.fm u).lat 0).muMax ≤ C * D.host.TT.card * (x * b) * Real.log (D.R.k * D.host.v) +
      C * D.R.f * (b' + Sc) * (D.R.k * Real.log (D.R.k * D.host.v) + Real.log (Tu D u)) +
      C * D.R.f * (D.R.k : ℝ) ^ 2 * L

def famC {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) (P : D7 → ℝ → ℝ → ℝ → Prop) : Prop :=
  ∀ Cn : ℝ, ∃ C x0 : ℝ, ∀ x : ℝ, x0 ≤ x → Fm.x1 < x → ∀ i : Fm.Ix x, P (Fm.D x i) Cn C x

def fam0 {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) (P : D7 → Prop) : Prop :=
  ∃ x0 : ℝ, ∀ x : ℝ, x0 ≤ x → Fm.x1 < x → ∀ i : Fm.Ix x, P (Fm.D x i)

def admF3 {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) : Prop := fam0 Fm adm3

def ConclusionF5 {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) : Prop := famC Fm Conclusion5
def ConclusionF6 {eps : ℝ} (Fm : Formalism.MainNotions.FamP eps) : Prop := famC Fm Conclusion6

end Formalism.MainNotions.flipTwoThree
