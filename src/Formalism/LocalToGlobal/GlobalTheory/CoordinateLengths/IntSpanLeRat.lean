module

public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd
public import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero
public import Formalism.LocalRingCardinality.Lemmas
public import Formalism.LocalToGlobal.Columns.CoefficientsModP.LatticeBasisExistsHolds
public import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGlob
public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.GroupActionMulSingleEqDilation
import Mathlib.Tactic.Linter.Style
import Formalism.LocalToGlobal.GlobalTheory.GL6.Statement

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LocalGlobalOfBasisIndependence, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LocalGlobalOfBasisIndependence =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LocalGlobalOfBasisIndependence", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocInd\npublic import Formalism.LocalToGlobal.GroupLattices.DownNaturalLevelZero\npublic import Formalism.LocalRingCardinality.Lemmas\npublic import Formalism.LocalToGlobal.Columns.CoefficientsModP.LatticeBasisExistsHolds\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGlob\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.Statement\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB.G0

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField Classical Formalism.L2.GlobalTheoryTheory.LocalLatticeBases
open scoped Matrix

variable (D : D7) (u : D.what₂.Word)

def BwLocGlob0 (Tt : Forms0 D u) : Prop :=
  ∀ w, OverT D u w → ∀ i (hi : i ≤ D.R.m) (h0 : i = 0) (y : ((D.fm u).lat i).V),
    (∀ c, ∃ B : GL (Fin (D.R.N i)) D.host.E, IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B ∧
      ∃ Q ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam i), ∀ z, (D.fm u).emb i y c z =
        fnOf _ (shiftOf (lamT u i)) (atInf (embT D) (B⁻¹ : GL (Fin (D.R.N i)) D.host.E).1) Q ((Tt.val i hi h0).eY z)) →
    y ∈ (D.fm u).S i w

def BwBasisInd0 (Tt : Forms0 D u) : Prop :=
  ∀ w, OverT D u w → ∀ i (hi : i ≤ D.R.m) (h0 : i = 0) (c : (D.mem u).C.cls i) (B B₂ : GL (Fin (D.R.N i)) D.host.E),
    IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B → IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B₂ →
    ∀ Q ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam i), ∃ Q₂ ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam i), ∀ z,
      fnOf _ (shiftOf (lamT u i)) (atInf (embT D) (B⁻¹ : GL (Fin (D.R.N i)) D.host.E).1) Q ((Tt.val i hi h0).eY z) =
        fnOf _ (shiftOf (lamT u i)) (atInf (embT D) (B₂⁻¹ : GL (Fin (D.R.N i)) D.host.E).1) Q₂ ((Tt.val i hi h0).eY z)

theorem local_global_of_basis_independence (Tt : Forms0 D u) (hI : BwBasisInd0 D u Tt) : BwLocGlob0 D u Tt := by
  intro w hw i hi h0 y hy
  show y ∈ locW D.what₂.places w ((D.fm u).lat i).L
  rw [D.mem_locW_iff]
  obtain ⟨-, -, hsp⟩ := (D.fm u).lat_good i
  obtain ⟨d, hd, hdy⟩ := Formalism.L2.DIV.lc_exists_smul_mem ((D.fm u).lat i).L (x := y) (by rw [hsp]; trivial)
  obtain ⟨t, ht, htw⟩ := Formalism.L2.DIV.lc_primeTo d hd (D.plEq w)
  refine ⟨t, ht, ?_⟩
  refine ((Tt.val i hi h0).lat _).2 fun w' c B hB => ?_
  by_cases hw' : w' = w
  · subst hw'
    obtain ⟨B₀, hB₀, Q, hQ, hyQ⟩ := hy c
    have hB' : IsLocBasis (D.mem u).A.T (Ld D u i hi c : Set _) B := by
      rw [bwG_Ld_coe, ← hw]
      exact hB
    obtain ⟨Q₂, hQ₂, he⟩ := hI w' hw i hi h0 c B₀ B hB₀ hB' Q hQ
    refine ⟨_, bwG_intSpan_smul D w' _ _ (bwG_int_mem D w' t) hQ₂, fun z => ?_⟩
    rw [← algebraMap_smul D.what₂.LL t y, LinearMap.map_smulₛₗ, Pi.smul_apply, Pi.smul_apply, hyQ z, he z,
      LinearMap.map_smul]
    rfl
  · have hne : D.plEq w' ≠ D.plEq w := fun h => hw' (D.plEq.injective h)
    obtain ⟨r, hr, k, hk⟩ := htw _ hne
    obtain ⟨P, hP, hdP⟩ := ((Tt.val i hi h0).lat _).1 hdy w' c B hB
    have hr0 : algebraMap (𝓞 D.what₂.LL) D.what₂.LL r ≠ 0 := by
      intro h
      apply hr
      have : r = 0 := FaithfulSMul.algebraMap_injective (𝓞 D.what₂.LL) D.what₂.LL (by rw [h, map_zero])
      rw [this]
      exact zero_mem _
    have e : t • y = ((algebraMap (𝓞 D.what₂.LL) D.what₂.LL r)⁻¹ * algebraMap (𝓞 D.what₂.LL) D.what₂.LL k) • (d • y) := by
      rw [← algebraMap_smul D.what₂.LL t y, ← algebraMap_smul D.what₂.LL d y, smul_smul]
      congr 1
      have hk' := congrArg (algebraMap (𝓞 D.what₂.LL) D.what₂.LL) hk
      rw [map_mul, map_mul] at hk'
      field_simp
      rw [mul_comm, hk', mul_comm]
    refine ⟨_, bwG_intSpan_smul D w' _ _ (mul_mem (bwG_inv_mem D w' hr) (bwG_int_mem D w' k)) hP, fun z => ?_⟩
    rw [e, LinearMap.map_smulₛₗ, Pi.smul_apply, Pi.smul_apply, hdP z, LinearMap.map_smul]
    rfl

theorem bwBasisInd_of_stab0 (Tt : Forms0 D u) (hS : ∀ w, OverT D u w → BwGLStab D w) : BwBasisInd0 D u Tt := by
  intro w hw i hi h0 c B B₂ hB hB₂ Q hQ
  set N : D.what₂.Tau → Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) ℂ :=
    fun τ => atInf (embT D) ((B⁻¹ * B₂ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) τ
    with hN
  set N' : D.what₂.Tau → Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) ℂ :=
    fun τ => atInf (embT D) ((B₂⁻¹ * B : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) τ
    with hN'
  have hNN' : ∀ τ, N τ * N' τ = 1 := fun τ => by
    simp only [hN, hN', atInf]
    rw [← Matrix.map_mul, ← Units.val_mul]
    have : (B⁻¹ * B₂ * (B₂⁻¹ * B) : GL (Fin (D.R.N i)) D.host.E) = 1 := by group
    rw [this, Units.val_one, Matrix.map_one _ (map_zero _) (map_one _)]
  refine ⟨MvPolynomial.C (∏ τ, (N τ).det ^ shiftOf (lamT u i) τ) * subP N Q,
    bwG_intSpan_allSubP D w _ N _ (fun τ g hg => hS w hw _ _ _ (N τ) (N' τ) (hNN' τ)
      (bwG_change_mem D u w hw τ hB₂ hB) (bwG_change_mem D u w hw τ hB hB₂) g hg) Q hQ, fun z => ?_⟩
  rw [← fnOf_mul]
  have hM : atInf (embT D) ((B⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) =
      fun τ => N τ * atInf (embT D) ((B₂⁻¹ : GL (Fin (D.R.N i)) D.host.E) : Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) D.host.E) τ := by
    funext τ
    simp only [hN, atInf]
    rw [← Matrix.map_mul, ← Units.val_mul]
    congr 2
    group
  rw [hM]

theorem local_global_lattice_level_zero (Tt : Forms0 D u) : BwLocGlob0 D u Tt :=
  local_global_of_basis_independence D u Tt (bwBasisInd_of_stab0 D u Tt fun w _ => local_GL_stabilises_lattice D w)

end Formalism.L2.GlobalTheoryTheory.LemB.G0
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LocalGlobalOfBasisIndependence =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.LocalGlobalOfBasisIndependence\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.GroupActionMulSingleEqDilation\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGlob\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

variable {D : D7} {u : D.what₂.Word}

def RatInC (D : D7) (u : D.what₂.Word) : Prop :=
  ∀ P ∈ RatSpan D ((D.fm u).lam 0), P ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam 0)

def RatGL (D : D7) (u : D.what₂.Word) : Prop :=
  ∀ (γ : D.what₂.Tau → GL (Fin (D.R.N 0)) D.host.E), ∀ P ∈ RatSpan D ((D.fm u).lam 0),
    MvPolynomial.C (∏ τ, (atInf (embT D) ((γ τ : GL (Fin (D.R.N 0)) D.host.E) :
        Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ).det ^ shiftOf (lamT u 0) τ) *
      subP (fun τ => atInf (embT D) ((γ τ : GL (Fin (D.R.N 0)) D.host.E) :
        Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ) P ∈ RatSpan D ((D.fm u).lam 0)

theorem intSpan_le_rat (w : D.what₂.places.Pl) {N : ℕ} (lam : D.what₂.Tau → DomWeight N) :
    Formalism.L2.Forms.IntSpan D w lam ≤ RatSpan D lam := by
  apply AddSubgroup.closure_mono
  rintro p ⟨r, f, -, hf, rfl⟩
  exact ⟨r, f, hf, rfl⟩

theorem mem_intSubm (w : D.what₂.places.Pl) {N : ℕ} (lam : D.what₂.Tau → DomWeight N)
    (p : MvPolynomial (D.what₂.Tau × Fin N × Fin N) ℂ) : p ∈ intSubm D w lam → p ∈ Formalism.L2.Forms.IntSpan D w lam := by
  intro hp
  induction hp using Submodule.span_induction with
  | mem x hx => exact hx
  | zero => exact (Formalism.L2.Forms.IntSpan D w lam).zero_mem
  | add x y _ _ hx hy => exact (Formalism.L2.Forms.IntSpan D w lam).add_mem hx hy
  | smul a x _ hx =>
    obtain ⟨r, hr, hra⟩ := Subring.mem_map.mp a.2
    have ha : a • x = D.what₂.embLL r • x := by
      rw [Subring.smul_def, hra]
    rw [ha]
    exact Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.bwG_intSpan_smul (D := D) w lam r hr hx

theorem crd_surj (T : Forms0 D u) (hA : admS D u) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (Q : (D.mem u).C.cls 0 → MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ)
    (hQ : ∀ c, ∃ P ∈ RatSpan D ((D.fm u).lam 0), P ∈ Formalism.L2.Forms.CSpan ((D.fm u).lam 0) ∧
      ∀ y, fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0)) 1 P y =
        fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0))
          (atInf (embT D) ((B c)⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1) (Q c) y) :
    ∃ x : ((D.fm u).lat 0).V, ∀ c, IsCrd T (B c) x c (Q c) := by
  let φ : (D.mem u).C.cls 0 → (D.mem u).C.Y 0 → ℂ := fun c z =>
    fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0))
      (atInf (embT D) ((B c)⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1) (Q c) (T.val0.eY z)
  have hFi : φ ∈ (D.fm u).Fi 0 := by
    rw [(D.fm u).Fi_zero, S0.mem_forms_level_zero_iff T hA φ]
    intro c
    obtain ⟨P, -, hPC, hPe⟩ := hQ c
    refine ⟨P, hPC, ?_⟩
    funext y
    have e := hPe y
    rw [lamT_zero] at e
    simp only [φ, LinearMap.funLeft_apply]
    rw [lamT_zero, e]
    exact congrArg _ (T.val0.eY.apply_symm_apply y).symm
  obtain ⟨x, hx⟩ := (T.val0.rat φ).2 ⟨hFi, fun c => by
    obtain ⟨P, hPR, -, hPe⟩ := hQ c
    exact ⟨P, hPR, fun z => (hPe _).symm⟩⟩
  exact ⟨x, fun c z => by rw [hx]⟩

theorem fnOf_frame (B : GL (Fin (D.R.N 0)) D.host.E)
    (Q : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ) (y) :
    fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0)) 1
        (MvPolynomial.C (∏ τ, (atInf (embT D) ((B⁻¹ : GL (Fin (D.R.N 0)) D.host.E) :
          Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ).det ^ shiftOf (lamT u 0) τ) *
          subP (fun τ => atInf (embT D) ((B⁻¹ : GL (Fin (D.R.N 0)) D.host.E) :
            Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E) τ) Q) y =
      fnOf (gramC (gramN D 0 (Nat.zero_le _)) (embT D)) (shiftOf (lamT u 0))
        (atInf (embT D) (B⁻¹ : GL (Fin (D.R.N 0)) D.host.E).1) Q y := by
  have key : ∀ (A z : D.what₂.Tau → Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) ℂ)
      (P : MvPolynomial (D.what₂.Tau × Fin (D.R.N 0) × Fin (D.R.N 0)) ℂ),
      MvPolynomial.eval (fun x => z x.1 x.2.1 x.2.2) (subP A P) =
        MvPolynomial.eval (fun x => (A x.1 * z x.1) x.2.1 x.2.2) P := by
    intro A z P
    induction P using MvPolynomial.induction_on with
    | C a => simp [subP]
    | add p q hp hq => rw [map_add (f := _), map_add (f := _), map_add (f := _), hp, hq]
    | mul_X p i hp =>
      rw [map_mul, map_mul, map_mul, hp]
      simp [subP, Matrix.mul_apply]
  simp only [fnOf, LinearMap.coe_mk, AddHom.coe_mk, map_mul, MvPolynomial.eval_C, Pi.one_apply, Matrix.one_mul]
  rw [key _ (fun τ => y.1 τ)]
  simp only [Matrix.det_mul, mul_zpow, Finset.prod_mul_distrib]
  ring

theorem onto_tL (hRC : RatInC D u) (hRG : RatGL D u) (T : Forms0 D u) (hA : admS D u) (w : D.what₂.places.Pl)
    (hw : OverT D u w) (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c)) (b : ℤ) :
    (Submodule.pi Set.univ fun _ => (intSubm D w ((D.fm u).lam 0)).map
      (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ b))) ≤ (tL D u w b ((D.fm u).S 0 w)).map (crdL T B w) := by
  intro y hy
  have hy' : ∀ c, ∃ q ∈ intSubm D w ((D.fm u).lam 0), (((D.mem u).A.T : ℂ) ^ b) • q = y c := fun c =>
    hy c (Set.mem_univ c)
  choose Q hQ hQy using hy'
  have hQI : ∀ c, Q c ∈ Formalism.L2.Forms.IntSpan D w ((D.fm u).lam 0) := fun c => mem_intSubm w _ _ (hQ c)
  obtain ⟨x₀, hx₀⟩ := crd_surj T hA B Q fun c =>
    ⟨_, hRG (fun _ => (B c)⁻¹) _ (intSpan_le_rat w _ (hQI c)), hRC _ (hRG (fun _ => (B c)⁻¹) _ (intSpan_le_rat w _ (hQI c))),
      fun y => fnOf_frame (B c) (Q c) y⟩
  have hx₀S : x₀ ∈ (D.fm u).S 0 w :=
    G0.local_global_lattice_level_zero D u T w hw 0 (Nat.zero_le _) rfl x₀ fun c => ⟨B c, hB c, Q c, hQI c, hx₀ c⟩
  let r : D.what₂.LL := ((D.mem u).A.T : D.what₂.LL) ^ b
  have hr : D.what₂.embLL r = ((D.mem u).A.T : ℂ) ^ b := by
    simp only [r, map_zpow₀, map_natCast]
  refine ⟨r • x₀, ⟨x₀, hx₀S, ?_⟩, ?_⟩
  · rw [LinearMap.map_smulₛₗ, hr]
    rfl
  · funext c
    show crd T B (r • x₀) c = y c
    rw [crd_smul T B r x₀ c, hr, crd_eq T B (hx₀ c), hQy c]

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IntSpanLeRat =====
