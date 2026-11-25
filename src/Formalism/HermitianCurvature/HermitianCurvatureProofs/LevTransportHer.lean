module

public import Formalism.HermitianCurvature.HerGenC
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.BlockRelationTwistedHeight

@[expose] public section

open MeasureTheory

noncomputable section

namespace Formalism.FourierDecayAlt.P.PTie

open Formalism.REAL Formalism.QuantumDeterminants Formalism.FourierDecayAlt Formalism.FourierDecayAlt.Q Formalism.FourierDecayAlt.P5 Formalism.FourierDecayAlt.P.PBH

section reindex

variable {K A S S' : Type}


end reindex

def TowerAt : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (Bs : B.RealPlaceData k r Wp Wq),
    ∃ T : D.LevTower k r Wp Wq, T.base.z = Bs.z ∧ T.base.z' = Bs.z' ∧ T.base.π = Bs.π ∧ T.base.π' = Bs.π' ∧
      D.TowerNormalised T

def PlAt : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (Bs : B.RealPlaceData P.k P.r Wp Wq),
    IsData P z z' π π' X μ L st l0 → 1 ≤ l0 → l0 ≤ P.k → 2 ≤ P.k → Bs.z = z → Bs.z' = z' → Bs.π = π → Bs.π' = π' →
    ∃ p : KB.Pl P Wp Wq, p.l0 = l0 ∧ p.T.base.z = z ∧ p.T.base.z' = z' ∧ p.T.base.π = π ∧ p.T.base.π' = π'

def shiftCf {r : ℕ} (i : Fin (r + 1)) (c'' : Fin (r - i) → ℂ) : Cf r i :=
  fun l => c'' ⟨l.1.val - i.val, by have := l.1.isLt; have := l.2; omega⟩

def LevTrClauses {Wp Wq : Type} [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    {z z' : Fin (2 * P.r + P.k + 1) → ℂ} {π : Mx P.k P.r → (Wp →L[ℂ] Wp)} {π' : Mx P.k P.r → (Wq →L[ℂ] Wq)}
    (μ : Measure (Mt P.k P.r)) (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r)
    (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ) (i : Fin (P.r + 1)) (c : Fin P.r → ℂ)
    (Di : B.RealPlaceData P.k (P.r - i) Wp Wq) (μi : Measure (Mt P.k (P.r - i)))
    (Li : R.LevelData (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π')) (P.r - i))
    (sti : Fr.Start (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π')))
    (T : RadSp P.k P.r z z' π π' →ₗ[ℂ] RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π') : Prop :=
  (∀ Φ c'' g, (T Φ : Fn P.k (P.r - i) (Wq →L[ℂ] Wp)) c'' g =
      (Φ : Fn P.k P.r (Wq →L[ℂ] Wp)) (glue i c (shiftCf i c'')) (D.castM (by omega) (ιLev P.k i (P.r - i) g))) ∧
    (∃ κ : ℝ, 0 < κ ∧ ∀ Φ Ψ c'', pairAt μi (T Φ) (T Ψ) c'' = (κ : ℂ) * pairAt μ Φ Ψ (glue i c (shiftCf i c''))) ∧
    (∀ (n : ℕ) (hn : n + i ≤ P.r) (Y : ℂ),
      MRel T (QQi L st ⟨n + i, by omega⟩ Y) (QQi Li sti ⟨n, by omega⟩ Y)) ∧
    ∀ (S : Type) [Fintype S] [DecidableEq S] (w : List (Wd.Letter ℂ S)),
      (∀ l : Fin (P.r - i), ARel T (bTl L ⟨l.val + i, by omega⟩ w) (bTl Li l w)) ∧
      (∀ (n : ℕ) (hn : n + i ≤ P.r), ARel T (RRi L st ⟨n + i, by omega⟩ w) (RRi Li sti ⟨n, by omega⟩ w)) ∧
      (WordOK P z z' π π' st l0 w → WordOK (JC.parLev P i) Di.z Di.z' Di.π Di.π' sti l0 w)

def LevTransportHer : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (z z' : Fin (2 * P.r + P.k + 1) → ℂ) (π : Mx P.k P.r → (Wp →L[ℂ] Wp)) (π' : Mx P.k P.r → (Wq →L[ℂ] Wq))
    (X : ActualOps P.k P.r z z' π π') (μ : Measure (Mt P.k P.r))
    (L : R.LevelData (Pr (RadSp P.k P.r z z' π π')) P.r) (st : Fr.Start (Pr (RadSp P.k P.r z z' π π'))) (l0 : ℕ)
    (Bs : B.RealPlaceData P.k P.r Wp Wq),
    IsData P z z' π π' X μ L st l0 → 1 ≤ l0 → l0 ≤ P.k → Bs.z = z → Bs.z' = z' → Bs.π = π → Bs.π' = π' →
    ∀ (i : Fin (P.r + 1)) (c : Fin P.r → ℂ), (∀ l : Fin P.r, l.val < i.val → c l ≠ 0) →
    ∃ (Di : B.RealPlaceData P.k (P.r - i) Wp Wq)
      (Xi : ActualOps (JC.parLev P i).k (JC.parLev P i).r Di.z Di.z' Di.π Di.π') (μi : Measure (Mt P.k (P.r - i)))
      (Li : R.LevelData (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π')) (P.r - i))
      (sti : Fr.Start (Pr (RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π')))
      (T : RadSp P.k P.r z z' π π' →ₗ[ℂ] RadSp P.k (P.r - i) Di.z Di.z' Di.π Di.π'),
      IsData (JC.parLev P i) Di.z Di.z' Di.π Di.π' Xi μi Li sti l0 ∧
        LevTrClauses P μ L st l0 i c Di μi Li sti T ∧
        ∀ (S : Type) [Fintype S] [DecidableEq S], ∀ Φ ∈ herKc S P z z' π π' L st l0 Bs i,
          T Φ ∈ herKc S (JC.parLev P i) Di.z Di.z' Di.π Di.π' Li sti l0 Di 0

def JFScale : Prop :=
  ∀ (k r : ℕ) (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] (Bs Bs' : B.RealPlaceData k r Wp Wq), Bs.z = Bs'.z → Bs.z' = Bs'.z' → Bs.π = Bs'.π →
    Bs.π' = Bs'.π' → ∃ κ : ℂ, ∀ F, B.JF Bs F = κ • B.JF Bs' F

def SliceStepHer : Prop :=
  ∀ (Wp Wq : Type) [NormedAddCommGroup Wp] [InnerProductSpace ℂ Wp] [NormedAddCommGroup Wq]
    [InnerProductSpace ℂ Wq] [FiniteDimensional ℂ Wp] [FiniteDimensional ℂ Wq] (P : M.Par)
    (T : D.LevTower P.k P.r Wp Wq), IsPlace P T.base.z T.base.z' T.base.π T.base.π' → D.TowerNormalised T →
    ∀ (j : ℕ) (hj : j + 1 ≤ P.r) (l0 : ℕ), 1 ≤ l0 → l0 ≤ P.k →
    ∀ (Xj : ActualOps (JC.parLev P j).k (JC.parLev P j).r (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')
      (μj : Measure (Mt P.k (P.r - j)))
      (Lj : R.LevelData (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')) (P.r - j))
      (stj : Fr.Start (Pr (RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π')))
      (Xs : ActualOps (JC.parLev P (j + 1)).k (JC.parLev P (j + 1)).r (T.bs (j + 1)).z (T.bs (j + 1)).z'
        (T.bs (j + 1)).π (T.bs (j + 1)).π')
      (μs : Measure (Mt P.k (P.r - (j + 1))))
      (Ls : R.LevelData (Pr (RadSp P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π
        (T.bs (j + 1)).π')) (P.r - (j + 1)))
      (sts : Fr.Start (Pr (RadSp P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π
        (T.bs (j + 1)).π'))),
    IsData (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' Xj μj Lj stj l0 →
    IsData (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π (T.bs (j + 1)).π' Xs μs Ls
      sts l0 →
    ∀ (Tt : RadSp P.k (P.r - j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' →ₗ[ℂ]
        RadSp P.k (P.r - (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π (T.bs (j + 1)).π') (t : ℂ),
      t ≠ 0 →
      (∀ Φ c g, (Tt Φ : Fn P.k (P.r - (j + 1)) (Wq →L[ℂ] Wp)) c g =
        (Φ : Fn P.k (P.r - j) (Wq →L[ℂ] Wp)) (fun l => consC t c (Fin.cast (by omega) l))
          (D.castM (by omega) (ιLev P.k 1 (P.r - (j + 1)) g))) →
    ∀ (S : Type) [Fintype S] [DecidableEq S] (w : List (Wd.Letter ℂ S)) (a b : Wd.Ix S),
      WordOK (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' stj l0 w →
      ∀ Ψ ∈ herKc S (JC.parLev P j) (T.bs j).z (T.bs j).z' (T.bs j).π (T.bs j).π' Lj stj l0 (T.bs j) 0,
        Tt ((bTl Lj (⟨0, by change 0 < P.r - j; omega⟩ : Fin (JC.parLev P j).r) w a b).1 Ψ) ∈
          herKc S (JC.parLev P (j + 1)) (T.bs (j + 1)).z (T.bs (j + 1)).z' (T.bs (j + 1)).π (T.bs (j + 1)).π' Ls sts
            l0 (T.bs (j + 1)) 0

end Formalism.FourierDecayAlt.P.PTie
