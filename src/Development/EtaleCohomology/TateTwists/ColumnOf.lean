module

public import Development.EtaleCohomology.TateTwists.acycPf
public import Mathlib.RingTheory.TensorProduct.DirectLimitFG
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.RingTheory.Coalgebra.CoassocSimps

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.columnPf, Development.EtaleCohomology.TateTwists.MapMapEq, Development.EtaleCohomology.TateTwists.ColumnOf

-- ===== clump member: Development.EtaleCohomology.TateTwists.columnPf =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.columnPf", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.acycPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct

namespace LateralTheory.EtaleFoundations.columnPf

theorem loc_top (U : Scheme.{0}) {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : ∀ V g, P V g) : Loc U P :=
  ⟨⊤, Scheme.etaleTopology.top_mem U, fun V g _ => h V g⟩

theorem loc_mono {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : Loc U P) (hPQ : ∀ V g, P V g → Q V g) :
    Loc U Q := by
  obtain ⟨S, hS, hP⟩ := h
  exact ⟨S, hS, fun V g hg => hPQ V g (hP V g hg)⟩

theorem loc_and {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h1 : Loc U P) (h2 : Loc U Q) :
    Loc U fun V g => P V g ∧ Q V g := by
  obtain ⟨S, hS, hP⟩ := h1
  obtain ⟨T, hT, hQ⟩ := h2
  exact ⟨S ⊓ T, Scheme.etaleTopology.intersection_covering hS hT, fun V g hg => ⟨hP V g hg.1, hQ V g hg.2⟩⟩

theorem loc_bind {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} {Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop}
    (h : Loc U P) (hPQ : ∀ V g, P V g → Loc V fun W k => Q W (k ≫ g)) : Loc U Q := by
  classical
  obtain ⟨S, hS, hP⟩ := h
  choose T hT hQ using hPQ
  refine ⟨Sieve.bind S.arrows fun V g hg => T V g (hP V g hg), Scheme.etaleTopology.bind_covering hS
    (fun V g hg => hT V g (hP V g hg)), ?_⟩
  rintro W _ ⟨V, k, g, hg, hk, rfl⟩
  exact hQ V g (hP V g hg) W k hk

theorem loc_finset {ι : Type*} (s : Finset ι) {U : Scheme.{0}} {P : ι → ∀ V : Scheme.{0}, (V ⟶ U) → Prop}
    (h : ∀ i ∈ s, Loc U (P i)) : Loc U fun V g => ∀ i ∈ s, P i V g := by
  classical
  induction s using Finset.induction_on with
  | empty => exact loc_top U (by simp)
  | insert a s ha ih =>
    have := loc_and (h a (by simp)) (ih fun i hi => h i (by simp [hi]))
    exact loc_mono this fun V g ⟨h1, h2⟩ i hi => by
      rcases Finset.mem_insert.1 hi with rfl | hi
      · exact h1
      · exact h2 i hi

theorem loc_empty (U : Scheme.{0}) [IsEmpty U] (P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop) : Loc U P :=
  ⟨⊥, Scheme.bot_mem_grothendieckTopology U, fun _ _ h => h.elim⟩

def lift : Prop :=
  ∀ (R : Type) [CommRing R] (M : Shv R) (P : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R)) (φ : P ⟶ M.obj),
    (∀ (U : Scheme.{0}) (y : Sec M U), Loc U fun V g => ∃ x, (φ.app (op V)).hom x = Sec.res g y) →
    (∀ (U : Scheme.{0}) (x : P.obj (op U)), (φ.app (op U)).hom x = 0 → Loc U fun _ g => (P.map g.op).hom x = 0) →
    ∀ (F G : Shv R) (δ : F ⟶ G) (U : Scheme.{0}) (x : Sec F U ⊗[ULift.{1} R] Sec M U),
      TensorProduct.map (δ.hom.app (op U)).hom LinearMap.id x = 0 →
      Loc U fun V g => ∃ x' : Sec F V ⊗[ULift.{1} R] P.obj (op V),
        TensorProduct.map (δ.hom.app (op V)).hom LinearMap.id x' = 0 ∧
        TensorProduct.map LinearMap.id (φ.app (op V)).hom x' = TensorProduct.map (F.obj.map g.op).hom (M.obj.map g.op).hom x

def kill : Prop :=
  ∀ (R : Type) [CommRing R] (C : Cx R) (P : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R)),
    LateralTheory.EtaleFoundations.acyc.LocAcyc C → ∀ (V : Scheme.{0}) (s : ℤ) (x' : Sec (C.X s) V ⊗[ULift.{1} R] P.obj (op V)),
      Module.Flat (ULift.{1} R) (P.obj (op V)) →
      TensorProduct.map ((C.d s (s + 1)).hom.app (op V)).hom LinearMap.id x' = 0 →
      Loc V fun W k => ∃ y : Sec (C.X (s - 1)) W ⊗[ULift.{1} R] P.obj (op W),
        TensorProduct.map ((C.d (s - 1) s).hom.app (op W)).hom LinearMap.id y =
          TensorProduct.map ((C.X s).obj.map k.op).hom (P.map k.op).hom x'

end LateralTheory.EtaleFoundations.columnPf

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.acyc.column_of_cut (hL : lift) (hK : kill) : LateralTheory.EtaleFoundations.acyc.column := by
  intro R _ C J hJ hC U s t x hx
  obtain ⟨P, φ, hsurj, hker, hflat⟩ := hJ t
  refine loc_bind (hL R (J.X t) P φ hsurj hker (C.X s) (C.X (s + 1)) (C.d s (s + 1)) U x hx) ?_
  rintro V g ⟨x', hx'0, hx'⟩
  by_cases hV : Nonempty V
  · refine loc_mono (hK R C P hC V s x' (hflat V hV) hx'0) ?_
    rintro W k ⟨y, hy⟩
    refine ⟨TensorProduct.map LinearMap.id (φ.app (op W)).hom y, ?_⟩
    have e1 : TensorProduct.map ((C.d (s - 1) s).hom.app (op W)).hom LinearMap.id
        (TensorProduct.map LinearMap.id (φ.app (op W)).hom y) =
        TensorProduct.map LinearMap.id (φ.app (op W)).hom
          (TensorProduct.map ((C.d (s - 1) s).hom.app (op W)).hom LinearMap.id y) := by
      rw [← LinearMap.comp_apply, ← LinearMap.comp_apply, ← TensorProduct.map_comp, ← TensorProduct.map_comp]
      rfl
    rw [e1, hy, ← LinearMap.comp_apply, ← TensorProduct.map_comp]
    have e2 : (TensorProduct.map ((C.X s).obj.map (k ≫ g).op).hom ((J.X t).obj.map (k ≫ g).op).hom) x =
        TensorProduct.map ((C.X s).obj.map k.op).hom ((J.X t).obj.map k.op).hom
          (TensorProduct.map ((C.X s).obj.map g.op).hom ((J.X t).obj.map g.op).hom x) := by
      rw [← LinearMap.comp_apply, ← TensorProduct.map_comp, op_comp, Functor.map_comp, Functor.map_comp]
      rfl
    rw [e2, ← hx', ← LinearMap.comp_apply, ← TensorProduct.map_comp]
    congr 2
    have := φ.naturality k.op
    exact congrArg ModuleCat.Hom.hom this
  · have : IsEmpty V := not_nonempty_iff.1 hV
    exact loc_empty V _

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.columnPf.kill_of : kill := by
  classical
  intro R _ C P hC V s x' hflat hx'
  set d := ((C.d s (s + 1)).hom.app (op V)).hom
  have hex := Module.Flat.rTensor_exact (M := P.obj (op V)) (LinearMap.exact_subtype_ker_map d)
  obtain ⟨w, hw⟩ := (hex x').1 hx'
  obtain ⟨S, hS⟩ := TensorProduct.exists_finset w
  have hloc : ∀ i ∈ S, Loc V fun W k => ∃ y : Sec (C.X (s - 1)) W,
      Sec.map (C.d (s - 1) s) y = Sec.res k (i.1 : Sec (C.X s) V) := fun i _ =>
    hC V s (i.1 : Sec (C.X s) V) i.1.2
  refine loc_mono (loc_finset S hloc) ?_
  intro W k hk
  choose y hy using hk
  refine ⟨∑ i ∈ S.attach, y i.1 i.2 ⊗ₜ (P.map k.op).hom i.1.2, ?_⟩

  rw [map_sum, ← hw, hS, map_sum, map_sum]
  rw [← Finset.sum_attach S]
  refine Finset.sum_congr rfl fun i _ => ?_
  simp only [TensorProduct.map_tmul, LinearMap.rTensor_tmul, LinearMap.id_apply]
  congr 1
  exact hy i.1 i.2
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.columnPf =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.MapMapEq =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.MapMapEq", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.columnPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.CoassocSimps\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct

namespace LateralTheory.EtaleFoundations.columnPf

def kerLoc : Prop :=
  ∀ (R : Type) [CommRing R] (M : Shv R) (P : Scheme.{0}ᵒᵖ ⥤ ModuleCat.{1} (ULift.{1} R)) (φ : P ⟶ M.obj),
    (∀ (U : Scheme.{0}) (y : Sec M U), Loc U fun V g => ∃ x, (φ.app (op V)).hom x = Sec.res g y) →
    (∀ (U : Scheme.{0}) (x : P.obj (op U)), (φ.app (op U)).hom x = 0 → Loc U fun _ g => (P.map g.op).hom x = 0) →
    ∀ (G : Shv R) (V : Scheme.{0}) (u : Sec G V ⊗[ULift.{1} R] P.obj (op V)),
      TensorProduct.map LinearMap.id (φ.app (op V)).hom u = 0 →
      Loc V fun _ k => TensorProduct.map (G.obj.map k.op).hom (P.map k.op).hom u = 0

theorem map_map_eq {S : Type*} [CommRing S] {A B C D A' B' C' D' : Type*} [AddCommGroup A] [Module S A]
    [AddCommGroup B] [Module S B] [AddCommGroup C] [Module S C] [AddCommGroup D] [Module S D]
    [AddCommGroup A'] [Module S A'] [AddCommGroup B'] [Module S B'] [AddCommGroup C'] [Module S C']
    [AddCommGroup D'] [Module S D']
    (f1 : A →ₗ[S] A') (f2 : A' →ₗ[S] C) (f1' : A →ₗ[S] C') (f2' : C' →ₗ[S] C)
    (g1 : B →ₗ[S] B') (g2 : B' →ₗ[S] D) (g1' : B →ₗ[S] D') (g2' : D' →ₗ[S] D)
    (hf : f2 ∘ₗ f1 = f2' ∘ₗ f1') (hg : g2 ∘ₗ g1 = g2' ∘ₗ g1') (x : A ⊗[S] B) :
    TensorProduct.map f2 g2 (TensorProduct.map f1 g1 x) = TensorProduct.map f2' g2' (TensorProduct.map f1' g1' x) := by
  rw [← LinearMap.comp_apply, ← TensorProduct.map_comp, hf, hg, TensorProduct.map_comp, LinearMap.comp_apply]

end LateralTheory.EtaleFoundations.columnPf

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.columnPf.lift_of (hK : kerLoc) : lift := by
  classical
  intro R _ M P φ hsurj hker F G δ U x hx
  obtain ⟨S, hS⟩ := TensorProduct.exists_finset x
  refine loc_bind (loc_finset S fun i _ => hsurj U i.2) ?_
  intro V g hV
  choose p hp using hV
  let x' : Sec F V ⊗[ULift.{1} R] P.obj (op V) := ∑ i ∈ S.attach, (F.obj.map g.op).hom i.1.1 ⊗ₜ p i.1 i.2
  have h1 : TensorProduct.map LinearMap.id (φ.app (op V)).hom x' =
      TensorProduct.map (F.obj.map g.op).hom (M.obj.map g.op).hom x := by

    rw [hS, map_sum, map_sum, ← Finset.sum_attach S]
    refine Finset.sum_congr rfl fun i _ => ?_
    simp only [TensorProduct.map_tmul, LinearMap.id_apply]
    rw [hp i.1 i.2]
  have nat : ∀ {V' V : Scheme.{0}} (k : V' ⟶ V), (G.obj.map k.op).hom ∘ₗ (δ.hom.app (op V)).hom =
      (δ.hom.app (op V')).hom ∘ₗ (F.obj.map k.op).hom := fun k => by
    rw [← ModuleCat.hom_comp, ← ModuleCat.hom_comp, δ.hom.naturality]
  have h2 : TensorProduct.map LinearMap.id (φ.app (op V)).hom
      (TensorProduct.map (δ.hom.app (op V)).hom LinearMap.id x') = 0 := by
    rw [map_map_eq (f1 := (δ.hom.app (op V)).hom) (f2 := LinearMap.id) (g1 := LinearMap.id) (g2 := (φ.app (op V)).hom)
      (f1' := LinearMap.id) (f2' := (δ.hom.app (op V)).hom) (g1' := (φ.app (op V)).hom) (g2' := LinearMap.id)
      (by simp) (by simp), h1,
      map_map_eq (f1 := (F.obj.map g.op).hom) (f2 := (δ.hom.app (op V)).hom) (g1 := (M.obj.map g.op).hom)
      (g2 := LinearMap.id) (f1' := (δ.hom.app (op U)).hom) (f2' := (G.obj.map g.op).hom) (g1' := LinearMap.id)
      (g2' := (M.obj.map g.op).hom) (nat g).symm (by simp), hx, map_zero]
  refine loc_mono (hK R M P φ hsurj hker G V _ h2) ?_
  intro W k hk
  refine ⟨TensorProduct.map (F.obj.map k.op).hom (P.map k.op).hom x', ?_, ?_⟩
  · rw [map_map_eq (f1 := (F.obj.map k.op).hom) (f2 := (δ.hom.app (op W)).hom) (g1 := (P.map k.op).hom)
      (g2 := LinearMap.id) (f1' := (δ.hom.app (op V)).hom) (f2' := (G.obj.map k.op).hom) (g1' := LinearMap.id)
      (g2' := (P.map k.op).hom) (nat k).symm (by simp), hk]
  · have hφ : (φ.app (op W)).hom ∘ₗ (P.map k.op).hom = (M.obj.map k.op).hom ∘ₗ (φ.app (op V)).hom := by
      rw [← ModuleCat.hom_comp, ← ModuleCat.hom_comp, φ.naturality]
    rw [map_map_eq (f1 := (F.obj.map k.op).hom) (f2 := LinearMap.id) (g1 := (P.map k.op).hom)
      (g2 := (φ.app (op W)).hom) (f1' := LinearMap.id) (f2' := (F.obj.map k.op).hom) (g1' := (φ.app (op V)).hom)
      (g2' := (M.obj.map k.op).hom) (by simp) hφ, h1, ← LinearMap.comp_apply, ← TensorProduct.map_comp]
    simp only [op_comp, Functor.map_comp, ModuleCat.hom_comp]

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.columnPf.column_of' (hK : kerLoc) : LateralTheory.EtaleFoundations.acyc.column :=
  LateralTheory.EtaleFoundations.acyc.column_of_cut (lift_of hK) kill_of
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.MapMapEq =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.ColumnOf =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.ColumnOf", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.MapMapEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\npublic import Mathlib.RingTheory.TensorProduct.DirectLimitFG\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct

namespace LateralTheory.EtaleFoundations.columnPf

theorem vanish_fg {S : Type*} [CommRing S] {N G Pv : Type*} [AddCommGroup N] [Module S N] [AddCommGroup G] [Module S G]
    [AddCommGroup Pv] [Module S Pv] (φ : Pv →ₗ[S] N) {k : ℕ} (b : Fin k → G) (q : Fin k → Pv)
    (h : ∑ j, φ (q j) ⊗ₜ[S] b j = 0) :
    ∃ (gs : Finset N) (l : ℕ) (a : Fin k → Fin l → S) (c : gs → Fin l → S) (y : Fin l → G),
      (∀ j, b j = ∑ κ, a j κ • y κ) ∧ (∀ g, 0 = ∑ κ, c g κ • y κ) ∧
      ∀ κ, ∑ j, a j κ • φ (q j) + ∑ g, c g κ • (g : N) = 0 := by
  classical
  set Q0 : Submodule S N := Submodule.span S (Set.range fun j => φ (q j))
  have hQ0 : Q0.FG := Submodule.fg_span (Set.finite_range _)
  let t : Q0 ⊗[S] G := ∑ j, (⟨φ (q j), Submodule.subset_span ⟨j, rfl⟩⟩ : Q0) ⊗ₜ b j
  have ht : LinearMap.rTensor G Q0.subtype t = 0 := by simpa [t, map_sum] using h
  obtain ⟨Q, hQ0Q, hQ, ht'⟩ := TensorProduct.eq_zero_of_fg_of_subtype_eq_zero hQ0 ht
  obtain ⟨gs, hgs⟩ := hQ
  have memg : ∀ g : gs, (g : N) ∈ Q := fun g => hgs ▸ Submodule.subset_span g.2
  let m' : Fin k ⊕ gs → Q := Sum.elim (fun j => Submodule.inclusion hQ0Q ⟨φ (q j), Submodule.subset_span ⟨j, rfl⟩⟩)
    fun g => ⟨g, memg g⟩
  let n' : Fin k ⊕ gs → G := Sum.elim b fun _ => 0
  have hspan : Submodule.span S (Set.range m') = ⊤ := by
    apply Submodule.map_injective_of_injective Q.injective_subtype
    rw [Submodule.map_span, Submodule.map_top, Submodule.range_subtype]
    refine le_antisymm (Submodule.span_le.2 ?_) ?_
    · rintro _ ⟨_, ⟨i, rfl⟩, rfl⟩
      exact (m' i).2
    · intro z hz
      rw [← hgs] at hz
      refine (Submodule.span_le.2 fun g hg => Submodule.subset_span ?_) hz
      exact ⟨m' (Sum.inr ⟨g, hg⟩), ⟨Sum.inr ⟨g, hg⟩, rfl⟩, rfl⟩
  have hsum : ∑ i, m' i ⊗ₜ[S] n' i = 0 := by
    rw [Fintype.sum_sum_type]
    simp only [m', n', Sum.elim_inl, Sum.elim_inr, TensorProduct.tmul_zero, Finset.sum_const_zero, add_zero]

    simpa [t, map_sum] using ht'
  obtain ⟨l, a, y, hn, hm⟩ := TensorProduct.vanishesTrivially_of_sum_tmul_eq_zero S hspan hsum
  refine ⟨gs, l, fun j => a (Sum.inl j), fun g => a (Sum.inr g), y, fun j => hn (Sum.inl j), fun g => hn (Sum.inr g),
    fun κ => ?_⟩
  have := congrArg Subtype.val (hm κ)
  rw [Fintype.sum_sum_type] at this
  simpa [m'] using this

end LateralTheory.EtaleFoundations.columnPf

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.columnPf.kerLoc_of : kerLoc := by
  classical
  intro R _ M P φ hsurj hker G V u hu
  obtain ⟨k, b, q, rfl⟩ := TensorProduct.exists_sum_tmul_eq u
  have h : ∑ j, (φ.app (op V)).hom (q j) ⊗ₜ[ULift.{1} R] b j = 0 := by
    have := congrArg (TensorProduct.comm _ _ _) hu

    simpa [map_sum] using this
  obtain ⟨gs, l, a, c, y, hb, hc, hrel⟩ := vanish_fg (φ.app (op V)).hom b q h
  refine loc_bind (loc_finset (Finset.univ : Finset gs) fun i _ => hsurj V (i : Sec M V)) ?_
  intro W hW hl
  choose pt hpt using hl
  have nφ : ∀ x, (φ.app (op W)).hom ((P.map hW.op).hom x) = (M.obj.map hW.op).hom ((φ.app (op V)).hom x) := fun x => by
    rw [← ModuleCat.comp_apply, φ.naturality, ModuleCat.comp_apply]
  let e : Fin l → P.obj (op W) := fun κ =>
    ∑ j, a j κ • (P.map hW.op).hom (q j) + ∑ g, c g κ • pt g (Finset.mem_univ g)
  have he : ∀ κ, (φ.app (op W)).hom (e κ) = 0 := fun κ => by
    have := congrArg (M.obj.map hW.op).hom (hrel κ)

    simp only [map_add (f := _), map_sum, map_smul, map_zero] at this

    simp only [e, map_add (f := _), map_sum, map_smul, nφ]
    rw [← this]
    congr 1
    refine Finset.sum_congr rfl fun g _ => ?_
    rw [hpt g (Finset.mem_univ g)]
  have hu' : TensorProduct.map (G.obj.map hW.op).hom (P.map hW.op).hom (∑ j, b j ⊗ₜ[ULift.{1} R] q j) =
      ∑ κ, (G.obj.map hW.op).hom (y κ) ⊗ₜ e κ := by
    have hz : ∀ g : gs, ∑ κ, (G.obj.map hW.op).hom (y κ) ⊗ₜ[ULift.{1} R] (c g κ • pt g (Finset.mem_univ g)) = 0 :=
      fun g => by
        have := congrArg (fun z => (G.obj.map hW.op).hom z ⊗ₜ[ULift.{1} R] pt g (Finset.mem_univ g)) (hc g)

        simp only [map_zero, TensorProduct.zero_tmul, map_sum, map_smul, TensorProduct.sum_tmul] at this
        rw [this]
        refine Finset.sum_congr rfl fun κ _ => ?_
        rw [TensorProduct.tmul_smul, TensorProduct.smul_tmul']
    simp only [e, TensorProduct.tmul_add, TensorProduct.tmul_sum, Finset.sum_add_distrib]

    rw [Finset.sum_comm (s := Finset.univ) (t := (Finset.univ : Finset gs)), Finset.sum_congr rfl fun g _ => hz g,
    Finset.sum_const_zero, add_zero, map_sum, Finset.sum_comm]
    refine Finset.sum_congr rfl fun j _ => ?_

    rw [TensorProduct.map_tmul, hb j, map_sum, TensorProduct.sum_tmul]
    refine Finset.sum_congr rfl fun κ _ => ?_
    rw [map_smul, TensorProduct.tmul_smul, TensorProduct.smul_tmul']
  refine loc_mono (loc_finset (Finset.univ : Finset (Fin l)) fun κ _ => hker W (e κ) (he κ)) ?_
  intro W' k' hk'
  have hcomp : TensorProduct.map (G.obj.map (k' ≫ hW).op).hom (P.map (k' ≫ hW).op).hom
      (∑ j, b j ⊗ₜ[ULift.{1} R] q j) = TensorProduct.map (G.obj.map k'.op).hom (P.map k'.op).hom
      (TensorProduct.map (G.obj.map hW.op).hom (P.map hW.op).hom (∑ j, b j ⊗ₜ[ULift.{1} R] q j)) := by
    rw [← LinearMap.comp_apply, ← TensorProduct.map_comp]
    simp only [op_comp, Functor.map_comp, ModuleCat.hom_comp]

  rw [hcomp, hu', map_sum]
  refine Finset.sum_eq_zero fun κ _ => ?_
  rw [TensorProduct.map_tmul, hk' κ (Finset.mem_univ κ), TensorProduct.tmul_zero]

open LateralTheory.EtaleFoundations.columnPf in
theorem LateralTheory.EtaleFoundations.acyc.column_of : LateralTheory.EtaleFoundations.acyc.column := column_of' kerLoc_of
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.ColumnOf =====
