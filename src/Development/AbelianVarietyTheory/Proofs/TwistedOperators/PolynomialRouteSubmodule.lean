module

public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsRtensOp
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaEqB
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ExistsIsGridFr
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsFockMap
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchActionReadingsCompatible
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ArchHeisenbergDerivativesExist
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CartanEigenOrthonormalFrameExists
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsNegConjMemberHermitianLatticeSpaceData
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockToSchrodingerMapExistsOfArchHeisenbergDeriva
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.FockVacuaTripleProportionalToNonzero
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.OrientedHermitianFormQuadSumEqTrace
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaPureTensorO
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.DarbouxModelAlgebraicVectorsLeAdelicSchwartzStatement
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SeesawFramesWeilEquivalence
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.SignedUnitaryGroupCompat
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.ThetaTransformDarbouxModelLinearInjectiveStatement
public import Development.AbelianVarietyTheory.BlockTheory.TwistedDiscreteSeries.UnitCharTriangle
import Development.AbelianVarietyTheory.Proofs.AdelicLatticeProofs.ComplexEmbeddingHermitianQuadrupleSum
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.SchwartzFockVacuumLineUniqueOfHeisenbergDerivati
import Development.AbelianVarietyTheory.Proofs.TwistedOperators.WeilModelProjectionFactorisationStatement
import Mathlib.Algebra.Module.StablyFree.Basic
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ExistsMatchOver
import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.TwistPlacesOffPrimeQZero
import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.FormulaAt

@[expose] public section

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.MainNotions Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.L2.Theta Formalism.IndefR Formalism.IndefR.Datum Formalism.IndefR.Links Formalism.L2.DIV
open IsDedekindDomain NumberField GlobalTheory.ChiGrid GlobalTheory.FunObj GlobalTheory.RowTest GlobalTheory.RowClaim
open Formalism.L2.Host (HChar)
open GlobalTheory.IndefiniteRowSideFullHecke.UnitCharTriangle (Tri)
open GlobalTheory.RowEx
open MeasureTheory GlobalTheory.SplitFlip GlobalTheory.SplitWeil GlobalTheory.StdFrames
open GlobalTheory.ChainFr Matrix
open scoped TensorProduct GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

noncomputable section

namespace GlobalTheory.SquareIdent

section Core

open GlobalTheory.SquareComm GlobalTheory.SquareAgree GlobalTheory.Grid GlobalTheory.TripleRead GlobalTheory.TripleAssembly GlobalTheory.RouteSeesaw
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (incM)

variable {D : D7}

theorem eq_thO {S X : HSp D} {d : ℕ} {Vs : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc D.host.F D.host.E S.rank}
    {Ws : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc D.host.F D.host.E d} (M : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Model D.sp.cm.sig Vs Ws) (ψ : AddChar (AF D.host.F) ℂ)
    (e : Fin d ≃ Fin X.rank) {Gm : Matrix (Fin S.rank) (Fin S.rank) D.host.E} (hG : Gm.det ≠ 0)
    (cS : Matrix (Fin S.rank) (Fin d) (AE D) ≃+ WO S X)
    (hcS : ∀ u, cS u = (HMul.hMul (uᵀ.submatrix e.symm id) (incM Gm) : Matrix (Fin X.rank) (Fin S.rank) (AE D)))
    {Φ} {F : WO S X → ℂ} (h : IsDatum M ψ cS Φ F) : F = thO M ψ Gm e Φ := by
  funext x
  obtain ⟨u, rfl⟩ := cS.surjective x
  have e1 : incM Gm * incM Gm⁻¹ = 1 := by
    show Gm.map (incA D) * (Gm⁻¹).map (incA D) = 1
    rw [← Matrix.map_mul, Matrix.mul_nonsing_inv _ (Ne.isUnit hG), Matrix.map_one _ (map_zero _) (map_one _)]
  have e2 : ptO Gm e (cS u) = u := by
    rw [hcS, ptO, Matrix.mul_assoc, e1, Matrix.mul_one]
    ext a b
    simp
  rw [thO, e2, h.2]

theorem adjM_coord (S B : HSp D) (y : Matrix (Fin S.rank) (Fin B.rank) (AE D)) :
    adjM S B (HMul.hMul yᵀ (incM S.gram) : Matrix (Fin B.rank) (Fin S.rank) (AE D)) = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.mulG B (y.map (cA D)) := by
  have e0 : ((incM S.gram).map (cA D))ᵀ = incM S.gram := by
    ext a b
    exact congrArg (incA D) (_root_.GlobalTheory.DualPairCheck.gram_star S b a)
  have e1 : (S.gram⁻¹).map (incA D) * incM S.gram = 1 := by
    show (S.gram⁻¹).map (incA D) * S.gram.map (incA D) = 1
    rw [← Matrix.map_mul, Matrix.nonsing_inv_mul _ (Ne.isUnit (GlobalTheory.RouteCoords.gram_det_ne S)),
      Matrix.map_one _ (map_zero _) (map_one _)]
  unfold adjM GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.mulG
  rw [Matrix.map_mul, Matrix.transpose_mul, e0, ← Matrix.mul_assoc, e1, Matrix.one_mul]
  rfl

theorem adjM_neg (S B : HSp D) (y : Mx D B.rank S.rank) : adjM S B (-y) = -adjM S B y :=
  eq_neg_of_add_eq_zero_left (by rw [← adjM_add, neg_add_cancel, adjM_zero])

theorem thetaLift_pure {m k d : ℕ} {Y : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc D.host.F D.host.E m} {Z : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Spc D.host.F D.host.E k}
    (Mo : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Model D.sp.cm.sig Y Z) {ψ : AddChar (AF D.host.F) ℂ} (hM : Mo.IsGood ψ) (hψ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.IsStd ψ)
    (hY : Y.J.det ≠ 0) (hZ : Z.J.det ≠ 0) {Gm : Matrix (Fin m) (Fin m) D.host.E} (hG : Gm.det ≠ 0) (e : Fin k ≃ Fin d) (τ)
    {P : Type} [AddCommGroup P] [Module ℂ P] (pr : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf D.host.F (Fin m × Fin k) →ₗ[ℂ] P)
    {N : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Pl (F := D.host.F) → Type} [∀ v, AddCommGroup (N v)] [∀ v, Module ℂ (N v)]
    (pv : ∀ v, ((Fin m × Fin k → Fv D.host.F v) → ℂ) →ₗ[ℂ] N v) (s : ∀ v, N v)
    (hs : ∀ᶠ v in Filter.cofinite, pv v (Mo.vac v) = s v) {f} (hf : f ∈ Mo.Pol ψ τ) {φ} (h1 : ∀ v, φ v ∈ GlobalTheory.WeilM.SB _)
    (h2 : ∀ᶠ v in Filter.cofinite, φ v = Mo.vac v) :
    thetaLift Mo ψ Gm e (darbAlg Mo ψ τ) (liftPure Mo pr pv s) (thO Mo ψ Gm e (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.pure f φ)) =
      pr f ⊗ₜ GlobalTheory.SmallThetaModules.pureT s fun v => pv v (φ v) := by
  obtain ⟨T, hT, hinj⟩ := GlobalTheory.T.thetaTransform_darbouxModel_linear_injective D Mo ψ Gm e hM hψ hY hZ hG
  have hS := GlobalTheory.T.darbouxModelAlgebraicVectors_le_adelicSchwartz _ _ _ Mo ψ τ hM
  have H : ∃ q : (Matrix (Fin d) (Fin m) (AE D) → ℂ) →ₗ[ℂ] _, ∀ Ψ ∈ darbAlg Mo ψ τ,
      q (thO Mo ψ Gm e Ψ) = liftPure Mo pr pv s Ψ := by
    obtain ⟨q, hq⟩ := GlobalTheory.TripleAssembly.Onto.exists_factor T _ (fun x hx => hinj x (hS hx)) (liftPure Mo pr pv s)
    exact ⟨q, fun Ψ hΨ => by rw [← hT Ψ (hS hΨ)]; exact hq Ψ hΨ⟩
  have H' := GlobalTheory.T.weil_model_projection_factorisation _ Y Z Mo ψ hM P pr N pv s hs
  rw [thetaLift, dite_eq_left H, H.choose_spec _ (Submodule.subset_span ⟨f, φ, hf, h1, h2, rfl⟩), liftPure, dite_eq_left H']
  exact H'.choose_spec f φ h1 h2

theorem blkMat_submatrix {R : Type} [CommRing R] {p q d : ℕ} (e : Fin p ⊕ Fin q ≃ Fin d) (A : Matrix (Fin p) (Fin p) R)
    (B : Matrix (Fin q) (Fin q) R) : (GlobalTheory.Doubling.blkMat finSumFinEquiv A B).submatrix (e.symm.trans finSumFinEquiv)
      (e.symm.trans finSumFinEquiv) = GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.blk e A B := by
  ext a b
  simp [GlobalTheory.Doubling.blkMat, GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.blk]

theorem rows_coord {U U' : HSp D} {n d : ℕ} (e : Fin U.rank ⊕ Fin U'.rank ≃ Fin d) (u : Matrix (Fin n) (Fin d) (AE D))
    (Gm : Matrix (Fin n) (Fin n) (AE D)) :
    topR (A := U) (B := U') (HMul.hMul (uᵀ.submatrix (e.symm.trans finSumFinEquiv).symm id) Gm) =
      (HMul.hMul (u.submatrix id fun k => e (.inl k))ᵀ Gm : Matrix (Fin U.rank) (Fin n) (AE D)) ∧
    botR (A := U) (B := U') (HMul.hMul (uᵀ.submatrix (e.symm.trans finSumFinEquiv).symm id) Gm) =
      (HMul.hMul (u.submatrix id fun k => e (.inr k))ᵀ Gm : Matrix (Fin U'.rank) (Fin n) (AE D)) := by
  constructor <;> ext a b <;> simp [topR, botR, Matrix.mul_apply]

theorem gauss_small {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E} {a a' : ℕ}
    {B : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Base F E} {Γ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Geo σ a a'} (hb : B.IsGood σ) (hgeo : Γ.IsGood B) {f₀} (hf₀ : f₀ ≠ 0)
    (hG₀ : Γ.M'.IsGauss B.ψ B.emb f₀) (g) (hg : Γ.M'.IsGauss B.ψ B.emb g) : ∃ c : ℂ, g = c • f₀ := by
  choose A hA hAθ using fun w => _root_.GlobalTheory.RealLift.frameEx_holds _ _ _ _ _ (hgeo.hV'.sig w) (hgeo.hV'.cartan w)
  choose C hC hCθ using fun w => _root_.GlobalTheory.RealLift.frameEx_holds _ _ _ _ _ (hgeo.hW.sig w) (hgeo.hW.cartan w)
  have fr : GlobalTheory.RealLift.Framed B.emb (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.incM F Γ.V'.J) (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.incM F Γ.W.J) 1 Complex.I A C :=
    ⟨one_mul _, fun w => by rw [GlobalTheory.GaussLine.incM_map_piInf', one_smul]; exact hA w,
      fun w => by rw [GlobalTheory.GaussLine.incM_map_piInf']; exact hC w⟩
  obtain ⟨Φ, hΦ⟩ := _root_.GlobalTheory.FockMapEx.fockEx_of_derEx _root_.GlobalTheory.HeisDer.derEx F E σ _ _ _ _ _ _ _ B.ψ B.emb _ _ Γ.M'.co 1 Complex.I A C hb.cm hb.std fr
  have toD : ∀ u (f f₁ : GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.SInf F (Fin a' × Fin (a + a'))),
      GlobalTheory.RealLift.SD (fun t => Γ.M'.co.rho B.ψ (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.realAd F t • u)) f f₁ →
      GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.ActsD (GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.evI F) (Γ.M'.heisLine B.ψ u) f f₁ :=
    fun u f f₁ h => (_root_.GlobalTheory.RealLift.actsLaws F (Fin a' × Fin (a + a')) f f₁ f₁).1 _
      (fun t => by funext x; simp [GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels.Model.heisLine, GlobalTheory.WeilM.Darboux.rho, GlobalTheory.WeilM.schr]) h
  have line : ∀ f, Γ.M'.IsGauss B.ψ B.emb f → ∃ z : ℂ, f = z • Φ (PiTensorProduct.tprod ℂ fun _ => 1) := by
    rintro f ⟨ε, hε⟩
    refine _root_.GlobalTheory.VacLn.vacLine_of_derEx _root_.GlobalTheory.HeisDer.derEx F E σ _ _ _ _ _ _ _ B.ψ B.emb _ _ Γ.M'.co 1 Complex.I A C Φ hb.cm hb.std fr hΦ f ε
      (fun u u' hu hu' c hc hc' f1 f1' hf hf' => hε u u' hu hu' (fun w => ?_) f1 f1' (toD _ _ _ hf) (toD _ _ _ hf'))
    have h2 := congrArg Matrix.transpose (hCθ w)
    rw [Matrix.transpose_mul, Matrix.transpose_mul, GlobalTheory.GaussLine.Jm_transpose''] at h2
    rw [hc' w, hc w]
    simp only [Matrix.mul_smul, Matrix.smul_mul, Matrix.mul_assoc, h2]
    rw [← Matrix.mul_assoc (Γ.V'.θ w), hAθ w, Matrix.mul_assoc]
  obtain ⟨z, hz⟩ := line f₀ hG₀
  obtain ⟨z', hz'⟩ := line g hg
  have hz0 : z ≠ 0 := by
    rintro rfl
    exact hf₀ (by rw [hz, zero_smul])
  exact ⟨z' / z, by rw [hz', hz, smul_smul, div_mul_cancel₀ _ hz0]⟩


end Core

section Read

open GlobalTheory.SquareAgree GlobalTheory.TripleRead GlobalTheory.RouteSeesaw
open GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation (incM IsDatumA IsDatumB Num mulG colV adjV₁)

variable {D : D7} {T : Type} {L : LevCh D T} {sc : Consts} {G : GridData L sc} {W : G.Weil} {t : T} {i j : ℕ} {e : Num G i j}
  {Γ : GlobalTheory.IndefiniteRowSideFullHecke.UnitaryConjugation.Geo G i j}

theorem isDatum_of_isDatumA {τ : TotT G (routeBig t i j)} {Φ} (h : IsDatumA W e Γ τ Φ) :
    IsDatum Γ.M W.ψ (fun u => (HMul.hMul (uᵀ.submatrix (e.symm.trans finSumFinEquiv).symm id)
      (incM (GlobalTheory.Grid.sgn true (G.V (.grid (i + 1) (j + 1)))).gram) : Matrix (Fin (_ + _)) (Fin _) (AE D))) Φ
      (GlobalTheory.SquareDict.datumA W τ) := by
  refine ⟨h.1, fun u => (h.2 u).trans (Eq.symm ((Finset.sum_apply _ _ _).trans (Finset.sum_congr rfl fun d _ => ?_)))⟩
  have e3 : incM (GlobalTheory.Grid.sgn true (G.V (.grid (i + 1) (j + 1)))).gram = -incM (G.V (.grid (i + 1) (j + 1))).gram :=
    Matrix.ext fun a b => map_neg (incA D) _
  have e2 : adjM (G.V (.grid (i + 1) (j + 1))) (G.V (.grid (i + 1) j)) (HMul.hMul (u.submatrix id fun k => e (.inr k))ᵀ
      (incM (GlobalTheory.Grid.sgn true (G.V (.grid (i + 1) (j + 1)))).gram) :
        Matrix (Fin (G.V (.grid (i + 1) j)).rank) (Fin (G.V (.grid (i + 1) (j + 1))).rank) (AE D)) = adjV₁ e u := by
    rw [adjV₁, ← adjM_coord, ← adjM_neg, e3]
    exact congrArg _ (Matrix.mul_neg _ _)
  dsimp only
  rw [Pi.smul_apply, box2, (rows_coord e u _).1, (rows_coord e u _).2, e2]
  rfl

theorem isDatum_of_isDatumB {τ : TotT G (routeSmall t i j)} {Φ} (h : IsDatumB W e Γ τ Φ) :
    IsDatum Γ.M' W.ψ (fun u => (HMul.hMul (uᵀ.submatrix (e.symm.trans finSumFinEquiv).symm id)
      (incM (G.V (.grid i j)).gram) : Matrix (Fin (_ + _)) (Fin _) (AE D))) Φ (GlobalTheory.SquareDict.datumB W τ) := by
  refine ⟨h.1, fun u => (h.2 u).trans (Eq.symm ((Finset.sum_apply _ _ _).trans (Finset.sum_congr rfl fun d _ => ?_)))⟩
  have e2 : adjM (G.V (.grid i j)) (negSp (G.V (.grid (i + 1) j))) (HMul.hMul (u.submatrix id fun k => e (.inr k))ᵀ
      (incM (G.V (.grid i j)).gram) : Matrix (Fin (G.V (.grid (i + 1) j)).rank) (Fin _) (AE D)) = adjV₁ e u := by
    refine (adjM_coord _ (negSp (G.V (.grid (i + 1) j))) _).trans ?_
    rw [adjV₁, mulG, mulG, ← Matrix.mul_neg]
    congr 1
    ext a b
    exact map_neg (incA D) _
  dsimp only
  rw [Pi.smul_apply, box2, (rows_coord e u _).1, (rows_coord e u _).2, e2]
  rfl

end Read


theorem thetaKO_left_neg {D : D7} {ψ : AddChar (AF D.host.F) ℂ} {θ : InfFam D} (hθ : IsInfFam θ) {M X : HSp D} (A : Fr M) (B : Fr X)
    {χ χ' : (AE D)ˣ →* Circle} {ω : GlobalTheory.Grid.WRep M X} (hω : GlobalTheory.Grid.IsWeil ψ true M X χ χ' ω) {Φ : WO M X → ℂ}
    (hΦ : Φ ∈ GlobalTheory.SquareComm.algF ψ θ true A B) : ∀ γ ∈ GQ M, ∀ (g : GA D M) (h : GA D X),
    thetaKO ω (γ * g) h Φ = thetaKO ω g h Φ := by
  intro γ hγ g h
  have hω' : IsWeilDatumO ψ (GlobalTheory.Grid.sgn true M) X χ χ' (ω.toSgn true) := hω
  have hth : IsThetaFunO ψ (GlobalTheory.Grid.sgn true M) X Φ := by
    induction hΦ using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨f, P, hf, rfl⟩ := hx
      exact GlobalTheory.GalLift.Vec.theta_pureTensorO hω'.std hθ _ _ _ _ hf.1 P
    | zero => exact GlobalTheory.OrientedHeis.theta_zero
    | add x y _ _ hx hy => exact GlobalTheory.OrientedHeis.theta_add hx hy
    | smul c x _ hx => exact GlobalTheory.OrientedHeis.theta_smul c hx
  unfold thetaKO
  have e : (γ * g, h) = (γ, (1 : GA D X)) * (g, h) := by simp
  rw [e, map_mul, Module.End.mul_apply]
  exact hω'.om_aut ((GlobalTheory.Grid.ofSgn true M).symm γ) ((GlobalTheory.SgnIdent.mem_GQ_sgn true M _).2 hγ) _ (Subgroup.one_mem _) _
    (hω'.om_pres ((GlobalTheory.Grid.ofSgn true M).symm g, h) _ hth)

theorem exists_scalar {P Q : Type} [AddCommGroup P] [Module ℂ P] [AddCommGroup Q] [Module ℂ Q] {x : P} (hx : x ≠ 0) (y : P) :
    ∃ c : ℂ, ∀ u u' : Q, x ⊗ₜ[ℂ] u = y ⊗ₜ[ℂ] u' → u = c • u' := by
  obtain ⟨l, hl⟩ := Module.Projective.exists_dual_eq_one ℂ hx
  refine ⟨l y, fun u u' h => ?_⟩
  have := congrArg (TensorProduct.lid ℂ Q ∘ LinearMap.rTensor Q l) h
  simpa [hl] using this

end GlobalTheory.SquareIdent

end
