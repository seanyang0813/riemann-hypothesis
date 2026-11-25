module

public import Formalism.SharpRestriction.LevelLetterCocycles.GammaSemisimpleLocalOfConsequences
public import Formalism.SharpRestriction.LevelLetterCocycles.LocCoh
public import Formalism.FrobeniusContraction.HighestWeightResidueAvoids
public import Formalism.FrobeniusContraction.StatementTop
public import Formalism.GaloisCohomology.LocalTateDualityK
public import Mathlib.LinearAlgebra.Charpoly.Basic

@[expose] public section

noncomputable section

open Module TensorProduct Classical

namespace Formalism.MainNotions.tableLineDegreeTwo

open Formalism.WeaklyAdmissibleFiltrations

abbrev sg (n l : ℕ) (h : ZMod n → ℕ) (i : ZMod n) : ℤ := Formalism.WachCohomologyFacts.V2.sgN n l h i

def lows (typ : Bool) (h η : ℕ) (U : Multiset ℤ) : Multiset ℤ := U.filter (Formalism.WachCohomologyFacts.V2.InWinN typ h η)

def PositionHyps (l n t : ℕ) (h w η : ZMod n → ℕ) (typ : ZMod n → Bool) (U : ZMod n → Multiset ℤ) :
    Prop :=
  ∀ i, (∀ u ∈ U i, 1 ≤ u ∧ u ≤ (h i : ℤ) - 1) ∧ 1 ≤ w i ∧ (w i : ℤ) + t - 1 ≤ (h i : ℤ) - 1 ∧
    (typ i = true → (w i : ℤ) + t - 1 ≤ η i) ∧ (typ i = false → (h i : ℤ) - η i ≤ w i) ∧
    (η i : ℤ) + 4 * sg n l h i + 6 < l ∧
    (∀ x ∈ lows (typ i) (h i) (η i) (U i), ∀ y ∈ Formalism.WachCohomologyFacts.Top.GlobalTheory (w i) t, sg n l h i + 2 < |x - y|) ∧
    Formalism.WachCohomologyFacts.V2.ResidueAvoidance l (typ i) (h i) (η i) (sg n l h i) (U i)

def jTil {n : ℕ} (U : ZMod n → Multiset ℤ) (w : ZMod n → ℕ) (t : ℕ) (i : ZMod n) (a : ℤ) : ℤ :=
  ((U i).count a : ℤ) + if (w i : ℤ) ≤ a ∧ a ≤ (w i : ℤ) + t - 1 then 1 else 0

section Core

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [Algebra O LL]

def Over {n : ℕ} (emb₀ : ZMod n → (K₀ →ₐ[Qp] LL)) (i : ZMod n) (τ : K →ₐ[Qp] LL) : Prop :=
  τ.comp (IsScalarTower.toAlgHom Qp K₀ K) = emb₀ i

def charL (χ : G →* Oˣ) : G →* LLˣ := (Units.map (algebraMap O LL).toMonoidHom).comp χ

def resPoly {V : Type} [AddCommGroup V] [Module LL V] [FiniteDimensional LL V]
    (ρ : Representation LL G V) (χ : ℕ → G →* Oˣ) (t : ℕ) (g : G) : Polynomial LL :=
  LinearMap.charpoly (ρ g) *
    ∏ c ∈ Finset.Icc 1 t, (Polynomial.X - Polynomial.C (((charL (LL := LL) (χ c) g : LLˣ)) : LL))

variable {n : ℕ}

def IsFull (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (lam : O) (jT : ZMod n → ℤ → ℤ) (cT : G → Polynomial LL)
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [FiniteDimensional LL V] [TopologicalSpace V] (ρ : Representation LL G V) : Prop :=
  (∀ x, Continuous fun g => ρ g x) ∧ IsCrys PD ρ ∧ (∀ i τ, Over emb i τ → ∀ a, multV PD ρ τ a = jT i a) ∧
    ∀ g k, ∃ y : O, (LinearMap.charpoly (ρ g) - cT g).coeff k = algebraMap O LL (lam * y)

structure FullRep (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (lam : O) (jT : ZMod n → ℤ → ℤ)
    (cT : G → Polynomial LL) where
  V : Type
  [acg : AddCommGroup V]
  [modL : Module LL V]
  [modQ : Module Qp V]
  [towQ : IsScalarTower Qp LL V]
  [modO : Module O V]
  [towO : IsScalarTower O LL V]
  [fd : FiniteDimensional LL V]
  [top : TopologicalSpace V]
  [mt : IsModuleTopology LL V]
  ρ : Representation LL G V
  full : IsFull PD emb lam jT cT ρ

attribute [instance] FullRep.acg FullRep.modL FullRep.modQ FullRep.towQ FullRep.modO FullRep.towO
  FullRep.fd FullRep.top FullRep.mt

variable {PD}

def piRep {emb : ZMod n → (K₀ →ₐ[Qp] LL)} {lam : O} {jT : ZMod n → ℤ → ℤ} {cT : G → Polynomial LL}
    {m : ℕ} (F : Fin m → FullRep PD emb lam jT cT) : Representation LL G (∀ j, (F j).V) where
  toFun g := LinearMap.pi fun j => ((F j).ρ g).comp (LinearMap.proj j)
  map_one' := by ext x j; simp
  map_mul' g h := by ext x j; simp

variable (PD)

def AdmQ (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (lam : O) (jT : ZMod n → ℤ → ℤ) (cT : G → Polynomial LL)
    {E : Type} [AddCommGroup E] [Module O E] (act : G → E → E) (S : Submodule O E) : Prop :=
  ∃ (m : ℕ) (F : Fin m → FullRep PD emb lam jT cT) (L₁ L₂ : Lattice (O := O) (piRep F)),
    L₂.T ≤ L₁.T ∧ ∃ e : (E ⧸ S) ≃ₗ[O] (↥L₁.T ⧸ L₂.T.comap L₁.T.subtype),
      ∀ (g : G) (x : E) (y : ↥L₁.T), e (Submodule.Quotient.mk x) = Submodule.Quotient.mk y →
        e (Submodule.Quotient.mk (act g x)) = Submodule.Quotient.mk ⟨piRep F g y, L₁.stable g y y.2⟩

end Core

end Formalism.MainNotions.tableLineDegreeTwo

namespace Formalism.MainNotions.tableLineDegreeTwo

open Formalism.WeaklyAdmissibleFiltrations

section Coh

variable {G : Type} [Group G] [TopologicalSpace G]
    {Qp : Type} [Field Qp] {LL : Type} [Field LL] [Algebra Qp LL]
    {O : Type} [CommRing O] [Algebra O LL]
    {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [Module O V] [IsScalarTower O LL V] {ρ : Representation LL G V}

def actTw (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (g : G) : (↥L.T ⊗[O] X) →ₗ[O] (↥L.T ⊗[O] X) :=
  (((χ₁ g)⁻¹ : Oˣ) : O) • (actT L g).rTensor X

def IsCoc (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (z : G → ↥L.T ⊗[O] X) : Prop :=
  IsLocallyConstant z ∧ ∀ g h, z (g * h) = z g + actTw L X χ₁ g (z h)

def IsCob (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (z : G → ↥L.T ⊗[O] X) : Prop :=
  ∃ m, ∀ g, z g = actTw L X χ₁ g m - m

def IsUnr (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (I : Subgroup G) (z : G → ↥L.T ⊗[O] X) : Prop :=
  ∃ m, ∀ g ∈ I, z g = actTw L X χ₁ g m - m

def actExt (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (z : G → ↥L.T ⊗[O] X) (g : G) (p : (↥L.T ⊗[O] X) × O) : (↥L.T ⊗[O] X) × O :=
  ((actT L g).rTensor X p.1 + p.2 • (((χ₁ g : Oˣ) : O) • z g), ((χ₁ g : Oˣ) : O) * p.2)

def kerExt (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (lam : O) (a : ℕ) :
    Submodule O ((↥L.T ⊗[O] X) × O) :=
  Submodule.prod ⊥ (Ideal.span {lam ^ a})

def InHfX [TopologicalSpace V] [ContinuousAdd V] [ContinuousConstSMul LL V]
    {K₀ K : Type} [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR) {ρ' : Representation LL G V}
    (L : Lattice (O := O) ρ) (L' : Lattice (O := O) ρ') (X : Type) [AddCommGroup X] [Module O X]
    (χ₁ : G →* Oˣ) (z : G → ↥L.T ⊗[O] X) : Prop :=
  ∃ (k : ℕ) (c : Fin k → G → ↥L.T) (x : Fin k → X) (m : ↥L.T ⊗[O] X),
    (∀ j, (fun g => (c j g : V)) ∈ latticeFiniteCocycles PD L') ∧
      ∀ g, z g = ∑ j, c j g ⊗ₜ[O] x j + (actTw L X χ₁ g m - m)

end Coh

end Formalism.MainNotions.tableLineDegreeTwo

namespace Formalism.MainNotions.tableLineDegreeTwo

open Formalism.WeaklyAdmissibleFiltrations

section Top

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [Algebra O LL] {n : ℕ}

def IsAdmCoc (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (lam : O) (jT : ZMod n → ℤ → ℤ)
    (cT : G → Polynomial LL) {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V]
    [IsScalarTower Qp LL V] [Module O V] [IsScalarTower O LL V] {ρ : Representation LL G V}
    (L : Lattice (O := O) ρ) (X : Type) [AddCommGroup X] [Module O X] (χ₁ : G →* Oˣ)
    (z : G → ↥L.T ⊗[O] X) : Prop :=
  ∃ a₀ : ℕ, ∀ a ≥ a₀, (∀ x : X, lam ^ a • x = 0) →
    AdmQ PD emb lam jT cT (actExt L X χ₁ z) (kerExt L X lam a)

def TopHyp (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (t : ℕ) (h w η : ZMod n → ℕ) (typ : ZMod n → Bool)
    (U : ZMod n → Multiset ℤ) {V : Type} [AddCommGroup V] [Module LL V] [Module Qp V]
    [IsScalarTower Qp LL V] [FiniteDimensional LL V] [TopologicalSpace V]
    (ρ : Representation LL G V) (χ : ℕ → G →* Oˣ) : Prop :=
  1 ≤ t ∧ PositionHyps PD.p n t h w η typ U ∧
    (∀ x, Continuous fun g => ρ g x) ∧ IsCrys PD ρ ∧ (∀ i τ, Over emb i τ → ∀ a, multV PD ρ τ a = (U i).count a) ∧
    ∀ c ∈ Finset.Icc 1 t,
      (∀ g, charL (LL := LL) (χ c) g = charL (χ 1) g * Formalism.MainNotions.N.cycLL PD LL g ^ (-((c : ℤ) - 1))) ∧
      Continuous (fun g => ((charL (LL := LL) (χ c) g : LLˣ) : LL)) ∧
      IsCrys PD (charRep (charL (LL := LL) (χ c))) ∧
      ∀ i τ, Over emb i τ → ∀ a, multV PD (charRep (charL (LL := LL) (χ c))) τ a =
        if a = (w i : ℤ) + c - 1 then 1 else 0

def TopCore (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (lam : O) (I : Subgroup G) : Prop :=
  5 ≤ PD.p →
  ∀ (t : ℕ) (h w η : ZMod n → ℕ) (typ : ZMod n → Bool) (U : ZMod n → Multiset ℤ)
    (V : Type) [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V] [Module O V]
    [IsScalarTower O LL V] [FiniteDimensional LL V] [TopologicalSpace V] [IsModuleTopology LL V]
    [ContinuousAdd V] [ContinuousConstSMul LL V]
    (ρ : Representation LL G V) (T₀ : Lattice (O := O) ρ) (χ : ℕ → G →* Oˣ),
    TopHyp PD emb t h w η typ U ρ χ →
    ∀ (X : Type) [AddCommGroup X] [Module O X] [Finite X],
      (∀ (ρ' : Representation LL G V) (T₀' : Lattice (O := O) ρ'),
          (∀ g, ρ' g = ((charL (LL := LL) (χ 1) g)⁻¹ : LLˣ).val • ρ g) → T₀'.T = T₀.T →
          ∀ z, IsCoc T₀ X (χ 1) z →
            (IsAdmCoc PD emb lam (jTil U w t) (resPoly ρ χ t) T₀ X (χ 1) z ↔
              InHfX PD T₀ T₀' X (χ 1) z)) ∧
      (∀ c ∈ Finset.Icc 2 t, ∀ Lc : Lattice (O := O) (charRep (charL (LL := LL) (χ c))),
          ∀ z, IsCoc Lc X (χ 1) z →
            (IsAdmCoc PD emb lam (jTil U w t) (resPoly ρ χ t) Lc X (χ 1) z ↔ IsCob Lc X (χ 1) z)) ∧
      (∀ L₁ : Lattice (O := O) (charRep (charL (LL := LL) (χ 1))),
          ∀ z, IsCoc L₁ X (χ 1) z →
            (IsAdmCoc PD emb lam (jTil U w t) (resPoly ρ χ t) L₁ X (χ 1) z ↔ IsUnr L₁ X (χ 1) I z))

end Top

end Formalism.MainNotions.tableLineDegreeTwo

namespace Formalism.MainNotions.tableLineDegreeTwo

open Formalism.WeaklyAdmissibleFiltrations

section Lit

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    (PD : PeriodData G Qp K₀ K B BdR)
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL] [IsTopologicalRing LL]
    {O : Type} [CommRing O] [Algebra O LL] {n : ℕ}

def BlochKatoJumpDimension (I : Subgroup G) : Prop :=
  (∀ (V : Type) [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
      [FiniteDimensional LL V] [TopologicalSpace V] [IsModuleTopology LL V] [IsTopologicalAddGroup V]
      [ContinuousConstSMul LL V] (ρ : Representation LL G V),
      (∀ x, Continuous fun g => ρ g x) → IsCrys PD ρ →
      (finrank LL (FiniteCohomology PD ρ) : ℤ) =
        finrank LL ↥(H0V ρ) + ∑ᶠ (τ : K →ₐ[Qp] LL), ∑ᶠ (a : ℤ) (_ : a < 0), multV PD ρ τ a) ∧
  (∀ (V : Type) [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
      [Module O V] [IsScalarTower O LL V] [FiniteDimensional LL V] [TopologicalSpace V]
      [IsModuleTopology LL V] [ContinuousAdd V] [ContinuousConstSMul LL V]
      (ρ : Representation LL G V) (L : Lattice (O := O) ρ),
      (∀ x, Continuous fun g => ρ g x) → IsCrys PD ρ →
      ∀ (κ : LatticeCohomology L) (a : O), a ≠ 0 → a • κ ∈ latticeFiniteCohomology PD L → κ ∈ latticeFiniteCohomology PD L) ∧
  UnrTriv PD (LL := LL) I

def B3 (emb : ZMod n → (K₀ →ₐ[Qp] LL)) (I : Subgroup G) : Prop :=
  (∀ a : ZMod n → ℤ, ∃ χ : G →* Oˣ, Continuous (fun g => ((charL (LL := LL) χ g : LLˣ) : LL)) ∧
      IsCrys PD (charRep (charL (LL := LL) χ)) ∧
      ∀ i τ, Over emb i τ → ∀ b, multV PD (charRep (charL (LL := LL) χ)) τ b = if b = a i then 1 else 0) ∧
  ∀ (V : Type) [AddCommGroup V] [Module LL V] [Module Qp V] [IsScalarTower Qp LL V]
    [FiniteDimensional LL V] [TopologicalSpace V] [IsModuleTopology LL V]
    (ρ ρ' : Representation LL G V) (μ : G →* LLˣ),
    (∀ x, Continuous fun g => ρ g x) → IsCrys PD ρ → Continuous (fun g => ((μ g : LLˣ) : LL)) →
    (∀ g ∈ I, μ g = 1) → (∀ g, ρ' g = ((μ g : LLˣ) : LL) • ρ g) →
    IsCrys PD ρ' ∧ ∀ τ a, multV PD ρ' τ a = multV PD ρ τ a

end Lit

end Formalism.MainNotions.tableLineDegreeTwo

namespace Formalism.MainNotions.tableLineDegreeTwo

open Formalism.WeaklyAdmissibleFiltrations Formalism.BasicNotions Formalism.BasicNotions.Loc

section Herr

variable {G : Type} [Group G] [TopologicalSpace G] {Qp K₀ K : Type} [Field Qp] [Field K₀] [Field K]
    [Algebra Qp K₀] [Algebra Qp K] [Algebra K₀ K] [IsScalarTower Qp K₀ K]
    {B BdR : Type} [CommRing B] [CommRing BdR] [Algebra Qp B] [Algebra K₀ B] [IsScalarTower Qp K₀ B]
    [Algebra Qp BdR] [Algebra K₀ BdR] [Algebra K BdR] [IsScalarTower Qp K BdR]
    [IsScalarTower K₀ K BdR] [IsScalarTower Qp K₀ BdR]
    {PD : PeriodData G Qp K₀ K B BdR}
    {LL : Type} [Field LL] [Algebra Qp LL] [TopologicalSpace LL]
    {O : Type} [CommRing O] [Algebra O LL] {v : AddValuation LL (WithTop ℚ)} {n : ℕ}

def invariantLattice (T : LocLat G Qp LL O) : Submodule O ↥T.L.T :=
  ⨅ g : G, LinearMap.ker (actT T.L g - LinearMap.id)

def fixDD (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) : Submodule O (W.DD T) :=
  LinearMap.ker (W.φD T - LinearMap.id) ⊓ LinearMap.ker (W.γD T W.gamK - LinearMap.id) ⊓
    ⨅ δ ∈ W.DelF, LinearMap.ker (W.γD T δ - LinearMap.id)

abbrev CocΔ (W : LocWach PD LL O v n) (T : LocLat G Qp LL O) : Submodule O (W.DD T × W.DD T) :=
  herrZ1Δ (W.γD T W.gamK) (W.φD T) W.DelF (W.γD T)

def HerrExt (W : LocWach PD LL O v n) {RA RW : Type} [CommRing RA] [CommRing RW] [Algebra O RA]
    [Algebra O RW] {inclR : RA →ₐ[O] RW} {φR : RW →ₐ[O] RW} {gR : G → (RW →ₐ[O] RW)} {πA : RA}
    (E : EtTie W RA RW inclR φR gR πA) : Prop :=
  (∀ u : ↥W.one.L.T, ∃ e₀ ∈ fixDD W W.one, E.jD W.one e₀ = (1 : RW) ⊗ₜ[O] u) ∧
  ∀ (T Tp : LocLat G Qp LL O) (ι : LatHom T.L Tp.L) (π : LatHom Tp.L W.one.L),
    IsSESLat (Qp := Qp) (O := O) ι π →
    ∀ (x : ↥Tp.L.T) (u : ↥W.one.L.T), (u : W.one.V) = π.f (x : Tp.V) →
    ∀ e : W.DD Tp, (∀ δ ∈ W.DelF, W.γD Tp δ e = e) → E.jD W.one (W.map π e) = (1 : RW) ⊗ₜ[O] u →
    ∀ p : ↥(CocΔ W T), W.map ι (p : W.DD T × W.DD T).1 = W.φD Tp e - e →
      W.map ι (p : W.DD T × W.DD T).2 = W.γD Tp W.gamK e - e →
      ∃ c : ↥(latticeCocycles T.L), Submodule.Quotient.mk c = W.clK T p ∧
        ∀ g, ι.f ((c : G → T.V) g) = Tp.ρ g (x : Tp.V) - (x : Tp.V)

end Herr

def TopTheoremLocal (LT : LocTheory) (A : ∀ (l : ℕ) [Fact l.Prime], LocAinf l (LT l)) (HW : HWOf LT) (F : FonOf LT A HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hA : CaseA K LL) (lam : ↥(OL LL)), Irreducible lam →
    TopCore ((LT l).PD K) ((HW l).W K 1 LL hA.2.2).emb lam (IK K)

def aux₃ (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := TopTheoremLocal D.loc D.locA HW F

def adm1 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.WachLatticeFreeGlobal D HW F

def adm2 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P2 D HW F

def adm3 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P3 D HW F Cm

def ArchimedeanSignatureMatching (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P4 D HW F Cm

def adm5 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P5 D HW F

def adm6 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P6 D HW F

def adm7 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P7 D HW F

def adm8 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P8 D HW F

def adm9 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.P9 D HW F

def adm10 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.WachCharacterisation D HW F

def adm11 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.gammaSemisimpleQuotientGlobal D HW F

def adm12 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.Pr2a D HW F

def adm13 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.Pr2b D HW F

def adm14 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.Pr2c D HW F

def adm15 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.Pr2d D HW F

def adm18 (_D : D7) : Prop := Formalism.GaloisCohomology.LocalTateDualityK ∧ Formalism.GaloisCohomology.LocalEulerCharK

def adm19 (D : D7) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l), CaseA K LL →
    BlochKatoJumpDimension ((D.loc l).PD K) (LL := ↥LL.1) (O := ↥(OL LL)) (IK K)

def adm20 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (K LL : FinExt l) (hA : CaseA K LL),
    B3 ((D.loc l).PD K) (O := ↥(OL LL)) ((HW l).W K 1 LL hA.2.2).emb (IK K)

def adm23 (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.p1eL D.loc D.locA HW F

def FrobeniusExpansionCongruence (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) : Prop := Formalism.MainNotions.DeltaInvariantLattices.p5eL D.loc D.locA HW F

def admitted (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop :=
  adm1 D HW F ∧ adm2 D HW F ∧ adm3 D HW F Cm ∧ ArchimedeanSignatureMatching D HW F Cm ∧ adm5 D HW F ∧ adm6 D HW F ∧ adm7 D HW F ∧ adm8 D HW F ∧ adm9 D HW F ∧ adm10 D HW F ∧
    adm11 D HW F ∧ adm12 D HW F ∧ adm13 D HW F ∧ adm14 D HW F ∧ adm15 D HW F ∧ adm18 D ∧ adm19 D ∧
    adm20 D HW F ∧ adm23 D HW F ∧ FrobeniusExpansionCongruence D HW F

def Stmt (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (Cm : CmpOf D.loc D.locA HW F) : Prop := admitted D HW F Cm → aux₃ D HW F

theorem ainf_clauses_of_theorem (D : D7) (HW : HWOf D.loc) (F : FonOf D.loc D.locA HW) (h : Formalism.MainNotions.DeltaInvariantLattices.ConclusionE D HW F) : adm23 D HW F ∧ FrobeniusExpansionCongruence D HW F := ⟨h.1, h.2⟩

end Formalism.MainNotions.tableLineDegreeTwo
