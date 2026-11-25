module

public import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HermitianCodeWordWeilElementMemQuadraticField
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AssembleLattice
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsPrimesOk
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemUnitOff
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ProdAbsNormDivsDvd
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.PlacesOverConjPrimes
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsAll
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtUHInjective
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvSmulMemOfRedL
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadPrimeNormPrimeNeLevelPrime
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DecoratedLatticePointMoveDiamond
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FirstCoupledKernelEquivariantCosets
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KAtTopEquiv
public import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.XiEntryInvariant
import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.CharacterValueAtT
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsDefiniteLaws
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
import Formalism.LocalToGlobal.Columns.CoefColLemmas
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsRecordDat, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.OffOfNotMem, Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MoveStep

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsRecordDat =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsRecordDat", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.HermitianCodeWordWeilElementMemQuadraticField\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.AssembleLattice\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsPrimesOk\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MemUnitOff\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ProdAbsNormDivsDvd\nimport Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.CharacterValueAtT\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.PlacesOverConjPrimes\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.BaseFieldsDefiniteLaws\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LawsAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.Inh

open NumberField IsDedekindDomain Matrix
open Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.Col2
open Formalism.MainNotions.product_first_zeroth_parts (Ow)

theorem val_tauAt {X : Fields} {Pr : Primes X} (hPr : Pr.Ok) (u : Pr.Word) (hX : X.AbelianUnramifiedExtensionConditions) {w : HeightOneSpectrum (𝓞 X.K)}
    (hw : ((Pr.T u : ℕ) : 𝓞 X.K) ∈ w.asIdeal) (P : Pr.vT u) (s : Bool) (hs : s = true ↔ seenC Pr u w) (x : X.E) :
    X.emb (tauAt hPr u w P) (if s then x else star x) ∈ GlobalTheory.LvT.Inh.valO w ↔ P.1.valuation X.E x ≤ 1 := by
  rw [GlobalTheory.LvT.Inh.mem_valO_of_below (X.emb (tauAt hPr u w P)) w (pullW (tauAt hPr u w P) w) (fun _ => Iff.rfl), GlobalTheory.LvT.Inh.mem_valO]
  by_cases h : s = true
  · rw [if_pos h, show pullW _ w = P.1 from seesP_tauAt hPr u hX (hs.1 h) P]
  · rw [if_neg h, show pullW _ w = conjPrime₂ P.1 from seesPbar_tauAt hPr u hX hw (mt hs.2 h) P,
      GlobalTheory.CharVal.valuation_conjP, star_star]

local instance starHost (B : Base) : StarRing B.host.E := B.fields.starE

variable (B : Base) (C : Cols B) (W : RowsRest B C) (V : DivStage B C W) (S : SStage B C W) (N : NStage B C W) (G : GJStage B C)
  (u : B.Word)

def ofOk (I : ChainIn B.fields.E B.fields.K B.fields.Tau B.R) (J : AtIn I) (Q : PerIn I)
    (Z : FmIn J (assemble B C W V S N G).what₂.places) (hI : I.Ok) (hJ : J.Ok) (hQ : Q.Ok) (hT : Q.Over J) :
    Dat (assemble B C W V S N G) u where
  E := B.fields.E
  sE := B.fields.starE
  emb := B.fields.emb
  fok := base_fOk B
  I := I
  J := J
  Q := Q
  Z := Z
  hI := hI
  hJ := hJ
  hQ := hQ
  l := (laws_all I J _ _ _ (base_fOk B) hI hJ Q hQ (assemble B C W V S N G).what₂.places).1
  lf := (laws_all I J _ _ _ (base_fOk B) hI hJ Q hQ (assemble B C W V S N G).what₂.places).2
  hT := hT

theorem sees_ofOk (X : PreX B.toPre) (I : ChainIn B.fields.E B.fields.K B.fields.Tau B.R) (J : AtIn I) (Q : PerIn I)
    (Z : FmIn J (assemble B C W V S N G).what₂.places) (hI : I.Ok) (hJ : J.Ok) (hQ : Q.Ok) (hT : Q.Over J)
    (eT : J.T = B.T u) (eS : ∀ P ∈ J.ST, P ∈ (B.primes X).vT u)
    (eZ : ∀ w (P : J.ST), Z.tauOf w P = tauAt (GlobalTheory.BasePrimes.primes_ok B X).1 u w ⟨P.1, eS P.1 P.2⟩)
    (eF : ∀ w, Z.seenP w = true ↔ seenC (B.primes X) u w) :
    (ofOk B C W V S N G u I J Q Z hI hJ hQ hT).Sees := by
  intro w hw P x
  have h1 := _root_.Formalism.BasicNotions.resChar_mem (assemble B C W V S N G) w
  rw [show (assemble B C W V S N G).what₂.places.resChar w = B.T u from hw.trans eT] at h1
  refine (GlobalTheory.LvT.Inh.mem_Ow_iff_valO (assemble B C W V S N G) w _).trans ?_
  have h2 := val_tauAt (GlobalTheory.BasePrimes.primes_ok B X).1 u (GlobalTheory.Mem.FieldsLaws.fields_satisfy_definite_laws B).1 h1 ⟨P.1, eS P.1 P.2⟩ _ (eF w) x
  exact (iff_of_eq (congrArg (fun τ => B.fields.emb τ (if Z.seenP w then x else star x) ∈ GlobalTheory.LvT.Inh.valO w) (eZ w P))).trans h2

end GlobalTheory.LvT.Built.Inh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsRecordDat =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.OffOfNotMem =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.OffOfNotMem", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.KerIsTerm\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ExtUHInjective\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.InvSmulMemOfRedL\nimport Formalism.LocalToGlobal.Columns.CoefColLemmas\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.SplitPts

open NumberField IsDedekindDomain Matrix Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV GlobalTheory.Mem.Col2 GlobalTheory.LvT GlobalTheory.LvT.Built

theorem exists_ufGL {E : Type} [Field E] [StarRing E] {n : ℕ} (γ : GL (Fin n) E)
    (h : (γ : Matrix (Fin n) (Fin n) E)ᴴ * (γ : Matrix (Fin n) (Fin n) E) = 1) : ∃ g : UF E n, ufGL E n g = γ := by
  obtain ⟨e, rfl⟩ := (toGLm E n).surjective γ
  refine ⟨⟨e, fun x y => ?_⟩, rfl⟩
  rw [← toGLm_mulVec e x, ← toGLm_mulVec e y]
  show star ((toGLm E n e : Matrix (Fin n) (Fin n) E) *ᵥ x) ⬝ᵥ ((toGLm E n e : Matrix (Fin n) (Fin n) E) *ᵥ y) = star x ⬝ᵥ y
  rw [Matrix.star_mulVec, Matrix.dotProduct_mulVec, Matrix.vecMul_vecMul, h, Matrix.vecMul_one]

theorem sameOff_gmap {E : Type} [Field E] [NumberField E] [StarRing E] {n : ℕ} {ST : Finset (HeightOneSpectrum (𝓞 E))}
    {N N' : Submodule (𝓞 E) (Sp E n)} (g : Sp E n ≃ₗ[E] Sp E n) (h : SameOff ST N N') :
    SameOff ST (gmap g N) (gmap g N') := fun w hw => by
  ext x
  rw [mem_localization_gmap, mem_localization_gmap, h w hw]

variable {X : Fields} {Pr : Primes X} {R : Ranks}
  {sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)} {S : Set ℕ}

theorem notMem_QE (hs : IsSel X sel) (mu : Tup X.F X.E X.K S) {P : HeightOneSpectrum (𝓞 X.E)}
    (hP : P ∈ QE sel (mu : Chr X.F X.E X.K)) {p : ℕ} (hp : p.Prime) (hS : p ∈ S) : (p : 𝓞 X.E) ∉ P.asIdeal := by
  classical
  intro hm
  unfold QE at hP
  split_ifs at hP with hf
  swap
  · simp at hP
  obtain ⟨v, hv, rfl⟩ := Finset.mem_image.1 hP
  have hv' : v ∈ Qprime (mu : Chr X.F X.E X.K) := (Set.Finite.mem_toFinset hf).1 hv
  have hg : GoodPl X.E S v := by
    by_contra hn
    have := (Subgroup.mem_inf.1 mu.2).2
    exact hv' (Subgroup.mem_iInf.1 (Subgroup.mem_iInf.1 this v) hn)
  apply hg.2.2
  have h1 : (p : 𝓞 X.F) ∈ v.asIdeal := by
    rw [← hs v, Ideal.mem_under]
    simpa using hm
  have h2 : ((p : ℕ) : 𝓞 X.F ⧸ v.asIdeal) = 0 := by
    rw [← map_natCast (Ideal.Quotient.mk v.asIdeal)]
    exact Ideal.Quotient.eq_zero_iff_mem.2 h1
  have h3 := (ringChar.spec _ p).1 h2
  have h4 : ringChar (𝓞 X.F ⧸ v.asIdeal) = p :=
    ((Nat.dvd_prime hp).1 h3).resolve_left CharP.ringChar_ne_one
  show ringChar (𝓞 X.F ⧸ v.asIdeal) ∈ S
  rwa [h4]

variable (sel) (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (u : Pr.Word) (i : ℕ)

def offSetoid : Setoid (PtAt R sel mu cst u i) where
  r := SameOffPt sel mu cst u
  iseqv :=
    ⟨fun _ => ⟨fun _ _ => rfl, rfl, rfl, rfl⟩,
      fun h => ⟨fun w hw => (h.1 w hw).symm, h.2.1.symm, h.2.2.1.symm, h.2.2.2.symm⟩,
      fun h h' => ⟨fun w hw => (h.1 w hw).trans (h'.1 w hw), h.2.1.trans h'.2.1, h.2.2.1.trans h'.2.2.1,
        h.2.2.2.trans h'.2.2.2⟩⟩

theorem off_of_notMem (hPr : Pr.Ok) {w : HeightOneSpectrum (𝓞 X.E)} (h : (Pr.T u : 𝓞 X.E) ∉ w.asIdeal) :
    ∀ P ∈ Pr.vT u, w ≠ P ∧ w ≠ conjPrime₂ P := fun P hP => ne_of_T_notMem hPr u ⟨P, hP⟩ h

theorem ys_congr (hPr : Pr.Ok) (hQ : ∀ w ∈ QE sel (mu : Chr X.F X.E X.K), (Pr.T u : 𝓞 X.E) ∉ w.asIdeal)
    {N N' : Submodule (𝓞 X.E) (Sp X.E (R.N i))} (h : SameOff (Pr.vT u) N N') :
    (ysAt R sel mu cst i).ys N' = (ysAt R sel mu cst i).ys N := by
  classical
  have h1 : ∀ w : rowSG Pr sel mu, localization₂ w.1.asIdeal N' = localization₂ w.1.asIdeal N := fun w =>
    (h w.1 (off_of_notMem u hPr
      ((Finset.mem_union.1 w.2).elim (fun h => T_notMem_vGs hPr u ⟨w.1, h⟩) (hQ w.1)))).symm
  unfold ysAt
  split_ifs
  · show ybSet sel mu cst N' = ybSet sel mu cst N
    simp only [ybSet, locLat, h1]
  · rfl

theorem exists_split : ∀ (X : Fields) (Pr : Primes X) (R : Ranks) (W : Wts X Pr.Word R) (Ch : Chars X Pr R.m) (sel : HeightOneSpectrum (𝓞 X.F) → HeightOneSpectrum (𝓞 X.E)) (S : Set ℕ) (mu : Tup X.F X.E X.K S) (cst : LocCst X (rowSG Pr sel mu)) (L : ChIdx X Pr R (QE sel (mu : Chr X.F X.E X.K))) (G : ChGlob X R.m) (m2 : ℕ) (u : Pr.Word) (i : ℕ), X.Ok → Pr.Ok → IsSel X sel → Pr.T u ∈ S → L.Ok Ch sel mu cst G m2 → ∀ Tp : TopLev X Pr R (QE sel (mu : Chr X.F X.E X.K)), ∃ sp : Split (tdatAt sel mu cst L Tp u i) (Pr.T u), ∀ b p q, (sp.off b).r p q ↔ SameOffPt sel mu cst u p q := by
  intro X Pr R _ Ch sel S mu cst L G m2 u i hX hPr hs hT _ Tp
  classical
  have hQ : ∀ w ∈ QE sel (mu : Chr X.F X.E X.K), (Pr.T u : 𝓞 X.E) ∉ w.asIdeal :=
    fun w hw => notMem_QE hs mu hw (hPr.T_prime u) hT
  have hM := moveHyp_of_ok hPr u
  have hQ' : ∀ (P : Pr.vT u) (w : QE sel (mu : Chr X.F X.E X.K)), w.1 ≠ P.1 ∧ w.1 ≠ conjPrime₂ P.1 :=
    fun P w => ne_of_T_notMem hPr u P (hQ w.1 w.2)
  have hy := ysAt_off (R := R) sel mu cst hPr u hQ i
  refine ⟨{ off := fun _ => offSetoid sel mu cst u i
            off_act := ?_
            off_lat := fun _ _ _ h => h.1
            ext := ?_
            surj := ?_
            off_up := ?_
            off_dn := ?_
            off_dia := ?_
            dia_deco := ?_
            gam_surj := ?_
            T_mem := fun P hP => (T_unif hX hPr u ⟨P, hP⟩).1
            T_nsq := fun P hP => (T_unif hX hPr u ⟨P, hP⟩).2
            nonconj := fun P hP Q hQ => (hM ⟨P, hP⟩).st ⟨Q, hQ⟩ }, fun _ _ _ => Iff.rfl⟩
  · rintro b g p q ⟨h1, h2, h3, h4⟩
    refine ⟨sameOff_gmap g.1.1 h1, ?_, ?_, ?_⟩
    · funext w x
      show (g.2.1.1 w).1.mulVec (p.1.1.deco.1.be w (g.1.1.symm x)) = (g.2.1.1 w).1.mulVec (q.1.1.deco.1.be w (g.1.1.symm x))
      rw [h2]
    · funext w
      show g.1.1 * p.1.1.fr w * ((g.2.2.1 w)⁻¹).1 = g.1.1 * q.1.1.fr w * ((g.2.2.1 w)⁻¹).1
      rw [h3]
    · show (fun v => g.1.1 v) '' p.1.2 = (fun v => g.1.1 v) '' q.1.2
      rw [h4]
  · rintro b p q ⟨-, h2, h3, h4⟩ h
    have hN := congrArg Deco.N h
    have hf := congrArg Deco.f h
    exact PtY.ext' (Subtype.ext (Deco.ext hN hf h2)) h3 h4
  · intro b p e he h
    have hok := GlobalTheory.LvT.Pts.ok_of_agree p.1.1.deco.2 he
      fun w => h w.1 (off_of_notMem u hPr (T_notMem_vGs hPr u w))
    have hm := PtY.mv_spec p ⟨_, hok⟩ (fun w => (h w.1 (off_of_notMem u hPr (hQ w.1 w.2))).symm)
      (ys_congr sel mu cst u i hPr hQ h)
    have e1 := congrArg Subtype.val hm.1
    refine ⟨PtY.mv p ⟨_, hok⟩, ⟨?_, (congrArg Deco.be e1).symm, hm.2.1.symm, hm.2.2.symm⟩, ?_⟩
    · rw [e1]; exact h
    · have hN := congrArg Deco.N e1
      have hf := congrArg Deco.f e1
      exact Deco.ext hN hf (funext fun w => absurd w.2 (Finset.notMem_empty _))
  · intro b p P x hx hf
    have hm := mv_up (Pr.T u) p P (hM P) (T_unif hX hPr u P) (hQ' P) (hy P) hx hf
    refine ⟨fun w hw => ?_, (congrArg Deco.be hm.1).symm, hm.2.1.symm, hm.2.2.symm⟩
    refine Eq.trans ?_ (congrArg (fun d : Deco X.E _ _ _ => localization₂ w.asIdeal d.N) hm.1).symm
    exact ((upN_spec p.1.1.deco.2.lat p.1.1.deco.2.uni P.1 (hM P).ne hx).2.2.1 w (hw P.1 P.2).1 (hw P.1 P.2).2).localization_eq.symm
  · intro b p P g hg
    have e : (tdatAt sel mu cst L Tp u i).deco b p = p.1.1.deco.1.res (Finset.empty_subset _) :=
      Deco.ext rfl rfl (funext fun w => absurd w.2 (Finset.notMem_empty _))
    rw [e] at hg
    have hg' := dn_ok_of_res p.1.1.deco.2 P (hM P) (g := g) hg
    have hm := mv_dn p P (hM P) (hQ' P) (hy P) hg'
    refine ⟨fun w hw => ?_, (congrArg Deco.be hm.1).symm, hm.2.1.symm, hm.2.2.symm⟩
    refine Eq.trans ?_ (congrArg (fun d : Deco X.E _ _ _ => localization₂ w.asIdeal d.N) hm.1).symm
    exact ((p.1.1.deco.2.dnN_spec P (hM P).ne).2.2.1 w (hw P.1 P.2).1 (hw P.1 P.2).2).localization_eq.symm
  · intro b p P a
    show SameOffPt sel mu cst u p (PtY.mv p (DecoSet.dia1 P a p.1.1.deco))
    rw [PtY.mv_dia]
    exact ⟨fun _ _ => rfl, rfl, rfl, rfl⟩
  · intro b p P P' a hne
    show (PtY.mv p (DecoSet.dia1 P a p.1.1.deco)).1.1.deco.1.f P' = p.1.1.deco.1.f P'
    rw [PtY.mv_dia]
    funext x
    show ((Pi.mulSingle P a : DiaG (E := X.E) (ST := Pr.vT u)) P').1 * _ = _
    rw [Pi.mulSingle_eq_of_ne hne, Units.val_one, one_mul]
  · intro b γ h
    obtain ⟨g, hg⟩ := exists_ufGL γ h
    exact ⟨(g, 1, 1), hg⟩

end GlobalTheory.LvT.Built.SplitPts
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.OffOfNotMem =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MoveStep =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MoveStep", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.LatAtLattice\npublic import Development.AbelianVarietyTheory.Definitions.GlobalTwisting.ExistsRecordDat\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.BadPrimeNormPrimeNeLevelPrime\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.DecoratedLatticePointMoveDiamond\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.FirstCoupledKernelEquivariantCosets\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.KAtTopEquiv\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.OffOfNotMem\npublic import Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.XiEntryInvariant\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.LvT.Built.TrueLaws

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.HermitianLatticesTheory Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Ker GlobalTheory.Mem GlobalTheory.Mem.Col2
open _root_.Formalism.L2.Col

local instance starHost (B : Base) : StarRing B.host.E := B.fields.starE

variable {B : Base} {X : PreX B.toPre} (I : TC B X)

abbrev dat (l : I.Laws) (Z : TC.Later B (I.cols l)) (u : B.Word) (a : I.ι) : Dat (I.rec7 l Z) u :=
  Inh.ofOk B (I.cols l) Z.W Z.V Z.S Z.N Z.G u (I.chIn u a) (I.atIn u a) (I.perIn u a) (I.fmIn l.pr u a) (l.ch u a) (l.lev u a)
    (l.per u a) (l.ovr u a)

instance datFE (l : I.Laws) (Z : TC.Later B (I.cols l)) (u : B.Word) (Bd : Dat (I.rec7 l Z) u) : Field Bd.E := Bd.fE

instance datSE (l : I.Laws) (Z : TC.Later B (I.cols l)) (u : B.Word) (Bd : Dat (I.rec7 l Z) u) : StarRing Bd.E := Bd.sE

theorem dat_ch (l : I.Laws) (l0 : I.Law0 l) (Z : TC.Later B (I.cols l)) (u : B.Word) (a : I.ι) :
    (dat I l Z u a).ch = tw (I.tw l l0 Z) u a := rfl

theorem own_eq (l : I.Laws) (l0 : I.Law0 l) (Z : TC.Later B (I.cols l)) (u : B.Word) :
    own (I.rec7 l Z) u = tw (I.tw l l0 Z) u I.mu0 := rfl

variable {I}

theorem isTerm (h : I.Ok) (u : B.Word) (a : I.ι) {i : ℕ} (hi : i < B.R.m) :
    KerIsTerm (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u i := by
  obtain ⟨hX, hPr, -⟩ := base_fields_primes_ok B X
  exact IsTerm.kerIsTerm B.fields (B.primes X) B.R B.wts I.Ch I.sel I.S (I.tup a) (I.cst a) (I.idx a) I.glob (B.R.m - 2) u i hX hPr h.sel_ok
    (h.T_mem u) (h.idx_ok a) hi h.ch_ok h.g_mem ⟨_, _, _, _, h.ch_tied⟩ I.A

theorem kerDil (h : I.Ok) (l : I.Laws) (Z : TC.Later B (I.cols l)) (u : B.Word) (a : I.ι) {i : ℕ} (hi : i < B.R.m) :
    Dat.KerDil (B := dat I l Z u a) (i := i) (kAt (Pr := B.primes X) B.wts I.Ch I.sel (I.tup a) (I.cst a) (I.idx a) I.A u i) := by
  obtain ⟨hX, hPr, -⟩ := base_fields_primes_ok B X
  intro b b' d d' P c
  exact kAt_dia B.fields (B.primes X) B.R B.wts I.Ch I.sel I.S (I.tup a) (I.cst a) (I.idx a) I.glob (B.R.m - 2) u i hX hPr h.sel_ok (h.T_mem u)
    (h.idx_ok a) (I.Tp a) I.A (isTerm h u a hi) b b' d d' P c

theorem split (u : B.Word) (a : I.ι) (h : I.Ok) (i : ℕ) :
    Nonempty (Split ((I.atIn u a).A i) (B.T u)) := by
  obtain ⟨hX, hPr, -⟩ := base_fields_primes_ok B X
  obtain ⟨sp, -⟩ := SplitPts.exists_split B.fields (B.primes X) B.R B.wts I.Ch I.sel I.S (I.tup a) (I.cst a) (I.idx a) I.glob (B.R.m - 2) u i hX hPr
    h.sel_ok (h.T_mem u) (h.idx_ok a) (I.Tp a)
  exact ⟨⟨sp.off, sp.off_act, sp.off_lat, sp.ext, sp.surj, sp.off_up, sp.off_dn, sp.off_dia, sp.dia_deco, sp.gam_surj, sp.T_mem,
    sp.T_nsq, sp.nonconj⟩⟩

open Classical in
theorem sees (l : I.Laws) (Z : TC.Later B (I.cols l)) (u : B.Word) (a : I.ι) : (dat I l Z u a).Sees :=
  Inh.sees_ofOk B (I.cols l) Z.W Z.V Z.S Z.N Z.G u X (I.chIn u a) (I.atIn u a) (I.perIn u a) (I.fmIn l.pr u a) (l.ch u a)
    (l.lev u a) (l.per u a) (l.ovr u a) rfl (fun _ h => h) (fun _ _ => rfl) (fun _ => decide_eq_true_iff)

local instance moveStepDatNumberField (I : TC B X) (l : I.Laws) (Z : TC.Later B (I.cols l))
    (u : B.Word) (a : I.ι) : @NumberField (dat I l Z u a).E (dat I l Z u a).fE :=
  (dat I l Z u a).nE

end GlobalTheory.LvT.Built.TrueLaws
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.GlobalInterpolation.MoveStep =====
