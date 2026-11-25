module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.IsKumCoc
public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst
public import Mathlib.Tactic.ENatToNat
public import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.Precomp
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens
import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLineDataTwistingSheaf, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTwistingLineDataProjective, Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistingSheafBaseChange, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RestrictionBijectiveAboveDimension, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLineDataTwistingSheaf =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLineDataTwistingSheaf", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.IsKumCoc\npublic import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.SemiabelianSchemes.CubicalStructures.CubeSymmetricSwapFirst\npublic import Mathlib.Tactic.ENatToNat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.IsCompletedStrictHens\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

open CategoryTheory Limits AlgebraicGeometry TopologicalSpace Opposite
open ReciprocityTheory.ChartRestriction.G.Semi (LB res)
open ReciprocityTheory.ChartRestriction.G.Geo.Tor (PSpace)
open GlobalTheory.ProjSpace (chart O1 O1_isLB ratioUnit)

noncomputable section

namespace GlobalTheory.CompanionTheory.LineCech

theorem sec_ext {V : Scheme.{0}} {κ : Type} (W : κ → V.Opens) (hW : ⨆ k, W k = ⊤) {s t : Γ(V, ⊤)}
    (h : ∀ k, (V.presheaf.map (homOfLE (le_top : W k ≤ ⊤)).op).hom s =
      (V.presheaf.map (homOfLE (le_top : W k ≤ ⊤)).op).hom t) : s = t :=
  V.sheaf.eq_of_locally_eq' W ⊤ (fun _ => homOfLE le_top) hW.ge s t h

theorem unit_ext {V : Scheme.{0}} {κ : Type} (W : κ → V.Opens) (hW : ⨆ k, W k = ⊤) {s t : Γ(V, ⊤)ˣ}
    (h : ∀ k, res (le_top : W k ≤ ⊤) s = res (le_top : W k ≤ ⊤) t) : s = t :=
  Units.ext (sec_ext W hW fun k => congrArg Units.val (h k))

theorem exists_glue {V : Scheme.{0}} {κ : Type} (W : κ → V.Opens) (hW : ⨆ k, W k = ⊤)
    (hd : ∀ k l, k ≠ l → W k ⊓ W l = ⊥) (t : ∀ k, Γ(V, W k)) :
    ∃ w : Γ(V, ⊤), ∀ k, (V.presheaf.map (homOfLE (le_top : W k ≤ ⊤)).op).hom w = t k := by
  obtain ⟨a, ha, -⟩ := V.sheaf.existsUnique_gluing' W ⊤ (fun _ => homOfLE le_top) hW.ge t (fun k l => by
    by_cases hkl : k = l
    · subst hkl
      rfl
    · have hs : Subsingleton Γ(V, W k ⊓ W l) :=
        CommRingCat.subsingleton_of_isTerminal (V.sheaf.isTerminalOfEqEmpty (hd k l hkl))
      exact @Subsingleton.elim _ hs _ _)
  exact ⟨a, ha⟩

theorem exists_glue_unit {V : Scheme.{0}} {κ : Type} (W : κ → V.Opens) (hW : ⨆ k, W k = ⊤)
    (hd : ∀ k l, k ≠ l → W k ⊓ W l = ⊥) (t : ∀ k, Γ(V, W k)ˣ) :
    ∃ w : Γ(V, ⊤)ˣ, ∀ k, res (le_top : W k ≤ ⊤) w = t k := by
  obtain ⟨a, ha⟩ := exists_glue W hW hd fun k => (t k).val
  obtain ⟨b, hb⟩ := exists_glue W hW hd fun k => (t k).inv
  have hab : a * b = 1 := sec_ext W hW fun k => by
    rw [map_mul, map_one, ha, hb]
    exact (t k).val_inv
  refine ⟨⟨a, b, hab, by rw [mul_comm]; exact hab⟩, fun k => Units.ext (ha k)⟩

def pl {V X : Scheme.{0}} (x : V ⟶ X) {A : X.Opens} {B : V.Opens} (e : B ≤ x ⁻¹ᵁ A) : Γ(X, A)ˣ →* Γ(V, B)ˣ :=
  Units.map (x.appLE A B e).hom.toMonoidHom

theorem pl_congr {V X : Scheme.{0}} {x y : V ⟶ X} (hxy : x = y) {A : X.Opens} {B : V.Opens} (e : B ≤ x ⁻¹ᵁ A)
    (t : Γ(X, A)ˣ) : pl x e t = pl y (hxy ▸ e) t := by
  subst hxy
  rfl

theorem pl_pl {V' V X : Scheme.{0}} (g : V' ⟶ V) (x : V ⟶ X) {A : X.Opens} {B : V.Opens} {B' : V'.Opens}
    (e : B ≤ x ⁻¹ᵁ A) (e' : B' ≤ g ⁻¹ᵁ B) (t : Γ(X, A)ˣ) :
    pl g e' (pl x e t) = pl (g ≫ x) (e'.trans (fun _ hv => e hv)) t := by
  refine Units.ext ?_
  change (g.appLE B B' e').hom ((x.appLE A B e).hom t.val) = ((g ≫ x).appLE A B' _).hom t.val
  rw [← Scheme.Hom.appLE_comp_appLE g x A B B' e e']
  rfl

theorem res_pl {V X : Scheme.{0}} (x : V ⟶ X) {A : X.Opens} {B B' : V.Opens}
    (e : B ≤ x ⁻¹ᵁ A) (h : B' ≤ B) (t : Γ(X, A)ˣ) : res h (pl x e t) = pl x (h.trans e) t := by
  refine Units.ext ?_
  change (V.presheaf.map (homOfLE h).op).hom ((x.appLE A B e).hom t.val) = (x.appLE A B' _).hom t.val
  rw [← Scheme.Hom.appLE_map x e (homOfLE h).op]
  rfl

theorem pl_res {V X : Scheme.{0}} (x : V ⟶ X) {A A' : X.Opens} {B : V.Opens}
    (e : B ≤ x ⁻¹ᵁ A') (h : A' ≤ A) (t : Γ(X, A)ˣ) :
    pl x e (res h t) = pl x (e.trans (fun _ hv => h hv)) t := by
  refine Units.ext ?_
  change (x.appLE A' B e).hom ((X.presheaf.map (homOfLE h).op).hom t.val) = (x.appLE A B _).hom t.val
  rw [← Scheme.Hom.map_appLE x e (homOfLE h).op]
  rfl

theorem res_res {V : Scheme.{0}} {A B C : V.Opens} (h : B ≤ A) (h' : C ≤ B) (t : Γ(V, A)ˣ) :
    res h' (res h t) = res (h'.trans h) t := by
  refine Units.ext ?_
  change (V.presheaf.map (homOfLE h').op).hom ((V.presheaf.map (homOfLE h).op).hom t.val) =
    (V.presheaf.map (homOfLE (h'.trans h)).op).hom t.val
  rw [← CommRingCat.comp_apply, ← Functor.map_comp]
  rfl

theorem res_map_appTop {V' V : Scheme.{0}} (g : V' ⟶ V) {B' : V'.Opens} (t : Γ(V, ⊤)ˣ) :
    res (le_top : B' ≤ ⊤) (Units.map g.appTop.hom.toMonoidHom t) = pl g (A := ⊤) (fun _ _ => trivial) t := by
  refine Units.ext ?_
  rfl

section Cover

variable {X : Scheme.{0}} (L : LB X)

abbrev Yc : Scheme.{0} := ∐ fun i => (L.U i).toScheme

def fc : Yc L ⟶ X := Sigma.desc fun i => (L.U i).ι

theorem ι_fc (i : L.ι) : Sigma.ι (fun i => (L.U i).toScheme) i ≫ fc L = (L.U i).ι := Sigma.ι_desc _ _

variable {L} {V : Scheme.{0}}

def piece (a : V ⟶ Yc L) (i : L.ι) : V.Opens :=
  a ⁻¹ᵁ (Sigma.ι (fun i => (L.U i).toScheme) i).opensRange

theorem piece_le (a : V ⟶ Yc L) (i : L.ι) : piece a i ≤ (a ≫ fc L) ⁻¹ᵁ L.U i := by
  rintro v ⟨y, hy⟩
  change (a ≫ fc L) v ∈ L.U i
  rw [Scheme.Hom.comp_apply, ← hy, ← Scheme.Hom.comp_apply, ι_fc]
  exact y.2

theorem iSup_piece (a : V ⟶ Yc L) : ⨆ i, piece a i = ⊤ := by
  refine top_le_iff.1 fun v _ => ?_
  obtain ⟨i, y, hy⟩ := (sigmaOpenCover fun i => (L.U i).toScheme).exists_eq (a v)
  exact Opens.mem_iSup.2 ⟨i, ⟨y, hy⟩⟩

theorem piece_inf (a : V ⟶ Yc L) {i j : L.ι} (hij : i ≠ j) : piece a i ⊓ piece a j = ⊥ := by
  refine le_bot_iff.1 fun v hv => ?_
  have hd := disjoint_opensRange_sigmaι (fun i => (L.U i).toScheme) i j hij
  exact (Opens.coe_disjoint.2 hd).le_bot ⟨hv.1, hv.2⟩

def W2 (a b : V ⟶ Yc L) (p : L.ι × L.ι) : V.Opens := piece a p.1 ⊓ piece b p.2

theorem iSup_doubleOverlap_eq_top (a b : V ⟶ Yc L) : ⨆ p, W2 a b p = ⊤ := by
  refine top_le_iff.1 fun v _ => ?_
  obtain ⟨i, hi⟩ := Opens.mem_iSup.1 ((iSup_piece a).ge (Set.mem_univ v))
  obtain ⟨j, hj⟩ := Opens.mem_iSup.1 ((iSup_piece b).ge (Set.mem_univ v))
  exact Opens.mem_iSup.2 ⟨(i, j), ⟨hi, hj⟩⟩

theorem doubleOverlap_disjoint (a b : V ⟶ Yc L) (p q : L.ι × L.ι) (hpq : p ≠ q) : W2 a b p ⊓ W2 a b q = ⊥ := by
  refine le_bot_iff.1 fun v hv => ?_
  by_cases h1 : p.1 = q.1
  · have h2 : p.2 ≠ q.2 := fun h2 => hpq (Prod.ext h1 h2)
    exact (piece_inf b h2).le ⟨hv.1.2, hv.2.2⟩
  · exact (piece_inf a h1).le ⟨hv.1.1, hv.2.1⟩

theorem doubleOverlap_le_preimage_inter {a b : V ⟶ Yc L} (h : a ≫ fc L = b ≫ fc L) (i j : L.ι) :
    W2 a b (i, j) ≤ (a ≫ fc L) ⁻¹ᵁ (L.U i ⊓ L.U j) := fun v hv =>
  ⟨piece_le a i hv.1, by
    have := piece_le b j hv.2
    rw [← h] at this
    exact this⟩

theorem exists_u {a b : V ⟶ Yc L} (h : a ≫ fc L = b ≫ fc L) :
    ∃ w : Γ(V, ⊤)ˣ, ∀ p : L.ι × L.ι, res (le_top : W2 a b p ≤ ⊤) w =
      pl (a ≫ fc L) (doubleOverlap_le_preimage_inter h p.1 p.2) (L.g p.1 p.2) :=
  exists_glue_unit _ (iSup_doubleOverlap_eq_top a b) (doubleOverlap_disjoint a b) _

def uc {a b : V ⟶ Yc L} (h : a ≫ fc L = b ≫ fc L) : Γ(V, ⊤)ˣ := (exists_u h).choose

theorem uc_spec {a b : V ⟶ Yc L} (h : a ≫ fc L = b ≫ fc L) (i j : L.ι) {B : V.Opens} (hB : B ≤ W2 a b (i, j)) :
    res (le_top : B ≤ ⊤) (uc h) = pl (a ≫ fc L) (hB.trans (doubleOverlap_le_preimage_inter h i j)) (L.g i j) := by
  have e := (exists_u h).choose_spec (i, j)
  rw [← res_res (le_top : W2 a b (i, j) ≤ ⊤) hB]
  change res hB (res le_top (uc h)) = _
  rw [show res (le_top : W2 a b (i, j) ≤ ⊤) (uc h) = _ from e, res_pl]

theorem uc_nat {V' : Scheme.{0}} (g : V' ⟶ V) {a b : V ⟶ Yc L} (h : a ≫ fc L = b ≫ fc L)
    (h' : (g ≫ a) ≫ fc L = (g ≫ b) ≫ fc L) :
    uc h' = Units.map g.appTop.hom.toMonoidHom (uc h) := by
  refine unit_ext _ (iSup_doubleOverlap_eq_top (g ≫ a) (g ≫ b)) fun p => ?_
  obtain ⟨i, j⟩ := p
  have hg : W2 (g ≫ a) (g ≫ b) (i, j) ≤ g ⁻¹ᵁ W2 a b (i, j) := fun v hv => hv
  rw [uc_spec h' i j le_rfl, res_map_appTop, ← pl_res g hg le_top, uc_spec h i j le_rfl, pl_pl,
    pl_congr (Category.assoc g a (fc L))]

theorem uc_coc {a b c : V ⟶ Yc L} (hL : L.IsLB) (h : a ≫ fc L = b ≫ fc L) (h' : b ≫ fc L = c ≫ fc L) :
    uc h * uc h' = uc (h.trans h') := by
  let W3 : L.ι × L.ι × L.ι → V.Opens := fun p => piece a p.1 ⊓ piece b p.2.1 ⊓ piece c p.2.2
  have hW3 : ⨆ p, W3 p = ⊤ := by
    refine top_le_iff.1 fun v _ => ?_
    obtain ⟨i, hi⟩ := Opens.mem_iSup.1 ((iSup_piece a).ge (Set.mem_univ v))
    obtain ⟨j, hj⟩ := Opens.mem_iSup.1 ((iSup_piece b).ge (Set.mem_univ v))
    obtain ⟨k, hk⟩ := Opens.mem_iSup.1 ((iSup_piece c).ge (Set.mem_univ v))
    exact Opens.mem_iSup.2 ⟨(i, j, k), ⟨⟨hi, hj⟩, hk⟩⟩
  refine unit_ext W3 hW3 fun p => ?_
  obtain ⟨i, j, k⟩ := p
  have h1 : W3 (i, j, k) ≤ W2 a b (i, j) := fun v hv => hv.1
  have h2 : W3 (i, j, k) ≤ W2 b c (j, k) := fun v hv => ⟨hv.1.2, hv.2⟩
  have h3 : W3 (i, j, k) ≤ W2 a c (i, k) := fun v hv => ⟨hv.1.1, hv.2⟩
  have h4 : W3 (i, j, k) ≤ (a ≫ fc L) ⁻¹ᵁ (L.U i ⊓ L.U j ⊓ L.U k) := fun v hv =>
    ⟨doubleOverlap_le_preimage_inter h i j (h1 hv), by
      have := piece_le c k hv.2
      rw [← h', ← h] at this
      exact this⟩
  rw [map_mul, uc_spec h i j h1, uc_spec h' j k h2, uc_spec (h.trans h') i k h3, pl_congr h.symm _ (L.g j k),
    ← pl_res _ h4 (inf_le_left : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U i ⊓ L.U j),
    ← pl_res _ h4 (le_inf (inf_le_left.trans inf_le_right) inf_le_right : L.U i ⊓ L.U j ⊓ L.U k ≤ L.U j ⊓ L.U k),
    ← map_mul, hL.cocycle, pl_res]

end Cover

def toLine {X : Scheme.{0}} (L : LB X) (hL : L.IsLB) : CrystallineSemistableComparison.E.LineData X where
  Y := Yc L
  f := fc L
  sm := IsZariskiLocalAtSource.sigmaDesc (P := @Smooth) fun i => inferInstance
  surj := ⟨fun x => by
    obtain ⟨i, hi⟩ := Opens.mem_iSup.1 (hL.cover.ge (Set.mem_univ x))
    refine ⟨Sigma.ι (fun i => (L.U i).toScheme) i ⟨x, hi⟩, ?_⟩
    rw [← Scheme.Hom.comp_apply, ι_fc]
    rfl⟩
  u _ _ h := uc h
  nat g _ _ h := uc_nat g h _
  coc _ _ _ h h' := uc_coc hL h h'

theorem res_top {V : Scheme.{0}} (t : Γ(V, ⊤)ˣ) : res (le_top : (⊤ : V.Opens) ≤ ⊤) t = t := by
  refine Units.ext ?_
  change (V.presheaf.map (homOfLE le_rfl).op).hom t.val = t.val
  rw [show (homOfLE (le_refl (⊤ : V.Opens))).op = 𝟙 _ from rfl, CategoryTheory.Functor.map_id]
  rfl

theorem uc_of_charts {X V : Scheme.{0}} {L : LB X} {j k : L.ι} (c : V ⟶ (L.U j).toScheme) (d : V ⟶ (L.U k).toScheme)
    (h : (c ≫ Sigma.ι (fun i => (L.U i).toScheme) j) ≫ fc L = (d ≫ Sigma.ι (fun i => (L.U i).toScheme) k) ≫ fc L)
    (e : ⊤ ≤ (c ≫ (L.U j).ι) ⁻¹ᵁ (L.U j ⊓ L.U k)) :
    uc h = pl (c ≫ (L.U j).ι) e (L.g j k) := by
  have hB : (⊤ : V.Opens) ≤ W2 (c ≫ Sigma.ι (fun i => (L.U i).toScheme) j)
      (d ≫ Sigma.ι (fun i => (L.U i).toScheme) k) (j, k) := fun v _ =>
    ⟨⟨c v, rfl⟩, ⟨d v, rfl⟩⟩
  have e1 := uc_spec h j k hB
  rw [res_top] at e1
  rw [e1, pl_congr (show (c ≫ Sigma.ι (fun i => (L.U i).toScheme) j) ≫ fc L = c ≫ (L.U j).ι by
    rw [Category.assoc, ι_fc])]

abbrev pullC {T X : Scheme.{0}} (L : LB X) (i : T ⟶ X) : LB T where
  ι := L.ι
  U j := i ⁻¹ᵁ L.U j
  g j k := pl i (fun _ hv => hv) (L.g j k)

theorem isLB_pullC {T X : Scheme.{0}} {L : LB X} (hL : L.IsLB) (i : T ⟶ X) : (pullC L i).IsLB := {
  cover := by
    refine top_le_iff.1 fun v _ => ?_
    obtain ⟨j, hj⟩ := Opens.mem_iSup.1 (hL.cover.ge (Set.mem_univ (i v)))
    exact Opens.mem_iSup.2 ⟨j, hj⟩
  g_self := by
    intro (j : L.ι)
    change res _ (pl i _ (L.g j j)) = 1
    rw [res_pl, ← pl_res i (fun _ hv => hv) (le_inf le_rfl le_rfl : L.U j ≤ L.U j ⊓ L.U j), hL.g_self, map_one]
  cocycle := by
    intro (j : L.ι) (k : L.ι) (l : L.ι)
    change res _ (pl i _ (L.g j k)) * res _ (pl i _ (L.g k l)) = res _ (pl i _ (L.g j l))
    have e : i ⁻¹ᵁ L.U j ⊓ i ⁻¹ᵁ L.U k ⊓ i ⁻¹ᵁ L.U l ≤ i ⁻¹ᵁ (L.U j ⊓ L.U k ⊓ L.U l) := fun _ hv => hv
    rw [res_pl, res_pl, res_pl, ← pl_res i e (inf_le_left : L.U j ⊓ L.U k ⊓ L.U l ≤ L.U j ⊓ L.U k),
      ← pl_res i e (le_inf (inf_le_left.trans inf_le_right) inf_le_right : L.U j ⊓ L.U k ⊓ L.U l ≤ L.U k ⊓ L.U l),
      ← map_mul, hL.cocycle, pl_res] }

end GlobalTheory.CompanionTheory.LineCech
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLineDataTwistingSheaf =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTwistingLineDataProjective =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTwistingLineDataProjective", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsLineDataTwistingSheaf\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison CrystallineSemistableComparison.Pb
open GlobalTheory.CompanionTheory.LineCech (pl pl_pl pl_congr pullC isLB_pullC toLine uc uc_of_charts fc Yc ι_fc)

namespace GlobalTheory.CompanionTheory.ConeTwistingSheafMap

attribute [local instance] MvPolynomial.gradedAlgebra

variable {R : Type} [CommRing R] {N : ℕ}

theorem awayToSection_ratio (j k : Fin (N + 1)) :
    (Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R) (MvPolynomial.X j)).hom (ratio R N j k) =
      GlobalTheory.ProjSpace.ratio R N j k := by
  apply Subtype.ext
  funext x
  apply HomogeneousLocalization.val_injective
  have e := ProjectiveSpectrum.Proj.awayToSection_apply (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R)
    (MvPolynomial.X j) (ratio R N j k) x
  refine e.trans ?_
  change _ = Localization.mk (MvPolynomial.X k) ⟨MvPolynomial.X j, x.2⟩
  rw [ratio, HomogeneousLocalization.Away.val_mk, Localization.mk_eq_mk', IsLocalization.map_mk',
    Localization.mk_eq_mk']
  congr 1
  exact Subtype.ext (pow_one _)

theorem appLE_ι_top {Z : Scheme.{0}} {U : Z.Opens} {g : U.toScheme ⟶ Z} (hg : g = U.ι) (e : ⊤ ≤ g ⁻¹ᵁ U) :
    g.appLE U ⊤ e = U.topIso.inv := by
  subst hg
  simp only [Scheme.Hom.appLE, Scheme.Opens.ι_app, Scheme.Opens.topIso_inv]
  exact (Z.presheaf.map_comp _ _).symm.trans (congrArg Z.presheaf.map (Subsingleton.elim _ _))

theorem chart_appLE (j : Fin (N + 1)) (y : ChartR R N j) (e) :
    ((chart R N j).appLE (GlobalTheory.ProjSpace.chart R N j) ⊤ e).hom
      ((Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R) (MvPolynomial.X j)).hom y) =
      (Scheme.ΓSpecIso (CommRingCat.of (ChartR R N j))).inv.hom y := by
  let 𝒜 := MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R
  let B := Proj.basicOpenToSpec 𝒜 (MvPolynomial.X j)
  have hiso : IsIso B := (Proj.basicOpenIsoSpec 𝒜 (MvPolynomial.X j) (X_mem R N j) one_pos).isIso_hom
  have hinj : Function.Injective B.appTop.hom :=
    (ConcreteCategory.bijective_of_isIso B.appTop).1
  apply hinj
  have hB := congr($(Proj.basicOpenToSpec_app_top 𝒜 (MvPolynomial.X j)) ((Scheme.ΓSpecIso _).inv y))
  simp only [ConcreteCategory.comp_apply, Iso.inv_hom_id_apply] at hB
  have hc : B ≫ chart R N j = (GlobalTheory.ProjSpace.chart R N j).ι := by
    change (Proj.basicOpenIsoSpec 𝒜 _ (X_mem R N j) one_pos).hom ≫
      (Proj.basicOpenIsoSpec 𝒜 _ (X_mem R N j) one_pos).inv ≫ _ = _
    rw [Iso.hom_inv_id_assoc]
  have h1 : ∀ t, B.appTop.hom (((chart R N j).appLE (GlobalTheory.ProjSpace.chart R N j) ⊤ e).hom t) =
      ((GlobalTheory.ProjSpace.chart R N j).topIso.inv).hom t := by
    intro t
    have h2 := Scheme.Hom.appLE_comp_appLE B (chart R N j) (GlobalTheory.ProjSpace.chart R N j) ⊤ ⊤ e le_top
    have h3 : B.appTop = B.appLE ⊤ ⊤ le_top := Scheme.Hom.app_eq_appLE ..
    rw [h3, ← CommRingCat.comp_apply, h2]
    exact congrArg (fun φ => φ.hom t) (appLE_ι_top hc _)
  rw [h1]
  exact hB.symm

instance isOpenImmersion_chart (j : Fin (N + 1)) : IsOpenImmersion (chart R N j) := by
  unfold chart
  infer_instance

theorem comp_ι_fc {X W : Scheme.{0}} (L : ReciprocityTheory.ChartRestriction.G.Semi.LB X) (l : L.ι) (c : W ⟶ (L.U l).toScheme) :
    (c ≫ Sigma.ι (fun i => (L.U i).toScheme) l) ≫ fc L = c ≫ (L.U l).ι := by
  rw [Category.assoc, ι_fc]

theorem pull_ratio {V : Scheme.{0}} (j k : Fin (N + 1)) (x : V ⟶ Spec (CommRingCat.of (ChartR R N j)))
    (e : ⊤ ≤ (x ≫ chart R N j) ⁻¹ᵁ (GlobalTheory.ProjSpace.chart R N j ⊓ GlobalTheory.ProjSpace.chart R N k)) :
    ((pl (x ≫ chart R N j) e (GlobalTheory.ProjSpace.ratioUnit _ j k inf_le_left inf_le_right) : (Γ(V, ⊤))ˣ) : Γ(V, ⊤)) =
      x.appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of (ChartR R N j))).inv.hom (ratio R N j k)) := by
  have e0 : (⊤ : (Spec (CommRingCat.of (ChartR R N j))).Opens) ≤ chart R N j ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N j := by
    have : (chart R N j).opensRange = GlobalTheory.ProjSpace.chart R N j := Proj.opensRange_awayι _ _ _ _
    rw [← this]
    exact fun y _ => ⟨y, rfl⟩
  rw [← chart_appLE j _ e0, awayToSection_ratio]
  have h1 : (GlobalTheory.ProjSpace.ratioUnit (GlobalTheory.ProjSpace.chart R N j ⊓ GlobalTheory.ProjSpace.chart R N k) j k inf_le_left inf_le_right :
      Γ(PSpace R N, GlobalTheory.ProjSpace.chart R N j ⊓ GlobalTheory.ProjSpace.chart R N k)) =
      ((PSpace R N).presheaf.map (homOfLE inf_le_left).op).hom (GlobalTheory.ProjSpace.ratio R N j k) := rfl
  change ((x ≫ chart R N j).appLE _ ⊤ e).hom _ = _
  rw [h1, ← CommRingCat.comp_apply, Scheme.Hom.map_appLE]
  have h2 := Scheme.Hom.appLE_comp_appLE x (chart R N j) (GlobalTheory.ProjSpace.chart R N j) ⊤ ⊤ e0 le_top
  have h3 : x.appTop = x.appLE ⊤ ⊤ le_top := Scheme.Hom.app_eq_appLE ..
  rw [h3, ← CommRingCat.comp_apply, h2]

theorem range_fst_le {X : Scheme.{0}} (i : X ⟶ PSpace R N) (j : Fin (N + 1)) :
    Set.range (pullback.fst i (chart R N j)) ⊆ Set.range (i ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N j).ι := by
  rintro _ ⟨z, rfl⟩
  rw [Scheme.Opens.range_ι]
  change i (pullback.fst i (chart R N j) z) ∈ GlobalTheory.ProjSpace.chart R N j
  rw [← Scheme.Hom.comp_apply, pullback.condition, Scheme.Hom.comp_apply]
  have : (chart R N j).opensRange = GlobalTheory.ProjSpace.chart R N j := Proj.opensRange_awayι _ _ _ _
  rw [← this]
  exact ⟨_, rfl⟩

theorem uc_congr {X V : Scheme.{0}} {L : ReciprocityTheory.ChartRestriction.G.Semi.LB X} {a a' b b' : V ⟶ Yc L} (ha : a = a') (hb : b = b')
    (h : a ≫ fc L = b ≫ fc L) (h' : a' ≫ fc L = b' ≫ fc L) : uc h = uc h' := by
  subst ha hb
  rfl

theorem main : ∀ {R : Type} [CommRing R] {X : Scheme.{0}} (N : ℕ) (i : X ⟶ PSpace R N), ∃ D : E.LineData X, IsTautologicalLineAt D N i := by
  intro R _ X N i
  let L := pullC (GlobalTheory.ProjSpace.O1 R N) i
  let hL : L.IsLB := isLB_pullC (GlobalTheory.ProjSpace.O1_isLB R N) i
  let t : ∀ j : Fin (N + 1), pullback i (chart R N j) ⟶ (L.U j).toScheme := fun j =>
    IsOpenImmersion.lift (i ⁻¹ᵁ GlobalTheory.ProjSpace.chart R N j).ι (pullback.fst i (chart R N j)) (range_fst_le i j)
  have ht : ∀ j, t j ≫ (L.U j).ι = pullback.fst i (chart R N j) := fun j => IsOpenImmersion.lift_fac _ _ _
  refine ⟨toLine L hL, ?_, fun j => t j ≫ Sigma.ι (fun j => (L.U j).toScheme) j, ?_⟩
  · exact IsZariskiLocalAtSource.sigmaDesc (P := @Etale) fun _ => inferInstance
  · have hs : ∀ j, (t j ≫ Sigma.ι (fun j => (L.U j).toScheme) j) ≫ (toLine L hL).f = pullback.fst i (chart R N j) :=
      fun j => by
        change (t j ≫ Sigma.ι (fun j => (L.U j).toScheme) j) ≫ fc L = _
        rw [Category.assoc, ι_fc, ht]
    refine ⟨hs, fun V j k a b h => ?_⟩
    have hca : (a ≫ t j) ≫ (L.U j).ι = a ≫ pullback.fst i (chart R N j) := by rw [Category.assoc, ht]
    have hcb : (b ≫ t k) ≫ (L.U k).ι = b ≫ pullback.fst i (chart R N k) := by rw [Category.assoc, ht]
    have hfc : ((a ≫ t j) ≫ Sigma.ι (fun j => (L.U j).toScheme) j) ≫ fc L =
        ((b ≫ t k) ≫ Sigma.ι (fun j => (L.U j).toScheme) k) ≫ fc L := by
      exact (comp_ι_fc L j (a ≫ t j)).trans (hca.trans (h.trans (hcb.symm.trans (comp_ι_fc L k (b ≫ t k)).symm)))
    have e : ⊤ ≤ ((a ≫ t j) ≫ (L.U j).ι) ⁻¹ᵁ (L.U j ⊓ L.U k) := fun v _ => by
      refine ⟨((a ≫ t j) v).2, ?_⟩
      change (((a ≫ t j) ≫ (L.U j).ι) v) ∈ L.U k
      rw [hca, h, ← hcb]
      exact ((b ≫ t k) v).2
    have h1 := uc_of_charts (L := L) (a ≫ t j) (b ≫ t k) hfc e
    have hx : ((a ≫ t j) ≫ (L.U j).ι) ≫ i = (a ≫ pullback.snd i (chart R N j)) ≫ chart R N j := by
      rw [hca, Category.assoc, Category.assoc, pullback.condition]
    have e2 : ⊤ ≤ ((a ≫ pullback.snd i (chart R N j)) ≫ chart R N j) ⁻¹ᵁ
        (GlobalTheory.ProjSpace.chart R N j ⊓ GlobalTheory.ProjSpace.chart R N k) := fun v hv => by
      rw [← hx]
      exact e hv
    have h2 : (uc hfc) = pl ((a ≫ pullback.snd i (chart R N j)) ≫ chart R N j) e2
        (GlobalTheory.ProjSpace.ratioUnit _ j k inf_le_left inf_le_right) := by
      rw [h1]
      change pl _ e (pl i _ ((GlobalTheory.ProjSpace.O1 R N).g j k)) = _
      rw [pl_pl, pl_congr hx]
      rfl
    rw [← pull_ratio j k _ e2, ← h2]
    have hfc' : (a ≫ t j ≫ Sigma.ι (fun j => (L.U j).toScheme) j) ≫ fc L =
        (b ≫ t k ≫ Sigma.ι (fun j => (L.U j).toScheme) k) ≫ fc L := by
      rw [← Category.assoc a, ← Category.assoc b]
      exact hfc
    exact congrArg Units.val (uc_congr (Category.assoc _ _ _).symm (Category.assoc _ _ _).symm hfc' hfc)

end GlobalTheory.CompanionTheory.ConeTwistingSheafMap
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTwistingLineDataProjective =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistingSheafBaseChange =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistingSheafBaseChange", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\npublic import Development.AbelianVarietyTheory.Definitions.ThetaMetrics.TwistingSheafOneChartEqPreimageStandardChart\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
open CategoryTheory Limits AlgebraicGeometry ReciprocityTheory.ChartRestriction.G.Geo.Tor CrystallineSemistableComparison CrystallineSemistableComparison.Pb

namespace GlobalTheory.CompanionTheory.ConeTwistingSheaf

attribute [local instance] MvPolynomial.gradedAlgebra

theorem exists_chartHom {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') (N : ℕ) (j : Fin (N + 1)) :
    ∃ c : ChartR R N j →+* ChartR R' N j,
      chart R' N j ≫ GlobalTheory.ProjSpace.baseChange N φ = spMap c ≫ chart R N j ∧
      ∀ k, c (ratio R N j k) = ratio R' N j k := by
  have key : ∀ (s : MvPolynomial (Fin (N + 1)) R') (_ : s = MvPolynomial.X j)
      (hd : s ∈ MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R' 1),
      ∃ ψ : HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R') s →+* ChartR R' N j,
        chart R' N j = spMap ψ ≫ Proj.awayι (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) R') s hd one_pos ∧
        ∀ (n : ℕ) (f : MvPolynomial (Fin (N + 1)) R') (hf),
          ψ (HomogeneousLocalization.Away.mk _ hd n f hf) =
            HomogeneousLocalization.Away.mk _ (X_mem R' N j) n f hf := by
    rintro _ rfl hd
    refine ⟨RingHom.id _, ?_, fun _ _ _ => rfl⟩
    have e : spMap (RingHom.id (ChartR R' N j)) = 𝟙 _ := Spec.map_id _
    rw [e, Category.id_comp]
    rfl
  obtain ⟨ψ, h1, h2⟩ := key (GlobalTheory.ProjSpace.gradedMap N φ (MvPolynomial.X j)) (MvPolynomial.map_X φ j)
    ((GlobalTheory.ProjSpace.gradedMap N φ).2 (X_mem R N j))
  refine ⟨ψ.comp (HomogeneousLocalization.Away.map (GlobalTheory.ProjSpace.gradedMap N φ) (MvPolynomial.X j)), ?_, fun k => ?_⟩
  · rw [h1, Category.assoc, GlobalTheory.ProjSpace.baseChange, Proj.awayι_comp_map _ _ one_pos _ (X_mem R N j),
      ← Spec.map_comp_assoc]
    rfl
  · change ψ (HomogeneousLocalization.Away.map (GlobalTheory.ProjSpace.gradedMap N φ) (MvPolynomial.X j) _) = _
    rw [ratio, HomogeneousLocalization.Away.map_mk, h2]
    simp [ratio, GlobalTheory.ProjSpace.gradedMap]

theorem isTwistingSheaf_pullback {R R' : Type} [CommRing R] [CommRing R'] (φ : R →+* R') {X : Scheme.{0}} (p : X ⟶ Sp R)
    (D : E.LineData X) (hO : IsTautologicalLine p D) :
    IsTautologicalLine (pullback.snd p (spMap φ)) (D.pb (pullback.fst p (spMap φ))) := by
  obtain ⟨N, i, hi, hp, het, s, hs, hu⟩ := hO
  have H := GlobalTheory.ProjSpace.isPullback_baseChange N φ
  have hw : (pullback.fst p (spMap φ) ≫ i) ≫ PSpace.str R N = pullback.snd p (spMap φ) ≫ spMap φ := by
    rw [Category.assoc, hp]
    exact pullback.condition
  obtain ⟨i', hi1, hi2⟩ : ∃ i' : pullback p (spMap φ) ⟶ PSpace R' N,
      i' ≫ GlobalTheory.ProjSpace.baseChange N φ = pullback.fst p (spMap φ) ≫ i ∧
      i' ≫ PSpace.str R' N = pullback.snd p (spMap φ) :=
    ⟨H.lift _ _ hw, H.lift_fst _ _ hw, H.lift_snd _ _ hw⟩
  have Hl : IsPullback i' (pullback.fst p (spMap φ)) (GlobalTheory.ProjSpace.baseChange N φ) i := by
    refine IsPullback.of_right (h₁₂ := PSpace.str R' N) (v₁₃ := spMap φ) (h₂₂ := PSpace.str R N) ?_ hi1 H.flip
    rw [hi2, hp]
    exact (IsPullback.of_hasPullback p (spMap φ)).flip
  have hc : IsClosedImmersion i' :=
    MorphismProperty.of_isPullback (P := @IsClosedImmersion) Hl.flip hi
  choose c hc1 hc2 using fun j => exists_chartHom φ N j
  have hm : ∀ j, (pullback.fst i' (chart R' N j) ≫ pullback.fst p (spMap φ)) ≫ i =
      (pullback.snd i' (chart R' N j) ≫ spMap (c j)) ≫ chart R N j := fun j => by
    rw [Category.assoc, Category.assoc, ← hc1, ← hi1, ← Category.assoc, pullback.condition, Category.assoc]
  let m : ∀ j, pullback i' (chart R' N j) ⟶ pullback i (chart R N j) := fun j => pullback.lift _ _ (hm j)
  have hm1 : ∀ j, m j ≫ pullback.fst i (chart R N j) =
      pullback.fst i' (chart R' N j) ≫ pullback.fst p (spMap φ) := fun j => pullback.lift_fst _ _ _
  have hm2 : ∀ j, m j ≫ pullback.snd i (chart R N j) =
      pullback.snd i' (chart R' N j) ≫ spMap (c j) := fun j => pullback.lift_snd _ _ _
  have hl : ∀ j, (m j ≫ s j) ≫ D.f = pullback.fst i' (chart R' N j) ≫ pullback.fst p (spMap φ) := fun j => by
    rw [Category.assoc, hs, hm1]
  refine ⟨N, i', hc, hi2, ?_, fun j => pullback.lift (m j ≫ s j) (pullback.fst i' (chart R' N j)) (hl j),
    fun j => pullback.lift_snd _ _ _, ?_⟩
  · change Etale (pullback.snd D.f (pullback.fst p (spMap φ)))
    infer_instance
  · intro V j k a b h
    have h₀ : (a ≫ m j) ≫ pullback.fst i (chart R N j) = (b ≫ m k) ≫ pullback.fst i (chart R N k) := by
      rw [Category.assoc, Category.assoc, hm1, hm1, ← Category.assoc, ← Category.assoc, h]
    have e := hu V j k (a ≫ m j) (b ≫ m k) h₀
    have ueq : ∀ {a₁ a₂ b₁ b₂ : V ⟶ D.Y} (_ : a₁ = a₂) (_ : b₁ = b₂) (h₁ : a₁ ≫ D.f = b₁ ≫ D.f)
        (h₂ : a₂ ≫ D.f = b₂ ≫ D.f), D.u a₁ b₁ h₁ = D.u a₂ b₂ h₂ := by
      intro a₁ a₂ b₁ b₂ ha hb h₁ h₂
      subst ha hb
      rfl
    have nat : ∀ x, (spMap (c j)).appTop.hom ((Scheme.ΓSpecIso (CommRingCat.of (ChartR R N j))).inv.hom x) =
        (Scheme.ΓSpecIso (CommRingCat.of (ChartR R' N j))).inv.hom (c j x) := fun x =>
      (congrArg (fun f => f.hom x) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (c j)))).symm
    have hs₂ : (a ≫ m j) ≫ pullback.snd i (chart R N j) =
        (a ≫ pullback.snd i' (chart R' N j)) ≫ spMap (c j) := by
      rw [Category.assoc, hm2, Category.assoc]
    refine (congrArg Units.val (ueq (by simp) (by simp) _ _)).trans (e.trans ?_)
    rw [hs₂, Scheme.Hom.comp_appTop]
    change (a ≫ pullback.snd i' (chart R' N j)).appTop.hom ((spMap (c j)).appTop.hom _) = _
    rw [nat, hc2]

end GlobalTheory.CompanionTheory.ConeTwistingSheaf
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistingSheafBaseChange =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RestrictionBijectiveAboveDimension =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RestrictionBijectiveAboveDimension", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.Precomp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNormalProjectiveModel\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.FaceMapCompSuccAboveCastSucc\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.MapHComp\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ChartGrConst\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RSubOneMem\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.GrCechFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.Pb

theorem isProper_of_isO1 {R : Type} [CommRing R] {X : Scheme.{0}} {p : X ⟶ ReciprocityTheory.ChartRestriction.G.Geo.Tor.Sp R}
    {D : E.LineData X} (hD : IsTautologicalLine p D) : IsProper p := by
  obtain ⟨N, i, hi, hip, -⟩ := hD
  exact GlobalTheory.CommonModel.isProper_of_isProjOver ⟨N, i, hi, hip⟩

theorem cls_congr {R : Type} [CommRing R] (K : Cx.{1} R) {n : ℕ} {a b : K.X n} (h : a = b) (ha : K.d n a = 0)
    (hb : K.d n b = 0) : K.cls a ha = K.cls b hb := by
  subst h; rfl

variable {K : Type} [Field K] [CharZero K] {X : Scheme.{0}} (q : X ⟶ Spec (CommRingCat.of K))

omit [CharZero K] in
theorem ks_mono (𝒱 : Set X.Opens) {s S : ℕ} (h : s ≤ S) : KS q s 𝒱 ≤ KS q S 𝒱 := fun T hT =>
  ⟨⟨show pdP T.δ S = ⊥ from eq_bot_iff.2 ((dividedPowerFiltration_anti T.δ h).trans (le_of_eq hT.1.1)), hT.1.2⟩, hT.2⟩

omit [CharZero K] in
theorem ks_pd (𝒱 : Set X.Opens) (s : ℕ) (c : (KS q s 𝒱).FullSubcategory) : ((KS q s 𝒱).ι.obj c).pdPow s = ⊥ :=
  c.property.1.1


def clsK (D : E.LineData X) (s : ℕ) (Λ : CLiftK (KS q s (𝒱D D)).ι D) :
    CH.H ((KS q s (𝒱D D)).ι ⋙ O (smFun X q)) 2 :=
  (CH.cx ((KS q s (𝒱D D)).ι ⋙ O (smFun X q))).cls (zK Λ s) (_root_.GlobalTheory.CompanionTheory.ConeZcoc.main Λ s (ks_pd q _ s))

theorem pull_cls_zK {C C' : Type 1} [Category.{0} C] [Category.{0} C'] {g : C ⥤ Thick (smFun X q)} {D : E.LineData X}
    (Λ : CLiftK g D) (h : C' ⥤ C) (s : ℕ) (hz : CH.d _ 2 (zK Λ s) = 0) (hz' : CH.d _ 2 (zK (Λ.precomp h) s) = 0) :
    (CH.Mor.restrict (g ⋙ O (smFun X q)) h).pull 2 ((CH.cx (g ⋙ O (smFun X q))).cls (zK Λ s) hz) =
      (CH.cx ((h ⋙ g) ⋙ O (smFun X q))).cls (zK (Λ.precomp h) s) hz' := by
  refine (CrystallineSemistableComparison.P.mapH_cls (CH.Mor.restrict (g ⋙ O (smFun X q)) h).hom 2 (zK Λ s) hz ?_).trans ?_
  · change CH.d _ 2 ((CH.Mor.restrict (g ⋙ O (smFun X q)) h).pullC 2 (zK Λ s)) = 0
    rw [CH.Mor.d_pullC, hz, map_zero]
  · exact cls_congr _ (zK_precomp Λ h s).symm _ _

theorem clsK_res (D : E.LineData X) {s S : ℕ} (h : s ≤ S) (Λ : CLiftK (KS q s (𝒱D D)).ι D)
    (ΛS : CLiftK (KS q S (𝒱D D)).ι D) :
    (CH.Mor.restrict ((KS q S (𝒱D D)).ι ⋙ O (smFun X q)) (ObjectProperty.ιOfLE (ks_mono q _ h))).pull 2
      (clsK q D S ΛS) = clsK q D s Λ := by
  have hz1 : CH.d _ 2 (zK (ΛS.precomp (ObjectProperty.ιOfLE (ks_mono q (𝒱D D) h))) S) = 0 :=
    _root_.GlobalTheory.CompanionTheory.ConeZcoc.main (ΛS.precomp (ObjectProperty.ιOfLE (ks_mono q (𝒱D D) h))) S
      (fun c => (ks_mono q (𝒱D D) h _ c.property).1.1)
  have hz2 : CH.d _ 2 (zK (ΛS.precomp (ObjectProperty.ιOfLE (ks_mono q (𝒱D D) h))) s) = 0 :=
    _root_.GlobalTheory.CompanionTheory.ConeZcoc.main (ΛS.precomp (ObjectProperty.ιOfLE (ks_mono q (𝒱D D) h))) s (ks_pd q _ s)
  refine (pull_cls_zK q ΛS _ S _ hz1).trans ((cls_congr _ ?_ hz1 hz2).trans ?_)
  · funext σ
    exact (plogK_congr _ h (ks_pd q _ s _) (r_sub_one_mem _ σ)).symm
  · exact _root_.GlobalTheory.CompanionTheory.ConeZcls.main _ Λ s (ks_pd q _ s) hz2 _

theorem pull_restrict_comp {R : Type} [CommRing R] {C C' C'' : Type 1} [Category.{0} C] [Category.{0} C']
    [Category.{0} C''] (F : C ⥤ ModuleCat.{0} R) (G : C' ⥤ C) (G' : C'' ⥤ C') (n : ℕ) (x : CH.H F n) :
    (CH.Mor.restrict F (G' ⋙ G)).pull n x = (CH.Mor.restrict (G ⋙ F) G').pull n ((CH.Mor.restrict F G).pull n x) :=
  (CrystallineSemistableComparison.P.pull_comp (CH.Mor.restrict F G) (CH.Mor.restrict (G ⋙ F) G') n x).1

theorem resK_res (𝒱 : Set X.Opens) {s S : ℕ} (h : s ≤ S) (x : HdR q 2) :
    resK q (KS q s 𝒱) 2 x = (CH.Mor.restrict ((KS q S 𝒱).ι ⋙ O (smFun X q)) (ObjectProperty.ιOfLE (ks_mono q 𝒱 h))).pull 2
      (resK q (KS q S 𝒱) 2 x) :=
  pull_restrict_comp (O (smFun X q)) (KS q S 𝒱).ι (ObjectProperty.ιOfLE (ks_mono q 𝒱 h)) 2 x

theorem restriction_bijective_above_dimension (d : ℕ) [SmoothOfRelativeDimension d q] (D : E.LineData X) (hD : IsTautologicalLine q D) :
    ∀ S, d < S → Function.Bijective (resK q (KS q S (𝒱D D)) 2) := by
  have hP : IsProper q := isProper_of_isO1 hD
  obtain ⟨U, hU⟩ := (cov_ex q).2 d inferInstance
  have hcov : sSup (𝒱D D) = ⊤ := by
    obtain ⟨N, i, -, -, hi⟩ := hD
    exact sSup_𝒱D D N i hi
  intro S hS
  exact (k_iso q U S (fun α => by rw [hU]; exact hS) (𝒱D D) hcov 2).1

theorem test_factor (D : E.LineData X) (S : ℕ) (x : HdR q 2)
    (hA : ∀ ΛS : CLiftK (KS q S (𝒱D D)).ι D, resK q (KS q S (𝒱D D)) 2 x = clsK q D S ΛS)
    {C : Type 1} [Category.{0} C] (g' : C ⥤ (KS q S (𝒱D D)).FullSubcategory) {s : ℕ} (hsS : s ≤ S)
    (hs : ∀ c, ((g' ⋙ (KS q S (𝒱D D)).ι).obj c).pdPow s = ⊥) (Λ : CLiftK (g' ⋙ (KS q S (𝒱D D)).ι) D)
    (hz : CH.d _ 2 (zK Λ s) = 0) :
    (CH.cx ((g' ⋙ (KS q S (𝒱D D)).ι) ⋙ O (smFun X q))).cls (zK Λ s) hz =
      (CH.Mor.restrict (O (smFun X q)) (g' ⋙ (KS q S (𝒱D D)).ι)).pull 2 x := by
  let ΛS := (lift_exists q D S).some
  have hz1 : CH.d _ 2 (zK (ΛS.precomp g') S) = 0 :=
    _root_.GlobalTheory.CompanionTheory.ConeZcoc.main (ΛS.precomp g') S (fun c => (g'.obj c).property.1.1)
  have hz2 : CH.d _ 2 (zK (ΛS.precomp g') s) = 0 := _root_.GlobalTheory.CompanionTheory.ConeZcoc.main (ΛS.precomp g') s hs
  rw [pull_restrict_comp (O (smFun X q)) (KS q S (𝒱D D)).ι g' 2 x]
  change _ = (CH.Mor.restrict ((KS q S (𝒱D D)).ι ⋙ O (smFun X q)) g').pull 2 (resK q (KS q S (𝒱D D)) 2 x)
  rw [hA ΛS]
  refine (_root_.GlobalTheory.CompanionTheory.ConeZcls.main Λ (ΛS.precomp g') s hs hz hz2).trans ?_
  refine (cls_congr _ (funext fun σ => plogK_congr _ hsS (hs _) (r_sub_one_mem _ σ)) hz2 hz1).trans ?_
  exact (pull_cls_zK q ΛS g' S _ hz1).symm

theorem isFirstChernDeRham_exists_of (d : ℕ) [SmoothOfRelativeDimension d q] (D : E.LineData X) (hD : IsTautologicalLine q D) :
    ∃ c : HdR q 2, IsFirstChernDeRham q D c := by
  have hk := restriction_bijective_above_dimension q d D hD
  let Λ₀ := (lift_exists q D (d + 1)).some
  let x := Function.surjInv (hk (d + 1) (by omega)).2 (clsK q D (d + 1) Λ₀)
  have hx : resK q (KS q (d + 1) (𝒱D D)) 2 x = clsK q D (d + 1) Λ₀ := Function.surjInv_eq _ _
  have hA : ∀ S, d + 1 ≤ S → ∀ ΛS : CLiftK (KS q S (𝒱D D)).ι D,
      resK q (KS q S (𝒱D D)) 2 x = clsK q D S ΛS := by
    intro S hS ΛS
    obtain ⟨x', hx'⟩ := (hk S (by omega)).2 (clsK q D S ΛS)
    have e : resK q (KS q (d + 1) (𝒱D D)) 2 x' = resK q (KS q (d + 1) (𝒱D D)) 2 x := by
      rw [resK_res q (𝒱D D) hS x', hx', clsK_res q D hS Λ₀ ΛS, hx]
    rw [← (hk (d + 1) (by omega)).1 e, hx']
  refine ⟨x, fun s C _ g hs hV Λ => ⟨zK Λ s, _root_.GlobalTheory.CompanionTheory.ConeZcoc.main Λ s hs, fun σ => rfl, ?_⟩⟩
  let S := max s (d + 1)
  let g' : C ⥤ (KS q S (𝒱D D)).FullSubcategory := ObjectProperty.lift _ g fun c =>
    ⟨⟨show pdP _ S = ⊥ from eq_bot_iff.2 ((dividedPowerFiltration_anti _ (le_max_left _ _)).trans (le_of_eq (hs c))),
      fun r y hy => by simpa using hy⟩, by
      obtain ⟨V, σ, hσ, hV⟩ := hV c
      exact ⟨V, ⟨σ, hσ⟩, hV⟩⟩
  exact test_factor q D S x (hA S (le_max_right _ _)) g' (le_max_left _ _) hs Λ (_root_.GlobalTheory.CompanionTheory.ConeZcoc.main Λ s hs)

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RestrictionBijectiveAboveDimension =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsTautologicalLineAt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.InclStd\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.ExistsTwistingLineDataProjective\npublic import Development.AutomorphicSpectrum.Proofs.BlockDecomposition.TwistingSheafBaseChange\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.PowTop\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.RestrictionBijectiveAboveDimension\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris

namespace CrystallineSemistableComparison.Pb

open ReciprocityTheory.ChartRestriction.G.Geo.Tor

theorem isO1At_exists {R : Type} [CommRing R] {X : Scheme.{0}} (N : ℕ) (i : X ⟶ PSpace R N) :
    ∃ D : E.LineData X, IsTautologicalLineAt D N i := _root_.GlobalTheory.CompanionTheory.ConeTwistingSheafMap.main N i

theorem isO1_exists {R : Type} [CommRing R] {X : Scheme.{0}} (p : X ⟶ Sp R) (hp : IsProjOver p) :
    ∃ D : E.LineData X, IsTautologicalLine p D := by
  obtain ⟨N, i, hi, hip⟩ := hp
  obtain ⟨D, hD⟩ := _root_.GlobalTheory.CompanionTheory.ConeTwistingSheafMap.main N i
  exact ⟨D, N, i, hi, hip, hD⟩

alias isFirstChernDeRham_exists := _root_.CrystallineSemistableComparison.Pb.isFirstChernDeRham_exists_of

theorem isO1_etale {R : Type} [CommRing R] {X : Scheme.{0}} {p : X ⟶ Sp R} {D : E.LineData X} (hD : IsTautologicalLine p D) :
    Etale D.f := by
  obtain ⟨N, i, -, -, h, -⟩ := hD
  exact h

alias powK_ne_zero := _root_.CrystallineSemistableComparison.Pb.powK_ne_zero_main

end CrystallineSemistableComparison.Pb
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.PerfectoidPullbacks.ConeSectionRestriction.IsFirstChernDeRhamUnique =====
