module

public import Formalism.LocalToGlobal.ProjectiveLattices.NonnegIffOfLiesTotal
public import Formalism.LocalToGlobal.ProjectiveLattices.PetersonNormSubspace
import Formalism.LocalToGlobal.Divisibility.Frames

@[expose] public section

open Module NumberField IsDedekindDomain MeasureTheory
open scoped Matrix

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Rec.Lat

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Pj ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.FD

section BC

variable {K L Rl : Type} [Field K] [Field L] [AddCommGroup Rl] [Module K Rl]




variable (φ : K →+* L)


end BC

section OLat

variable {K Rl : Type} [Field K] [NumberField K] [CommRing Rl] [Algebra K Rl] [Algebra (𝓞 K) Rl] [IsScalarTower (𝓞 K) K Rl]

def supLat (C : Submodule K Rl) (Vs : HeightOneSpectrum (𝓞 K) → Set (Rl → EReal)) (hV : ∀ la, ∀ v ∈ Vs la, IsVal la v) :
    Submodule (𝓞 K) Rl :=
  (latOf C Vs hV).map (C.subtype.restrictScalars (𝓞 K))

theorem mem_supLat (C : Submodule K Rl) (Vs : HeightOneSpectrum (𝓞 K) → Set (Rl → EReal)) (hV : ∀ la, ∀ v ∈ Vs la, IsVal la v)
    (f : Rl) : f ∈ supLat C Vs hV ↔ f ∈ C ∧ ∀ la, ∀ v ∈ Vs la, 0 ≤ v f := by
  constructor
  · rintro ⟨x, hx, rfl⟩
    exact ⟨x.2, hx⟩
  · rintro ⟨hf, h⟩
    exact ⟨⟨f, hf⟩, h, rfl⟩

end OLat

section SecZ

variable {K : Type} [Field K] {ι : Type} [Fintype ι]
variable (pts : ∀ (S : Type) [CommRing S] [Algebra K S], Type)
variable (mapR : ∀ {S T : Type} [CommRing S] [Algebra K S] [CommRing T] [Algebra K T],
  (S →ₐ[K] T) → pts S → pts T → Prop)
variable (borR : ∀ {S : Type} [CommRing S] [Algebra K S], (ι → Sˣ) → pts S → pts S → Prop)

def secWZ (e : ι → ℤ) : Submodule K (Rules pts) where
  carrier := {f | IsNatural pts mapR f ∧ ∀ (p : TRing K) (t : ι → (p.R)ˣ) (y y' : pts p.R), borR t y y' →
      f p y' = ((∏ i, t i ^ e i : (p.R)ˣ) : p.R) * f p y}
  zero_mem' := ⟨fun p q φ y z _ => by simp, fun p t y y' _ => by simp⟩
  add_mem' := fun {f g} hf hg =>
    ⟨fun p q φ y z h => by simp [hf.1 p q φ y z h, hg.1 p q φ y z h],
     fun p t y y' h => by simp [hf.2 p t y y' h, hg.2 p t y y' h, mul_add]⟩
  smul_mem' := fun c f hf =>
    ⟨fun p q φ y z h => by simp [hf.1 p q φ y z h],
     fun p t y y' h => by simp [hf.2 p t y y' h]⟩

end SecZ

section Forms

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E} {Dw : Datum H} {l : Level H}

abbrev ExZ (E : Type) [Field E] : Type := (E →+* ℂ) × ℕ → ℤ

def exZ (Dw : Datum H) (a : ExZ E) (n : ℕ) : Ix Dw → ℤ
  | none => n
  | some x => a (x.1, x.2)

variable (Xo : Moduli Dw l) (c : Coeff l)

def secZ (a : ExZ E) (n : ℕ) : Submodule c.F (Rul Xo c) :=
  secWZ (K := c.F) (fun S _ _ => FrPt Xo c S) (fun φ y z => FrMap φ y z) (fun t y y' => FrBor t y y') (exZ Dw a n)

variable {Xo c} {r : ℕ}


open Classical in
def laZ {σ : c.F →+* ℂ} (U : Unf Xo c σ r) (a : ExZ E) (n : ℕ) (k : U.Comp) : Wt (U.X k).Ψ r :=
  fun τ j => if (U.X k).p0 ≤ (j : ℕ) then
      a (Function.invFun (relab c σ) τ.1, (j : ℕ) - (U.X k).p0) + ((n / 2 : ℕ) : ℤ)
    else -a (Function.invFun (relab c σ) (conjEmb τ.1), (U.X k).p0 - 1 - (j : ℕ)) - ((n / 2 : ℕ) : ℤ)

variable (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ r)

def cuspZ (a : ExZ E) (n : ℕ) : Submodule c.F (Rul Xo c) :=
  secZ Xo c a n ⊓ ⨅ (σ : c.F →+* ℂ) (_ : GoodEmb c σ), (holSub (U σ).X (laZ (U σ) a n)).comap (rdU (U σ))

def latZ (a : ExZ E) (n : ℕ) : Submodule (𝓞 c.F) (Rul Xo c) :=
  supLat (cuspZ U a n) (valSet Xo c (algCls Xo c)) fun la => isVal_valSet la

theorem mem_latZ (a : ExZ E) (n : ℕ) (f : Rul Xo c) :
    f ∈ latZ U a n ↔ f ∈ cuspZ U a n ∧ ∀ la, ∀ v ∈ valSet Xo c (algCls Xo c) la, 0 ≤ v f :=
  mem_supLat _ _ _ f

def lieZ (Dw : Datum H) (x : ℝ) (a : ExZ E) : ℝ :=
  Real.exp (-((∑ τ : E →+* ℂ, ∑ i : Fin (Dw.mult τ), (a (τ, i) : ℝ)) / 2) * Real.log (2 * Real.pi * x))

end Forms

section Pet

variable {D : D7} {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host D.host.E} {Dw : Datum H} {l : Level H} {Xo : Moduli Dw l} {c : Coeff l}
  (U : ∀ σ : c.F →+* ℂ, Unf Xo c σ D.R.r) (W : HSp D) (dict : ∀ σ : c.F →+* ℂ, GA D W → Σ k, Frame ((U σ).X k).Ψ D.R.r)


end Pet

end GlobalTheory.CompanionTheory.Ar.Rec.Lat
