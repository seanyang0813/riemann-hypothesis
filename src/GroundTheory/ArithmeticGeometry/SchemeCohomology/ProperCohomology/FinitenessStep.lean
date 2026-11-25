module

public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowProduct
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SchemeImage
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveSpaceChart
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf
public import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion
public import Mathlib.Tactic.ENatToNat
public import Mathlib.AlgebraicGeometry.Noetherian
public import Mathlib.AlgebraicGeometry.Morphisms.Proper
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowSegre
public import Mathlib.Combinatorics.Quiver.ReflQuiver
public import Mathlib.AlgebraicGeometry.IdealSheaf.IrreducibleComponent
public import Mathlib.AlgebraicGeometry.Restrict
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.InvertibleSheaf
public import Mathlib.Algebra.Category.ModuleCat.Sheaf.Quasicoherent
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPush
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CohFinite
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.Support
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ExistsGeneratingSectionsTwist
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CokernelCoherent
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.PullbackCoherent
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RelativeSerre
public import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SupportMore
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Generation
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion
import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.PullbackUnit

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowGraph, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowLocal, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowMulti, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ExistsChow, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.IrreducibleImage, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RestrictIso, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionBasis, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionTensor, GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FinitenessStep

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowGraph =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowGraph", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowProduct\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SchemeImage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Morphisms.Immersion\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Limits TopologicalSpace

universe u

noncomputable section

namespace ChowGraph

variable {A : Type u} [CommRing A] {X : Scheme.{u}} (s : X ⟶ Spec (.of A))
  {k : ℕ} (n : Fin (k + 1) → ℕ) (U : Fin (k + 1) → X.Opens)
  (c : ∀ i, (U i).toScheme ⟶ (ProjSpace.stdOpen A (n i) 0).toScheme)
  (hc : ∀ i, c i ≫ (ProjSpace.stdOpen A (n i) 0).ι ≫ ProjSpace.toSpecBase A (n i) = (U i).ι ≫ s)

abbrev W : X.Opens := ⨅ i, U i

def gP : (W U).toScheme ⟶ ProjSpace.MP A k n :=
  ProjSpace.lift k n ((W U).ι ≫ s)
    (fun i => X.homOfLE (iInf_le U i) ≫ c i ≫ (ProjSpace.stdOpen A (n i) 0).ι) (fun i => by
      rw [Category.assoc, Category.assoc, hc i, ← Category.assoc, Scheme.homOfLE_ι])

lemma gP_mpStr : gP s n U c hc ≫ ProjSpace.mpStr A k n = (W U).ι ≫ s :=
  ProjSpace.lift_mpStr _ _ _ _ _

lemma gP_pr (i : Fin (k + 1)) : gP s n U c hc ≫ ProjSpace.pr A k n i =
    X.homOfLE (iInf_le U i) ≫ c i ≫ (ProjSpace.stdOpen A (n i) 0).ι :=
  ProjSpace.lift_pr _ _ _ _ _ i

abbrev G : Scheme.{u} := pullback s (ProjSpace.mpStr A k n)

def g : (W U).toScheme ⟶ G s n :=
  pullback.lift (W U).ι (gP s n U c hc) (gP_mpStr s n U c hc).symm

lemma g_fst : g s n U c hc ≫ pullback.fst _ _ = (W U).ι := pullback.lift_fst _ _ _

@[reassoc (attr := simp)]
lemma g_snd : g s n U c hc ≫ pullback.snd _ _ = gP s n U c hc := pullback.lift_snd _ _ _

lemma isIso_morphismRestrict_of_eq_ι {T : Scheme.{u}} (V : T.Opens) (h : V.toScheme ⟶ T)
    (hh : h = V.ι) : IsIso (h ∣_ V) := by
  subst hh
  rw [isIso_iff_isOpenImmersion_and_surjective]
  refine ⟨inferInstance, ⟨fun x => ?_⟩⟩
  refine ⟨⟨x, by simp⟩, ?_⟩
  exact Subtype.ext ((morphismRestrict_base_coe _ _ _).trans rfl)

variable [IsProper (ProjSpace.mpStr A k n)]


omit [IsProper (ProjSpace.mpStr A k n)] in
lemma isIso_g_restrict_comp : IsIso ((g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ W U)) ≫
      (pullback.fst s (ProjSpace.mpStr A k n) ∣_ W U)) := by
  rw [← morphismRestrict_comp]
  exact isIso_morphismRestrict_of_eq_ι _ _ (g_fst s n U c hc)

instance isClosedImmersion_g_restrict :
    IsClosedImmersion (g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ W U)) := by
  have h1 : IsIso ((g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ W U)) ≫
      (pullback.fst s (ProjSpace.mpStr A k n) ∣_ W U)) := by
    rw [← morphismRestrict_comp]
    exact isIso_morphismRestrict_of_eq_ι _ _ (g_fst s n U c hc)
  exact IsClosedImmersion.of_comp _ (pullback.fst s (ProjSpace.mpStr A k n) ∣_ W U)

variable [QuasiCompact (g s n U c hc)]

abbrev X' : Scheme.{u} := (g s n U c hc).image

abbrev ι' : X' s n U c hc ⟶ G s n := (g s n U c hc).imageι

abbrev π : X' s n U c hc ⟶ X := ι' s n U c hc ≫ pullback.fst _ _

abbrev q : X' s n U c hc ⟶ ProjSpace.MP A k n := ι' s n U c hc ≫ pullback.snd _ _

theorem isIso_π_restrict : IsIso (π s n U c hc ∣_ W U) := by
  have h1 := isIso_g_restrict_comp s n U c hc
  rw [π, morphismRestrict_comp, ← SchemeImage.imageRestrictLift_fac, Category.assoc]
  exact IsIso.comp_isIso' (SchemeImage.isIso_imageRestrictLift _ _) h1

abbrev V (i : Fin (k + 1)) : (ProjSpace.MP A k n).Opens :=
  ProjSpace.pr A k n i ⁻¹ᵁ ProjSpace.stdOpen A (n i) 0

abbrev αU (i : Fin (k + 1)) : (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i).toScheme ⟶
    projectiveSpace A (n i) :=
  (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i).ι ≫ pullback.snd _ _ ≫ ProjSpace.pr A k n i

abbrev βU (i : Fin (k + 1)) : (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i).toScheme ⟶
    projectiveSpace A (n i) :=
  (pullback.fst s (ProjSpace.mpStr A k n) ∣_ U i) ≫ c i ≫ (ProjSpace.stdOpen A (n i) 0).ι

omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
include hc in
lemma αU_βU_over (i : Fin (k + 1)) :
    αU s n U i ≫ ProjSpace.toSpecBase A (n i) = βU s n U c i ≫ ProjSpace.toSpecBase A (n i) := by
  rw [αU, βU, Category.assoc, Category.assoc, ProjSpace.pr_toSpecBase, Category.assoc,
    Category.assoc, hc i, morphismRestrict_ι_assoc, ← pullback.condition]


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
lemma g_restrict_αU (i : Fin (k + 1)) :
    (g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫ αU s n U i =
      (g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫ βU s n U c i := by
  have hinc : (g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫
      (pullback.fst s (ProjSpace.mpStr A k n) ∣_ U i) =
      (g s n U c hc ⁻¹ᵁ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)).ι ≫
        X.homOfLE (iInf_le U i) := by
    rw [← cancel_mono (U i).ι, Category.assoc, morphismRestrict_ι, morphismRestrict_ι_assoc,
      g_fst, Category.assoc, Scheme.homOfLE_ι]
  rw [αU, βU, morphismRestrict_ι_assoc, reassoc_of% hinc, g_snd_assoc, gP_pr]


omit [IsProper (ProjSpace.mpStr A k n)] in
theorem q_mem_V (i : Fin (k + 1)) (y : X' s n U c hc) (hy : π s n U c hc y ∈ U i) :
    q s n U c hc y ∈ V n i := by
  obtain ⟨κ, hκ⟩ := SchemeImage.exists_lift_imageι_morphismRestrict (g s n U c hc)
    (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)
    (eqLocusι (ProjSpace.toSpecBase A (n i)) (αU s n U i) (βU s n U c i)
      (αU_βU_over s n U c hc i))
    (eqLocusLift _ _ _ _ (g s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i))
      (g_restrict_αU s n U c hc i)) (eqLocusLift_ι _ _ _ _ _ _)
  have hE : (ι' s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫ αU s n U i =
      (ι' s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫ βU s n U c i := by
    rw [← hκ, Category.assoc, Category.assoc, eqLocusι_comp_eq]
  have hy' : y ∈ ι' s n U c hc ⁻¹ᵁ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i) := hy
  have hE' : (ι' s n U c hc ⁻¹ᵁ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)).ι ≫
      q s n U c hc ≫ ProjSpace.pr A k n i =
      ((ι' s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫
        (pullback.fst s (ProjSpace.mpStr A k n) ∣_ U i) ≫ c i) ≫ (ProjSpace.stdOpen A (n i) 0).ι := by
    have := hE
    simp only [αU, βU, morphismRestrict_ι_assoc] at this
    simpa only [q, Category.assoc] using this
  have h2 : (⟨y, hy'⟩ : (ι' s n U c hc ⁻¹ᵁ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)).toScheme) ∈
      ((ι' s n U c hc ⁻¹ᵁ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)).ι ≫
        q s n U c hc ≫ ProjSpace.pr A k n i) ⁻¹ᵁ ProjSpace.stdOpen A (n i) 0 := by
    rw [hE']
    exact Subtype.prop (((ι' s n U c hc ∣_ (pullback.fst s (ProjSpace.mpStr A k n) ⁻¹ᵁ U i)) ≫
      (pullback.fst s (ProjSpace.mpStr A k n) ∣_ U i) ≫ c i).base ⟨y, hy'⟩)
  exact h2

section OverV

variable (i : Fin (k + 1))

abbrev ρ : (V (A := A) n i).toScheme ⟶ (ProjSpace.stdOpen A (n i) 0).toScheme :=
  ProjSpace.pr A k n i ∣_ ProjSpace.stdOpen A (n i) 0

abbrev F : Scheme.{u} := pullback (c i) (ρ (A := A) n i)

abbrev O : (G s n).Opens := pullback.snd s (ProjSpace.mpStr A k n) ⁻¹ᵁ V (A := A) n i

abbrev τ : (O s n i).toScheme ⟶ (V (A := A) n i).toScheme := pullback.snd s (ProjSpace.mpStr A k n) ∣_ V (A := A) n i

abbrev E : Scheme.{u} := pullback (pullback.snd (c i) (ρ (A := A) n i)) (τ s n i)

abbrev eX : E s n U c i ⟶ X := pullback.fst _ _ ≫ pullback.fst _ _ ≫ (U i).ι

abbrev eX' : E s n U c i ⟶ X := pullback.snd _ _ ≫ (O s n i).ι ≫ pullback.fst _ _

omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
include hc in
lemma eX_eX'_over : eX s n U c i ≫ s = eX' s n U c i ≫ s := by
  have h1 : pullback.fst (c i) (ρ (A := A) n i) ≫ c i ≫ (ProjSpace.stdOpen A (n i) 0).ι =
      pullback.snd (c i) (ρ (A := A) n i) ≫ (V (A := A) n i).ι ≫ ProjSpace.pr A k n i := by
    rw [← morphismRestrict_ι, ← Category.assoc, pullback.condition, Category.assoc]
  have h2 := congrArg (· ≫ ProjSpace.toSpecBase A (n i)) h1
  simp only [Category.assoc, hc i, ProjSpace.pr_toSpecBase] at h2
  simp only [eX, eX', Category.assoc, h2, pullback.condition]
  rw [pullback.condition_assoc, morphismRestrict_ι_assoc]

variable [IsSeparated s]

abbrev Q : Scheme.{u} := eqLocus s (eX s n U c i) (eX' s n U c i) (eX_eX'_over s n U c hc i)

abbrev Qo : Q s n U c hc i ⟶ (O s n i).toScheme := eqLocusι _ _ _ _ ≫ pullback.snd _ _

abbrev Qφ : Q s n U c hc i ⟶ F n U c i := eqLocusι _ _ _ _ ≫ pullback.fst _ _


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
include hc in
lemma F_over : pullback.fst (c i) (ρ (A := A) n i) ≫ (U i).ι ≫ s =
    pullback.snd (c i) (ρ (A := A) n i) ≫ (V (A := A) n i).ι ≫ ProjSpace.mpStr A k n := by
  have h1 : pullback.fst (c i) (ρ (A := A) n i) ≫ c i ≫ (ProjSpace.stdOpen A (n i) 0).ι =
      pullback.snd (c i) (ρ (A := A) n i) ≫ (V (A := A) n i).ι ≫ ProjSpace.pr A k n i := by
    rw [← morphismRestrict_ι, ← Category.assoc, pullback.condition, Category.assoc]
  have h2 := congrArg (· ≫ ProjSpace.toSpecBase A (n i)) h1
  simpa only [Category.assoc, hc i, ProjSpace.pr_toSpecBase] using h2


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
def gF : (g s n U c hc ⁻¹ᵁ O s n i).toScheme ⟶ F n U c i :=
  pullback.lift ((g s n U c hc ⁻¹ᵁ O s n i).ι ≫ X.homOfLE (iInf_le U i))
    ((g s n U c hc ∣_ O s n i) ≫ τ s n i) (by
      rw [← cancel_mono (ProjSpace.stdOpen A (n i) 0).ι]
      simp only [Category.assoc, morphismRestrict_ι, morphismRestrict_ι_assoc, g_snd_assoc, gP_pr])


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
def gE : (g s n U c hc ⁻¹ᵁ O s n i).toScheme ⟶ E s n U c i :=
  pullback.lift (gF s n U c hc i) (g s n U c hc ∣_ O s n i) (pullback.lift_snd _ _ _)


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
def gQ : (g s n U c hc ⁻¹ᵁ O s n i).toScheme ⟶ Q s n U c hc i :=
  eqLocusLift _ _ _ _ (gE s n U c hc i) (by
    simp only [gE, gF, eX, eX', pullback.lift_fst_assoc, pullback.lift_snd_assoc,
      Category.assoc, Scheme.homOfLE_ι, morphismRestrict_ι_assoc, g_fst])

omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
lemma gQ_Qo : gQ s n U c hc i ≫ Qo s n U c hc i = g s n U c hc ∣_ O s n i := by
  simp only [gQ, Qo, eqLocusLift_ι_assoc, gE]
  exact pullback.lift_snd _ _ _


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
def σG : F n U c i ⟶ G s n :=
  pullback.lift (pullback.fst _ _ ≫ (U i).ι) (pullback.snd _ _ ≫ (V (A := A) n i).ι)
    (by simpa only [Category.assoc] using F_over s n U c hc i)

omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
lemma range_σG : Set.range (σG s n U c hc i).base ⊆ Set.range (O s n i).ι.base := by
  rintro _ ⟨x, rfl⟩
  rw [Scheme.Opens.range_ι]
  change (pullback.snd s (ProjSpace.mpStr A k n)).base ((σG s n U c hc i).base x) ∈ V (A := A) n i
  have : σG s n U c hc i ≫ pullback.snd s (ProjSpace.mpStr A k n) =
      pullback.snd _ _ ≫ (V (A := A) n i).ι := pullback.lift_snd _ _ _
  have h2 : x ∈ (σG s n U c hc i ≫ pullback.snd s (ProjSpace.mpStr A k n)) ⁻¹ᵁ V (A := A) n i := by
    rw [this]
    exact Subtype.prop ((pullback.snd (c i) (ρ (A := A) n i)).base x)
  exact h2


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
def σO : F n U c i ⟶ (O s n i).toScheme :=
  IsOpenImmersion.lift (O s n i).ι (σG s n U c hc i) (range_σG s n U c hc i)

omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] [IsSeparated s] in
@[reassoc (attr := simp)]
lemma σO_ι : σO s n U c hc i ≫ (O s n i).ι = σG s n U c hc i := IsOpenImmersion.lift_fac _ _ _


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
def σE : F n U c i ⟶ E s n U c i :=
  pullback.lift (𝟙 _) (σO s n U c hc i) (by
    rw [← cancel_mono (V (A := A) n i).ι]
    simp only [Category.assoc, Category.id_comp, τ, morphismRestrict_ι, σO_ι_assoc, σG]
    exact (pullback.lift_snd _ _ _).symm)


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
def σ : F n U c i ⟶ Q s n U c hc i :=
  eqLocusLift _ _ _ _ (σE s n U c hc i) (by
    simp only [σE, eX, eX', pullback.lift_fst_assoc, pullback.lift_snd_assoc, σO_ι_assoc, σG,
      Category.id_comp, pullback.lift_fst])


omit [IsProper (ProjSpace.mpStr A k n)] [QuasiCompact (g s n U c hc)] in
instance isIso_Qφ [IsClosedImmersion (c i)] : IsIso (Qφ s n U c hc i) := by
  refine ⟨⟨σ s n U c hc i, ?_, ?_⟩⟩
  · have hmono : Mono (Qo s n U c hc i) := by unfold Qo; infer_instance
    rw [← cancel_mono (Qo s n U c hc i), Category.id_comp]
    rw [← cancel_mono (O s n i).ι]
    apply pullback.hom_ext
    · simp only [Qφ, Qo, σ, Category.assoc, eqLocusLift_ι_assoc, σE, pullback.lift_snd_assoc,
        σO_ι_assoc, σG, pullback.lift_fst]
      exact eqLocusι_comp_eq _ _ _ _
    · simp only [Qφ, Qo, σ, Category.assoc, eqLocusLift_ι_assoc, σE, σO_ι_assoc, σG,
        pullback.lift_snd]
      rw [← morphismRestrict_ι, pullback.condition_assoc]
  · simp only [Qφ, σ, eqLocusLift_ι_assoc, σE, pullback.lift_fst]


omit [IsProper (ProjSpace.mpStr A k n)] in
theorem isClosedImmersion_q_restrict [IsClosedImmersion (c i)] :
    IsClosedImmersion (q s n U c hc ∣_ V (A := A) n i) := by
  have hQo : IsClosedImmersion (Qo s n U c hc i) := by unfold Qo; infer_instance
  obtain ⟨κ, hκ⟩ := SchemeImage.exists_lift_imageι_morphismRestrict (g s n U c hc) (O s n i)
    (Qo s n U c hc i) (gQ s n U c hc i) (gQ_Qo s n U c hc i)
  have hκc : IsClosedImmersion κ := by
    have : IsClosedImmersion (κ ≫ Qo s n U c hc i) := by rw [hκ]; infer_instance
    exact IsClosedImmersion.of_comp_isClosedImmersion κ (Qo s n U c hc i)
  have e : q s n U c hc ∣_ V (A := A) n i =
      κ ≫ Qφ s n U c hc i ≫ pullback.snd (c i) (ρ (A := A) n i) := by
    change (ι' s n U c hc ≫ pullback.snd _ _) ∣_ V (A := A) n i = _
    rw [morphismRestrict_comp]
    change (ι' s n U c hc ∣_ O s n i) ≫ τ s n i = _
    rw [← hκ, Category.assoc]
    congr 1
    simp only [Qo, Qφ, Category.assoc]
    rw [pullback.condition]
  rw [e]
  have h1 : IsClosedImmersion (Qφ s n U c hc i) := inferInstance
  have h2 : IsClosedImmersion (Qφ s n U c hc i ≫ pullback.snd (c i) (ρ (A := A) n i)) :=
    inferInstance
  exact @IsClosedImmersion.comp _ _ _ κ _ hκc h2

end OverV

theorem isClosedImmersion_q [IsProper s] (hU : iSup U = ⊤) [∀ i, IsClosedImmersion (c i)] :
    IsClosedImmersion (q s n U c hc) := by
  have hp : IsProper (q s n U c hc ≫ ProjSpace.mpStr A k n) := by
    change IsProper ((ι' s n U c hc ≫ pullback.snd _ _) ≫ ProjSpace.mpStr A k n)
    rw [Category.assoc, ← pullback.condition]
    infer_instance
  have hq : IsProper (q s n U c hc) := IsProper.of_comp _ (ProjSpace.mpStr A k n)
  have hcl : IsClosed (Set.range (q s n U c hc).base) := (q s n U c hc).isClosedMap.isClosed_range
  let W' : Option (Fin (k + 1)) → (ProjSpace.MP A k n).Opens := fun o =>
    o.elim ⟨(Set.range (q s n U c hc).base)ᶜ, hcl.isOpen_compl⟩ (fun i => V (A := A) n i)
  refine IsZariskiLocalAtTarget.of_iSup_eq_top W' ?_ ?_
  · refine top_le_iff.1 fun p _ => ?_
    by_cases hpr : p ∈ Set.range (q s n U c hc).base
    · obtain ⟨y, rfl⟩ := hpr
      have hy : π s n U c hc y ∈ (⊤ : X.Opens) := trivial
      rw [← hU] at hy
      obtain ⟨i, hi⟩ := Opens.mem_iSup.1 hy
      exact Opens.mem_iSup.2 ⟨some i, q_mem_V s n U c hc i y hi⟩
    · exact Opens.mem_iSup.2 ⟨none, hpr⟩
  · rintro (_ | i)
    · have : IsEmpty (q s n U c hc ⁻¹ᵁ W' none).toScheme :=
        ⟨fun x => x.2 ⟨x.1, rfl⟩⟩
      infer_instance
    · exact isClosedImmersion_q_restrict s n U c hc i

end ChowGraph

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowGraph =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowLocal =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowLocal", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveSpaceChart\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Limits MvPolynomial HomogeneousLocalization

universe u

attribute [local instance] MvPolynomial.gradedAlgebra

noncomputable section

namespace ProjSpace

variable {A : Type u} [CommRing A]

abbrev chartStructureMap (n : ℕ) : A →+* Chart A (0 : Fin (n + 1)) :=
  (fromZeroRingHom (grading A n) _).comp (algebraMap A (grading A n 0))

lemma chartToPoly_chartStructureMap (n : ℕ) (a : A) :
    chartToPoly A (0 : Fin (n + 1)) (chartStructureMap n a) = C a := by
  have h : chartStructureMap (A := A) n a = polyToChart A 0 (C a) := by
    simp [polyToChart]
  rw [h, ← RingHom.comp_apply, chartToPoly_polyToChart, RingHom.id_apply]

theorem exists_surjective_chart {B : Type u} [CommRing B] (ρ : A →+* B) (hρ : ρ.FiniteType) :
    ∃ (n : ℕ) (g : Chart A (0 : Fin (n + 1)) →+* B), Function.Surjective g ∧
      g.comp (chartStructureMap n) = ρ := by
  let _ := ρ.toAlgebra
  obtain ⟨n, s, hs⟩ := Algebra.FiniteType.iff_quotient_mvPolynomial''.1 hρ
  let ψ : MvPolynomial {j : Fin (n + 1) // j ≠ 0} A →+* B :=
    eval₂Hom ρ fun j => s (X (j.1.pred j.2))
  let e : Fin n → {j : Fin (n + 1) // j ≠ 0} := fun k => ⟨k.succ, Fin.succ_ne_zero k⟩
  have hψ : ∀ p, ψ (rename e p) = s p := by
    intro p
    rw [MvPolynomial.aeval_unique s]
    simp only [ψ, coe_eval₂Hom, eval₂_rename, e, aeval_def]
    rfl
  refine ⟨n, ψ.comp (chartToPoly A 0), ?_, ?_⟩
  · intro b
    obtain ⟨p, rfl⟩ := hs b
    obtain ⟨z, hz⟩ := (chartEquiv A (0 : Fin (n + 1))).surjective (rename e p)
    exact ⟨z, by rw [RingHom.comp_apply]; change ψ (chartEquiv A 0 z) = _; rw [hz, hψ]⟩
  · ext a
    rw [RingHom.comp_apply, RingHom.comp_apply, chartToPoly_chartStructureMap]
    simp [ψ]

theorem exists_closedImmersion_stdOpen {X : Scheme.{u}} (f : X ⟶ Spec (.of A))
    [LocallyOfFiniteType f] {U : X.Opens} (hU : IsAffineOpen U) :
    ∃ (n : ℕ) (c : U.toScheme ⟶ (stdOpen A n 0).toScheme), IsClosedImmersion c ∧
      c ≫ (stdOpen A n 0).ι ≫ toSpecBase A n = U.ι ≫ f := by
  let ρ' : CommRingCat.of A ⟶ Γ(X, U) := (Scheme.ΓSpecIso (.of A)).inv ≫ f.appLE ⊤ U le_top
  have hρ : ρ'.hom.FiniteType := by
    refine RingHom.FiniteType.comp (f.finiteType_appLE (isAffineOpen_top _) hU le_top) ?_
    exact RingHom.FiniteType.of_surjective _
      (ConcreteCategory.bijective_of_isIso (Scheme.ΓSpecIso (.of A)).inv).2
  obtain ⟨n, g, hg, hgc⟩ := exists_surjective_chart ρ'.hom hρ
  have hX0 : (MvPolynomial.X 0 : MvPolynomial (Fin (n + 1)) A) ∈ grading A n 1 := X_mem 0
  let c : U.toScheme ⟶ (Proj.basicOpen (grading A n) (MvPolynomial.X 0)).toScheme :=
    hU.isoSpec.hom ≫ Spec.map (CommRingCat.ofHom g) ≫
      (Proj.basicOpenIsoSpec (grading A n) (MvPolynomial.X 0) hX0 one_pos).inv
  have hc : IsClosedImmersion c := by
    have := IsClosedImmersion.spec_of_surjective (CommRingCat.ofHom g) hg
    dsimp only [c]
    infer_instance
  refine ⟨n, c, hc, ?_⟩
  have h1 : U.ι ≫ f = hU.isoSpec.hom ≫ Spec.map ρ' := by
    rw [← hU.isoSpec_hom_fromSpec, Category.assoc,
      ← IsAffineOpen.SpecMap_appLE_fromSpec f (isAffineOpen_top _) hU le_top,
      IsAffineOpen.fromSpec_top, Scheme.isoSpec, asIso_inv]
    congr 1
    rw [IsIso.comp_inv_eq, ← SpecMap_ΓSpecIso_hom, ← Spec.map_comp]
    congr 1
    simp [ρ']
  rw [h1]
  change hU.isoSpec.hom ≫ Spec.map (CommRingCat.ofHom g) ≫
      ((Proj.basicOpenIsoSpec (grading A n) (MvPolynomial.X 0) hX0 one_pos).inv ≫
        (Proj.basicOpen (grading A n) (MvPolynomial.X 0)).ι) ≫ toSpecBase A n = _
  rw [Proj.basicOpenIsoSpec_inv_ι, toSpecBase, Proj.awayι_toSpecZero_assoc,
    ← Spec.map_comp, ← Spec.map_comp]
  congr 2
  ext a
  change g (chartStructureMap n a) = ρ'.hom a
  rw [← RingHom.comp_apply, hgc]

end ProjSpace

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowLocal =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowMulti =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowMulti", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowGraph\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowLocal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.Noetherian\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Limits TopologicalSpace

universe u

noncomputable section

theorem exists_chow_multiProj {A : Type u} [CommRing A] [IsNoetherianRing A] (X : Scheme.{u})
    [X.Over (Spec (.of A))] [IsProper (X ↘ Spec (.of A))] [IrreducibleSpace X] :
    ∃ (k : ℕ) (n : Fin (k + 1) → ℕ) (X' : Scheme.{u}) (q : X' ⟶ ProjSpace.MP A k n)
      (π : X' ⟶ X) (U : X.Opens), IsClosedImmersion q ∧
      q ≫ ProjSpace.mpStr A k n = π ≫ (X ↘ Spec (.of A)) ∧ genericPoint X ∈ U ∧
      IsIso (π ∣_ U) := by
  classical
  set s := X ↘ Spec (.of A)
  have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace s
  have : IsLocallyNoetherian X := LocallyOfFiniteType.isLocallyNoetherian s
  have : IsNoetherian X := ⟨⟩

  have hex : ∀ x : X, ∃ V : X.Opens, IsAffineOpen V ∧ x ∈ V := fun x => by
    obtain ⟨_, ⟨V, hV, rfl⟩, hxV, -⟩ :=
      X.isBasis_affineOpens.exists_subset_of_mem_open (Set.mem_univ x) isOpen_univ
    exact ⟨V, hV, hxV⟩
  choose V hVaff hxV using hex
  obtain ⟨t, ht⟩ := isCompact_univ.elim_finite_subcover (fun x : X => (V x : Set X))
    (fun x => (V x).2) (fun x _ => Set.mem_iUnion.2 ⟨x, hxV x⟩)
  have htne : t.Nonempty := by
    obtain ⟨x⟩ := (inferInstance : Nonempty X)
    obtain ⟨y, hy, -⟩ := Set.mem_iUnion₂.1 (ht (Set.mem_univ x))
    exact ⟨y, hy⟩
  obtain ⟨k, hk⟩ : ∃ k, t.card = k + 1 := ⟨t.card - 1, by have := htne.card_pos; omega⟩
  let e : Fin (k + 1) ≃ t := (Fintype.equivFinOfCardEq (by simpa using hk)).symm
  let U : Fin (k + 1) → X.Opens := fun j => V (e j)
  have hUaff : ∀ j, IsAffineOpen (U j) := fun j => hVaff _
  have hU : iSup U = ⊤ := by
    refine top_le_iff.1 fun x _ => ?_
    obtain ⟨y, hy, hxy⟩ := Set.mem_iUnion₂.1 (ht (Set.mem_univ x))
    exact Opens.mem_iSup.2 ⟨e.symm ⟨y, hy⟩, by simpa [U] using hxy⟩
  have hc := fun j => ProjSpace.exists_closedImmersion_stdOpen (A := A) s (hUaff j)
  choose n c hccl hcc using hc
  have : ∀ j, IsClosedImmersion (c j) := hccl
  have hη : genericPoint X ∈ ChowGraph.W U := by
    rw [ChowGraph.W, ← SetLike.mem_coe, Opens.coe_iInf, Set.mem_iInter]
    intro j
    exact ((genericPoint_spec X).mem_open_set_iff (U j).2).2
      ⟨e j, Set.mem_univ _, hxV _⟩
  have : NoetherianSpace (ChowGraph.W U).toScheme :=
    NoetherianSpace.set ((ChowGraph.W U : X.Opens) : Set X)
  have : QuasiCompact (ChowGraph.g s n U c hcc) := ⟨fun _ _ _ => NoetherianSpace.isCompact _⟩
  refine ⟨k, n, ChowGraph.X' s n U c hcc, ChowGraph.q s n U c hcc, ChowGraph.π s n U c hcc,
    ChowGraph.W U, ChowGraph.isClosedImmersion_q s n U c hcc hU, ?_, hη,
    ChowGraph.isIso_π_restrict s n U c hcc⟩
  simp only [ChowGraph.q, ChowGraph.π, Category.assoc, pullback.condition]

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowMulti =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ExistsChow =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ExistsChow", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf\npublic import Mathlib.AlgebraicGeometry.Morphisms.Proper\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowMulti\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowSegre\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Limits TopologicalSpace

universe u

noncomputable section

theorem exists_chow' {A : Type u} [CommRing A] [IsNoetherianRing A] (X : Scheme.{u})
    [X.Over (Spec (.of A))] [IsProper (X ↘ Spec (.of A))] [IrreducibleSpace X] :
    ∃ (N : ℕ) (X' : Scheme.{u}) (i : X' ⟶ projectiveSpace A N) (π : X' ⟶ X) (U : X.Opens),
      IsClosedImmersion i ∧ i ≫ ProjSpace.toSpecBase A N = π ≫ (X ↘ Spec (.of A)) ∧
      genericPoint X ∈ U ∧ IsIso (π ∣_ U) := by
  obtain ⟨k, n, X', q, π, U, hq, hqπ, hU, hπ⟩ := exists_chow_multiProj (A := A) X
  refine ⟨ProjSpace.multiProjDim k n, X', q ≫ ProjSpace.multiProjEmb A k n, π, U,
    inferInstance, ?_, hU, hπ⟩
  rw [Category.assoc, ProjSpace.multiProjEmb_toSpecBase, hqπ]

theorem exists_chow {A : Type u} [CommRing A] [IsNoetherianRing A] (X : Scheme.{u})
    [X.Over (Spec (.of A))] [IsProper (X ↘ Spec (.of A))] [IrreducibleSpace X] :
    ∃ (N : ℕ) (X' : Scheme.{u}) (i : X' ⟶ projectiveSpace A N) (π : X' ⟶ X) (U : X.Opens),
      IsClosedImmersion i ∧ i ≫ ProjSpace.toSpecBase A N = π ≫ (X ↘ Spec (.of A)) ∧
      (U : Set X).Nonempty ∧ IsIso (π ∣_ U) := by
  obtain ⟨N, X', i, π, U, hi, hiπ, hU, hπ⟩ := exists_chow' (A := A) X
  exact ⟨N, X', i, π, U, hi, hiπ, ⟨_, hU⟩, hπ⟩

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ExistsChow =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.IrreducibleImage =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.IrreducibleImage", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Morphisms.ClosedImmersion\npublic import Mathlib.AlgebraicGeometry.Noetherian\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SchemeImage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\npublic import Mathlib.AlgebraicGeometry.IdealSheaf.IrreducibleComponent\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.SetTheory.ZFC.PSet\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory TopologicalSpace Limits

universe u

noncomputable section

lemma isIso_opens_ι_restrict {Z : Scheme.{u}} (O : Z.Opens) : IsIso (O.ι ∣_ O) := by
  apply isIso_of_isOpenImmersion_of_opensRange_eq_top
  apply le_antisymm le_top
  intro x _
  refine ⟨⟨x, ?_⟩, ?_⟩
  · change O.ι x ∈ O
    exact x.2
  · apply Subtype.ext
    exact morphismRestrict_base_coe O.ι O ⟨x, _⟩

theorem exists_irreducible_isIso_restrict (Z : Scheme.{u}) [IsNoetherian Z] [Nonempty Z] :
    ∃ (Z₁ : Scheme.{u}) (c : Z₁ ⟶ Z) (O : Z.Opens), IsClosedImmersion c ∧ IrreducibleSpace Z₁ ∧
      (O : Set Z).Nonempty ∧ IsIso (c ∣_ O) := by
  obtain ⟨z⟩ := ‹Nonempty Z›
  have hC := irreducibleComponent_mem_irreducibleComponents z
  set C := irreducibleComponent z
  set O := Z.irreducibleComponentOpen C
  refine ⟨Z.irreducibleComponent C hC, Z.irreducibleComponentι C hC, O, inferInstance,
    inferInstance, ?_, ?_⟩
  · obtain ⟨o, ho, hne, hoC⟩ :=
      NoetherianSpace.exists_isOpen_nonempty_subset_irreducibleComponent C hC

    by_contra h
    rw [Set.not_nonempty_iff_eq_empty] at h
    have hcl := closure_sUnion_irreducibleComponents_sdiff_singleton
      NoetherianSpace.finite_irreducibleComponents C hC
    have : (O : Set Z) = (⋃₀ (irreducibleComponents Z \ {C}))ᶜ := rfl
    rw [this, Set.compl_empty_iff] at h
    rw [h, Set.compl_univ, closure_empty] at hcl
    exact hC.1.nonempty.ne_empty hcl.symm
  · have hI := Z.irreducibleComponentIdeal_def C hC
    have : IsIso (O.ι ∣_ O) := isIso_opens_ι_restrict O
    have key := SchemeImage.imageRestrictLift_fac O.ι O
    change IsIso ((Z.irreducibleComponentIdeal C hC).subschemeι ∣_ O)
    rw [hI]
    change IsIso (O.ι.imageι ∣_ O)
    rw [← key]
    infer_instance

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.IrreducibleImage =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RestrictIso =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RestrictIso", "h": "module\n\npublic import Mathlib.AlgebraicGeometry.Restrict\npublic import Mathlib.Combinatorics.Quiver.ReflQuiver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory TopologicalSpace Limits

universe u

noncomputable section

variable {X Y : Scheme.{u}} (f : X ⟶ Y)

lemma isIso_morphismRestrict_of_le {U U' : Y.Opens} (h : U' ≤ U) [IsIso (f ∣_ U)] :
    IsIso (f ∣_ U') := by
  have h1 : IsPullback (f ∣_ U') (f ⁻¹ᵁ U').ι U'.ι f := isPullback_morphismRestrict f U'
  have h2 : IsPullback (f ∣_ U) (f ⁻¹ᵁ U).ι U.ι f := isPullback_morphismRestrict f U
  have hU : Y.homOfLE h ≫ U.ι = U'.ι := Y.homOfLE_ι h
  have hX : X.homOfLE (f.preimage_mono h) ≫ (f ⁻¹ᵁ U).ι = (f ⁻¹ᵁ U').ι := X.homOfLE_ι _
  have hsq : X.homOfLE (f.preimage_mono h) ≫ f ∣_ U = f ∣_ U' ≫ Y.homOfLE h := by
    rw [← cancel_mono U.ι, Category.assoc, morphismRestrict_ι, Category.assoc, hU,
      morphismRestrict_ι, ← Category.assoc, hX]
  have h3 : IsPullback (X.homOfLE (f.preimage_mono h)) (f ∣_ U') (f ∣_ U) (Y.homOfLE h) := by
    refine IsPullback.of_right ?_ hsq h2.flip
    rw [hX, hU]
    exact h1.flip
  exact h3.isIso_snd_of_isIso

lemma bijective_app_of_isIso_morphismRestrict {U : Y.Opens} [IsIso (f ∣_ U)] {V : Y.Opens}
    (hV : V ≤ U) : Function.Bijective (f.app V) := by
  have := isIso_morphismRestrict_of_le f hV
  have h0 : IsIso ((f ∣_ V).app ⊤) := inferInstance
  have h1 : IsIso (f.app (V.ι ''ᵁ ⊤) ≫
      X.presheaf.map (eqToHom (image_morphismRestrict_preimage f V ⊤)).op) := by
    rw [← morphismRestrict_app]
    exact h0
  have h2 : IsIso (f.app (V.ι ''ᵁ ⊤)) := IsIso.of_isIso_comp_right _
    (X.presheaf.map (eqToHom (image_morphismRestrict_preimage f V ⊤)).op)
  have e : V.ι ''ᵁ ⊤ = V := V.ι_image_top
  rw [e] at h2
  exact ConcreteCategory.bijective_of_isIso _

lemma injOn_of_isIso_morphismRestrict {U : Y.Opens} [IsIso (f ∣_ U)] :
    Set.InjOn f.base (f ⁻¹ᵁ U : Set X) := by
  intro a ha b hb hab
  have hinj : Function.Injective (f ∣_ U).base :=
    (TopCat.homeoOfIso (Scheme.forgetToTop.mapIso (asIso (f ∣_ U)))).injective
  have := @hinj ⟨a, ha⟩ ⟨b, hb⟩ (Subtype.ext
    ((morphismRestrict_base_coe f U ⟨a, ha⟩).trans (hab.trans
      (morphismRestrict_base_coe f U ⟨b, hb⟩).symm)))
  exact congrArg Subtype.val this

lemma exists_preimage_of_isIso_morphismRestrict {U : Y.Opens} [IsIso (f ∣_ U)] {y : Y}
    (hy : y ∈ U) : ∃ x : X, x ∈ f ⁻¹ᵁ U ∧ f.base x = y := by
  have hsurj : Function.Surjective (f ∣_ U).base :=
    (TopCat.homeoOfIso (Scheme.forgetToTop.mapIso (asIso (f ∣_ U)))).surjective
  obtain ⟨⟨x, hx⟩, hxy⟩ := hsurj ⟨y, hy⟩
  refine ⟨x, hx, ?_⟩
  exact (morphismRestrict_base_coe f U ⟨x, hx⟩).symm.trans (congrArg Subtype.val hxy)

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RestrictIso =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionBasis =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionBasis", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.InvertibleSheaf\npublic import Mathlib.Algebra.Category.ModuleCat.Sheaf.Quasicoherent\npublic import Mathlib.Tactic.ENatToNat\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPush\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits

universe u

noncomputable section

variable {X : Scheme.{u}}

lemma IsBasisOn.isUnit_smul {P : PMod X} {U : X.Opens} {s : P.obj (op U)} (hs : IsBasisOn P U s)
    {a : ringOn X U} (ha : IsUnit a) : IsBasisOn P U (a • s) := by
  intro V h
  have e : resM P h (a • s) = resR h a • resM P h s := resM_smul P h a s
  have hu : IsUnit (resR h a) := ha.map _
  have : (fun r : ringOn X V => r • resM P h (a • s)) =
      (fun r : ringOn X V => r • resM P h s) ∘ (fun r => r * resR h a) := by
    funext r
    simp only [Function.comp_apply, e, mul_smul]
  rw [this]
  refine (hs V h).comp ⟨fun r r' hrr => hu.mul_left_injective hrr, fun r => ⟨r * hu.unit⁻¹, ?_⟩⟩
  change r * ↑hu.unit⁻¹ * resR h a = r
  rw [mul_assoc, hu.val_inv_mul, mul_one]

theorem exists_isBasisOn_generatingSection (L : X.Modules) [L.IsQuasicoherent]
    (hL : IsInvertibleSheaf L) (σ : L.GeneratingSections) [σ.IsFiniteType] (x : X) :
    ∃ (k : σ.I) (W : X.Opens), x ∈ W ∧
      IsBasisOn ((preMod X).obj L) W
        (resM ((preMod X).obj L) le_top (show Γ(L, ⊤) from (σ.s k).val (op ⊤))) := by
  classical
  set P := (preMod X).obj L
  obtain ⟨U, hxU, e, he⟩ := hL x
  obtain ⟨_, ⟨V, hVaff, rfl⟩, hxV, hVU⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open hxU U.2
  replace hVU : V ≤ U := hVU
  have hb : IsBasisOn P V (resM P hVU e) := he.restrict hVU
  let φ : ringOn X V ≃ₗ[ringOn X V] P.obj (op V) :=
    LinearEquiv.ofBijective (LinearMap.toSpanSingleton (ringOn X V) _ (resM P hVU e))
      (by
        have h := hb V le_rfl
        rwa [show resM P (le_refl V) (resM P hVU e) = resM P hVU e by
          rw [resM_resM]] at h)
  let g : σ.I → P.obj (op V) := fun k => resM P le_top (show Γ(L, ⊤) from (σ.s k).val (op ⊤))
  let a : σ.I → ringOn X V := fun k => φ.symm (g k)
  have hga : ∀ k, g k = a k • resM P hVU e := fun k => by
    change g k = φ (a k)
    simp [a]
  have hspan : Submodule.span (ringOn X V) (Set.range g) = ⊤ :=
    span_eq_top_of_generatingSections L σ hVaff
  have hIdeal : Ideal.span (Set.range a) = ⊤ := by
    have h2 : Submodule.map φ.symm.toLinearMap (Submodule.span (ringOn X V) (Set.range g)) = ⊤ := by
      rw [hspan, Submodule.map_top,
        LinearMap.range_eq_top]
      exact φ.symm.surjective
    rw [Submodule.map_span, ← Set.range_comp] at h2
    exact h2
  have hxcov : V ≤ ⨆ k, X.basicOpen (a k) := by
    have := (hVaff.self_le_iSup_basicOpen_iff (s := Set.range a)).2 hIdeal
    intro y hy
    obtain ⟨⟨_, k, rfl⟩, hk⟩ := Opens.mem_iSup.1 (this hy)
    exact Opens.mem_iSup.2 ⟨k, hk⟩
  obtain ⟨k, hk⟩ := Opens.mem_iSup.1 (hxcov hxV)
  have hWV : X.basicOpen (a k) ≤ V := X.basicOpen_le _
  refine ⟨k, X.basicOpen (a k), hk, ?_⟩
  have hu : IsUnit (resR hWV (a k)) := X.toRingedSpace.isUnit_res_basicOpen (a k)
  have key : resM P le_top (show Γ(L, ⊤) from (σ.s k).val (op ⊤)) =
      resR hWV (a k) • resM P hWV (resM P hVU e) := by
    have h1 : resM P hWV (g k) = resM P (hWV.trans le_top) _ := resM_resM P le_top hWV _
    rw [hga k, resM_smul] at h1
    exact h1.symm
  rw [key]
  exact (hb.restrict hWV).isUnit_smul hu

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionBasis =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionTensor =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionTensor", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.InvertibleSheaf\npublic import Mathlib.Tactic.ENatToNat\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace MonoidalCategory TensorProduct

universe u

noncomputable section

variable {X : Scheme.{u}}

lemma bijective_app_of_factor {A B : X.Modules} (φ : A ⟶ B) {P : PMod X}
    (p : (preMod X).obj A ⟶ P) (q : P ⟶ (preMod X).obj B)
    (hq : ModulesTensor.W (Opens.grothendieckTopology X) X.sheaf.obj q)
    (hφ : (preMod X).map φ = p ≫ q) {W : X.Opens}
    (hp : ∀ V ≤ W, Function.Bijective (p.app (op V))) :
    ∀ V ≤ W, Function.Bijective (φ.app V) := by
  obtain ⟨hq₁, hq₂⟩ := (ModulesTensor.W_toPresheaf_iff q).1 hq
  have hφapp : ∀ (V : X.Opens) (a : Γ(A, V)), φ.app V a = q.app (op V) (p.app (op V) a) :=
    fun V a => congrArg (fun g => g.app (op V) a) hφ |>.trans rfl
  have nat : ∀ {V V' : X.Opens} (i : V' ≤ V) (σ : Γ(A, V)),
      φ.app V' (A.presheaf.map (homOfLE i).op σ) = B.presheaf.map (homOfLE i).op (φ.app V σ) :=
    fun i σ => NatTrans.naturality_apply φ.mapPresheaf (homOfLE i).op σ
  have inj : ∀ V ≤ W, Function.Injective (φ.app V) := by
    intro V hV
    rw [injective_iff_map_eq_zero]
    intro a ha
    rw [hφapp] at ha
    have hS := hq₁ (op V) _ ha
    rw [Opens.mem_grothendieckTopology] at hS
    apply sheaf_eq_of_locally ⟨A.presheaf, A.isSheaf⟩ (V := V)
    intro x hx
    obtain ⟨V', i, hi, hxV'⟩ := hS x hx
    refine ⟨V', i.le, hxV', ?_⟩
    have h0 : p.app (op V') (A.presheaf.map (homOfLE i.le).op a) = 0 := by
      have := PresheafOfModules.naturality_apply p (homOfLE i.le).op a
      exact this.trans hi
    apply (hp V' (i.le.trans hV)).1
    exact h0.trans (map_zero _).symm |>.trans (congrArg _ (map_zero _).symm)
  intro V hV
  refine ⟨inj V hV, fun b => ?_⟩
  have hS := hq₂ (op V) b
  rw [Opens.mem_grothendieckTopology] at hS
  choose V' i hi hxV' using hS
  choose w hw using hi
  choose a₀ ha using fun x (hx : x ∈ V) => (hp (V' x hx) ((i x hx).le.trans hV)).2 (w x hx)
  let a : ∀ x (hx : x ∈ V), Γ(A, V' x hx) := fun x hx => a₀ x hx
  have key : ∀ x hx, φ.app (V' x hx) (a x hx) = B.presheaf.map (homOfLE (i x hx).le).op b :=
    fun x hx => (hφapp _ (a x hx)).trans ((congrArg _ (ha x hx)).trans (hw x hx))
  obtain ⟨g, hg⟩ := sheaf_exists_glue ⟨A.presheaf, A.isSheaf⟩ (V := V) (ι := {x : X // x ∈ V})
    (fun c => V' c.1 c.2) (fun c => (i c.1 c.2).le) (fun x hx => ⟨⟨x, hx⟩, hxV' x hx⟩)
    (fun c => a c.1 c.2) (by
      intro c d
      apply inj _ (inf_le_left.trans ((i c.1 c.2).le.trans hV))
      change φ.app _ (A.presheaf.map _ (a c.1 c.2)) = φ.app _ (A.presheaf.map _ (a d.1 d.2))
      rw [nat, nat, key, key]
      change ((B.presheaf.map _ ≫ B.presheaf.map _) b) = ((B.presheaf.map _ ≫ B.presheaf.map _) b)
      rw [← B.presheaf.map_comp, ← B.presheaf.map_comp]
      rfl)
  refine ⟨g, ?_⟩
  apply sheaf_eq_of_locally ⟨B.presheaf, B.isSheaf⟩ (V := V)
  intro x hx
  refine ⟨V' x hx, (i x hx).le, hxV' x hx, ?_⟩
  change B.presheaf.map _ (φ.app V g) = _
  rw [← nat]
  have := hg ⟨x, hx⟩
  simp only at this
  rw [this]
  exact key x hx

def homOfPreMod {M S : X.Modules} (g : (preMod X).obj M ⟶ (preMod X).obj S) : M ⟶ S :=
  inv ((sheafifyModAdj X).counit.app M) ≫ ((sheafifyModAdj X).homEquiv _ _).symm g

lemma preMod_map_homOfPreMod {M S : X.Modules} (g : (preMod X).obj M ⟶ (preMod X).obj S) :
    (preMod X).map (homOfPreMod g) = g := by
  have h1 : (preMod X).map (inv ((sheafifyModAdj X).counit.app M)) =
      (sheafifyModAdj X).unit.app ((preMod X).obj M) := by
    rw [Functor.map_inv]
    exact (IsIso.eq_inv_of_inv_hom_id ((sheafifyModAdj X).right_triangle_components M)).symm
  rw [homOfPreMod, Functor.map_comp, h1, Adjunction.homEquiv_counit, Functor.map_comp,
    ← Category.assoc]
  erw [← (sheafifyModAdj X).unit.naturality g]
  rw [Category.assoc]
  erw [(sheafifyModAdj X).right_triangle_components S]
  exact Category.comp_id g

variable (M L : X.Modules) (s : Γ(L, ⊤))

def tensorSection : (preMod X).obj M ⟶ (preMod X).obj M ⊗ (preMod X).obj L :=
  PresheafOfModules.homMk
    { app := fun U => AddCommGrpCat.ofHom
        { toFun := fun m => (m : ((preMod X).obj M).obj U) ⊗ₜ
            resM ((preMod X).obj L) (le_top : U.unop ≤ ⊤) s
          map_zero' := zero_tmul _ _
          map_add' := fun a b => add_tmul _ _ _ }
      naturality := fun U V g => by
        ext m
        change (((preMod X).obj M).map g m) ⊗ₜ resM ((preMod X).obj L) (le_top : V.unop ≤ ⊤) s =
          (((preMod X).obj M).map g m) ⊗ₜ ((preMod X).obj L).map g
            (resM ((preMod X).obj L) (le_top : U.unop ≤ ⊤) s)
        congr 1
        change ((preMod X).obj L).map (homOfLE (le_top : V.unop ≤ ⊤)).op s =
          ((preMod X).obj L).map g (((preMod X).obj L).map (homOfLE (le_top : U.unop ≤ ⊤)).op s)
        exact PresheafOfModules.map_comp_apply ((preMod X).obj L) (homOfLE (le_top : U.unop ≤ ⊤)).op g s }
    (fun _ _ _ => rfl)

def mulSection : M ⟶ M ⊗ L :=
  homOfPreMod (tensorSection M L s ≫ tensorToSheaf M L)

lemma preMod_map_mulSection :
    (preMod X).map (mulSection M L s) = tensorSection M L s ≫ tensorToSheaf M L :=
  preMod_map_homOfPreMod _

theorem bijective_mulSection_app {W : X.Opens}
    (hs : IsBasisOn ((preMod X).obj L) W (resM ((preMod X).obj L) le_top s)) :
    ∀ V ≤ W, Function.Bijective ((mulSection M L s).app V) := by
  refine bijective_app_of_factor _ (tensorSection M L s) (tensorToSheaf M L) (W_tensorToSheaf M L)
    (preMod_map_mulSection M L s) ?_
  intro V hV
  have e0 : resM ((preMod X).obj L) hV (resM ((preMod X).obj L) le_top s) =
      resM ((preMod X).obj L) (le_top : V ≤ ⊤) s := resM_resM _ le_top hV s
  let R := X.sheaf.obj.obj (op V)
  let e : R ≃ₗ[R] ((preMod X).obj L).obj (op V) :=
    LinearEquiv.ofBijective (LinearMap.toSpanSingleton R _
      (resM ((preMod X).obj L) hV (resM ((preMod X).obj L) le_top s))) (hs V hV)
  let E := (TensorProduct.rid R (((preMod X).obj M).obj (op V))).symm ≪≫ₗ
    e.lTensor (((preMod X).obj M).obj (op V))
  have hE : ∀ m, E m = (tensorSection M L s).app (op V) m := by
    intro m
    change m ⊗ₜ e 1 = m ⊗ₜ resM ((preMod X).obj L) (le_top : V ≤ ⊤) s
    congr 1
    exact (one_smul R _).trans e0
  have : ⇑((tensorSection M L s).app (op V)) = E := funext fun m => (hE m).symm
  rw [this]
  exact E.bijective

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionTensor =====

-- ===== clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FinitenessStep =====
-- clump-header: {"m": "GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FinitenessStep", "h": "module\n\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.HasExtInstances\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.TwistingSheaf\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CohFinite\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.Support\npublic import Mathlib.AlgebraicGeometry.Morphisms.Proper\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ExistsGeneratingSectionsTwist\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Generation\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.Immersion\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProjectiveCohomology.ImmersionPush\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ChowProduct\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.CokernelCoherent\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.ExistsChow\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.IrreducibleImage\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.PullbackCoherent\nimport GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.PullbackUnit\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RelativeSerre\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.RestrictIso\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionBasis\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SectionTensor\npublic import GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.SupportMore\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.QuasiAffine\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Arith.SchemeCoh

open AlgebraicGeometry CategoryTheory Opposite TopologicalSpace Limits MonoidalCategory

universe u

noncomputable section

attribute [local instance] algebraOfOver

lemma isClosedImmersion_of_isIso' {X Y : Scheme.{u}} (f : X ⟶ Y) [IsIso f] : IsClosedImmersion f :=
  inferInstance

theorem isCoherent_unit (X : Scheme.{u}) : IsCoherent (𝟙_ X.Modules) := by
  refine ⟨isQuasicoherent_unit X, fun U _ => ?_⟩
  let one : Γ(𝟙_ X.Modules, U) := (1 : Γ(X, U))
  refine ⟨⟨{one}, ?_⟩⟩
  rw [eq_top_iff]
  intro m _
  have hm : m = (show Γ(X, U) from m) • one := (mul_one (show Γ(X, U) from m)).symm
  rw [hm]
  exact Submodule.smul_mem _ _ (Submodule.subset_span (Finset.mem_coe.2 (Finset.mem_singleton_self _)))

variable {A : Type u} [CommRing A] [IsNoetherianRing A]

theorem finiteH_step
    (X : Scheme.{u}) [X.Over (Spec (.of A))] [IsProper (X ↘ Spec (.of A))]
    (T : Set X) (hT : IsClosed T)
    (IH : ∀ T' : Set X, IsClosed T' → T' ⊂ T → ∀ F : X.Modules, IsCoherent F →
      Scheme.Modules.SupportedIn F T' → FiniteH.{u} A F)
    (F : X.Modules) (hF : IsCoherent F) (hFT : Scheme.Modules.SupportedIn F T) :
    FiniteH.{u} A F := by
  have : IsLocallyNoetherian X := LocallyOfFiniteType.isLocallyNoetherian (X ↘ Spec (.of A))
  have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace (X ↘ Spec (.of A))
  have := hF.1
  obtain ⟨I, hIT, G, hG, ⟨e⟩⟩ := exists_pushforward_iso_of_supportedIn F hF hT hFT
  have hFI : Scheme.Modules.SupportedIn F (I.support : Set X) := by
    have h := (Scheme.Modules.SupportedIn.univ G).pushforward I.subschemeι
    rw [Set.image_univ, Scheme.IdealSheafData.range_subschemeι] at h
    exact h.of_iso e
  by_cases hST : (I.support : Set X) = T
  swap
  · exact IH _ I.support.isClosed (lt_of_le_of_ne hIT hST) F hF hFI
  rcases isEmpty_or_nonempty I.subscheme with hZ | hZ
  · have h0 : (I.support : Set X) = ∅ := by
      rw [← Scheme.IdealSheafData.range_subschemeι]
      exact Set.range_eq_empty _
    exact FiniteH.of_isZero A (Scheme.Modules.SupportedIn.isZero_of_empty (h0 ▸ hFI))
  set Z := I.subscheme
  set j : Z ⟶ X := I.subschemeι
  let _ : Z.Over (Spec (.of A)) := ⟨j ≫ (X ↘ Spec (.of A))⟩
  have : IsProper (Z ↘ Spec (.of A)) := (inferInstance : IsProper (j ≫ (X ↘ Spec (.of A))))
  have : IsLocallyNoetherian Z := LocallyOfFiniteType.isLocallyNoetherian (Z ↘ Spec (.of A))
  have : CompactSpace Z := QuasiCompact.compactSpace_of_compactSpace (Z ↘ Spec (.of A))
  have : IsNoetherian Z := ⟨⟩
  obtain ⟨Z₁, c, O, hc, hirr, hOne, hcO⟩ := exists_irreducible_isIso_restrict Z
  let _ : Z₁.Over (Spec (.of A)) := ⟨c ≫ (Z ↘ Spec (.of A))⟩
  have : IsProper (Z₁ ↘ Spec (.of A)) := (inferInstance : IsProper (c ≫ (Z ↘ Spec (.of A))))
  obtain ⟨N, Z', i, π, U₁, hi, hiπ, hU₁, hπU⟩ := exists_chow (A := A) Z₁
  set ψ : Z' ⟶ X := π ≫ c ≫ j with hψ
  let _ : Z'.Over (Spec (.of A)) := ⟨ψ ≫ (X ↘ Spec (.of A))⟩
  have : ψ.IsOver (Spec (.of A)) := ⟨rfl⟩
  have : i.IsOver (Spec (.of A)) := ⟨by
    change i ≫ ProjSpace.toSpecBase A N = (π ≫ c ≫ j) ≫ (X ↘ Spec (.of A))
    rw [hiπ]
    simp only [Category.assoc]
    rfl⟩
  have hZ'p : IsProper (ψ ≫ (X ↘ Spec (.of A))) := by
    have h : ψ ≫ (X ↘ Spec (.of A)) = i ≫ ProjSpace.toSpecBase A N :=
      (CategoryTheory.comp_over i (Spec (.of A))).symm
    rw [h]
    infer_instance
  have : IsProper ψ := IsProper.of_comp ψ (X ↘ Spec (.of A))
  have : IsClosedImmersion (c ≫ j) := inferInstance

  have hG' : IsCoherent ((Scheme.Modules.pullback ψ).obj F) := isCoherent_pullback ψ hF
  set G' := (Scheme.Modules.pullback ψ).obj F
  obtain ⟨n₀, hn₀⟩ := ProjScheme.exists_relativeSerre i ψ G' hG'
  have hUnitCoh := isCoherent_unit Z'
  letI := hUnitCoh.1
  obtain ⟨n₁, hn₁⟩ := ProjScheme.exists_generatingSections_twist i (𝟙_ Z'.Modules) hUnitCoh
  set n := max n₀ n₁
  obtain ⟨σ, hσ⟩ := hn₁ n (le_max_right _ _)
  set L := ProjScheme.twistingSheaf i (n : ℤ)
  have eL : ProjScheme.twist i (𝟙_ Z'.Modules) (n : ℤ) ≅ L := λ_ L
  obtain ⟨σL, hσL⟩ := exists_generatingSections_of_iso eL ⟨σ, hσ⟩
  have : L.IsQuasicoherent :=
    (SheafOfModules.isQuasicoherent Z'.ringCatSheaf).prop_of_iso eL
      (ProjScheme.isQuasicoherent_twist i (𝟙_ Z'.Modules) (n : ℤ))
  have hL : IsInvertibleSheaf L := ProjScheme.isInvertibleSheaf_twistingSheaf i (n : ℤ)

  have hcO' : ((c ⁻¹ᵁ O : Z₁.Opens) : Set Z₁).Nonempty := by
    obtain ⟨o, ho⟩ := hOne
    obtain ⟨z, hz, -⟩ := exists_preimage_of_isIso_morphismRestrict c ho
    exact ⟨z, hz⟩
  obtain ⟨z, hzU, hzO⟩ := nonempty_preirreducible_inter U₁.isOpen (c ⁻¹ᵁ O).isOpen hU₁ hcO'
  obtain ⟨y, hyU, hyz⟩ := exists_preimage_of_isIso_morphismRestrict π hzU
  obtain ⟨k, W', hyW', hbasis⟩ := exists_isBasisOn_generatingSection L hL σL y
  set s : Γ(L, ⊤) := (σL.s k).val (op ⊤)
  set Φ := (Scheme.Modules.pushforward ψ).obj (ProjScheme.twist i G' n)
  let α : F ⟶ Φ := (Scheme.Modules.pullbackPushforwardAdjunction ψ).unit.app F ≫
    (Scheme.Modules.pushforward ψ).map (mulSection G' L s)

  set Wg : Z'.Opens := W' ⊓ π ⁻¹ᵁ (U₁ ⊓ c ⁻¹ᵁ O)
  set Bad : Set X := ψ.base '' (Wg : Set Z')ᶜ ∪ j.base '' (O : Set Z)ᶜ ∪
    (c ≫ j).base '' (U₁ : Set Z₁)ᶜ
  have hBad : IsClosed Bad :=
    ((ψ.isClosedMap _ Wg.isOpen.isClosed_compl).union
      (j.isClosedMap _ O.isOpen.isClosed_compl)).union
      ((c ≫ j).isClosedMap _ U₁.isOpen.isClosed_compl)
  obtain ⟨W, hWdef⟩ : ∃ W : X.Opens, (W : Set X) = Badᶜ := ⟨⟨Badᶜ, hBad.isOpen_compl⟩, rfl⟩
  have hcjinj : Function.Injective (c ≫ j).base := (c ≫ j).isClosedEmbedding.injective
  have hjinj : Function.Injective j.base := j.isClosedEmbedding.injective
  have hψy : ψ.base y = (c ≫ j).base (π.base y) := rfl
  have hyWg : y ∈ Wg := ⟨hyW', by
    change π.base y ∈ U₁ ⊓ c ⁻¹ᵁ O
    rw [hyz]
    exact ⟨hzU, hzO⟩⟩
  have hxW : ψ.base y ∈ W := by
    change ψ.base y ∈ (W : Set X)
    rw [hWdef]
    rintro ((⟨y', hy', hyy'⟩ | ⟨o, ho, hoy⟩) | ⟨z', hz', hzy⟩)
    · have h1 : π.base y' = π.base y := hcjinj hyy'
      have hy'U : y' ∈ π ⁻¹ᵁ U₁ := by
        change π.base y' ∈ U₁
        rw [h1, hyz]
        exact hzU
      exact hy' (injOn_of_isIso_morphismRestrict π hy'U hyU h1 ▸ hyWg)
    · have h1 : o = c.base (π.base y) := hjinj hoy
      apply ho
      rw [h1, hyz]
      exact hzO
    · have h1 : z' = π.base y := hcjinj hzy
      apply hz'
      rw [h1, hyz]
      exact hzU
  have hψW : ψ ⁻¹ᵁ W ≤ Wg := fun y' hy' => by
    have hy' : ψ.base y' ∈ (W : Set X) := hy'
    rw [hWdef] at hy'
    by_contra h
    exact hy' (Or.inl (Or.inl ⟨y', h, rfl⟩))
  have hjW : j ⁻¹ᵁ W ≤ O := fun z' hz' => by
    have hz' : j.base z' ∈ (W : Set X) := hz'
    rw [hWdef] at hz'
    by_contra h
    exact hz' (Or.inl (Or.inr ⟨z', h, rfl⟩))
  have hcjW : (c ≫ j) ⁻¹ᵁ W ≤ U₁ := fun z' hz' => by
    have hz' : (c ≫ j).base z' ∈ (W : Set X) := hz'
    rw [hWdef] at hz'
    by_contra h
    exact hz' (Or.inr ⟨z', h, rfl⟩)

  have hπW : IsIso (π ∣_ ((c ≫ j) ⁻¹ᵁ W)) := isIso_morphismRestrict_of_le π hcjW
  have : IsClosedImmersion (ψ ∣_ W) := by
    have h1 : IsClosedImmersion (π ∣_ ((c ≫ j) ⁻¹ᵁ W)) :=
      @isClosedImmersion_of_isIso' _ _ _ hπW
    have h2 : IsClosedImmersion ((c ≫ j) ∣_ W) := inferInstance
    rw [show ψ = π ≫ (c ≫ j) from rfl, morphismRestrict_comp]
    exact @IsClosedImmersion.comp _ _ _ _ _ h1 h2

  have hkill : ∀ V : X.Opens, IsAffineOpen V → V ≤ W → ∀ a : Γ(X, V), ψ.app V a = 0 →
      ∀ m : Γ(F, V), a • m = 0 := by
    intro V _ hVW a ha m
    have hVc : (c ≫ j) ⁻¹ᵁ V ≤ U₁ := (Scheme.Hom.preimage_mono _ hVW).trans hcjW
    have hVj : j ⁻¹ᵁ V ≤ O := (Scheme.Hom.preimage_mono _ hVW).trans hjW
    have hπinj := (bijective_app_of_isIso_morphismRestrict π hVc).1
    have hcinj := (bijective_app_of_isIso_morphismRestrict c hVj).1
    have hja : j.app V a = 0 := by
      apply hcinj
      apply hπinj
      calc _ = (ψ.app V) a := rfl
        _ = 0 := ha
        _ = _ := by rw [map_zero]; exact (map_zero _).symm
    obtain ⟨m', rfl⟩ : ∃ m', e.hom.app V m' = m :=
      ⟨e.inv.app V m, by rw [← ConcreteCategory.comp_apply, ← Scheme.Modules.Hom.comp_app,
        e.inv_hom_id, Scheme.Modules.Hom.id_app, ConcreteCategory.id_apply]⟩
    have h0 : a • m' = 0 := by
      rw [smul_pushforward, hja, zero_smul]
      rfl
    rw [← Scheme.Modules.Hom.app_smul, h0, map_zero]
  have hunit := bijective_unit_app_of_le ψ F W hkill
  have hmul := bijective_mulSection_app G' L s hbasis
  have hα : ∀ V : X.Opens, V ≤ W → Function.Bijective (α.app V) := fun V hV =>
    (hmul (ψ ⁻¹ᵁ V) ((Scheme.Hom.preimage_mono _ hV).trans (hψW.trans inf_le_left))).comp
      (hunit V hV)

  obtain ⟨hΦcoh, hΦiso⟩ := hn₀ n (le_max_left _ _)
  have hΦ : FiniteH.{u} A Φ := fun p => by
    obtain ⟨e'⟩ := hΦiso p
    have := ProjScheme.finite_H.{u} i (ProjScheme.twist i G' n)
      (isCoherent_tensor_of_invertible hG' hL) p
    exact Module.Finite.equiv e'

  have hxT : ψ.base y ∈ T := by
    rw [← hST, ← Scheme.IdealSheafData.range_subschemeι]
    exact ⟨c.base (π.base y), rfl⟩
  have hT' : IsClosed (T ∩ (W : Set X)ᶜ) := hT.inter W.isOpen.isClosed_compl
  have hT'T : T ∩ (W : Set X)ᶜ ⊂ T :=
    ⟨Set.inter_subset_left, fun h => (h hxT).2 hxW⟩
  have hK : FiniteH.{u} A (kernel α) :=
    have := hΦcoh.1
    IH _ hT' hT'T (kernel α) (isCoherent_kernel α hF)
      ((hFT.of_mono (kernel.ι α)).inter (kernel_supportedIn α W hα) hT W.isOpen.isClosed_compl)
  have hΦT : Scheme.Modules.SupportedIn Φ T := by
    refine ((Scheme.Modules.SupportedIn.univ _).pushforward ψ).mono ?_
    rintro _ ⟨y', -, rfl⟩
    rw [← hST, ← Scheme.IdealSheafData.range_subschemeι]
    exact ⟨c.base (π.base y'), rfl⟩
  have hC : FiniteH.{u} A (cokernel α) :=
    IH _ hT' hT'T (cokernel α) (isCoherent_cokernel α hΦcoh)
      ((hΦT.of_epi (cokernel.π α)).inter (cokernel_supportedIn α W hα) hT
        W.isOpen.isClosed_compl)
  exact FiniteH.of_shortExact₂ (kerCoimSC_shortExact α) hK
    (FiniteH.of_shortExact₁ (coimCokSC_shortExact α) hΦ hC)

theorem finiteH_of_supportedIn
    (X : Scheme.{u}) [X.Over (Spec (.of A))] [IsProper (X ↘ Spec (.of A))] (T : Closeds X) :
    ∀ F : X.Modules, IsCoherent F → Scheme.Modules.SupportedIn F T → FiniteH.{u} A F := by
  have : IsLocallyNoetherian X := LocallyOfFiniteType.isLocallyNoetherian (X ↘ Spec (.of A))
  have : CompactSpace X := QuasiCompact.compactSpace_of_compactSpace (X ↘ Spec (.of A))
  have : IsNoetherian X := ⟨⟩
  induction T using WellFoundedLT.induction with
  | _ T IH =>
    intro F hF hFT
    refine finiteH_step X T T.isClosed (fun T' hT' hlt F' hF' hF'T' => ?_) F hF hFT
    exact IH ⟨T', hT'⟩ hlt F' hF' hF'T'

end

end GroundTheory.Arith.SchemeCoh
end -- clump:auto
end -- clump:auto
-- ===== end clump member: GroundTheory.ArithmeticGeometry.SchemeCohomology.ProperCohomology.FinitenessStep =====
