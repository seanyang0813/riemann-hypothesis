module

public import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass
public import Development.EtaleCohomology.TateTwists.acycPf

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.TateTwists.TensorVanishing.TensZero, Development.EtaleCohomology.TateTwists.TensorVanishing

-- ===== clump member: Development.EtaleCohomology.TateTwists.TensorVanishing.TensZero =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.TensorVanishing.TensZero", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.SecClass\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct DirectSum

noncomputable section
namespace LateralTheory.EtaleFoundations.stairPf
variable {R : Type} [CommRing R]

theorem loc_mono {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : Loc U P)
    (hPQ : ∀ V g, P V g → Q V g) : Loc U Q := by
  obtain ⟨S, hS, hP⟩ := h; exact ⟨S, hS, fun V g hg => hPQ V g (hP V g hg)⟩

theorem loc_all {U : Scheme.{0}} {P : ∀ V : Scheme.{0}, (V ⟶ U) → Prop} (h : ∀ V g, P V g) : Loc U P :=
  ⟨⊤, Scheme.etaleTopology.top_mem U, fun V g _ => h V g⟩

theorem loc_bind {U : Scheme.{0}} {P Q : ∀ V : Scheme.{0}, (V ⟶ U) → Prop}
    (h : Loc U P) (hPQ : ∀ V g, P V g → Loc V fun W k => Q W (k ≫ g)) : Loc U Q := by
  obtain ⟨S, hS, hP⟩ := h
  have H : ∀ (V : Scheme.{0}) (g : V ⟶ U), S.arrows g → ∃ T : Sieve V, T ∈ Scheme.etaleTopology V ∧
      ∀ (W : Scheme.{0}) (k : W ⟶ V), T.arrows k → Q W (k ≫ g) := fun V g hg => hPQ V g (hP V g hg)
  choose T hT hQ using H
  refine ⟨Sieve.bind S.arrows (fun V g hg => T V g hg),
    Scheme.etaleTopology.bind_covering hS (fun V g hg => hT V g hg), ?_⟩
  rintro W f ⟨V, k, g, hg, hk, rfl⟩
  exact hQ V g hg W k hk

theorem res_comp {F : Shv R} {W V U : Scheme.{0}} (k : W ⟶ V) (g : V ⟶ U) (x : Sec F U) :
    Sec.res (k ≫ g) x = Sec.res k (Sec.res g x) := by
  simp [Sec.res]

theorem map_res {F G : Shv R} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (x : Sec F U) :
    Sec.map φ (Sec.res g x) = Sec.res g (Sec.map φ x) := by
  have := congrArg (fun f => f.hom x) (φ.hom.naturality g.op)
  simpa [Sec.map, Sec.res] using this.symm

theorem map_dd {C : Cx R} {U : Scheme.{0}} (i j k : ℤ) (x : Sec (C.X i) U) :
    Sec.map (C.d j k) (Sec.map (C.d i j) x) = 0 := by
  change ((C.d i j ≫ C.d j k).hom.app (op U)).hom x = 0
  rw [C.d_comp_d]; simp

theorem sec_zero {C : Cx R} (a : ℤ) [C.IsStrictlyGE a] {s : ℤ} (hs : s < a) {U : Scheme.{0}}
    (x : Sec (C.X s) U) : x = 0 := by
  have hz := C.isZero_of_isStrictlyGE a s hs
  have := congrArg (fun f : C.X s ⟶ C.X s => (f.hom.app (op U)).hom x) (hz.eq_of_src (𝟙 _) 0)
  simpa using this

theorem tens_zero {M N : Type*} [AddCommGroup M] [AddCommGroup N] [Module (ULift.{1} R) M]
    [Module (ULift.{1} R) N] (hM : ∀ m : M, m = 0) (x : M ⊗[ULift.{1} R] N) : x = 0 := by
  induction x using TensorProduct.induction_on with
  | zero => rfl
  | tmul m n => rw [hM m, TensorProduct.zero_tmul]
  | add a b ha hb => rw [ha, hb, add_zero]

abbrev Ix (w : ℤ) := {p : ℤ × ℤ // p.1 + p.2 = w}

variable {C J T : Cx R}

abbrev Cmp (C J : Cx R) (U : Scheme.{0}) (w : ℤ) : Ix w → Type 1 :=
  fun q => Sec (C.X q.1.1) U ⊗[ULift.{1} R] Sec (J.X q.1.2) U

def Dm (U : Scheme.{0}) (w w' : ℤ) (hw : w + 1 = w') : Tens C J U w →ₗ[ULift.{1} R] Tens C J U w' := by
  classical
  exact DirectSum.toModule _ _ _ fun p =>
    DirectSum.lof (ULift.{1} R) (Ix w') (Cmp C J U w') ⟨(p.1.1 + 1, p.1.2), by have := p.2; simp only at this ⊢; omega⟩ ∘ₗ
      TensorProduct.map ((C.d p.1.1 (p.1.1 + 1)).hom.app (op U)).hom LinearMap.id +
    ((p.1.1.negOnePow : ℤ)) • (DirectSum.lof (ULift.{1} R) (Ix w') (Cmp C J U w')
      ⟨(p.1.1, p.1.2 + 1), by have := p.2; simp only at this ⊢; omega⟩ ∘ₗ
      TensorProduct.map LinearMap.id ((J.d p.1.2 (p.1.2 + 1)).hom.app (op U)).hom)

theorem Dm_lof (U : Scheme.{0}) (w w' : ℤ) (hw : w + 1 = w') (p : Ix w) (v : Cmp C J U w p) :
    Dm U w w' hw (DirectSum.lof (ULift.{1} R) (Ix w) (Cmp C J U w) p v) =
      DirectSum.lof (ULift.{1} R) (Ix w') (Cmp C J U w') ⟨(p.1.1 + 1, p.1.2), by have := p.2; simp only at this ⊢; omega⟩
        (TensorProduct.map ((C.d p.1.1 (p.1.1 + 1)).hom.app (op U)).hom LinearMap.id v) +
      ((p.1.1.negOnePow : ℤ)) • DirectSum.lof (ULift.{1} R) (Ix w') (Cmp C J U w')
        ⟨(p.1.1, p.1.2 + 1), by have := p.2; simp only at this ⊢; omega⟩
        (TensorProduct.map LinearMap.id ((J.d p.1.2 (p.1.2 + 1)).hom.app (op U)).hom v) := by
  classical
  unfold Dm
  convert DirectSum.toModule_lof (ULift.{1} R) p v using 1

theorem lift_lof (τ : Pair C J T) (U : Scheme.{0}) (w : ℤ) (p : Ix w) (a : Sec (C.X p.1.1) U)
    (b : Sec (J.X p.1.2) U) :
    τ.lift U w (DirectSum.lof (ULift.{1} R) (Ix w) (Cmp C J U w) p (a ⊗ₜ b)) = τ.mul U p.1.1 p.1.2 w p.2 a b := by
  classical
  unfold Pair.lift
  convert DirectSum.toModule_lof (ULift.{1} R) (M := Cmp C J U w) p (a ⊗ₜ[ULift.{1} R] b) using 1
  simp

theorem lift_Dm (τ : Pair C J T) (U : Scheme.{0}) (w : ℤ) (x : Tens C J U w) :
    τ.lift U (w + 1) (Dm U w (w + 1) rfl x) = Sec.map (T.d w (w + 1)) (τ.lift U w x) := by
  classical
  have : (τ.lift U (w + 1)) ∘ₗ Dm U w (w + 1) rfl = ((T.d w (w + 1)).hom.app (op U)).hom ∘ₗ τ.lift U w := by
    apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp only [LinearMap.comp_apply, Dm_lof, map_add (f := _), map_zsmul, TensorProduct.map_tmul, LinearMap.id_apply]
    erw [lift_lof, lift_lof, lift_lof]
    have := τ.leibniz U p.1.1 p.1.2 w p.2 a b
    simp only [Sec.map] at this
    rw [this, Units.smul_def]
  exact LinearMap.congr_fun this x

theorem lift_res (τ : Pair C J T) {V U : Scheme.{0}} (g : V ⟶ U) (w : ℤ) (x : Tens C J U w) :
    τ.lift V w (Tens.res g w x) = Sec.res g (τ.lift U w x) := by
  classical
  have : (τ.lift V w) ∘ₗ Tens.res g w = ((T.X w).obj.map g.op).hom ∘ₗ τ.lift U w := by
    apply DirectSum.linearMap_ext; intro p; apply TensorProduct.ext'; intro a b
    simp only [LinearMap.comp_apply, Tens.res]
    rw [DirectSum.lmap_lof, TensorProduct.map_tmul]
    rw [lift_lof, lift_lof]
    exact (τ.nat g p.1.1 p.1.2 w p.2 a b).symm
  exact LinearMap.congr_fun this x

end LateralTheory.EtaleFoundations.stairPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.TensorVanishing.TensZero =====

-- ===== clump member: Development.EtaleCohomology.TateTwists.TensorVanishing =====
-- clump-header: {"m": "Development.EtaleCohomology.TateTwists.TensorVanishing", "h": "module\n\npublic import Development.EtaleCohomology.TateTwists.TensorVanishing.TensZero\npublic import Development.EtaleCohomology.TateTwists.acycPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex GlobalTheory.EtC
open scoped TensorProduct DirectSum

noncomputable section
namespace LateralTheory.EtaleFoundations.stairPf
variable {R : Type} [CommRing R] {C J T : Cx R}

theorem tens_zero' {M N : Type*} [AddCommGroup M] [AddCommGroup N] [Module (ULift.{1} R) M]
    [Module (ULift.{1} R) N] (hN : ∀ m : N, m = 0) (x : M ⊗[ULift.{1} R] N) : x = 0 := by
  induction x using TensorProduct.induction_on with
  | zero => rfl
  | tmul m n => rw [hN n, TensorProduct.tmul_zero]
  | add a b ha hb => rw [ha, hb, add_zero]

theorem res_apply {V U : Scheme.{0}} (g : V ⟶ U) (w : ℤ) (x : Tens C J U w) (p : Ix w) :
    (Tens.res g w x) p = TensorProduct.map ((C.X p.1.1).obj.map g.op).hom ((J.X p.1.2).obj.map g.op).hom (x p) := by
  unfold Tens.res; rw [DirectSum.lmap_apply]

theorem nat_tens {V U : Scheme.{0}} (g : V ⟶ U) (s s' t : ℤ) (v : Sec (C.X s) U ⊗[ULift.{1} R] Sec (J.X t) U) :
    TensorProduct.map ((C.d s s').hom.app (op V)).hom LinearMap.id
        (TensorProduct.map ((C.X s).obj.map g.op).hom ((J.X t).obj.map g.op).hom v) =
      TensorProduct.map ((C.X s').obj.map g.op).hom ((J.X t).obj.map g.op).hom
        (TensorProduct.map ((C.d s s').hom.app (op U)).hom LinearMap.id v) := by
  induction v using TensorProduct.induction_on with
  | zero => simp
  | tmul a b =>
    simp only [TensorProduct.map_tmul, LinearMap.id_apply]
    congr 1; exact map_res (C.d s s') g a
  | add a b ha hb => simp only [map_add (f := _), ha, hb]

theorem lift_Dm' (τ : Pair C J T) (U : Scheme.{0}) (w w' : ℤ) (hw : w + 1 = w') (x : Tens C J U w) :
    τ.lift U w' (Dm U w w' hw x) = Sec.map (T.d w w') (τ.lift U w x) := by
  subst hw; exact lift_Dm τ U w x

theorem lof_shift (U : Scheme.{0}) (n s s' t : ℤ) (hs : s + 1 = s') (h1 : (s + 1) + t = n) (h2 : s' + t = n)
    (y : Sec (C.X s) U ⊗[ULift.{1} R] Sec (J.X t) U) :
    DirectSum.lof (ULift.{1} R) (Ix n) (Cmp C J U n) ⟨(s + 1, t), h1⟩
        (TensorProduct.map ((C.d s (s + 1)).hom.app (op U)).hom LinearMap.id y) =
      DirectSum.lof (ULift.{1} R) (Ix n) (Cmp C J U n) ⟨(s', t), h2⟩
        (TensorProduct.map ((C.d s s').hom.app (op U)).hom LinearMap.id y) := by
  subst hs; rfl

theorem lof_ne (U : Scheme.{0}) (n : ℤ) (i j : Ix n) (h : i.1.2 ≠ j.1.2) (v : Cmp C J U n i) :
    (DirectSum.lof (ULift.{1} R) (Ix n) (Cmp C J U n) i v) j = 0 := by
  classical
  rw [DirectSum.lof_eq_of]
  exact DirectSum.of_eq_of_ne _ _ _ (fun e => h (by rw [e]))

theorem lof_same (U : Scheme.{0}) (n : ℤ) (i : Ix n) (v : Cmp C J U n i) :
    (DirectSum.lof (ULift.{1} R) (Ix n) (Cmp C J U n) i v) i = v := by
  classical
  rw [DirectSum.lof_eq_of]
  exact DirectSum.of_eq_same _ _

theorem smap_add {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} (x y : Sec F U) :
    Sec.map φ (x + y) = Sec.map φ x + Sec.map φ y := map_add _ _ _
theorem smap_sub {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} (x y : Sec F U) :
    Sec.map φ (x - y) = Sec.map φ x - Sec.map φ y := map_sub _ _ _
theorem smap_zero {F G : Shv R} (φ : F ⟶ G) {U : Scheme.{0}} : Sec.map φ (0 : Sec F U) = 0 := map_zero _
theorem sres_sub {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) (x y : Sec F U) :
    Sec.res g (x - y) = Sec.res g x - Sec.res g y := map_sub _ _ _
theorem sres_zero {F : Shv R} {V U : Scheme.{0}} (g : V ⟶ U) : Sec.res g (0 : Sec F U) = 0 := map_zero _

def Step : Prop :=
  ∀ (R : Type) [CommRing R] {C J T : Cx R} (τ : Pair C J T), τ.IsTensor → LateralTheory.EtaleFoundations.acyc.ColExact C J →
    ∀ (n t0 : ℤ) (V : Scheme.{0}) (x : Tens C J V n), (∀ p : Ix n, p.1.2 < t0 → x p = 0) →
      Sec.map (T.d n (n + 1)) (τ.lift V n x) = 0 →
      Loc V fun W h => ∃ (x' : Tens C J W n) (Y : Tens C J W (n - 1)),
        (∀ p : Ix n, p.1.2 < t0 + 1 → x' p = 0) ∧ Tens.res h n x = x' + Dm W (n - 1) n (by ring) Y

theorem main (hS : Step) (τ : Pair C J T) (a : ℤ) [C.IsStrictlyGE a] (hτ : τ.IsTensor)
    (hc : LateralTheory.EtaleFoundations.acyc.ColExact C J) (n : ℤ) :
    ∀ k : ℕ, ∀ (V : Scheme.{0}) (x : Tens C J V n), (∀ p : Ix n, p.1.2 < n - a + 1 - k → x p = 0) →
      Sec.map (T.d n (n + 1)) (τ.lift V n x) = 0 →
      Loc V fun W h => ∃ y : Sec (T.X (n - 1)) W, Sec.map (T.d (n - 1) n) y = Sec.res h (τ.lift V n x) := by
  intro k
  induction k with
  | zero =>
    intro V x hx _
    obtain rfl : x = 0 := DFinsupp.ext fun p => by
      by_cases hp : p.1.2 < n - a + 1 - ((0 : ℕ) : ℤ)
      · exact hx p hp
      · exact tens_zero (fun m => sec_zero a (by have := p.2; push_cast at hp; omega) m) (x p)
    exact loc_all fun W h => ⟨0, by rw [smap_zero, map_zero, sres_zero]⟩
  | succ k ih =>
    intro V x hx hd
    refine loc_bind (hS R τ hτ hc n (n - a + 1 - ((k + 1 : ℕ) : ℤ)) V x hx hd) fun W h hW => ?_
    obtain ⟨x', Y, hv, he⟩ := hW
    have hl : τ.lift W n x' = Sec.res h (τ.lift V n x) - Sec.map (T.d (n - 1) n) (τ.lift W (n - 1) Y) := by
      rw [← lift_res, he, map_add (f := _), lift_Dm']; abel
    have hd' : Sec.map (T.d n (n + 1)) (τ.lift W n x') = 0 := by
      rw [hl, smap_sub, map_res, hd, sres_zero, map_dd, sub_zero]
    refine loc_mono (ih W x' (fun p hp => hv p (by push_cast at hp ⊢; omega)) hd') fun W' h' hy => ?_
    obtain ⟨y, hy⟩ := hy
    refine ⟨y + Sec.res h' (τ.lift W (n - 1) Y), ?_⟩
    rw [smap_add, map_res, hy, hl, sres_sub, res_comp]; abel

end LateralTheory.EtaleFoundations.stairPf

open LateralTheory.EtaleFoundations.acyc LateralTheory.EtaleFoundations.stairPf in
theorem LateralTheory.EtaleFoundations.acyc.stair_of (hS : Step) : LateralTheory.EtaleFoundations.acyc.stair := by
  intro R _ C J T a b _ _ τ hτ hc U n z hz
  refine loc_bind (hτ.1 U n z) fun V g hV => ?_
  obtain ⟨x, hx⟩ := hV
  have key := main hS τ a hτ hc n ((n - a + 1 - b).toNat) V x
    (fun p hp => tens_zero' (fun m => sec_zero (C := J) b
      (by have := Int.self_le_toNat (n - a + 1 - b); have := p.2; omega) m) (x p))
    (by rw [hx, map_res, hz, sres_zero])
  exact loc_mono key fun W h hy => by
    obtain ⟨y, hy⟩ := hy
    exact ⟨y, by rw [hy, hx, res_comp]⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.TateTwists.TensorVanishing =====
