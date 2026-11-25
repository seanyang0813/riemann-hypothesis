module

public import Development.AbelianVarietyTheory.Definitions.Jets.ColValMonomial
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.GlobalFnsHolds
public import Development.AbelianVarietyTheory.Proofs.FormalGroupCharts.RosIdSt
public import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.RigidifiedIsoRespectsCubeAndSymmetry
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.Tactic.Echelon.Zsqrtd
import Mathlib.Tactic.Inclusion.Extension.Core.Core
import Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp
import Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic
import Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.NormNum.Irrational
import Mathlib.Tactic.NormNum.IsCoprime
import Mathlib.Tactic.NormNum.IsSquare
import Mathlib.Tactic.NormNum.LegendreSymbol
import Mathlib.Tactic.NormNum.ModEq
import Mathlib.Tactic.NormNum.NatFib
import Mathlib.Tactic.NormNum.NatLog
import Mathlib.Tactic.NormNum.NatSqrt
import Mathlib.Tactic.NormNum.Ordinal
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.FirstCohomology.PhiPowSt

@[expose] public section

noncomputable section
open CategoryTheory CategoryTheory.Limits AlgebraicGeometry MonoidalCategory CartesianMonoidalCategory MonObj IsLocalRing NumberField
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.DVR ReciprocityTheory.ChartRestriction.G.Geo.Tor ReciprocityTheory.ChartRestriction.G.H1
open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ (PS FB ev Dof)
open ReciprocityTheory.ChartRestriction.G.TB (colM dAct)
attribute [local instance] Over.cartesianMonoidalCategory
namespace GlobalTheory.FamGerm

section Inhabitant

theorem surjective_appTop_sq_cube {R : Type} [CommRing R] [IsDomain R] {I : Ideal R} {D : DegData R I}
    {A : PolAV (Spec (CommRingCat.of (FractionRing R)))} {G : Over (Spec (CommRingCat.of R))} [GrpObj G]
    [IsCommMonObj G] (U : UnifPre I D A G) :
    Function.Surjective (G ⊗ G).hom.appTop.hom ∧ Function.Surjective (G ⊗ G ⊗ G).hom.appTop.hom := by
  have hG := GlobalTheory.globalFns_holds
  have := U.smooth
  have : IsDominant (jK R) := ⟨(PrimeSpectrum.denseRange_comap_iff_ker_le_nilRadical _).2
    (((RingHom.injective_iff_ker_eq_bot _).1 (IsFractionRing.injective R (FractionRing R))).le.trans bot_le)⟩
  have := IsSchemeTheoreticallyDominant.of_isDominant (jK R)
  have hg : IsPullback (U.gen.inv.left ≫ pullback.fst G.hom (jK R)) A.A.hom G.hom (jK R) := by
    have : IsIso U.gen.inv.left := inferInstanceAs (IsIso ((Over.forget _).map U.gen.inv))
    have s : IsPullback U.gen.inv.left A.A.hom (pullback.snd G.hom (jK R)) (𝟙 _) :=
      IsPullback.of_horiz_isIso ⟨(Over.w U.gen.inv).trans (Category.comp_id _).symm⟩
    simpa using s.paste_horiz (IsPullback.of_hasPullback G.hom (jK R))
  have s₁ : Function.Surjective G.hom.appTop.hom :=
    RigidIsoCube.surjective_appTop_of_baseChange hg (eSec G) (Over.w η[G]) (hG _ _ A.isAb).2
  have : Flat (G ⊗ G).hom := by rw [Over.tensorObj_hom]; infer_instance
  have s₂ := surj_comp (RigidIsoCube.surjective_snd_of_generic hG (jK R) G A.isAb hg G) s₁
  rw [Over.w (snd G G)] at s₂
  have s₃ := surj_comp (RigidIsoCube.surjective_snd_of_generic hG (jK R) G A.isAb hg (G ⊗ G)) s₂
  rw [Over.w (snd G (G ⊗ G))] at s₃
  exact ⟨s₂, s₃⟩

variable {E : Type} [Field E] [NumberField E] [IsCMField E] {H : Host E} {V : Type} [CommRing V] [IsDomain V]
  [IsDiscreteValuationRing V] {F : Type} [Field F] [Algebra (FractionRing V) F] (y : Pt1 E H V F)

theorem Pt1.exists_frameSer : ∃ r : PS V 1 y.d, JetSer.IsSer1 y.x _ (y.ρ.s (fun _ => y.j)).val r := by
  refine ((JetRoad.jetRoad.2.2.2.2.2.2.1 V y.t.G y.d y.x y.hx).1 _ ?_ _).exists
  have := y.t.act.hom H.w0
  intro z hz
  have hj := y.hj hz
  refine Set.mem_iInter.2 fun i => ?_
  have key : ∀ i, η[y.t.G].left ≫ JetSer.primφ (y.t.act.act H.w0) i = η[y.t.G].left := by
    intro i
    fin_cases i
    · exact Category.comp_id _
    · show η[y.t.G].left ≫ (𝟙 y.t.G * y.t.act.act H.w0 : y.t.G ⟶ y.t.G).left = _
      rw [← Over.comp_left, MonObj.comp_mul, Category.comp_id, IsMonHom.one_hom]
      have e : η[y.t.G] = (1 : 𝟙_ _ ⟶ y.t.G) := by simp [Hom.one_def]
      rw [e, _root_.mul_one]
    · exact Category.comp_id _
    · show η[y.t.G].left ≫ (y.t.act.act H.w0).left = _
      rw [← Over.comp_left, IsMonHom.one_hom]
    · show η[y.t.G].left ≫ (1 : y.t.G ⟶ y.t.G).left = _
      rw [← Over.comp_left, MonObj.comp_one]
      simp [Hom.one_def]
  have : (η[y.t.G].left ≫ JetSer.primφ (y.t.act.act H.w0) i) z ∈ y.P.U.LG.L.U y.j := by rw [key]; exact hj
  exact this

end Inhabitant

end GlobalTheory.FamGerm
