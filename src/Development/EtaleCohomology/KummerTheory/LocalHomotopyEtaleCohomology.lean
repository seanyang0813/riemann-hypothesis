module

public import Development.EtaleCohomology.KummerTheory.FinalTheorems
public import Development.EtaleCohomology.KummerTheory.LHCutGlue
public import Development.EtaleCohomology.KummerTheory.LocCokPf
public import Mathlib.CategoryTheory.Generator.Sheaf
public import Development.EtaleCohomology.KummerTheory.InjSlice
public import Development.EtaleCohomology.KummerTheory.DictNormalPf
public import Development.EtaleCohomology.KummerTheory.InjSlicePf
public import Development.EtaleCohomology.KummerTheory.ContCut
public import Development.EtaleCohomology.KummerTheory.AffRingPf
public import Development.EtaleCohomology.KummerTheory.BcHomIsPullback
public import Development.EtaleCohomology.KummerTheory.CupAWCut
public import Development.EtaleCohomology.KummerTheory.DeltaPf
public import Development.EtaleCohomology.KummerTheory.DictExistPf
public import Development.EtaleCohomology.KummerTheory.DictZeroPf
public import Development.EtaleCohomology.KummerTheory.ExactPf
public import Development.EtaleCohomology.KummerTheory.FivePf
public import Development.EtaleCohomology.KummerTheory.FlasquePf
public import Development.EtaleCohomology.KummerTheory.ForgetInjPf
public import Development.EtaleCohomology.KummerTheory.GluePf
public import Development.EtaleCohomology.KummerTheory.ISupFinSuccEq
public import Development.EtaleCohomology.KummerTheory.LimOfIso
public import Development.EtaleCohomology.KummerTheory.MVnatPf
public import Development.EtaleCohomology.KummerTheory.NrmMkPf
public import Development.EtaleCohomology.KummerTheory.SHenCutPf
import Mathlib.Tactic.Linter.Style
import Mathlib.Algebra.Category.ModuleCat.Products
import Std.Tactic.BVDecide.Normalize.Prop
import Development.EtaleCohomology.KummerTheory.DictPfEv

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.EtaleCohomology.KummerExtensions.EtaleLefschetzHochschildSectionOfCupSchemaAndKum, Development.EtaleCohomology.KummerTheory.CokAffPf, Development.EtaleCohomology.KummerTheory.ConeAlgPf, Development.EtaleCohomology.KummerTheory.ConeCxPf, Development.EtaleCohomology.KummerTheory.ConeObjPf, Development.EtaleCohomology.KummerTheory.CorepPf, Development.EtaleCohomology.KummerTheory.CupSchPf, Development.EtaleCohomology.KummerTheory.EtaleLerayHirschConeSourceComponentVanishesAfter, Development.EtaleCohomology.KummerTheory.ExIsoPf, Development.EtaleCohomology.KummerTheory.GhostPf, Development.EtaleCohomology.KummerTheory.HomKillPf, Development.EtaleCohomology.KummerTheory.LhNatPf, Development.EtaleCohomology.KummerTheory.LocKerPf, Development.EtaleCohomology.KummerTheory.LocalHomotopyEtaleCohomology

-- ===== clump member: Development.EtaleCohomology.KummerExtensions.EtaleLefschetzHochschildSectionOfCupSchemaAndKum =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerExtensions.EtaleLefschetzHochschildSectionOfCupSchemaAndKum", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\npublic import Development.EtaleCohomology.KummerTheory.LHCutGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

section
noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC
open LateralTheory.KummerTheory LateralTheory.KummerTheory.LHCut

namespace MuPairClasses.Cb

private theorem pair_cls (hC : CupSch) (q : ℕ) {Z : Scheme.{0}} {i i' s t w : ℤ} (hw : s + t = w) (e : i + 0 = i')
    (ν : Pair (res _ (tw q i)) (res _ (tw q 0)) (res _ (tw q i'))) (hν : HEq ν (twPair q i 0))
    {u : Ht q (sch.obj Z) s i} {v : Ht q (sch.obj Z) t 0}
    {A : Sec ((res _ (tw q i)).X s) Z} {B : Sec ((res _ (tw q 0)).X t) Z} (hu : IsCls u A) (hv : IsCls v B) :
    IsCls (Ht.cast hw e (cup q u v)) (ν.mul Z s t w hw A B) := by
  cases e
  cases hw
  cases eq_of_heq hν
  exact hC (ZMod q) (twPair q i 0) Z rfl u v A B hu hv

private theorem mu_heq (q : ℕ) (i : ℤ) : HEq (mu q i) (twPair q i 0) :=
  cast_heq _ _

private theorem pull_cls (hD : Dict) (q : ℕ) {Y Z : Scheme.{0}} (f : Y ⟶ Z) {s i : ℤ} {u : Ht q (sch.obj Z) s i}
    {A : Sec ((res _ (tw q i)).X s) Z} (hu : IsCls u A) :
    IsCls (pull _ (sch.map f) _ _ u) (Sec.res f A) :=
  (hD (ZMod q) (res _ (tw q i)) Z s).2.2.2.2 f u A hu

private theorem ext_cls (hD : Dict) (hC : CupSch) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (U : Over S) (a n i : ℤ)
    (hw : a + (n - a) = n) (ν : Pair (res _ (tw q i)) (res _ (tw q 0)) (res _ (tw q i))) (hν : HEq ν (twPair q i 0))
    {x : Ht q (sch.obj X) a i} {y : Ht q (sch.obj U.left) (n - a) 0}
    {A : Sec ((res _ (tw q i)).X a) X} {B : Sec ((res _ (tw q 0)).X (n - a)) U.left} (hx : IsCls x A) (hy : IsCls y B) :
    IsCls (ext q p U.hom a n i x y)
      (ν.mul _ a (n - a) n hw (Sec.res (pullback.fst p U.hom) A) (Sec.res (pullback.snd p U.hom) B)) :=
  pair_cls hC q hw (add_zero i) ν hν (pull_cls hD q _ hx) (pull_cls hD q _ hy)

private theorem lh_cls (hD : Dict) (hC : CupSch) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ) (r : ℕ → ℕ)
    (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i) (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X)
    (hγ : ∀ a s, IsCls (c a s) (γ a s)) (ν : Pair (res _ (tw q i)) (res _ (tw q 0)) (res _ (tw q i)))
    (hν : HEq ν (twPair q i 0)) (M : ℕ) (n : ℤ) (U : Over S) (y) (b : FinalTheorems (res _ (tw q 0)) r M n U.left)
    (hb : ∀ a s, IsCls (y a s) (b a s)) :
    IsCls (lh q p U.hom i r c M n y) (Phi ν p γ n n rfl U b) := by
  obtain ⟨-, -, hsum, -⟩ := clsMore_of hD (ZMod q) (res _ (tw q i)) (pullback p U.hom) n
  exact hsum (Fin (M + 1)) _ _ fun a => hsum (Fin (r a)) _ _ fun s =>
    ext_cls hD hC q p U _ n i (by omega) ν hν (hγ a s) (hb a s)

end MuPairClasses.Cb

theorem MuPairClasses.Cb.etale_lefschetz_hochschild_section_of_cup_schema_and_kummer :
    LateralTheory.KummerTheory.Dict → LateralTheory.KummerTheory.CupSch → LateralTheory.KummerTheory.Ghost → LateralTheory.KummerTheory.InjSlice → LateralTheory.KummerTheory.StrictHenselization → LateralTheory.KummerTheory.Cont → LateralTheory.KummerTheory.LHCut.LhSec := by
  intro hD hC _ _ _ _ q X S p i r c γ hγ M n U y b hb
  exact MuPairClasses.Cb.lh_cls hD hC q p i r c γ hγ (mu q i) (MuPairClasses.Cb.mu_heq q i) M n U y b hb

end
end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerExtensions.EtaleLefschetzHochschildSectionOfCupSchemaAndKum =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.CokAffPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.CokAffPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.LocCokPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LHCut

theorem bcMap_comp' {X : Scheme.{0}} {R A B C : CommRingCat.{0}} (p : X ⟶ Spec R) (f : R ⟶ A) (g : R ⟶ B) (g' : R ⟶ C)
    (h : A ⟶ B) (h' : B ⟶ C) (e : f ≫ h = g) (e' : g ≫ h' = g') :
    bcMap p g g' h' e' ≫ bcMap p f g h e = bcMap p f g' (h ≫ h') (by rw [← Category.assoc, e, e']) := by
  apply pullback.hom_ext <;>
    simp only [bcMap, pullback.map, Category.assoc, pullback.lift_fst, pullback.lift_snd, pullback.lift_snd_assoc, Category.comp_id, Spec.map_comp]

theorem bcMap_eq {X : Scheme.{0}} {R A B : CommRingCat.{0}} (p : X ⟶ Spec R) (f : R ⟶ A) (g : R ⟶ B)
    (h h' : A ⟶ B) (e : f ≫ h = g) (hh : h = h') : bcMap p f g h e = bcMap p f g h' (hh ▸ e) := by
  subst hh; rfl

theorem CokAff_of (hS : StrictHenselization) (hC : Cont) (hL : LhNat) : CokAff := by
  classical
  intro h2 h6 hb1 q _ X R p _ _ hq i r c M N n hiso B s b x
  obtain ⟨J, _, _, D, cc, hcc, u, hSH, hu⟩ := hS B b
  have hun : ∀ {j k : J} (f : j ⟶ k), u.app j ≫ D.map f = u.app k := by
    intro j k f
    have := u.naturality f
    simpa using this.symm
  let j0 : J := (IsFiltered.nonempty (C := J)).some
  let w : B ⟶ cc.pt := u.app j0 ≫ cc.ι.app j0
  have hw : ∀ j, u.app j ≫ cc.ι.app j = w := by
    intro j
    show _ = u.app j0 ≫ cc.ι.app j0
    rw [← cc.w (IsFiltered.leftToMax j j0), ← cc.w (IsFiltered.rightToMax j j0), ← Category.assoc,
      ← Category.assoc, hun, hun]
  let v : R ⟶ cc.pt := s ≫ w
  obtain ⟨y, hy⟩ := (hiso cc.pt v hSH).2 (pull _ (sch.map (bcMap p s v w rfl)) _ _ x)
  have hqc : IsUnit ((q : ℕ) : cc.pt) := by simpa using hq.map v.hom
  have hB := fun n' i' => (hb1 q D cc hcc n' i').1
  choose jj z hz using fun (a : Fin (M + 1)) (t : Fin (r a)) => hB _ _ (y a t) hqc
  obtain ⟨k0, hk0⟩ := IsFiltered.sup_objs_exists
    (Finset.univ.image (fun pr : (Σ a : Fin (M + 1), Fin (r a)) => jj pr.1 pr.2))
  have fk : ∀ a t, jj a t ⟶ k0 := fun a t => (hk0 (Finset.mem_image.2 ⟨⟨a, t⟩, Finset.mem_univ _, rfl⟩)).some
  let y0 : ∀ a : Fin (M + 1), Fin (r a) → Ht q (sch.obj (Spec (D.obj k0))) (n - ((a : ℕ) : ℤ)) 0 :=
    fun a t => pull _ (sch.map (Spec.map (D.map (fk a t)))) _ _ (z a t)
  have hy0 : ∀ a t, pull _ (sch.map (Spec.map (cc.ι.app k0))) _ _ (y0 a t) = y a t := by
    intro a t
    rw [← hz a t]
    simp only [y0]
    rw [← pull_comp, ← Functor.map_comp, ← Spec.map_comp, cc.w]
    rfl
  let g : Over.mk (Spec.map v) ⟶ Over.mk (Spec.map (s ≫ u.app k0)) :=
    Over.homMk (Spec.map (cc.ι.app k0)) (by
      show Spec.map _ ≫ Spec.map _ = Spec.map _
      rw [← Spec.map_comp, Category.assoc, hw])
  have hrst : rst p g = bcMap p (s ≫ u.app k0) v (cc.ι.app k0) (by rw [Category.assoc, hw]) := rfl
  have h0 := hL h6 q p i r c M n g y0
  rw [hrst] at h0
  have hyy : (fun a t => pull _ (sch.map g.left) _ _ (y0 a t)) = y := by
    funext a t; exact hy0 a t
  rw [hyy] at h0
  let e := lh q p (Spec.map (s ≫ u.app k0)) i r c M n y0 -
    N • pull _ (sch.map (bcMap p s (s ≫ u.app k0) (u.app k0) rfl)) _ _ x
  have he : pull _ (sch.map (bcMap p (s ≫ u.app k0) v (cc.ι.app k0) (by rw [Category.assoc, hw]))) _ _ e = 0 := by
    simp only [e, map_sub, map_nsmul]
    erw [h0, hy, ← pull_comp, ← Functor.map_comp, bcMap_comp', bcMap_eq _ _ _ _ _ _ (hw k0)]
    exact sub_self _
  have hC2 := (hC h2 hb1 q p hq D cc hcc (fun j => s ≫ u.app j)
    (fun {j k} f => by simp only [Category.assoc, hun]) v (fun j => by simp only [v, Category.assoc, hw]) n i).2 k0 e he
  obtain ⟨k1, f1, hk1⟩ := hC2
  obtain ⟨het, 𝔮, h𝔮⟩ := hu k1
  refine ⟨D.obj k1, u.app k1, het, ⟨(by exact 𝔮 : Spec (D.obj k1)), ?_⟩, fun a t => pull _ (sch.map (Spec.map (D.map f1))) _ _ (y0 a t), ?_⟩
  · exact (PrimeSpectrum.ext h𝔮 : PrimeSpectrum.comap (u.app k1).hom 𝔮 = b)
  · let g' : Over.mk (Spec.map (s ≫ u.app k1)) ⟶ Over.mk (Spec.map (s ≫ u.app k0)) :=
      Over.homMk (Spec.map (D.map f1)) (by
        show Spec.map _ ≫ Spec.map _ = Spec.map _
        rw [← Spec.map_comp, Category.assoc, hun])
    have h1 := hL h6 q p i r c M n g' y0
    have hrst' : rst p g' = bcMap p (s ≫ u.app k0) (s ≫ u.app k1) (D.map f1) (by rw [Category.assoc, hun]) := rfl
    rw [hrst'] at h1
    beta_reduce at hk1
    simp only [e, map_sub, map_nsmul, sub_eq_zero] at hk1
    erw [h1] at hk1
    refine hk1.trans ?_
    erw [← pull_comp, ← Functor.map_comp, bcMap_comp', bcMap_eq _ _ _ _ _ _ (hun f1)]

end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.CokAffPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.ConeAlgPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.ConeAlgPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.ConeAlgPf
open LateralTheory.KummerTheory.LHCut

variable {Λ : Type} [CommRing Λ]

theorem sres_comp {F : Shv Λ} {W V U : Scheme.{0}} (h : W ⟶ V) (g : V ⟶ U) (a : Sec F U) :
    Sec.res h (Sec.res g a) = Sec.res (h ≫ g) a := by
  show (F.obj.map h.op).hom ((F.obj.map g.op).hom a) = (F.obj.map (h ≫ g).op).hom a
  rw [op_comp, Functor.map_comp]
  rfl

theorem smap_res {F G : Shv Λ} (φ : F ⟶ G) {V U : Scheme.{0}} (g : V ⟶ U) (a : Sec F U) :
    Sec.res g (Sec.map φ a) = Sec.map φ (Sec.res g a) :=
  (congrArg (fun k => k.hom a) (φ.hom.naturality g.op)).symm

theorem smap_comp {F G H : Shv Λ} (φ : F ⟶ G) (ψ : G ⟶ H) {U : Scheme.{0}} (a : Sec F U) :
    Sec.map ψ (Sec.map φ a) = Sec.map (φ ≫ ψ) a := rfl

theorem dd {C : Cx Λ} (i j k : ℤ) {U : Scheme.{0}} (a : Sec (C.X i) U) :
    Sec.map (C.d j k) (Sec.map (C.d i j) a) = 0 := by
  rw [smap_comp, HomologicalComplex.d_comp_d]; rfl

theorem leib' {I J K : Cx Λ} (μ : Pair I J K) (U : Scheme.{0}) (s t w : ℤ) (h : s + t = w) (a : Sec (I.X s) U)
    (b : Sec (J.X t) U) (ha : Sec.map (I.d s (s + 1)) a = 0) (t' w' : ℤ) (ht : t + 1 = t') (hw : w + 1 = w') :
    Sec.map (K.d w w') (μ.mul U s t w h a b) = s.negOnePow • μ.mul U s t' w' (by omega) a (Sec.map (J.d t t') b) := by
  subst ht; subst hw
  rw [μ.leibniz, ha, map_zero, LinearMap.zero_apply, zero_add]

theorem rst_fst {X S : Scheme.{0}} (p : X ⟶ S) {V U : Over S} (g : V ⟶ U) :
    rst p g ≫ pullback.fst p U.hom = pullback.fst p V.hom := by
  simp only [rst, pullback.map]; erw [pullback.lift_fst]; simp

theorem rst_snd {X S : Scheme.{0}} (p : X ⟶ S) {V U : Over S} (g : V ⟶ U) :
    rst p g ≫ pullback.snd p U.hom = pullback.snd p V.hom ≫ g.left := by
  simp only [rst, pullback.map]; erw [pullback.lift_snd]

theorem rst_comp {X S : Scheme.{0}} (p : X ⟶ S) {W V U : Over S} (g' : W ⟶ V) (g : V ⟶ U) :
    rst p (g' ≫ g) = rst p g' ≫ rst p g := by
  apply pullback.hom_ext
  · rw [Category.assoc, rst_fst, rst_fst, rst_fst]
  · rw [Category.assoc, rst_snd, rst_snd, ← Category.assoc, rst_snd, Category.assoc, Over.comp_left]

theorem smap_add {F G : Shv Λ} (φ : F ⟶ G) {U : Scheme.{0}} (a b : Sec F U) :
    Sec.map φ (a + b) = Sec.map φ a + Sec.map φ b := map_add _ _ _
theorem smap_sub {F G : Shv Λ} (φ : F ⟶ G) {U : Scheme.{0}} (a b : Sec F U) :
    Sec.map φ (a - b) = Sec.map φ a - Sec.map φ b := map_sub _ _ _
theorem smap_smul {F G : Shv Λ} (φ : F ⟶ G) {U : Scheme.{0}} (c : ULift.{1} Λ) (a : Sec F U) :
    Sec.map φ (c • a) = c • Sec.map φ a := map_smul _ _ _
theorem smap_sum {F G : Shv Λ} (φ : F ⟶ G) {U : Scheme.{0}} {ι : Type*} (t : Finset ι) (f : ι → Sec F U) :
    Sec.map φ (∑ i ∈ t, f i) = ∑ i ∈ t, Sec.map φ (f i) := map_sum _ _ _
theorem sres_sub {F : Shv Λ} {V U : Scheme.{0}} (g : V ⟶ U) (a b : Sec F U) :
    Sec.res g (a - b) = Sec.res g a - Sec.res g b := map_sub _ _ _
theorem sres_zero {F : Shv Λ} {V U : Scheme.{0}} (g : V ⟶ U) : Sec.res g (0 : Sec F U) = 0 := map_zero _
theorem sres_sum {F : Shv Λ} {V U : Scheme.{0}} (g : V ⟶ U) {ι : Type*} (t : Finset ι) (f : ι → Sec F U) :
    Sec.res g (∑ i ∈ t, f i) = ∑ i ∈ t, Sec.res g (f i) := map_sum _ _ _

section Main
variable {I J K : Cx Λ} {r : ℕ → ℕ} {M : ℕ}

theorem usmul_map {F G : Shv Λ} (φ : F ⟶ G) {U : Scheme.{0}} (u : ℤˣ) (a : Sec F U) :
    Sec.map φ (u • a) = u • Sec.map φ a := by
  rw [Units.smul_def, Units.smul_def]; exact map_zsmul _ _ _

theorem usmul_res {F : Shv Λ} {V U : Scheme.{0}} (g : V ⟶ U) (u : ℤˣ) (a : Sec F U) :
    Sec.res g (u • a) = u • Sec.res g a := by
  rw [Units.smul_def, Units.smul_def]; exact map_zsmul _ _ _

theorem dS_add (n m : ℤ) {U : Scheme.{0}} (b b' : FinalTheorems J r M n U) : dS n m (b + b') = dS n m b + dS n m b' := by
  funext a s
  simp only [dS, Pi.add_apply]
  rw [smap_add, smul_add]

theorem dS_smul (n m : ℤ) {U : Scheme.{0}} (c : ULift.{1} Λ) (b : FinalTheorems J r M n U) : dS n m (c • b) = c • dS n m b := by
  funext a s
  simp only [dS, Pi.smul_apply]
  rw [smap_smul, Units.smul_def, Units.smul_def, smul_comm]

theorem dS_dS (n m k : ℤ) {U : Scheme.{0}} (b : FinalTheorems J r M n U) : dS m k (dS n m b) = 0 := by
  funext a s
  simp only [dS, Pi.zero_apply]
  rw [usmul_map, dd, smul_zero, smul_zero]

variable (μ : Pair I J K) {X S : Scheme.{0}} (p : X ⟶ S) (γ : ∀ a : ℕ, Fin (r a) → Sec (I.X (a : ℤ)) X)

theorem Phi_add (n w : ℤ) (h : n = w) (U : Over S) (b b' : FinalTheorems J r M n U.left) :
    Phi μ p γ n w h U (b + b') = Phi μ p γ n w h U b + Phi μ p γ n w h U b' := by
  simp only [Phi, Pi.add_apply, map_add (f := _), Finset.sum_add_distrib]

theorem Phi_smul (n w : ℤ) (h : n = w) (U : Over S) (c : ULift.{1} Λ) (b : FinalTheorems J r M n U.left) :
    Phi μ p γ n w h U (c • b) = c • Phi μ p γ n w h U b := by
  simp only [Phi, Pi.smul_apply, map_smul, Finset.smul_sum]

theorem d_Phi (hγ : Closed γ) (n w : ℤ) (h : n = w) (n' w' : ℤ) (hn : n + 1 = n') (hw : w + 1 = w') (U : Over S)
    (b : FinalTheorems J r M n U.left) :
    Sec.map (K.d w w') (Phi μ p γ n w h U b) = Phi μ p γ n' w' (by omega) U (dS n n' b) := by
  simp only [Phi, dS]
  rw [smap_sum]
  refine Finset.sum_congr rfl (fun a _ => ?_)
  rw [smap_sum]
  refine Finset.sum_congr rfl (fun s _ => ?_)
  have ha : Sec.map (I.d ((a : ℕ) : ℤ) ((a : ℕ) + 1)) (Sec.res (pullback.fst p U.hom) (γ a s)) = 0 := by
    rw [← smap_res, hγ]; exact sres_zero _
  rw [leib' μ _ _ _ _ _ _ _ ha (n' - ((a : ℕ) : ℤ)) w' (by omega) hw, usmul_res, smap_res, Units.smul_def,
    Units.smul_def, map_zsmul]

theorem Phi_res (n w : ℤ) (h : n = w) {V U : Over S} (g : V ⟶ U) (b : FinalTheorems J r M n U.left) :
    Sec.res (rst p g) (Phi μ p γ n w h U b) = Phi μ p γ n w h V (fun a s => Sec.res g.left (b a s)) := by
  simp only [Phi]
  rw [sres_sum]
  refine Finset.sum_congr rfl (fun a _ => ?_)
  rw [sres_sum]
  refine Finset.sum_congr rfl (fun s _ => ?_)
  rw [μ.nat, sres_comp, sres_comp, sres_comp, rst_fst, rst_snd]

end Main

theorem coneAlg_of : ConeAlg := by
  intro Λ _ I J K μ X S p r M γ hγ j j' h U
  refine ⟨⟨fun x y => ?_, fun c x => ?_⟩, fun j'' h' x => ?_, fun V g => ⟨⟨fun x y => ?_, fun c x => ?_⟩, fun x => ?_,
    fun W g' x => ?_⟩⟩
  · refine Prod.ext (dS_add _ _ _ _) ?_
    show Phi μ p γ _ _ h U (x.1 + y.1) - Sec.map (K.d j j') (x.2 + y.2) = _
    rw [Phi_add, smap_add, add_sub_add_comm]; rfl
  · refine Prod.ext (dS_smul _ _ _ _) ?_
    show Phi μ p γ _ _ h U (c • x.1) - Sec.map (K.d j j') (c • x.2) = _
    rw [Phi_smul, smap_smul, ← smul_sub]; rfl
  · refine Prod.ext (dS_dS _ _ _ _) ?_
    show Phi μ p γ _ _ h' U (dS _ _ x.1) - Sec.map (K.d j' j'') (Phi μ p γ _ _ h U x.1 - Sec.map (K.d j j') x.2) = 0
    rw [smap_sub, d_Phi μ p γ hγ (j + 1) j' h (j' + 1) j'' (by omega) h', dd, sub_zero, sub_self]
  · refine Prod.ext ?_ (map_add _ _ _)
    funext a s; exact map_add _ _ _
  · refine Prod.ext ?_ (map_smul _ _ _)
    funext a s; exact map_smul _ _ _
  · refine Prod.ext ?_ ?_
    · funext a s
      show Sec.res g.left (_ • Sec.map _ _) = _ • Sec.map _ (Sec.res g.left _)
      rw [usmul_res, smap_res]
    · show Sec.res (rst p g) (Phi μ p γ _ _ h U x.1 - Sec.map (K.d j j') x.2) =
        Phi μ p γ _ _ h V (fun a s => Sec.res g.left (x.1 a s)) - Sec.map (K.d j j') (Sec.res (rst p g) x.2)
      rw [sres_sub, Phi_res, smap_res]
  · refine Prod.ext ?_ ?_
    · funext a s
      show Sec.res (g' ≫ g).left _ = Sec.res g'.left (Sec.res g.left _)
      rw [Over.comp_left, sres_comp]
    · show Sec.res (rst p (g' ≫ g)) x.2 = Sec.res (rst p g') (Sec.res (rst p g) x.2)
      rw [rst_comp, sres_comp]

end LateralTheory.KummerTheory.ConeAlgPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.ConeAlgPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.ConeCxPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.ConeCxPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LHCut

def shvHomOf {Λ : Type} [CommRing Λ] {S : Scheme.{0}} (F G : SlShv Λ S)
    (f : ∀ U : Over S, F.obj.obj (op U) →ₗ[ULift.{1} Λ] G.obj.obj (op U))
    (hf : ∀ (V U : Over S) (g : V ⟶ U) x, f V ((F.obj.map g.op).hom x) = (G.obj.map g.op).hom (f U x)) : F ⟶ G :=
  ⟨{ app := fun U => ModuleCat.ofHom (f U.unop)
     naturality := by intro U V g; ext x; exact hf V.unop U.unop g.unop x }⟩

lemma sec_sub {Λ : Type} [CommRing Λ] {F : Shv Λ} (hF : IsZero F) (U : Scheme.{0}) : Subsingleton (Sec F U) := by
  constructor
  intro a b
  have h := hF.eq_of_src (𝟙 F) 0
  have ha : a = Sec.map (𝟙 F) a := rfl
  have hb : b = Sec.map (𝟙 F) b := rfl
  rw [ha, hb, h]
  rfl

lemma isZero_of_sub {Λ : Type} [CommRing Λ] {S : Scheme.{0}} (F : SlShv Λ S)
    (h : ∀ U : Over S, Subsingleton (F.obj.obj (op U))) : IsZero F := by
  rw [IsZero.iff_id_eq_zero]
  ext U x
  exact Subsingleton.elim _ _

theorem coneCx_of (h1 : ConeObj) (h2 : ConeAlg) : ConeCx := by
  intro Λ _ I J K μ hJ hK X S p r M γ hγ
  choose T hT e he using fun j : ℤ => h1 Λ J K hJ.1 hK.1 p r M j
  have hA := fun j : ℤ => h2 Λ μ p r M γ hγ j (j + 1) rfl
  let D : ∀ (j : ℤ) (U : Over S), (T j).obj.obj (op U) →ₗ[ULift.{1} Λ] (T (j + 1)).obj.obj (op U) :=
    fun j U => (e (j + 1) U).symm.toLinearMap ∘ₗ IsLinearMap.mk' _ (hA j U).1 ∘ₗ (e j U).toLinearMap
  have hD : ∀ (j : ℤ) (U : Over S) x, e (j + 1) U (D j U x) = cD μ p γ j (j + 1) rfl U (e j U x) := by
    intro j U x
    simp [D]
  let d : ∀ j : ℤ, T j ⟶ T (j + 1) := fun j => shvHomOf (T j) (T (j + 1)) (D j) (by
    intro V U g x
    refine (e (j + 1) V).injective ?_
    rw [hD, he, he, hD, ((hA j U).2.2 V g).2.1])
  have sq : ∀ j : ℤ, d j ≫ d (j + 1) = 0 := by
    intro j
    ext U x
    change D (j + 1) U.unop (D j U.unop x) = 0
    refine (e (j + 1 + 1) U.unop).injective ?_
    rw [hD, hD, (hA j U.unop).2.1, map_zero]
  refine ⟨CochainComplex.of T d sq, fun j => hT j, ?_, fun j U => (e j U).toAddEquiv, fun j V U g x => he j V U g x, ?_⟩
  · intro j hj
    apply isZero_of_sub
    intro U
    have : Subsingleton (Cone J K p r M j U) := by
      have h3 : ∀ (a : Fin (M + 1)) (s : Fin (r a)), Subsingleton (Sec (J.X (j + 1 - ((a : ℕ) : ℤ))) U.left) :=
        fun a s => sec_sub (hJ.2 _ (by omega)) _
      have h4 : Subsingleton (Sec (K.X j) (pullback p U.hom)) := sec_sub (hK.2 _ (by omega)) _
      constructor
      intro x y
      refine Prod.ext ?_ (Subsingleton.elim _ _)
      funext a s
      exact (h3 a s).elim _ _
    exact (e j U).injective.subsingleton
  · intro j j' h U x
    subst h
    have hd : (CochainComplex.of T d sq).d j (j + 1) = d j := CochainComplex.of_d _ _ _
    rw [hd]
    exact hD j U x

end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.ConeCxPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.ConeObjPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.ConeObjPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Category.ModuleCat.Products\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LHCut

theorem sym_tot {X S : Scheme.{0}} (p : X ⟶ S) {V U : Over S} (g : V ⟶ U) :
    rst p g ≫ (pullbackSymmetry p U.hom).hom = (pullbackSymmetry p V.hom).hom ≫ (tot p).map g := by
  change rst p g ≫ (pullbackSymmetry p U.hom).hom = (pullbackSymmetry p V.hom).hom ≫
    pullback.lift (pullback.fst V.hom p ≫ g.left) (pullback.snd V.hom p)
      (by rw [Category.assoc, Over.w g]; exact pullback.condition)
  apply pullback.hom_ext <;> simp only [rst, Category.assoc, pullbackSymmetry_hom_comp_fst, pullbackSymmetry_hom_comp_snd]
  · erw [pullback.lift_fst, pullbackSymmetry_hom_comp_fst_assoc]; simp only [pullback.map]; erw [pullback.lift_snd]
  · erw [pullback.lift_snd, pullbackSymmetry_hom_comp_snd]; simp only [pullback.map, Category.comp_id]; erw [pullback.lift_fst]

def prodSec {Λ : Type} [CommRing Λ] {S : Scheme.{0}} {ι : Type 1} (G : ι → SlShv Λ S) (U : Over S) :
    (∏ᶜ G).obj.obj (op U) →ₗ[ULift.{1} Λ] (∀ i, (G i).obj.obj (op U)) :=
  LinearMap.pi fun i => ((Pi.π G i).hom.app (op U)).hom

theorem prodSec_bij {Λ : Type} [CommRing Λ] {S : Scheme.{0}} {ι : Type 1} (G : ι → SlShv Λ S) (U : Over S) :
    Function.Bijective (prodSec G U) := by
  let F : SlShv Λ S ⥤ ModuleCat.{1} (ULift.{1} Λ) := sheafToPresheaf (Scheme.etaleTopology.over S) (ModuleCat.{1} (ULift.{1} Λ)) ⋙
    (evaluation (Over S)ᵒᵖ (ModuleCat.{1} (ULift.{1} Λ))).obj (op U)
  let e := PreservesProduct.iso F G ≪≫ ModuleCat.piIsoPi.{1, 1, 0} (fun i => F.obj (G i))
  have : ∀ x, prodSec G U x = e.hom x := by
    intro x; funext i
    have h := congrArg (fun φ => φ.hom x) (congrArg (fun ψ => (PreservesProduct.iso F G).hom ≫ ψ)
      (ModuleCat.piIsoPi_hom_ker_subtype.{1, 1, 0} (fun i => F.obj (G i)) i))
    simp only [← Category.assoc, PreservesProduct.iso_hom, piComparison_comp_π] at h
    exact h.symm
  have hb : Function.Bijective e.hom := e.toLinearEquiv.bijective
  have h2 : (prodSec G U : _ → _) = fun x => e.hom x := funext this
  rw [h2]; exact hb

theorem coneObj_of (h : InjSlice) : ConeObj := by
  intro Λ _ J K hJ hK X S p r M j
  let σ := Σ a : Fin (M + 1), Fin (r a)
  have hs : ∀ a : Fin (M + 1), ∃ hh : Presheaf.IsSheaf (Scheme.etaleTopology.over S)
      ((Over.forget S).op ⋙ (J.X (j + 1 - ((a : ℕ) : ℤ))).obj),
      Injective (⟨_, hh⟩ : SlShv Λ S) := fun a => (h Λ (J.X _) p).2
  obtain ⟨hk, ik⟩ := (h Λ (K.X j) p).1
  let G : ULift.{1} (Option σ) → SlShv Λ S := fun o => match o.down with
    | none => ⟨_, hk⟩
    | some ⟨a, _⟩ => ⟨_, (hs a).choose⟩
  have hG : ∀ o, Injective (G o) := by
    rintro ⟨o⟩; rcases o with _ | ⟨a, s⟩
    · exact ik
    · exact (hs a).choose_spec
  refine ⟨∏ᶜ G, inferInstance, ?_⟩
  let sy : ∀ U : Over S, (K.X j).obj.obj (op ((tot p).obj U)) ≃ₗ[ULift.{1} Λ] Sec (K.X j) (pullback p U.hom) :=
    fun U => ((K.X j).obj.mapIso (pullbackSymmetry p U.hom).op).toLinearEquiv
  let f2 : ∀ U : Over S, (∀ o, (G o).obj.obj (op U)) ≃ₗ[ULift.{1} Λ] Cone J K p r M j U := fun U =>
    { toFun := fun x => (fun a s => x ⟨some ⟨a, s⟩⟩, sy U (x ⟨none⟩))
      invFun := fun y o => match o with
        | ⟨none⟩ => (sy U).symm y.2
        | ⟨some ⟨a, s⟩⟩ => y.1 a s
      map_add' := fun x y => Prod.ext rfl ((sy U).map_add _ _)
      map_smul' := fun c x => Prod.ext rfl ((sy U).map_smul _ _)
      left_inv := by
        intro x; funext o; rcases o with ⟨_ | ⟨a, s⟩⟩
        · exact (sy U).symm_apply_apply _
        · rfl
      right_inv := by
        intro y; ext a s
        · rfl
        · exact (sy U).apply_symm_apply _ }
  refine ⟨fun U => (LinearEquiv.ofBijective (prodSec G U) (prodSec_bij G U)).trans (f2 U), ?_⟩
  intro V U g x
  have nat : ∀ o, ((Pi.π G o).hom.app (op V)).hom (((∏ᶜ G).obj.map g.op).hom x) =
      ((G o).obj.map g.op).hom (((Pi.π G o).hom.app (op U)).hom x) := fun o => by
    have := congrArg (fun φ => φ.hom x) ((Pi.π G o).hom.naturality g.op)
    simpa using this
  refine Prod.ext ?_ ?_
  · funext a s; exact nat ⟨some ⟨a, s⟩⟩
  · change (sy V) (((Pi.π G ⟨none⟩).hom.app (op V)).hom _) = Sec.res (rst p g) ((sy U) _)
    rw [nat ⟨none⟩]
    have key : (K.X j).obj.map ((tot p).op.map g.op) ≫ (K.X j).obj.map (pullbackSymmetry p V.hom).op.hom =
        (K.X j).obj.map ((pullbackSymmetry p U.hom).op.hom ≫ (rst p g).op) := by
      refine ((K.X j).obj.map_comp _ _).symm.trans ?_; congr 1; apply Quiver.Hom.unop_inj
      simp only [Iso.op_hom, Quiver.Hom.unop_op, Functor.op_map]
      exact (sym_tot p g).symm
    change ((K.X j).obj.map ((tot p).op.map g.op) ≫ (K.X j).obj.map (pullbackSymmetry p V.hom).op.hom).hom
      (((Pi.π G ⟨none⟩).hom.app (op U)).hom x) = _
    rw [key, (K.X j).obj.map_comp]; rfl

end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.ConeObjPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.CorepPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.CorepPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\npublic import Mathlib.CategoryTheory.Generator.Sheaf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite

namespace LateralTheory.KummerTheory.LHCut

theorem corep_of : Corep := by
  intro Λ _ S U
  let M : ModuleCat.{1} (ULift.{1} Λ) := ModuleCat.of (ULift.{1} Λ) (ULift.{1} Λ)
  let P : SlShv Λ S := Sheaf.freeYoneda (Scheme.etaleTopology.over S) U M
  have key : ∀ (F : SlShv Λ S) (φ : P ⟶ F),
      Sheaf.freeYonedaHomEquiv φ = Sheaf.freeYonedaHomEquiv (𝟙 P) ≫ φ.hom.app (op U) := by
    intro F φ
    conv_lhs => rw [← Category.id_comp φ]
    simp only [Sheaf.freeYonedaHomEquiv]
    rfl
  refine ⟨P, (Sheaf.freeYonedaHomEquiv (𝟙 P)).hom 1, fun F => ?_⟩
  have e : (fun φ : P ⟶ F => (φ.hom.app (op U)).hom ((Sheaf.freeYonedaHomEquiv (𝟙 P)).hom 1)) =
      (fun g : M ⟶ F.obj.obj (op U) => g.hom 1) ∘ Sheaf.freeYonedaHomEquiv := by
    funext φ
    simp only [Function.comp_apply, key F φ]
    rfl
  rw [e]
  refine Function.Bijective.comp ⟨fun g h hgh => ?_, fun n => ?_⟩ (Equiv.bijective _)
  · refine ModuleCat.hom_ext (LinearMap.ext fun x => ?_)
    have : x = x • (1 : ULift.{1} Λ) := (mul_one x).symm
    rw [this, map_smul, map_smul]
    exact congrArg (x • ·) hgh
  · exact ⟨ModuleCat.ofHom (LinearMap.toSpanSingleton (ULift.{1} Λ) _ n), one_smul _ n⟩

end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.CorepPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.CupSchPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.CupSchPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.KummerTheory

theorem cupSch_ev_pos {R : Type} [CommRing R] {X : Scheme.{0}} {I : Cx R} {n : ℤ}
    (α : Cochain ((chains R).obj (sch.obj X)) I n)
    (hα : ∀ (p : ℕ) (s : ℤ) (h : -((p + 1 : ℕ) : ℤ) + n = s) (U : Scheme.{0}) (y : Sx (sch.obj X) (p + 1) U),
      ev α (p + 1) s h U y = 0) :
    ∀ (p : ℕ), 0 < p → ∀ (s : ℤ) (h : -(p : ℤ) + n = s) (U : Scheme.{0}) (y : Sx (sch.obj X) p U), ev α p s h U y = 0 := by
  intro p hp s h U y
  obtain ⟨q, rfl⟩ : ∃ q, p = q + 1 := ⟨p - 1, by omega⟩
  exact hα q s h U y

theorem cupSch_mul_cast {R : Type} [CommRing R] {I J K : Cx R} (μ : Pair I J K) (U : Scheme.{0}) {n m k : ℤ}
    (f : ∀ s : ℤ, s = n → Sec (I.X s) U) (g : ∀ t : ℤ, t = m → Sec (J.X t) U)
    (s t : ℤ) (hs : s = n) (ht : t = m) (h : s + t = k) (hk : n + m = k) :
    μ.mul U s t k h (f s hs) (g t ht) = μ.mul U n m k hk (f n rfl) (g m rfl) := by
  subst hs; subst ht; rfl

theorem CupSch_of (hAW : CupAW) : CupSch := by
  intro R _ I J K μ X n m k hk x y a b hx hy
  obtain ⟨α, rfl, ha, hα⟩ := hx
  obtain ⟨β, rfl, hb, hβ⟩ := hy
  obtain ⟨γ, hγ, hc⟩ := hAW R μ (sch.obj X) hk α β
  refine ⟨γ, hc.symm, ?_, ?_⟩
  · have h0 := hγ 0 k (by simp) X (𝟙 X)
    rw [h0, Fin.sum_univ_one]
    simp only [Fin.val_zero, Nat.cast_zero, mul_zero, Int.negOnePow_zero, one_smul]
    rw [← ha, ← hb]
    exact cupSch_mul_cast μ X (fun s hs => ev α.1 0 s (by omega) X (𝟙 X)) (fun t ht => ev β.1 0 t (by omega) X (𝟙 X))
      _ _ (by simp) (by simp) _ hk
  · intro p s h U z
    rw [hγ (p + 1) s h U z]
    refine Finset.sum_eq_zero fun i _ => ?_
    by_cases hi : (i : ℕ) = 0
    · rw [cupSch_ev_pos β.1 hβ ((p + 1) - (i : ℕ)) (by omega), map_zero, smul_zero]
    · rw [cupSch_ev_pos α.1 hα (i : ℕ) (by omega), map_zero, LinearMap.zero_apply, smul_zero]

end LateralTheory.KummerTheory
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.CupSchPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.EtaleLerayHirschConeSourceComponentVanishesAfter =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.EtaleLerayHirschConeSourceComponentVanishesAfter", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\npublic import Development.EtaleCohomology.KummerTheory.LHCutGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LHCut

theorem lcv_cls_of_d {R : Type} [CommRing R] (hD : Dict) {I : Cx R} {X : Scheme.{0}} (n n' : ℤ) (h : n + 1 = n')
    (a : Sec (I.X n) X) (ha : Sec.map (I.d n n') a = 0) : ∃ x, IsCls x a := by
  subst h; exact (hD R I X n).1 a ha

theorem lcv_d_of_cls {R : Type} [CommRing R] (hD : Dict) {I : Cx R} {X : Scheme.{0}} {n : ℤ} (n' : ℤ) (h : n + 1 = n')
    x (a : Sec (I.X n) X) (ha : IsCls x a) : Sec.map (I.d n n') a = 0 := by
  subst h; exact ((hD R I X n).2.2.1 x a ha).1

section
variable {Λ : Type} [CommRing Λ] {I J K : Cx Λ} {X S : Scheme.{0}} {r : ℕ → ℕ} {M : ℕ}
  (μ : Pair I J K) (p : X ⟶ S) (γ : ∀ a : ℕ, Fin (r a) → Sec (I.X (a : ℤ)) X)

theorem lcv_cD_fst (j j' : ℤ) (h : j + 1 = j') (U : Over S) (x : Cone J K p r M j U) :
    (cD μ p γ j j' h U x).1 = dS (j + 1) (j' + 1) x.1 := rfl

theorem lcv_cD_snd (j j' : ℤ) (h : j + 1 = j') (U : Over S) (x : Cone J K p r M j U) :
    (cD μ p γ j j' h U x).2 = Phi μ p γ (j + 1) j' h U x.1 - Sec.map (K.d j j') x.2 := rfl

theorem lcv_cres_fst {j : ℤ} {V U : Over S} (g : V ⟶ U) (x : Cone J K p r M j U) :
    (cres g x).1 = fun a s => Sec.res g.left (x.1 a s) := rfl

theorem lcv_cres_snd {j : ℤ} {V U : Over S} (g : V ⟶ U) (x : Cone J K p r M j U) :
    (cres g x).2 = Sec.res (rst p g) x.2 := rfl
end

theorem lcv_step1 (hD : Dict) (hL : LhSec) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ)
    (r : ℕ → ℕ) (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i)
    (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X) (hc : ∀ a s, IsCls (c a s) (γ a s)) (M N : ℕ)
    (j₀ : ℤ) (hK : KerLoc q p i r c M N (j₀ + 1 + 1)) (U : Over S)
    (x1 : FinalTheorems (res _ (tw q 0)) r M (j₀ + 1 + 1) U.left) (k : Sec ((res _ (tw q i)).X (j₀ + 1)) (pullback p U.hom))
    (hx1 : dS (j₀ + 1 + 1) (j₀ + 1 + 1 + 1) x1 = 0)
    (hx2 : Phi (mu q i) p γ (j₀ + 1 + 1) (j₀ + 1 + 1) rfl U x1 = Sec.map ((res _ (tw q i)).d (j₀ + 1) (j₀ + 1 + 1)) k)
    (u : U.left) : ∃ (V1 : Over S) (g1 : V1 ⟶ U), Nbhd g1 u ∧ ∃ b : FinalTheorems (res _ (tw q 0)) r M (j₀ + 1) V1.left,
      dS (j₀ + 1) (j₀ + 1 + 1) b = fun a s => N • Sec.res g1.left (x1 a s) := by
  have hCM := clsMore_of hD
  have hb : ∀ (a : Fin (M + 1)) (s : Fin (r a)),
      Sec.map ((res _ (tw q 0)).d (j₀ + 1 + 1 - ((a : ℕ) : ℤ)) (j₀ + 1 + 1 + 1 - ((a : ℕ) : ℤ))) (x1 a s) = 0 := by
    intro a s
    have h0 := congrFun (congrFun hx1 a) s
    have := congrArg (fun v => ((a : ℕ) : ℤ).negOnePow • v) h0
    simpa only [dS, Pi.zero_apply, smul_smul, Int.units_mul_self, one_smul, smul_zero] using this
  choose y hy using fun a s => lcv_cls_of_d hD _ _ (by omega) _ (hb a s)
  have hl := hL q p i r c γ hc M (j₀ + 1 + 1) U y x1 hy
  have hly : lh q p U.hom i r c M (j₀ + 1 + 1) y = 0 :=
    ((hCM _ _ _ _).2.2.2 (j₀ + 1) rfl _ 0 _ 0 hl (hCM _ _ _ _).1).2 ⟨k, by rw [sub_zero]; exact hx2.symm⟩
  obtain ⟨V1, g1, hg1, hk1⟩ := hK U u y hly
  have hcl1 : ∀ (a : Fin (M + 1)) (s : Fin (r a)),
      IsCls (N • pull _ (sch.map g1.left) _ _ (y a s)) (N • Sec.res g1.left (x1 a s)) :=
    fun a s => (hCM _ _ _ _).2.1 N _ _ ((hD _ _ _ _).2.2.2.2 g1.left _ _ (hy a s))
  choose b1 hb1 using fun (a : Fin (M + 1)) (s : Fin (r a)) =>
    ((hCM _ _ _ _).2.2.2 (j₀ + 1 - ((a : ℕ) : ℤ)) (by omega) _ 0 _ 0 (hcl1 a s) (hCM _ _ _ _).1).1 (hk1 a s)
  refine ⟨V1, g1, hg1, fun a s => ((a : ℕ) : ℤ).negOnePow • b1 a s, ?_⟩
  funext a s
  simp only [dS, Units.smul_def, map_zsmul, smul_smul, ← Units.val_mul, Int.units_mul_self, Units.val_one, one_smul]
  exact (hb1 a s).trans (sub_zero _)

theorem lcv_step2 (hD : Dict) (hL : LhSec) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ)
    (r : ℕ → ℕ) (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i)
    (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X) (hc : ∀ a s, IsCls (c a s) (γ a s)) (M N : ℕ)
    (j₀ : ℤ) (hC : CokLoc q p i r c M N (j₀ + 1)) (V1 : Over S) (v1 : V1.left)
    (k : Sec ((res _ (tw q i)).X (j₀ + 1)) (pullback p V1.hom))
    (hk : Sec.map ((res _ (tw q i)).d (j₀ + 1) (j₀ + 1 + 1)) k = 0) :
    ∃ (V2 : Over S) (g2 : V2 ⟶ V1), Nbhd g2 v1 ∧ ∃ (b2 : FinalTheorems (res _ (tw q 0)) r M (j₀ + 1) V2.left)
      (k' : Sec ((res _ (tw q i)).X j₀) (pullback p V2.hom)), dS (j₀ + 1) (j₀ + 1 + 1) b2 = 0 ∧
      Phi (mu q i) p γ (j₀ + 1) (j₀ + 1) rfl V2 b2 - Sec.map ((res _ (tw q i)).d j₀ (j₀ + 1)) k' =
        N • Sec.res (rst p g2) k := by
  have hCM := clsMore_of hD
  obtain ⟨κ, hκ⟩ := (hD _ _ _ _).1 k hk
  obtain ⟨V2, g2, hg2, y2, hy2⟩ := hC V1 v1 κ
  choose b2 hb2 using fun (a : Fin (M + 1)) (s : Fin (r a)) => (hD _ _ _ _).2.1 (y2 a s)
  have hl2 := hL q p i r c γ hc M (j₀ + 1) V2 y2 b2 hb2
  have hcl2 : IsCls (N • pull _ (sch.map (rst p g2)) _ _ κ) (N • Sec.res (rst p g2) k) :=
    (hCM _ _ _ _).2.1 N _ _ ((hD _ _ _ _).2.2.2.2 (rst p g2) _ _ hκ)
  obtain ⟨k', hk'⟩ := ((hCM _ _ _ _).2.2.2 j₀ rfl _ _ _ _ hl2 hcl2).1 hy2
  refine ⟨V2, g2, hg2, b2, k', ?_, ?_⟩
  · funext a s
    simp only [dS, Pi.zero_apply]
    rw [lcv_d_of_cls hD _ (by omega) _ _ (hb2 a s), smul_zero]
  · rw [hk', sub_sub_cancel]

section
variable {Λ : Type} [CommRing Λ] {I J K : Cx Λ} {X S : Scheme.{0}} {r : ℕ → ℕ} {M : ℕ}
  (μ : Pair I J K) (p : X ⟶ S) (γ : ∀ a : ℕ, Fin (r a) → Sec (I.X (a : ℤ)) X)

theorem etale_leray_hirsch_cone_comparison_map_degree_cast (n w : ℤ) (h : n = w) (U : Over S) : Phi (J := J) (M := M) μ p γ n w h U 0 = 0 := by
  simp [Phi]

theorem etale_leray_hirsch_cone_source_component_vanishes_after_correction (j₀ : ℤ) {U V1 : Over S} (g1 : V1 ⟶ U) (x : Cone J K p r M (j₀ + 1) U) (N : ℕ)
    (b1 : FinalTheorems J r M (j₀ + 1) V1.left) (hb1 : dS (j₀ + 1) (j₀ + 1 + 1) b1 = fun a s => N • Sec.res g1.left (x.1 a s)) :
    (N • cres g1 x - cD μ p γ j₀ (j₀ + 1) rfl V1 (b1, 0)).1 = 0 := by
  rw [Prod.fst_sub, Prod.smul_fst, lcv_cres_fst, lcv_cD_fst, hb1]
  funext a s
  simp only [Pi.sub_apply, Pi.smul_apply, sub_self, Pi.zero_apply]

theorem etale_leray_hirsch_cone_cycle_with_zero_source_has_closed_complex_part (j₀ : ℤ) {V1 : Over S} (z : Cone J K p r M (j₀ + 1) V1) (hz1 : z.1 = 0)
    (hzc : cD μ p γ (j₀ + 1) (j₀ + 1 + 1) rfl V1 z = 0) : Sec.map (K.d (j₀ + 1) (j₀ + 1 + 1)) z.2 = 0 := by
  have := congrArg Prod.snd hzc
  rw [lcv_cD_snd, hz1, etale_leray_hirsch_cone_comparison_map_degree_cast, zero_sub, Prod.snd_zero, neg_eq_zero] at this
  exact this

theorem lcv_bk (j₀ : ℤ) {V1 V2 : Over S} (g2 : V2 ⟶ V1) (z : Cone J K p r M (j₀ + 1) V1) (hz1 : z.1 = 0) (N : ℕ)
    (b2 : FinalTheorems J r M (j₀ + 1) V2.left) (k' : Sec (K.X j₀) (pullback p V2.hom)) (hdb2 : dS (j₀ + 1) (j₀ + 1 + 1) b2 = 0)
    (hk' : Phi μ p γ (j₀ + 1) (j₀ + 1) rfl V2 b2 - Sec.map (K.d j₀ (j₀ + 1)) k' = N • Sec.res (rst p g2) z.2) :
    cD μ p γ j₀ (j₀ + 1) rfl V2 (b2, k') = N • cres g2 z := by
  refine Prod.ext ?_ ?_
  · rw [lcv_cD_fst, Prod.smul_fst, lcv_cres_fst, hz1]
    exact hdb2.trans (by funext a s; simp)
  · rw [lcv_cD_snd, Prod.smul_snd, lcv_cres_snd]
    exact hk'

theorem lcv_nbhd {U V1 V2 : Over S} (g1 : V1 ⟶ U) (g2 : V2 ⟶ V1) (u : U.left) (hg1 : Nbhd g1 u) (v1 : V1.left)
    (hv1 : g1.left v1 = u) (hg2 : Nbhd g2 v1) : Nbhd (g2 ≫ g1) u := by
  refine ⟨?_, ?_⟩
  · have := hg1.1; have := hg2.1
    rw [Over.comp_left]; infer_instance
  · obtain ⟨v2, hv2⟩ := hg2.2
    exact ⟨v2, by simp [hv2, hv1]⟩

theorem lcv_alg (hA : ConeAlg) (hγ : Closed γ) (j₀ : ℤ) {U V1 V2 : Over S} (g1 : V1 ⟶ U) (g2 : V2 ⟶ V1)
    (x : Cone J K p r M (j₀ + 1) U) (N : ℕ)
    (w0 : Cone J K p r M j₀ V1) (y2 : Cone J K p r M j₀ V2)
    (hy2 : cD μ p γ j₀ (j₀ + 1) rfl V2 y2 = N • cres g2 (N • cres g1 x - cD μ p γ j₀ (j₀ + 1) rfl V1 w0)) :
    cD μ p γ j₀ (j₀ + 1) rfl V2 (N • cres g2 w0 + y2) = N ^ 2 • cres (g2 ≫ g1) x := by
  obtain ⟨-, -, nat1⟩ := hA _ μ p r M γ hγ j₀ (j₀ + 1) rfl V1
  obtain ⟨-, -, nat2⟩ := hA _ μ p r M γ hγ (j₀ + 1) (j₀ + 1 + 1) rfl V1
  obtain ⟨-, -, natU⟩ := hA _ μ p r M γ hγ (j₀ + 1) (j₀ + 1 + 1) rfl U
  obtain ⟨linV2, -, -⟩ := hA _ μ p r M γ hγ j₀ (j₀ + 1) rfl V2
  have e1 := (map_add (IsLinearMap.mk' _ linV2) (N • cres g2 w0) y2).trans
    (congrArg (· + _) (map_nsmul (IsLinearMap.mk' _ linV2) N (cres g2 w0)))
  simp only [IsLinearMap.mk'_apply] at e1
  have e2 := map_sub (IsLinearMap.mk' _ (nat2 V2 g2).1) (N • cres g1 x) (cD μ p γ j₀ (j₀ + 1) rfl V1 w0)
  have e3 := map_nsmul (IsLinearMap.mk' _ (nat2 V2 g2).1) N (cres g1 x)
  simp only [IsLinearMap.mk'_apply] at e2 e3
  rw [e1, hy2, e2, e3, (nat1 V2 g2).2.1 w0, smul_sub, add_sub_cancel, smul_smul, ← pow_two,
    (natU V1 g1).2.2 V2 g2 x]

theorem lcv_zc (hA : ConeAlg) (hγ : Closed γ) (j₀ : ℤ) {U V1 : Over S} (g1 : V1 ⟶ U)
    (x : Cone J K p r M (j₀ + 1) U) (hx : cD μ p γ (j₀ + 1) (j₀ + 1 + 1) rfl U x = 0) (N : ℕ)
    (w0 : Cone J K p r M j₀ V1) :
    cD μ p γ (j₀ + 1) (j₀ + 1 + 1) rfl V1 (N • cres g1 x - cD μ p γ j₀ (j₀ + 1) rfl V1 w0) = 0 := by
  obtain ⟨-, sq1, -⟩ := hA _ μ p r M γ hγ j₀ (j₀ + 1) rfl V1
  obtain ⟨lin2, -, -⟩ := hA _ μ p r M γ hγ (j₀ + 1) (j₀ + 1 + 1) rfl V1
  obtain ⟨-, -, natU⟩ := hA _ μ p r M γ hγ (j₀ + 1) (j₀ + 1 + 1) rfl U
  have c0 : cres g1 (0 : Cone J K p r M (j₀ + 1 + 1) U) = 0 :=
    map_zero (IsLinearMap.mk' _ ((hA _ μ p r M γ hγ (j₀ + 1 + 1) (j₀ + 1 + 1 + 1) rfl U).2.2 V1 g1).1)
  have e := (map_sub (IsLinearMap.mk' _ lin2) (N • cres g1 x) (cD μ p γ j₀ (j₀ + 1) rfl V1 w0)).trans
    (congrArg (· - _) (map_nsmul (IsLinearMap.mk' _ lin2) N (cres g1 x)))
  simp only [IsLinearMap.mk'_apply] at e
  rw [e, sq1 _ rfl w0, ← (natU V1 g1).2.1 x, hx, c0, smul_zero, sub_zero]
end

theorem etale_leray_hirsch_cone_cycle_locally_bounded_boundary (hD : Dict) (hL : LhSec) (hA : ConeAlg) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ)
    (r : ℕ → ℕ) (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i)
    (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X) (hc : ∀ a s, IsCls (c a s) (γ a s)) (M N : ℕ)
    (j₀ j : ℤ) (h : j₀ + 1 = j) (hK : KerLoc q p i r c M N (j + 1)) (hC : CokLoc q p i r c M N j)
    (U : Over S) (x : Cone (res _ (tw q 0)) (res _ (tw q i)) p r M j U)
    (hx : cD (mu q i) p γ j (j + 1) rfl U x = 0) (u : U.left) :
    ∃ (V : Over S) (g : V ⟶ U), Nbhd g u ∧
      ∃ y : Cone (res _ (tw q 0)) (res _ (tw q i)) p r M j₀ V, cD (mu q i) p γ j₀ j h V y = N ^ 2 • cres g x := by
  subst h
  have hγ : Closed γ := fun a s => ((hD _ _ X _).2.2.1 _ _ (hc a s)).1
  have hx1 : dS (J := res _ (tw q 0)) (r := r) (M := M) (j₀ + 1 + 1) (j₀ + 1 + 1 + 1) x.1 = 0 :=
    ((lcv_cD_fst (mu q i) p γ (j₀ + 1) (j₀ + 1 + 1) rfl U x).symm.trans (congrArg Prod.fst hx)).trans Prod.fst_zero
  have hx2 : Phi (mu q i) p γ (j₀ + 1 + 1) (j₀ + 1 + 1) rfl U x.1 =
      Sec.map ((res _ (tw q i)).d (j₀ + 1) (j₀ + 1 + 1)) x.2 :=
    sub_eq_zero.1 (((lcv_cD_snd (mu q i) p γ (j₀ + 1) (j₀ + 1 + 1) rfl U x).symm.trans (congrArg Prod.snd hx)).trans
      Prod.snd_zero)
  obtain ⟨V1, g1, hg1, b1, hb1⟩ := lcv_step1 hD hL q p i r c γ hc M N j₀ hK U x.1 x.2 hx1 hx2 u
  have hz1 := etale_leray_hirsch_cone_source_component_vanishes_after_correction (mu q i) p γ j₀ g1 x N b1 hb1
  have hzc := lcv_zc (mu q i) p γ hA hγ j₀ g1 x hx N (b1, 0)
  have hz2 := etale_leray_hirsch_cone_cycle_with_zero_source_has_closed_complex_part (mu q i) p γ j₀ _ hz1 hzc
  obtain ⟨v1, hv1⟩ := hg1.2
  obtain ⟨V2, g2, hg2, b2, k', hdb2, hk'⟩ := lcv_step2 hD hL q p i r c γ hc M N j₀ hC V1 v1 _ hz2
  exact ⟨V2, g2 ≫ g1, lcv_nbhd g1 g2 u hg1 v1 hv1 hg2, N • cres g2 (b1, 0) + (b2, k'),
    lcv_alg (mu q i) p γ hA hγ j₀ g1 g2 x N (b1, 0) (b2, k') (lcv_bk (mu q i) p γ j₀ g2 _ hz1 N b2 k' hdb2 hk')⟩

theorem locCone_of (hD : Dict) (hL : LhSec) (hA : ConeAlg) : LocCone := by
  intro q X S p i r c γ hc M N j hK hC U x hx u
  exact etale_leray_hirsch_cone_cycle_locally_bounded_boundary hD hL hA q p i r c γ hc M N (j - 1) j (by omega) hK hC U x hx u
end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.EtaleLerayHirschConeSourceComponentVanishesAfter =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.ExIsoPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.ExIsoPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\npublic import Development.EtaleCohomology.KummerTheory.LHCutGlue\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC
open LateralTheory.KummerTheory LateralTheory.KummerTheory.LHCut

namespace LateralTheory.KummerTheory.ExIsoPf

variable {Λ : Type} [CommRing Λ]

theorem d_zero_of {F : Cx Λ} {Y : Scheme.{0}} {n m : ℤ} (h : m = n + 1) (a : Sec (F.X n) Y)
    (ha : Sec.map (F.d n (n + 1)) a = 0) : Sec.map (F.d n m) a = 0 := by
  subst h; exact ha

theorem d_zero_of' {F : Cx Λ} {Y : Scheme.{0}} {n m : ℤ} (h : m = n + 1) (a : Sec (F.X n) Y)
    (ha : Sec.map (F.d n m) a = 0) : Sec.map (F.d n (n + 1)) a = 0 := by
  subst h; exact ha

theorem coneEx' {I J K : Cx Λ} {X S : Scheme.{0}} {r : ℕ → ℕ} {M : ℕ} {μ : Pair I J K} {p : X ⟶ S}
    {γ : ∀ a : ℕ, Fin (r a) → Sec (I.X (a : ℤ)) X} {N : ℕ} {j : ℤ} {U : Over S}
    (h : ConeEx M μ p γ N j U) (j₀ : ℤ) (hj : j₀ + 1 = j) (x : Cone J K p r M j U)
    (hx : cD μ p γ j (j + 1) rfl U x = 0) : ∃ y : Cone J K p r M j₀ U, cD μ p γ j₀ j hj U y = N • x := by
  obtain rfl : j₀ = j - 1 := by omega
  exact h x hx

theorem ker_part (hD : Dict) (hL : LhSec) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ) (r : ℕ → ℕ)
    (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i)
    (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X) (hγ : ∀ a s, IsCls (c a s) (γ a s)) (M N : ℕ) (j : ℤ)
    (U : Over S) (h0 : ConeEx M (mu q i) p γ N j U) (y : ∀ a : Fin (M + 1), Fin (r a) → Ht q (sch.obj U.left) ((j + 1) - ((a : ℕ) : ℤ)) 0)
    (hy : lh q p U.hom i r c M (j + 1) y = 0) : N • y = 0 := by
  have hC := clsMore_of hD
  choose b hb using fun (a : Fin (M + 1)) (s : Fin (r a)) =>
    (hD (ZMod q) (res _ (tw q 0)) U.left ((j + 1) - ((a : ℕ) : ℤ))).2.1 (y a s)
  have hlh := hL q p i r c γ hγ M (j + 1) U y b hb
  obtain ⟨k, hk⟩ := ((hC (ZMod q) (res _ (tw q i)) (pullback p U.hom) (j + 1)).2.2.2 j rfl _ _ _ _ hlh
    (hC (ZMod q) (res _ (tw q i)) (pullback p U.hom) (j + 1)).1).1 hy
  have hcl : cD (mu q i) p γ j (j + 1) rfl U (b, k) = 0 := by
    refine Prod.ext ?_ ?_
    · funext a s
      show ((a : ℕ) : ℤ).negOnePow • Sec.map _ (b a s) = 0
      rw [d_zero_of (by omega) _ ((hD (ZMod q) (res _ (tw q 0)) U.left _).2.2.1 _ _ (hb a s)).1, smul_zero]
    · show Phi (mu q i) p γ (j + 1) (j + 1) rfl U b - Sec.map _ k = 0
      rw [hk, sub_zero, sub_self]
  obtain ⟨y', hy'⟩ := h0 (b, k) hcl
  funext a s
  have e := congrArg (fun z => z.1 a s) hy'
  change ((a : ℕ) : ℤ).negOnePow • Sec.map _ (y'.1 a s) = N • b a s at e
  show N • y a s = 0
  refine ((hC (ZMod q) (res _ (tw q 0)) U.left ((j + 1) - ((a : ℕ) : ℤ))).2.2.2 ((j - 1) + 1 - ((a : ℕ) : ℤ))
    (by omega) _ _ _ _ ((hC _ _ _ _).2.1 N _ _ (hb a s)) (hC _ _ _ _).1).2 ⟨(((a : ℕ) : ℤ).negOnePow : ℤ) • y'.1 a s, ?_⟩
  rw [sub_zero, ← e, Units.smul_def]
  exact map_zsmul _ _ _

section Gen
variable {I J K : Cx Λ} {X S : Scheme.{0}} {r : ℕ → ℕ} {M : ℕ} (μ : Pair I J K) (p : X ⟶ S)
  (γ : ∀ a : ℕ, Fin (r a) → Sec (I.X (a : ℤ)) X)

theorem cD_fst (j j' : ℤ) (h : j + 1 = j') (U : Over S) (x : Cone J K p r M j U) :
    (cD μ p γ j j' h U x).1 = dS (j + 1) (j' + 1) x.1 := rfl

theorem cD_snd (j j' : ℤ) (h : j + 1 = j') (U : Over S) (x : Cone J K p r M j U) :
    (cD μ p γ j j' h U x).2 = Phi μ p γ (j + 1) j' h U x.1 - Sec.map (K.d j j') x.2 := rfl

theorem dS_zero (n m : ℤ) (U : Scheme.{0}) : dS n m (0 : FinalTheorems J r M n U) = 0 := by
  funext a s
  simp [dS]

theorem Phi_zero (n w : ℤ) (h : n = w) (U : Over S) : Phi μ p γ n w h U (0 : FinalTheorems J r M n U.left) = 0 := by
  simp [Phi]

theorem closed_of_dS (n m : ℤ) (hm : m = n + 1) (U : Scheme.{0}) (b : FinalTheorems J r M n U) (hb : dS n m b = 0)
    (a : Fin (M + 1)) (s : Fin (r a)) : Sec.map (J.d (n - ((a : ℕ) : ℤ)) (n - ((a : ℕ) : ℤ) + 1)) (b a s) = 0 := by
  have e := congrFun (congrFun hb a) s
  simp only [dS, Pi.zero_apply] at e
  rw [smul_eq_zero_iff_eq] at e
  exact d_zero_of' (by omega) _ e

end Gen

theorem cok_part (hD : Dict) (hL : LhSec) (q : ℕ) {X S : Scheme.{0}} (p : X ⟶ S) (i : ℤ) (r : ℕ → ℕ)
    (c : ∀ a : ℕ, Fin (r a) → Ht q (sch.obj X) a i)
    (γ : ∀ a : ℕ, Fin (r a) → Sec ((res _ (tw q i)).X (a : ℤ)) X) (hγ : ∀ a s, IsCls (c a s) (γ a s)) (M N : ℕ) (j : ℤ)
    (U : Over S) (h1 : ConeEx M (mu q i) p γ N (j + 1) U) (b0 : Ht q (sch.obj (pullback p U.hom)) (j + 1) i) :
    ∃ y, lh q p U.hom i r c M (j + 1) y = N • b0 := by
  have hC := clsMore_of hD
  obtain ⟨k0, hk0⟩ := (hD (ZMod q) (res _ (tw q i)) (pullback p U.hom) (j + 1)).2.1 b0
  have hk0c := ((hD (ZMod q) (res _ (tw q i)) (pullback p U.hom) (j + 1)).2.2.1 _ _ hk0).1
  have hcl : cD (mu q i) p γ (j + 1) (j + 1 + 1) rfl U ((0, k0) : Cone _ _ p r M (j + 1) U) = 0 := by
    refine Prod.ext ?_ ?_
    · rw [cD_fst, dS_zero, Prod.fst_zero]
    · rw [cD_snd, Phi_zero, hk0c, sub_zero, Prod.snd_zero]
  obtain ⟨y', hy'⟩ := coneEx' h1 j rfl _ hcl
  have e1 := congrArg Prod.fst hy'
  rw [cD_fst, Prod.smul_fst, smul_zero] at e1
  have hcls := closed_of_dS (j + 1) (j + 1 + 1) rfl U.left y'.1 e1
  choose yc hyc using fun (a : Fin (M + 1)) (s : Fin (r a)) =>
    (hD (ZMod q) (res _ (tw q 0)) U.left ((j + 1) - ((a : ℕ) : ℤ))).1 (y'.1 a s) (hcls a s)
  refine ⟨yc, ?_⟩
  have hlh := hL q p i r c γ hγ M (j + 1) U yc y'.1 hyc
  refine ((hC (ZMod q) (res _ (tw q i)) (pullback p U.hom) (j + 1)).2.2.2 j rfl _ _ _ _ hlh
    ((hC _ _ _ _).2.1 N _ _ hk0)).2 ⟨y'.2, ?_⟩
  have e2 := congrArg Prod.snd hy'
  rw [cD_snd, Prod.smul_snd] at e2
  rw [← e2, sub_sub_cancel]

theorem exIso_of (hD : Dict) (hL : LhSec) : ExIso := by
  intro q X S p i r c γ hγ M N j U h0 h1
  exact ⟨fun y hy => ker_part hD hL q p i r c γ hγ M N j U h0 y hy, cok_part hD hL q p i r c γ hγ M N j U h1⟩

end LateralTheory.KummerTheory.ExIsoPf

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.ExIsoPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.GhostPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.GhostPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.InjSlice\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.TypeStar\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits

namespace LateralTheory.KummerTheory.GhostPf

variable {A : Type*} [Category A] [Abelian A]

theorem cyc (C : CochainComplex A ℤ) (N : ℕ) {j k l : ℤ} (hjk : j + 1 = k) (hkl : k + 1 = l)
    (hH : N • 𝟙 (C.homology k) = 0) {I : A} (φ : C.X k ⟶ I) (hφ : C.d j k ≫ φ = 0)
    {P : A} (f : P ⟶ C.X k) (hf : f ≫ C.d k l = 0) : f ≫ (N • φ) = 0 := by
  rw [← C.liftCycles_i f l ((ComplexShape.up ℤ).next_eq' hkl) hf,
    ← C.p_descOpcycles φ j ((ComplexShape.up ℤ).prev_eq' hjk) hφ]
  have e : C.iCycles k ≫ (N • (C.pOpcycles k ≫ C.descOpcycles φ j ((ComplexShape.up ℤ).prev_eq' hjk) hφ)) =
      C.homologyπ k ≫ (N • 𝟙 (C.homology k)) ≫ C.homologyι k ≫
        C.descOpcycles φ j ((ComplexShape.up ℤ).prev_eq' hjk) hφ := by
    simp only [Preadditive.comp_nsmul, Preadditive.nsmul_comp, Category.id_comp]
    rw [← Category.assoc (C.iCycles k), ← C.homology_π_ι, Category.assoc]
  rw [Category.assoc, e, hH]
  simp

theorem extd (C : CochainComplex A ℤ) (N : ℕ) {j k l : ℤ} (hjk : j + 1 = k) (hkl : k + 1 = l)
    (hH : N • 𝟙 (C.homology k) = 0) {I : A} [Injective I] (φ : C.X k ⟶ I) (hφ : C.d j k ≫ φ = 0) :
    ∃ c : C.X l ⟶ I, C.d k l ≫ c = N • φ := by
  have hk : kernel.ι (factorThruImage (C.d k l)) ≫ (N • φ) = 0 := by
    apply cyc C N hjk hkl hH φ hφ
    calc kernel.ι (factorThruImage (C.d k l)) ≫ C.d k l
        = (kernel.ι (factorThruImage (C.d k l)) ≫ factorThruImage (C.d k l)) ≫ image.ι (C.d k l) := by
          rw [Category.assoc, image.fac]
      _ = 0 := by rw [kernel.condition, zero_comp]
  refine ⟨Injective.factorThru (Abelian.epiDesc _ _ hk) (image.ι (C.d k l)), ?_⟩
  calc C.d k l ≫ _ = factorThruImage (C.d k l) ≫ image.ι (C.d k l) ≫
        Injective.factorThru (Abelian.epiDesc _ _ hk) (image.ι (C.d k l)) := by
          rw [← Category.assoc, image.fac]
    _ = N • φ := by rw [Injective.comp_factorThru, Abelian.comp_epiDesc]

theorem step (C : CochainComplex A ℤ) (N M : ℕ) {i j k l : ℤ} (hjk : j + 1 = k)
    (hkl : k + 1 = l) (hH : N • 𝟙 (C.homology k) = 0) [Injective (C.X k)]
    (a : C.X j ⟶ C.X i) (b : C.X k ⟶ C.X j) (hab : a ≫ C.d i j + C.d j k ≫ b = M • 𝟙 (C.X j)) :
    ∃ c : C.X l ⟶ C.X k, (N • b) ≫ C.d j k + C.d k l ≫ c = (N * M) • 𝟙 (C.X k) := by
  have hdb : C.d j k ≫ b = M • 𝟙 (C.X j) - a ≫ C.d i j := by rw [← hab]; abel
  have hφ : C.d j k ≫ (M • 𝟙 (C.X k) - b ≫ C.d j k) = 0 := by
    rw [Preadditive.comp_sub, ← Category.assoc, hdb, Preadditive.sub_comp, Category.assoc,
      HomologicalComplex.d_comp_d]
    simp
  obtain ⟨c, hc⟩ := extd C N hjk hkl hH _ hφ
  refine ⟨c, ?_⟩
  rw [hc, Preadditive.nsmul_comp, smul_sub, mul_smul]
  abel

theorem homot (C : CochainComplex A ℤ) [C.IsStrictlyGE (-1)] (hI : ∀ j, Injective (C.X j)) (N m : ℕ)
    (hH : ∀ j : ℤ, j < m → N • 𝟙 (C.homology j) = 0) :
    ∀ n : ℕ, ∀ i j k : ℤ, i + 1 = j → j + 1 = k → j = (n : ℤ) - 1 → j < m →
      ∃ a : C.X j ⟶ C.X i, ∃ b : C.X k ⟶ C.X j, a ≫ C.d i j + C.d j k ≫ b = N ^ (n + 1) • 𝟙 (C.X j) := by
  intro n
  induction n with
  | zero =>
    intro i j k hij hjk hj hjm
    have hj' : j = -1 := by simpa using hj
    subst hj'
    have := hI (-1)
    have hz : C.d i (-1) ≫ 𝟙 (C.X (-1)) = 0 :=
      (C.isZero_of_isStrictlyGE (-1) i (by omega)).eq_of_src _ _
    obtain ⟨c, hc⟩ := extd C N hij hjk (hH _ hjm) (𝟙 _) hz
    exact ⟨0, c, by simp [hc]⟩
  | succ n ih =>
    intro i j k hij hjk hj hjm
    subst hij
    obtain ⟨a, b, hab⟩ := ih (i - 1) i (i + 1) (by ring) rfl (by push_cast at hj; omega) (by omega)
    have := hI (i + 1)
    obtain ⟨c, hc⟩ := step C N (N ^ (n + 1)) rfl hjk (hH _ hjm) a b hab
    exact ⟨N • b, c, by rw [hc, ← pow_succ']⟩

theorem Ghost_of : LateralTheory.KummerTheory.Ghost := by
  intro A _ _ _ C _ hI N m hH j hj P f hf
  by_cases hlow : j < -1
  · refine ⟨0, ?_⟩
    exact (C.isZero_of_isStrictlyGE (-1) j hlow).eq_of_tgt _ _
  · obtain ⟨n, hn⟩ : ∃ n : ℕ, j = (n : ℤ) - 1 := ⟨(j + 1).toNat, by omega⟩
    obtain ⟨a, b, hab⟩ := homot C hI N m hH n (j - 1) j (j + 1) (by ring) rfl hn hj
    have hnm : n + 1 ≤ m + 1 := by omega
    refine ⟨N ^ (m + 1 - (n + 1)) • (f ≫ a), ?_⟩
    have e : f ≫ a ≫ C.d (j - 1) j = N ^ (n + 1) • f := by
      have := congrArg (f ≫ ·) hab
      simp only [Preadditive.comp_add, Preadditive.comp_nsmul, Category.comp_id] at this
      rw [← Category.assoc f (C.d j (j + 1)) b, hf, zero_comp, add_zero] at this
      exact this
    rw [Preadditive.nsmul_comp, Category.assoc, e, smul_smul, ← pow_add, Nat.sub_add_cancel hnm]

end LateralTheory.KummerTheory.GhostPf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.GhostPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.HomKillPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.HomKillPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.HomKillPf
open LateralTheory.KummerTheory.LHCut

lemma cover_mem {S : Scheme.{0}} {U : Over S} (V : U.left → Over S) (g : ∀ u, V u ⟶ U)
    (hg : ∀ u, Nbhd (g u) u) : Sieve.ofArrows V g ∈ (Scheme.etaleTopology.over S) U := by
  rw [GrothendieckTopology.mem_over_iff, Sieve.overEquiv_ofArrows]
  apply Precoverage.generate_mem_toGrothendieck
  refine (Scheme.ofArrows_mem_precoverage_iff (P := @Etale)).2 ⟨fun x => ⟨x, ?_⟩, fun u => (hg u).1⟩
  obtain ⟨v, hv⟩ := (hg x).2
  exact ⟨v, hv⟩

lemma inj_app {Λ : Type} [CommRing Λ] {S : Scheme.{0}} {F G : SlShv Λ S} (f : F ⟶ G) [Mono f]
    (U : Over S) : Function.Injective (f.hom.app (op U)).hom := by
  rw [← ModuleCat.mono_iff_injective]
  have : Mono ((sheafToPresheaf _ _).map f) := inferInstance
  exact (NatTrans.mono_iff_mono_app _).1 this (op U)

variable {Λ : Type} [CommRing Λ] {S : Scheme.{0}}

lemma sec_eq_zero (F : SlShv Λ S) {U : Over S}
    (s : F.obj.obj (op U)) (R : Sieve U) (hR : R ∈ (Scheme.etaleTopology.over S) U)
    (h : ∀ (W : Over S) (f : W ⟶ U), R f → (F.obj.map f.op).hom s = 0) : s = 0 := by
  apply F.isSeparated U R hR s 0
  intro W f hf
  rw [h W f hf, map_zero]

lemma nsmul_app {F G : SlShv Λ S} (f : F ⟶ G) (N : ℕ)
    (U : Over S) (x : F.obj.obj (op U)) :
    ((N • f).hom.app (op U)).hom x = N • (f.hom.app (op U)).hom x := by
  induction N with
  | zero => simp
  | succ N ih => rw [succ_nsmul, succ_nsmul, ← ih]; rfl

lemma comp_sec {F G H : SlShv Λ S} (f : F ⟶ G) (g : G ⟶ H) (U : Over S) (x : F.obj.obj (op U)) :
    ((f ≫ g).hom.app (op U)).hom x = (g.hom.app (op U)).hom ((f.hom.app (op U)).hom x) := rfl

lemma nat_sec {F G : SlShv Λ S} (f : F ⟶ G) {U V : Over S} (g : V ⟶ U) (x : F.obj.obj (op U)) :
    (f.hom.app (op V)).hom ((F.obj.map g.op).hom x) = (G.obj.map g.op).hom ((f.hom.app (op U)).hom x) := by
  have := congrArg (fun φ => φ.hom x) (f.hom.naturality g.op)
  simpa using this

lemma hom_eq_zero {F G : SlShv Λ S} (f : F ⟶ G)
    (h : ∀ (U : Over S) (x : F.obj.obj (op U)), (f.hom.app (op U)).hom x = 0) : f = 0 := by
  apply Sheaf.hom_ext
  ext U x
  exact h U.unop x

theorem homKill_of : HomKill := by
  intro Λ _ S C N j hloc
  rw [← cancel_epi (C.homologyπ j), comp_zero, Preadditive.comp_nsmul, Category.comp_id]
  apply hom_eq_zero
  intro U z
  rw [nsmul_app]
  have hx : ((C.d j (j + 1)).hom.app (op U)).hom ((C.iCycles j).hom.app (op U) |>.hom z) = 0 := by
    rw [← comp_sec, C.iCycles_d]; rfl
  choose V g hg y hy using hloc U _ hx
  apply sec_eq_zero _ _ (Sieve.ofArrows V g) (cover_mem V g hg)
  rintro W f ⟨Y, h, _, ⟨u⟩, rfl⟩
  rw [op_comp, Functor.map_comp, ModuleCat.hom_comp, LinearMap.comp_apply]
  convert map_zero ((C.homology j).obj.map h.op).hom
  rw [map_nsmul, ← nat_sec, ← map_nsmul]
  have key : N • ((C.cycles j).obj.map (g u).op).hom z = ((C.toCycles (j - 1) j).hom.app (op (V u))).hom (y u) := by
    apply inj_app (C.iCycles j)
    rw [← comp_sec, C.toCycles_i, hy u, map_nsmul, nat_sec]
  rw [key, ← comp_sec, C.toCycles_comp_homologyπ]; rfl

end LateralTheory.KummerTheory.HomKillPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.HomKillPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.LhNatPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.LhNatPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LhNatPf

theorem pull_cast (q : ℕ) {E E' : Spc} (f : E ⟶ E') {n i n' i' : ℤ} (hn : n = n') (hi : i = i') (x : Ht q E' n i) :
    pull _ f _ _ (x.cast hn hi) = Ht.cast hn hi (pull _ f _ _ x : Ht q E n i) := by
  subst hn; subst hi; rfl

theorem rst_fst {X S : Scheme.{0}} (p : X ⟶ S) {V U : Over S} (g : V ⟶ U) :
    LateralTheory.KummerTheory.LHCut.rst p g ≫ pullback.fst p U.hom = pullback.fst p V.hom := by
  unfold LateralTheory.KummerTheory.LHCut.rst; rw [pullback.lift_fst, Category.comp_id]

theorem rst_snd {X S : Scheme.{0}} (p : X ⟶ S) {V U : Over S} (g : V ⟶ U) :
    LateralTheory.KummerTheory.LHCut.rst p g ≫ pullback.snd p U.hom = pullback.snd p V.hom ≫ g.left := by
  unfold LateralTheory.KummerTheory.LHCut.rst; rw [pullback.lift_snd]

theorem pull_pull (q : ℕ) {E E' E'' : Spc} (f : E ⟶ E') (g : E' ⟶ E'') {n i : ℤ} (x : Ht q E'' n i) :
    pull _ f _ _ (pull _ g _ _ x) = pull _ (f ≫ g) _ _ x := (pull_comp _ f g _ _ x).symm

theorem lhNat_of : LateralTheory.KummerTheory.LHCut.LhNat := by
  intro hA q _ X S p i r c M n V U g y
  unfold LateralTheory.KummerTheory.lh

  simp only [map_sum]
  refine Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun s _ => ?_
  unfold LateralTheory.KummerTheory.ext
  rw [pull_cast, (hA q).1, pull_pull, pull_pull, pull_pull, ← Functor.map_comp, ← Functor.map_comp,
    ← Functor.map_comp, rst_fst, rst_snd]

end LateralTheory.KummerTheory.LhNatPf
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.LhNatPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.LocKerPf =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.LocKerPf", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.FinalTheorems\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite GlobalTheory.EtC

namespace LateralTheory.KummerTheory.LHCut

lemma lk_aff (X : Scheme.{0}) (x : X) :
    ∃ (B : CommRingCat.{0}) (f : Spec B ⟶ X), IsOpenImmersion f ∧ x ∈ Set.range f :=
  by
  let 𝒰 := X.affineCover
  have h2 : IsOpenImmersion (𝒰.f (𝒰.idx x)) := inferInstance
  exact ⟨_, 𝒰.f (𝒰.idx x), h2, 𝒰.covers x⟩

lemma lk_etale {A B : CommRingCat.{0}} (f : A ⟶ B) (h : f.hom.Etale) : Etale (Spec.map f) :=
  (HasRingHomProperty.Spec_iff (P := @Etale)).mpr h

lemma lk_fin {J : Type} [SmallCategory J] [IsFiltered J] (j₀ : J) {ι : Type} [Finite ι]
    (P : ι → ∀ {k : J}, (j₀ ⟶ k) → Prop)
    (hP : ∀ t {k k' : J} (f : j₀ ⟶ k) (g : k ⟶ k'), P t f → P t (f ≫ g))
    (h : ∀ t, ∃ (k : J) (f : j₀ ⟶ k), P t f) : ∃ (k : J) (f : j₀ ⟶ k), ∀ t, P t f := by
  classical
  have := Fintype.ofFinite ι
  suffices H : ∀ s : Finset ι, ∃ (k : J) (f : j₀ ⟶ k), ∀ t ∈ s, P t f by
    obtain ⟨k, f, hf⟩ := H Finset.univ
    exact ⟨k, f, fun t => hf t (Finset.mem_univ t)⟩
  intro s
  induction s using Finset.induction_on with
  | empty => exact ⟨j₀, 𝟙 _, by simp⟩
  | insert a s _ ih =>
    obtain ⟨k, f, hf⟩ := ih
    obtain ⟨k', f', hf'⟩ := h a
    obtain ⟨k'', g, g', hg⟩ := IsFiltered.span f f'
    refine ⟨k'', f ≫ g, fun t ht => ?_⟩
    rcases Finset.mem_insert.1 ht with rfl | ht
    · rw [hg]; exact hP _ _ _ hf'
    · exact hP _ _ _ (hf t ht)

lemma lk_pull_spMap {A B C : CommRingCat.{0}} (f : A ⟶ B) (g : B ⟶ C) {n i : ℤ} {q : ℕ} (x : Ht q (sp A) n i) :
    pull _ (spMap (f ≫ g).hom) _ _ x = pull _ (spMap g.hom) _ _ (pull _ (spMap f.hom) _ _ x) := by
  simp only [spMap, CommRingCat.ofHom_hom]
  rw [Spec.map_comp, Functor.map_comp, pull_comp]

theorem locKer_of (hS : StrictHenselization) (hL : LhNat) : LocKer := by
  intro hA hB q _ X R p hq i r c M N n hiso U u y hy
  obtain ⟨B, ι, hι, b, hb⟩ := lk_aff U.left u
  obtain ⟨J, _, _, D, cc, hc, w, hSH, hw⟩ := hS B b
  obtain ⟨j₀⟩ := IsFiltered.nonempty (C := J)
  let φ : Spec cc.pt ⟶ U.left := Spec.map (w.app j₀ ≫ cc.ι.app j₀) ≫ ι
  let V' : Over (Spec R) := Over.mk (Spec.map (Spec.preimage (φ ≫ U.hom)))
  let g' : V' ⟶ U := Over.homMk φ (Spec.map_preimage (φ ≫ U.hom)).symm
  have h1 := hL hA q p i r c M n g' y
  rw [hy, map_zero] at h1
  have h2 := (hiso cc.pt (Spec.preimage (φ ≫ U.hom)) hSH).1 _ h1.symm
  let ψ : Spec (D.obj j₀) ⟶ U.left := Spec.map (w.app j₀) ≫ ι
  have hunit : ∀ j, IsUnit ((q : ℕ) : D.obj j) := by
    intro j
    have := hq.map (Spec.preimage (Spec.map (w.app j) ≫ ι ≫ U.hom)).hom
    simpa using this
  let z : ∀ t : (Σ a : Fin (M + 1), Fin (r a)), Ht q (sp (D.obj j₀)) (n - ((t.1 : ℕ) : ℤ)) 0 :=
    fun t => N • pull _ (sch.map ψ) _ _ (y t.1 t.2)
  have e1 : spMap (cc.ι.app j₀).hom ≫ sch.map ψ = sch.map φ := by
    simp only [spMap, CommRingCat.ofHom_hom, ψ, φ, ← Functor.map_comp, Spec.map_comp, Category.assoc]
  have hz : ∀ t, pull _ (spMap (cc.ι.app j₀).hom) _ _ (z t) = 0 := by
    intro t
    have := congrFun (congrFun h2 t.1) t.2
    simp only [Pi.smul_apply] at this
    simp only [z, map_nsmul]
    rw [← pull_comp, e1]
    exact this
  have hk : ∀ t, ∃ (k : J) (f : j₀ ⟶ k), pull _ (spMap (D.map f).hom) _ _ (z t) = 0 := fun t =>
    (hB q D cc hc _ _).2 j₀ (z t) (hunit j₀) (hz t)
  obtain ⟨k, F, hF⟩ := lk_fin j₀ (fun t {k} (f : j₀ ⟶ k) => pull _ (spMap (D.map f).hom) _ _ (z t) = 0)
    (fun t k k' f g hf => by simp only [Functor.map_comp, lk_pull_spMap, hf, map_zero]) hk
  let gl : Spec (D.obj k) ⟶ U.left := Spec.map (w.app k) ≫ ι
  have hwk : w.app k = w.app j₀ ≫ D.map F := by simpa using (w.naturality F)
  have := lk_etale _ (hw k).1
  obtain ⟨𝔮, h𝔮⟩ := (hw k).2
  refine ⟨Over.mk (gl ≫ U.hom), Over.homMk gl rfl, ⟨?_, 𝔮, ?_⟩, fun a s => ?_⟩
  · change Etale gl; infer_instance
  · change ι (Spec.map (w.app k) 𝔮) = u
    rw [← hb]; congr 1; exact PrimeSpectrum.ext h𝔮
  · have := hF ⟨a, s⟩
    have e2 : sch.map gl = spMap (D.map F).hom ≫ sch.map ψ := by
      simp only [gl, ψ, hwk, spMap, CommRingCat.ofHom_hom, Spec.map_comp, Category.assoc, Functor.map_comp]
    change N • pull _ (sch.map gl) _ _ (y a s) = 0
    rw [e2, pull_comp, ← map_nsmul]
    exact this

end LateralTheory.KummerTheory.LHCut
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.LocKerPf =====

-- ===== clump member: Development.EtaleCohomology.KummerTheory.LocalHomotopyEtaleCohomology =====
-- clump-header: {"m": "Development.EtaleCohomology.KummerTheory.LocalHomotopyEtaleCohomology", "h": "module\n\npublic import Development.EtaleCohomology.KummerTheory.DictNormalPf\npublic import Development.EtaleCohomology.KummerTheory.InjSlicePf\npublic import Development.EtaleCohomology.KummerTheory.ContCut\npublic import Development.EtaleCohomology.KummerTheory.LocCokPf\npublic import Development.EtaleCohomology.KummerExtensions.EtaleLefschetzHochschildSectionOfCupSchemaAndKum\npublic import Development.EtaleCohomology.KummerTheory.AffRingPf\npublic import Development.EtaleCohomology.KummerTheory.BcHomIsPullback\npublic import Development.EtaleCohomology.KummerTheory.CokAffPf\npublic import Development.EtaleCohomology.KummerTheory.ConeAlgPf\npublic import Development.EtaleCohomology.KummerTheory.ConeCxPf\npublic import Development.EtaleCohomology.KummerTheory.ConeObjPf\npublic import Development.EtaleCohomology.KummerTheory.CorepPf\npublic import Development.EtaleCohomology.KummerTheory.CupAWCut\npublic import Development.EtaleCohomology.KummerTheory.CupSchPf\npublic import Development.EtaleCohomology.KummerTheory.DeltaPf\npublic import Development.EtaleCohomology.KummerTheory.DictExistPf\nimport Development.EtaleCohomology.KummerTheory.DictPfEv\npublic import Development.EtaleCohomology.KummerTheory.DictZeroPf\npublic import Development.EtaleCohomology.KummerTheory.EtaleLerayHirschConeSourceComponentVanishesAfter\npublic import Development.EtaleCohomology.KummerTheory.ExIsoPf\npublic import Development.EtaleCohomology.KummerTheory.ExactPf\npublic import Development.EtaleCohomology.KummerTheory.FivePf\npublic import Development.EtaleCohomology.KummerTheory.FlasquePf\npublic import Development.EtaleCohomology.KummerTheory.ForgetInjPf\npublic import Development.EtaleCohomology.KummerTheory.GhostPf\npublic import Development.EtaleCohomology.KummerTheory.GluePf\npublic import Development.EtaleCohomology.KummerTheory.HomKillPf\npublic import Development.EtaleCohomology.KummerTheory.ISupFinSuccEq\nimport Development.EtaleCohomology.KummerTheory.LHCutGlue\npublic import Development.EtaleCohomology.KummerTheory.LhNatPf\npublic import Development.EtaleCohomology.KummerTheory.LimOfIso\npublic import Development.EtaleCohomology.KummerTheory.LocKerPf\npublic import Development.EtaleCohomology.KummerTheory.MVnatPf\npublic import Development.EtaleCohomology.KummerTheory.NrmMkPf\npublic import Development.EtaleCohomology.KummerTheory.SHenCutPf\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

namespace LateralTheory.Fin.LH
theorem etale_kunneth_dictionary_normalized_in_continuity_assembly : LateralTheory.KummerTheory.DictNormal := by
  apply LateralTheory.KummerTheory.DictNormal_of' <;> first | exact _root_.LateralTheory.KummerTheory.NrmMk_of
theorem etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly : LateralTheory.KummerTheory.Dict := by
  apply LateralTheory.KummerTheory.Dict_of' <;> first | exact _root_.LateralTheory.KummerTheory.DE.dictExist | exact etale_kunneth_dictionary_normalized_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.DictZero_of
theorem etale_cup_product_on_schemes_associative_in_local_homotopy_assembly : LateralTheory.KummerTheory.CupSch := by
  apply LateralTheory.KummerTheory.CupSch_of <;> first | exact _root_.LateralTheory.KummerTheory.CupAW_of
alias etale_ghost_cohomology_class_vanishes_in_local_homotopy_assembly := _root_.LateralTheory.KummerTheory.GhostPf.Ghost_of
theorem etale_injective_sheaf_restricts_to_slice_injective_in_local_homotopy_a : LateralTheory.KummerTheory.InjSlice := by
  apply LateralTheory.KummerTheory.InjSlice_of <;> first | exact _root_.LateralTheory.KummerTheory.ForgetInj_of
alias etale_strict_henselization_cohomology_stalk_in_local_homotopy_assembly := _root_.LateralTheory.KummerTheory.SHenCut.shen
theorem etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Delta := by
  apply LateralTheory.KummerTheory.ContCut.Delta_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of
theorem etale_kunneth_colimit_sequence_exact_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Exact := by
  apply LateralTheory.KummerTheory.ExactPf.Exact_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of
theorem etale_mayer_vietoris_sequence_natural_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.MVnat := by
  apply LateralTheory.KummerTheory.MVnatPf.MVnat_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly | exact etale_kunneth_colimit_sequence_exact_in_continuity_assembly
theorem etale_kunneth_continuity_on_affine_schemes_in_continuity_assembly : LateralTheory.KummerTheory.ContCut.Aff := by
  apply LateralTheory.KummerTheory.AffPf.Aff_of <;> first | exact _root_.LateralTheory.KummerTheory.AffRingPf.AffRing_of
theorem etale_kunneth_cohomology_continuous_under_limits_in_continuity_assembl : LateralTheory.KummerTheory.Cont := by
  apply LateralTheory.KummerTheory.ContCut.goal_of <;> first | exact _root_.LateralTheory.KummerTheory.FivePf.Five_of | exact _root_.LateralTheory.KummerTheory.IndPf.Ind_of | exact _root_.LateralTheory.KummerTheory.BCPf.BC_of | exact _root_.LateralTheory.KummerTheory.GluePf.Glue_of | exact _root_.LateralTheory.KummerTheory.FlasquePf.Flasque_of | exact etale_mayer_vietoris_connecting_map_compatible_in_continuity_assembly | exact etale_kunneth_colimit_sequence_exact_in_continuity_assembly | exact etale_mayer_vietoris_sequence_natural_in_continuity_assembly | exact _root_.LateralTheory.KummerTheory.AffRingPf.AffRing_of | exact etale_kunneth_continuity_on_affine_schemes_in_continuity_assembly
theorem etale_local_homotopy_map_on_sections_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.LhSec := by
  apply MuPairClasses.Cb.etale_lefschetz_hochschild_section_of_cup_schema_and_kummer <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_cup_product_on_schemes_associative_in_local_homotopy_assembly | exact etale_ghost_cohomology_class_vanishes_in_local_homotopy_assembly | exact etale_injective_sheaf_restricts_to_slice_injective_in_local_homotopy_a | exact etale_strict_henselization_cohomology_stalk_in_local_homotopy_assembly | exact etale_kunneth_cohomology_continuous_under_limits_in_continuity_assembl
alias etale_local_homotopy_map_natural_in_local_homotopy_assembly := _root_.LateralTheory.KummerTheory.LhNatPf.lhNat_of
theorem etale_localized_kernel_vanishes_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.LocKer := by
  apply LateralTheory.KummerTheory.LHCut.locKer_of <;> first | exact etale_strict_henselization_cohomology_stalk_in_local_homotopy_assembly | exact etale_local_homotopy_map_natural_in_local_homotopy_assembly
theorem etale_cokernel_vanishes_on_affines_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.CokAff := by
  apply LateralTheory.KummerTheory.LHCut.CokAff_of <;> first | exact etale_strict_henselization_cohomology_stalk_in_local_homotopy_assembly | exact etale_kunneth_cohomology_continuous_under_limits_in_continuity_assembl | exact etale_local_homotopy_map_natural_in_local_homotopy_assembly
theorem etale_localized_cokernel_vanishes_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.LocCok := by
  apply LateralTheory.KummerTheory.LHCut.locCok_of_cokAff <;> first | exact etale_cokernel_vanishes_on_affines_in_local_homotopy_assembly
theorem etale_localized_mapping_cone_vanishes_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.LocCone := by
  apply LateralTheory.KummerTheory.LHCut.locCone_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_local_homotopy_map_on_sections_in_local_homotopy_assembly | exact _root_.LateralTheory.KummerTheory.ConeAlgPf.coneAlg_of
theorem etale_extension_group_isomorphism_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.ExIso := by
  apply LateralTheory.KummerTheory.ExIsoPf.exIso_of <;> first | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_local_homotopy_map_on_sections_in_local_homotopy_assembly
theorem etale_mapping_cone_object_acyclic_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.ConeObj := by
  apply LateralTheory.KummerTheory.LHCut.coneObj_of <;> first | exact etale_injective_sheaf_restricts_to_slice_injective_in_local_homotopy_a
theorem etale_mapping_cone_complex_acyclic_in_local_homotopy_assembly : LateralTheory.KummerTheory.LHCut.ConeCx := by
  apply LateralTheory.KummerTheory.LHCut.coneCx_of <;> first | exact etale_mapping_cone_object_acyclic_in_local_homotopy_assembly | exact _root_.LateralTheory.KummerTheory.ConeAlgPf.coneAlg_of
theorem etale_local_homotopy_cohomology_isomorphism_in_local_homotopy_assembly : LateralTheory.KummerTheory.LH := by
  apply LateralTheory.KummerTheory.LHCut.lh_of <;> first | exact etale_local_homotopy_map_on_sections_in_local_homotopy_assembly | exact etale_local_homotopy_map_natural_in_local_homotopy_assembly | exact _root_.LateralTheory.KummerTheory.ConeAlgPf.coneAlg_of | exact etale_localized_kernel_vanishes_in_local_homotopy_assembly | exact etale_localized_cokernel_vanishes_in_local_homotopy_assembly | exact etale_localized_mapping_cone_vanishes_in_local_homotopy_assembly | exact etale_extension_group_isomorphism_in_local_homotopy_assembly | exact _root_.LateralTheory.KummerTheory.LHCut.corep_of | exact _root_.LateralTheory.KummerTheory.HomKillPf.homKill_of | exact etale_mapping_cone_object_acyclic_in_local_homotopy_assembly | exact etale_mapping_cone_complex_acyclic_in_local_homotopy_assembly | exact etale_kunneth_dictionary_exists_for_sheaves_in_continuity_assembly | exact etale_cup_product_on_schemes_associative_in_local_homotopy_assembly | exact etale_ghost_cohomology_class_vanishes_in_local_homotopy_assembly
alias intersectionNumber_baseChange := _root_.LateralTheory.Fin.LH.etale_local_homotopy_cohomology_isomorphism_in_local_homotopy_assembly
end LateralTheory.Fin.LH
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.EtaleCohomology.KummerTheory.LocalHomotopyEtaleCohomology =====
