module

public import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGlob
public import Formalism.LocalToGlobal.GlobalTheory.GL6.SecondBranchInclLengthOfLengths
public import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength
public import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PowSmulLatticeLeWeightLatticeTop
public import Formalism.SharpRestriction.GlobalSchurBounds.LinkTied
public import Formalism.LocalToGlobal.GroupLattices.Joint0
import Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.CrdLBwLe, Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.CrdLBwLe =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.CrdLBwLe", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists\nimport Formalism.LocalToGlobal.GlobalTheory.GL6.LatticeInclusionFamilyOf\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGlob\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

variable {D : D7} {u : D.what₂.Word}

theorem crd_Bw (T : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w) (hs : (D.fm u).seenP w = true)
    (v : (D.mem u).A.vT) (B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c))
    (hB' : ∀ c, IsLocBasis (D.mem u).A.T (Lk T.atT 0 (Nat.zero_le _) v c : Set _) (B' c))
    (x : ((D.fm u).lat 0).V) (hx : x ∈ (D.fm u).Bw 0 w v) (c : (D.mem u).C.cls 0) :
    crd T B x c ∈ ((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c))).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift)) := by
  obtain ⟨P, hP, hPe⟩ := (T.bw0 w hw hs v x).1 hx c (B c) (B' c) (hB c) (hB' c)
  have hc : IsCrd T (B c) x c (MvPolynomial.C (∏ τ, (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ).det ^
      shiftOf (lamT u 0) τ) * Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c)) P) := by
    intro z
    rw [hPe z, ← bwA_N_mul, fnOf_mul]
  rw [crd_eq T B hc]
  have ho : ∀ τ, τ ≠ (D.fm u).tauOf w v → bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ = 1 := by
    intro τ h
    unfold bwA_N
    rw [if_neg h]
  have hprod : ∏ τ, (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) τ).det ^ shiftOf (lamT u 0) τ =
      (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
        ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift := by
    rw [Fintype.prod_eq_single ((D.fm u).tauOf w v) (fun τ h => by rw [ho τ h, Matrix.det_one, one_zpow]), lamT_zero]
    rfl
  rw [hprod, MvPolynomial.C_mul']
  exact ⟨_, ⟨P, Submodule.subset_span hP, rfl⟩, rfl⟩

theorem crd_S (T : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c))
    (x : ((D.fm u).lat 0).V) (hx : x ∈ (D.fm u).S 0 w) (c : (D.mem u).C.cls 0) :
    crd T B x c ∈ intSubm D w ((D.fm u).lam 0) := by
  have hB'' : IsLocBasis (D.what₂.places.resChar w)
      (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D 0 (Nat.zero_le _)) (clsCrd D u 0 (Nat.zero_le _) c)) (B c) := by
    rw [← bwG_Ld_coe D u 0 (Nat.zero_le _) c]
    have hw' : D.what₂.places.resChar w = (D.mem u).A.T := hw
    rw [hw']
    exact hB c
  induction hx using Submodule.span_induction with
  | mem y hy =>
    obtain ⟨P, hP, hPe⟩ := (T.val0.lat y).1 hy w c (B c) hB''
    rw [crd_eq T B (c := c) hPe]
    exact Submodule.subset_span hP
  | zero =>
    rw [show crd T B 0 c = 0 from congrFun (map_zero (crdL T B w)) c]
    exact Submodule.zero_mem _
  | add y y' _ _ hy hy' =>
    rw [show crd T B (y + y') c = crd T B y c + crd T B y' c from congrFun (crd_add T B y y') c]
    exact Submodule.add_mem _ hy hy'
  | smul r y _ hy =>
    rw [show crd T B (r • y) c = crd T B ((r : D.what₂.LL) • y) c from rfl, crd_smul T B (r : D.what₂.LL) y c]
    exact Submodule.smul_mem _ (⟨D.what₂.embLL (r : D.what₂.LL), ⟨r, r.2, rfl⟩⟩ : bwA_Ow D w) hy

theorem crd_tL (T : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c)) (b : ℤ)
    (y : ((D.fm u).lat 0).V) (hy : y ∈ tL D u w b ((D.fm u).S 0 w)) (c : (D.mem u).C.cls 0) :
    crd T B y c ∈ (intSubm D w ((D.fm u).lam 0)).map (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ b)) := by
  obtain ⟨x, hx, hxy⟩ := hy
  have hc : IsCrd T (B c) y c ((((D.mem u).A.T : ℂ) ^ b) • crd T B x c) := by
    intro z
    rw [hxy, map_smul]
    show (((D.mem u).A.T : ℂ) ^ b) * (D.fm u).emb 0 x c z = _
    rw [crd_spec T B x c z]
    rfl
  rw [crd_eq T B hc]
  exact ⟨_, crd_S T w hw B hB x hx c, rfl⟩

theorem crdL_Bw_le (T : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w) (hs : (D.fm u).seenP w = true)
    (v : (D.mem u).A.vT) (B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c))
    (hB' : ∀ c, IsLocBasis (D.mem u).A.T (Lk T.atT 0 (Nat.zero_le _) v c : Set _) (B' c)) :
    ((D.fm u).Bw 0 w v).map (crdL T B w) ≤ Submodule.pi Set.univ fun c =>
      ((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c))).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift)) := by
  rw [Submodule.map_le_iff_le_comap]
  intro x hx
  rw [Submodule.mem_comap, Submodule.mem_pi]
  intro c _
  exact crd_Bw T w hw hs v B B' hB hB' x hx c

theorem crdL_tL_le (T : Forms0 D u) (w : D.what₂.places.Pl) (hw : OverT D u w)
    (B : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E)
    (hB : ∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c)) (b : ℤ) :
    (tL D u w b ((D.fm u).S 0 w)).map (crdL T B w) ≤ Submodule.pi Set.univ fun _ =>
      (intSubm D w ((D.fm u).lam 0)).map (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ b)) := by
  rw [Submodule.map_le_iff_le_comap]
  intro y hy
  rw [Submodule.mem_comap, Submodule.mem_pi]
  intro c _
  exact crd_tL T w hw B hB b y hy c

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.CrdLBwLe =====

-- ===== clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount", "h": "module\n\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.IsCrdExists\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.SecondBranchInclLengthOfLengths\npublic import Formalism.SharpRestriction.GlobalSchurBounds.LemmaBSecondBranchOfLength\npublic import Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.CrdLBwLe\npublic import Formalism.LocalToGlobal.GlobalTheory.GL6.DiagonalSlopes.PowSmulLatticeLeWeightLatticeTop\npublic import Formalism.SharpRestriction.GlobalSchurBounds.LinkTied\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\npublic import Formalism.LocalToGlobal.GroupLattices.Joint0\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.GlobalTheoryTheory.LemB

open Formalism.BasicNotions Formalism.MainNotions.product_first_zeroth_parts Formalism.L2.Forms NumberField MvPolynomial Formalism.L2.GlobalTheoryTheory.LocalLatticeBases

def OntoAt {D : D7} {u : D.what₂.Word} (T : Forms0 D u) (w : D.what₂.places.Pl) (v : (D.mem u).A.vT)
    (B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E) : Prop :=
  (Submodule.pi Set.univ fun c =>
      ((intSubm D w ((D.fm u).lam 0)).map
            ((Formalism.L2.Forms.subP (bwA_N D ((D.fm u).tauOf w v) (B c) (B' c))).toLinearMap.restrictScalars (bwA_Ow D w))).map
          (scO (bwA_Ow D w) _ ((bwA_N D ((D.fm u).tauOf w v) (B c) (B' c) ((D.fm u).tauOf w v)).det ^
            ((D.fm u).lam 0 ((D.fm u).tauOf w v)).detShift))) ≤ ((D.fm u).Bw 0 w v).map (crdL T B w) ∧
  (Submodule.pi Set.univ fun _ => (intSubm D w ((D.fm u).lam 0)).map
      (scO (bwA_Ow D w) _ (((D.mem u).A.T : ℂ) ^ (D.fm u).bTop ((D.fm u).tauOf w v)))) ≤
    (tL D u w ((D.fm u).bTop ((D.fm u).tauOf w v)) ((D.fm u).S 0 w)).map (crdL T B w)

def SecondBranchCoordinates (D : D7) (u : D.what₂.Word) : Prop :=
  ∀ T : Forms0 D u, admS D u → ∀ w, OverT D u w → (D.fm u).seenP w = true → ∀ v,
    0 ≤ (D.fm u).bTop ((D.fm u).tauOf w v) →
    ∃ B B' : (D.mem u).C.cls 0 → GL (Fin (D.R.N 0)) D.host.E,
      (∀ c, IsLocBasis (D.mem u).A.T (Ld D u 0 (Nat.zero_le _) c : Set _) (B c)) ∧
      (∀ c, IsLocBasis (D.mem u).A.T (Lk T.atT 0 (Nat.zero_le _) v c : Set _) (B' c)) ∧
      (∀ c, (((((B c)⁻¹ * B' c : GL (Fin (D.R.N 0)) D.host.E) : Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map
          (embT D ((D.fm u).tauOf w v))).det * (((D.mem u).A.T : ℂ))⁻¹ ∈ bwA_Ow D w ∧
        ((D.mem u).A.T : ℂ) * ((((((B c)⁻¹ * B' c : GL (Fin (D.R.N 0)) D.host.E) :
          Matrix (Fin (D.R.N 0)) (Fin (D.R.N 0)) D.host.E)).map (embT D ((D.fm u).tauOf w v))).det)⁻¹ ∈ bwA_Ow D w) ∧
      OntoAt T w v B B'

def DuCount (D : D7) (u : D.what₂.Word) : Prop :=
  D.duS u = Fintype.card ((D.mem u).C.cls 0) * ∏ τ, Module.finrank ℤ (delSq ℤ (D.R.N 0) ((D.fm u).lam 0 τ))

theorem lenLen2_of_coordOnto {D : D7} {u : D.what₂.Word} (T : Forms0 D u) (hA : admS D u) (hC : SecondBranchCoordinates D u)
    (hd : DuCount D u) : SeenPlaceLatticeLengthFormula D u := by
  intro w hw hs v hb
  obtain ⟨B, B', hB, hB', hu, hO1, hO2⟩ := hC T hA w hw hs v hb
  exact lenLen2_of_coord D u T.atT T.lv0 w hw v (fun c => Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.S0.bwL_lcInt0 D u T 0 (Nat.zero_le _) rfl c) B B' hB hB' hu
    (crdL T B w) (crdL_inj T B w) (le_antisymm (crdL_Bw_le T w hw hs v B B' hB hB') hO1)
    (le_antisymm (crdL_tL_le T w hw B hB _) hO2) hd

theorem second_branch_of_coordinates_and_count (hC : ∀ (D : D7) (u : D.what₂.Word), SecondBranchCoordinates D u)
    (hd : ∀ (D : D7) (u : D.what₂.Word), Forms0 D u → admS D u → DuCount D u) :
    ∀ (D : D7) (u : D.what₂.Word), Formalism.MainNotions.RT.SecondBranchIntegralityUnderForms D u := fun D u =>
  Formalism.MainNotions.lemmaB_second_branch_of_length_formula D u fun _ hT => by
    obtain ⟨⟨Ch, chOf, T, -⟩, hA⟩ := hT
    exact lenLen2_of_coordOnto T.to0 hA (hC D u) (hd D u T.to0 hA)

end Formalism.L2.GlobalTheoryTheory.LemB
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GlobalTheory.CoordinateLengths.SecondBranchOfCoordinatesAndCount =====
