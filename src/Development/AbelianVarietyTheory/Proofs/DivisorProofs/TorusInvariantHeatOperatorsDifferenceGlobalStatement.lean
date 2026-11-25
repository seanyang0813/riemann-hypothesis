module

import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsInvariantFieldCoefficientsOfLinearVectorFi
public import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst
public import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRaynaudTangentInvariantFields
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogDerivPolarizationRaynaudEqPullback
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TvELeft
public import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsChartOfMemRedKer
public import Development.AbelianVarietyTheory.Proofs.ToricGeometry.TangentBijectionOfValues
public import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NonemptyTorusExtensionOfIsGt
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueLieBasisCoeffsOfDerivationAffineOpen
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLieBasisDualPointsOfTangentModuleBasis
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueAtInvariantFieldTranslateSqZero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftsSubEqSumInvariantFields
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantHeatOperatorOfSymmetricRelat
import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.InvariantFunctionsDescend
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothRayQuotient
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.AlgebraicGeometry.Modules.Sheaf
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
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
import Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCoboundaryOfMixedOverlaps
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdeal
import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeG
import Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart
import Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap
import Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGlobalLocDerOfIsCob
import Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination
import Mathlib.RingTheory.PiTensorProduct
import Mathlib.Tactic.ReduceModChar
import Mathlib.CategoryTheory.Monoidal.Opposite.Mon

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudCechRelationDlogDescendsToAbelianPart, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqZeroOfLogDerivCoboundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombKillsWeightZeroOfCoboundary, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudExtensionInvariantFieldCoeffsUnique, Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudWeightZeroCompatibleFunctionsEqBaseConsta, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobal, Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobalStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudCechRelationDlogDescendsToAbelianPart =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudCechRelationDlogDescendsToAbelianPart", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.InvariantFunctionsDescend\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothRayQuotient\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.Heat.AbDescent

theorem pbT_id {X : Scheme.{0}} {U V : X.Opens} (hV : V ≤ U) (s : Γ(X, U)) : pbT (𝟙 X) s V = rsT s V := by
  rw [GlobalTheory.KS.pbT_of_le (𝟙 X) hV, GlobalTheory.KS.rsT_of_le hV]
  simp [Scheme.Hom.appLE, resG]
  rfl

theorem pbT_pbT_id {Z X : Scheme.{0}} (q : Z ⟶ X) {U V : X.Opens} (hV : V ≤ U) {W : Z.Opens} (hW : W ≤ q ⁻¹ᵁ V)
    (s : Γ(X, U)) : pbT q (pbT (𝟙 X) s V) W = pbT q s W := by
  rw [pbT_id hV, GlobalTheory.KS.pbT_rsT q hV hW]

theorem descent : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (δH : Fld Y.H.left) (δ : Fld Q.P.A.left), (∀ (U : Q.P.A.left.Opens) (s : Γ(Q.P.A.left, U)) (W : Y.H.left.Opens), W ≤ Y.q.left ⁻¹ᵁ U → δH W (pbT Y.q.left s W) = pbT Y.q.left (δ U s) W) → ∀ (K : Type) (Wk : K → Y.H.left.Opens) (jk : K → Q.P.L.ι), (∀ k, ∃ V : Q.P.A.left.Opens, Wk k = Y.q.left ⁻¹ᵁ V) → ⨆ k, Wk k = ⊤ → (∀ k, Wk k ≤ Y.q.left ⁻¹ᵁ Q.P.L.U (jk k)) → ∀ (P : ∀ k, Γ(Y.H.left, Wk k)), (∀ k, IsWt Y 0 _ (P k)) → (∀ k k' (Wo : Y.H.left.Opens), Wo ≤ Wk k ⊓ Wk k' → rsT (P k') Wo - rsT (P k) Wo = dlg Y.H Y.q.left Q.P.L δH (jk k) (jk k') Wo) → ∃ (V : K → Q.P.A.left.Opens) (b : ∀ k, Γ(Q.P.A.left, V k)), ⨆ k, V k = ⊤ ∧ (∀ k, V k ≤ Q.P.L.U (jk k)) ∧ ∀ k k', rsT (b k') (V k ⊓ V k') - rsT (b k) (V k ⊓ V k') = dlg Q.P.A (𝟙 _) Q.P.L δ (jk k) (jk k') (V k ⊓ V k') := by
  intro R _ _ Q O _ _ _ oa Y δH δ hpb K Wk jk hV hcov hle P hP hrel
  have := Y.smooth_q
  have := (AbConst.surjective_q Y).1
  choose V hV using hV
  have hb : ∀ k, ∃ b : Γ(Q.P.A.left, V k), pbT Y.q.left b (Wk k) = P k := by
    intro k
    have key : ∀ (W : Y.H.left.Opens) (hW : W = Y.q.left ⁻¹ᵁ V k) (p : Γ(Y.H.left, W)), IsWt Y 0 W p →
        ∃ b : Γ(Q.P.A.left, V k), pbT Y.q.left b W = p := by
      intro W hW p hp
      subst hW
      obtain ⟨a, ha⟩ := AbConst.exists_app_eq Y hp
      exact ⟨a, by rw [GlobalTheory.KS.pbT_of_le _ le_rfl, ← ha, Scheme.Hom.app_eq_appLE]⟩
    exact key _ (hV k) _ (hP k)
  choose b hb using hb
  have hVle : ∀ k, V k ≤ Q.P.L.U (jk k) := by
    intro k y hy
    obtain ⟨x, rfl⟩ := Y.q.left.surjective y
    have hx : x ∈ Wk k := by rw [hV k]; exact hy
    exact hle k hx
  refine ⟨V, b, ?_, hVle, ?_⟩
  · rw [eq_top_iff]
    intro y _
    obtain ⟨x, rfl⟩ := Y.q.left.surjective y
    have hx : x ∈ ⨆ k, Wk k := by rw [hcov]; trivial
    rw [TopologicalSpace.Opens.mem_iSup] at hx ⊢
    obtain ⟨k, hk⟩ := hx
    exact ⟨k, by rw [hV k] at hk; exact hk⟩
  · intro k k'
    have hWo : Y.q.left ⁻¹ᵁ (V k ⊓ V k') ≤ Wk k ⊓ Wk k' := by
      rw [hV k, hV k']
      exact fun x hx => ⟨hx.1, hx.2⟩
    have h := hrel k k' _ hWo
    apply FunDescent.app_injective Y.q.left (V k ⊓ V k')
    have e : ∀ s : Γ(Q.P.A.left, V k ⊓ V k'),
        (Y.q.left.app (V k ⊓ V k')).hom s = pbT Y.q.left s (Y.q.left ⁻¹ᵁ (V k ⊓ V k')) := fun s => by
      rw [GlobalTheory.KS.pbT_of_le _ le_rfl, Scheme.Hom.app_eq_appLE]
    rw [e, e, GlobalTheory.KS.pbT_sub, GlobalTheory.KS.pbT_rsT _ inf_le_right le_rfl, GlobalTheory.KS.pbT_rsT _ inf_le_left le_rfl]
    have hbk : ∀ j, Y.q.left ⁻¹ᵁ (V k ⊓ V k') ≤ Wk j →
        pbT Y.q.left (b j) (Y.q.left ⁻¹ᵁ (V k ⊓ V k')) = rsT (P j) (Y.q.left ⁻¹ᵁ (V k ⊓ V k')) := by
      intro j hj
      rw [← hb j, GlobalTheory.KS.rsT_pbT _ (hV j).le hj]
    rw [hbk k' (hWo.trans inf_le_right), hbk k (hWo.trans inf_le_left), h]
    have hUo : V k ⊓ V k' ≤ Q.P.L.U (jk k) ⊓ Q.P.L.U (jk k') := inf_le_inf (hVle k) (hVle k')
    unfold dlg
    rw [GlobalTheory.KS.pbT_mul, ← hpb (V k ⊓ V k') (pbT (𝟙 _) (Q.P.L.g (jk k) (jk k')).val (V k ⊓ V k')) _ le_rfl,
      pbT_pbT_id _ hUo le_rfl, pbT_pbT_id _ hUo le_rfl]

end GlobalTheory.Heat.AbDescent
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudCechRelationDlogDescendsToAbelianPart =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqZeroOfLogDerivCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqZeroOfLogDerivCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DegenerationProofs.ExistsUnitCharts\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldsCechH1Relation\nimport Development.AbelianVarietyTheory.Definitions.ModuliSpaces.IsInvDer\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsCechOneCoboundaryOfMixedOverlaps\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.LogDerivativesCoboundaryCoeffsMemMaximalIdeal\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.PullbackSections.LieBridgeG\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section
namespace GlobalTheory.LieRigid

open GlobalTheory.ZH.CrdCalc (valR_res valR_spMap valR_eq valHom)

theorem dlg_sub {A : Type} [CommRing A] (B : Over (Sp A)) [GrpObj B] [IsCommMonObj B] (L : LB B.left)
    (δ : Fld B.left) (hδ : IsField ⊤ δ) (i j : L.ι) {O T : B.left.Opens} (hO : O ≤ L.U i ⊓ L.U j) (hT : T ≤ O) :
    rsT (dlg B (𝟙 _) L δ i j O) T = rsT (dlg B (𝟙 _) L δ i j (L.U i ⊓ L.U j)) T := by
  rw [_root_.GlobalTheory.DlogBasis.dlg_res B L δ hδ i j (hT.trans hO)]
  unfold dlg
  rw [GlobalTheory.KS.rsT_of_le hT, map_mul, _root_.GlobalTheory.DlogBasis.pbT_id _ hO, _root_.GlobalTheory.DlogBasis.pbT_id _ hO, ← hδ.2.2 _ _ hT le_top,
    _root_.GlobalTheory.Cartier.resG_resG, _root_.GlobalTheory.Cartier.resG_resG]
  rfl

theorem lie_inj : ∀ (R : Type) [CommRing R] [IsLocalRing R] (P : PolAV (Sp R)) (w : TanM (𝟙 (Sp R)) P.A) (δ : Fld P.A.left), IsInv P.A w δ → ∀ (K : Type) (V : K → P.A.left.Opens) (jk : K → P.L.ι), ⨆ k, V k = ⊤ → (∀ k, V k ≤ P.L.U (jk k)) → ∀ (b : ∀ k, Γ(P.A.left, V k)), (∀ k k', rsT (b k') (V k ⊓ V k') - rsT (b k) (V k ⊓ V k') = dlg P.A (𝟙 _) P.L δ (jk k) (jk k') (V k ⊓ V k')) → w = 0 := by
  intro R _ _ P w δ hδ K V jk hV hVj b hb
  have hδ1 : IsField ⊤ δ := hδ.1
  have hcob : IsCob P.L.U (fun j j' => dlg P.A (𝟙 _) P.L δ j j' (P.L.U j ⊓ P.L.U j')) := by
    refine _root_.GlobalTheory.KS.isCob_of_mixed P.A.left P.L.ι K P.L.U V hV _
      (fun k k' => dlg P.A (𝟙 _) P.L δ (jk k) (jk k') (V k ⊓ V k'))
      (fun j k => rsT (dlg P.A (𝟙 _) P.L δ j (jk k) (P.L.U j ⊓ P.L.U (jk k))) (P.L.U j ⊓ V k))
      (fun j j' k => ?_) (fun j k k' => ?_) ⟨b, fun k k' => (hb k k').symm⟩
    · have t1 : P.L.U j ⊓ P.L.U j' ⊓ V k ≤ P.L.U j ⊓ P.L.U j' := inf_le_left
      have t2 : P.L.U j ⊓ P.L.U j' ⊓ V k ≤ P.L.U j ⊓ V k := le_inf (inf_le_left.trans inf_le_left) inf_le_right
      have t3 : P.L.U j ⊓ P.L.U j' ⊓ V k ≤ P.L.U j' ⊓ V k := le_inf (inf_le_left.trans inf_le_right) inf_le_right
      rw [GlobalTheory.KS.rsT_rsT (inf_le_inf le_rfl (hVj k)) t2, GlobalTheory.KS.rsT_rsT (inf_le_inf le_rfl (hVj k)) t3,
        ← GlobalTheory.CoverRefinementPullback.dlg_tri _ _ P.isLB δ hδ1 j j' (jk k) t1 (t3.trans (inf_le_inf le_rfl (hVj k)))
          (t2.trans (inf_le_inf le_rfl (hVj k)))]
      abel
    · have t1 : P.L.U j ⊓ V k ⊓ V k' ≤ V k ⊓ V k' := le_inf (inf_le_left.trans inf_le_right) inf_le_right
      have t2 : P.L.U j ⊓ V k ⊓ V k' ≤ P.L.U j ⊓ V k := inf_le_left
      have t3 : P.L.U j ⊓ V k ⊓ V k' ≤ P.L.U j ⊓ V k' := le_inf (inf_le_left.trans inf_le_left) inf_le_right
      rw [dlg_sub _ _ δ hδ1 (jk k) (jk k') (inf_le_inf (hVj k) (hVj k')) t1,
        GlobalTheory.KS.rsT_rsT (inf_le_inf le_rfl (hVj k)) t2, GlobalTheory.KS.rsT_rsT (inf_le_inf le_rfl (hVj k')) t3,
        ← GlobalTheory.CoverRefinementPullback.dlg_tri _ _ P.isLB δ hδ1 j (jk k) (jk k')
          (t2.trans (inf_le_inf le_rfl (hVj k))) (t1.trans (inf_le_inf (hVj k) (hVj k')))
          (t3.trans (inf_le_inf le_rfl (hVj k')))]
      abel
  obtain ⟨H, hH⟩ := hcob

  have hgp := _root_.GlobalTheory.ObjComp.isGrpPullback_id P.A
  obtain ⟨u, hu⟩ := ReciprocityTheory.ChartRestriction.G.PullbackSections.push_surj hgp (tv w)
  have hul : u.left = (tv w).left := (Category.comp_id _).symm.trans (congrArg (fun q => q.left) hu)
  have hut : IsTangent u :=
    (ReciprocityTheory.ChartRestriction.G.PullbackSections.isTangent_iff hgp _).2 (by rw [hu]; exact ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_mem _)
  have hee : ∀ (S : Type) [CommRing S] [Algebra R S] (φ : DualNumber R →ₐ[R] S),
      φ DualNumber.eps * φ DualNumber.eps = 0 := fun S _ _ φ => by
    rw [← map_mul, DualNumber.eps_mul_eps, map_zero]
  have hφ : ∀ (S : Type) [CommRing S] [Algebra R S] (φ : DualNumber R →ₐ[R] S),
      (algOverHom φ ≫ u : algOver R S ⟶ P.A) = (Chart.spMap (SqZero.epsTo R (φ DualNumber.eps) (hee S φ)) ≫ u) := by
    intro S _ _ φ
    have e : φ = SqZero.epsTo R (φ DualNumber.eps) (hee S φ) := DualNumber.algHom_ext (by simp [SqZero.epsTo, SqZero.dualTo_apply])
    conv_lhs => rw [e]
    rfl
  have h1 : u = 1 := GlobalTheory.Heat.DlogIndep.eq_one_of_coboundary P.isLB P.ktriv (DualNumber.eps : DualNumber R)
    DualNumber.eps_mul_eps u (fun j => -H j)
    (fun S _ _ φ y U hU => by
      rw [hφ S φ]; exact (GlobalTheory.Heat.DlogIndep.valR_translate hul hut hδ _ (hee S φ) y U hU).1)
    (fun S _ _ φ y j j' hj hj' => by
      rw [hφ S φ]
      have hU : ⊤ ≤ y.left ⁻¹ᵁ (P.L.U j ⊓ P.L.U j') := fun p hp => ⟨hj hp, hj' hp⟩
      have e₁ := congrArg (valHom (R := S) y.left _ hU) (hH j j')
      have r₁ : valHom (R := S) y.left _ hU (rsT (H j) _) = valHom (R := S) y.left _ hj (H j) := by
        rw [rsT, dite_eq_left inf_le_left, ← valR_eq, ← valR_eq]
        exact valR_res _ _ hU _
      have r₂ : valHom (R := S) y.left _ hU (rsT (H j') _) = valHom (R := S) y.left _ hj' (H j') := by
        rw [rsT, dite_eq_left inf_le_right, ← valR_eq, ← valR_eq]
        exact valR_res _ _ hU _
      simp only [dlg, GlobalTheory.Heat.DlogIndep.pbT_id, map_sub, map_mul, r₁, r₂] at e₁
      have e₂ : valHom (R := S) y.left _ hU (P.L.g j j').val * valHom (R := S) y.left _ hU (P.L.g j j')⁻¹.val = 1 := by
        rw [← map_mul, Units.mul_inv, map_one]
      refine ((GlobalTheory.Heat.DlogIndep.valR_translate hul hut hδ _ (hee S φ) y _ hU).2 _).trans ?_
      simp only [valR_eq (R := S) _ _ hU, valR_eq (R := S) _ _ hj, valR_eq (R := S) _ _ hj', map_neg]
      linear_combination (φ DualNumber.eps * valHom (R := S) y.left _ hU (P.L.g j j').val) * e₁ +
        (-(φ DualNumber.eps * valHom (R := S) y.left _ hU (δ _ (P.L.g j j').val))) * e₂)
  have h2 : tv w = tv (0 : TanM (𝟙 (Sp R)) P.A) := by
    rw [ReciprocityTheory.ChartRestriction.G.PullbackSections.tv_zero, ← hu, h1, map_one]
  exact ReciprocityTheory.ChartRestriction.G.PullbackSections.tanM_ext h2

end GlobalTheory.LieRigid
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqZeroOfLogDerivCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombKillsWeightZeroOfCoboundary =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombKillsWeightZeroOfCoboundary", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsBasisRaynaudTangentInvariantFields\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsLogDerivPolarizationRaynaudEqPullback\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudCechRelationDlogDescendsToAbelianPart\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TangentVectorEqZeroOfLogDerivCoboundary\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.HeatUniq

theorem comb_kills_weight_zero : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [Algebra ℚ R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (K : Type) (Wk : K → Y.H.left.Opens) (jk : K → Q.P.L.ι), (∀ k, ∃ V : Q.P.A.left.Opens, Wk k = Y.q.left ⁻¹ᵁ V) → ⨆ k, Wk k = ⊤ → (∀ k, Wk k ≤ Y.q.left ⁻¹ᵁ Q.P.L.U (jk k)) → ∀ (P : ∀ k, Γ(Y.H.left, Wk k)) (e : Fin n → R), (∀ k, IsWt Y 0 _ (P k)) → (∀ k k' (Wo : Y.H.left.Opens), Wo ≤ Wk k ⊓ Wk k' → rsT (P k') Wo - rsT (P k) Wo = ∑ a, constFn Y.H.hom Wo (e a) * dlg Y.H Y.q.left Q.P.L (dd a) (jk k) (jk k') Wo) → ∀ (V : Q.P.A.left.Opens) f, IsWt Y 0 (Y.q.left ⁻¹ᵁ V) f → ∑ a, constFn Y.H.hom _ (e a) * dd a _ f = 0 := by
  intro R _ _ _ _ _ Q O _ _ _ oa Y n v dd hinv K Wk jk hWk hcov hjk P e hP hcob V f hf
  haveI : IsMonHom Y.q := Y.q_linear.isMonHom
  obtain ⟨dw, hdw⟩ := GlobalTheory.RayBasis.exists_isInv (∑ a, e a • v a)
  obtain ⟨δ, hδ⟩ := GlobalTheory.RayBasis.exists_isInv (GlobalTheory.Heat.LiePush.pushL Y.q (∑ a, e a • v a))
  have hcomb : ∀ (W : Y.H.left.Opens) (s : Γ(Y.H.left, W)),
      dw W s = ∑ a, constFn Y.H.hom W (e a) * dd a W s := by
    intro W s
    have h := GlobalTheory.Heat.LiePush.isInv_pbT (𝟙 Y.H) hdw (w := v) hinv e
      (PullbackSections.tanM_ext (by rw [GlobalTheory.Heat.LiePush.tv_pushL]; exact Category.comp_id _)) W s W le_rfl
    simpa only [Over.id_left, _root_.GlobalTheory.KS.InvField.pbT_id] using h
  have hpull : ∀ (U : Q.P.A.left.Opens) (s : Γ(Q.P.A.left, U)) (W : Y.H.left.Opens), W ≤ Y.q.left ⁻¹ᵁ U →
      dw W (pbT Y.q.left s W) = pbT Y.q.left (δ U s) W := by
    intro U s W hW
    have h := GlobalTheory.Heat.LiePush.isInv_pbT Y.q hdw (g := 1) (w := fun _ => GlobalTheory.Heat.LiePush.pushL Y.q (∑ a, e a • v a))
      (d' := fun _ => δ) (fun _ => hδ) (fun _ => 1) (by simp) U s W hW
    have h1 : constFn Q.P.A.hom U (1 : R) = 1 := by simp [constFn]
    simpa [h1] using h
  obtain ⟨Vs, b, hVcov, hVle, hb⟩ := _root_.GlobalTheory.Heat.AbDescent.descent R Q O oa Y dw δ hpull K Wk jk hWk hcov hjk P hP
    (fun k k' Wo hWo => by
      rw [hcob k k' Wo hWo]
      simp only [dlg, hcomb, Finset.sum_mul, _root_.mul_assoc])
  have hw0 : GlobalTheory.Heat.LiePush.pushL Y.q (∑ a, e a • v a) = 0 := _root_.GlobalTheory.LieRigid.lie_inj R Q.P _ δ hδ K Vs jk hVcov hVle b hb
  have hδ0 : ∀ (U : Q.P.A.left.Opens) (s : Γ(Q.P.A.left, U)), δ U s = 0 := by
    intro U s
    have h := GlobalTheory.Heat.LiePush.isInv_pbT (𝟙 Q.P.A) hδ (g := 0) (w := Fin.elim0) (d' := Fin.elim0)
      (fun a => a.elim0) Fin.elim0
      (by rw [hw0, map_zero]; simp) U s U le_rfl
    simpa only [Over.id_left, _root_.GlobalTheory.KS.InvField.pbT_id, Finset.univ_eq_empty, Finset.sum_empty] using h
  obtain ⟨g, hg⟩ := GlobalTheory.Heat.AbConst.exists_app_eq Y hf
  have hfg : f = pbT Y.q.left g (Y.q.left ⁻¹ᵁ V) := by
    rw [← hg, GlobalTheory.KS.pbT_of_le _ le_rfl, Scheme.Hom.app_eq_appLE]
  rw [← hcomb, hfg, hpull V g _ le_rfl, hδ0, GlobalTheory.KS.pbT_zero]

end GlobalTheory.HeatUniq
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombKillsWeightZeroOfCoboundary =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudExtensionInvariantFieldCoeffsUnique =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudExtensionInvariantFieldCoeffsUnique", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TvELeft\npublic import Development.AbelianVarietyTheory.Proofs.HomogeneousIdeals.ExistsChartOfMemRedKer\npublic import Development.AbelianVarietyTheory.Proofs.ToricGeometry.TangentBijectionOfValues\npublic import Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.NonemptyTorusExtensionOfIsGt\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsUniqueLieBasisCoeffsOfDerivationAffineOpen\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsLieBasisDualPointsOfTangentModuleBasis\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ValueAtInvariantFieldTranslateSqZero\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.Divisors.HasRigidChart\nimport Development.AbelianVarietyTheory.Definitions.Divisors.IsProperToroidalModelStructureMap\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory
open GlobalTheory.TangentOrigin

noncomputable section

namespace GlobalTheory.HxUniq

open GlobalTheory.KS (rsT_self eq_of_rsT_eq)

variable {R : Type} [CommRing R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]

theorem evalPt_lieExp_comb {m : ℕ} (u : Fin m → TanM (𝟙 (Sp R)) G) (dd : Fin m → Fld G.left)
    (hd : ∀ i, IsInv G (u i) (dd i)) (B : Type) [CommRing B] [Algebra R B] (e : Fin m → B)
    (he : ∀ i j, e i * e j = 0) (z : ReciprocityTheory.ChartRestriction.G.Chart.sp (R₀ := R) B ⟶ G) (O : G.left.Opens)
    (h : ⊤ ≤ z.left ⁻¹ᵁ O) :
    ∃ h' : ⊤ ≤ (GlobalTheory.SqZero.lieExp (fun i => GlobalTheory.VertCoeffRing.tvE (u i)) e (fun i => he i i) * z).left ⁻¹ᵁ O, ∀ f,
      evalPt _ O h' f = evalPt z.left O h f + ∑ i, e i * evalPt z.left O h (dd i O f) := by
  apply _root_.GlobalTheory.VertCoeffRing.evalPt_lieExp <;> assumption

theorem coeff_eq_zero [Smooth G.hom] {n : ℕ} (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) G))
    (dd : Fin n → Fld G.left) (hd : ∀ a, IsInv G (v a) (dd a)) (W : G.left.Opens) (c : Fin n → Γ(G.left, W))
    (hc : ∀ Wo : G.left.Opens, Wo ≤ W → ∀ f, ∑ a, rsT (c a) Wo * dd a Wo f = 0) (a : Fin n) : c a = 0 := by
  let J := {V : G.left.Opens // IsAffineOpen V ∧ V ≤ W}
  have hcov : W ≤ ⨆ k : J, k.1 := by
    intro x hx
    obtain ⟨V, hV, hxV, hVW⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.1 (G.left.isBasis_affineOpens)) hx
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨⟨V, hV, hVW⟩, hxV⟩
  refine eq_of_rsT_eq (fun k : J => k.1) (fun k => k.2.2) hcov _ _ fun k => ?_
  rw [GlobalTheory.KS.rsT_zero]
  obtain ⟨V, hV, hVW⟩ := k
  have hu := GlobalTheory.VertCoeffRing.existsUnique_coeff_affine_ring (fun a => GlobalTheory.VertCoeffRing.tvE (v a))
    (GlobalTheory.VertCoeffRing.isLieBasis_tvE v) dd
    (fun B _ _ e he z O h => evalPt_lieExp_comb (fun a => v a) dd hd B e he z O h) V V hV hV le_rfl
    (fun _ => 0) (fun _ _ => by simp) (fun _ _ => by simp) (fun _ => rfl)
  have h1 : ∀ f, (fun _ => (0 : Γ(G.left, V))) f = ∑ a, (fun a => rsT (c a) V) a * rsT (dd a V f) V := by
    intro f
    simp only [rsT_self]
    exact (hc V hVW f).symm
  have h0 : ∀ f, (fun _ => (0 : Γ(G.left, V))) f = ∑ a, (fun _ => (0 : Γ(G.left, V))) a * rsT (dd a V f) V := by
    intro f; simp
  exact congrFun (hu.unique h1 h0) a

end GlobalTheory.HxUniq

theorem GlobalTheory.HxUniq.raynaud_coeff_eq_zero : ∀ (R : Type) [CommRing R] [IsDomain R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (W : Y.H.left.Opens) (c : Fin n → Γ(Y.H.left, W)), (∀ Wo : Y.H.left.Opens, Wo ≤ W → ∀ f, ∑ a, rsT (c a) Wo * dd a Wo f = 0) → ∀ a, c a = 0 := by
  intro R _ _ Q O _ _ _ oa Y n v dd hd W c hc a
  have : Smooth Y.H.hom := (GlobalTheory.isSemiAbelian_of_isGt _ _ _ Y.isGt).smooth
  exact GlobalTheory.HxUniq.coeff_eq_zero v dd hd W c hc a
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudExtensionInvariantFieldCoeffsUnique =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudWeightZeroCompatibleFunctionsEqBaseConsta =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudWeightZeroCompatibleFunctionsEqBaseConsta", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\nimport Development.AbelianVarietyTheory.Proofs.AbelianSchemeLawProofs.InvariantFunctionsDescend\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.AbelianPartConst\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.SmoothRayQuotient\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.ExistsGlobalLocDerOfIsCob\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Development.AbelianVarietyTheory.Proofs.UniformizationProofs.AllSixAbelianSchemeLawsHold\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.Heat.AbConstGlob

open GlobalTheory.KS.GlueDer

variable {R : Type} [CommRing R] [IsDomain R] {Q : DegPre R} {O : Type} [CommRing O] [StarRing O] [Module O Q.X]
  {oa : Q.OAct O} (Y : Ray oa)

theorem app_rsT {U V : Q.P.A.left.Opens} (h : V ≤ U) (a : Γ(Q.P.A.left, U)) :
    (Y.q.left.app V).hom (rsT a V) = rsT ((Y.q.left.app U).hom a) (Y.q.left ⁻¹ᵁ V) := by
  rw [rsT_eq h, rsT_eq (pre_mono _ h), res_app]

theorem app_constFn (V : Q.P.A.left.Opens) (r : R) :
    (Y.q.left.app V).hom (constFn Q.P.A.hom V r) = constFn Y.H.hom _ r :=
  app_const (RingHom.id R) Q.P.A.hom Y.H.hom Y.q.left
    ((Over.w Y.q).trans ((Category.comp_id _).symm.trans (congrArg (Y.H.hom ≫ ·) (Spec.map_id _).symm))) V r

theorem exists_constFn_top (t : Γ(Q.P.A.left, ⊤)) : ∃ r : R, t = constFn Q.P.A.hom ⊤ r := by
  obtain ⟨s, rfl⟩ := (GlobalTheory.allSixLaws.1.globalFns (Sp R) Q.P.A Q.P.isAb).2 t
  refine ⟨(Scheme.ΓSpecIso (CommRingCat.of R)).hom.hom s, ?_⟩
  simp only [constFn]
  rw [Iso.hom_inv_id_apply, Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE]
  rfl

theorem exists_const_of_preimage [IsLocalRing R] [IsNoetherianRing R] {K : Type} (V : K → Q.P.A.left.Opens)
    (hc : ⨆ k, Y.q.left ⁻¹ᵁ V k = ⊤) (F : ∀ k, Γ(Y.H.left, Y.q.left ⁻¹ᵁ V k)) (hF : ∀ k, IsWt Y 0 _ (F k))
    (hag : ∀ k k' (Wo : Y.H.left.Opens), Wo ≤ Y.q.left ⁻¹ᵁ V k ⊓ Y.q.left ⁻¹ᵁ V k' →
      rsT (F k) Wo = rsT (F k') Wo) :
    ∃ r : R, ∀ k, F k = constFn Y.H.hom _ r := by
  have := Y.smooth_q
  have := (GlobalTheory.Heat.AbConst.surjective_q Y).1
  have inj := FunDescent.app_injective Y.q.left
  choose a ha using fun k => GlobalTheory.Heat.AbConst.exists_app_eq Y (hF k)
  have cov : (⊤ : Q.P.A.left.Opens) ≤ ⨆ k, V k := by
    intro y _
    obtain ⟨x, rfl⟩ := Y.q.left.surjective y
    have hx : x ∈ ⨆ k, Y.q.left ⁻¹ᵁ V k := by rw [hc]; trivial
    obtain ⟨k, hk⟩ := TopologicalSpace.Opens.mem_iSup.1 hx
    exact TopologicalSpace.Opens.mem_iSup.2 ⟨k, hk⟩
  obtain ⟨t, ht⟩ := GlobalTheory.KS.exists_rsT_eq V (O := ⊤) (fun _ => le_top) cov a fun k l => by
    apply inj
    rw [app_rsT Y inf_le_left, app_rsT Y inf_le_right, ha, ha]
    exact hag k l _ (le_inf (pre_mono _ inf_le_left) (pre_mono _ inf_le_right))
  obtain ⟨r, rfl⟩ := exists_constFn_top t
  refine ⟨r, fun k => ?_⟩
  rw [← ha, ← ht k, GlobalTheory.KS.rsT_constFn _ le_top, app_constFn]

end GlobalTheory.Heat.AbConstGlob

open GlobalTheory.Heat.AbConstGlob in
theorem GlobalTheory.Heat.AbConstGlob.main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (K : Type) (Wk : K → Y.H.left.Opens), (∀ k, ∃ V : Q.P.A.left.Opens, Wk k = Y.q.left ⁻¹ᵁ V) → ⨆ k, Wk k = ⊤ → ∀ F : ∀ k, Γ(Y.H.left, Wk k), (∀ k, IsWt Y 0 _ (F k)) → (∀ k k' (Wo : Y.H.left.Opens), Wo ≤ Wk k ⊓ Wk k' → rsT (F k) Wo = rsT (F k') Wo) → ∃ r : R, ∀ k, F k = constFn Y.H.hom _ r := by
  intro R _ _ _ _ Q O _ _ _ oa Y K Wk hW hc F hF hag
  choose V hV using hW
  obtain rfl : Wk = fun k => Y.q.left ⁻¹ᵁ V k := funext hV
  exact exists_const_of_preimage Y V hc F hF hag
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudWeightZeroCompatibleFunctionsEqBaseConsta =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobal =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobal", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsTorusInvariantHeatOperatorOfSymmetricRelat\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.InvariantFieldCombKillsWeightZeroOfCoboundary\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudExtensionInvariantFieldCoeffsUnique\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RaynaudWeightZeroCompatibleFunctionsEqBaseConsta\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftAddInvariantCombination\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantLiftsSubEqSumInvariantFields\nimport Development.AbelianVarietyTheory.Proofs.ModuliProofs.LeISupInfPreimage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.AlgebraicGeometry.Modules.Sheaf\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

noncomputable section

namespace GlobalTheory.HeatUniqGlob

open GlobalTheory.HeatGlue GlobalTheory.KS

theorem sep {Γ : Type} [CommRing Γ] {c x y : Γ} (hc : 2 * c = 1) (h : ∀ k : ℕ, (k : Γ) * x + (k : Γ) ^ 2 * y = 0) :
    x = 0 ∧ y = 0 := by
  have h1 := h 1
  have h2 := h 2
  push_cast at h1 h2
  have hy : y = 0 := by linear_combination (-c) * (2 * h1 - h2) - y * hc
  exact ⟨by linear_combination h1 - hy, hy⟩

theorem within {R : Type} [CommRing R] [Algebra ℚ R] {G : Over (Sp R)} [GrpObj G] [IsCommMonObj G]
    {X : Scheme.{0}} {m : G.left ⟶ X} {L : LB X} {n : ℕ} {dd : Fin n → Fld G.left} {D : R → R}
    (hdd : ∀ a, IsField ⊤ (dd a)) (h : Heat G m L dd D) (i i' : h.J) (Wo : G.left.Opens)
    (hW : Wo ≤ h.W i ⊓ h.W i') :
    (∀ f, h.d i Wo f - h.d i' Wo f =
      ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * dlg G m L (dd b) (h.j i) (h.j i') Wo * dd a Wo f) ∧
    2 * (rsT (h.p i) Wo - rsT (h.p i') Wo) + 2 * dlg G m L (h.d i) (h.j i) (h.j i') Wo -
      ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * dlg G m L (dd a) (h.j i) (h.j i') Wo *
        dlg G m L (dd b) (h.j i) (h.j i') Wo = 0 ∧
    2 * (rsT (h.p' i) Wo - rsT (h.p' i') Wo) +
      2 * ∑ a, constFn G.hom Wo (h.u a) * dlg G m L (dd a) (h.j i) (h.j i') Wo -
      ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * dd a Wo (dlg G m L (dd b) (h.j i) (h.j i') Wo) = 0 := by
  have hm : Wo ≤ m ⁻¹ᵁ (L.U (h.j i) ⊓ L.U (h.j i')) :=
    le_inf (hW.trans (inf_le_left.trans (h.le i))) (hW.trans (inf_le_right.trans (h.le i')))
  have hg := pbT_unit' m (L.g (h.j i) (h.j i')) hm
  have hdi : IsDer (h.d i Wo) := isDer_of_isField (h.lift i).1 (hW.trans inf_le_left)
  have hdi' : IsDer (h.d i' Wo) := isDer_of_isField (h.lift i').1 (hW.trans inf_le_right)
  have hdd' : ∀ a, IsDer (dd a Wo) := fun a => isDer_of_isField (hdd a) le_top
  have hs : ∀ a b, (h.Θ.map (constFn G.hom Wo)) a b = (h.Θ.map (constFn G.hom Wo)) b a := fun a b => by
    simp only [Matrix.map_apply]; rw [show h.Θ a b = h.Θᵀ b a from rfl, h.symm]
  have h2 : (2 : R) * algebraMap ℚ R (1 / 2) = 1 := by
    rw [← map_ofNat (algebraMap ℚ R) 2, ← map_mul]; norm_num
  have two : (2 : Γ(G.left, Wo)) * constFn G.hom Wo (algebraMap ℚ R (1 / 2)) = 1 := by
    rw [← constFn_two G.hom Wo, ← constFn_mul, h2, constFn_one]
  unfold dlg
  set g := pbT m (L.g (h.j i) (h.j i')).val Wo with hgdef
  set gi := pbT m (L.g (h.j i) (h.j i'))⁻¹.val Wo with hgidef
  have gk : ∀ k : ℕ, gi ^ k * g ^ k = 1 := fun k => by rw [← mul_pow, mul_comm, hg, one_pow]
  have key : ∀ f, (∀ k : ℕ, (k : Γ(G.left, Wo)) *
        (2 * (h.d i Wo f - h.d i' Wo f - ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * (dd b Wo g * gi) * dd a Wo f) +
          (2 * (rsT (h.p' i) Wo - rsT (h.p' i') Wo) + (2 * ∑ a, constFn G.hom Wo (h.u a) * (dd a Wo g * gi) -
            ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * dd a Wo (dd b Wo g * gi))) * f) +
      (k : Γ(G.left, Wo)) ^ 2 * ((2 * (rsT (h.p i) Wo - rsT (h.p i') Wo) + (2 * (h.d i Wo g * gi) -
        ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * (dd a Wo g * gi) * (dd b Wo g * gi))) * f) = 0) := by
    intro f k
    have c := ringOp_conj hdi hdd' (Θ := h.Θ.map (constFn G.hom Wo)) hs (fun a => constFn G.hom Wo (h.u a))
      (rsT (h.p i) Wo) (rsT (h.p' i) Wo) hg k f
    have gl := h.glue k i i' Wo hW f
    simp only [op] at gl
    simp only [ringOp, Matrix.map_apply] at c
    rw [c] at gl
    have canc : ∀ z : Γ(G.left, Wo), g ^ k * z = 0 → z = 0 := fun z hz => by
      have e := congrArg (gi ^ k * ·) hz
      simp only [mul_zero] at e
      rw [← _root_.mul_assoc, gk, _root_.one_mul] at e
      exact e
    apply canc
    linear_combination gl
  have hB := fun f => (sep two (key f)).2
  have hX := fun f => (sep two (key f)).1
  have B0 := hB 1
  rw [_root_.mul_one] at B0
  have C0 := hX 1
  rw [hdi.map_one, hdi'.map_one, _root_.mul_one] at C0
  simp only [(hdd' _).map_one, mul_zero, Finset.sum_const_zero, sub_zero] at C0
  refine ⟨fun f => ?_, by linear_combination B0, by linear_combination C0⟩
  have A0 := hX f
  rw [show (2 * (rsT (h.p' i) Wo - rsT (h.p' i') Wo) + (2 * ∑ a, constFn G.hom Wo (h.u a) * (dd a Wo g * gi) -
      ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * dd a Wo (dd b Wo g * gi))) = 0 by linear_combination C0] at A0
  linear_combination (constFn G.hom Wo (algebraMap ℚ R (1 / 2))) * A0 -
    (h.d i Wo f - h.d i' Wo f - ∑ a, ∑ b, constFn G.hom Wo (h.Θ a b) * (dd b Wo g * gi) * dd a Wo f) * two

end GlobalTheory.HeatUniqGlob

namespace GlobalTheory.HeatUniqGlob

open GlobalTheory.HeatGlue GlobalTheory.KS

theorem isField_mono {Z : Scheme.{0}} {W W' : Z.Opens} {d : Fld Z} (h : IsField W d) (hle : W' ≤ W) : IsField W' d :=
  ⟨fun O hO => h.1 O (hO.trans hle), fun O hO => h.2.1 O (hO.trans hle), fun O O' h' hO => h.2.2 O O' h' (hO.trans hle)⟩

theorem isLift_mono {R : Type} [CommRing R] {G : Over (Sp R)} {D : R → R} {W W' : G.left.Opens} {d : Fld G.left}
    (h : IsLift G D W d) (hle : W' ≤ W) : IsLift G D W' d :=
  ⟨isField_mono h.1 hle, fun O hO r => h.2 O (hO.trans hle) r⟩

theorem rsT_two {Z : Scheme.{0}} {O₀ O : Z.Opens} (h : O ≤ O₀) : rsT (2 : Γ(Z, O₀)) O = 2 := by
  rw [show (2 : Γ(Z, O₀)) = 1 + 1 by norm_num, rsT_add, rsT_one h]; norm_num

end GlobalTheory.HeatUniqGlob

namespace GlobalTheory.HeatUniqGlob

open GlobalTheory.HeatGlue GlobalTheory.KS

theorem main : ∀ (R : Type) [CommRing R] [IsDomain R] [IsLocalRing R] [IsNoetherianRing R] [Algebra ℚ R] (Q : DegPre R) (O : Type) [CommRing O] [StarRing O] [Module O Q.X] (oa : Q.OAct O) (Y : Ray oa) (n : ℕ) (v : Module.Basis (Fin n) R (TanM (𝟙 (Sp R)) Y.H)) (dd : Fin n → Fld Y.H.left), (∀ a, IsInv Y.H (v a) (dd a)) → ∀ (D : Derivation ℤ R R) (h h' : Heat Y.H Y.q.left Q.P.L dd ⇑D), IsBasic Y h → IsBasic Y h' → h.Θ = h'.Θ → h.u = h'.u → ∃ (e : Fin n → R) (π π' : R), (∀ (V : Q.P.A.left.Opens) f, IsWt Y 0 (Y.q.left ⁻¹ᵁ V) f → ∑ a, constFn Y.H.hom _ (e a) * dd a _ f = 0) ∧ ∀ (i : h.J) (i' : h'.J) (Wo : Y.H.left.Opens), Wo ≤ h.W i ⊓ h'.W i' → (∀ f, h.d i Wo f - h'.d i' Wo f = ∑ a, constFn Y.H.hom Wo (e a) * dd a Wo f + ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j i) (h'.j i') Wo * dd a Wo f) ∧ 2 * (rsT (h.p i) Wo - rsT (h'.p i') Wo) + 2 * dlg Y.H Y.q.left Q.P.L (h.d i) (h.j i) (h'.j i') Wo - ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd a) (h.j i) (h'.j i') Wo * dlg Y.H Y.q.left Q.P.L (dd b) (h.j i) (h'.j i') Wo = 2 * constFn Y.H.hom Wo π ∧ 2 * (rsT (h.p' i) Wo - rsT (h'.p' i') Wo) + 2 * ∑ a, constFn Y.H.hom Wo (h.u a) * dlg Y.H Y.q.left Q.P.L (dd a) (h.j i) (h'.j i') Wo - ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dd a Wo (dlg Y.H Y.q.left Q.P.L (dd b) (h.j i) (h'.j i') Wo) = 2 * constFn Y.H.hom Wo π' := by
  intro R _ _ _ _ _ Q O _ _ _ oa Y n v dd hinv D h h' hB hB' hΘ hu
  have hL : Q.P.L.IsLB := Q.P.isLB
  have hddF : ∀ a, IsField ⊤ (dd a) := fun a => (hinv a).1
  have hdd : ∀ a (W : Y.H.left.Opens), IsDer (dd a W) := fun a W => isDer_of_isField (hddF a) le_top
  have h2 : (2 : R) * algebraMap ℚ R (1 / 2) = 1 := by
    rw [← map_ofNat (algebraMap ℚ R) 2, ← map_mul]; norm_num
  have two : ∀ W : Y.H.left.Opens, (2 : Γ(Y.H.left, W)) * constFn Y.H.hom W (algebraMap ℚ R (1 / 2)) = 1 := fun W => by
    rw [← constFn_two Y.H.hom W, ← constFn_mul, h2, constFn_one]
  have hs : ∀ (W : Y.H.left.Opens) a b, constFn Y.H.hom W (h.Θ a b) = constFn Y.H.hom W (h.Θ b a) := fun W a b => by
    rw [show h.Θ a b = h.Θᵀ b a from rfl, h.symm]
  choose V hV using fun i => (hB i).1
  choose V' hV' using fun i' => (hB' i').1
  have W1 := within hddF h
  have W2 := within hddF h'
  rw [← hΘ, ← hu] at W2
  let K : Type := h.J × h'.J
  let Wk : K → Y.H.left.Opens := fun k => Y.q.left ⁻¹ᵁ (V k.1 ⊓ V' k.2)
  have hWk : ∀ k : K, Wk k = h.W k.1 ⊓ h'.W k.2 := fun k => by rw [hV, hV']; rfl
  have hcov : ⨆ k, Wk k = ⊤ := by
    simp only [hWk]
    rw [← iSup_inf_iSup, h.cover, h'.cover, inf_top_eq]
  have l1 : ∀ k : K, Wk k ≤ h.W k.1 := fun k => (hWk k).le.trans inf_le_left
  have l2 : ∀ k : K, Wk k ≤ h'.W k.2 := fun k => (hWk k).le.trans inf_le_right
  have uh : ∀ {Wo : Y.H.left.Opens} {i : h.J}, Wo ≤ h.W i → Wo ≤ Y.q.left ⁻¹ᵁ Q.P.L.U (h.j i) := fun hw => hw.trans (h.le _)
  have uh' : ∀ {Wo : Y.H.left.Opens} {i : h'.J}, Wo ≤ h'.W i → Wo ≤ Y.q.left ⁻¹ᵁ Q.P.L.U (h'.j i) :=
    fun hw => hw.trans (h'.le _)
  have hWU : ∀ k : K, Wk k ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j k.1) ⊓ Q.P.L.U (h'.j k.2)) := fun k =>
    le_inf (uh (l1 k)) (uh' (l2 k))

  have ex : ∀ k : K, ∃ c : Fin n → Γ(Y.H.left, Wk k), (∀ a, IsWt Y 0 _ (c a)) ∧ ∀ Wo, Wo ≤ Wk k → ∀ f,
      h.d k.1 Wo f - h'.d k.2 Wo f = ∑ a, rsT (c a) Wo * dd a Wo f := fun k =>
    _root_.GlobalTheory.VertCoeff.lifts_sub_eq_sum_invFields R Q O oa Y n v dd hinv (V k.1 ⊓ V' k.2) D (h.d k.1) (h'.d k.2) (isLift_mono (h.lift _) (l1 k))
      (isLift_mono (h'.lift _) (l2 k))
      (fun α V'' hV'' f hf => (hB k.1).2.2.2 α V'' ((Y.q.left.preimage_mono hV'').trans (l1 k)) f hf)
      (fun α V'' hV'' f hf => (hB' k.2).2.2.2 α V'' ((Y.q.left.preimage_mono hV'').trans (l2 k)) f hf)
  choose c hcw hc using ex
  have wℓ : ∀ (k : K) (δ : Fld Y.H.left), (∀ f, IsWt Y 0 (Wk k) f → IsWt Y 0 (Wk k) (δ (Wk k) f)) →
      IsWt Y 0 (Wk k) (dlg Y.H Y.q.left Q.P.L δ (h.j k.1) (h'.j k.2) (Wk k)) := fun k δ hδ => by
    unfold dlg
    exact isWt_zero_mul (hδ _ (isWt_zero_pbT _ (hWU k))) (isWt_zero_pbT _ (hWU k))
  obtain ⟨E, hE⟩ : ∃ E : ∀ k : K, Fin n → Γ(Y.H.left, Wk k), ∀ k a, E k a = c k a -
      ∑ b, constFn Y.H.hom (Wk k) (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k) :=
    ⟨_, fun _ _ => rfl⟩
  have wE : ∀ k a, IsWt Y 0 _ (E k a) := fun k a => by
    rw [hE]
    exact isWt_sub (hcw k a) (isWt_sum _ _ fun b _ => isWt_zero_mul (isWt_zero_constFn _ _)
      (wℓ k (dd b) fun f hf => isWt_inv (hinv b) hf))
  have PE : ∀ (k : K) (Wo : Y.H.left.Opens), Wo ≤ Wk k → ∀ f, h.d k.1 Wo f - h'.d k.2 Wo f =
      ∑ a, rsT (E k a) Wo * dd a Wo f +
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo * dd a Wo f := by
    intro k Wo hWo f
    have e : ∀ b, rsT (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k)) Wo =
        dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo := fun b =>
      rsT_dlg _ _ _ (hddF b) _ _ le_top hWo (hWU k)
    rw [hc k Wo hWo f]
    simp only [hE, rsT_sub, rsT_sum, rsT_mul, rsT_constFn _ hWo, e, sub_mul, Finset.sum_sub_distrib, Finset.sum_mul]
    ring

  have cE : ∀ (k k' : K) (Wo : Y.H.left.Opens), Wo ≤ Wk k ⊓ Wk k' → ∀ a, rsT (E k a) Wo = rsT (E k' a) Wo := by
    intro k k' Wo hWo
    have hk : Wo ≤ Wk k := hWo.trans inf_le_left
    have hk' : Wo ≤ Wk k' := hWo.trans inf_le_right
    have z := _root_.GlobalTheory.HxUniq.raynaud_coeff_eq_zero R Q O oa Y n v dd hinv Wo (fun a => rsT (E k a) Wo - rsT (E k' a) Wo) (fun Wo' hWo' f => by
      have h1 : Wo' ≤ Wk k := hWo'.trans hk
      have h2 : Wo' ≤ Wk k' := hWo'.trans hk'
      simp only [rsT_sub, rsT_rsT hk hWo', rsT_rsT hk' hWo', sub_mul, Finset.sum_sub_distrib]
      have p1 := PE k Wo' h1 f
      have p2 := PE k' Wo' h2 f
      have w1 := (W1 k.1 k'.1 Wo' (le_inf (h1.trans (l1 k)) (h2.trans (l1 k')))).1 f
      have w2 := (W2 k.2 k'.2 Wo' (le_inf (h1.trans (l2 k)) (h2.trans (l2 k')))).1 f
      have c1 : ∀ b, dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo' =
          dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h.j k'.1) Wo' + dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k.2) Wo' :=
        fun b => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ (hdd b Wo')
          (le_inf (le_inf (uh (h1.trans (l1 k))) (uh (h2.trans (l1 k')))) (uh' (h1.trans (l2 k))))
      have c2 : ∀ b, dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k'.2) Wo' =
          dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k.2) Wo' + dlg Y.H Y.q.left Q.P.L (dd b) (h'.j k.2) (h'.j k'.2) Wo' :=
        fun b => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ (hdd b Wo')
          (le_inf (le_inf (uh (h2.trans (l1 k'))) (uh' (h1.trans (l2 k)))) (uh' (h2.trans (l2 k'))))
      simp only [c1, c2, add_mul, mul_add, Finset.sum_add_distrib] at p1 p2
      linear_combination -p1 + p2 + w1 - w2)
    exact fun a => sub_eq_zero.1 (z a)
  have ce : ∀ a, ∃ r : R, ∀ k, E k a = constFn Y.H.hom _ r := fun a =>
    _root_.GlobalTheory.Heat.AbConstGlob.main R Q O oa Y K Wk (fun k => ⟨_, rfl⟩) hcov (fun k => E k a) (fun k => wE k a)
      (fun k k' Wo hWo => cE k k' Wo hWo a)
  choose e he using ce
  have G2 : ∀ (i : h.J) (i' : h'.J) (Wo : Y.H.left.Opens), Wo ≤ h.W i ⊓ h'.W i' → ∀ f,
      h.d i Wo f - h'.d i' Wo f = ∑ a, constFn Y.H.hom Wo (e a) * dd a Wo f +
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j i) (h'.j i') Wo * dd a Wo f := by
    intro i i' Wo hWo f
    have hk : Wo ≤ Wk (i, i') := hWo.trans (hWk (i, i')).ge
    have := PE (i, i') Wo hk f
    simp only [he, rsT_constFn _ hk] at this
    exact this

  obtain ⟨P, hP⟩ : ∃ P : K → ∀ Wo : Y.H.left.Opens, Γ(Y.H.left, Wo), ∀ k Wo, P k Wo =
      2 * (rsT (h.p k.1) Wo - rsT (h'.p k.2) Wo) + 2 * dlg Y.H Y.q.left Q.P.L (h.d k.1) (h.j k.1) (h'.j k.2) Wo -
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd a) (h.j k.1) (h'.j k.2) Wo *
          dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo := ⟨_, fun _ _ => rfl⟩
  have rP : ∀ (k : K) (Wo : Y.H.left.Opens), Wo ≤ Wk k → rsT (P k (Wk k)) Wo = P k Wo := by
    intro k Wo hWo
    have e : ∀ b, rsT (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k)) Wo =
        dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo := fun b =>
      rsT_dlg _ _ _ (hddF b) _ _ le_top hWo (hWU k)
    have e' : rsT (dlg Y.H Y.q.left Q.P.L (h.d k.1) (h.j k.1) (h'.j k.2) (Wk k)) Wo =
        dlg Y.H Y.q.left Q.P.L (h.d k.1) (h.j k.1) (h'.j k.2) Wo :=
      rsT_dlg _ _ _ (h.lift k.1).1 _ _ (l1 k) hWo (hWU k)
    simp only [hP, rsT_sub, rsT_add, rsT_mul, rsT_sum, rsT_two hWo, rsT_constFn _ hWo, e, e',
      rsT_rsT (l1 k) hWo, rsT_rsT (l2 k) hWo]
  have wP : ∀ k : K, IsWt Y 0 _ (P k (Wk k)) := fun k => by
    rw [hP]
    have wd : IsWt Y 0 (Wk k) (dlg Y.H Y.q.left Q.P.L (h.d k.1) (h.j k.1) (h'.j k.2) (Wk k)) :=
      wℓ k _ fun f hf => (hB k.1).2.2.2 0 (V k.1 ⊓ V' k.2) (l1 k) f hf
    have wb : ∀ b, IsWt Y 0 (Wk k) (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k)) := fun b =>
      wℓ k (dd b) fun f hf => isWt_inv (hinv b) hf
    have w2 : IsWt Y 0 (Wk k) (2 : Γ(Y.H.left, Wk k)) := by
      have := isWt_zero_constFn (Y := Y) (Wk k) 2
      rwa [constFn_two] at this
    refine isWt_sub (isWt_add (isWt_zero_mul w2 (isWt_sub (GlobalTheory.Heat.Adjust.isWt_rsT Y (l1 k) (hB k.1).2.1)
      (GlobalTheory.Heat.Adjust.isWt_rsT Y (l2 k) (hB' k.2).2.1))) (isWt_zero_mul w2 wd))
      (isWt_sum _ _ fun a _ => isWt_sum _ _ fun b _ => isWt_zero_mul (isWt_zero_mul (isWt_zero_constFn _ _) (wb a)) (wb b))
  have rel : ∀ (k k' : K) (Wo : Y.H.left.Opens), Wo ≤ Wk k ⊓ Wk k' → P k' Wo - P k Wo =
      2 * ∑ a, constFn Y.H.hom Wo (e a) * dlg Y.H Y.q.left Q.P.L (dd a) (h'.j k.2) (h'.j k'.2) Wo := by
    intro k k' Wo hWo
    have h1 : Wo ≤ Wk k := hWo.trans inf_le_left
    have h2 : Wo ≤ Wk k' := hWo.trans inf_le_right
    have a1 := h1.trans (l1 k)
    have a2 := h2.trans (l1 k')
    have b1 := h1.trans (l2 k)
    have b2 := h2.trans (l2 k')
    have w1 := W1 k.1 k'.1 Wo (le_inf a1 a2)
    have w2 := W2 k.2 k'.2 Wo (le_inf b1 b2)
    have t1 : Wo ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j k.1) ⊓ Q.P.L.U (h.j k'.1) ⊓ Q.P.L.U (h'.j k.2)) :=
      le_inf (le_inf (uh a1) (uh a2)) (uh' b1)
    have t2 : Wo ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j k'.1) ⊓ Q.P.L.U (h'.j k.2) ⊓ Q.P.L.U (h'.j k'.2)) :=
      le_inf (le_inf (uh a2) (uh' b1)) (uh' b2)
    have c1 : ∀ δ : Fld Y.H.left, IsDer (δ Wo) → dlg Y.H Y.q.left Q.P.L δ (h.j k.1) (h'.j k.2) Wo =
        dlg Y.H Y.q.left Q.P.L δ (h.j k.1) (h.j k'.1) Wo + dlg Y.H Y.q.left Q.P.L δ (h.j k'.1) (h'.j k.2) Wo :=
      fun δ hδ => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ hδ t1
    have c2 : ∀ δ : Fld Y.H.left, IsDer (δ Wo) → dlg Y.H Y.q.left Q.P.L δ (h.j k'.1) (h'.j k'.2) Wo =
        dlg Y.H Y.q.left Q.P.L δ (h.j k'.1) (h'.j k.2) Wo + dlg Y.H Y.q.left Q.P.L δ (h'.j k.2) (h'.j k'.2) Wo :=
      fun δ hδ => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ hδ t2
    have hd1 : IsDer (h.d k.1 Wo) := isDer_of_isField (h.lift k.1).1 a1
    have hd2 : IsDer (h.d k'.1 Wo) := isDer_of_isField (h.lift k'.1).1 a2

    have KSx : dlg Y.H Y.q.left Q.P.L (h.d k.1) (h.j k'.1) (h'.j k.2) Wo -
        dlg Y.H Y.q.left Q.P.L (h.d k'.1) (h.j k'.1) (h'.j k.2) Wo =
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h.j k'.1) Wo *
          dlg Y.H Y.q.left Q.P.L (dd a) (h.j k'.1) (h'.j k.2) Wo := by
      have := w1.1 (pbT Y.q.left (Q.P.L.g (h.j k'.1) (h'.j k.2)).val Wo)
      unfold dlg at this ⊢
      rw [← sub_mul, this, Finset.sum_mul]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [Finset.sum_mul]
      exact Finset.sum_congr rfl fun b _ => by ring
    have KSz : dlg Y.H Y.q.left Q.P.L (h.d k'.1) (h'.j k.2) (h'.j k'.2) Wo -
        dlg Y.H Y.q.left Q.P.L (h'.d k.2) (h'.j k.2) (h'.j k'.2) Wo =
        ∑ a, constFn Y.H.hom Wo (e a) * dlg Y.H Y.q.left Q.P.L (dd a) (h'.j k.2) (h'.j k'.2) Wo +
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k.2) Wo *
          dlg Y.H Y.q.left Q.P.L (dd a) (h'.j k.2) (h'.j k'.2) Wo := by
      have := G2 k'.1 k.2 Wo (le_inf a2 b1) (pbT Y.q.left (Q.P.L.g (h'.j k.2) (h'.j k'.2)).val Wo)
      unfold dlg at this ⊢
      rw [← sub_mul, this, add_mul, Finset.sum_mul, Finset.sum_mul]
      congr 1
      · exact Finset.sum_congr rfl fun a _ => by ring
      · refine Finset.sum_congr rfl fun a _ => ?_
        rw [Finset.sum_mul]
        exact Finset.sum_congr rfl fun b _ => by ring
    have q1 := quad_add (hs Wo) (fun a => dlg Y.H Y.q.left Q.P.L (dd a) (h.j k.1) (h.j k'.1) Wo)
      (fun a => dlg Y.H Y.q.left Q.P.L (dd a) (h.j k'.1) (h'.j k.2) Wo)
    have q2 := quad_add (hs Wo) (fun a => dlg Y.H Y.q.left Q.P.L (dd a) (h.j k'.1) (h'.j k.2) Wo)
      (fun a => dlg Y.H Y.q.left Q.P.L (dd a) (h'.j k.2) (h'.j k'.2) Wo)
    rw [hP, hP, c1 _ hd1, c2 _ hd2]
    simp only [c1 _ (hdd _ Wo), c2 _ (hdd _ Wo)]
    rw [q1, q2]
    linear_combination -w1.2.1 + w2.2.1 - 2 * KSx + 2 * KSz
  have G1 := _root_.GlobalTheory.HeatUniq.comb_kills_weight_zero R Q O oa Y n v dd hinv K Wk (fun k => h'.j k.2) (fun k => ⟨_, rfl⟩) hcov
    (fun k => (hWU k).trans (Y.q.left.preimage_mono inf_le_right))
    (fun k => constFn Y.H.hom (Wk k) (algebraMap ℚ R (1 / 2)) * P k (Wk k)) e
    (fun k => isWt_zero_mul (isWt_zero_constFn _ _) (wP k)) (fun k k' Wo hWo => by
      simp only [rsT_mul, rsT_constFn _ (hWo.trans inf_le_left), rsT_constFn _ (hWo.trans inf_le_right),
        rP k Wo (hWo.trans inf_le_left), rP k' Wo (hWo.trans inf_le_right)]
      rw [← mul_sub, rel k k' Wo hWo, ← _root_.mul_assoc, mul_comm (constFn _ _ _), two, _root_.one_mul])

  have kill : ∀ (i₁ i₂ : h'.J) (Wo : Y.H.left.Opens), Wo ≤ h'.W i₁ → Wo ≤ h'.W i₂ →
      ∑ a, constFn Y.H.hom Wo (e a) * dlg Y.H Y.q.left Q.P.L (dd a) (h'.j i₁) (h'.j i₂) Wo = 0 := by
    intro i₁ i₂ Wo hw₁ hw₂
    have hWo : Wo ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h'.j i₁) ⊓ Q.P.L.U (h'.j i₂)) := le_inf (uh' hw₁) (uh' hw₂)
    have g := G1 (Q.P.L.U (h'.j i₁) ⊓ Q.P.L.U (h'.j i₂))
      (pbT Y.q.left (Q.P.L.g (h'.j i₁) (h'.j i₂)).val (Y.q.left ⁻¹ᵁ (Q.P.L.U (h'.j i₁) ⊓ Q.P.L.U (h'.j i₂))))
      (isWt_zero_pbT _ le_rfl)
    have g' := congrArg (fun s => rsT s Wo) g
    have e1 : ∀ a, rsT (constFn Y.H.hom (Y.q.left ⁻¹ᵁ (Q.P.L.U (h'.j i₁) ⊓ Q.P.L.U (h'.j i₂))) (e a) *
        dd a _ (pbT Y.q.left (Q.P.L.g (h'.j i₁) (h'.j i₂)).val (Y.q.left ⁻¹ᵁ (Q.P.L.U (h'.j i₁) ⊓ Q.P.L.U (h'.j i₂))))) Wo =
        constFn Y.H.hom Wo (e a) * dd a Wo (pbT Y.q.left (Q.P.L.g (h'.j i₁) (h'.j i₂)).val Wo) := fun a => by
      rw [rsT_mul, rsT_constFn _ hWo, ← field_rsT (hddF a) le_top hWo, rsT_pbT _ le_rfl hWo]
    simp only [rsT_sum, rsT_zero, e1] at g'
    unfold dlg
    have := congrArg (· * pbT Y.q.left (Q.P.L.g (h'.j i₁) (h'.j i₂))⁻¹.val Wo) g'
    simp only [zero_mul, Finset.sum_mul] at this
    rw [← this]
    exact Finset.sum_congr rfl fun a _ => by ring

  obtain ⟨r₂, hr₂⟩ := _root_.GlobalTheory.Heat.AbConstGlob.main R Q O oa Y K Wk (fun k => ⟨_, rfl⟩) hcov (fun k => P k (Wk k)) wP
    (fun k k' Wo hWo => by
      rw [rP k Wo (hWo.trans inf_le_left), rP k' Wo (hWo.trans inf_le_right)]
      have := rel k k' Wo hWo
      rw [kill k.2 k'.2 Wo (hWo.trans (inf_le_left.trans (l2 k))) (hWo.trans (inf_le_right.trans (l2 k')))] at this
      linear_combination -this)

  obtain ⟨Pq, hPq⟩ : ∃ Pq : K → ∀ Wo : Y.H.left.Opens, Γ(Y.H.left, Wo), ∀ k Wo, Pq k Wo =
      2 * (rsT (h.p' k.1) Wo - rsT (h'.p' k.2) Wo) +
        2 * ∑ a, constFn Y.H.hom Wo (h.u a) * dlg Y.H Y.q.left Q.P.L (dd a) (h.j k.1) (h'.j k.2) Wo -
        ∑ a, ∑ b, constFn Y.H.hom Wo (h.Θ a b) * dd a Wo (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo) :=
    ⟨_, fun _ _ => rfl⟩
  have rQ : ∀ (k : K) (Wo : Y.H.left.Opens), Wo ≤ Wk k → rsT (Pq k (Wk k)) Wo = Pq k Wo := by
    intro k Wo hWo
    have e : ∀ b, rsT (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k)) Wo =
        dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo := fun b =>
      rsT_dlg _ _ _ (hddF b) _ _ le_top hWo (hWU k)
    have e2 : ∀ a b, rsT (dd a (Wk k) (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k))) Wo =
        dd a Wo (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo) := fun a b => by
      rw [← field_rsT (hddF a) le_top hWo, e b]
    simp only [hPq, rsT_sub, rsT_add, rsT_mul, rsT_sum, rsT_two hWo, rsT_constFn _ hWo, e, e2,
      rsT_rsT (l1 k) hWo, rsT_rsT (l2 k) hWo]
  have wQ : ∀ k : K, IsWt Y 0 _ (Pq k (Wk k)) := fun k => by
    rw [hPq]
    have wb : ∀ b, IsWt Y 0 (Wk k) (dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) (Wk k)) := fun b =>
      wℓ k (dd b) fun f hf => isWt_inv (hinv b) hf
    have w2 : IsWt Y 0 (Wk k) (2 : Γ(Y.H.left, Wk k)) := by
      have := isWt_zero_constFn (Y := Y) (Wk k) 2
      rwa [constFn_two] at this
    refine isWt_sub (isWt_add (isWt_zero_mul w2 (isWt_sub (GlobalTheory.Heat.Adjust.isWt_rsT Y (l1 k) (hB k.1).2.2.1)
      (GlobalTheory.Heat.Adjust.isWt_rsT Y (l2 k) (hB' k.2).2.2.1)))
      (isWt_zero_mul w2 (isWt_sum _ _ fun a _ => isWt_zero_mul (isWt_zero_constFn _ _) (wb a))))
      (isWt_sum _ _ fun a _ => isWt_sum _ _ fun b _ => isWt_zero_mul (isWt_zero_constFn _ _) (isWt_inv (hinv a) (wb b)))
  obtain ⟨r₁, hr₁⟩ := _root_.GlobalTheory.Heat.AbConstGlob.main R Q O oa Y K Wk (fun k => ⟨_, rfl⟩) hcov (fun k => Pq k (Wk k)) wQ
    (fun k k' Wo hWo => by
      rw [rQ k Wo (hWo.trans inf_le_left), rQ k' Wo (hWo.trans inf_le_right)]
      have h1 : Wo ≤ Wk k := hWo.trans inf_le_left
      have h2 : Wo ≤ Wk k' := hWo.trans inf_le_right
      have a1 := h1.trans (l1 k)
      have a2 := h2.trans (l1 k')
      have b1 := h1.trans (l2 k)
      have b2 := h2.trans (l2 k')
      have w1 := (W1 k.1 k'.1 Wo (le_inf a1 a2)).2.2
      have w2 := (W2 k.2 k'.2 Wo (le_inf b1 b2)).2.2
      have t1 : Wo ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j k.1) ⊓ Q.P.L.U (h.j k'.1) ⊓ Q.P.L.U (h'.j k.2)) :=
        le_inf (le_inf (uh a1) (uh a2)) (uh' b1)
      have t2 : Wo ≤ Y.q.left ⁻¹ᵁ (Q.P.L.U (h.j k'.1) ⊓ Q.P.L.U (h'.j k.2) ⊓ Q.P.L.U (h'.j k'.2)) :=
        le_inf (le_inf (uh a2) (uh' b1)) (uh' b2)
      have c1 : ∀ b, dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h'.j k.2) Wo =
          dlg Y.H Y.q.left Q.P.L (dd b) (h.j k.1) (h.j k'.1) Wo + dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k.2) Wo :=
        fun b => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ (hdd b Wo) t1
      have c2 : ∀ b, dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k'.2) Wo =
          dlg Y.H Y.q.left Q.P.L (dd b) (h.j k'.1) (h'.j k.2) Wo + dlg Y.H Y.q.left Q.P.L (dd b) (h'.j k.2) (h'.j k'.2) Wo :=
        fun b => dlg_cocycle Y.H Y.q.left Q.P.L hL _ _ _ (hdd b Wo) t2
      have dadd : ∀ a (x y : Γ(Y.H.left, Wo)), dd a Wo (x + y) = dd a Wo x + dd a Wo y := fun a => (hdd a Wo).1
      rw [hPq, hPq]
      simp only [c1, c2, dadd, mul_add, Finset.sum_add_distrib]
      linear_combination w1 - w2)
  refine ⟨e, algebraMap ℚ R (1 / 2) * r₂, algebraMap ℚ R (1 / 2) * r₁, G1, fun i i' Wo hWo => ⟨G2 i i' Wo hWo, ?_, ?_⟩⟩
  · have hk : Wo ≤ Wk (i, i') := hWo.trans (hWk (i, i')).ge
    have := rP (i, i') Wo hk
    rw [hr₂, rsT_constFn _ hk, hP] at this
    rw [constFn_mul, ← _root_.mul_assoc, two Wo, _root_.one_mul]
    exact this.symm
  · have hk : Wo ≤ Wk (i, i') := hWo.trans (hWk (i, i')).ge
    have := rQ (i, i') Wo hk
    rw [hr₁, rsT_constFn _ hk, hPq] at this
    rw [constFn_mul, ← _root_.mul_assoc, two Wo, _root_.one_mul]
    exact this.symm

end GlobalTheory.HeatUniqGlob
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobal =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobalStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobalStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.Divisors.HasDefect\npublic import Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobal\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.CategoryTheory.Monoidal.Opposite.Mon\n\n"}
section -- clump:auto
@[expose] public section

open CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj AlgebraicGeometry NumberField IsLocalRing
open scoped CategoryTheory.Obj Matrix TensorProduct
open ReciprocityTheory.ChartRestriction.G ReciprocityTheory.ChartRestriction.G.Out ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor Formalism.L2.Pj
open ReciprocityTheory.ChartRestriction.G.PullbackSections (TanM tv)
open GlobalTheory.KS (rsT pbT C1 IsCoc IsCob)
open GlobalTheory.LogKS (IsField)
open GlobalTheory.RayEv (Ray)
open GlobalTheory.Toroidal GlobalTheory.LogKS GlobalTheory.LogKSChart GlobalTheory.Heat
attribute [local instance] Over.cartesianMonoidalCategory

end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.DivisorProofs.TorusInvariantHeatOperatorsDifferenceGlobalStatement =====
