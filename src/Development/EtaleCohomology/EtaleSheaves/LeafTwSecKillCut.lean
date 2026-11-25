module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.E8.TwSec

def twCls {q : ℕ} (j : ℤ) {A : CommRingCat.{0}} (ζ : Prim q A) : (twF q j).obj A :=
  Submodule.Quotient.mk (Finsupp.single ζ (1 : ULift.{1} (ZMod q)))

def LeafOfRingsLocSurj : Prop := ∀ (R : Type) [CommRing R] (M : CommRingCat.{0} ⥤ ModuleCat.{1} (ULift.{1} R))
  (X : Scheme.{0}) (s : Sec (ofRings R M) X) (x : X), ∃ (U : Scheme.{0}) (w : U ⟶ X), Etale w ∧ x ∈ Set.range w ∧
  ∃ t : M.obj Γ(U, ⊤), Sec.res w s = ofRings.sec M U t

def LeafOfRingsLocInj : Prop := ∀ (R : Type) [CommRing R] (M : CommRingCat.{0} ⥤ ModuleCat.{1} (ULift.{1} R))
  (U : Scheme.{0}) (t : M.obj Γ(U, ⊤)), ofRings.sec M U t = 0 → ∀ u : U, ∃ (V : Scheme.{0}) (v : V ⟶ U),
  Etale v ∧ u ∈ Set.range v ∧ (M.map (Scheme.Γ.map v.op)).hom t = 0

def LeafTwAdj : Prop := ∀ (q : ℕ) [NeZero q] (U : Scheme.{0}) (u : U), IsUnit (q : Γ(U, ⊤)) →
  ∃ (W : Scheme.{0}) (w : W ⟶ U), Etale w ∧ u ∈ Set.range w ∧ Nonempty (Prim q Γ(W, ⊤))

def LeafTwGen : Prop := ∀ (q : ℕ) [NeZero q] (j : ℤ) (W : Scheme.{0}) (ζ : Prim q Γ(W, ⊤)) (t : (twF q j).obj Γ(W, ⊤))
  (w0 : W), ∃ (O : W.Opens) (c : ZMod q), w0 ∈ O ∧
    ((twF q j).map (Scheme.Γ.map O.ι.op)).hom t = ((twF q j).map (Scheme.Γ.map O.ι.op)).hom (ULift.up c • twCls j ζ)

def LeafTwFieldZ : Prop := ∀ (q : ℕ) [NeZero q] (j : ℤ) (K : CommRingCat.{0}), IsField K →
  ∀ (ζ : Prim q K) (c : ZMod q), ULift.up c • twCls j ζ = 0 → c = 0

def LeafTwPt : Prop := ∀ (q : ℕ) [NeZero q] (j : ℤ) (U : Scheme.{0}) (u : U) (t : (twF q j).obj Γ(U, ⊤))
  (V : Scheme.{0}) (g : V ⟶ U) (v : V), g v = u → ((twF q j).map (Scheme.Γ.map g.op)).hom t = 0 →
  ∃ (W : Scheme.{0}) (w : W ⟶ U), Etale w ∧ u ∈ Set.range w ∧ ((twF q j).map (Scheme.Γ.map w.op)).hom t = 0

theorem sec_res {R : Type} [CommRing R] (M : CommRingCat.{0} ⥤ ModuleCat.{1} (ULift.{1} R)) {V U : Scheme.{0}}
    (g : V ⟶ U) (t : M.obj Γ(U, ⊤)) :
    Sec.res g (ofRings.sec M U t) = ofRings.sec M V ((M.map (Scheme.Γ.map g.op)).hom t) := by
  have h := congrArg (fun f => f.hom t) ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ M)).naturality g.op)
  exact h.symm

theorem res_comp {R : Type} [CommRing R] {F : Shv R} {W V U : Scheme.{0}} (f : W ⟶ V) (g : V ⟶ U) (s : Sec F U) :
    Sec.res (f ≫ g) s = Sec.res f (Sec.res g s) := by
  simp [Sec.res]

theorem sec_zero {R : Type} [CommRing R] (M : CommRingCat.{0} ⥤ ModuleCat.{1} (ULift.{1} R)) (U : Scheme.{0}) :
    ofRings.sec M U 0 = 0 :=
  map_zero _

end LateralTheory.E.E8.TwSec
