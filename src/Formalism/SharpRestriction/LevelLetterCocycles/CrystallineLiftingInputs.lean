module

public import Formalism.SharpRestriction.LevelLetterCocycles.RamifiedCoefficientChains

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.CrystallineLiftingInputs

open Module Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc TensorProduct

def sig2 (l H : ℕ) : ℝ := 2 * (H : ℝ) / ((l : ℝ) - 1) ^ 2 + 1

def Mpar (l h : ℕ) : ℕ := h / (l - 1) + 1

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR} {LL O : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

def DL (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (x : W.DD T) : Prop :=
  (letE i : LetA O n) • x = x ∧ ∀ δ ∈ W.DelF, W.γD T δ x = x

def InPN (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (k : ℕ) (x : W.DD T) : Prop :=
  ∃ y ∈ W.N T, (∀ δ ∈ W.DelF, W.γD T δ y = y) ∧ x = W.π₀ ^ k • y

def PolesFin (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (x : W.DD T) : Prop :=
  ∃ k : ℕ, W.InvN T (∏ j ∈ Finset.range k, Formalism.MainNotions.LiftingTheory.pk W j) x

def Dlat (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) : Set (T.V ⊗[Qp] B) :=
  {z | ∃ (x : W.DD T) (hx : x ∈ W.N T), DL W T i x ∧ z = W.cmp T ⟨x, hx⟩}

def DlatImg (W : LocWach PD LL O v n) {T₁ T₂ : LocLat G Qp LL O} (F : LatHom T₁.L T₂.L)
    (i : ZMod n) : Set (T₂.V ⊗[Qp] B) :=
  {z | ∃ (x : W.DD T₁) (_ : x ∈ W.N T₁) (hx' : W.map F x ∈ W.N T₂), DL W T₁ i x ∧ z = W.cmp T₂ ⟨W.map F x, hx'⟩}

def RankFC [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  ∀ (d : ℕ) (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L) (b : ZMod n → ℕ) (S η m : ℕ),
    Formalism.MainNotions.RamifiedCoefficientChains.SetCS W d T₁ T₂ F b S η m → ∀ i : ZMod n,
      ((i.val + d) % 2 = 0 →
        finrank LL ↥(FilCris PD T₂.ρ (-(η : ℤ)) ⊓ DcrisL PD T₂.ρ (W.emb i)) ≤ m) ∧
      ((i.val + d) % 2 = 1 →
        (finrank LL ↥(DcrisL PD T₂.ρ (W.emb i)) : ℤ) -
          finrank LL ↥(FilCris PD T₂.ρ (b i : ℤ) ⊓ DcrisL PD T₂.ρ (W.emb i)) ≤ m)

def QTool [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  ∀ (d : ℕ) (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L) (b : ZMod n → ℕ) (S η m : ℕ)
    (Mi hi : ZMod n → ℕ),
    Formalism.MainNotions.RamifiedCoefficientChains.SetCS W d T₁ T₂ F b S η m → Formalism.MainNotions.LiftingTheory.JumpsLet W T₁ Mi hi →
    (∀ i : ZMod n,
      Formalism.MainNotions.LiftingTheory.Kills W F i (W.π₀ ^ (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi / (PD.p - 1) + 1)) ∧
      Formalism.MainNotions.LiftingTheory.Kills W F i (Formalism.MainNotions.LiftingTheory.lp W (Formalism.MainNotions.LiftingTheory.eWA PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi))) ∧
      Formalism.MainNotions.LiftingTheory.Kills W F i
        (Formalism.MainNotions.LiftingTheory.qp W ^ ⌈Formalism.MainNotions.RamifiedCoefficientChains.aR PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η)⌉₊)) ∧
    ∀ (Y : LocLat G Qp LL O) (ι : LatHom T₂.L Y.L) (π : LatHom Y.L W.one.L),
      IsSESLat (G := G) (Qp := Qp) (LL := LL) (O := O) ι π → IsCrys PD Y.ρ →
      ∀ i : ZMod n,
        Formalism.MainNotions.LiftingTheory.Kills W π i (W.π₀ ^ (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi / (PD.p - 1) + 1)) ∧
        Formalism.MainNotions.LiftingTheory.Kills W π i (Formalism.MainNotions.LiftingTheory.lp W (Formalism.MainNotions.LiftingTheory.eWA PD.p (Formalism.MainNotions.LiftingTheory.Hmax n Mi hi))) ∧
        Formalism.MainNotions.LiftingTheory.Kills W π i
          (Formalism.MainNotions.LiftingTheory.qp W ^ ⌈Formalism.MainNotions.RamifiedCoefficientChains.aR PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S + η)⌉₊)

def dOp (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (x : W.DD T) : W.DD T :=
  Ring.inverse (algebraMap (LetA O n) W.EE W.π₀) • (W.γ T x - x)

def InQN (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (k : ℤ) (x : W.DD T) : Prop :=
  DL W T i x ∧
    (if 0 ≤ k then Formalism.MainNotions.LiftingTheory.qp W ^ k.toNat • x ∈ W.N T else
      ∃ y ∈ W.N T, x = Formalism.MainNotions.LiftingTheory.qp W ^ (-k).toNat • y)

def cR (W : LocWach PD LL O v n) (j : ℤ) : LL :=
  (algebraMap O LL (((W.χΓ W.gam) ^ (-j) : Oˣ) : O) - 1) / (-(PD.p : LL))

def eY (l y : ℕ) : ℕ := ⌈(y : ℝ) * l / ((l : ℝ) - 1)⌉₊

def InI (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (w : W.DD T) : Prop :=
  DL W T i w ∧ PolesFin W T w ∧ InPN W T 1 (W.γ T w - w)

def IsSer (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (w : W.DD T)
    (c : ℕ → W.DD T) : Prop :=
  c 0 = 0 ∧ (∀ y, DL W T i (c y) ∧ c y ∈ W.N T) ∧
    ∀ K : ℕ, ∃ j : ℕ, InPN W T K (((PD.p : ℕ) : O) ^ j •
      (((PD.p : ℕ) : O) ^ eY PD.p K • (W.γ T w - w) -
        ∑ y ∈ Finset.range K, ((PD.p : ℕ) : O) ^ (eY PD.p K - eY PD.p y) •
          (W.γ T (W.π₀ ^ y • c y) - W.π₀ ^ y • c y)))

def TTool1 [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  Formalism.MainNotions.LiftingTheory.CaseA W → ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n) (w : W.DD T),
    InI W T i w →
    (∃ c, IsSer W T i w c) ∧ ∀ c c', IsSer W T i w c → IsSer W T i w c' → ∀ K : ℕ, ∃ j : ℕ,
      InPN W T K (((PD.p : ℕ) : O) ^ j • ∑ y ∈ Finset.range K,
        ((PD.p : ℕ) : O) ^ (eY PD.p K - eY PD.p y) • (W.π₀ ^ y • (c y - c' y)))

def fMX (W : LocWach PD LL O v n) (M X : ℕ) : LetA O n := W.π₀ ^ M * Formalism.MainNotions.LiftingTheory.qp W ^ X

def IsRem (W : LocWach PD LL O v n) (j M X y : ℕ) (r : LetA O n) : Prop :=
  (∃ a : ℕ → O, r = ∑ k ∈ Finset.range (M + X), algebraMap O (LetA O n) (a k) * W.π₀ ^ k) ∧
    ∃ g : LetA O n, ((W.φA ^ j) W.π₀) ^ y - r = fMX W M X * g

def pullJ (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (j : ℕ) :
    Submodule (LetA O n) (W.DD T) :=
  Submodule.span (LetA O n) (((W.φD T) ^ j) '' {x | x ∈ W.N T ∧ DL W T i x})

def IsTrunc (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) (i : ZMod n) (j M X σ : ℕ)
    (w z : W.DD T) : Prop :=
  ∃ (c : ℕ → W.DD T) (r s : ℕ → LetA O n), IsSer W T i w c ∧
    (∀ y, IsRem W j M X y (r y) ∧
      ((PD.p : ℕ) : LetA O n) ^ eY PD.p y * s y = ((PD.p : ℕ) : LetA O n) ^ σ * r y) ∧
    z = ((PD.p : ℕ) : O) ^ σ • ((W.φD T) ^ j) w -
      ∑ y ∈ Finset.range (max M X + 1), s y • ((W.φD T) ^ j) (c y)

def TCase (l j M X σ : ℕ) : Prop :=
  (j = 1 ∧ 1 ≤ M ∧ σ = ⌈((M : ℝ) + X) / ((l : ℝ) - 1) + 1⌉₊) ∨
    (j = 2 ∧ M = 1 ∧ σ = ⌈(X : ℝ) / ((l : ℝ) - 1) ^ 2 + 1⌉₊)

def TTool2 [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  Formalism.MainNotions.LiftingTheory.CaseA W → 11 ≤ PD.p → ∀ (j M X σ : ℕ), TCase PD.p j M X σ →
  (∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n),
    (∀ w, InI W T i w → ∃ z, IsTrunc W T i j M X σ w z) ∧
    (∀ w z, InI W T i w → IsTrunc W T i j M X σ w z →
      z - ((PD.p : ℕ) : O) ^ σ • ((W.φD T) ^ j) w ∈ pullJ W T i j ∧
      ∃ p ∈ pullJ W T i j, W.γ T z - z = fMX W M X • p) ∧
    (∀ w z z', InI W T i w → IsTrunc W T i j M X σ w z → IsTrunc W T i j M X σ w z' →
      ∃ p ∈ pullJ W T i j, z - z' = fMX W M X • p) ∧
    (∀ (a a' : O) w w' z z' z'', InI W T i w → InI W T i w' → IsTrunc W T i j M X σ w z →
      IsTrunc W T i j M X σ w' z' → IsTrunc W T i j M X σ (a • w + a' • w') z'' →
      ∃ p ∈ pullJ W T i j, z'' - (a • z + a' • z') = fMX W M X • p) ∧
    (∀ w z, InI W T i w → InPN W T 1 w → IsTrunc W T i j M X σ w z →
      ∃ p ∈ pullJ W T i j, z = fMX W M X • p) ∧
    (∀ p ∈ pullJ W T i j, ∃ p' ∈ pullJ W T i j,
      ((PD.p : ℕ) : O) ^ (2 * σ) • p - fMX W M X • p' ∈ Submodule.span (LetA O n)
        {z | ∃ w, w ∈ W.N T ∧ InI W T i w ∧ IsTrunc W T i j M X σ w z})) ∧
  ∀ (T T' : LocLat G Qp LL O) (F : LatHom T.L T'.L), IsCrys PD T.ρ → IsCrys PD T'.ρ →
    ∀ (i : ZMod n) w z z', InI W T i w → IsTrunc W T i j M X σ w z →
      IsTrunc W T' i j M X σ (W.map F w) z' →
      ∃ p ∈ pullJ W T' i j, W.map F z - z' = fMX W M X • p

def THor [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  Formalism.MainNotions.LiftingTheory.CaseA W → 11 ≤ PD.p → ∀ (j M X σ : ℕ), TCase PD.p j M X σ →
  ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ → ∀ (i : ZMod n) (w z : W.DD T) (hw : w ∈ W.N T),
    InI W T i w → IsTrunc W T i j M X σ w z →
    ∀ (ζ : LL) (R k : ℕ) (a : LetA O n) (hk : (Formalism.MainNotions.LiftingTheory.qp W ^ k * a) • z ∈ W.N T),
      ((IsPrimitiveRoot ζ PD.p ∧ R = k + X) ∨ (ζ = 1 ∧ R = (PD.p - 1) * M)) →
      (∀ r : ℤ, r < 0 → W.levN T (i + (j : ZMod n)) ζ ⟨_, hk⟩ r = 0) ∧
      ∀ r : ℕ, r < R → W.levN T (i + (j : ZMod n)) ζ ⟨_, hk⟩ (r : ℤ) =
        PowerSeries.coeff r (W.lev (i + (j : ZMod n)) ζ (Formalism.MainNotions.LiftingTheory.qp W ^ k * a)) •
          ((PD.p : LL) ^ σ • ιV PD (LL := LL) (V := T.V)
            ((φVB PD (LL := LL) (V := T.V))^[j] (W.cmp T ⟨w, hw⟩)))

def FTool [NeZero n] (W : LocWach PD LL O v n) : Prop :=
  ∀ (d : ℕ) (T₁ T₂ : LocLat G Qp LL O) (F : LatHom T₁.L T₂.L) (b : ZMod n → ℕ) (S η m : ℕ),
    Formalism.MainNotions.RamifiedCoefficientChains.SetCS W d T₁ T₂ F b S η m →
    ∀ (T : LocLat G Qp LL O), IsCrys PD T.ρ →
      (∀ i τ, Formalism.MainNotions.LiftingTheory.Over W τ i →
        JumpsInV PD T.ρ τ (Set.Ici (-((Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S : ℕ) : ℤ)))) →
      (∀ (c : ZMod n) τ, (c.val + d) % 2 = 0 → Formalism.MainNotions.LiftingTheory.Over W τ (c + 1) →
        JumpsInV PD T.ρ τ (Set.Ici (-(η : ℤ)))) →
      let M := Mpar PD.p (Formalism.MainNotions.RamifiedCoefficientChains.hpar n b S)
      (∀ (i : ZMod n) (x : W.DD T), x ∈ W.N T → DL W T (i - 1) x →
        ∃ y ∈ W.N T, W.φD T (W.π₀ ^ M • x) = (W.π₀ ^ M * Formalism.MainNotions.LiftingTheory.qp W) • y) ∧
      (∀ w, InPN W T M w → ∃! z, InPN W T M z ∧ W.φD T z - z = w) ∧
      (∀ (i : ZMod n) (x : W.wachCocyclesDelta T), DL W T i (x : W.DD T × W.DD T).1 →
        InPN W T M (x : W.DD T × W.DD T).2 →
          (InPN W T M (x : W.DD T × W.DD T).1 → W.clK T x = 0) ∧
          (PolesFin W T (x : W.DD T × W.DD T).1 → W.clK T x ∈ latticeFiniteCohomology PD T.L)) ∧
      (∀ (c : ZMod n) (x : W.DD T), (c.val + d) % 2 = 0 → x ∈ W.φpull T →
        (letE (c + 1) : LetA O n) • x = x → Formalism.MainNotions.LiftingTheory.qp W ^ η • x ∈ W.N T) ∧
      (∀ (c : ZMod n) (w z : W.DD T), (c.val + d) % 2 = 0 → InI W T c w →
        IsTrunc W T c 1 M η ⌈((M : ℝ) + η) / ((PD.p : ℝ) - 1) + 1⌉₊ w z →
        (∃ x : W.wachCocyclesDelta T, (x : W.DD T × W.DD T).1 = z ∧ InPN W T M (x : W.DD T × W.DD T).2) ∧
        (InPN W T 1 w → ∀ x : W.wachCocyclesDelta T, (x : W.DD T × W.DD T).1 = z →
          InPN W T M (x : W.DD T × W.DD T).2 → W.clK T x = 0))

end Core

section Lit

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    (LL O : Type) [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [CommRing O] [Algebra O LL]

end Lit

def TToolAlg : Prop :=
  (∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (l : ℕ) [Fact l.Prime]
    (ϖ : O) (e : ℕ), Irreducible ϖ → 1 ≤ e → Associated (l : O) (ϖ ^ e) →
    ∀ (u₁ u₂ u ε : PowerSeries O), IsUnit u₁ → IsUnit u₂ → IsUnit u → IsUnit ε →
    ∀ (y X M η t : ℕ),
      ((t : ℝ) ≤ e * max 0 ((l : ℝ) * y - X) →
        (u₁ * PowerSeries.X * (PowerSeries.X + PowerSeries.C (l : O)) ^ (l - 1)) ^ y ∈
          Ideal.span {PowerSeries.C (ϖ ^ t),
            PowerSeries.X * (PowerSeries.X + PowerSeries.C (l : O)) ^ X}) ∧
      ((t : ℝ) ≤ e * max 0 ((l : ℝ) * y - η - M) →
        (u₁ * PowerSeries.X * (PowerSeries.X + PowerSeries.C (l : O)) ^ (l - 1)) ^ y ∈
          Ideal.span {PowerSeries.C (ϖ ^ t),
            PowerSeries.X ^ M * (PowerSeries.X + PowerSeries.C (l : O)) ^ η}) ∧
      ((t : ℝ) ≤ e * max 0 (((l : ℝ) - 1) * y - (X : ℝ) / l) →
        (u₂ * PowerSeries.X * (PowerSeries.X + PowerSeries.C (l : O)) ^ (l - 1) *
            (u * (PowerSeries.X + PowerSeries.C (l : O)) ^ l + PowerSeries.C (l : O) * ε) ^ (l - 1))
            ^ y ∈
          Ideal.span {PowerSeries.C (ϖ ^ t),
            PowerSeries.X * (PowerSeries.X + PowerSeries.C (l : O)) ^ X})) ∧
  ∀ (l y X M η : ℕ), 11 ≤ l →
    (y : ℝ) * l / ((l : ℝ) - 1) - max 0 ((l : ℝ) * y - X) ≤ ((X : ℝ) + 1) / ((l : ℝ) - 1) + 1 ∧
    (y : ℝ) * l / ((l : ℝ) - 1) - max 0 ((l : ℝ) * y - η - M) ≤
      ((M : ℝ) + η) / ((l : ℝ) - 1) + 1 ∧
    (y : ℝ) * l / ((l : ℝ) - 1) - max 0 (((l : ℝ) - 1) * y - (X : ℝ) / l) ≤
      (X : ℝ) / ((l : ℝ) - 1) ^ 2 + 1

def PowerSeriesDVRFactorisation : Prop :=
  ∀ (O : Type) [CommRing O] [IsDomain O] [IsDiscreteValuationRing O] (l : ℕ) [Fact l.Prime]
    (ϖ : O) (e : ℕ), Irreducible ϖ → 1 ≤ e → Associated (l : O) (ϖ ^ e) →
    ∀ (ε u : PowerSeries O), IsUnit ε → IsUnit u →
    ∀ (b y t : ℕ), 1 ≤ b → (b : ℝ) / (l : ℝ) ≤ (y : ℝ) →
      (PowerSeries.C (l : O) * ε + u * PowerSeries.X ^ l) ^ y ∈
        Ideal.span {PowerSeries.C (ϖ ^ t), (PowerSeries.X : PowerSeries O) ^ b} →
      (t : ℝ) / (e : ℝ) ≤ (y : ℝ) - (b : ℝ) / (l : ℝ) + 2 + Real.logb (l : ℝ) (y : ℝ)

def adm6 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.LiftingTheory.ConclusionW D HW F

def adm8 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.LiftingTheory.ConclusionH D HW F

def adm9 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.LiftingTheory.ExistsUnitClasses D HW F

def adm12 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], RankFC ((HW l).W K 1 LL hg)

def adm13 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], QTool ((HW l).W K 1 LL hg)

def adm15 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  TToolAlg ∧ ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))],
    TTool1 ((HW l).W K 1 LL hg) ∧ TTool2 ((HW l).W K 1 LL hg)

def adm16 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], FTool ((HW l).W K 1 LL hg)

def FrobeniusExpansionCongruence (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hg : Good K 1 LL)
    [NeZero (Module.finrank ℚ_[l] ↥(K0 K))], THor ((HW l).W K 1 LL hg)

end Formalism.MainNotions.CrystallineLiftingInputs
