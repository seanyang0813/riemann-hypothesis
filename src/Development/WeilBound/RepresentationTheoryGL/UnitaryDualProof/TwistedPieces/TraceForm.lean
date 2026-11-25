module

public import Development.WeilBound.RepresentationTheoryGL.UnitaryDualProof.CompactOrbits.LocStep
public import Development.WeilBound.RepresentationTheoryGL.UnitaryDualProof.CompactOrbits.BaseOrbits

@[expose] public section

section
noncomputable section

open Matrix Polynomial GroundTheory.Automorphic.Whittaker

namespace PositivityTheory.RgUd.TP

open PositivityTheory.RgUd.T

abbrev Mat (k : Type*) (n : ℕ) := Matrix (Fin n) (Fin n) k
abbrev SubMat (k : Type) [Field k] (n : ℕ) := Subalgebra k (Matrix (Fin n) (Fin n) k)
abbrev LF (k : Type) [Field k] (n : ℕ) := (Sp k n → ℂ) →ₗ[ℂ] ℂ

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}

def FibVan (Z : SubMat k n) (F : Set (Mat k n)) : Prop :=
  ∀ ξ : LF k n, Supp ξ (F ×ˢ Set.univ) → Inv Z ξ → Kills ξ {p | p.2 ≠ 0}

def NB (Z : SubMat k n) : Set (Mat k n) := {x | x ∈ Bz Z ∧ IsNilpotent x}

def IsPieces (Z : SubMat k n) (χ : k[X]) {m : ℕ} (F : Fin m → Set (Mat k n)) : Prop :=
  (∀ i, IsClosed (F i) ∧ F i ⊆ Bz Z ∧ ∀ g ∈ Gz Z, ∀ x ∈ F i, g.val * x * g⁻¹.val ∈ F i) ∧
    (∀ i j, i ≠ j → Disjoint (F i) (F j)) ∧ ∀ x ∈ Bz Z, x.charpoly = χ → ∃ i, x ∈ F i

variable (k)

def TraceForm : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z → ∃ τ : Mat k n →ₗ[k] k,
    (∀ x ∈ Bz Z, ∀ y ∈ Bz Z, τ (x * y) = τ (y * x)) ∧ (∀ x ∈ Bz Z, (∀ y ∈ Bz Z, τ (x * y) = 0) → x = 0) ∧
      ∀ x ∈ NB Z, τ x = 0

def Desc : Prop :=
  ∃ μ : ∀ n : ℕ, SubMat k n → ℕ,
    ∀ (n : ℕ) (Z : SubMat k n), CR Z → ∀ χ : k[X],
      ∃ (m : ℕ) (F : Fin m → Set (Mat k n)), IsPieces Z χ F ∧ ∀ i,
        (∃ c ∈ Z, ∀ x ∈ F i, IsNilpotent (x - c)) ∨
        ((∀ (n' : ℕ) (Z' : Subalgebra k (Matrix (Fin n') (Fin n') k)), CR Z' → μ n' Z' < μ n Z → Van Z') → FibVan Z (F
          i))

def LocOff : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z →
    (∀ χ : k[X], ∃ (m : ℕ) (F : Fin m → Set (Mat k n)), IsPieces Z χ F ∧ ∀ i,
      (∃ c ∈ Z, ∀ x ∈ F i, IsNilpotent (x - c)) ∨ FibVan Z (F i)) →
    ∀ ξ : LF k n, Supp ξ (Bz Z ×ˢ Set.univ) → Inv Z ξ → ∀ U : Set (Sp k n), IsOpen U →
      (∀ p ∈ U, p.2 ≠ 0 ∧ p.1 ∉ ZN Z ∩ Bz Z) → Kills ξ U

def LocAll : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z →
    (∀ χ : k[X], ∃ (m : ℕ) (F : Fin m → Set (Mat k n)), IsPieces Z χ F ∧ ∀ i, FibVan Z (F i)) → Van Z

def Transl : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z → FibVan Z (NB Z) → ∀ c ∈ Z,
    ∀ F : Set (Mat k n), F ⊆ Bz Z → (∀ x ∈ F, IsNilpotent (x - c)) → FibVan Z F

def NilCore : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z →
    (∀ ξ : LF k n, Supp ξ (Bz Z ×ˢ Set.univ) → Inv Z ξ → ∀ U : Set (Sp k n), IsOpen U →
      (∀ p ∈ U, p.2 ≠ 0 ∧ p.1 ∉ ZN Z ∩ Bz Z) → Kills ξ U) → FibVan Z (NB Z)

end PositivityTheory.RgUd.TP
end
end

section
noncomputable section

open Matrix Polynomial GroundTheory.Automorphic.Whittaker

namespace PositivityTheory.RgUd.TP.Loc

open PositivityTheory.RgUd.T PositivityTheory.RgUd.TP

variable (k : Type) [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k]

def Split : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n) {m : ℕ} (F : Fin m → Set (Mat k n)),
    (∀ i, IsClosed (F i) ∧ ∀ g ∈ Gz Z, ∀ x ∈ F i, g.val * x * g⁻¹.val ∈ F i) → (∀ i j, i ≠ j → Disjoint (F i) (F j)) →
    ∀ ξ : LF k n, Supp ξ ((⋃ i, F i) ×ˢ Set.univ) → Inv Z ξ →
      ∃ η : Fin m → LF k n, (∀ i, Supp (η i) (F i ×ˢ Set.univ) ∧ Inv Z (η i)) ∧
        ∀ f ∈ supportedIn (Set.univ : Set (Sp k n)), ξ f = ∑ i, η i f

def LocChi : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n) (U : Set (Sp k n)), IsOpen U →
    (∀ χ : k[X], ∀ ξ : LF k n, Supp ξ ((Bz Z ∩ {x | x.charpoly = χ}) ×ˢ Set.univ) → Inv Z ξ → Kills ξ U) →
    ∀ ξ : LF k n, Supp ξ (Bz Z ×ˢ Set.univ) → Inv Z ξ → Kills ξ U

end PositivityTheory.RgUd.TP.Loc
end
end

section
noncomputable section

open Matrix GroundTheory.Automorphic.Whittaker GlobalTheory.SplitWeil

namespace PositivityTheory.RgUd.TP.Nil

open PositivityTheory.RgUd.T PositivityTheory.RgUd.T.Nil PositivityTheory.RgUd.TP

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}

def hom (t : kˣ) (p : Sp k n) : Sp k n := ((t : k) • p.1, p.2)

def pullH (t : kˣ) : (LF k n) →ₗ[ℂ] (LF k n) where
  toFun ξ := ξ ∘ₗ LinearMap.funLeft ℂ ℂ (hom t)
  map_add' _ _ := rfl
  map_smul' _ _ := rfl

def polyH (t : kˣ) (a : List ℝ) : Module.End ℂ (LF k n) :=
  (a.map fun x => pullH t - ((((nabs k t)⁻¹ : ℝ) ^ x : ℝ) : ℂ) • LinearMap.id).prod

def SuppU (ξ : LF k n) (C : Set (Sp k n)) : Prop :=
  ∀ f ∈ supportedIn (UU : Set (Sp k n)), (∀ p ∈ C, f p = 0) → ξ f = 0

def InvU (Z : SubMat k n) (ξ : LF k n) : Prop :=
  ∀ g ∈ Gz Z, ∀ f ∈ supportedIn (UU : Set (Sp k n)), ξ (fun p => f (act g p)) = ξ f

def TranslInv (Z : SubMat k n) (ξ : LF k n) : Prop :=
  ∀ z ∈ Z, ∀ f ∈ supportedIn (Set.univ : Set (Sp k n)), ξ (fun p => f (p.1 + z, p.2)) = ξ f

def dB (Z : SubMat k n) : ℕ :=
  Module.finrank k (Subalgebra.centralizer k (Z : Set (Mat k n)))

variable (k)

def FourQ : Prop :=
  TraceForm k → ∀ (n : ℕ) (Z : SubMat k n), CR Z →
    ∃ 𝓕 : (LF k n) →ₗ[ℂ] (LF k n),
      (∀ ξ, Supp ξ (Bz Z ×ˢ Set.univ) → Supp (𝓕 ξ) (Bz Z ×ˢ Set.univ)) ∧
      (∀ ξ, Supp ξ (Bz Z ×ˢ Set.univ) → Inv Z ξ → Inv Z (𝓕 ξ)) ∧
      (∀ ξ, Supp ξ (Bz Z ×ˢ Set.univ) → (Kills ξ UU ↔ Kills (𝓕 ξ) UU)) ∧
      (∀ ξ, (∀ f ∈ supportedIn (Set.univ : Set (Sp k n)), ξ f = 0) →
        ∀ f ∈ supportedIn (Set.univ : Set (Sp k n)), 𝓕 ξ f = 0) ∧
      (∀ (t : kˣ) ξ, Supp ξ (Bz Z ×ˢ Set.univ) → ∀ f ∈ supportedIn (Set.univ : Set (Sp k n)),
        𝓕 (pullH t ξ) f = ((((nabs k t)⁻¹ ^ dB Z : ℝ)) : ℂ) * pullH t⁻¹ (𝓕 ξ) f) ∧
      ∀ ξ, Supp ξ (NB Z ×ˢ Set.univ) → TranslInv Z (𝓕 ξ)

def OrbQ : Prop :=
  TraceForm k → PositivityTheory.RgUd.T.Desc.SLF.Unimod (k := k) → ∀ (n : ℕ) (Z : SubMat k n), CR Z →
    0 < dB0 Z → ∀ t : kˣ, nabs k t < 1 → ∃ a : List ℝ, (∀ x ∈ a, 2 * x < dB0 Z) ∧
      ∀ ξ : LF k n, SuppU ξ (NB Z ×ˢ Set.univ) → InvU Z ξ → Kills (polyH t a ξ) UU

def FibQ : Prop :=
  ∀ (n : ℕ) (Z : SubMat k n), CR Z → ∀ η : LF k n,
    Supp η (Bz Z ×ˢ Set.univ) → Inv Z η → TranslInv Z η → SuppU η ((ZN Z ∩ Bz Z) ×ˢ Set.univ) →
    ∃ η' : LF k n, SuppU η' (NB Z ×ˢ Set.univ) ∧ InvU Z η' ∧
      ∀ t : kˣ, nabs k t < 1 → ∀ a : List ℝ, Kills (polyH t a η') UU →
        Kills (polyH t (a.map (· + (Module.finrank k Z : ℝ))) η) UU

end PositivityTheory.RgUd.TP.Nil

end
end

section
noncomputable section

open Matrix Polynomial GroundTheory.Automorphic.Whittaker

namespace PositivityTheory.RgUd.TP.Desc

open PositivityTheory.RgUd.T PositivityTheory.RgUd.TP

variable {k : Type} [Field k] [ValuativeRel k] [TopologicalSpace k] [IsNonarchimedeanLocalField k] {n : ℕ}

def primIdem (Z : SubMat k n) : Set (Mat k n) :=
  {e | e ∈ Z ∧ IsIdempotentElem e ∧ e ≠ 0 ∧ ∀ f ∈ Z, IsIdempotentElem f → f * e = f → f = 0 ∨ f = e}

def cenSub (Z : SubMat k n) : Submodule k (Mat k n) :=
  (Subalgebra.centralizer k (Z : Set (Mat k n))).toSubmodule

def mu (Z : SubMat k n) : ℕ :=
  ∑ᶠ e ∈ primIdem Z, Module.finrank k ((cenSub Z).map (LinearMap.mulLeft k e)) /
    Module.finrank k (Z.toSubmodule.map (LinearMap.mulLeft k e))

def Good (Z : SubMat k n) (F : Set (Mat k n)) : Prop :=
  (∃ c ∈ Z, ∀ x ∈ F, IsNilpotent (x - c)) ∨
    ∃ (N : ℕ) (S : SubMat k N), CR S ∧ mu S < mu Z ∧ (Van S → FibVan Z F)

def HasRoots (Z : SubMat k n) (q : ℕ) : Prop := ∀ a : k, ∃ w ∈ Z, w ^ q = algebraMap k _ a

def NilBound (Z : SubMat k n) (q : ℕ) : Prop := ∀ y ∈ Bz Z, IsNilpotent y → y ^ q = 0

variable (k)

def Restr : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] [CharP k p] (n : ℕ) (Z : SubMat k n), CR Z →
    ∃ (N q : ℕ) (Z' : SubMat k N), CR Z' ∧ mu Z' = mu Z ∧ (∃ c : ℕ, q = p ^ c) ∧
      HasRoots Z' q ∧ NilBound Z' q ∧ ∀ χ : k[X], ∃ l : List k[X],
        (∀ χ' ∈ l, ∃ (m : ℕ) (F' : Fin m → Set (Mat k N)), IsPieces Z' χ' F' ∧ ∀ i, Good Z' (F' i)) →
        ∃ (m : ℕ) (F : Fin m → Set (Mat k n)), IsPieces Z χ F ∧ ∀ i, Good Z (F i)

def PieceGood : Prop :=
  ∀ (p : ℕ) [Fact p.Prime] [CharP k p], PositivityTheory.RgUd.T.Desc.SLF.Unimod (k := k) →
    ∀ (N q : ℕ) (Z : SubMat k N), CR Z → (∃ c : ℕ, q = p ^ c) → HasRoots Z q →
      NilBound Z q → ∀ χ : k[X], ∃ (m : ℕ) (F : Fin m → Set (Mat k N)), IsPieces Z χ F ∧ ∀ i, Good Z (F
        i)

end PositivityTheory.RgUd.TP.Desc
end
end
