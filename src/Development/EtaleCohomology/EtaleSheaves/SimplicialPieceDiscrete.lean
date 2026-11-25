module

public import Development.EtaleCohomology.EtaleSheaves.FiltPf
public import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.SimplicialPieceRelations, Development.EtaleCohomology.EtaleSheaves.SimplicialPieceDiscrete

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.SimplicialPieceRelations =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.SimplicialPieceRelations", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.FiltPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.TruncationPieces LateralTheory.E.FiltPf

namespace LateralTheory.E.SimplicialPieceRelations

abbrev Qt (R : Type) [CommRing R] := HomotopyCategory.quotient (Shv R) (ComplexShape.up ℤ)
abbrev HC (R : Type) [CommRing R] := HomotopyCategory (Shv R) (ComplexShape.up ℤ)

def Disc0 : Prop := ∀ (R : Type) [CommRing R] {X Y : PSh} (f : X ⟶ Y),
  ∃ (a : (Qt R).obj ((chains R).obj (disc.obj X)) ≅ (Qt R).obj ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).obj ((free R).obj X)))
    (b : (Qt R).obj ((chains R).obj (disc.obj Y)) ≅ (Qt R).obj ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).obj ((free R).obj Y))),
    (Qt R).map ((chains R).map (disc.map f)) ≫ b.hom = a.hom ≫ (Qt R).map ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map ((free R).map f))

variable {R : Type} [CommRing R]

theorem relY_conj_imp (F : Shv R) (n : ℤ) {A B A' B' : HC R} (g : A ⟶ B) (g' : A' ⟶ B') (a : A ≅ A') (b : B ≅ B')
    (h : g ≫ b.hom = a.hom ≫ g') : Tri.RelY (Yres R F) n g → Tri.RelY (Yres R F) n g' := by
  have hg' : g' = a.inv ≫ g ≫ b.hom := by rw [h]; simp
  rintro ⟨hs, hi⟩
  refine ⟨fun y => ?_, fun x1 x2 hx => ?_⟩
  · obtain ⟨x, hx⟩ := hs (a.hom ≫ y)
    refine ⟨b.inv ≫ x, ?_⟩
    simp only at hx ⊢
    rw [hg']; simp [hx]
  · simp only at hx
    rw [hg'] at hx
    have : g ≫ (b.hom ≫ x1) = g ≫ (b.hom ≫ x2) := by
      have := congrArg (fun z => a.hom ≫ z) hx
      simpa using this
    have := hi this
    simpa using congrArg (fun z => b.inv ≫ z) this

theorem relY_conj (F : Shv R) (n : ℤ) {A B A' B' : HC R} (g : A ⟶ B) (g' : A' ⟶ B') (a : A ≅ A') (b : B ≅ B')
    (h : g ≫ b.hom = a.hom ≫ g') : Tri.RelY (Yres R F) n g ↔ Tri.RelY (Yres R F) n g' :=
  ⟨relY_conj_imp F n g g' a b h, relY_conj_imp F n g' g a.symm b.symm (by
    rw [Iso.symm_hom, Iso.symm_hom, Iso.eq_inv_comp, ← Category.assoc, ← h]; simp)⟩

def yIso (F : Shv R) (p m c : ℤ) (hc : m + p = c) : Yres R F c ≅ (Yres R F m)⟦p⟧ :=
  (Qt R).mapIso ((shiftFunctorAdd' (Cx R) m p c hc).app (res R F)) ≪≫ ((Qt R).commShiftIso p).app _

theorem relY_shift (F : Shv R) (k p : ℤ) {A B : HC R} (g : A ⟶ B) :
    Tri.RelY (Yres R F) k g → Tri.RelY (Yres R F) (k + p) (g⟦p⟧') := by
  rintro ⟨hs, hi⟩
  refine ⟨fun y => ?_, fun x1 x2 hx => ?_⟩
  · let e := yIso F p (k - 1) (k + p - 1) (by omega)
    obtain ⟨z, hz⟩ := (shiftFunctor (HC R) p).map_surjective (y ≫ e.hom)
    obtain ⟨w, hw⟩ := hs z
    refine ⟨(shiftFunctor (HC R) p).map w ≫ e.inv, ?_⟩
    simp only at hw ⊢
    rw [← Category.assoc, ← Functor.map_comp, hw, hz]; simp
  · let e := yIso F p k (k + p) rfl
    obtain ⟨w1, hw1⟩ := (shiftFunctor (HC R) p).map_surjective (x1 ≫ e.hom)
    obtain ⟨w2, hw2⟩ := (shiftFunctor (HC R) p).map_surjective (x2 ≫ e.hom)
    simp only at hx
    have h1 : (shiftFunctor (HC R) p).map (g ≫ w1) = (shiftFunctor (HC R) p).map (g ≫ w2) := by
      rw [Functor.map_comp, Functor.map_comp, hw1, hw2, ← Category.assoc, ← Category.assoc, hx]
    have h2 := hi ((shiftFunctor (HC R) p).map_injective h1)
    have : x1 ≫ e.hom = x2 ≫ e.hom := by rw [← hw1, ← hw2, h2]
    simpa using congrArg (fun z => z ≫ e.inv) this

theorem chains_f (U E : Spc) (u : U ⟶ E) (p : ℕ) :
    ((chains R).map u).f (-(p : ℤ)) =
      (chainsXIso R U p).hom ≫ (free R).map (u.app (Opposite.op (SimplexCategory.mk p))) ≫ (chainsXIso R E p).inv := by
  dsimp only [chains, chainsXIso, Functor.comp_map]
  erw [HomologicalComplex.extendMap_f _ ComplexShape.embeddingDownNat (i := p) rfl]
  rfl

theorem piece_of (hD : Disc0) : Piece := by
  intro R _ F U E u p k h
  let f := u.app (Opposite.op (SimplexCategory.mk p))
  let s0 := (HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map ((free R).map f)
  have h1 : Tri.RelY (Yres R F) k ((Qt R).map ((chains R).map (disc.map f))) := (relK_iff R _ F k).1 h
  obtain ⟨a, b, hab⟩ := hD R f
  have h2 : Tri.RelY (Yres R F) k ((Qt R).map s0) := (relY_conj F k _ _ a b hab).1 h1
  have h3 := relY_shift F k (p : ℤ) _ h2
  have h4 : Tri.RelY (Yres R F) (k + p) ((Qt R).map (s0⟦(p : ℤ)⟧')) :=
    (relY_conj F _ _ _ (((Qt R).commShiftIso (p : ℤ)).app _) (((Qt R).commShiftIso (p : ℤ)).app _)
      (((Qt R).commShiftIso (p : ℤ)).hom.naturality s0)).2 h3
  let Eo := (CochainComplex.singleFunctors (Shv R)).shiftIso (p : ℤ) (-(p : ℤ)) 0 (by omega)
  have h5 : Tri.RelY (Yres R F) (k + p) ((Qt R).map ((CochainComplex.singleFunctor (Shv R) (-(p : ℤ))).map ((free R).map f))) :=
    (relY_conj F _ _ _ ((Qt R).mapIso (Eo.symm.app _)) ((Qt R).mapIso (Eo.symm.app _)) (by
      simp only [Functor.mapIso_hom, Iso.app_hom, Iso.symm_hom, ← Functor.map_comp]
      congr 1
      exact Eo.inv.naturality _)).2 h4
  refine (relK_iff R _ F (k + p)).2 ?_
  refine (relY_conj F _ _ _ ((Qt R).mapIso ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) (-(p : ℤ))).mapIso (chainsXIso R U p)))
    ((Qt R).mapIso ((HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) (-(p : ℤ))).mapIso (chainsXIso R E p))) ?_).2 h5
  simp only [piece, Functor.mapIso_hom, ← Functor.map_comp, chains_f]
  simp [f]
  rfl

end LateralTheory.E.SimplicialPieceRelations
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.SimplicialPieceRelations =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.SimplicialPieceDiscrete =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.SimplicialPieceDiscrete", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.SimplicialPieceRelations\npublic import Mathlib.Algebra.Homology.Embedding.ExtendHomotopy\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC LateralTheory.E.SimplicialPieceRelations SimplicialObject SimplicialObject.Augmented

namespace LateralTheory.E.SimplicialPieceDiscrete

variable (R : Type) [CommRing R]

def aug (X : PSh) : SimplicialObject.Augmented (Shv R) where
  left := ((SimplicialObject.whiskering _ _).obj (free R)).obj (disc.obj X)
  right := (free R).obj X
  hom := { app := fun _ => 𝟙 _, naturality := by intros; (try simp); (try rfl) }

def augMap {X Y : PSh} (f : X ⟶ Y) : aug R X ⟶ aug R Y where
  left := ((SimplicialObject.whiskering _ _).obj (free R)).map (disc.map f)
  right := (free R).map f
  w := by
    apply NatTrans.ext; funext n; exact (Category.comp_id _).trans (Category.id_comp _).symm

def ed (X : PSh) : ExtraDegeneracy (aug R X) where
  s' := 𝟙 _
  s := fun _ => 𝟙 _
  s'_comp_ε := by simp [aug]
  s₀_comp_δ₁ := by simp [aug, SimplicialObject.δ]
  s_comp_δ₀ := by intro n; simp [aug, SimplicialObject.δ]
  s_comp_δ := by intro n i; simp [aug, SimplicialObject.δ]
  s_comp_σ := by intro n i; simp [aug, SimplicialObject.σ]

variable {R}

def hext {K L : ChainComplex (Shv R) ℕ} (h : HomotopyEquiv K L) :
    HomotopyEquiv (K.extend ComplexShape.embeddingDownNat) (L.extend ComplexShape.embeddingDownNat) where
  hom := HomologicalComplex.extendMap h.hom _
  inv := HomologicalComplex.extendMap h.inv _
  homotopyHomInvId := (Homotopy.ofEq (by rw [HomologicalComplex.extendMap_comp])).trans
    ((h.homotopyHomInvId.extend _).trans (Homotopy.ofEq (HomologicalComplex.extendMap_id _ _)))
  homotopyInvHomId := (Homotopy.ofEq (by rw [HomologicalComplex.extendMap_comp])).trans
    ((h.homotopyInvHomId.extend _).trans (Homotopy.ofEq (HomologicalComplex.extendMap_id _ _)))

def sIso (A : Shv R) := HomologicalComplex.extendSingleIso ComplexShape.embeddingDownNat A 0 (0 : ℤ) (by simp)

theorem sIso_nat {A B : Shv R} (φ : A ⟶ B) :
    HomologicalComplex.extendMap ((ChainComplex.single₀ (Shv R)).map φ) ComplexShape.embeddingDownNat ≫ (sIso B).hom =
      (sIso A).hom ≫ (HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map φ := by
  apply HomologicalComplex.to_single_hom_ext
  simp [sIso, HomologicalComplex.extendSingleIso_hom_f,
    HomologicalComplex.extendMap_f _ ComplexShape.embeddingDownNat (i := 0) (i' := (0 : ℤ)) (by simp),
    HomologicalComplex.single_map_f_self]

theorem disc0 : Disc0 := by
  intro R _ X Y f
  refine ⟨HomotopyCategory.isoOfHomotopyEquiv (hext (ed R X).homotopyEquiv) ≪≫ (Qt R).mapIso (sIso _),
    HomotopyCategory.isoOfHomotopyEquiv (hext (ed R Y).homotopyEquiv) ≪≫ (Qt R).mapIso (sIso _), ?_⟩
  have hn := (AlgebraicTopology.AlternatingFaceMapComplex.ε (C := Shv R)).naturality (augMap R f)
  have key : (chains R).map (disc.map f) ≫ HomologicalComplex.extendMap (AlgebraicTopology.AlternatingFaceMapComplex.ε.app (aug R Y)) ComplexShape.embeddingDownNat ≫ (sIso ((free R).obj Y)).hom =
      HomologicalComplex.extendMap (AlgebraicTopology.AlternatingFaceMapComplex.ε.app (aug R X)) ComplexShape.embeddingDownNat ≫ (sIso ((free R).obj X)).hom ≫
        (HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map ((free R).map f) := by
    have h2 := congrArg (fun φ => HomologicalComplex.extendMap φ ComplexShape.embeddingDownNat) hn
    simp only [HomologicalComplex.extendMap_comp] at h2
    have h1 : HomologicalComplex.extendMap ((point ⋙ ChainComplex.single₀ (Shv R)).map (augMap R f)) ComplexShape.embeddingDownNat ≫
        (sIso ((free R).obj Y)).hom = (sIso ((free R).obj X)).hom ≫
          (HomologicalComplex.single (Shv R) (ComplexShape.up ℤ) 0).map ((free R).map f) := sIso_nat ((free R).map f)
    exact (Category.assoc _ _ _).symm.trans ((congrArg (· ≫ (sIso ((free R).obj Y)).hom) h2).trans
      ((Category.assoc _ _ _).trans (congrArg (HomologicalComplex.extendMap (AlgebraicTopology.AlternatingFaceMapComplex.ε.app (aug R X)) ComplexShape.embeddingDownNat ≫ ·) h1)))
  have := congrArg (Qt R).map key
  simp only [Functor.map_comp] at this
  simp only [Iso.trans_hom, Category.assoc]
  exact this

theorem Piece_of : LateralTheory.E.TruncationPieces.Piece := LateralTheory.E.SimplicialPieceRelations.piece_of disc0

end LateralTheory.E.SimplicialPieceDiscrete
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.SimplicialPieceDiscrete =====
