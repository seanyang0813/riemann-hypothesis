module

import Formalism.LocalToGlobal.ProjectiveLattices.IntAllProof
public import Formalism.LocalToGlobal.ProjectiveLattices.CoreProofs
public import Formalism.LocalToGlobal.ProjectiveLattices.IntAllFree
public import Formalism.LocalToGlobal.ProjectiveLattices.ExistsOfValILeOne
import Mathlib.Tactic.Linter.HaveILetI
import Mathlib.Tactic.Linter.Style

@[expose] public section

noncomputable section

namespace Formalism.L2.PjFree

open Formalism.L2.Pj

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj NumberField IsDedekindDomain
open scoped WithZero
open ReciprocityTheory.ChartRestriction.G.Geo.Tor

section Dvr

variable {V K' : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Field K'] [Algebra V K']
  [IsFractionRing V K']

theorem mem_range_of_vV_nonneg {x : K'} (h : 0 ≤ vV V x) : x ∈ Set.range (algebraMap V K') :=
  _root_.Formalism.L2.Pj.mem_range_of_vV_nonneg h

end Dvr

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {Dw : Datum H} {l : Level H}

section Open

variable (Xo : Moduli Dw l) (c : Coeff l)

def FrBaseChg : Prop :=
  ∀ (S S' : Type) [Field S] [Field S'] [Algebra c.F S] [Algebra c.F S'] (φ : S →ₐ[c.F] S') (y : FrPt Xo c S),
    ∃ z : FrPt Xo c S', FrMap φ y z

def ReFrame : Prop :=
  ∀ (T : CDVR) (io : c.F →+* T.Fr), letI := io.toAlgebra
    ∀ (y0 : IntFr Xo c T io) (z : FrPt Xo c T.Fr), z.x = y0.1.x →
      ∃ (t : Ix Dw → T.Frˣ) (y' : IntFr Xo c T io), FrBor t z y'.1

def XoNumPt : Prop :=
  ∃ (L : Type) (_ : Field L) (_ : NumberField L) (j : c.F →+* L) (x : Sp L ⟶ Xo.X),
    (letI := j.toAlgebra; x ≫ Xo.s = sOf c L)

end Open

def LocFld : Prop :=
  ∀ (K L : Type) [Field K] [NumberField K] [Field L] [NumberField L] (j : K →+* L) (la : HeightOneSpectrum (𝓞 K)),
    ∃ (T : CDVR) (k : L →+* T.Fr) (e : ℕ), OverLa la T.V (k.comp j) e ∧ T.FinRes

section Proofs

variable {Xo : Moduli Dw l} {c : Coeff l}

private lemma vV_alg_nonneg_lemma {V K' : Type} [CommRing V] [IsDomain V] [IsDiscreteValuationRing V] [Field K']
    [Algebra V K'] [IsFractionRing V K'] (a : V) : 0 ≤ vV V (algebraMap V K' a) := by
  unfold vV valV
  by_cases ha : HeightOneSpectrum.valuation K' (IsDiscreteValuationRing.maximalIdeal V) (algebraMap V K' a) = 0
  · simp [ha]
  · have h1 : HeightOneSpectrum.valuation K' (IsDiscreteValuationRing.maximalIdeal V) (algebraMap V K' a) ≤ 1 := by
      first
        | exact HeightOneSpectrum.valuation_le_one _ a
    rw [← WithZero.exp_log ha, ← WithZero.exp_zero, WithZero.exp_le_exp] at h1
    linarith

theorem intAll_of (hE : IntFrExt Xo c) (hB : FrBaseChg Xo c) (hR : ReFrame Xo c) : IntAll Xo c :=
  _root_.Formalism.L2.Pj.intAll_of hE hB hR

theorem algPtLa_of (hN : XoNumPt Xo c) (hL : LocFld) : AlgPtLa Xo c :=
  _root_.Formalism.L2.Pj.algPtLa_of hN hL

end Proofs

section Frames

theorem isCombAt_unique {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X} {m : ℕ}
    {v : Fin m → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)} {a : Fin m → S}
    {w w' : Sp (DualNumber S) ⟶ Xo.univ.t.G.left} (h : IsCombAt x v a w) (h' : IsCombAt x v a w') : w = w' := by
  obtain ⟨u, hu, rfl⟩ := h
  obtain ⟨u', hu', rfl⟩ := h'
  have e : u = u' := funext fun i => Over.OverMorphism.ext ((hu i).trans (hu' i).symm)
  rw [e]

theorem spMap_comp' {A B C : Type} [CommRing A] [CommRing B] [CommRing C] (f : A →+* B) (g : B →+* C) :
    spMap g ≫ spMap f = spMap (g.comp f) := by
  show Spec.map _ ≫ Spec.map _ = Spec.map _
  rw [← Spec.map_comp]
  rfl

theorem epsMul_comp_alg {S : Type} [CommRing S] (a : S) :
    (epsMul a).comp (algebraMap S (DualNumber S)) = algebraMap S (DualNumber S) := by
  ext x <;> simp [epsMul]

def epsPt {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X}
    {v : Sp (DualNumber S) ⟶ Xo.univ.t.G.left} (hv : IsTanAt x v) (a : S) : tEps x ⟶ Xo.univ.t.G :=
  Over.homMk (spMap (epsMul a) ≫ v) (by
    rw [Category.assoc, hv.1, ← Category.assoc, spMap_comp', epsMul_comp_alg]
    rfl)

theorem epsPt_left {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X}
    {v : Sp (DualNumber S) ⟶ Xo.univ.t.G.left} (hv : IsTanAt x v) (a : S) :
    (epsPt hv a).left = spMap (epsMul a) ≫ v :=
  Over.homMk_left _ _

theorem isCombAt_exists {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X} {m : ℕ}
    {v : Fin m → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)} (hv : ∀ j, IsTanAt x (v j)) (a : Fin m → S) :
    ∃ w, IsCombAt x v a w :=
  ⟨_, fun i => epsPt (hv i) (a i), fun i => epsPt_left (hv i) (a i), rfl⟩

theorem isCombAt_epsPt {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X} {m : ℕ}
    {v : Fin m → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)} (hv : ∀ j, IsTanAt x (v j)) (a : Fin m → S) :
    IsCombAt x v a ((List.ofFn fun i => epsPt (hv i) (a i)).prod.left) :=
  ⟨fun i => epsPt (hv i) (a i), fun i => epsPt_left (hv i) (a i), rfl⟩

theorem epsPt_zero {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X}
    {v : Sp (DualNumber S) ⟶ Xo.univ.t.G.left} (hv : IsTanAt x v) : epsPt hv 0 = 1 :=
  _root_.Formalism.L2.Pj.epsPt_zero hv

theorem epsPt_one_left {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X}
    {v : Sp (DualNumber S) ⟶ Xo.univ.t.G.left} (hv : IsTanAt x v) : (epsPt hv 1).left = v :=
  _root_.Formalism.L2.Pj.epsPt_one_left hv

theorem isCombAt_single {S : Type} [CommRing S] {Xo : Moduli Dw l} {x : Sp S ⟶ Xo.X} {m : ℕ}
    {v : Fin m → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)} (hv : ∀ j, IsTanAt x (v j)) (j : Fin m) :
    IsCombAt x v (Pi.single j 1) (v j) :=
  _root_.Formalism.L2.Pj.isCombAt_single hv j

variable (Xo : Moduli Dw l) (c : Coeff l)

def TanLin : Prop :=
  ∀ (S : Type) [CommRing S] (x : Sp S ⟶ Xo.X) {m : ℕ} (v : Fin m → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)),
    (∀ j, IsTanAt x (v j)) →
      ∀ {m' : ℕ} (w : Fin m' → (Sp (DualNumber S) ⟶ Xo.univ.t.G.left)) (A : Matrix (Fin m) (Fin m') S)
        (N : Fin m' → S) (w' : Sp (DualNumber S) ⟶ Xo.univ.t.G.left),
        (∀ i, IsCombAt x v (fun j => A j i) (w i)) → IsCombAt x w N w' → IsCombAt x v (A.mulVec N) w'


variable {Xo c} in
def SClause {S : Type} [CommRing S] [Algebra c.F S] (a : S) (y y' : FrPt Xo c S) : Prop :=
  ∃ pm : Gx y'.x ⟶ Gx y.x, pm ≫ (snd (Over.mk y.x) Xo.univ.t.G).left = (snd (Over.mk y'.x) Xo.univ.t.G).left ∧
    pm ≫ (fst (Over.mk y.x) Xo.univ.t.G).left = (fst (Over.mk y'.x) Xo.univ.t.G).left ∧
    ∀ (i : Fin 1 → Xo.univ.t.PP.L.ι) (h : (PPx y'.x).U i ≤ pm ⁻¹ᵁ (PPx y.x).U i),
      (pm.appLE _ _ h).hom (scal y.x a i * y.s.f i) = y'.s.f i

def IntRebase : Prop :=
  ∀ (T : CDVR) (io : c.F →+* T.Fr), letI := io.toAlgebra
    ∀ (y0 : IntFr Xo c T io) (z : FrPt Xo c T.Fr), z.x = y0.1.x →
      ∀ k : ∀ τ : E →+* ℂ, Matrix (Fin (Dw.mult τ)) (Fin (Dw.mult τ)) T.V, (∀ τ, IsUnit (k τ).det) →
        ∃ (y'' : IntFr Xo c T io) (t0 : T.Frˣ), y''.1.x = z.x ∧
          (∀ τ i, IsCombAt y0.1.x (y0.1.u τ) (fun j => algebraMap T.V T.Fr (k τ j i)) (y''.1.u τ i)) ∧
          SClause (t0 : T.Fr) z y''.1

variable {Xo c}

theorem reFrame_of (hT : TanLin Xo) (hR : IntRebase Xo c) : ReFrame Xo c := by
  apply Formalism.L2.Pj.reFrame_of <;> assumption

theorem intAll_of' (hE : IntFrExt Xo c) (hB : FrBaseChg Xo c) (hT : TanLin Xo) (hR : IntRebase Xo c) :
    IntAll Xo c :=
  intAll_of hE hB (reFrame_of hT hR)

end Frames

end Formalism.L2.PjFree
