module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ThetaReadingWithoutEta
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MapSeqIndAll
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftMatrixComputesLiftRational
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ClosureImageSpan
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsThetaPToLiftReal
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.MultiplicitySpaceEqZeroOfLowestKTypes
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RankWeightComponentEq
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaAdjointAtLiftEqLowestKTypeRestrictionStatement
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.ExistsProvisionalDivX
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.NonemptyRingHomComplexOfLeContinuum
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.PointGlobalSectionsNeBot
public import Formalism.LocalRingCardinality.DataDIV
public import Formalism.LocalToGlobal.LatticeGeometry.CmTypeMeetsConjugatePair
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LatticeJwIndexEqConcreteLiftIndexStatement
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LatticeTjEqImageOfCoordinateLatticeStatement
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftLevelFormOrthogonalKilledByThetaMap
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NumbersEqConcreteNumbersAtBaseLevel
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SpanGoodEqMj
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ThetaMapHilbertModelEqConcreteThetaMapFamilyThre
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ZeroSubspaceSpannedByDataZeroSubspaceLifts
import Development.AbelianVarietyTheory.Proofs.SatakeParameters.GoodProjectorUnitaryFormsModelLaws
import Formalism.HermitianLattices.HermitianLatticesProofs.DualBasic
import Formalism.LocalToGlobal.Divisibility.LiftLatLemmas
import Formalism.LocalToGlobal.IndefiniteReal.CxLemmas
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.AuxStatement14
import Formalism.QuotientMetricDivisors.HermitianTwistDivisors.ClassSumDualGeOfFamily
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.NormNum.Prime
import Mathlib.Tactic.NormNum.RealSqrt
public import Development.AbelianVarietyTheory.Definitions.GaloisGeometry.NormalFam
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsSmoothVecLowKSub

@[expose] public section

noncomputable section

section WithoutEta

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx
open scoped TensorProduct InnerProductSpace
open Formalism.IndefR.RecTie Formalism.IndefR.Lev Formalism.L2.Rows GlobalTheory.Mem GlobalTheory.Mem.R3
attribute [local instance] Formalism.BasicNotions.Host.cmStar

namespace GlobalTheory.Mem.R3.MjCoord

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat3 D A3 Ks} {F : Face3 D A3}
  {cG : G0 R.Pg D.R.r ≃* G0g D.nd} {X0 : BaseLevelRowSide D} {Y : Read (A3 := A3) R.toRealDat F.lv2 X0}



theorem eW_jW_eq_noEta (Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (i : Fin D.R.m) (y) :
    Y.mj.eW i (Z.jW i y) = GlobalTheory.Mem.LiftTheta.goodForm R.toRealDat F.lv2 false i y :=
  (Z.jW_read i y).trans (congrArg ((R.FW i).j (sg0 D A3.A)) (Fintype.linearCombination_apply _ _ _))

theorem jW_basis_noEta (Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (hH : Holds R F) (i : Fin D.R.m) :
    LinearIndependent ℂ (fun k => Z.jW i (Pi.single k 1)) ∧
      Submodule.span ℂ (Set.range fun k => Z.jW i (Pi.single k 1)) = ⊤ := by
  have he := eW_inj Y i
  have hc : (Y.mj.eW i ∘ fun k => Z.jW i (Pi.single k 1)) = fun k =>
      GlobalTheory.Mem.LiftTheta.goodForm R.toRealDat F.lv2 false i (Pi.single k 1) :=
    funext fun k => eW_jW_eq_noEta Z i _
  refine ⟨LinearIndependent.of_comp (Y.mj.eW i) ?_, ?_⟩
  · rw [hc]; exact GlobalTheory.Mem.LiftTheta.goodForm_li R.toRealDat F.lv2 hH.prim.unif false i
  · apply Submodule.map_injective_of_injective he
    rw [Submodule.map_top, Submodule.map_span, ← Set.range_comp, hc]
    exact (GlobalTheory.Mem.LiftTheta.goodForm_span R.toRealDat F.lv2 false i).trans
      ((hH.aux.levelW false i _).trans (Y.mj.eW_range i).symm)



theorem jW_lat_noEta (Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (hP : Pins R F cG) (hH : Holds R F) (i : Fin D.R.m) :
    OLatTie D.what₂.embLL (D.what₂.MjLat ((i : ℕ) + 1)) (Z.jW i) ((s0Of R F).M i) := by
  have he := eW_inj Y i
  have hli := (jW_basis_noEta Z hH i).1
  have hej := eW_jW_eq_noEta Z i
  have hI := hH.aux.integral i
  have hspan := GlobalTheory.GoodLatDescent.span_MK_good (R.FW i) hI.1 (fun g f => (hI.2.2 g f).1)
    (chiKs hP i) F.P0 F.ψ0⁻¹ (fun g => (idemOf A3.A.X).coeff g)
    (fun p => ?_) hP.keep.levKs.2
  swap
  · obtain ⟨y, hy⟩ := hP.keep.levKs.1 p
    exact ⟨y⁻¹, by rw [map_inv₀, hy, MonoidHom.inv_apply, Units.val_inv_eq_inv_val]; rfl⟩
  have hsg : sg0 D A3.A = D.what₂.embLL := RingHom.ext fun a => by rw [sg0, sgAt_mk _ R.hv0]
  have himg : Y.mj.eW i '' (D.what₂.MjLat ((i : ℕ) + 1)).carrier =
      (R.FW i).j (sg0 D A3.A) '' {y | y ∈ (R.FW i).MK ∧ y ∈ (R.FW i).Wgood F.P0 F.ψ0⁻¹ (fun g => (idemOf A3.A.X).coeff g)} := by
    ext z
    constructor
    · rintro ⟨x, hx, rfl⟩
      obtain ⟨y, hy1, hy2, e⟩ := (Y.mj.eW_lat i x).1 hx
      exact ⟨y, ⟨hy1, hy2⟩, e.symm⟩
    · rintro ⟨y, ⟨hy1, hy2⟩, rfl⟩
      have hyM : y ∈ (R.FW i).Mj F.P0 F.ψ0⁻¹ (fun g => (idemOf A3.A.X).coeff g) := by
        rw [← hspan]; exact Submodule.subset_span ⟨hy1, hy2⟩
      obtain ⟨c, -, hcy⟩ := (GlobalTheory.Mem.LiftTheta.mem_image_iff R.toRealDat F.lv2 false i _).1 ⟨y, hyM, rfl⟩
      exact ⟨Z.jW i c, (Y.mj.eW_lat i _).2 ⟨y, hy1, hy2, (hej c).trans hcy⟩, (hej c).trans hcy⟩
  refine GlobalTheory.Mem.LiftTheta.oLatTie_of_closure (fun a => ⟨⟨D.what₂.OtoLL a, D.O_int a⟩, rfl⟩) _ (Y.mj.eW i) he (Z.jW i)
    (GlobalTheory.Mem.LiftTheta.semi_injective _ hli) _
    ((R.FW i).j (sg0 D A3.A) '' ((R.FW i).Mj F.P0 F.ψ0⁻¹ (fun g => (idemOf A3.A.X).coeff g) : Set _)) (fun y => ?_) ?_
  · refine (GlobalTheory.Mem.LiftTheta.mem_image_iff R.toRealDat F.lv2 false i y).trans ?_
    exact ⟨fun ⟨x, hx, h⟩ => ⟨x, hx, (hej x).trans h⟩, fun ⟨x, hx, h⟩ => ⟨x, hx, (hej x).symm.trans h⟩⟩
  · rw [himg, ← hspan]
    exact closure_image_span (σ := D.what₂.embLL) ((R.FW i).j (sg0 D A3.A)).toAddMonoidHom
      (fun b x => by
        rw [← hsg]
        show (R.FW i).j _ (b • x) = _
        rw [← algebraMap_smul D.what₂.LL b x, map_smulₛₗ]
        rfl) _



end GlobalTheory.Mem.R3.MjCoord

namespace GlobalTheory.Mem.R3

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat3 D A3 Ks} {F : Face3 D A3}
  {cG : G0 R.Pg D.R.r ≃* G0g D.nd} {X0 : BaseLevelRowSide D} {Y : Read (A3 := A3) R.toRealDat F.lv2 X0}

open MjCoord

def mjH_noEta (_Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (j : ℕ) : HLat D.what₂.LL := mjLat R F j

def jM_noEta (Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (j : ℕ) : (mjH_noEta Z j).V →ₛₗ[D.what₂.embLL] D.what₂.Mj j :=
  mapSeq (m := D.R.m) (d := fun i => (s0Of R F).dW i) (fun i => (s0Of R F).M i) (fun i => (s0Of R F).XW i) D.what₂.Mj Z.jW j

variable (Z : Rw.RationalReadingWithoutCongruence R F X0 Y)

theorem mjH_succ_noEta (i : Fin D.R.m) : mjH_noEta Z ((i : ℕ) + 1) = HLat.ofCoord ((s0Of R F).M i) ((s0Of R F).XW i) :=
  latSeq_succ _ _ _ i

theorem mjH_good_noEta (hH : Holds R F) (j : ℕ) : (mjH_noEta Z j).Good :=
  mapSeq_ind_all _ _ D.what₂.Mj Z.jW (fun _ A _ => A.Good)
    (fun i => by
      exact ofCoord_good (L := (s0Of R F).M i) (hH.prim.mLat i) fun v =>
        frame_gram_unit _ (RealDat3.kForm_of (F := F) hH.prim.unif false i v).1)
    (fun _ => unitLat_good _) j

theorem jM_basis_noEta (hH : Holds R F) (j : ℕ) : LinearIndependent ℂ (fun k => jM_noEta Z j ((mjH_noEta Z j).b k)) ∧
    Submodule.span ℂ (Set.range fun k => jM_noEta Z j ((mjH_noEta Z j).b k)) = ⊤ :=
  mapSeq_ind_all _ _ D.what₂.Mj Z.jW
    (fun _ A g => LinearIndependent ℂ (fun k => g (A.b k)) ∧ Submodule.span ℂ (Set.range fun k => g (A.b k)) = ⊤)
    (fun i => by
      have h : (fun k => Z.jW i ((HLat.ofCoord ((s0Of R F).M i) ((s0Of R F).XW i)).b k)) = fun k => Z.jW i (Pi.single k 1) :=
        funext fun k => congrArg (Z.jW i) (Pi.basisFun_apply _ _ k)
      exact h ▸ jW_basis_noEta Z hH i)
    (fun _ => unitMap_basis _ _) j

theorem jM_lat_noEta (hP : Pins R F cG) (hH : Holds R F) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) (x : (mjH_noEta Z j).V) :
    x ∈ (mjH_noEta Z j).L ↔ ∃ c : D.what₂.Mj j → 𝓞 D.what₂.LL,
      jM_noEta Z j x = ∑ v ∈ (D.what₂.MjLat j).gen, D.what₂.embLL ((c v : 𝓞 D.what₂.LL) : D.what₂.LL) • v :=
  mapSeq_ind _ _ D.what₂.Mj Z.jW
    (fun j A g => ∀ x : A.V, x ∈ A.L ↔ ∃ c : D.what₂.Mj j → 𝓞 D.what₂.LL,
      g x = ∑ v ∈ (D.what₂.MjLat j).gen, D.what₂.embLL ((c v : 𝓞 D.what₂.LL) : D.what₂.LL) • v)
    (fun i => (jW_lat_noEta Z hP hH i).2) j h1 h2 x

theorem mjLat_sub_noEta (hP : Pins R F cG) (hH : Holds R F) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) :
    ∀ x ∈ (D.what₂.MjLat j).gen, x ∈ Set.range (jM_noEta Z j) :=
  mapSeq_ind _ _ D.what₂.Mj Z.jW (fun j _ g => ∀ x ∈ (D.what₂.MjLat j).gen, x ∈ Set.range g)
    (fun i => (jW_lat_noEta Z hP hH i).1) j h1 h2

def mjIds_noEta (Xd : DivX D) (h : Xd.MjH = mjH_noEta Z) : MjHIds D A3.A Xd (A3.indefDown (s0Of R F)) where
  eW i := castV ((mjH_succ_noEta Z i).symm.trans (congrFun h _).symm)

theorem mjHTie_of_eq_noEta (Xd : DivX D) (h : Xd.MjH = mjH_noEta Z) (hj : HEq Xd.jM (jM_noEta Z)) :
    MjHTie D A3.A Xd (A3.indefDown (s0Of R F)) Z.jW (mjIds_noEta Z Xd h) := by
  constructor
  · intro i x
    exact map_castV _ _ D.what₂.Mj Z.jW h hj i _ x
  · intro i
    exact hLatTie_castV ((mjH_succ_noEta Z i).symm.trans (congrFun h _).symm)

end GlobalTheory.Mem.R3

namespace GlobalTheory.Mem.ThRead



theorem eW_jW_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ i : Fin D.R.m, ∀ y, Y.mj.eW i (Z.jW i y) = GlobalTheory.Mem.LiftTheta.goodForm R.toRealDat F.lv2 false i y := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z _ _ i y
  exact (Z.jW_read i y).trans (congrArg ((R.FW i).j (sg0 D A3.A)) (Fintype.linearCombination_apply _ _ _))

theorem eW_injective_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ i : Fin D.R.m, Function.Injective (Y.mj.eW i) := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z _ _ i
  exact GlobalTheory.Mem.LiftForms.inj_of_norm_sq _ (RealDat.nP_pos (F := F.lv2) false) (Y.mj.eW_norm i)

theorem li_span_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ i : Fin D.R.m, LinearIndependent ℂ (fun k => Z.jW i (Pi.single k 1)) ∧
    Submodule.span ℂ (Set.range fun k => Z.jW i (Pi.single k 1)) = ⊤ := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z hP hH i
  have he := eW_injective_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i
  have hc : (Y.mj.eW i ∘ fun k => Z.jW i (Pi.single k 1)) = fun k =>
      GlobalTheory.Mem.LiftTheta.goodForm R.toRealDat F.lv2 false i (Pi.single k 1) :=
    funext fun k => eW_jW_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i _
  refine ⟨LinearIndependent.of_comp (Y.mj.eW i) ?_, ?_⟩
  · rw [hc]; exact GlobalTheory.Mem.LiftTheta.goodForm_li R.toRealDat F.lv2 hH.prim.unif false i
  · apply Submodule.map_injective_of_injective he
    rw [Submodule.map_top, Submodule.map_span, ← Set.range_comp, hc]
    exact (GlobalTheory.Mem.LiftTheta.goodForm_span R.toRealDat F.lv2 false i).trans
      ((hH.aux.levelW false i _).trans (Y.mj.eW_range i).symm)



theorem theta_of_noEta (T1 : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ (i : Fin D.R.m) (t : T) x, Y.mj.eW i (D.what₂.thetaP (Y.tup t) ((i : ℕ) + 1) (D.what₂.jMt (Y.tup t) ((i : ℕ) + 1) (Y.eMt i t x))) = R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x))) (T2 : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ (i : Fin D.R.m) (t : T) (x : Fin (lDim D A3.A F.P0 F.ψ0 i t) → D.what₂.LL), (∀ z, Formalism.DivisionValues.hform (lH D A3.A F.P0 F.ψ0 i t) (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ z) x = 0) → R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x)) = 0) : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F →  ∀ (i : Fin D.R.m) (t : T) x,
    D.what₂.thetaP (Y.tup t) ((i : ℕ) + 1) (D.what₂.jMt (Y.tup t) ((i : ℕ) + 1) (Y.eMt i t x)) =
      Z.jW i (((A3.indefDown (s0Of R F)).θ i t).mulVec ((lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t).mulVec x)) := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z hP hH i t x
  change Fin (lDim D A3.A F.P0 F.ψ0 i t) → D.what₂.LL at x
  have hR := complex_data_conditions_base_level_of_primitive_links hH.ok hH.sep hP.char hH.prim
  have h5 := hR.lifts0.1
  have hr := hR.ratTh
  have hOk := hH.ok.ok2
  apply eW_injective_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i
  refine (T1 D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i t x).trans ?_
  refine Eq.trans ?_ (eW_jW_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i _).symm
  have hp : Formalism.DivisionValues.IsOrthProj (lH D A3.A F.P0 F.ψ0 i t) (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t)
      (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t) := BlockDat.lf_l_proj ⟨hOk.conj, hOk.irr, hOk.lifts i t⟩
  have hsub : ∀ a b, liftForm A3.A F.P0 F.ψ0 i t (a - b) = liftForm A3.A F.P0 F.ψ0 i t a - liftForm A3.A F.P0 F.ψ0 i t b :=
    fun a b => by unfold liftForm; rw [Matrix.mulVec_sub, map_sub]
  have h1 : R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t x)) = R.thG i t (R.jV i t (liftForm A3.A F.P0 F.ψ0 i t
      (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x)))) := by
    have h := T2 D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i t
      (x - lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x)) (fun z => by rw [map_sub, GlobalTheory.Mem.LiftForms.hform_orth hp, sub_self])
    rwa [hsub, map_sub, map_sub, sub_eq_zero] at h
  rw [h1]
  have h2 := GlobalTheory.Mem.LiftTheta.liftMatrix_computes_lift_rational (R.toCx3 F) F.cr false h5 hr i t
    (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x)
  have h3 := GlobalTheory.Mem.LiftTheta.levelFormCoordinateMap_levelZero F.lv2 hOk (A3.fam3.toSub2 (zsOf R F)) i t
    (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x)
  have h4 := GlobalTheory.Mem.LiftTheta.liftWeight_complexPoint_eq_twist R.toRealDat F.lv2 false i
    ((R.toCx3 F).liftMat F.cr false i t *ᵥ (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x))
  have key := h4.symm.trans (h2.trans (by
    show R.phs i • Tw.map _ (R.thG i t) (Tw.semi _ R.toRealDat.emb0 (R.jV i t) _) = _
    have h3' : F.cr.toL (R.toCx3 F).zs false i t (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x) =
        LiftForms.lvlForm (A3.A.fam.L i t).S (A3.A.fam.L i t).r (A3.A.fam.lvlA F.P0 F.ψ0).P (A3.A.fam.lvlA F.P0 F.ψ0).ψ
          (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x)) :=
      h3.symm
    rw [hP.phs i, one_smul, h3']
    rfl))
  exact (congrArg Tw.out key).symm

end GlobalTheory.Mem.ThRead

namespace GlobalTheory.Mem.R3.DivisionRationalLift

theorem rationalReadingNoCongruence_thetaComplement_spanned : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y), Pins R F cG → Holds R F → ∀ (i : Fin D.R.m) (t : T), Formalism.BasicNotions.Idx.Z0 D (Y.tup t) ((i : ℕ) + 1) = Submodule.span ℂ (Set.range fun k => (D.what₂.jMt (Y.tup t) ((i : ℕ) + 1)) (Y.eMt i t ((lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t).mulVec (Pi.single k 1)))) := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z hP hH i t
  have hR := complex_data_conditions_base_level_of_primitive_links hH.ok hH.sep hP.char hH.prim
  have hb : Function.Bijective ((A3.indefDown (s0Of R F)).θ i t).mulVec :=
    CxData.liftMat_bij (R.toCx3 F) F.cr false hR.kForm hR.ewNorm (hR.h4pos.2.2 false) hR.lifts0.1 hR.ratTh i t
  have hB : BlockHyp (A3.A.fam.L i t) (A3.A.fam.lvlA F.P0 F.ψ0) A3.A.v0 1 :=
    ⟨hH.ok.ok2.conj, hH.ok.ok2.irr, hH.ok.ok2.lifts i t⟩
  have hp : Formalism.DivisionValues.IsOrthProj (lH D A3.A F.P0 F.ψ0 i t) (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t)
      (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t) := BlockDat.lf_l_proj hB
  have he : ∀ z, lE D A3.A F.P0 F.ψ0 i t *ᵥ (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ z) =
      lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ z := fun z => GlobalTheory.Mem.LiftForms.lvlOp_lE hB z
  have hθ := GlobalTheory.Mem.ThRead.theta_of_noEta GlobalTheory.Mem.ThetaRead3.thetaP_read_noEta GlobalTheory.Mem.ThOrth.thG_eq_zero_of_orth_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH
  have hf := Y.formsL i t
  exact orth_ker_inf_range ((D.what₂.jMt (Y.tup t) ((i : ℕ) + 1)).comp (Y.eMt i t).toLinearMap) hf.span
    (lH D A3.A F.P0 F.ψ0 i t) hf.inner (D.what₂.eMt (Y.tup t) ((i : ℕ) + 1)) (lE D A3.A F.P0 F.ψ0 i t) hf.op_eq
    _ _ hp he (Z.jW i) (GlobalTheory.Mem.ThRead.li_span_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH i).1 _ hb.1 (D.what₂.thetaP (Y.tup t) ((i : ℕ) + 1)) (hθ i t)

end GlobalTheory.Mem.R3.DivisionRationalLift

namespace GlobalTheory.Mem.ReadIndexNumerics



theorem ij_jw_of_read_noEta : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0) (Z : Rw.RationalReadingWithoutCongruence R F X0 Y) (Xd : DivX D) (JM : MjHIds D A3.A Xd (A3.indefDown (s0Of R F))), Pins R F cG → Holds R F → MjHTie D A3.A Xd (A3.indefDown (s0Of R F)) Z.jW JM → IdxDefs D Xd →
    (∀ (i : Fin D.R.m) t w, D.what₂.Ij (Y.tup t) ((i : ℕ) + 1) w = (A3.indefDown (s0Of R F)).Iw i t (D.plEq w)) ∧
    (∀ (i : Fin D.R.m) t w, D.what₂.jw (Y.tup t) ((i : ℕ) + 1) w =
      Formalism.DivisionValues.jw ((A3.A.side F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F))).HT i t) (D.plEq w) ((A3.A.side F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F))).Tl i t)) := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y Z Xd JM hP hH hM hI
  have hθ := GlobalTheory.Mem.ThRead.theta_of_noEta GlobalTheory.Mem.ThetaRead3.thetaP_read_noEta GlobalTheory.Mem.ThOrth.thG_eq_zero_of_orth_noEta D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH
  have hZ0 := GlobalTheory.Mem.R3.DivisionRationalLift.rationalReadingNoCongruence_thetaComplement_spanned D G Pl0 I0 T A3 Ks R F cG X0 Y Z hP hH
  have hok := hH.ok.ok2
  have hB : ∀ i t, BlockHyp (A3.A.fam.L i t) (A3.A.fam.lvlA F.P0 F.ψ0) A3.A.fam.v0 1 :=
    fun i t => ⟨hok.conj, hok.irr, hok.lifts i t⟩
  have hOP : ∀ i t, Formalism.DivisionValues.IsOrthProj (lH D A3.A F.P0 F.ψ0 i t) (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t)
      (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t) :=
    fun i t => BlockDat.lf_l_proj (Z := (A3.fam3.toSub2 (zsOf R F)).Zl i t) (hB i t)
  have hT := fun i t => GlobalTheory.T.lattice_Tj_eq_image_of_coordinate_lattice D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) Y.tup Y.eMt i t (hOP i t) (Y.formsL i t) (Y.latL i t)
    (hZ0 i t) (fun x => by
      have e : ∀ v, lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ v) = v :=
        fun v => by rw [Matrix.mulVec_mulVec]; erw [(hOP i t).1]; exact Matrix.one_mulVec v
      have h2 := hθ i t (lZ0 D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ (lPrj D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) i t *ᵥ x))
      erw [e] at h2
      exact (hθ i t x).trans h2.symm)
  refine ⟨fun i t w => ?_, fun i t w => ?_⟩
  · rw [hI.Ij_def _ _ _ (by omega) (by omega)]
    exact ijIdx_eq D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) Y.tup Y.eMt (A3.indefDown (s0Of R F)) Xd Z.jW i t (JM.eW i)
      (hOP i t) (hθ i t) (hM.j_eq i) (hM.hlat i).lat (hT i t) w
  · rw [hI.jw_def _ _ _ (by omega) (by omega)]
    refine GlobalTheory.T.lattice_jw_index_eq_concrete_lift_index D A3.A F.P0 F.ψ0 (A3.fam3.toSub2 (zsOf R F)) Y.tup Y.eMt i t (hOP i t) (Y.formsL i t)
      (BlockDat.lf_lE_form (hB i t)) ?_ (hT i t) w
    classical
    let K := D.what₂.LL
    let B := A3.A.fam.L i t
    let S := B.S
    let ℓ := A3.A.fam.lvlA F.P0 F.ψ0
    let Zl := (A3.fam3.toSub2 (zsOf R F)).Zl i t
    have hGood := (hB i t).ok.good
    change Submodule.span K (↑(B.Tl ℓ Zl) : Set (Fin (B.dZ ℓ Zl) → K)) = ⊤
    apply top_unique
    intro z _
    let x := (B.fE ℓ Zl).mulVec z
    have hdenom (c : S.Cl) : ∃ d : 𝓞 K, d ≠ 0 ∧ d • S.I x c ∈ S.Nab c := by
      obtain ⟨g, hg⟩ := (hGood.nab_lat c).fg
      obtain ⟨d, hd⟩ := IsLocalization.exist_integer_multiples (nonZeroDivisors (𝓞 K)) g
        (fun y => S.pair y (S.I x c))
      refine ⟨d, nonZeroDivisors.coe_ne_zero d, ?_⟩
      have hdual : (d : 𝓞 K) • S.I x c ∈ Formalism.HermitianLatticesTheory.dual S.pair (S.Nab c) := by
        rw [Formalism.HermitianLatticesTheory.dualBasic_mem_dual]
        intro y hy
        refine Submodule.span_induction
          (p := fun y _ => S.pair y ((d : 𝓞 K) • S.I x c) ∈ (1 : Submodule (𝓞 K) K))
          ?_ ?_ ?_ ?_ (hg.symm ▸ hy)
        · intro y hy
          rw [LinearMap.map_smul_of_tower, Submodule.mem_one]
          exact hd y hy
        · simp
        · intro y y' _ _ hy hy'
          rw [map_add, LinearMap.add_apply]
          exact add_mem hy hy'
        · intro a y _ hy
          obtain ⟨a', ha'⟩ := Formalism.DivisionValues.exponent_index_lattice.hstar (K := K) a
          rw [← algebraMap_smul K a y, LinearMap.map_smulₛₗ, LinearMap.smul_apply]
          change star (algebraMap (𝓞 K) K a) • _ ∈ (1 : Submodule (𝓞 K) K)
          rw [← ha', algebraMap_smul]
          exact Submodule.smul_mem _ _ hy
      exact hGood.del_le c (by simpa using hGood.dual_le c _ hdual)
    choose d hd0 hd using hdenom
    let a := ∏ c, d c
    have ha : a ≠ 0 := Finset.prod_ne_zero_iff.mpr fun c _ => hd0 c
    have hax : a • x ∈ S.nabLat := by
      apply (Formalism.DivisionValues.ValuationLatticeField.mem_valLatF S.I S.Nab _).2
      intro c
      rw [LinearMap.map_smul_of_tower, Pi.smul_apply]
      obtain ⟨b, hb⟩ := Finset.dvd_prod_of_mem d (Finset.mem_univ c)
      rw [show a = d c * b from hb, mul_comm, mul_smul]
      exact (S.Nab c).smul_mem b (hd c)
    have haz : a • z ∈ B.Tl ℓ Zl := by
      apply BlockDat.lf_cutZ_le (hB i t)
      change (B.fE ℓ Zl).mulVec (a • z) ∈ S.nabLat
      rwa [Matrix.mulVec_smul]
    have haK : (a : K) ≠ 0 := RingOfIntegers.coe_ne_zero_iff.mpr ha
    have hmem : (a : K) • z ∈ Submodule.span K (↑(B.Tl ℓ Zl) : Set _) := by
      rw [algebraMap_smul K a z]
      exact Submodule.subset_span haz
    exact inv_smul_smul₀ haK z ▸ (Submodule.span K _).smul_mem (a : K)⁻¹ hmem

end GlobalTheory.Mem.ReadIndexNumerics

end WithoutEta

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr



theorem GlobalTheory.Mem.R3.Rw.St.idx_zero_off_twisted_anyEta : ∀ (K : Ctx) (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T), K.Over B.toPre → Forced K B T →
    pinAnd HasPk K B f T w → ∀ (P : Pre2 K w) (x : St P), P.Wt = x.m.z.W1 (F0K K.s (w.D x.o.Z)) → ∀ v, v ∉ P.Wt → ∀ j, 1 ≤ j → j ≤ B.R.m →
      (w.D x.o.Z).what₂.Ij (w.D x.o.Z).what₂.mu0 j v = 0 ∧ (w.D x.o.Z).what₂.jw (w.D x.o.Z).what₂.mu0 j v = 0 := by
  intro K B f T w hO hF hP P x hW v hv j hj1 hj2
  classical
  let Zr : RationalReadingWithoutCongruence x.m.z.R x.m.z.F x.s.p0 x.r.Y := x.r.Z
  obtain ⟨G, Y, -⟩ := GlobalTheory.PointGeometry.exists_geo (w.st x.o.Z).toD7.what₂.LL
  let Fm : ∀ k, GlobalTheory.ProvisionalDivX.MjForm (w.st x.o.Z).toD7 k := fun k =>
    ⟨mjH_noEta Zr k, jM_noEta Zr k, mjH_good_noEta Zr x.m.intersectionNumber_baseChange k, jM_basis_noEta Zr x.m.intersectionNumber_baseChange k, jM_lat_noEta Zr x.m.z.pins x.m.intersectionNumber_baseChange k,
      mjLat_sub_noEta Zr x.m.z.pins x.m.intersectionNumber_baseChange k⟩
  let Xd : DivX (w.st x.o.Z).toD7 := GlobalTheory.provisionalDivX (w.st x.o.Z).toD7 G Y
    (fun p _ => (GlobalTheory.WittFracComplex.nonempty_ringHom_complex p).some)
    Fm
  have hMj := mjHTie_of_eq_noEta Zr Xd rfl (HEq.refl (jM_noEta Zr))
  have hIdx : IdxDefs (w.st x.o.Z).toD7 Xd := (P.q.num x.o.η x.o.hη x.o.V x.o.S x.o.N x.o.G).idx Xd
  have hT := GlobalTheory.Mem.ReadIndexNumerics.ij_jw_of_read_noEta _ _ _ _ _ _ _ x.m.z.R x.m.z.F x.m.z.cG x.s.p0 x.r.Y Zr Xd _ x.m.z.pins x.m.intersectionNumber_baseChange hMj hIdx
  have hv' : v ∉ x.m.z.W1 (F0K K.s (w.D x.o.Z)) := hW ▸ hv
  have h0 : x.r.Y.tup (famR (w.st x.o.Z) w.I P.hX (usedOf w.I T P.Wt) x.m.z.Xg x.m.z.tr).A.μ0 = (w.D x.o.Z).what₂.mu0 := by
    rw [x.r.tup]; exact x.m.y.tup0
  have hIj := hT.1
  have hjw := hT.2
  have hv2 := fun (i : Fin (w.st x.o.Z).toD7.R.m) (w' : HeightOneSpectrum (𝓞 (w.st x.o.Z).toD7.what₂.LL))
      (hw' : w' ∈ ({(w.st x.o.Z).toD7.plEq v, Formalism.DivisionValues.conjPl ((w.st x.o.Z).toD7.plEq v)} : Set _)) =>
    not_or.1 (fun h => hv' ⟨i, w', hw', h⟩)
  have hm : (w.st x.o.Z).toD7.R.m = B.R.m := rfl
  obtain ⟨i, rfl⟩ : ∃ i : Fin (w.st x.o.Z).toD7.R.m, j = (i : ℕ) + 1 := ⟨⟨j - 1, by omega⟩, by simp; omega⟩
  rw [← h0]
  have hp : (w.st x.o.Z).toD7.plEq v ∈ ({(w.st x.o.Z).toD7.plEq v, Formalism.DivisionValues.conjPl ((w.st x.o.Z).toD7.plEq v)} : Set _) :=
    Set.mem_insert _ _
  refine ⟨?_, ?_⟩
  · exact (hIj i _ v).trans (not_not.1 (hv2 i _ hp).1)
  · exact (hjw i _ v).trans (not_not.1 (not_or.1 (hv2 i _ hp).2).1)

end
