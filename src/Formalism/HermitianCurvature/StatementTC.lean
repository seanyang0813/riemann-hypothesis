module

public import Formalism.HermitianCurvature.StatementK
public import Formalism.HermitianCurvature.StatementJ
import Std.Tactic.BVDecide.Normalize.Prop

@[expose] public section

namespace Formalism.FourierDecayAlt.TC

open Finset Filter Topology

open scoped ComplexInnerProductSpace ComplexOrder ComplexConjugate

noncomputable section

open Classical

section towers

open TB TB.Data

variable {E W : Type} [Field E]

def KrPSD (D : TB.Data E W) : Prop := ∀ i (Y : Finset (TB.Pt E)), TB.PSDOn Y (D.Kr i)

def EBounds (D : TB.Data E W) : Prop := ∀ i, 1 ≤ i → i ≤ D.r + 1 → 0 ≤ D.e i ∧ D.e i ≤ 1

def DomText (D : TB.Data E W) (T : TB.Tower E) (Th : ℕ → ℕ → E → TB.Pt E → TB.Pt E → ℂ) : Prop :=
  ∀ i s, 1 ≤ s → s ≤ i → i ≤ D.r + 1 →
    (∀ t : E, TB.PSDOn (T.X (i - s)) (Th i s t)) ∧
    (∀ t : E, t ≠ 0 →
      TB.PSDOn (T.X (i - s)) (fun h h' => Th i s t h h' - TB.blk (D.Kr i) s t t h h')) ∧
    (∀ t t' : E, t - t' ∈ D.La (i - s + 1) s →
      ∀ h ∈ T.X (i - s), ∀ h' ∈ T.X (i - s), Th i s t h h' = Th i s t' h h') ∧
    (∀ S : Finset E, (∀ t ∈ S, ∀ t' ∈ S, t - t' ∈ D.La (i - s + 1) s → t = t') →
      TB.PSDOn (T.X (i - s))
        (fun h h' => (1 + (D.e i : ℂ)) * D.Kr (i - s) h h' - ∑ t ∈ S, Th i s t h h'))

def DomMin (D : TB.Data E W) (T : TB.Tower E) (Th : ℕ → ℕ → E → TB.Pt E → TB.Pt E → ℂ) : Prop :=
  ∀ i s, 1 ≤ s → s ≤ i → i ≤ D.r + 1 →
    (∀ t ∈ T.Sg (i - s + 1) s,
      TB.PSDOn (T.X (i - s)) (fun h h' => Th i s t h h' - TB.blk (D.Kr i) s t t h h')) ∧
    (∀ t ∈ T.Sg (i - s + 1) s, ∀ t' ∈ T.Sg (i - s + 1) s, t - t' ∈ D.La (i - s + 1) s →
      ∀ h ∈ T.X (i - s), ∀ h' ∈ T.X (i - s), Th i s t h h' = Th i s t' h h') ∧
    (∀ S : Finset E, S ⊆ T.Sg (i - s + 1) s →
      (∀ t ∈ S, ∀ t' ∈ S, t - t' ∈ D.La (i - s + 1) s → t = t') →
      TB.PSDOn (T.X (i - s))
        (fun h h' => (1 + (D.e i : ℂ)) * D.Kr (i - s) h h' - ∑ t ∈ S, Th i s t h h'))

def DomAfter (D : TB.Data E W) : Prop := ∀ T : TB.Tower E, ∃ Th, DomMin D T Th

end towers

def DomMinOfText : Prop :=
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (T : TB.Tower E) Th, DomText D T Th → DomMin D T Th

def MajorantPSD : Prop :=
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (T : TB.Tower E) Th, KrPSD D → DomMin D T Th →
    ∀ i s, 1 ≤ s → s ≤ i → i ≤ D.r + 1 → ∀ t ∈ T.Sg (i - s + 1) s, TB.PSDOn (T.X (i - s)) (Th i s t)

def OneLevelAfter : Prop :=
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (ep C₄ : ℝ), D.GramPSD → KrPSD D → D.WordsPos →
    D.KernelSupport → EBounds D → D.EstWave → D.PoissonStep → D.EstLift → D.EstBlock C₄ → D.LatticeSums ep →
    0 ≤ ep → 1 ≤ C₄ → (∀ b s, 0 ≤ D.vol b s) →
    (∀ b s, 1 ≤ b → 1 ≤ s → b + s ≤ D.r + 2 → D.vol b s ≤ 1) →
    ∀ (T : TB.Tower E), (∃ Th, DomMin D T Th) →
    ∀ (ε : ℝ), 0 < ε → ∀ (σ : ℕ → ℝ) (i : ℕ), 1 ≤ i → i ≤ D.r + 1 →
      (∀ k < i, 0 ≤ σ k ∧ ∀ w ∈ D.Wb (D.budget k), D.Q T ε k w ≤ σ k ^ 2) →
      ∀ w ∈ D.Wb (D.budget i),
        √(D.Q T ε i w) ≤
          √((1 + 3 ^ D.f * ep) * (1 + 2 ^ D.f * ep)) * √(1 + D.e i) * σ (i - 1) +
          ∑ s ∈ Icc 2 i, √((1 + 3 ^ D.f * ep) * (1 + D.e i) * C₄ ^ (D.f * s) *
              ∏ s' ∈ Ico 1 s, D.vol (i - s + 1) s') * σ (i - s)

def OneLevelAfterOfOld : Prop := TB.OneLevel → OneLevelAfter

def TheoremAAfter : Prop :=
  ∀ C₁ C₄ : ℝ, 1 ≤ C₁ → 1 ≤ C₄ → ∃ C C' : ℝ,
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (Θ jn : ℝ) (H : Type) [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] [CompleteSpace H] (Vt : TB.Pt E → H) (c : ℕ → TB.Pt E → ℂ),
    4 ≤ D.K → 1 ≤ D.f → 0 < Θ → C' ≤ Θ → (D.r : ℝ) * (C / Θ) ^ D.f ≤ 1 → D.SizesBelow Θ →
    D.GramPSD → KrPSD D → D.WordsPos → D.KernelSupport → EBounds D → DomAfter D → D.EstWave →
    D.PoissonStep → D.EstLift → D.EstBlock C₄ →
    D.LatticeSums ((C₁ * Θ ^ (-((D.K : ℝ) - 5 / 2))) ^ D.f) →
    D.EstE jn → D.Cutoff Vt → D.LeadingDomination Vt c →
    ∀ R : Finset ℕ, ∑ ρ ∈ R, ‖∑' p, c ρ p • Vt p‖ ^ 2 ≤
      (1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f) * (∏ i ∈ Icc 1 (D.r + 1), (1 + D.e i)) * jn

def TheoremAAfterOfSteps : Prop :=
  OneLevelAfter → TB.LimitStep → Formalism.FourierDecayAlt.K.JointTheoremA → TheoremAAfter

def RecHypAfter {E W : Type} [Field E] (D : TB.Data E W) (C₁ C₄ Θ jn : ℝ) {H : Type}
    [NormedAddCommGroup H] [InnerProductSpace ℂ H] (Vt : TB.Pt E → H) (c : ℕ → TB.Pt E → ℂ) : Prop :=
  4 ≤ D.K ∧ 1 ≤ D.f ∧ 0 < Θ ∧ D.SizesBelow Θ ∧ D.GramPSD ∧ KrPSD D ∧ D.WordsPos ∧ D.KernelSupport ∧
  EBounds D ∧ DomAfter D ∧ D.EstWave ∧ D.PoissonStep ∧ D.EstLift ∧ D.EstBlock C₄ ∧
  D.LatticeSums ((C₁ * Θ ^ (-((D.K : ℝ) - 5 / 2))) ^ D.f) ∧ D.EstE jn ∧ D.Cutoff Vt ∧ D.LeadingDomination Vt c

def ProductOfEMax : Prop :=
  ∀ (r : ℕ) (e : ℕ → ℝ) (sd : ℝ), (∀ i ∈ Icc 1 r, e i = 0) → 1 + e (r + 1) = max sd 1 →
    ∏ i ∈ Icc 1 (r + 1), (1 + e i) = max sd 1

def DensLeTwo : Prop :=
  ∀ f n : ℕ, 18 * f ≤ 2 ^ n → Real.exp (12 * (f : ℝ) * ((2 : ℝ) ^ n)⁻¹) ≤ 2

def DensSize : Prop :=
  ∀ k r f : ℕ, 2 * r + 2 + f + 5 ≤ k → 18 * f ≤ 2 ^ (k - 2 * r - 2)

def SumBoundMax : Prop :=
  ∀ (α : Type) (Y : Finset α) (k m : α → α → ℂ) (sd : ℝ), TB.PSDOn Y k →
    TB.PSDOn Y (fun x y => (sd : ℂ) * k x y - m x y) →
    TB.PSDOn Y (fun x y => ((max sd 1 : ℝ) : ℂ) * k x y - m x y)

def RecursionWithDens : Prop :=
  TheoremAAfter → ∀ C₁ C₄ : ℝ, 1 ≤ C₁ → 1 ≤ C₄ → ∃ C C' : ℝ,
    ∀ (E W : Type) [Field E] (D : TB.Data E W) (Θ jn : ℝ) (H : Type) [NormedAddCommGroup H]
      [InnerProductSpace ℂ H] [CompleteSpace H] (Vt : TB.Pt E → H) (c : ℕ → TB.Pt E → ℂ) (sd : ℝ),
      RecHypAfter D C₁ C₄ Θ jn Vt c → C' ≤ Θ → (D.r : ℝ) * (C / Θ) ^ D.f ≤ 1 →
      (∀ i ∈ Icc 1 D.r, D.e i = 0) → 1 + D.e (D.r + 1) = max sd 1 →
      ∀ R : Finset ℕ, ∑ ρ ∈ R, ‖∑' p, c ρ p • Vt p‖ ^ 2 ≤
        (1 + C * ((D.r : ℝ) + 1) * (C / Θ) ^ D.f) * max sd 1 * jn

def scaleTop {E W : Type} [Field E] (D : TB.Data E W) (lam : ℝ) : TB.Data E W :=
  { D with
    Kr := fun i p q => if i = D.r + 1 then (lam : ℂ) * D.Kr i p q else D.Kr i p q
    K0 := by simp [D.K0]
    e := fun i => if i = D.r + 1 then lam - 1 else D.e i }

def DomScaleTop : Prop :=
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (T : TB.Tower E) Th (lam : ℝ), 0 ≤ lam →
    D.e (D.r + 1) = 0 → DomMin D T Th →
    DomMin (scaleTop D lam) T
      (fun i s t h h' => if i = D.r + 1 then (lam : ℂ) * Th i s t h h' else Th i s t h h')

def RecHypScaleTop : Prop :=
  DomScaleTop → SumBoundMax →
  ∀ (E W : Type) [Field E] (D : TB.Data E W) (C₁ C₄ Θ jn : ℝ) (H : Type) [NormedAddCommGroup H]
    [InnerProductSpace ℂ H] (Vt : TB.Pt E → H) (c c' : ℕ → TB.Pt E → ℂ) (sd : ℝ),
    sd ≤ 2 → D.e (D.r + 1) = 0 → RecHypAfter D C₁ C₄ Θ jn Vt c →
    (∀ ρ p, c' ρ p ≠ 0 → TB.IsPt p (D.r + 1)) →
    (∀ Y : Finset (TB.Pt E), (∀ p ∈ Y, TB.IsPt p (D.r + 1)) → ∀ R : Finset ℕ,
      TB.PSDOn Y (fun p q => (sd : ℂ) * D.Kr (D.r + 1) p q - ∑ ρ ∈ R, c' ρ p * conj (c' ρ q))) →
    (∀ ρ, Summable fun p : TB.Pt E => ‖c' ρ p‖ * ‖Vt p‖) →
    RecHypAfter (scaleTop D (max sd 1)) C₁ C₄ Θ jn Vt c' ∧
      (scaleTop D (max sd 1)).r = D.r ∧ (scaleTop D (max sd 1)).f = D.f ∧
      1 + (scaleTop D (max sd 1)).e (D.r + 1) = max sd 1 ∧
      ∀ i ∈ Icc 1 D.r, (scaleTop D (max sd 1)).e i = D.e i

def DomAfterOfLocal : Prop :=
  J.ProductLemma → J.ScaleOk → DomMinOfText →
  ∀ (E W : Type) [Field E] (D : TB.Data E W),
    (∀ (T : TB.Tower E) (i s : ℕ), 1 ≤ s → s ≤ i → i ≤ D.r + 1 →
      ∃ (P : Type) (_ : Fintype P) (S : P → J.LocSys E (TB.Pt E)) (a : TB.Pt E → ℝ),
        (∀ p, (S p).Ok (T.X (i - s))) ∧
        (∀ t : E, t ≠ 0 → ∀ h ∈ T.X (i - s), ∀ h' ∈ T.X (i - s),
          (J.sysOf D i s).N t t h h' = (J.scaleSys a (J.prodSys S)).N t t h h') ∧
        (∀ h ∈ T.X (i - s), ∀ h' ∈ T.X (i - s),
          (J.sysOf D i s).B h h' = (J.scaleSys a (J.prodSys S)).B h h') ∧
        (J.sysOf D i s).L = ⨅ p, (S p).L) →
    (∀ T : TB.Tower E, ∃ Th, DomText D T Th) ∧ DomAfter D

def DensSum : Prop :=
  ∀ (P : Type) (S : Finset P) (q : P → ℝ) (l : P → ℕ) (f n : ℕ), 2 ≤ n →
    (∀ p ∈ S, (l p).Prime ∧ ((l p : ℕ) : ℝ) ≤ q p) →
    (∀ m : ℕ, (S.filter fun p => l p = m).card ≤ f) →
    ∑ p ∈ S, (q p ^ n)⁻¹ ≤ 3 * (f : ℝ) * ((2 : ℝ) ^ n)⁻¹

def DensChain : Prop :=
  DensSum → DensLeTwo → DensSize →
  ∀ (P : Type) (q : P → ℝ) (l : P → ℕ) (k r f : ℕ) (sd : ℝ),
    2 * r + 2 + f + 5 ≤ k → (∀ p, (l p).Prime ∧ ((l p : ℕ) : ℝ) ≤ q p) →
    (∀ (m : ℕ) (S : Finset P), (∀ p ∈ S, l p = m) → S.card ≤ f) →
    (∀ x : ℝ, x < sd → ∃ S : Finset P, x ≤ ∏ p ∈ S, Real.exp (4 * (q p ^ (k - 2 * r - 2))⁻¹)) →
    sd ≤ Real.exp (12 * (f : ℝ) * ((2 : ℝ) ^ (k - 2 * r - 2))⁻¹) ∧ sd ≤ 2

end

end Formalism.FourierDecayAlt.TC
