module

public import Development.EtaleCohomology.EtaleSheaves.QuotAcycCut

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.ProdAcycPf, Development.EtaleCohomology.EtaleSheaves.ClsBiprodEqZero

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ProdAcycPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ProdAcycPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.QuotAcycCut\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry GlobalTheory.EtC

namespace LateralTheory.E.ProdAcycPf

theorem zero_acyc (H : LateralTheory.E.t_E2Cut.Hyp) (q : ℕ) (A : Type) [CommRing A] [Subsingleton A] : Acyc q (sp A) := by
  intro n i hn
  refine ⟨fun x y => ?_⟩
  have h0 : ∀ x : Ht q (sp A) n i, x = 0 := by
    intro x
    obtain ⟨Y, f, -, -, hx⟩ := H.a5 (ZMod q) (Spec (CommRingCat.of A)) (tw q i) n hn x
    have : IsEmpty (Spec (CommRingCat.of A)) := inferInstanceAs (IsEmpty (PrimeSpectrum A))
    have : IsIso (sch.map f) := inferInstance
    have hy : pull _ (inv (sch.map f)) _ _ (pull _ (sch.map f) _ _ x) = x := by
      rw [← pull_comp, IsIso.inv_hom_id, pull_id]
    rw [← hy, hx, map_zero]
  rw [h0 x, h0 y]

def Bin : Prop := LateralTheory.E.t_E2Cut.Hyp → ∀ (q : ℕ) (A R0 R1 : Type) [CommRing A] [CommRing R0] [CommRing R1],
  Nonempty (A ≃+* R0 × R1) → Acyc q (sp R0) → Acyc q (sp R1) → Acyc q (sp A)

def splitFirst (n : ℕ) (R : Fin (n + 1) → Type) [∀ k, CommRing (R k)] :
    (∀ k, R k) ≃+* R 0 × ∀ k : Fin n, R k.succ where
  toFun f := (f 0, fun k => f k.succ)
  invFun p := Fin.cons p.1 p.2
  left_inv f := Fin.cons_self_tail f
  right_inv p := by simp
  map_mul' f g := rfl
  map_add' f g := rfl

theorem prod_of (hB : Bin) : LateralTheory.E.QuotAcycCut.ProdAcyc := by
  intro H q A _ n
  induction n generalizing A with
  | zero =>
    intro R _ ⟨e⟩ _
    have : Subsingleton A := e.injective.subsingleton
    exact zero_acyc H q A
  | succ n ih =>
    intro R _ ⟨e⟩ hR
    refine hB H q A (R 0) (∀ k : Fin n, R k.succ) ⟨e.trans (splitFirst n R)⟩ (hR 0) ?_
    exact ih (∀ k : Fin n, R k.succ) (fun k => R k.succ) ⟨RingEquiv.refl _⟩ fun k => hR k.succ

end LateralTheory.E.ProdAcycPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ProdAcycPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.ClsBiprodEqZero =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.ClsBiprodEqZero", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.ProdAcycPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.BinPf

universe v u
variable {C : Type u} [Category.{v} C] [Preadditive C] [HasBinaryBiproducts C]

theorem cls_biprod_eq_zero {K₁ K₂ L : CochainComplex C ℤ} {n : ℤ} (x : CohomologyClass (K₁ ⊞ K₂) L n)
    (h₁ : cpre (Cocycle.ofHom (biprod.inl : K₁ ⟶ K₁ ⊞ K₂)) L n n (zero_add n) x = 0)
    (h₂ : cpre (Cocycle.ofHom (biprod.inr : K₂ ⟶ K₁ ⊞ K₂)) L n n (zero_add n) x = 0) : x = 0 := by
  obtain ⟨α, rfl⟩ := x.mk_surjective
  rw [cpre_mk, CohomologyClass.mk_eq_zero_iff] at h₁ h₂
  obtain ⟨m, hm, β₁, hβ₁⟩ := h₁
  obtain ⟨m', hm', β₂, hβ₂⟩ := h₂
  have hmm : m' = m := by omega
  subst hmm
  rw [CohomologyClass.mk_eq_zero_iff]
  refine ⟨m', hm', (Cochain.ofHom (biprod.fst : K₁ ⊞ K₂ ⟶ K₁)).comp β₁ (zero_add m') +
    (Cochain.ofHom (biprod.snd : K₁ ⊞ K₂ ⟶ K₂)).comp β₂ (zero_add m'), ?_⟩
  rw [δ_add, δ_ofHom_comp, δ_ofHom_comp, hβ₁, hβ₂]
  change (Cochain.ofHom (biprod.fst : K₁ ⊞ K₂ ⟶ K₁)).comp ((Cochain.ofHom biprod.inl).comp α.1 (zero_add n)) (zero_add n) +
    (Cochain.ofHom (biprod.snd : K₁ ⊞ K₂ ⟶ K₂)).comp ((Cochain.ofHom biprod.inr).comp α.1 (zero_add n)) (zero_add n) = α.1
  rw [← Cochain.comp_assoc_of_first_is_zero_cochain, ← Cochain.comp_assoc_of_first_is_zero_cochain,
    ← Cochain.add_comp, ← Cochain.ofHom_comp, ← Cochain.ofHom_comp, ← Cochain.ofHom_add, biprod.total,
    Cochain.id_comp]

theorem hkpull_comp {R : Type} [CommRing R] {K L M : Cx R} (f : K ⟶ L) (g : L ⟶ M) (F : Shv R) (n : ℤ)
    (x : HK R M F n) : HK.pull R (f ≫ g) F n x = HK.pull R f F n (HK.pull R g F n x) := by
  obtain ⟨x, rfl⟩ := x.mk_surjective
  refine congrArg CohomologyClass.mk (Cocycle.ext ?_)
  simp [zcomp, Cochain.ofHom_comp]

theorem hkpull_id {R : Type} [CommRing R] {K : Cx R} (F : Shv R) (n : ℤ)
    (x : HK R K F n) : HK.pull R (𝟙 K) F n x = x := by
  obtain ⟨x, rfl⟩ := x.mk_surjective
  refine congrArg CohomologyClass.mk (Cocycle.ext ?_)
  simp [zcomp]

def ChainsCoprod : Prop := ∀ (R : Type) [CommRing R] (U V : Spc),
  IsIso (biprod.desc ((chains R).map (coprod.inl : U ⟶ U ⨿ V)) ((chains R).map (coprod.inr : V ⟶ U ⨿ V)))

def CoprodAcyc : Prop := ∀ (q : ℕ) (U V : Spc), Acyc q U → Acyc q V → Acyc q (U ⨿ V)

theorem coprodAcyc_of (hC : ChainsCoprod) : CoprodAcyc := by
  intro q U V hU hV n i hn
  have hI := hC (ZMod q) U V
  set φ := biprod.desc ((chains (ZMod q)).map (coprod.inl : U ⟶ U ⨿ V)) ((chains (ZMod q)).map (coprod.inr : V ⟶ U ⨿ V))
  have h0 : ∀ x : Ht q (U ⨿ V) n i, x = 0 := by
    intro x
    have hy : HK.pull _ φ _ n x = 0 := by
      apply cls_biprod_eq_zero
      · have e := hkpull_comp (biprod.inl) φ (tw q i) n x
        rw [biprod.inl_desc] at e
        have : HK.pull _ ((chains (ZMod q)).map (coprod.inl : U ⟶ U ⨿ V)) (tw q i) n x = 0 :=
          (hU n i hn).elim _ _
        rw [this] at e
        exact e.symm
      · have e := hkpull_comp (biprod.inr) φ (tw q i) n x
        rw [biprod.inr_desc] at e
        have : HK.pull _ ((chains (ZMod q)).map (coprod.inr : V ⟶ U ⨿ V)) (tw q i) n x = 0 :=
          (hV n i hn).elim _ _
        rw [this] at e
        exact e.symm
    have e := hkpull_comp (inv φ) φ (tw q i) n x
    rw [IsIso.inv_hom_id, hkpull_id, hy, map_zero] at e
    exact e
  exact ⟨fun x y => by rw [h0 x, h0 y]⟩

def DescEqv : Prop := LateralTheory.E.t_E2Cut.Hyp → ∀ (q : ℕ) (A R0 R1 : Type) [CommRing A] [CommRing R0] [CommRing R1]
  (e : A ≃+* R0 × R1) (i : ℤ),
  Eqv _ (coprod.desc (spMap ((RingHom.fst R0 R1).comp e.toRingHom)) (spMap ((RingHom.snd R0 R1).comp e.toRingHom))) (tw q i)

end LateralTheory.E.BinPf

theorem LateralTheory.E.ProdAcycPf.Bin_of (hD : LateralTheory.E.BinPf.DescEqv) (hC : LateralTheory.E.BinPf.ChainsCoprod) :
    LateralTheory.E.ProdAcycPf.Bin := by
  intro H q A R0 R1 _ _ _ ⟨e⟩ h0 h1 n i hn
  have hb := (hD H q A R0 R1 e i n).1
  have hs := LateralTheory.E.BinPf.coprodAcyc_of hC q _ _ h0 h1 n i hn
  exact ⟨fun x y => hb (Subsingleton.elim _ _)⟩
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.ClsBiprodEqZero =====
