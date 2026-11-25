module

public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeIncidenceFiniteFibresStable
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ConjugatePrimeBoundPointKernelOfCoefficientKerne
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvTrKEmbGLApply
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemClosureIff
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.PlacesOverConjPrimes
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TilLatticesOfLevel
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianLatticeChartFamilyLawBasis
public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainTransitionIsExtKernelSum
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimePowSmulMemValueLatticeErase
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemFormsIffExistsEquivariantExtension
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.UopIsExt
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValueLatticeAddSubgroupSmulMoveLaws
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvSmulMemOfRedL
public import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfPointKernelLiftL
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsLevelPrimePointModelRealisation
import Formalism.LocalToGlobal.Columns.PolyFnLemmas
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
import Formalism.LocalRingCardinality.Lemmas
import Formalism.LocalToGlobal.Columns.BtExistsSmulLeOfFg
import Formalism.LocalToGlobal.Columns.CoefficientsModP
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Topology.Sheaves.Init
import Std.Tactic.BVDecide.Normalize.Prop
import Mathlib.Algebra.Order.Star.Int
import Mathlib.Tactic.ReduceModChar
import Mathlib.RingTheory.Coalgebra.IsFrobenius
import Mathlib.RingTheory.HopfAlgebra.Basic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DilateLawPointKernelOfCoefficientKernel, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCoordinatesValueLatticesEqWeylLattices, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsPointKernelRealisedModels, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValBOfInc, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExtInOfValIn, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.HeckeLawPointKernelOfCoefficientKernel, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntPOfKerP, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.NotDvdCardStabilizerForm, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SharpBoundStabilityLatticeColumnChain

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DilateLawPointKernelOfCoefficientKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DilateLawPointKernelOfCoefficientKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeIncidenceFiniteFibresStable\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Built

noncomputable section
namespace GlobalTheory.LvT.Built.DilPass

variable {D : D7} {u : D.what₂.Word}

theorem isDil_act {q : ℕ} {F : Type} [Field F] {Lc : LocF q F} {n : ℕ} {g : GL (Fin n) Lc.K} {a : F}
    {p p' p₁ p₁' : LocF.PP Lc n} (h : LocF.PP.IsDil a p p') (h₁ : p.IsAct g p₁) (h₂ : p'.IsAct g p₁') :
    LocF.PP.IsDil a p₁ p₁' := by
  have hs : ∀ x : Fin n → Lc.K, ∃ y, Matrix.mulVec (g : Matrix (Fin n) (Fin n) Lc.K) y = x := fun x =>
    ⟨Matrix.mulVec ((g⁻¹ : GL (Fin n) Lc.K) : Matrix (Fin n) (Fin n) Lc.K) x, by
      rw [Matrix.mulVec_mulVec, ← Units.val_mul, mul_inv_cancel, Units.val_one, Matrix.one_mulVec]⟩
  refine ⟨?_, fun x => ?_⟩
  · ext x
    obtain ⟨y, rfl⟩ := hs x
    rw [(h₁ y).1, (h₂ y).1, h.1]
  · obtain ⟨y, rfl⟩ := hs x
    rw [(h₁ y).2, (h₂ y).2, h.2]

theorem ext_ev {B : Built.Dat D u} {i : ℕ} {sp : Split (B.J.A i) B.J.T} {M : PtModel B.ch i} (R : B.Real i sp M)
    {V : Type} [AddCommGroup V] [Module ℂ V] (φ ψ : M.Val →ₗ[ℂ] V)
    (h : ∀ F (y : M.Val), y.1 = B.ev i F → φ y = ψ y) : φ = ψ := by
  have hsp : M.Val = Submodule.span ℂ (Set.range (B.ev i)) := R.val_eq.trans (span_evV _ _ _ _).symm
  ext ⟨y, hy⟩
  have hy' : y ∈ Submodule.span ℂ (Set.range (B.ev i)) := hsp ▸ hy
  have key : ∀ y ∈ Submodule.span ℂ (Set.range (B.ev i)), ∀ hy : y ∈ M.Val, φ ⟨y, hy⟩ = ψ ⟨y, hy⟩ := by
    intro y hy
    induction hy using Submodule.span_induction with
    | mem z hz =>
      obtain ⟨F, rfl⟩ := hz
      exact fun hy => h F _ rfl
    | zero => exact fun hy => (map_zero φ).trans (map_zero ψ).symm
    | add a b ha hb iha ihb =>
      intro hy
      have ha' : a ∈ M.Val := hsp ▸ ha
      have hb' : b ∈ M.Val := hsp ▸ hb
      exact (map_add φ ⟨a, ha'⟩ ⟨b, hb'⟩).trans ((congrArg₂ (· + ·) (iha ha') (ihb hb')).trans (map_add ψ ⟨a, ha'⟩ ⟨b, hb'⟩).symm)
    | smul r a ha iha =>
      intro hy
      have ha' : a ∈ M.Val := hsp ▸ ha
      exact (map_smul φ r ⟨a, ha'⟩).trans ((congrArg (r • ·) (iha ha')).trans (map_smul ψ r ⟨a, ha'⟩).symm)
  exact key y hy' hy

end GlobalTheory.LvT.Built.DilPass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DilateLawPointKernelOfCoefficientKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCoordinatesValueLatticesEqWeylLattices =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCoordinatesValueLatticesEqWeylLattices", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ConjugatePrimeBoundPointKernelOfCoefficientKerne\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvTrKEmbGLApply\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemClosureIff\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.PlacesOverConjPrimes\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.TilLatticesOfLevel\nimport Formalism.LocalRingCardinality.Lemmas\nimport Formalism.LocalToGlobal.Columns.BtExistsSmulLeOfFg\nimport Formalism.LocalToGlobal.Columns.CoefficientsModP\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.ValLat

open NumberField IsDedekindDomain Matrix Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms GlobalTheory.Mem.Col2
open Formalism.MainNotions.product_first_zeroth_parts (Ow blk IntSpan)

variable {D : D7} {u : D.what₂.Word} {B : Built.Dat D u} {i : ℕ} {sp : Split (B.J.A i) B.J.T} {M : PtModel B.ch i}
  (R : B.Real i sp M)

def jj (w : D.what₂.places.Pl) (v : B.ch.A.vT) : (M.Lc v).K →+* D.what₂.LL :=
  (B.emb (B.Z.tauOf w (B.pr v))).comp
    ((if B.Z.seenP w then RingHom.id B.E else starRingEnd B.E).comp (R.iK v).symm.toRingHom)

theorem jj_iK (w : D.what₂.places.Pl) (v : B.ch.A.vT) (x : B.E) :
    jj R w v (R.iK v x) = B.emb (B.Z.tauOf w (B.pr v)) (if B.Z.seenP w then x else star x) := by
  unfold jj
  split_ifs <;> simp [starRingEnd_apply]


variable (M) in
def co : M.Val →ₗ[ℂ] Pol ℂ D.what₂.Tau (D.R.N i) :=
  polOf (Gr B.emb D.what₂.embLL (D.R.N i)) (shiftOf (B.lam i)) (fr0 B.emb D.what₂.embLL (D.R.N i)) ∘ₗ M.Val.subtype

theorem co_of_eq {y : M.Val} {P : Pol ℂ D.what₂.Tau (D.R.N i)}
    (h : y.1 = fnOf (Gr B.emb D.what₂.embLL (D.R.N i)) (shiftOf (B.lam i)) 1 P) : co M y = P := by
  have := GlobalTheory.TilClass.polOf_fnOf_one B.emb D.what₂.embLL (shiftOf (B.lam i)) P
  rw [← h] at this
  exact this

include R in
theorem exists_pol (y : M.Val) : ∃ F : Formalism.L2.DIV.VV ℂ (B.lam i),
    y.1 = fnOf (Gr B.emb D.what₂.embLL (D.R.N i)) (shiftOf (B.lam i)) 1 F.1 := by
  have h : y.1 ∈ ValC (Gr B.emb D.what₂.embLL (D.R.N i)) (B.lam i) := R.val_eq ▸ y.2
  obtain ⟨F, hF⟩ := (GlobalTheory.TilClass.mem_ValC_iff B.emb D.what₂.embLL (B.lam i) _).1 h
  exact ⟨F, hF.symm⟩

include R in
theorem fn_co (y : M.Val) : y.1 = fnOf (Gr B.emb D.what₂.embLL (D.R.N i)) (shiftOf (B.lam i)) 1 (co M y) := by
  obtain ⟨F, hF⟩ := exists_pol R y
  rw [co_of_eq hF, hF]

include R in
theorem co_eq_iff (y : M.Val) (F : B.V i) : co M y = MvPolynomial.map D.what₂.embLL F.1 ↔ y.1 = B.ev i F :=
  ⟨fun h => by rw [fn_co R y, h]; rfl, fun h => co_of_eq h⟩

variable (B i) in
theorem natW_lam (τ : D.what₂.Tau) : (B.ch.fm.lam i τ).natW = (B.lam i τ).natW := by
  have h := Formalism.MainNotions.product_first_zeroth_parts.natW_wSh (B.ch.fm.lam i τ) ((i : ℤ) * (((D.R.t + 1) / 2 : ℕ) : ℤ))
  rw [← h]
  rfl

variable (B i) in
theorem lamT_eq : PtModel.lamT B.ch i = B.lam i := by
  funext τ
  have h : ((i * (D.R.t + 1) / 2 : ℕ) : ℤ) = (i : ℤ) * (((D.R.t + 1) / 2 : ℕ) : ℤ) := by
    obtain ⟨c, hc⟩ := D.R.t_odd
    have h2 : D.R.t + 1 = 2 * (c + 1) := by omega
    rw [h2, Nat.mul_div_cancel_left _ two_pos, mul_left_comm, Nat.mul_div_cancel_left _ two_pos, Nat.cast_mul]
  unfold PtModel.lamT
  rw [h]
  rfl

include R in
theorem co_range : LinearMap.range (co M) = Formalism.MainNotions.product_first_zeroth_parts.CSpan (B.ch.fm.lam i) := by
  have hd : ∀ τ, delSq ℂ _ (B.ch.fm.lam i τ) = delSq ℂ _ (B.lam i τ) := fun τ => by unfold delSq; rw [natW_lam B i τ]
  have e : Formalism.MainNotions.product_first_zeroth_parts.CSpan (B.ch.fm.lam i) = CSpan (B.lam i) := by
    unfold Formalism.MainNotions.product_first_zeroth_parts.CSpan
    simp only [hd]
    rfl
  rw [e]
  ext P
  constructor
  · rintro ⟨y, rfl⟩
    have h : y.1 ∈ ValC (Gr B.emb D.what₂.embLL (D.R.N i)) (B.lam i) := R.val_eq ▸ y.2
    obtain ⟨Q, hQ, hy⟩ := h
    rwa [co_of_eq hy.symm]
  · intro hP
    have h : fnOf (Gr B.emb D.what₂.embLL (D.R.N i)) (shiftOf (B.lam i)) 1 P ∈ M.Val := by
      rw [R.val_eq]
      exact Submodule.mem_map_of_mem hP
    exact ⟨⟨_, h⟩, co_of_eq rfl⟩


variable (M) in
def wl (w : D.what₂.places.Pl) (L : Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E)) : AddSubgroup M.Val where
  carrier := {y | ∃ F ∈ B.valAt w i L, y.1 = B.ev i F}
  zero_mem' := ⟨0, Submodule.zero_mem _, (map_zero (evV B.emb 1 (B.lam i) D.what₂.embLL)).symm⟩
  add_mem' := by
    rintro a b ⟨F, hF, ha⟩ ⟨G, hG, hb⟩
    exact ⟨F + G, Submodule.add_mem _ hF hG, by
      rw [Submodule.coe_add, ha, hb]; exact (map_add (evV B.emb 1 (B.lam i) D.what₂.embLL) F G).symm⟩
  neg_mem' := by
    rintro a ⟨F, hF, ha⟩
    exact ⟨-F, Submodule.neg_mem _ hF, by
      rw [Submodule.coe_neg, ha]; exact (map_neg (evV B.emb 1 (B.lam i) D.what₂.embLL) F).symm⟩

def woff (w : D.what₂.places.Pl) (z : M.Z) : AddSubgroup M.Val :=
  ⨅ (g : M.G) (b) (d : (B.I.S i).D b) (_ : (g • R.pt b d).1 = z),
    (wl M w ((B.I.S i).Lsh b d)).comap (M.act g⁻¹).toAddMonoidHom

theorem mem_woff (w : D.what₂.places.Pl) (z : M.Z) (y : M.Val) : y ∈ woff R w z ↔
    ∀ (g : M.G) (b) (d : (B.I.S i).D b), (g • R.pt b d).1 = z → M.act g⁻¹ y ∈ wl M w ((B.I.S i).Lsh b d) := by
  simp only [woff, AddSubgroup.mem_iInf, AddSubgroup.mem_comap]
  rfl

def coord (hS : B.Sees) : M.Coord where
  co := co M
  co_inj y y' h := Subtype.ext (by rw [fn_co R y, fn_co R y', h])
  co_range := co_range R
  j := jj R
  j_int w hw v x := by
    obtain ⟨x, rfl⟩ := (R.iK v).surjective x
    rw [jj_iK, R.iK_O]
    exact hS w hw _ x
  Woff := woff R

def gm (w : D.what₂.places.Pl) (v : B.ch.A.vT) (h : GL (Fin (D.R.N i)) (M.Lc v).K) : GL (Fin (D.R.N i)) D.what₂.LL :=
  if B.Z.seenP w then inside₂ _ _ (Formalism.UG.bc (jj R w v) h) else Formalism.UG.bc (jj R w v) h

theorem mov_eq (hS : B.Sees) (w : D.what₂.places.Pl) (h : ∀ v, GL (Fin (D.R.N i)) (M.Lc v).K) :
    (coord R hS).mov w h = actP (B.lam i) fun τ =>
      Formalism.UG.bc D.what₂.embLL (gm R w ((B.ch.fm.tauOf w).symm τ) (h _)) := by
  unfold PtModel.Coord.mov
  rw [blk_roundAct, lamT_eq]
  congr 1
  funext τ
  show inside₂ ℂ _ (if B.Z.seenP w = true then _ else _) = _
  unfold gm
  split_ifs
  · exact Units.ext rfl
  · exact Units.ext rfl

theorem gm_iK (w : D.what₂.places.Pl) (v : B.ch.A.vT) (g : GL (Fin (D.R.N i)) B.E) :
    gm R w v (Matrix.GeneralLinearGroup.map (R.iK v).toRingHom g) =
      if B.Z.seenP w then inside₂ _ _ (Formalism.UG.bc (B.emb (B.Z.tauOf w (B.pr v))) g)
      else Formalism.UG.bc ((B.emb (B.Z.tauOf w (B.pr v))).comp (starRingEnd B.E)) g := by
  unfold gm
  split_ifs with hs
  · congr 1
    refine Units.ext (Matrix.ext fun a b => ?_)
    exact (jj_iK R w v _).trans (by rw [if_pos hs]; rfl)
  · refine Units.ext (Matrix.ext fun a b => ?_)
    exact (jj_iK R w v _).trans (by rw [if_neg hs]; rfl)

theorem exists_map (v : B.ch.A.vT) (h : GL (Fin (D.R.N i)) (M.Lc v).K) :
    ∃ g, h = Matrix.GeneralLinearGroup.map (R.iK v).toRingHom g :=
  ⟨Matrix.GeneralLinearGroup.map (R.iK v).symm.toRingHom h,
    Units.ext (Matrix.ext fun _ _ => ((R.iK v).apply_symm_apply _).symm)⟩

theorem frame_iff (v : B.ch.A.vT) (s : Set (Fin (D.R.N i) → (M.Lc v).K)) (L : Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E))
    (hs : ∀ x, (fun a => R.iK v (x a)) ∈ s ↔ x ∈ localization₂ (B.pr v).1.asIdeal L) (g : GL (Fin (D.R.N i)) B.E) :
    M.IsFrameS v (Matrix.GeneralLinearGroup.map (R.iK v).toRingHom g) s ↔ IsBasisAt (B.pr v).1 L g := by
  rw [isBasisAt_iff]
  have e : ∀ x : Fin (D.R.N i) → B.E,
      (Matrix.GeneralLinearGroup.map (R.iK v).toRingHom g).val *ᵥ (fun a => R.iK v (x a)) =
        fun a => R.iK v ((g.val *ᵥ x) a) := fun x =>
    funext fun a => (RingHom.map_mulVec (R.iK v).toRingHom g.val x a).symm
  have e2 : ∀ x : Fin (D.R.N i) → B.E, (fun a => R.iK v (x a)) ∈ (M.Lc v).std (D.R.N i) ↔
      ∀ a, (B.pr v).1.valuation B.E (x a) ≤ 1 := by
    intro x
    unfold LocF.std
    rw [Submodule.mem_pi]
    refine forall_congr' fun a => ?_
    rw [← R.iK_O, Submodule.mem_one]
    exact ⟨fun h => by obtain ⟨y, hy⟩ := h trivial; exact hy ▸ y.2, fun h _ => ⟨⟨_, h⟩, rfl⟩⟩
  unfold PtModel.IsFrameS
  constructor
  · intro h x
    rw [← hs, ← e, h, e2]
  · intro h y
    obtain ⟨x, rfl⟩ : ∃ x : Fin (D.R.N i) → B.E, y = fun a => R.iK v (x a) :=
      ⟨fun a => (R.iK v).symm (y a), funext fun a => ((R.iK v).apply_symm_apply _).symm⟩
    rw [e, hs, h, e2]

theorem gm_basis (hS : B.Sees) {w : D.what₂.places.Pl} (hw : OverT B.ch w) {L : Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E)}
    (hL : Submodule.IsFullLattice B.E L) (v : B.ch.A.vT) {g : GL (Fin (D.R.N i)) B.E} (hg : IsBasisAt (B.pr v).1 L g) :
    IsBasisAt (D.plEq w) (dualFr (tauLat B.emb (B.ch.fm.tauOf w v) (if B.Z.seenP w then L else dual (hStd B.E _) L)))
      (gm R w v (Matrix.GeneralLinearGroup.map (R.iK v).toRingHom g)) := by
  have h := fun x => (D.val_nonneg_iff w _).symm.trans (hS w hw (B.pr v) x)
  rw [gm_iK]
  split_ifs at h ⊢ with hs
  · exact basis_seen B.emb _ _ _ h hL hg
  · exact basis_conj B.emb _ _ _ h hL hg

theorem valB_iff (hS : B.Sees) {w : D.what₂.places.Pl} (hw : OverT B.ch w) (V : Finset B.ch.A.vT) (p : M.Pt)
    {L : Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E)} (hL : Submodule.IsFullLattice B.E L)
    (hs : ∀ v x, (fun a => R.iK v (x a)) ∈ (open Classical in
      if B.ch.fm.seenP w = true ∧ v ∉ V then ((p.2 v).1.L : Set _) else (p.2 v).ker) ↔ x ∈ localization₂ (B.pr v).1.asIdeal L)
    (y : M.Val) :
    y ∈ (coord R hS).valB w V p ↔ y ∈ wl M w (if B.Z.seenP w then L else dual (hStd B.E _) L) := by
  have hL' : Submodule.IsFullLattice B.E (if B.Z.seenP w then L else dual (hStd B.E _) L) := by
    split_ifs
    · exact hL
    · exact dual_lattice hL
  have key : ∀ g : B.ch.A.vT → GL (Fin (D.R.N i)) B.E, (∀ v, IsBasisAt (B.pr v).1 L (g v)) → ∀ F : B.V i,
      F ∈ B.valAt w i (if B.Z.seenP w then L else dual (hStd B.E _) L) ↔
      ∃ z ∈ localization₂ (D.plEq w).asIdeal (delStd D.what₂.LL (B.lam i)), F.1 = actP (B.lam i) (fun τ =>
        gm R w ((B.ch.fm.tauOf w).symm τ)
          (Matrix.GeneralLinearGroup.map (R.iK _).toRingHom (g ((B.ch.fm.tauOf w).symm τ)))) z := by
    intro g hg F
    refine mem_localization_delAtr B.emb (B.lam i) (D.plEq w) hL' _ (fun τ => ?_) F
    have := gm_basis R hS hw hL ((B.ch.fm.tauOf w).symm τ) (hg _)
    rwa [Equiv.apply_symm_apply] at this
  constructor
  · rintro ⟨h, hh, z, hz, e⟩
    choose g hg using fun v => exists_map R v (h v)
    obtain rfl : h = _ := funext hg
    obtain ⟨z₀, hz₀, rfl⟩ := (mem_intSpan_iff D w _ _ (natW_lam B i) z).1 hz
    rw [mov_eq, ← map_actP] at e
    let F : B.V i := ⟨_, polyAction_mem_VV (B.lam i) (fun τ =>
        gm R w ((B.ch.fm.tauOf w).symm τ)
          (Matrix.GeneralLinearGroup.map (R.iK _).toRingHom (g ((B.ch.fm.tauOf w).symm τ))))
        (mem_VV_of_locP _ _ hz₀)⟩
    exact ⟨F, (key g (fun v => (frame_iff R v _ L (hs v) _).1 (hh v)) F).2 ⟨z₀, hz₀, rfl⟩, (co_eq_iff R y F).1 e⟩
  · rintro ⟨F, hF, e⟩
    choose g hg using fun v : B.ch.A.vT => basisAtEx B.E _ L hL (B.pr v).1
    obtain ⟨z₀, hz₀, hFz⟩ := (key g hg F).1 hF
    refine ⟨fun v => Matrix.GeneralLinearGroup.map (R.iK v).toRingHom (g v),
      fun v => (frame_iff R v _ L (hs v) _).2 (hg v), _, (mem_intSpan_iff D w _ _ (natW_lam B i) _).2 ⟨z₀, hz₀, rfl⟩, ?_⟩
    rw [mov_eq, ← map_actP, ← hFz]
    exact (co_eq_iff R y F).2 e

theorem ker_iff (b) (d : (B.I.S i).D b) (v : B.ch.A.vT) (x : Fin (D.R.N i) → B.E) :
    (fun a => R.iK v (x a)) ∈ ((R.pt b d).2 v).ker ↔ x ∈ localization₂ (B.pr v).1.asIdeal ((B.J.A i).deco b d).L := by
  rw [((B.hJ.tied i).ok b d).mem_locP_L]
  refine and_congr (R.pt_L b d v x) ?_
  have := R.pt_f b d v x
  exact ⟨fun h => this.symm.trans h, fun h => this.trans h⟩

theorem valIs (hS : B.Sees) : R.ValIs (coord R hS) := by
  refine { dual := ?_, ker := ?_ }
  · intro w hw b d y
    have hd := (B.hJ.tied i).ok b d
    obtain ⟨a, ha⟩ := exists_sepElt sp.nonconj
    by_cases hs : B.Z.seenP w = true
    · have := valB_iff R hS hw ∅ (R.pt b d) hd.Lsh_full_lattice (fun v x => by
        rw [if_pos ⟨hs, Finset.notMem_empty v⟩, hd.locP_Lsh ha (B.pr v)]
        exact R.pt_L b d v x) y
      rw [if_pos hs] at this
      rw [(B.hJ.tied i).Lsh_eq]
      exact this
    · have := valB_iff R hS hw ∅ (R.pt b d) hd.L_full_lattice (fun v x => by
        rw [if_neg fun h => hs h.1]
        exact ker_iff R b d v x) y
      rw [if_neg hs] at this
      rw [(B.hJ.tied i).Lsh_eq]
      exact this
  · intro w hw hs b d y
    have := valB_iff R hS hw Finset.univ (R.pt b d) ((B.hJ.tied i).ok b d).L_full_lattice (fun v x => by
      rw [if_neg fun h => h.2 (Finset.mem_univ v)]
      exact ker_iff R b d v x) y
    rw [if_pos hs] at this
    exact this

theorem valB_single (hS : B.Sees) {w : D.what₂.places.Pl} (hw : OverT B.ch w) (hs : B.Z.seenP w = true) (v : B.ch.A.vT) (b)
    (d : (B.I.S i).D b) (y : M.Val) :
    y ∈ (coord R hS).valB w {v} (R.pt b d) ↔ y ∈ wl M w ((B.J.A i).ker b d (B.pr v)) := by
  have hd := (B.hJ.tied i).ok b d
  obtain ⟨a, ha⟩ := exists_sepElt sp.nonconj
  have hLshKer : Submodule.IsFullLattice B.E (((B.J.A i).deco b d).LshKer (B.pr v)) := by
    let := hd.L_full_lattice
    let := hd.LshKer_lattice ha (B.pr v)
    exact Submodule.IsFullLattice.of_le B.E fun x hx =>
      (hd.mem_LshKer ha (B.pr v) x).2 ⟨hd.L_le_Lsh hx, ((hd.mem_L x).1 hx).2 (B.pr v)⟩
  have := valB_iff R hS hw {v} (R.pt b d) hLshKer (fun v' x => by
    by_cases h : v' = v
    · subst h
      rw [if_neg fun h => h.2 (Finset.mem_singleton_self _), hd.locP_LshKer_self ha, localization_kerAt_eq hd]
      exact ker_iff R b d v' x
    · rw [if_pos ⟨hs, fun h' => h (Finset.mem_singleton.1 h')⟩, hd.locP_LshKer_ne ha (P := B.pr v) (Q := B.pr v') h,
        hd.locP_Lsh ha (B.pr v')]
      exact R.pt_L b d v' x) y
  rw [if_pos hs] at this
  rw [(B.hJ.tied i).ker_eq]
  exact this

theorem ev_rho (b) (g : (B.I.S i).G b) (F : B.V i) :
    B.ev i ((B.I.S i).rho B.emb (B.lam i) b g F) = (B.I.S i).tr B.emb D.what₂.embLL b g (B.ev i F) :=
  GlobalTheory.LvT.BuiltChain.evV_rho B.emb D.what₂.embLL (B.I.S i) (B.lam i) b g F

theorem forms_iff (w : D.what₂.places.Pl) (L : (B.I.S i).Cl → Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E))
    (φ : (B.I.S i).Cl → Fr B.emb D.what₂.embLL (D.R.N i) → ℂ) (hφ : φ ∈ (B.I.S i).Fi B.emb D.what₂.embLL (B.lam i)) :
    (∃ x ∈ locW D.what₂.places w ((B.I.S i).latOf B.emb (B.lam i) (B.lf.fam i) fun c => delAtr B.emb (B.lam i) (L c)),
      (B.I.S i).embF B.emb D.what₂.embLL (B.lam i) (B.lf.fam i) x = φ) ↔
    ∀ c, ∃ F ∈ B.valAt w i (L c), φ c = B.ev i F := by
  classical
  constructor
  · rintro ⟨x, hx, rfl⟩ c
    obtain ⟨s, hs, hx⟩ := (D.mem_locW_iff w _ _).1 hx
    exact ⟨x.1 c, (lc_mem_locP _ _ _).2 ⟨s, hs, hx c⟩, rfl⟩
  · intro h
    choose F hF hφF using h
    let := B.I.clFin B.hI i
    let x : (B.I.S i).FormsK B.emb (B.lam i) (B.lf.fam i) := ⟨F, fun c γ => by
      apply evV_injective B.emb 1 (B.lam i) D.what₂.embLL (fr0 B.emb D.what₂.embLL _)
      have h1 := (hφ c).2 γ
      rw [hφF c, ← ev_rho] at h1
      exact h1⟩
    refine ⟨x, (D.mem_locW_iff w _ _).2 ?_, funext fun c => (hφF c).symm⟩
    choose s hs hsm using fun c => (lc_mem_locP _ _ _).1 (hF c)
    refine ⟨∏ c, s c, fun hm => ?_, fun c => ?_⟩
    · obtain ⟨c, -, hc⟩ := (Ideal.IsPrime.prod_mem_iff (hp := (D.plEq w).isPrime)).1 hm
      exact hs c hc
    · have e : (∏ c, s c) = (∏ c' ∈ Finset.univ.erase c, s c') * s c := by
        rw [mul_comm, Finset.mul_prod_erase _ _ (Finset.mem_univ c)]
      change (∏ c, s c) • F c ∈ _
      rw [e]
      exact (mul_smul _ (s c) (F c)).symm ▸ (delAtr B.emb (B.lam i) (L c)).smul_mem _ (hsm c)

include R in
theorem valIn_iff (w : D.what₂.places.Pl) (L : (B.I.S i).Cl → Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E))
    (W : M.Pt → Set M.Val) (hW : ∀ c y, y ∈ W (R.pt c.1 ((B.I.S i).rep c)) ↔ y ∈ wl M w (L c)) (φ : Fn B.ch i) :
    (∀ c, ∃ F ∈ B.valAt w i (L c), φ c = B.ev i F) ↔ M.ValIn W φ := by
  refine forall_congr' fun c => ?_
  replace hW : ∀ y, y ∈ W (M.rep c) ↔ y ∈ wl M w (L c) := fun y => (R.rep_eq c).symm ▸ hW c y
  constructor
  · rintro ⟨F, hF, e⟩
    have hm : B.ev i F ∈ M.Val := by
      rw [R.val_eq]
      exact evV_mem_ValC B.emb 1 _ D.what₂.embLL F
    exact ⟨⟨_, hm⟩, (hW _).2 ⟨F, hF, rfl⟩, e⟩
  · rintro ⟨y, hy, e⟩
    obtain ⟨F, hF, e'⟩ := (hW y).1 hy
    exact ⟨F, hF, e.trans e'⟩

theorem wl_hom (w : D.what₂.places.Pl) (b) (g : (B.I.S i).G b) (d : (B.I.S i).D b) {y : M.Val}
    (hy : y ∈ wl M w ((B.I.S i).Lsh b d)) : M.act (R.hom b g) y ∈ wl M w ((B.I.S i).Lsh b (g • d)) := by
  obtain ⟨F, hF, e⟩ := hy
  refine ⟨(B.I.S i).rho B.emb (B.lam i) b g F, ?_, by rw [R.act_hom, ev_rho, e]⟩
  obtain ⟨s, hs, hF⟩ := (lc_mem_locP _ _ _).1 hF
  refine (lc_mem_locP _ _ _).2 ⟨s, hs, ?_⟩
  have h : delAtr B.emb (B.lam i) ((B.I.S i).Lsh b (g • d)) = (delAtr B.emb (B.lam i) ((B.I.S i).Lsh b d)).map
      (((B.I.S i).rho B.emb (B.lam i) b g).restrictScalars (𝓞 D.what₂.LL)) := (B.lf.fam i b).del_smul g d
  rw [h]
  exact ⟨_, hF, LinearMap.map_smul_of_tower _ _ _⟩

theorem wl_zeta (w : D.what₂.places.Pl) (L : Submodule (𝓞 B.E) (Fin (D.R.N i) → B.E)) (ζ) {y : M.Val}
    (hy : y ∈ wl M w L) : M.act (R.zeta ζ) y ∈ wl M w L := by
  obtain ⟨F, hF, e⟩ := hy
  refine ⟨((ζ.1 : (D.what₂.LL)ˣ) : D.what₂.LL) • F, ?_, ?_⟩
  · exact (B.valAt w i _).smul_mem (⟨_, BarPass.isIntegral_torsion ζ⟩ : 𝓞 D.what₂.LL) hF
  · rw [R.act_zeta, BarPass.ev_smul, ← e]
    rfl

theorem woff_pt {w : D.what₂.places.Pl} (hw : ¬ OverT B.ch w) (b) (d : (B.I.S i).D b) (y : M.Val) :
    y ∈ woff R w (R.pt b d).1 ↔ y ∈ wl M w ((B.I.S i).Lsh b d) := by
  rw [mem_woff]
  constructor
  · intro h
    have := h 1 b d (by rw [one_smul])
    rwa [inv_one, map_one, Module.End.one_apply] at this
  · intro hy g b' d' h
    obtain ⟨ζ, g', rfl⟩ := R.gen b' g
    rw [mul_smul, ← R.pt_smul] at h
    obtain rfl := R.idx _ _ _ _ _ h
    obtain ⟨k, hk, -, hr⟩ := (R.fst _ _ _ _).1 h
    have hT : ((B.J.T : ℕ) : 𝓞 D.what₂.LL) ∉ (D.plEq w).asIdeal := fun hm =>
      hw (GlobalTheory.LvT.Inh.resChar_eq_of_mem_plEq D w B.hJ.T_prime hm)
    have e1 : (B.I.S i).Lsh b' (k • g' • d') = (B.I.S i).Lsh b' (g' • d') := by
      ext x
      have := (B.hI.step i).lsh_smul b' k (g' • d') x
      rwa [hk, Units.val_one, Matrix.one_mulVec] at this
    have e2 : B.valAt w i ((B.I.S i).Lsh b' (g' • d')) = B.valAt w i ((B.I.S i).Lsh b' d) := by
      rw [← e1, (B.hJ.tied i).Lsh_eq, (B.hJ.tied i).Lsh_eq]
      exact delAtr_off B.emb (B.lam i) ((B.hJ.tied i).ok _ _) ((B.hJ.tied i).ok _ _) sp.T_mem (sp.off_lat _ _ _ hr) hT
    have h1 : y ∈ wl M w ((B.I.S i).Lsh b' (g' • d')) := by
      obtain ⟨F, hF, e⟩ := hy
      exact ⟨F, by rw [e2]; exact hF, e⟩
    have h2 := wl_hom R w b' g'⁻¹ _ (wl_zeta R w _ ζ⁻¹ h1)
    rwa [inv_smul_smul, ← Module.End.mul_apply, ← map_mul, map_inv, map_inv, ← _root_.mul_inv_rev] at h2

theorem woff_act (w : D.what₂.places.Pl) (g : M.G) (p : M.Pt) (y : M.Val) (hy : y ∈ woff R w p.1) :
    M.act g y ∈ woff R w (g • p).1 := by
  rw [mem_woff] at hy ⊢
  intro h b d e
  have h1 := M.smul_fst g⁻¹ _ _ e
  rw [inv_smul_smul, ← mul_smul] at h1
  have h2 := hy _ b d h1
  rwa [_root_.mul_inv_rev, inv_inv, map_mul, Module.End.mul_apply] at h2

theorem gm_unit (w : D.what₂.places.Pl) {γ : GL (Fin (D.R.N i)) B.E} (hγ : γ.valᴴ * γ.val = 1) (τ : D.what₂.Tau) :
    Formalism.UG.bc D.what₂.embLL (gm R w ((B.ch.fm.tauOf w).symm τ) (Matrix.GeneralLinearGroup.map (R.iK _).toRingHom γ)) =
      invTrK (embGL (embAt D.what₂.embLL B.emb) γ) τ := by
  have e : B.Z.tauOf w (B.pr ((B.ch.fm.tauOf w).symm τ)) = τ := (B.Z.tauOf w).apply_symm_apply τ
  rw [gm_iK, e]
  split_ifs
  · exact Units.ext rfl
  · have h2 : (γ⁻¹).val = _ := Units.inv_eq_of_mul_eq_one_left hγ
    refine Units.ext (Matrix.ext fun a c => ?_)
    show _ = D.what₂.embLL (B.emb τ ((γ⁻¹).val c a))
    rw [h2]
    rfl

theorem coord_ok (hS : B.Sees) : (coord R hS).Ok := by
  refine { act_co := ?_, S_on := ?_, B_on := ?_, off_act := ?_, S_off := ?_ }
  · intro w _ g
    obtain ⟨γ, ζ, hγ, hl, ha⟩ := R.rat g
    obtain ⟨k, hk, h⟩ := (isOfFinOrder_iff_pow_eq_one).1 ((CommGroup.mem_torsion _).1 ζ.2)
    refine ⟨((ζ.1 : (D.what₂.LL)ˣ) : D.what₂.LL), k, hk, by rw [← Units.val_pow_eq_pow_val, h, Units.val_one], fun y => ?_⟩
    obtain ⟨F, hF⟩ := exists_pol R y
    have h1 := GlobalTheory.TilClass.trFr_fnOf B.emb D.what₂.embLL (B.lam i) γ ζ.1 F
    rw [← hF, ← map_smul] at h1
    have h2 : co M (M.act g y) = _ := co_of_eq ((ha y).trans h1)
    have h3 : co M y = _ := co_of_eq hF
    show co M (M.act g y) = _ • (coord R hS).mov w (fun v => M.loc v g) (co M y)
    rw [h2, h3, mov_eq]
    simp only [hl, gm_unit R w hγ]
    rfl
  · intro w hw φ hφ
    exact (forms_iff w (fun c => (B.I.S i).Lsh c.1 ((B.I.S i).rep c)) φ hφ).trans
      (valIn_iff R w _ _ (fun c y => (valIs R hS).dual w hw c.1 _ y) φ)
  · intro w hw hs v φ hφ
    exact (forms_iff w (fun c => (B.J.A i).ker c.1 ((B.I.S i).rep c) (B.pr v)) φ hφ).trans
      (valIn_iff R w _ _ (fun c y => valB_single R hS hw hs v c.1 _ y) φ)
  · intro w _ g p y
    refine ⟨?_, woff_act R w g p y⟩
    intro h
    have := woff_act R w g⁻¹ (g • p) _ h
    rwa [inv_smul_smul, ← Module.End.mul_apply, ← map_mul, inv_mul_cancel, map_one, Module.End.one_apply] at this
  · intro w hw φ hφ
    exact (forms_iff w (fun c => (B.I.S i).Lsh c.1 ((B.I.S i).rep c)) φ hφ).trans
      (valIn_iff R w _ (fun p => (woff R w p.1 : Set M.Val)) (fun c y => woff_pt R hw c.1 _ y) φ)

theorem exists_coord : ∀ (D : D7) (u : D.what₂.Word) (B : Built.Dat D u) (i : ℕ) (sp : Split (B.J.A i) B.J.T) (M : PtModel B.ch i) (R : B.Real i sp M), i ≤ D.R.m → B.Sees → ∃ Co : M.Coord, Co.Ok ∧ R.ValIs Co :=
  fun _ _ _ _ _ _ R _ hS => ⟨coord R hS, coord_ok R hS, valIs R hS⟩

end GlobalTheory.LvT.Built.ValLat
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCoordinatesValueLatticesEqWeylLattices =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsPointKernelRealisedModels =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsPointKernelRealisedModels", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermitianLatticeChartFamilyLawBasis\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Built

noncomputable section

namespace GlobalTheory.LvT.Built.KerExt

theorem exists_ext {G P T β X : Type} [Group G] [MulAction G P] [Group T] {H D : β → Type} [∀ b, Group (H b)]
    [∀ b, MulAction (H b) (D b)] (ρ : G → X → X) (ρ1 : ∀ x, ρ 1 x = x) (ρm : ∀ g h x, ρ (g * h) x = ρ g (ρ h x))
    (pt : ∀ b, D b → P) (hom : ∀ b, H b →* G) (zeta : T →* G)
    (pt_smul : ∀ b g d, pt b (g • d) = hom b g • pt b d)
    (gen : ∀ b (g : G), ∃ ζ g', g = zeta ζ * hom b g')
    (comm : ∀ ζ (g : G), zeta ζ * g = g * zeta ζ)
    (surj : ∀ p : P, ∃ ζ b d, p = zeta ζ • pt b d)
    (idx : ∀ ζ b b' d d', zeta ζ • pt b d = pt b' d' → b = b')
    (inj : ∀ ζ b d d', zeta ζ • pt b d = pt b d' → ∃ g : H b, g • d = d' ∧ ∀ x, ρ (hom b g) x = ρ (zeta ζ) x)
    (φ : ∀ b, D b → X) (hφ : ∀ b g d, φ b (g • d) = ρ (hom b g) (φ b d)) :
    ∃ Φ : P → X, (∀ b d, Φ (pt b d) = φ b d) ∧ ∀ g p, Φ (g • p) = ρ g (Φ p) := by
  have key : ∀ g ζ b d ζ' b' d', g • zeta ζ • pt b d = zeta ζ' • pt b' d' →
      ρ (zeta ζ') (φ b' d') = ρ g (ρ (zeta ζ) (φ b d)) := by
    intro g ζ b d ζ' b' d' h
    obtain ⟨ζ₀, g₀, rfl⟩ := gen b g
    have e : zeta (ζ'⁻¹ * ζ₀ * ζ) * hom b g₀ = (zeta ζ')⁻¹ * (zeta ζ₀ * hom b g₀ * zeta ζ) := by
      rw [map_mul, map_mul, map_inv, mul_assoc, comm ζ]
      simp only [mul_assoc]
    have h1 : zeta (ζ'⁻¹ * ζ₀ * ζ) • pt b (g₀ • d) = pt b' d' := by
      rw [pt_smul, ← mul_smul, e, mul_smul, mul_smul, h, inv_smul_smul]
    obtain rfl := idx _ _ _ _ _ h1
    obtain ⟨g₁, rfl, hg⟩ := inj _ _ _ _ h1
    rw [hφ, hg, hφ, ← ρm, ← ρm, ← ρm, mul_assoc, e, mul_inv_cancel_left]
  choose z i d hp using surj
  refine ⟨fun p => ρ (zeta (z p)) (φ (i p) (d p)), fun b x => ?_, fun g p => ?_⟩
  · have := key 1 1 b x (z (pt b x)) (i (pt b x)) (d (pt b x)) (by rw [← hp, map_one, one_smul, one_smul])
    exact this.trans (by rw [map_one, ρ1, ρ1])
  · exact key g (z p) (i p) (d p) _ _ _ (by rw [← hp, ← hp])

theorem exists_cplx {K V V' W W' : Type} [Field K] (σ : K →+* ℂ) [AddCommGroup V] [Module K V] [AddCommGroup V'] [Module K V']
    [AddCommGroup W] [Module ℂ W] [AddCommGroup W'] [Module ℂ W'] (e : V →ₛₗ[σ] W) (e' : V' →ₛₗ[σ] W')
    (li : LinearIndependent ℂ fun j => e (Module.Basis.ofVectorSpace K V j))
    (sp : Submodule.span ℂ (Set.range e) = ⊤) (f : V →ₗ[K] V') :
    ∃ fC : W →ₗ[ℂ] W', ∀ F, fC (e F) = e' (f F) := by
  set b := Module.Basis.ofVectorSpace K V
  have hmem : ∀ F, e F ∈ Submodule.span ℂ (Set.range fun j => e (b j)) := by
    intro F
    have hF : F ∈ Submodule.span K (Set.range b) := by rw [b.span_eq]; trivial
    induction hF using Submodule.span_induction with
    | mem x hx => obtain ⟨j, rfl⟩ := hx; exact Submodule.subset_span ⟨j, rfl⟩
    | zero => rw [map_zero]; exact Submodule.zero_mem _
    | add x y _ _ hx hy => rw [map_add (f := _)]; exact Submodule.add_mem _ hx hy
    | smul c x _ hx => rw [LinearMap.map_smulₛₗ]; exact Submodule.smul_mem _ _ hx
  have sp' : ⊤ ≤ Submodule.span ℂ (Set.range fun j => e (b j)) := by
    rw [← sp, Submodule.span_le]
    rintro _ ⟨F, rfl⟩
    exact hmem F
  let c := Module.Basis.mk li sp'
  refine ⟨c.constr ℂ fun j => e' (f (b j)), fun F => ?_⟩
  have h : (c.constr ℂ fun j => e' (f (b j))).comp e = e'.comp f := by
    refine b.ext fun j => ?_
    have : e (b j) = c j := by simp [c]
    simp only [LinearMap.comp_apply, this, Module.Basis.constr_basis]
  exact LinearMap.congr_fun h F

section Real

variable {D : D7} {u : D.what₂.Word} {B : Built.Dat D u} {i : ℕ} {sp : Split (B.J.A i) B.J.T} {M : PtModel B.ch i}
  (R : B.Real i sp M)

def evM : B.V i →ₛₗ[D.what₂.embLL] M.Val :=
  LinearMap.codRestrict M.Val (evV B.emb (1 : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) B.E) (B.lam i) D.what₂.embLL)
    fun F => by rw [R.val_eq]; exact evV_mem_ValC _ _ _ _ F

theorem evM_li : LinearIndependent ℂ fun j => evM R (Module.Basis.ofVectorSpace D.what₂.LL (B.V i) j) :=
  LinearIndependent.of_comp M.Val.subtype
    (evV_linearIndependent B.emb 1 (B.lam i) D.what₂.embLL (fr0 B.emb D.what₂.embLL _) _
      (Module.Basis.ofVectorSpace D.what₂.LL (B.V i)).linearIndependent)

theorem evM_span : Submodule.span ℂ (Set.range (evM R)) = ⊤ := by
  apply Submodule.map_injective_of_injective M.Val.subtype_injective
  rw [Submodule.map_span, Submodule.map_top, Submodule.range_subtype, ← Set.range_comp]
  exact (span_evV B.emb 1 (B.lam i) D.what₂.embLL).trans R.val_eq.symm

theorem evM_rho (b) (g : (B.I.S i).G b) (F : B.V i) :
    evM R ((B.I.S i).rho B.emb (B.lam i) b g F) = M.act (R.hom b g) (evM R F) := by
  apply Subtype.ext
  rw [R.act_hom]
  exact GStep.evV_rho_eq_tr _ _ _ _ b g F

theorem inj_act (ζ b d d') (h : R.zeta ζ • R.pt b d = R.pt b d') :
    ∃ g : (B.I.S i).G b, g • d = d' ∧ M.act (R.hom b g) = M.act (R.zeta ζ) := by
  obtain ⟨g, h1, h2, h3⟩ := (R.inj ζ b d d').1 h
  refine ⟨g, h3, LinearMap.ext fun y => Subtype.ext ?_⟩
  rw [R.act_hom, R.act_zeta]
  funext x
  refine (trFr_apply B.emb D.what₂.embLL ((B.I.S i).gam b g) ((B.I.S i).chr b g) y.1 x).trans ?_
  rw [h1, h2, inv_one, frMul_one]
  rfl

theorem inj_act_inv (ζ b) (g : (B.I.S i).G b) (h : M.act (R.hom b g) = M.act (R.zeta ζ)) :
    M.act (R.hom b g)⁻¹ = M.act (R.zeta ζ)⁻¹ := by
  calc M.act (R.hom b g)⁻¹ = M.act (R.hom b g)⁻¹ * (M.act (R.zeta ζ) * M.act (R.zeta ζ)⁻¹) := by
        rw [← map_mul, mul_inv_cancel, map_one, mul_one]
    _ = _ := by rw [← h, ← mul_assoc, ← map_mul, inv_mul_cancel, map_one, one_mul]

theorem ext_evM {W : Type} [AddCommGroup W] [Module ℂ W] {f g : M.Val →ₗ[ℂ] W} (h : ∀ F, f (evM R F) = g (evM R F)) :
    f = g :=
  LinearMap.ext_on_range (evM_span R) h

end Real

theorem exists_kerPt : ∀ (D : D7) (u : D.what₂.Word) (B : Built.Dat D u) (i : ℕ) (sp : Split (B.J.A i) B.J.T) (sp' : Split (B.J.A (i + 1)) B.J.T) (M : PtModel B.ch i) (M' : PtModel B.ch (i + 1)) (R : B.Real i sp M) (R' : B.Real (i + 1) sp' M') (k : B.Ker i) , Built.Dat.KerEq k → ∃ K : KerPt M M', K.TgtEq ∧ Built.Dat.KerIs R R' K k := by
  intro D u B i sp sp' M M' R R' k hk
  choose kC hkC using fun b b' d d' =>
    exists_cplx D.what₂.embLL (evM R) (evM R') (evM_li R) (evM_span R) (k b b' d d')
  have hequiv : ∀ b b' (g : (B.I.S i).G b) (g' : (B.I.S (i + 1)).G b') d d',
      kC b b' (g • d) (g' • d') = M'.act (R'.hom b' g') ∘ₗ kC b b' d d' ∘ₗ M.act (R.hom b g)⁻¹ := by
    intro b b' g g' d d'
    refine ext_evM R fun F => ?_
    rw [hkC, hk.equiv, ← map_inv]
    simp only [LinearMap.comp_apply]
    rw [evM_rho, ← evM_rho R, hkC]

  have h1 : ∀ b d, ∃ Φ : M'.Pt → (M.Val →ₗ[ℂ] M'.Val), (∀ b' d', Φ (R'.pt b' d') = kC b b' d d') ∧
      ∀ (g : M'.G) p, Φ (g • p) = M'.act g ∘ₗ Φ p := by
    intro b d
    refine exists_ext (fun (g : M'.G) (x : M.Val →ₗ[ℂ] M'.Val) => M'.act g ∘ₗ x) ?_ ?_ R'.pt R'.hom R'.zeta R'.pt_smul
      R'.gen R'.comm R'.surj (fun ζ b b' d d' h => R'.idx ζ b b' d d' (congrArg Prod.fst h)) ?_
      (fun b' d' => kC b b' d d') ?_
    · intro x
      simp only [map_one]
      rfl
    · intro g h x
      simp only [map_mul]
      rfl
    · intro ζ b' d₁ d₂ h
      obtain ⟨g, h1, h2⟩ := inj_act R' ζ b' d₁ d₂ h
      exact ⟨g, h1, fun x => by simp only [h2]⟩
    · intro b' g d'
      have := hequiv b b' 1 g d d'
      rw [one_smul, map_one, inv_one, map_one] at this
      exact this
  choose Φ hΦ hΦe using h1

  obtain ⟨Ψ, hΨ, hΨe⟩ : ∃ Ψ : M.Pt → M'.Pt → (M.Val →ₗ[ℂ] M'.Val), (∀ b d, Ψ (R.pt b d) = Φ b d) ∧
      ∀ (g : M.G) p, Ψ (g • p) = fun p' => Ψ p p' ∘ₗ M.act g⁻¹ := by
    refine exists_ext (fun (g : M.G) (x : M'.Pt → (M.Val →ₗ[ℂ] M'.Val)) p' => x p' ∘ₗ M.act g⁻¹) ?_ ?_ R.pt R.hom R.zeta
      R.pt_smul R.gen R.comm R.surj (fun ζ b b' d d' h => R.idx ζ b b' d d' (congrArg Prod.fst h)) ?_ Φ ?_
    · intro x
      simp only [inv_one, map_one]
      rfl
    · intro g h x
      simp only [mul_inv_rev, map_mul]
      rfl
    · intro ζ b d₁ d₂ h
      obtain ⟨g, h1, h2⟩ := inj_act R ζ b d₁ d₂ h
      exact ⟨g, h1, fun x => by simp only [inj_act_inv R ζ b g h2]⟩
    · intro b g d
      funext p'
      obtain ⟨ζ, b', d', rfl⟩ := R'.surj p'
      have := hequiv b b' g 1 d d'
      rw [one_smul, map_one, map_one] at this
      simp only [hΦe, hΦ, this]
      rfl
  have hpt : ∀ b b' d d', Ψ (R.pt b d) (R'.pt b' d') = kC b b' d d' := fun b b' d d' => by rw [hΨ, hΦ]
  refine ⟨⟨Ψ, fun g p p' y => ?_, fun c c' y => ?_⟩, fun g' p p' y => ?_, fun b b' d d' F y hy => ?_⟩
  · rw [hΨe]
    show Ψ p p' ((M.act g⁻¹ * M.act g) y) = _
    rw [← map_mul, inv_mul_cancel, map_one]
    rfl
  · rw [R.rep_eq, R'.rep_eq, hpt]
    have : B.ch.C.Kmap i c c' ∘ₗ M.Val.subtype =
        M'.Val.subtype ∘ₗ kC c.1 c'.1 ((B.I.S i).rep c) ((B.I.S (i + 1)).rep c') := by
      refine ext_evM R fun F => ?_
      simp only [LinearMap.comp_apply]
      rw [hkC]
      exact hk.kmap c c' F
    exact LinearMap.congr_fun this y
  · obtain ⟨ζ, b, d, rfl⟩ := R.surj p
    show Ψ _ _ y = M'.act g' (Ψ _ _ y)
    simp only [hΨe, hΨ, hΦe]
    rfl
  · obtain rfl : y = evM R F := Subtype.ext hy
    show (Ψ _ _ _).1 = _
    rw [hpt, hkC]
    rfl

end GlobalTheory.LvT.Built.KerExt
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsPointKernelRealisedModels =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValBOfInc =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValBOfInc", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Classical NumberField GlobalTheory.LvT
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

namespace GlobalTheory.LvT

theorem valB_of_inc : ∀ (D : D7) (u : D.what₂.Word) (X : Ch D u) (i : ℕ) (M : PtModel X i) (Co : M.Coord) (w : D.what₂.places.Pl) (V : Finset X.A.vT) (v : X.A.vT) (p p₁ : M.Pt), X.fm.seenP w = true → v ∈ V → M.Inc v p p₁ → Co.valB w V p₁ = Co.valB w (V.erase v) p := by
  intro D u X i M Co w V v p p₁ hw hv hI
  obtain ⟨-, hoff, x, -, -, hk, -⟩ := hI
  have key : ∀ v', (if X.fm.seenP w = true ∧ v' ∉ V then ((p₁.2 v').1.L : Set _) else (p₁.2 v').ker) =
      (if X.fm.seenP w = true ∧ v' ∉ V.erase v then ((p.2 v').1.L : Set _) else (p.2 v').ker) := by
    intro v'
    by_cases h : v' = v
    · subst h
      rw [if_neg (fun h => h.2 hv), if_pos ⟨hw, Finset.notMem_erase _ _⟩, hk]
    · rw [hoff v' h]
      have : v' ∈ V.erase v ↔ v' ∈ V := by simp [h]
      simp only [this]
  unfold PtModel.Coord.valB
  simp only [key]

end GlobalTheory.LvT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValBOfInc =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExtInOfValIn =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExtInOfValIn", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainTransitionIsExtKernelSum\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimePowSmulMemValueLatticeErase\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemFormsIffExistsEquivariantExtension\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.UopIsExt\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValBOfInc\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValueLatticeAddSubgroupSmulMoveLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Classical NumberField GlobalTheory.LvT
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

noncomputable section

namespace GlobalTheory.LvT.UKS

variable {D : D7} {u : D.what₂.Word} {X : Ch D u}

alias emb_mem_Fi := _root_.GlobalTheory.LvT.emb_mem_Fi

theorem inv_natCast_mem (w : D.what₂.places.Pl) (n : ℕ) (hn : ¬ D.what₂.places.resChar w ∣ n) :
    ((n : D.what₂.LL))⁻¹ ∈ Ow D w := by
  set p := D.what₂.places.resChar w with hp
  have hpr : p.Prime := D.what₂.places.resChar_prime w
  have hcop : Nat.Coprime p n := (Nat.Prime.coprime_iff_not_dvd hpr).2 hn
  have hint : ∀ z : ℤ, 0 ≤ D.what₂.places.val w (z : D.what₂.LL) := fun z => intCast_mem (Ow D w) z
  have hbez : ((p : ℤ) * Nat.gcdA p n + (n : ℤ) * Nat.gcdB p n) = 1 := by
    have := Nat.gcd_eq_gcd_ab p n
    rw [hcop.gcd_eq_one] at this
    exact_mod_cast this.symm
  have hbez' : (p : D.what₂.LL) * ((Nat.gcdA p n : ℤ) : D.what₂.LL) + (n : D.what₂.LL) * ((Nat.gcdB p n : ℤ) : D.what₂.LL) = 1 := by
    exact_mod_cast congrArg (fun z : ℤ => (z : D.what₂.LL)) hbez
  have hvp : 0 < D.what₂.places.val w (p : D.what₂.LL) := by
    rw [hp, D.what₂.places.val_resChar w]
    have := D.what₂.places.ramIdx_pos w
    exact_mod_cast this
  have hvn : D.what₂.places.val w (n : D.what₂.LL) = 0 := by
    have h0 : 0 ≤ D.what₂.places.val w (n : D.what₂.LL) := by exact_mod_cast hint n
    by_contra hne
    have hpos : 0 < D.what₂.places.val w (n : D.what₂.LL) := lt_of_le_of_ne h0 (Ne.symm hne)
    have h1 : 0 < D.what₂.places.val w ((p : D.what₂.LL) * ((Nat.gcdA p n : ℤ) : D.what₂.LL)) := by
      rw [AddValuation.map_mul]; exact add_pos_of_pos_of_nonneg hvp (hint _)
    have h2 : 0 < D.what₂.places.val w ((n : D.what₂.LL) * ((Nat.gcdB p n : ℤ) : D.what₂.LL)) := by
      rw [AddValuation.map_mul]; exact add_pos_of_pos_of_nonneg hpos (hint _)
    have h3 := (D.what₂.places.val w).map_lt_add h1 h2
    rw [hbez', AddValuation.map_one] at h3
    exact lt_irrefl _ h3
  show 0 ≤ D.what₂.places.val w ((n : D.what₂.LL))⁻¹
  rw [AddValuation.map_inv, hvn]
  simp

section
variable {i : ℕ} {M : PtModel X i} (Co : M.Coord)

def ExtIn (w : D.what₂.places.Pl) (V : Finset X.A.vT) (φ : Fn X i) : Prop :=
  ∃ Φ, M.IsExt φ Φ ∧ ∀ p, Φ p ∈ Co.valB w V p

variable {Co}

theorem extIn_of_valIn (hC : Co.Ok) {w} (hw : OverT X w) {V} {φ : Fn X i} (hφ : φ ∈ X.fm.Fi i)
    (h : M.ValIn (Co.valB w V) φ) : ExtIn Co w V φ := by
  obtain ⟨Φ, hΦ⟩ := (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i M φ).1 hφ
  refine ⟨Φ, hΦ, fun p => ?_⟩
  obtain ⟨c, g, rfl⟩ := M.rep_surj p
  obtain ⟨y, hy, hyc⟩ := h c
  have : Φ (M.rep c) = y := Subtype.ext ((hΦ.1 c).symm.trans hyc)
  rw [hΦ.2, this]
  exact (_root_.GlobalTheory.LvT.ValEq.valB_laws D u X i M Co hC w hw V _).2.2.2 g y hy

theorem ExtIn.mem_Fi {w V} {φ : Fn X i} (h : ExtIn Co w V φ) : φ ∈ X.fm.Fi i := by
  obtain ⟨Φ, hΦ, -⟩ := h
  exact (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i M φ).2 ⟨Φ, hΦ⟩

theorem ExtIn.valIn {w V} {φ : Fn X i} (h : ExtIn Co w V φ) : M.ValIn (Co.valB w V) φ := by
  obtain ⟨Φ, hΦ, h⟩ := h
  exact fun c => ⟨_, h _, hΦ.1 c⟩

theorem isExt_smul {φ : Fn X i} {Φ} (h : M.IsExt φ Φ) (a : ℂ) : M.IsExt (a • φ) (fun p => a • Φ p) := by
  refine ⟨fun c => ?_, fun g p => ?_⟩
  · show a • φ c = _
    rw [h.1 c]; rfl
  · simp only [h.2, map_smul]

theorem pow_smul_mem (hC : Co.Ok) {w} (hw : OverT X w) {V p y} (hy : y ∈ Co.valB w V p) (n : ℕ) :
    ((X.A.T : ℂ) ^ n) • y ∈ Co.valB w V p := by
  have := (_root_.GlobalTheory.LvT.ValEq.valB_laws D u X i M Co hC w hw V p).2.2.1 ((X.A.T : D.what₂.LL) ^ n)
    (pow_mem (natCast_mem _ _) n) y hy
  simpa using this

theorem ExtIn.pow_smul (hC : Co.Ok) {w} (hw : OverT X w) {V} {φ : Fn X i} (h : ExtIn Co w V φ) (n : ℕ) :
    ExtIn Co w V (((X.A.T : ℂ) ^ n) • φ) := by
  obtain ⟨Φ, hΦ, h⟩ := h
  exact ⟨_, isExt_smul hΦ _, fun p => pow_smul_mem hC hw (h p) n⟩

theorem ExtIn.uop (hC : Co.Ok) {w} (hw : OverT X w) (hs : X.fm.seenP w = true) {V v} (hv : v ∈ V)
    {φ : Fn X i} (h : ExtIn Co w V φ) : ExtIn Co w (V.erase v) (Uop X i v φ) := by
  obtain ⟨Φ, hΦ, h⟩ := h
  refine ⟨_, _root_.GlobalTheory.LvT.uop_isExt D u X i M v φ Φ hΦ, fun p => ?_⟩
  have hv' := _root_.GlobalTheory.LvT.ValEq.valB_laws D u X i M Co hC w hw (V.erase v) p
  refine finsum_mem_induction (fun y => y ∈ Co.valB w (V.erase v) p) hv'.1
    (fun y y' hy hy' => hv'.2.1 y hy y' hy') fun p₁ hp₁ => ?_
  rw [← GlobalTheory.LvT.valB_of_inc D u X i M Co w V v p p₁ hs hv hp₁]
  exact h p₁

theorem ExtIn.uops (hC : Co.Ok) {w} (hw : OverT X w) (hs : X.fm.seenP w = true) {V}
    {φ : Fn X i} (h : ExtIn Co w V φ) (l : List X.A.vT) (hl : l.Nodup) (hV : ∀ v ∈ l, v ∈ V) :
    ExtIn Co w (V \ l.toFinset) (l.foldr (fun v g => (Uop X i v).comp g) LinearMap.id φ) := by
  induction l with
  | nil => simpa using h
  | cons v l ih =>
    rw [List.nodup_cons] at hl
    have h1 := ih hl.2 (fun v' hv' => hV v' (List.mem_cons_of_mem _ hv'))
    have h2 := h1.uop hC hw hs (v := v) (by simp [hl.1, hV v List.mem_cons_self])
    have e : (V \ l.toFinset).erase v = V \ (v :: l).toFinset := by
      ext x; simp; tauto
    rw [e] at h2
    exact h2

theorem ExtIn.drop (hC : Co.Ok) {w} (hw : OverT X w) (hs : X.fm.seenP w = true) {V}
    {φ : Fn X i} (h : ExtIn Co w V φ) (A : Finset X.A.vT) (hA : A ⊆ V) :
    ExtIn Co w (V \ A)
      (((X.A.T : ℂ) ^ (∑ v ∈ A, (PtModel.lamT X i (X.fm.tauOf w v)).w ⟨0, D.R.N_pos i⟩)) • φ) := by
  have hT : (X.A.T : ℂ) ≠ 0 := by exact_mod_cast X.A.T_prime.ne_zero
  induction A using Finset.induction_on with
  | empty => simpa using h
  | insert v A hv ih =>
    obtain ⟨Φ, hΦ, h1⟩ := ih ((Finset.subset_insert _ _).trans hA)
    have e : (V \ A).erase v = V \ insert v A := by
      ext x; simp; tauto
    rw [Finset.sum_insert hv, zpow_add₀ hT, mul_smul, ← e]
    exact ⟨_, isExt_smul hΦ _, fun p => _root_.GlobalTheory.LvT.pow_smul_mem_valB_erase D u X i M Co hC w hw hs _ v
      (by simp [hv, hA (Finset.mem_insert_self _ _)]) p _ (h1 p)⟩

end

theorem extIn_K {i : ℕ} {M : PtModel X i} {M' : PtModel X (i + 1)} {Co : M.Coord} {Co' : M'.Coord}
    (hC' : Co'.Ok) (K : KerPt M M') (hK : K.TgtEq) {w} (hw : OverT X w)
    (hst : ∀ c, ¬ X.A.T ∣ Nat.card (X.C.stab i c)) (a : ℂ) {V}
    (ha : ∀ p p', ∀ y ∈ Co.valB w ∅ p, a • K.k p p' y ∈ Co'.valB w V p')
    {φ : Fn X i} (h : ExtIn Co w ∅ φ) : ExtIn Co' w V (a • KT X i φ) := by
  obtain ⟨Φ, hΦ, h⟩ := h
  refine ⟨_, isExt_smul (GlobalTheory.LvT.isExt_KT D u X i M M' K φ Φ hK hΦ) a, fun p' => ?_⟩
  have hv := _root_.GlobalTheory.LvT.ValEq.valB_laws D u X (i + 1) M' Co' hC' w hw V p'
  simp only [Finset.smul_sum]
  refine Finset.sum_induction _ (fun y => y ∈ Co'.valB w V p') (fun y y' hy hy' => hv.2.1 y hy y' hy') hv.1
    fun c _ => ?_
  rw [smul_comm]
  have := hv.2.2.1 _ (inv_natCast_mem w (Nat.card (X.C.stab i c)) (by rw [show _ = _ from hw]; exact hst c)) _
    (ha _ p' _ (h (M.rep c)))
  simpa [ColumnChain.wt] using this

theorem ukSharp (D : D7) (u : D.what₂.Word) (X : Ch D u) (Lv : LevTie X) (Vt : ValTie Lv) (Kt : KerTie Lv)
    (hK : KerLaws Vt Kt) (hst : StabUnit X) (hW : WtBounds X) : UKSharp X := by
  intro w hw i hi x hx
  have hT : (X.A.T : ℂ) ≠ 0 := by exact_mod_cast X.A.T_prime.ne_zero
  have hC := (Vt i hi.le).2
  have hC' := (Vt (i + 1) hi).2
  have h0 : ExtIn (Vt i hi.le).1 w ∅ (X.fm.emb i x) :=
    extIn_of_valIn hC hw (emb_mem_Fi X i x) ((hC.S_on w hw _ (emb_mem_Fi X i x)).1 ⟨x, hx, rfl⟩)
  suffices h : ExtIn (Vt (i + 1) hi).1 w ∅
      (tpow X (if X.fm.seenP w then 2 * ∑ τ, Wt X τ + D.R.f * D.R.N D.R.m else 0) •
        Uprod X (i + 1) w (KT X i (X.fm.emb i x))) from (hC'.S_on w hw _ h.mem_Fi).2 h.valIn
  by_cases hs : X.fm.seenP w = true
  · have h1 := extIn_K hC' (Kt i hi) (hK.tgt i hi) hw (hst i hi.le) _ (hK.intP i hi w hw hs) h0
    have h2 := h1.uops hC' hw hs (VVT X w).toList (Finset.nodup_toList _) (fun v _ => Finset.mem_univ v)
    have h3 := h2.drop hC' hw hs _ (Finset.Subset.refl _)
    rw [Finset.sdiff_self, Finset.toList_toFinset, map_smul, smul_smul, ← zpow_add₀ hT] at h3
    set e : ℤ := ∑ v ∈ Finset.univ \ VVT X w, (PtModel.lamT X (i + 1) (X.fm.tauOf w v)).w ⟨0, D.R.N_pos _⟩ +
      (((D.R.f * D.R.N i : ℕ) : ℤ) + ∑ τ, X.C.sDiv i τ) with he
    have hle : e ≤ ((2 * ∑ τ, Wt X τ + D.R.f * D.R.N D.R.m : ℕ) : ℤ) := by
      have a1 : ∑ v ∈ Finset.univ \ VVT X w, (PtModel.lamT X (i + 1) (X.fm.tauOf w v)).w ⟨0, D.R.N_pos _⟩ ≤
          ∑ τ, (Wt X τ : ℤ) := by
        rw [← Equiv.sum_comp (X.fm.tauOf w)]
        refine le_trans (Finset.sum_le_sum fun v hv => (hW.2 i hi _).2.2.2 ?_)
          (Finset.sum_le_sum_of_subset_of_nonneg (Finset.subset_univ _) fun _ _ _ => Int.natCast_nonneg _)
        simpa [VVT, hs] using hv
      have a2 : ∑ τ, X.C.sDiv i τ ≤ ∑ τ, (Wt X τ : ℤ) := Finset.sum_le_sum fun τ _ => (hW.2 i hi τ).2.1
      have a3 : D.R.f * D.R.N i ≤ D.R.f * D.R.N D.R.m :=
        Nat.mul_le_mul_left _ (Nat.add_le_add_left (Nat.mul_le_mul_right _ hi.le) _)
      have a3' : ((D.R.f * D.R.N i : ℕ) : ℤ) ≤ ((D.R.f * D.R.N D.R.m : ℕ) : ℤ) := by exact_mod_cast a3
      rw [he, Nat.cast_add, Nat.cast_mul 2, Nat.cast_sum]
      simp only [Nat.cast_ofNat]
      linarith
    obtain ⟨n, hn⟩ := Int.le.dest hle
    have h4 := h3.pow_smul hC' hw n
    rw [smul_smul, ← zpow_natCast, ← zpow_add₀ hT, add_comm (n : ℤ), hn, zpow_natCast] at h4
    rw [if_pos hs]
    exact h4
  · have hs' : X.fm.seenP w = false := by simpa using hs
    have h1 := extIn_K (V := ∅) hC' (Kt i hi) (hK.tgt i hi) hw (hst i hi.le) 1 (fun p p' y hy => by
      obtain ⟨y', hy', e⟩ := hK.bar i hi w hw hs' p p' y hy
      rw [one_smul, e]
      exact pow_smul_mem hC' hw hy' _) h0
    rw [if_neg hs]
    simpa [tpow, Uprod, VVT, hs'] using h1

end GlobalTheory.LvT.UKS
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExtInOfValIn =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainTransitionIsExtKernelSum\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeIncidenceFiniteFibresStable\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemFormsIffExistsEquivariantExtension\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.UopIsExt\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT

open Formalism.BasicNotions Classical NumberField
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

variable {D : D7} {u : D.what₂.Word} {X : Ch D u} {i : ℕ}

namespace PtModel

variable (M : PtModel X i)

theorem inc_eq_image (v : X.A.vT) (p : M.Pt) :
    {p₁ | M.Inc v p p₁} =
      (fun q => ((p.1, Function.update p.2 v q) : M.Pt)) '' {q | (p.2 v).Inc q} := by
  ext p₁
  constructor
  · rintro ⟨h1, h2, h3⟩
    refine ⟨p₁.2 v, h3, ?_⟩
    refine Prod.ext h1.symm ?_
    funext v'
    by_cases hv : v' = v
    · subst hv; simp
    · simp [Function.update_of_ne hv, h2 v' hv]
  · rintro ⟨q, hq, rfl⟩
    refine ⟨rfl, fun v' hv => by simp [Function.update_of_ne hv], ?_⟩
    simpa using hq

theorem update_pt_injective (v : X.A.vT) (p : M.Pt) :
    Function.Injective (fun q => ((p.1, Function.update p.2 v q) : M.Pt)) := by
  intro q q' h
  have := congrArg (fun r : M.Pt => r.2 v) h
  simpa using this

theorem finsum_inc_eq (v : X.A.vT) (p : M.Pt) (F : M.Pt → M.Val) :
    (∑ᶠ p₁ ∈ {p₁ | M.Inc v p p₁}, F p₁) =
      ∑ᶠ q ∈ {q | (p.2 v).Inc q}, F (p.1, Function.update p.2 v q) := by
  rw [inc_eq_image, finsum_mem_image (M.update_pt_injective v p).injOn]

theorem finite_inc_loc (v : X.A.vT) (p : M.Pt) : {q | (p.2 v).Inc q}.Finite := by
  have h := ((_root_.GlobalTheory.LvT.inc_finite_stable D u X i M v).1 p).1
  rw [inc_eq_image] at h
  exact Set.Finite.of_finite_image h (M.update_pt_injective v p).injOn

theorem finsum_inc_comm (v v' : X.A.vT) (p : M.Pt) (F : M.Pt → M.Val) :
    (∑ᶠ p₁ ∈ {p₁ | M.Inc v p p₁}, ∑ᶠ p₂ ∈ {p₂ | M.Inc v' p₁ p₂}, F p₂) =
      ∑ᶠ p₁ ∈ {p₁ | M.Inc v' p p₁}, ∑ᶠ p₂ ∈ {p₂ | M.Inc v p₁ p₂}, F p₂ := by
  by_cases hv : v = v'
  · subst hv; rfl
  have hv' : v' ≠ v := fun h => hv h.symm
  rw [finsum_inc_eq, finsum_inc_eq]
  simp only [finsum_inc_eq, Function.update_of_ne hv, Function.update_of_ne hv']
  rw [finsum_mem_comm _ (M.finite_inc_loc v p) (M.finite_inc_loc v' p)]
  simp only [Function.update_comm hv]

end PtModel

theorem formsStable_of_tgtEq : ∀ (D : D7) (u : D.what₂.Word) (X : Ch D u) (Lv : LevTie X) (Kt : KerTie Lv),
    (∀ i h, (Kt i h).TgtEq) → FormsStable X := by
  intro D u X Lv Kt hK
  refine ⟨fun i hi v φ hφ => ?_, fun i hi v v' φ hφ => ?_, fun i hi φ hφ => ?_⟩
  · obtain ⟨Φ, hΦ⟩ := (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i (Lv i hi) φ).1 hφ
    exact (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i (Lv i hi) _).2 ⟨_, _root_.GlobalTheory.LvT.uop_isExt D u X i (Lv i hi) v φ Φ hΦ⟩
  · obtain ⟨Φ, hΦ⟩ := (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i (Lv i hi) φ).1 hφ
    have h1 := _root_.GlobalTheory.LvT.uop_isExt D u X i (Lv i hi) v _ _ (_root_.GlobalTheory.LvT.uop_isExt D u X i (Lv i hi) v' φ Φ hΦ)
    have h2 := _root_.GlobalTheory.LvT.uop_isExt D u X i (Lv i hi) v' _ _ (_root_.GlobalTheory.LvT.uop_isExt D u X i (Lv i hi) v φ Φ hΦ)
    funext c
    rw [h1.1 c, h2.1 c]
    simp only []
    rw [(Lv i hi).finsum_inc_comm v v']
  · obtain ⟨Φ, hΦ⟩ := (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i (Lv i hi.le) φ).1 hφ
    exact (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X (i + 1) (Lv (i + 1) hi) _).2
      ⟨_, _root_.GlobalTheory.LvT.isExt_KT D u X i (Lv i hi.le) (Lv (i + 1) hi) (Kt i hi) φ Φ (hK i hi) hΦ⟩

end GlobalTheory.LvT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.HeckeLawPointKernelOfCoefficientKernel =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.HeckeLawPointKernelOfCoefficientKernel", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvSmulMemOfRedL\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeIncidenceFiniteFibresStable\nimport Formalism.LocalToGlobal.Columns.PolyFnLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.UK

open NumberField IsDedekindDomain Matrix
open Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Pts
open Formalism.HermitianLatticesTheory (localization₂)

section Corr

variable {q : ℕ} {F : Type} [Field F] {Lc Lc' : LocF q F} {n : ℕ} (e : Lc'.K ≃+* Lc.K)

def Corr (p : LocF.PP Lc n) (r : LocF.PP Lc' n) : Prop :=
  ∀ x : Fin n → Lc'.K, ((fun a => e (x a)) ∈ p.1.L ↔ x ∈ r.1.L) ∧ p.1.f (fun a => e (x a)) = r.1.f x

variable {e}

theorem vec_surj (e : Lc'.K ≃+* Lc.K) (y : Fin n → Lc.K) : ∃ x : Fin n → Lc'.K, y = fun a => e (x a) :=
  ⟨fun a => e.symm (y a), funext fun a => (e.apply_symm_apply _).symm⟩

theorem Corr.eq_iff {p p' : LocF.PP Lc n} {r r' : LocF.PP Lc' n} (h : Corr e p r) (h' : Corr e p' r') : p = p' ↔ r = r' := by
  constructor
  · rintro rfl
    exact pp_ext (fun x => (h x).1.symm.trans (h' x).1) fun x _ => (h x).2.symm.trans (h' x).2
  · rintro rfl
    refine pp_ext (fun y => ?_) fun y _ => ?_
    · obtain ⟨x, rfl⟩ := vec_surj e y
      exact (h x).1.trans (h' x).1.symm
    · obtain ⟨x, rfl⟩ := vec_surj e y
      exact (h x).2.trans (h' x).2.symm

theorem Corr.inc_iff {p p' : LocF.PP Lc n} {r r' : LocF.PP Lc' n} (h : Corr e p r) (h' : Corr e p' r') :
    p.Inc p' ↔ r.Inc r' := by
  have hk : ∀ x : Fin n → Lc'.K, (fun a => e (x a)) ∈ p'.ker ↔ x ∈ r'.ker := fun x =>
    and_congr (h' x).1 (by rw [(h' x).2])
  have hs : ∀ x : Fin n → Lc'.K, ((q : Lc.K)⁻¹ • fun a => e (x a)) = fun a => e (((q : Lc'.K)⁻¹ • x) a) := fun x => by
    funext a
    simp
  have key : ∀ x : Fin n → Lc'.K, (p.1.f (fun a => e (x a)) = 1 ∧ p.IsUp (fun a => e (x a)) p') ↔ (r.1.f x = 1 ∧ r.IsUp x r') := by
    intro x
    unfold LocF.PP.IsUp
    rw [(h x).2, (h x).1, hs, (h' _).2]
    refine and_congr Iff.rfl (and_congr Iff.rfl (and_congr ?_ Iff.rfl))
    constructor
    · intro hh
      ext z
      rw [← hk, hh]
      exact (h z).1
    · intro hh
      ext y
      obtain ⟨z, rfl⟩ := vec_surj e y
      rw [hk, hh]
      exact (h z).1.symm
  constructor
  · rintro ⟨y, hy⟩
    obtain ⟨x, rfl⟩ := vec_surj e y
    exact ⟨x, (key x).1 hy⟩
  · rintro ⟨x, hx⟩
    exact ⟨_, (key x).2 hx⟩

end Corr

section Step

variable {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] {n : ℕ} {S : GStep E K n}
  {ST : Finset (HeightOneSpectrum (𝓞 E))} {A : TDat S ST} {T : ℕ}

theorem tAt (sp : Split A T) : TAt T ST :=
  ⟨fun P => ⟨sp.T_mem P.1 P.2, sp.T_nsq P.1 P.2⟩, fun P Q => sp.nonconj P.1 P.2 Q.1 Q.2⟩

theorem eq_of_pair (sp : Split A T) (ht : A.Tied T) {b : S.β} {d d' : S.D b} (ho : (sp.off b).r d d')
    (hp : ∀ P, pair ((tAt sp).unif P) _ (ht.ok b d) = pair ((tAt sp).unif P) _ (ht.ok b d')) : d = d' :=
  sp.ext b d d' ho (deco_ext (tAt sp) (ht.ok b d) (ht.ok b d')
    (fun w hw => sp.off_lat b d d' ho w fun P hP => hw ⟨P, hP⟩) hp)

theorem pair_eq_of_deco {P : ST} (h : Unif T P.1) {d d' : Deco E n ST ∅} (hd : d.Ok) (e : d = d') :
    pair h d hd = pair h d' (e ▸ hd) := by subst e; rfl

theorem above_off (sp : Split A T) {b : S.β} {P : ST} {d d₁ : S.D b} (h : Above A b P d d₁) : (sp.off b).r d d₁ := by
  obtain ⟨x, hx, hf, rfl⟩ := h
  exact sp.off_up b d P x hx hf

theorem above_iff (sp : Split A T) (ht : A.Tied T) {b : S.β} (P : ST) {d d₁ : S.D b} (ho : (sp.off b).r d d₁) :
    Above A b P d d₁ ↔
      (∀ Q, Q ≠ P → pair ((tAt sp).unif Q) _ (ht.ok b d₁) = pair ((tAt sp).unif Q) _ (ht.ok b d)) ∧
      (pair ((tAt sp).unif P) _ (ht.ok b d)).Inc (pair ((tAt sp).unif P) _ (ht.ok b d₁)) := by
  have h := tAt sp
  have hd := ht.ok b d
  constructor
  · rintro ⟨x, hx, hf, rfl⟩
    have e := ht.up_deco b d P x hx hf
    refine ⟨fun Q hQ => ?_, ?_⟩
    · rw [pair_eq_of_deco _ _ e]
      exact pair_up_ne h hd hQ hx _
    · rw [pair_eq_of_deco _ (ht.ok b (A.up b d P x)) e]
      refine ⟨x, hf, le_locP _ _ hx, ?_, ?_⟩
      · ext y
        rw [mem_pair_ker _ (h.ne P), hd.dnN_up P (h.move P) (h.unif P).mem (h.unif P).nsq hx hf]
        rfl
      · have := hd.up_f_inv P (h.move P) (h.unif P).mem (h.unif P).nsq hx hf
        rw [map_natCast] at this
        exact this
  · rintro ⟨h1, x, hf, hp⟩
    have hx : x ∈ localization₂ P.1.asIdeal (A.N b d) := hp.1
    obtain ⟨x', hx', hr⟩ := redL_surj (redL (A.N b d) P.1 x)
    have hx'' : x' ∈ localization₂ P.1.asIdeal (A.N b d) := le_locP _ _ hx'
    have hf' : A.f b d P x' = 1 := by
      have hneg : (-1 : GlobalTheory.LvT.Inh.valO P.1) • x ∈ localization₂ P.1.asIdeal (A.N b d) := (locO P.1 _).smul_mem _ hx
      have h0 : redL (A.N b d) P.1 (x' + (-1 : GlobalTheory.LvT.Inh.valO P.1) • x) = 0 := by
        rw [redL_add hx'' hneg, redL_smul _ hx, hr, map_neg, map_one, neg_one_smul, add_neg_cancel]
      have h2 := inv_smul_mem_of_redL (h.unif P) ((localization₂ _ _).add_mem hx'' hneg) h0
      have h3 := hd.f_smul P (T : 𝓞 E) _ h2
      rw [Ideal.Quotient.eq_zero_iff_mem.2 (h.unif P).mem, zero_mul, ← algebraMap_smul E (T : 𝓞 E), map_natCast,
        smul_inv_smul₀ (h.unif P).ne_zero] at h3
      have e : x' = (x' + (-1 : GlobalTheory.LvT.Inh.valO P.1) • x) + x := by rw [neg_one_smul]; abel
      have h4 := hd.f_add P _ ((localization₂ _ _).add_mem hx'' hneg) _ hx
      rw [← e, h3, zero_add] at h4
      exact h4.trans hf
    refine ⟨x', hx', hf', ?_⟩
    have e := ht.up_deco b d P x' hx' hf'
    refine eq_of_pair sp ht ((sp.off b).trans ((sp.off b).symm ho) (sp.off_up b d P x' hx' hf')) fun Q => ?_
    rw [pair_eq_of_deco _ (ht.ok b (A.up b d P x')) e]
    by_cases hQ : Q = P
    · subst hQ
      exact (pair_up h hd Q hx' hf' hr hp _).symm
    · rw [h1 Q hQ]
      exact (pair_up_ne h hd hQ hx' _).symm

end Step

section Real

variable {D : D7} {u : D.what₂.Word} {B : Built.Dat D u} {i : ℕ} {sp : Split (B.J.A i) B.J.T} {M : PtModel B.ch i}
  (R : B.Real i sp M)

theorem corr_pt (b : (B.I.S i).β) (d : (B.I.S i).D b) (P : B.ch.A.vT) :
    Corr (Lc := M.Lc P) (Lc' := locF ((tAt sp).unif (B.pr P))) (R.iK P) ((R.pt b d).2 P)
      (pair ((tAt sp).unif (B.pr P)) _ ((B.hJ.tied i).ok b d)) :=
  fun x => ⟨R.pt_L b d P x, R.pt_f b d P x⟩

theorem fst_of_off {b : (B.I.S i).β} {d d' : (B.I.S i).D b} (h : (sp.off b).r d d') : (R.pt b d).1 = (R.pt b d').1 := by
  have := (R.fst 1 b d d').2 ⟨1, map_one _, map_one _, by rwa [one_smul]⟩
  rwa [map_one, one_smul] at this

theorem exists_pt {b : (B.I.S i).β} (d : (B.I.S i).D b) {p : M.Pt} (h : p.1 = (R.pt b d).1) :
    ∃ d', (sp.off b).r d' d ∧ p = R.pt b d' := by
  obtain ⟨ζ, b₁, d₁, rfl⟩ := R.surj p
  obtain rfl := R.idx ζ b₁ b d₁ d h
  obtain ⟨g, h1, h2, h3⟩ := (R.fst ζ b₁ d₁ d).1 h
  exact ⟨_, h3, (R.inj ζ b₁ d₁ _).2 ⟨g, h1, h2, rfl⟩⟩

theorem pt_inj {b : (B.I.S i).β} {d d' : (B.I.S i).D b} (ho : (sp.off b).r d d') (h : R.pt b d = R.pt b d') : d = d' :=
  eq_of_pair sp (B.hJ.tied i) ho fun (P : B.ch.A.vT) =>
    ((corr_pt R b d P).eq_iff (corr_pt R b d' P)).1 (by rw [h])

theorem inc_iff {b : (B.I.S i).β} (v : B.ch.A.vT) {d d' : (B.I.S i).D b} (ho : (sp.off b).r d d') :
    M.Inc v (R.pt b d) (R.pt b d') ↔ Above (B.J.A i) b (B.pr v) d d' := by
  rw [above_iff sp (B.hJ.tied i) (B.pr v) ho]
  constructor
  · rintro ⟨-, h2, h3⟩
    exact ⟨fun (Q : B.ch.A.vT) hQ => ((corr_pt R b d' Q).eq_iff (corr_pt R b d Q)).1 (h2 Q hQ),
      ((corr_pt R b d v).inc_iff (corr_pt R b d' v)).1 h3⟩
  · rintro ⟨h2, h3⟩
    exact ⟨(fst_of_off R ho).symm, fun Q hQ => ((corr_pt R b d' Q).eq_iff (corr_pt R b d Q)).2 (h2 Q hQ),
      ((corr_pt R b d v).inc_iff (corr_pt R b d' v)).2 h3⟩

theorem above_image (g : M.G) {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    {p₁ | M.Inc v (g • R.pt b d) p₁} = (fun d₁ => g • R.pt b d₁) '' {d₁ | Above (B.J.A i) b (B.pr v) d d₁} := by
  have hs := (inc_finite_stable D u _ i M v).2.1
  ext p₁
  constructor
  · intro h
    have h' := (hs g⁻¹ _ _).1 h
    rw [inv_smul_smul] at h'
    obtain ⟨d', ho, e⟩ := exists_pt R d h'.1
    rw [e] at h'
    exact ⟨d', (inc_iff R v ((sp.off b).symm ho)).1 h', by beta_reduce; rw [← e, smul_inv_smul]⟩
  · rintro ⟨d', h, rfl⟩
    exact (hs g _ _).1 ((inc_iff R v (above_off sp h)).2 h)

theorem below_image (g : M.G) {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    {p₀ | M.Inc v p₀ (g • R.pt b d)} = (fun d₀ => g • R.pt b d₀) '' {d₀ | Above (B.J.A i) b (B.pr v) d₀ d} := by
  have hs := (inc_finite_stable D u _ i M v).2.1
  ext p₀
  constructor
  · intro h
    have h' := (hs g⁻¹ _ _).1 h
    rw [inv_smul_smul] at h'
    obtain ⟨d', ho, e⟩ := exists_pt R d h'.1.symm
    rw [e] at h'
    exact ⟨d', (inc_iff R v ho).1 h', by beta_reduce; rw [← e, smul_inv_smul]⟩
  · rintro ⟨d', h, rfl⟩
    exact (hs g _ _).1 ((inc_iff R v (above_off sp h)).2 h)

theorem above_injOn (g : M.G) {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    Set.InjOn (fun d₁ => g • R.pt b d₁) {d₁ | Above (B.J.A i) b (B.pr v) d d₁} := fun _ h _ h' e =>
  pt_inj R ((sp.off b).trans ((sp.off b).symm (above_off sp h)) (above_off sp h')) (MulAction.injective g e)

theorem below_injOn (g : M.G) {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    Set.InjOn (fun d₀ => g • R.pt b d₀) {d₀ | Above (B.J.A i) b (B.pr v) d₀ d} := fun _ h _ h' e =>
  pt_inj R ((sp.off b).trans (above_off sp h) ((sp.off b).symm (above_off sp h'))) (MulAction.injective g e)

include R in
theorem above_finite {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    {d₁ | Above (B.J.A i) b (B.pr v) d d₁}.Finite :=
  Set.Finite.of_finite_image (above_image R 1 v d ▸ ((inc_finite_stable D u _ i M v).1 _).1) (above_injOn R 1 v d)

include R in
theorem below_finite {b : (B.I.S i).β} (v : B.ch.A.vT) (d : (B.I.S i).D b) :
    {d₀ | Above (B.J.A i) b (B.pr v) d₀ d}.Finite :=
  Set.Finite.of_finite_image (below_image R 1 v d ▸ ((inc_finite_stable D u _ i M v).1 _).2) (below_injOn R 1 v d)

end Real

theorem ukLaw_of_kerUK (D : D7) (u : D.what₂.Word) (B : Built.Dat D u) (i : ℕ) (sp : Split (B.J.A i) B.J.T)
    (sp' : Split (B.J.A (i + 1)) B.J.T) (M : PtModel B.ch i) (M' : PtModel B.ch (i + 1)) (R : B.Real i sp M)
    (R' : B.Real (i + 1) sp' M') (k : B.Ker i) (K : KerPt M M') (ht : K.TgtEq) (hk : Built.Dat.KerIs R R' K k)
    (hu : Built.Dat.KerUK k) : K.UKLaw := by
  intro v p p' y
  obtain ⟨ζ, b, d, rfl⟩ := R.surj p
  obtain ⟨ζ', b', d', rfl⟩ := R'.surj p'
  generalize R.zeta ζ = g
  generalize R'.zeta ζ' = g'
  obtain ⟨y, rfl⟩ : ∃ y₀, y = M.act g y₀ :=
    ⟨M.act g⁻¹ y, by rw [← Module.End.mul_apply, ← map_mul, mul_inv_cancel, map_one, Module.End.one_apply]⟩
  have f1 := above_finite R' v d'
  have f0 := below_finite R v d
  rw [above_image R' g' v d', below_image R g v d, finsum_mem_image (above_injOn R' g' v d'),
    finsum_mem_image (below_injOn R g v d), finsum_mem_eq_finite_toFinset_sum _ f1, finsum_mem_eq_finite_toFinset_sum _ f0]
  simp only [K.src, ht g']

  rw [← map_sum, ← map_sum, ← map_smul]
  congr 1
  have := GlobalTheory.LvT.Built.DilPass.ext_ev R (∑ d₁ ∈ f1.toFinset, K.k (R.pt b d) (R'.pt b' d₁))
    (((B.ch.A.T : ℂ) ^ ((D.R.t + 1) / 2)) • ∑ d₀ ∈ f0.toFinset, K.k (R.pt b d₀) (R'.pt b' d')) (fun F y hy => ?_)
  · simpa only [LinearMap.sum_apply, LinearMap.smul_apply] using LinearMap.congr_fun this y
  have h := hu b b' d d' (B.pr v) F
  rw [finsum_mem_eq_finite_toFinset_sum _ f1, finsum_mem_eq_finite_toFinset_sum _ f0] at h
  have h2 := congrArg (evV B.emb (1 : Matrix (Fin (D.R.N (i + 1))) (Fin (D.R.N (i + 1))) B.E) (B.lam (i + 1)) D.what₂.embLL) h

  rw [LinearMap.map_smulₛₗ, map_sum, map_sum, map_pow, map_natCast] at h2
  apply Subtype.ext
  rw [LinearMap.sum_apply, LinearMap.smul_apply, LinearMap.sum_apply, Submodule.coe_smul, Submodule.coe_sum, Submodule.coe_sum,
    Finset.sum_congr rfl fun d₁ _ => hk b b' d d₁ F y hy, Finset.sum_congr rfl fun d₀ _ => hk b b' d₀ d' F y hy]
  exact h2

end GlobalTheory.LvT.Built.UK
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.HeckeLawPointKernelOfCoefficientKernel =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntPOfKerP =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntPOfKerP", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ValueLatticeAddSubgroupSmulMoveLaws\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.IntPPass

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Built

theorem ev_smul {D : D7} {u : D.what₂.Word} (B : Built.Dat D u) (i : ℕ) (c : D.what₂.LL) (F : B.V i) :
    B.ev i (c • F) = D.what₂.embLL c • B.ev i F := by
  unfold Built.Dat.ev
  exact map_smulₛₗ _ _ _

theorem intP_of_kerP : ∀ (D : D7) (u : D.what₂.Word) (B : Built.Dat D u) (i : ℕ) (sp : Split (B.J.A i) B.J.T) (sp' : Split (B.J.A (i + 1)) B.J.T) (M : PtModel B.ch i) (M' : PtModel B.ch (i + 1)) (R : B.Real i sp M) (R' : B.Real (i + 1) sp' M') (k : B.Ker i) (Co : M.Coord) (Co' : M'.Coord) (K : KerPt M M'), K.TgtEq → Built.Dat.KerIs R R' K k → Co.Ok → Co'.Ok → R.ValIs Co → R'.ValIs Co' → Built.Dat.KerP k → K.IntP Co Co' := by
  intro D u B i sp sp' M M' R R' k Co Co' K hT hK hCo hCo' hV hV' hP w hw hs p p' y hy
  obtain ⟨ζ, b, d, rfl⟩ := R.surj p
  obtain ⟨ζ', b', d', rfl⟩ := R'.surj p'
  set g := R.zeta ζ with hg
  set g' := R'.zeta ζ' with hg'
  have h0 := (GlobalTheory.LvT.ValEq.valB_laws D u B.ch i M Co hCo w hw ∅ (g • R.pt b d)).2.2.2 g⁻¹ y hy
  rw [inv_smul_smul] at h0
  set y₀ := M.act g⁻¹ y with hy₀
  have hyy : y = M.act g y₀ := by
    rw [hy₀, ← Module.End.mul_apply, ← map_mul, mul_inv_cancel, map_one, Module.End.one_apply]
  obtain ⟨F, hF, hFy⟩ := (hV.dual w hw b d y₀).1 h0
  have h1 := hP w hw hs b b' d d' F hF
  have h2 := hK b b' d d' F y₀ hFy
  rw [hT, hyy, K.src, ← map_smul]
  refine (GlobalTheory.LvT.ValEq.valB_laws D u B.ch (i + 1) M' Co' hCo' w hw Finset.univ (R'.pt b' d')).2.2.2 g' _ ?_
  refine (hV'.ker w hw hs b' d' _).2 ⟨_, h1, ?_⟩
  rw [ev_smul, ← h2, map_zpow₀, map_natCast]
  rfl

end GlobalTheory.LvT.Built.IntPPass
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntPOfKerP =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Algebra.Order.Star.Int\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT

open Formalism.BasicNotions Classical NumberField
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

namespace ColSharp

variable {D : D7} {u : D.what₂.Word} (X : Ch D u)

noncomputable def colUp (i : ℕ) : Fn X 0 →ₗ[ℂ] Fn X i :=
  Nat.rec (motive := fun i => Fn X 0 →ₗ[ℂ] Fn X i) LinearMap.id (fun i g => KT X i ∘ₗ g) i

theorem colUp_eq (i : ℕ) (φ : Fn X 0) : colUp X i φ = Formalism.ThetaLiftIndependence.chainOpM X.C.wt X.C.Kmap i φ := by
  induction i with
  | zero => rfl
  | succ i ih =>
    show KT X i (colUp X i φ) = _
    rw [ih]; rfl

theorem colT_eq (φ : Fn X 0) : colT X φ = colUp X D.R.m φ := (colUp_eq X _ φ).symm

variable {X}

theorem fold_mem (hF : FormsStable X) {i : ℕ} (hi : i ≤ D.R.m) (l : List X.A.vT) {φ : Fn X i}
    (hφ : φ ∈ X.fm.Fi i) :
    (l.foldr (fun v g => (Uop X i v).comp g) LinearMap.id : Fn X i →ₗ[ℂ] Fn X i) φ ∈ X.fm.Fi i := by
  induction l with
  | nil => exact hφ
  | cons v l ih => exact hF.1 i hi v _ ih

theorem Uprod_mem (hF : FormsStable X) {i : ℕ} (hi : i ≤ D.R.m) (w : D.what₂.places.Pl) {φ : Fn X i}
    (hφ : φ ∈ X.fm.Fi i) : Uprod X i w φ ∈ X.fm.Fi i := fold_mem hF hi _ hφ

theorem Upow_mem (hF : FormsStable X) (w : D.what₂.places.Pl) (n : ℕ) {φ : Fn X 0}
    (hφ : φ ∈ X.fm.Fi 0) : (Uprod X 0 w ^ n) φ ∈ X.fm.Fi 0 := by
  induction n with
  | zero => exact hφ
  | succ n ih => rw [pow_succ']; exact Uprod_mem hF (Nat.zero_le _) w ih

theorem colUp_mem (hF : FormsStable X) {i : ℕ} (hi : i ≤ D.R.m) {φ : Fn X 0}
    (hφ : φ ∈ X.fm.Fi 0) : colUp X i φ ∈ X.fm.Fi i := by
  induction i with
  | zero => exact hφ
  | succ i ih => exact hF.2.2 i hi _ (ih (Nat.le_of_succ_le hi))

theorem scalar_eq {s : ℕ} (hs : D.R.t + 1 = 2 * s) :
    ((((X.A.T : ℝ) ^ (((D.R.t : ℝ) + 1) / 2) : ℝ)) : ℂ) = (X.A.T : ℂ) ^ s := by
  have h : ((D.R.t : ℝ) + 1) / 2 = (s : ℝ) := by
    have : ((D.R.t + 1 : ℕ) : ℝ) = ((2 * s : ℕ) : ℝ) := by rw [hs]
    push_cast at this; linarith
  rw [h, Real.rpow_natCast]; push_cast; rfl

theorem fold_comm (hF : FormsStable X) (h4 : LevelChainUOperatorCommutation X) {s : ℕ} (hs : D.R.t + 1 = 2 * s) {i : ℕ}
    (hi : i < D.R.m) (l : List X.A.vT) {φ : Fn X i} (hφ : φ ∈ X.fm.Fi i) :
    (l.foldr (fun v g => (Uop X (i + 1) v).comp g) LinearMap.id : Fn X (i + 1) →ₗ[ℂ] Fn X (i + 1)) (KT X i φ) =
      (X.A.T : ℂ) ^ (s * l.length) •
        KT X i ((l.foldr (fun v g => (Uop X i v).comp g) LinearMap.id : Fn X i →ₗ[ℂ] Fn X i) φ) := by
  induction l with
  | nil => simp
  | cons v l ih =>
    rw [List.foldr_cons, List.foldr_cons, LinearMap.comp_apply, LinearMap.comp_apply, ih, map_smul,
      h4 i hi v _ (fold_mem hF hi.le l hφ), scalar_eq hs, smul_smul, ← pow_add, List.length_cons, Nat.mul_succ]

theorem Uprod_comm (hF : FormsStable X) (h4 : LevelChainUOperatorCommutation X) {s : ℕ} (hs : D.R.t + 1 = 2 * s) {i : ℕ}
    (hi : i < D.R.m) (w : D.what₂.places.Pl) {φ : Fn X i} (hφ : φ ∈ X.fm.Fi i) :
    Uprod X (i + 1) w (KT X i φ) = (X.A.T : ℂ) ^ (s * (VVT X w).card) • KT X i (Uprod X i w φ) := by
  rw [← Finset.length_toList]; exact fold_comm hF h4 hs hi _ hφ

theorem Uprod_colUp (hF : FormsStable X) (h4 : LevelChainUOperatorCommutation X) {s : ℕ} (hs : D.R.t + 1 = 2 * s) {i : ℕ}
    (hi : i ≤ D.R.m) (w : D.what₂.places.Pl) {φ : Fn X 0} (hφ : φ ∈ X.fm.Fi 0) :
    Uprod X i w (colUp X i φ) = (X.A.T : ℂ) ^ (s * (VVT X w).card * i) • colUp X i (Uprod X 0 w φ) := by
  induction i with
  | zero => simp [colUp]
  | succ i ih =>
    have hi' : i < D.R.m := hi
    show Uprod X (i + 1) w (KT X i (colUp X i φ)) = _ • KT X i (colUp X i (Uprod X 0 w φ))
    rw [Uprod_comm hF h4 hs hi' w (colUp_mem hF hi'.le hφ), ih hi'.le, map_smul, smul_smul, ← pow_add,
      Nat.mul_succ, Nat.add_comm (s * _)]

theorem chain_into (hF : FormsStable X) (h4 : LevelChainUOperatorCommutation X) {s : ℕ} (hs : D.R.t + 1 = 2 * s)
    (w : D.what₂.places.Pl) (e : ℕ)
    (hU : ∀ i, i < D.R.m → Into X w (fun φ => tpow X e • Uprod X (i + 1) w (KT X i φ))
      (X.fm.S i w) (X.fm.S (i + 1) w)) {i : ℕ} (hi : i ≤ D.R.m) :
    Into X w (fun φ => (X.A.T : ℂ) ^ (i * e + s * (VVT X w).card * ∑ j ∈ Finset.range (i + 1), j) •
      colUp X i ((Uprod X 0 w ^ i) φ)) (X.fm.S 0 w) (X.fm.S i w) := by
  induction i with
  | zero => intro x hx; exact ⟨x, hx, by simp [colUp]⟩
  | succ i ih =>
    have hi' : i < D.R.m := hi
    intro x hx
    obtain ⟨y, hy, hy'⟩ := ih hi'.le x hx
    obtain ⟨z, hz, hz'⟩ := hU i hi' y hy
    refine ⟨z, hz, ?_⟩
    have hm := Upow_mem hF w i (_root_.GlobalTheory.LvT.emb_mem_Fi X 0 x)
    have key := Uprod_colUp hF h4 hs hi w hm
    have e1 : colUp X (i + 1) ((Uprod X 0 w ^ i) (X.fm.emb 0 x)) =
      KT X i (colUp X i ((Uprod X 0 w ^ i) (X.fm.emb 0 x))) := rfl
    rw [hz']
    beta_reduce at hy' ⊢
    rw [hy', map_smul, map_smul, ← e1, key, pow_succ' (Uprod X 0 w) i, Module.End.mul_apply, tpow,
      smul_smul, smul_smul, ← pow_add, ← pow_add, Finset.sum_range_succ _ (i + 1)]
    congr 2
    ring

theorem card_VVT {w : D.what₂.places.Pl} (h : X.fm.seenP w = true) : (VVT X w).card = (tops D).card := by
  unfold VVT
  rw [if_pos h]
  refine Finset.card_bij (fun v _ => X.fm.tauOf w v) (fun v hv => (Finset.mem_filter.1 hv).2)
    (fun a _ b _ hab => (X.fm.tauOf w).injective hab) (fun τ hτ => ?_)
  exact ⟨(X.fm.tauOf w).symm τ, Finset.mem_filter.2 ⟨Finset.mem_univ _, by simpa using hτ⟩, by simp⟩

theorem expT_nonneg (hW : WtBounds X) (w : D.what₂.places.Pl) : 0 ≤ expT X w := by
  refine mul_nonneg (Int.natCast_nonneg _) (Finset.sum_nonneg fun v hv => hW.1 _ ?_)
  unfold VVT at hv
  split_ifs at hv
  · exact (Finset.mem_filter.1 hv).2
  · simp at hv

theorem val_pow {w : D.what₂.places.Pl} (hw : OverT X w) (k : ℕ) :
    D.what₂.places.val w ((X.A.T : D.what₂.LL) ^ k) = (((D.what₂.places.ramIdx w * k : ℕ) : ℤ) : WithTop ℤ) := by
  have h := D.what₂.places.val_resChar w
  rw [show D.what₂.places.resChar w = X.A.T from hw] at h
  induction k with
  | zero => simp
  | succ k ih =>
    rw [pow_succ, AddValuation.map_mul, ih, h, ← WithTop.coe_add]
    congr 1

theorem quot_mem {w : D.what₂.places.Pl} (hw : OverT X w) {c : D.what₂.LL} {n : ℤ}
    (hc : D.what₂.places.val w c = ((n : ℤ) : WithTop ℤ)) (a b : ℕ)
    (h : ((D.what₂.places.ramIdx w * b : ℕ) : ℤ) ≤ n) :
    c * (X.A.T : D.what₂.LL) ^ a * ((X.A.T : D.what₂.LL) ^ b)⁻¹ ∈ Ow D w := by
  show (0 : WithTop ℤ) ≤ D.what₂.places.val w _
  rw [AddValuation.map_mul, AddValuation.map_mul, AddValuation.map_inv, hc, val_pow hw, val_pow hw]
  rw [← WithTop.LinearOrderedAddCommGroup.coe_neg, ← WithTop.coe_add, ← WithTop.coe_add]
  have : (0 : ℤ) ≤ ((D.what₂.places.ramIdx w * a : ℕ) : ℤ) := Int.natCast_nonneg _
  exact_mod_cast (by omega : (0 : ℤ) ≤ n + ((D.what₂.places.ramIdx w * a : ℕ) : ℤ) + -((D.what₂.places.ramIdx w * b : ℕ) : ℤ))

theorem loss_eq {s : ℕ} (hs : D.R.t + 1 = 2 * s) (w : D.what₂.places.Pl) :
    ((D.R.m * (if X.fm.seenP w then 2 * ∑ τ, Wt X τ + D.R.f * D.R.N D.R.m else 0) +
      s * (VVT X w).card * ∑ j ∈ Finset.range (D.R.m + 1), j : ℕ) : ℝ) = (D.R.m : ℝ) * ET X w := by
  unfold ET
  by_cases h : X.fm.seenP w = true
  · rw [if_pos h, if_pos h, card_VVT h]
    unfold ETpi
    have h1 : ((D.R.t : ℝ) + 1) = 2 * s := by exact_mod_cast hs
    have h2 : ((∑ j ∈ Finset.range (D.R.m + 1), j : ℕ) : ℝ) * 2 = ((D.R.m : ℝ) + 1) * D.R.m := by
      have := Finset.sum_range_id_mul_two (D.R.m + 1)
      rw [Nat.add_sub_cancel] at this
      exact_mod_cast this
    rw [h1]
    generalize (∑ j ∈ Finset.range (D.R.m + 1), j : ℕ) = S at h2 ⊢
    push_cast
    linear_combination ((s : ℝ) * ((tops D).card : ℝ) / 2) * h2
  · have : VVT X w = ∅ := by unfold VVT; rw [if_neg h]
    rw [if_neg h, if_neg h, this]
    simp

end ColSharp


open ColSharp in
theorem levelChainSharpColumnValuation_of_stability : ∀ (D : D7) (u : D.what₂.Word) (X : Ch D u),
    FormsStable X → LevelChainUOperatorCommutation X → UKSharp X → WtBounds X → Conclusion5Sharp X := by
  intro D u X hF h4 hU hW w hw c n hc hn x' hx'
  obtain ⟨x, hx, hxx⟩ := hx'
  obtain ⟨s0, hs0⟩ := D.R.t_odd
  have hs : D.R.t + 1 = 2 * (s0 + 1) := by omega
  obtain ⟨y, hy, hy'⟩ := chain_into hF h4 hs w _ (hU w hw) (le_refl D.R.m) x hx.1
  rw [← loss_eq (X := X) hs w] at hn
  set b := D.R.m * (if X.fm.seenP w then 2 * ∑ τ, Wt X τ + D.R.f * D.R.N D.R.m else 0) +
      (s0 + 1) * (VVT X w).card * ∑ j ∈ Finset.range (D.R.m + 1), j with hb
  obtain ⟨a, ha⟩ := Int.eq_ofNat_of_zero_le (expT_nonneg hW w)
  have hmem := quot_mem hw hc a b (by exact_mod_cast hn)
  refine ⟨(⟨_, hmem⟩ : Ow D w) • y, (X.fm.S D.R.m w).smul_mem _ hy, ?_⟩
  have hT : (X.A.T : ℂ) ^ b ≠ 0 := pow_ne_zero _ (by exact_mod_cast X.A.T_prime.ne_zero)
  beta_reduce at hy' ⊢
  rw [Subring.smul_def, LinearMap.map_smulₛₗ, hy', hxx, colT_eq, ha, LinearMap.smul_apply, map_smul,
    smul_smul, smul_smul, zpow_natCast]
  congr 1
  simp only [map_mul, map_inv₀, map_pow, map_natCast]
  field_simp

end GlobalTheory.LvT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainTransitionIsExtKernelSum\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelPrimeIncidenceFiniteFibresStable\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemFormsIffExistsEquivariantExtension\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.UopIsExt\npublic import Formalism.GL3MeanSquares.HookFormulaTorsion.DoubleCosetDecompositionAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Classical NumberField GlobalTheory.LvT
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

noncomputable section

namespace GlobalTheory.LvT

theorem count_incidence {G P C V : Type} [Group G] [MulAction G P] [Fintype C] [AddCommGroup V] [Module ℂ V]
    (rep : C → P) (hsurj : ∀ p, ∃ (c : C) (g : G), g • rep c = p)
    (hinj : ∀ (c c' : C) (g : G), g • rep c = rep c' → c = c')
    (hfin : ∀ c, Finite (MulAction.stabilizer G (rep c)))
    (I : P → P → Prop) (hup : ∀ p, {q | I p q}.Finite) (hdn : ∀ p, {q | I q p}.Finite)
    (hI : ∀ (g : G) p q, I p q → I (g • p) (g • q))
    (F : P → P → V) (hF : ∀ (g : G) p q, F (g • p) (g • q) = F p q) :
    ∑ c, ((Nat.card (MulAction.stabilizer G (rep c)) : ℂ))⁻¹ • ∑ᶠ q ∈ {q | I (rep c) q}, F (rep c) q =
      ∑ c, ((Nat.card (MulAction.stabilizer G (rep c)) : ℂ))⁻¹ • ∑ᶠ p ∈ {p | I p (rep c)}, F p (rep c) := by
  letI : Module ℚ V := Module.compHom V (algebraMap ℚ ℂ)
  have hfin' : ∀ p : P, Finite (MulAction.stabilizer G p) := by
    intro p
    obtain ⟨c, g, rfl⟩ := hsurj p
    haveI := hfin c
    exact Finite.of_equiv _ (MulAction.stabilizerEquivStabilizer (a := rep c) (g := g) rfl).toEquiv
  have hR : ∀ a : P, ∃! r, r ∈ Finset.univ.image rep ∧ r ∈ MulAction.orbit G a := by
    intro a
    obtain ⟨c, g, rfl⟩ := hsurj a
    refine ⟨rep c, ⟨Finset.mem_image_of_mem _ (Finset.mem_univ _), g⁻¹, inv_smul_smul g _⟩, ?_⟩
    rintro r ⟨hr, γ, hγ⟩
    obtain ⟨c', -, rfl⟩ := Finset.mem_image.mp hr
    have : c = c' := hinj c c' (γ * g) (by rw [mul_smul]; exact hγ)
    rw [this]
  have hrinj : Function.Injective rep := fun c c' h => hinj c c' 1 (by rw [one_smul, h])
  have key := Formalism.HermitianLattices.RamifiedLatticeOperators.count_of_orbits G P P V (fun a => (hup a).toFinset) (fun b => (hdn b).toFinset) F
    (Finset.univ.image rep) (Finset.univ.image rep) (by intro a b; simp)
    (by intro γ a b h; simp only [Set.Finite.mem_toFinset, Set.mem_setOf_eq] at h ⊢; exact hI γ a b h)
    (fun γ a b _ => hF γ a b) hfin' hfin' hR hR
  rw [Finset.sum_image (fun a _ b _ h => hrinj h), Finset.sum_image (fun a _ b _ h => hrinj h)] at key
  have hq : ∀ (n : ℕ) (x : V), ((n : ℚ))⁻¹ • x = ((n : ℂ))⁻¹ • x := by
    intro n x
    change (algebraMap ℚ ℂ ((n : ℚ))⁻¹) • x = _
    simp
  simp only [hq] at key
  simp only [finsum_mem_eq_finite_toFinset_sum _ (hup _), finsum_mem_eq_finite_toFinset_sum _ (hdn _)]
  exact key

theorem levelChainUOperatorCommutation_of_pointPairLaw : ∀ (D : D7) (u : D.what₂.Word) (X : Ch D u) (Lv : LevTie X) (Kt : KerTie Lv),
    (∀ i h, (Kt i h).TgtEq) → (∀ i h, (Kt i h).UKLaw) → LevelChainUOperatorCommutation X := by
  intro D u X Lv Kt htgt huk i hi v φ hφ
  set M := Lv i hi.le with hM
  set M' := Lv (i + 1) hi with hM'
  let K : KerPt M M' := Kt i hi
  have hT : K.TgtEq := htgt i hi
  have hU : K.UKLaw := huk i hi
  obtain ⟨Φ, hΦ⟩ := (_root_.GlobalTheory.LvT.PtModel.mem_Fi_iff_exists_isExt D u X i M φ).1 hφ
  obtain ⟨hfinI, hstab, -⟩ := _root_.GlobalTheory.LvT.inc_finite_stable D u X i M v
  obtain ⟨hfinI', -, -⟩ := _root_.GlobalTheory.LvT.inc_finite_stable D u X (i + 1) M' v
  have h1 := _root_.GlobalTheory.LvT.uop_isExt D u X (i + 1) M' v _ _ (_root_.GlobalTheory.LvT.isExt_KT D u X i M M' K φ Φ hT hΦ)
  have h2 := _root_.GlobalTheory.LvT.isExt_KT D u X i M M' K _ _ hT (_root_.GlobalTheory.LvT.uop_isExt D u X i M v φ Φ hΦ)
  have hpow : ((((X.A.T : ℝ) ^ (((D.R.t : ℝ) + 1) / 2) : ℝ)) : ℂ) = (X.A.T : ℂ) ^ ((D.R.t + 1) / 2) := by
    obtain ⟨k, hk⟩ := D.R.t_odd
    have e1 : (D.R.t + 1) / 2 = k + 1 := by omega
    have e2 : ((D.R.t : ℝ) + 1) / 2 = ((k + 1 : ℕ) : ℝ) := by rw [hk]; push_cast; ring
    rw [e1, e2, Real.rpow_natCast]
    push_cast; rfl
  have hwt : ∀ c, X.C.wt i c = ((Nat.card (MulAction.stabilizer M.G (M.rep c)) : ℂ))⁻¹ := by
    intro c
    rw [← M.card_stab]; rfl
  have hfs : ∀ c, Finite (MulAction.stabilizer M.G (M.rep c)) := by
    intro c
    apply Nat.finite_of_card_ne_zero
    rw [← M.card_stab]
    haveI := X.C.stabFin i c
    letI := X.C.stabGrp i c
    exact Nat.card_pos.ne'
  funext c'
  rw [hpow, Pi.smul_apply, h1.1 c', h2.1 c', ← Submodule.coe_smul]
  congr 1
  have key := count_incidence M.rep M.rep_surj M.rep_inj hfs (M.Inc v) (fun p => (hfinI p).1) (fun p => (hfinI p).2)
    (fun g p q h => (hstab g p q).1 h) (fun p q => K.k p (M'.rep c') (Φ q))
    (fun g p q => by rw [hΦ.2, K.src])
  have hL : ∀ c, K.k (M.rep c) (M'.rep c') (∑ᶠ p₁ ∈ {p₁ | M.Inc v (M.rep c) p₁}, Φ p₁) =
      ∑ᶠ p₁ ∈ {p₁ | M.Inc v (M.rep c) p₁}, K.k (M.rep c) (M'.rep c') (Φ p₁) := by
    intro c

    rw [finsum_mem_eq_finite_toFinset_sum _ (hfinI _).1, finsum_mem_eq_finite_toFinset_sum _ (hfinI _).1, map_sum]
  simp only [hL, hwt]
  rw [key, finsum_mem_eq_finite_toFinset_sum _ (hfinI' _).1, Finset.sum_comm, Finset.smul_sum]
  refine Finset.sum_congr rfl fun c _ => ?_
  rw [← Finset.smul_sum, smul_comm, ← hU v, finsum_mem_eq_finite_toFinset_sum _ (hfinI' _).1]

end GlobalTheory.LvT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.NotDvdCardStabilizerForm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.NotDvdCardStabilizerForm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.PredMemGamRanks\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.StabOrder

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2

theorem rank_le (R : Ranks) {i j : ℕ} (h : i ≤ j) : R.N i ≤ R.N j := by
  unfold Ranks.N
  exact Nat.add_le_add_left (Nat.mul_le_mul_right _ h) _

theorem prime_le_of_embed {E G : Type} [Field E] [NumberField E] [Group G] [Finite G] {n : ℕ}
    (φ : G →* ((Fin n → E) ≃ₗ[E] (Fin n → E))) (hφ : Function.Injective φ) {p : ℕ} (hp : p.Prime)
    (hd : p ∣ Nat.card G) : p ≤ Module.finrank ℚ E * n + 1 := by
  haveI : Finite φ.range := Finite.of_surjective _ φ.rangeRestrict_surjective
  have h := prime_le_of_dvd_card φ.range hp (by rwa [← Nat.card_congr (MonoidHom.ofInjective hφ).toEquiv])
  rwa [Module.finrank_fin_fun] at h

theorem prime_le_of_embed_GL {E G : Type} [Field E] [NumberField E] [Group G] [Finite G] {n : ℕ}
    (φ : G →* GL (Fin n) E) (hφ : Function.Injective φ) {p : ℕ} (hp : p.Prime)
    (hd : p ∣ Nat.card G) : p ≤ Module.finrank ℚ E * n + 1 :=
  prime_le_of_embed ((LinearMap.GeneralLinearGroup.generalLinearEquiv E (Fin n → E)).toMonoidHom.comp
      ((Matrix.GeneralLinearGroup.toLin (n := Fin n) (R := E)).toMonoidHom.comp φ))
    ((LinearMap.GeneralLinearGroup.generalLinearEquiv E (Fin n → E)).injective.comp
      ((Matrix.GeneralLinearGroup.toLin (n := Fin n) (R := E)).injective.comp hφ)) hp hd

section Concrete

variable {F : Fields} {Pr : Primes F} {R : Ranks} {W : Wts F Pr.Word R} {a : ℝ}

variable {n : ℕ} {ST SG Q : Finset (HeightOneSpectrum (𝓞 F.E))}

variable (sel : HeightOneSpectrum (𝓞 F.F) → HeightOneSpectrum (𝓞 F.E)) {S : Set ℕ} (mu : Tup F.F F.E F.K S)
  (cst : LocCst F (rowSG Pr sel mu)) (L : ChIdx F Pr R (QE sel (mu : Chr F.F F.E F.K)))

end Concrete

section Record

variable {D : D7} {u : D.what₂.Word}

theorem stabUnit_of_embed (X : Ch D u) (E : Type) [Field E] [NumberField E]
    (hT : Module.finrank ℚ E * D.R.N D.R.m + 1 < X.A.T)
    (h : ∀ i, i ≤ D.R.m → ∀ c : X.C.cls i, ∃ j : X.C.stab i c →* GL (Fin (D.R.N i)) E, Function.Injective j) :
    StabUnit X := fun i hi c hd => by
  obtain ⟨j, hj⟩ := h i hi c
  have h1 := prime_le_of_embed_GL j hj X.A.T_prime hd
  have h2 := Nat.mul_le_mul_left (Module.finrank ℚ E) (rank_le D.R hi)
  omega

theorem stabUnit_of_chainIn (X : Ch D u) {E K : Type} [Field E] [NumberField E] [StarRing E] [Field K] [NumberField K] [StarRing K]
    (I : ChainIn E K D.what₂.Tau D.R) (emb : D.what₂.Tau → E →+* K) (σ : K →+* ℂ) (hI : I.Ok)
    (hC : X.C = I.chain emb σ hI (D.hcW u)) (hT : Module.finrank ℚ E * D.R.N D.R.m + 1 < X.A.T) : StabUnit X := by
  refine stabUnit_of_embed X E hT ?_
  rw [hC]
  intro i _ c
  refine ⟨((I.S i).gam c.1).comp (MulAction.stabilizer _ ((I.S i).rep c)).subtype, ?_⟩
  rw [injective_iff_map_eq_one]
  exact fun g hg => Subtype.ext ((hI.step i).stab_inj c.1 g.1 _ g.2 hg)

end Record

end GlobalTheory.LvT.StabOrder
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.NotDvdCardStabilizerForm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.FormsStable\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Classical NumberField GlobalTheory.LvT
open Formalism.MainNotions.product_first_zeroth_parts (Ow tops wsum ten blk nfAll CSpan IntSpan Nm_succ wSh cTw)

namespace GlobalTheory.LvT

variable {D : D7} {u : D.what₂.Word}

theorem natAbs_lamT_le_Wt (X : Ch D u) (j : ℕ) (hj : j ≤ D.R.m) (τ : D.what₂.Tau) (a : Fin (D.R.N j))
    (ha : ¬ (a.1 = 0 ∧ τ ∈ tops D)) : ((PtModel.lamT X j τ).w a).natAbs ≤ Wt X τ := by
  unfold Wt TauWeight
  refine le_trans ?_ (Finset.le_sup (f := fun i => Finset.univ.sup fun a : Fin (D.R.N i) =>
    if a.1 = 0 ∧ τ ∈ topsOf D.host D.eTau then 0
    else ((X.fm.lam i τ).w a - ((i * (D.R.t + 1) / 2 : ℕ) : ℤ)).natAbs)
    (Finset.mem_range.2 (Nat.lt_succ_of_le hj)))
  refine le_trans ?_ (Finset.le_sup (f := fun a : Fin (D.R.N j) =>
    if a.1 = 0 ∧ τ ∈ topsOf D.host D.eTau then 0
    else ((X.fm.lam j τ).w a - ((j * (D.R.t + 1) / 2 : ℕ) : ℤ)).natAbs) (Finset.mem_univ a))
  rw [if_neg ha]
  exact le_rfl

theorem lamT_last (X : Ch D u) (i : ℕ) (hi : i < D.R.m) (τ : D.what₂.Tau) (a : Fin (D.R.N (i + 1)))
    (ha : a.1 = D.R.N (i + 1) - 1) : (PtModel.lamT X (i + 1) τ).w a = -X.C.sDiv i τ := by
  have hN : D.R.N (i + 1) = D.R.k + (i + 1) * (D.R.t + 1) := rfl
  have hm : (i + 1) * (D.R.t + 1) = i * (D.R.t + 1) + D.R.t + 1 := by ring
  have ha' : a.1 = D.R.k + (D.R.t + i * (D.R.t + 1)) := by omega
  have hk : ¬ a.1 < D.R.k := by omega
  have hq : (a.1 - D.R.k) / (D.R.t + 1) = i := by
    rw [ha', Nat.add_sub_cancel_left, Nat.add_mul_div_right _ _ (Nat.succ_pos _),
      Nat.div_eq_of_lt (Nat.lt_succ_self _), zero_add]
  have h1 := X.fm.lam_eq (i + 1) hi τ a
  rw [dite_eq_right hk] at h1
  simp only [hq] at h1
  have h2 := X.C.sDiv_eq i hi τ
  obtain ⟨c, hc⟩ := D.R.t_odd
  have h3 : (i + 1) * (D.R.t + 1) / 2 = (i + 1) * (c + 1) := by
    have : (i + 1) * (D.R.t + 1) = 2 * ((i + 1) * (c + 1)) := by rw [hc]; ring
    rw [this, Nat.mul_div_cancel_left _ (by norm_num)]
  have hcq : (D.R.t : ℚ) = 2 * c + 1 := by exact_mod_cast hc
  change (X.fm.lam (i + 1) τ).w a - (((i + 1) * (D.R.t + 1) / 2 : ℕ) : ℤ) = _
  rw [h3]
  have : (((X.fm.lam (i + 1) τ).w a - (((i + 1) * (c + 1) : ℕ) : ℤ) : ℤ) : ℚ) = ((-X.C.sDiv i τ : ℤ) : ℚ) := by
    push_cast
    rw [h1, h2]
    simp only [wG, sExp, Ranks.N, Nat.add_sub_cancel]
    push_cast
    rw [hcq]
    ring
  exact_mod_cast this

theorem wtBounds_of_nonneg : ∀ (D : D7) (u : D.what₂.Word) (X : Ch D u), (∀ τ ∈ tops D, 0 ≤ X.fm.bTop τ) →
    (∀ i, i < D.R.m → ∀ τ, 0 ≤ X.C.sDiv i τ) → WtBounds X := by
  intro D u X hb hs
  refine ⟨hb, fun i hi τ => ?_⟩
  have hpos := D.R.N_pos (i + 1)
  have hlast := lamT_last X i hi τ ⟨D.R.N (i + 1) - 1, by omega⟩ rfl
  have hk := D.R.m_add_three_le_k
  have hN : D.R.N (i + 1) = D.R.k + (i + 1) * (D.R.t + 1) := rfl
  refine ⟨hs i hi τ, ?_, ?_, fun hτ => ?_⟩
  · have h := natAbs_lamT_le_Wt X (i + 1) hi τ ⟨D.R.N (i + 1) - 1, by omega⟩ (fun h => by
      have := h.1
      simp only at this
      omega)
    rw [hlast] at h
    omega
  · unfold DomWeight.detShift
    rw [dite_eq_left hpos]
    exact hlast
  · have h := natAbs_lamT_le_Wt X (i + 1) hi τ ⟨0, hpos⟩ (fun h => hτ h.2)
    omega

end GlobalTheory.LvT
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SharpBoundStabilityLatticeColumnChain =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SharpBoundStabilityLatticeColumnChain", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfPointKernelLiftL\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ConjugatePrimeBoundPointKernelOfCoefficientKerne\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DilateLawPointKernelOfCoefficientKernel\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsCoordinatesValueLatticesEqWeylLattices\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsLevelPrimePointModelRealisation\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExistsPointKernelRealisedModels\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.ExtInOfValIn\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FormsStableOfTgtEq\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.HeckeLawPointKernelOfCoefficientKernel\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.IntPOfKerP\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainSharpColumnValuationOfStability\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.LevelChainUOperatorCommutationOfPointPairLaw\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.NotDvdCardStabilizerForm\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.WtBoundsOfNonneg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Built

namespace GlobalTheory.LvT.Built.Assemble

theorem sharpBound_stability_latticeColumnChain : ∀ (D : D7) (u : D.what₂.Word) (B : Built.Dat D u),
    (∀ i, i ≤ D.R.m → Nonempty (Split (B.J.A i) B.J.T)) → B.Sees →
    (∀ i, i < D.R.m → ∃ k : B.Ker i, Built.Dat.KerEq k ∧ Built.Dat.KerDil k ∧ Built.Dat.KerUK k ∧ Built.Dat.KerBar k ∧
      Built.Dat.KerP k) →
    Module.finrank ℚ B.E * D.R.N D.R.m + 1 < B.J.T → TwColumn.WtSigns B.ch → Conclusion5Sharp B.ch ∧ FormsStable B.ch := by
  intro D u B hsp hsee hker hT hW

  have hM : ∀ i (h : i ≤ D.R.m), ∃ M : PtModel B.ch i, Nonempty (B.Real i (hsp i h).some M) :=
    fun i h => _root_.GlobalTheory.LvT.Built.RealM.exists_real D u B i (hsp i h).some
  let Lv : LevTie B.ch := fun i h => (hM i h).choose
  have hR : ∀ i (h : i ≤ D.R.m), B.Real i (hsp i h).some (Lv i h) := fun i h => (hM i h).choose_spec.some

  have hC : ∀ i (h : i ≤ D.R.m), ∃ Co : (Lv i h).Coord, Co.Ok ∧ (hR i h).ValIs Co :=
    fun i h => _root_.GlobalTheory.LvT.Built.ValLat.exists_coord D u B i (hsp i h).some (Lv i h) (hR i h) h hsee
  let Vt : ValTie Lv := fun i h => ⟨(hC i h).choose, (hC i h).choose_spec.1⟩

  have hk : ∀ i (h : i < D.R.m), ∃ k : B.Ker i, Built.Dat.KerEq k ∧ Built.Dat.KerDil k ∧ Built.Dat.KerUK k ∧
      Built.Dat.KerBar k ∧ Built.Dat.KerP k := hker

  have hK : ∀ i (h : i < D.R.m), ∃ K : KerPt (Lv i h.le) (Lv (i + 1) h),
      K.TgtEq ∧ Built.Dat.KerIs (hR i h.le) (hR (i + 1) h) K (hk i h).choose :=
    fun i h => _root_.GlobalTheory.LvT.Built.KerExt.exists_kerPt D u B i (hsp i h.le).some (hsp (i + 1) h).some (Lv i h.le) (Lv (i + 1) h)
      (hR i h.le) (hR (i + 1) h) _ (hk i h).choose_spec.1
  let Kt : KerTie Lv := fun i h => (hK i h).choose
  have laws : KerLaws Vt Kt :=
    { tgt := fun i h => (hK i h).choose_spec.1
      uk := fun i h => _root_.GlobalTheory.LvT.Built.UK.ukLaw_of_kerUK D u B i _ _ _ _ (hR i h.le) (hR (i + 1) h) _ _
        (hK i h).choose_spec.1 (hK i h).choose_spec.2 (hk i h).choose_spec.2.2.1
      bar := fun i h => _root_.GlobalTheory.LvT.Built.BarPass.intBar_of_kerBar D u B i _ _ _ _ (hR i h.le) (hR (i + 1) h) _ _ _ _
        (hK i h).choose_spec.1 (hK i h).choose_spec.2 (hC i h.le).choose_spec.1 (hC (i + 1) h).choose_spec.1
        (hC i h.le).choose_spec.2 (hC (i + 1) h).choose_spec.2 (hk i h).choose_spec.2.2.2.1
      intP := fun i h => IntPPass.intP_of_kerP D u B i _ _ _ _ (hR i h.le) (hR (i + 1) h) _ _ _ _
        (hK i h).choose_spec.1 (hK i h).choose_spec.2 (hC i h.le).choose_spec.1 (hC (i + 1) h).choose_spec.1
        (hC i h.le).choose_spec.2 (hC (i + 1) h).choose_spec.2 (hk i h).choose_spec.2.2.2.2 }
  have hF : FormsStable B.ch := formsStable_of_tgtEq D u B.ch Lv Kt laws.tgt
  have h4 : LevelChainUOperatorCommutation B.ch := levelChainUOperatorCommutation_of_pointPairLaw D u B.ch Lv Kt laws.tgt laws.uk
  have hst : StabUnit B.ch := StabOrder.stabUnit_of_chainIn B.ch B.I B.emb D.what₂.embLL B.hI rfl hT
  have hWb : WtBounds B.ch := wtBounds_of_nonneg D u B.ch hW.1 hW.2
  exact ⟨levelChainSharpColumnValuation_of_stability D u B.ch hF h4 (UKS.ukSharp D u B.ch Lv Vt Kt laws hst hWb) hWb, hF⟩

end GlobalTheory.LvT.Built.Assemble
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.SharpBoundStabilityLatticeColumnChain =====
