module

public import Development.EtaleCohomology.EtaleSheaves.LCIsoPf
import Mathlib.Algebra.Category.ModuleCat.FilteredColimits
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.EtaleSheaves.TwTrivPf, Development.EtaleCohomology.EtaleSheaves.UliftSmulEq

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.TwTrivPf =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.TwTrivPf", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.LCIsoPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.TwistTrivial

theorem genRes {q : ℕ} (i : ℤ) {V U : Scheme.{0}} (g : V ⟶ U) (ζ : Prim q Γ(U, ⊤)) :
    Sec.res g (twGen i ζ) = twGen i (ζ.map g.appTop.hom) := by
  unfold twGen ofRings.sec
  have h := congrArg (fun φ => φ.hom (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q i).obj Γ(U, ⊤)))
    ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).naturality g.op)
  simp only [ModuleCat.hom_comp, LinearMap.coe_comp] at h
  refine h.symm.trans ?_
  change ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q i)).app (op V)).hom
    (((Scheme.Γ ⋙ twF q i).map g.op).hom _) = _
  congr 1
  exact congrArg Submodule.Quotient.mk Finsupp.mapDomain_single

theorem prim_map_comp {q : ℕ} {X Y S : Scheme.{0}} (ζ : Prim q Γ(S, ⊤)) (s : X ⟶ S) (f : Y ⟶ X) :
    (ζ.map s.appTop.hom).map f.appTop.hom = ζ.map (f ≫ s).appTop.hom := by
  apply Subtype.ext
  change f.appTop.hom (s.appTop.hom ζ.1) = (f ≫ s).appTop.hom ζ.1
  rw [Scheme.Hom.comp_appTop]
  rfl

def Mul : Prop := ∀ (q : ℕ), ∃ μ : ∀ (j k l : ℤ), j + k = l → ∀ (X : Scheme.{0}), Sec (tw q k) X → (Sec (tw q j) X →+ Sec (tw q l) X),
  (∀ (j k l : ℤ) (h : j + k = l) {X Y : Scheme.{0}} (f : Y ⟶ X) (y : Sec (tw q k) X) (x : Sec (tw q j) X),
      Sec.res f (μ j k l h X y x) = μ j k l h Y (Sec.res f y) (Sec.res f x)) ∧
  (∀ (j k l k' : ℤ) (h : j + k = l) (h' : l + k' = j) (X : Scheme.{0}) (ζ : Prim q Γ(X, ⊤)) (x : Sec (tw q j) X),
      μ l k' j h' X (twGen k' ζ) (μ j k l h X (twGen k ζ) x) = x)

theorem TwTriv_of (hM : Mul) : LateralTheory.E.LCIsoPf.TwTriv := by
  intro q i S ζ
  obtain ⟨μ, hnat, hcan⟩ := hM q
  refine ⟨fun X s => AddEquiv.mk' ⟨μ 0 i i (zero_add i) X (twGen i (ζ.map s.appTop.hom)),
      μ i (-i) 0 (add_neg_cancel i) X (twGen (-i) (ζ.map s.appTop.hom)),
      fun x => hcan 0 i i (-i) (zero_add i) (add_neg_cancel i) X _ x,
      fun y => hcan i (-i) 0 i (add_neg_cancel i) (zero_add i) X _ y⟩ (fun a b => map_add (μ 0 i i (zero_add i) X (twGen i (ζ.map s.appTop.hom))) a b), ?_⟩
  intro X Y s t f hf x
  change Sec.res f (μ 0 i i _ X _ x) = μ 0 i i _ Y _ (Sec.res f x)
  rw [hnat, genRes, prim_map_comp, hf]

end LateralTheory.E.TwistTrivial
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.TwTrivPf =====

-- ===== clump member: Development.EtaleCohomology.EtaleSheaves.UliftSmulEq =====
-- clump-header: {"m": "Development.EtaleCohomology.EtaleSheaves.UliftSmulEq", "h": "module\n\npublic import Development.EtaleCohomology.EtaleSheaves.TwTrivPf\nimport Mathlib.Algebra.Category.ModuleCat.FilteredColimits\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.E.MulPf

def Gen : Prop := ∀ (q : ℕ), ∃ μ : ∀ (j k l : ℤ), j + k = l → ∀ (X : Scheme.{0}), Sec (tw q k) X → (Sec (tw q j) X →+ Sec (tw q l) X),
  (∀ (j k l : ℤ) (h : j + k = l) {X Y : Scheme.{0}} (f : Y ⟶ X) (y : Sec (tw q k) X) (x : Sec (tw q j) X),
      Sec.res f (μ j k l h X y x) = μ j k l h Y (Sec.res f y) (Sec.res f x)) ∧
  (∀ (j k l : ℤ) (h : j + k = l) (X : Scheme.{0}) (ζ : Prim q Γ(X, ⊤)), μ j k l h X (twGen k ζ) (twGen j ζ) = twGen l ζ)

def LocGen : Prop := ∀ (q : ℕ) (j : ℤ) (X : Scheme.{0}) (ζ : Prim q Γ(X, ⊤)) (x : Sec (tw q j) X),
  ∃ S ∈ Scheme.etaleTopology X, ∀ ⦃Y : Scheme.{0}⦄ (f : Y ⟶ X), S f →
    ∃ c : ℤ, Sec.res f x = c • twGen j (ζ.map f.appTop.hom)

theorem sep {q : ℕ} {j : ℤ} {X : Scheme.{0}} (S : Sieve X) (hS : S ∈ Scheme.etaleTopology X) (s t : Sec (tw q j) X)
    (h : ∀ ⦃Y : Scheme.{0}⦄ (f : Y ⟶ X), S f → Sec.res f s = Sec.res f t) : s = t :=
  Sheaf.isSeparated (tw q j) X S hS s t (fun _ f hf => h f hf)

theorem twGen_pow {q : ℕ} (m : ℤ) {U : Scheme.{0}} (ζ ξ : Prim q Γ(U, ⊤)) (a : (ZMod q)ˣ) (h : ξ.1 = ζ.1 ^ (a : ZMod q).val) :
    twGen m ξ = (ULift.up.{1} ((a ^ m : (ZMod q)ˣ) : ZMod q)) • twGen m ζ := by
  unfold twGen ofRings.sec
  have hmem : Finsupp.single ξ (1 : ULift.{1} (ZMod q)) - Finsupp.single ζ (ULift.up ((a ^ m : (ZMod q)ˣ) : ZMod q)) ∈ twRel q m Γ(U, ⊤) :=
    Submodule.subset_span ⟨ζ, ξ, a, h, rfl⟩
  have key : (Submodule.Quotient.mk (Finsupp.single ξ 1) : (twF q m).obj Γ(U, ⊤)) =
      (ULift.up.{1} ((a ^ m : (ZMod q)ˣ) : ZMod q)) • (Submodule.Quotient.mk (Finsupp.single ζ 1) : (twF q m).obj Γ(U, ⊤)) := by
    refine ((Submodule.Quotient.eq (twRel q m Γ(U, ⊤))).2 hmem).trans ?_
    rw [← Submodule.Quotient.mk_smul, Finsupp.smul_single, smul_eq_mul, mul_one]
  exact (congrArg (fun v => ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q m)).app (op U)).hom v) key).trans (map_smul _ _ _)

theorem locPres {q : ℕ} {j : ℤ} {X : Scheme.{0}} (x : Sec (tw q j) X) :
    ∃ S ∈ Scheme.etaleTopology X, ∀ ⦃Y : Scheme.{0}⦄ (f : Y ⟶ X), S f →
      ∃ v : (twF q j).obj Γ(Y, ⊤), Sec.res f x = ofRings.sec (twF q j) Y v := by
  refine ⟨_, Presheaf.imageSieve_mem (J := Scheme.etaleTopology) (toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q j))
    (U := op X) x, fun Y f hf => ?_⟩
  obtain ⟨t, ht⟩ := hf
  exact ⟨t, ht.symm⟩

def RootPow : Prop := ∀ (q : ℕ) (Y : Scheme.{0}) (ζ : Prim q Γ(Y, ⊤)) (s : Finset (Prim q Γ(Y, ⊤))),
  ∃ S ∈ Scheme.etaleTopology Y, ∀ ⦃Z : Scheme.{0}⦄ (g : Z ⟶ Y), S g → ∀ ξ ∈ s,
    ∃ a : (ZMod q)ˣ, (ξ.map g.appTop.hom).1 = (ζ.map g.appTop.hom).1 ^ (a : ZMod q).val

theorem secRes {q : ℕ} {j : ℤ} {V U : Scheme.{0}} (g : V ⟶ U) (v : (twF q j).obj Γ(U, ⊤)) :
    Sec.res g (ofRings.sec (twF q j) U v) = ofRings.sec (twF q j) V (((twF q j).map g.appTop).hom v) := by
  unfold ofRings.sec
  have h := congrArg (fun φ => φ.hom v) ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q j)).naturality g.op)
  simp only [ModuleCat.hom_comp, LinearMap.coe_comp] at h
  exact h.symm

theorem sec_single {q : ℕ} {j : ℤ} {U : Scheme.{0}} (ξ : Prim q Γ(U, ⊤)) (c : ULift.{1} (ZMod q)) :
    ofRings.sec (twF q j) U (Submodule.Quotient.mk (Finsupp.single ξ c) : (twF q j).obj Γ(U, ⊤)) = c • twGen j ξ := by
  unfold twGen ofRings.sec
  have key : (Submodule.Quotient.mk (Finsupp.single ξ c) : (twF q j).obj Γ(U, ⊤)) =
      c • (Submodule.Quotient.mk (Finsupp.single ξ 1) : (twF q j).obj Γ(U, ⊤)) := by
    rw [← Submodule.Quotient.mk_smul, Finsupp.smul_single, smul_eq_mul, mul_one]
  exact (congrArg (fun v => ((toSheafify Scheme.etaleTopology (Scheme.Γ ⋙ twF q j)).app (op U)).hom v) key).trans (map_smul _ _ _)

theorem ulift_smul_eq {q : ℕ} {M : Type*} [AddCommGroup M] [Module (ULift.{1} (ZMod q)) M] (c : ULift.{1} (ZMod q)) (v : M) :
    c • v = ((c.down.cast : ℤ)) • v := by
  have hc : c = (((c.down.cast : ℤ)) : ULift.{1} (ZMod q)) := ULift.ext (by
    show c.down = ((c.down.cast : ℤ) : ULift.{1} (ZMod q)).down
    exact (ZMod.intCast_zmod_cast c.down).symm)
  conv_lhs => rw [hc]
  exact Int.cast_smul_eq_zsmul _ _ _

theorem sec_sum {q : ℕ} {j : ℤ} {U : Scheme.{0}} {ι : Type} (s : Finset ι) (g : ι → (twF q j).obj Γ(U, ⊤)) :
    ofRings.sec (twF q j) U (∑ i ∈ s, g i) = ∑ i ∈ s, ofRings.sec (twF q j) U (g i) := by
  unfold ofRings.sec
  exact map_sum _ _ _

theorem LocGen_of (hR : RootPow) : LocGen := by
  intro q j X ζ x
  obtain ⟨S, hS, hv⟩ := locPres x
  have hv' : ∀ ⦃Y : Scheme.{0}⦄ (f : Y ⟶ X), S f → ∃ w : Prim q Γ(Y, ⊤) →₀ ULift.{1} (ZMod q),
      Sec.res f x = ofRings.sec (twF q j) Y (Submodule.Quotient.mk w : (twF q j).obj Γ(Y, ⊤)) := by
    intro Y f hf
    obtain ⟨v, hv⟩ := hv f hf
    obtain ⟨w, rfl⟩ := Submodule.Quotient.mk_surjective _ v
    exact ⟨w, hv⟩
  choose w hw using hv'
  have hT := fun ⦃Y : Scheme.{0}⦄ (f : Y ⟶ X) (hf : S f) => hR q Y (ζ.map f.appTop.hom) (w f hf).support
  choose T hTmem hTprop using hT
  refine ⟨Sieve.bind S.arrows T, Scheme.etaleTopology.bind_covering hS hTmem, ?_⟩
  rintro Z _ ⟨Y, h, f, hf, hh, rfl⟩
  have hres : Sec.res (h ≫ f) x = Sec.res h (Sec.res f x) := by
    simp only [Sec.res, op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.coe_comp, Function.comp_apply]
  rw [hres, hw f hf]
  erw [secRes]
  set G := twGen j (ζ.map (h ≫ f).appTop.hom)
  have hmk : (((twF q j).map h.appTop).hom (Submodule.Quotient.mk (w f hf) : (twF q j).obj Γ(Y, ⊤))) =
      ∑ ξ ∈ (w f hf).support, (Submodule.Quotient.mk (Finsupp.single (ξ.map h.appTop.hom) (w f hf ξ)) : (twF q j).obj Γ(Z, ⊤)) := by
    change (Submodule.Quotient.mk (Finsupp.mapDomain (Prim.map h.appTop.hom) (w f hf)) : (twF q j).obj Γ(Z, ⊤)) = _

    rw [Finsupp.mapDomain, Finsupp.sum, ← Submodule.mkQ_apply, map_sum]
    rfl
  rw [hmk]
  erw [sec_sum]
  have key : ∃ c : ULift.{1} (ZMod q), ∑ ξ ∈ (w f hf).support, ofRings.sec (twF q j) Z
      (Submodule.Quotient.mk (Finsupp.single (ξ.map h.appTop.hom) (w f hf ξ)) : (twF q j).obj Γ(Z, ⊤)) = c • G := by
    refine Finset.sum_induction _ (fun v => ∃ c : ULift.{1} (ZMod q), v = c • G) ?_ ⟨0, by simp⟩ ?_
    · rintro _ _ ⟨c, rfl⟩ ⟨d, rfl⟩
      exact ⟨c + d, (add_smul c d G).symm⟩
    · intro ξ hξ
      obtain ⟨a, ha⟩ := hTprop f hf h hh ξ hξ
      rw [sec_single, twGen_pow j _ _ a ha, LateralTheory.E.TwistTrivial.prim_map_comp, smul_smul]
      exact ⟨_, rfl⟩
  obtain ⟨c, hc⟩ := key
  exact ⟨_, hc.trans (ulift_smul_eq c G)⟩

theorem Mul_of (hG : Gen) (hL : LocGen) : LateralTheory.E.TwistTrivial.Mul := by
  intro q
  obtain ⟨μ, hnat, hgen⟩ := hG q
  refine ⟨μ, hnat, ?_⟩
  intro j k l k' h h' X ζ x
  obtain ⟨S, hS, hx⟩ := hL q j X ζ x
  refine sep S hS _ _ (fun Y f hf => ?_)
  obtain ⟨c, hc⟩ := hx f hf
  rw [hnat, hnat, LateralTheory.E.TwistTrivial.genRes, LateralTheory.E.TwistTrivial.genRes, hc, map_zsmul, hgen, map_zsmul, hgen]

end LateralTheory.E.MulPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.EtaleSheaves.UliftSmulEq =====
