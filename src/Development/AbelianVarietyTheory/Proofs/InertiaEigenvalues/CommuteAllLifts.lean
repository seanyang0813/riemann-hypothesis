module

public import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.OffRange
public import Development.AbelianVarietyTheory.Definitions.TwistedInnerProducts.ZeroDegreeOfPinFor
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.CoeffHeckePolyOfComplex
public import Formalism.SharpRestriction.Divisibility.LiftErrorLocal
public import Development.AbelianVarietyTheory.Proofs.TwistedOperators.BaseEmbeddingReadingEvalAdelicFunction
public import Development.AbelianVarietyTheory.Statements.HeckeThetaIntegrals.ExistsIsHeckeSetting
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

noncomputable section

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH
open Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Mult Formalism.IndefR.NX
open scoped TensorProduct

namespace GlobalTheory.SupLaw

section Coset

open GlobalTheory.HeckeParts

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}
  {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat D A Ks}

theorem offPrincipalLevel (hSb : R.fam_Sb) (i : Fin D.R.m) {P : Formalism.L2.DIV.Pl D.host.E}
    (hso : Bridge.SplitOff P (R.Sb : Set (Formalism.L2.DIV.Pl D.host.E))) (c : ℕ) :
    OffLevel (R.datWp i R.triv) (1 ^ c) P := by
  refine ⟨hso.1, ?_, fun PP hPP => ?_⟩
  · rw [one_pow, Nat.cast_one]
    exact (Ideal.ne_top_iff_one _).1 P.isPrime.ne_top
  · have hPP' : PP ∈ R.Pg := hPP.elim id fun h => absurd h (Finset.notMem_empty _)
    have hS : PP ∈ (R.Sb : Set (Formalism.L2.DIV.Pl D.host.E)) := hSb hPP'
    refine ⟨fun h => hso.2.1 (h ▸ hS), fun h => hso.2.2 PP hS ?_⟩
    rw [Formalism.L2.Col.conjIdeal_asIdeal]
    refine PP.isMaximal.eq_of_le (Formalism.L2.Col.conjPrime₂ P).isPrime.ne_top fun a ha => ?_
    obtain ⟨a', ha', e⟩ := h a ha
    rw [Formalism.L2.Col.mem_conjP]
    have : Formalism.L2.Col.cO D.host.E a = a' := RingOfIntegers.ext e.symm
    rwa [this]

theorem cosetSum_comm (hL : R.toLevCh.Is A.μ0) (hSb : R.fam_Sb) (i : Fin D.R.m) {P P' : Formalism.L2.DIV.Pl D.host.E}
    (hso : Bridge.SplitOff P (R.Sb : Set (Formalism.L2.DIV.Pl D.host.E)))
    (hso' : Bridge.SplitOff P' (R.Sb : Set (Formalism.L2.DIV.Pl D.host.E))) {k k' : ℕ} {α α' : GA D (Wc D i)}
    {Rc Rc' : Finset (GA D (Wc D i))} (ha : IsHeckeAt (Wc D i) P k α) (ha' : IsHeckeAt (Wc D i) P' k' α')
    (hR : Bridge.IsDC (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) α Rc)
    (hR' : Bridge.IsDC (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) α' Rc') {F : GA D (Wc D i) → ℂ}
    (hF : RInv (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) F) :
    heckeLin (Wc D i) Rc (heckeLin (Wc D i) Rc' F) = heckeLin (Wc D i) Rc' (heckeLin (Wc D i) Rc F) := by
  obtain ⟨c, hβ⟩ := hL.βW i
  have hP := offPrincipalLevel hSb i hso c
  have hP' := offPrincipalLevel hSb i hso' c
  obtain ⟨e, ϖ, he, -, -, hα⟩ := ha
  obtain ⟨e', ϖ', he', -, -, hα'⟩ := ha'
  obtain ⟨⟨A₀, hA⟩, -⟩ := exists_locRep hβ hP he hα.2.1
  obtain ⟨⟨B₀, hB⟩, -⟩ := exists_locRep hβ hP' he' hα'.2.1
  have e1 : ∀ {F : GA D (Wc D i) → ℂ}, RInv (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) F →
      heckeLin (Wc D i) Rc F = heckeLin (Wc D i) A₀ F := fun hF =>
    (dcOp_eq_rInv hR hA.2 ⟨1, 1, by simp⟩ hF).1
  have e2 : ∀ {F : GA D (Wc D i) → ℂ}, RInv (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) F →
      heckeLin (Wc D i) Rc' F = heckeLin (Wc D i) B₀ F := fun hF =>
    (dcOp_eq_rInv hR' hB.2 ⟨1, 1, by simp⟩ hF).1
  have i1 : RInv (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) (heckeLin (Wc D i) A₀ F) := dcOp_rInv hA.2 hF
  have i2 : RInv (levG (Wc D i) (R.βW i) (R.datWp i R.triv)) (heckeLin (Wc D i) B₀ F) := dcOp_rInv hB.2 hF
  rw [e2 hF, e1 hF, e1 i2, e2 i1]
  exact hA.comm hβ hP hB hF

end Coset

section Tied

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
  {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]
  (Rl : RealDat3 D A3 Ks) (cG : Formalism.L2.DIV.G0 Rl.Pg D.R.r ≃* G0g D.nd) (S : RatDat D.ntw) (Y : NExpRealS Rl cG S)

theorem commute_of_read (hL : Rl.toRealDat.toLevCh.Is A3.A.μ0) (hSb : Rl.toRealDat.fam_Sb) (hW : Rl.toRealDat.models_HW)
    (i : Fin D.R.m) (hinj : Function.Injective ((Rl.FW i).j (sg0 D A3.A))) {P P' : Formalism.L2.DIV.Pl D.host.E}
    (hso : Bridge.SplitOff P (Rl.Sb : Set (Formalism.L2.DIV.Pl D.host.E)))
    (hso' : Bridge.SplitOff P' (Rl.Sb : Set (Formalism.L2.DIV.Pl D.host.E))) {k k' : ℕ} {α α' : GA D (Wc D i)}
    {Rc Rc' : Finset (GA D (Wc D i))} (ha : IsHeckeAt (Wc D i) P k α) (ha' : IsHeckeAt (Wc D i) P' k' α')
    (hR : Bridge.IsDC (levG (Wc D i) (Rl.βW i) (Rl.datWp i Rl.triv)) α Rc)
    (hR' : Bridge.IsDC (levG (Wc D i) (Rl.βW i) (Rl.datWp i Rl.triv)) α' Rc')
    {t t' : Module.End D.what₂.LL (S.WL ((i : ℕ) + 1))} {c c' : ℂ}
    (ht : ∀ x, (Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e (t x))) =
      c • heckeOn (Rl.MW i (sg0 D A3.A)) Rc ((Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e x))))
    (ht' : ∀ x, (Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e (t' x))) =
      c' • heckeOn (Rl.MW i (sg0 D A3.A)) Rc' ((Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e x)))) :
    Commute t t' := by
  refine LinearMap.ext fun x => (Y.fi i).e.injective (hinj ((hW i _).1 ?_))
  change (Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e (t (t' x)))) =
    (Rl.HW i (sg0 D A3.A)).e ((Rl.FW i).j (sg0 D A3.A) ((Y.fi i).e (t' (t x))))
  rw [ht, ht', ht', ht, map_smul, map_smul, smul_comm]
  refine congrArg (fun z : MMap (Rl.MW i (sg0 D A3.A)) => c' • c • z) ?_
  exact MultilinearMap.ext fun v => cosetSum_comm hL hSb i hso hso' ha ha' hR hR'
    (fun k hk h => GlobalTheory.HeckeSup.model_inv_cl hW i _ _ v k hk h)



theorem baseChange_comm (i : D.ntw.Tw) (j : ℕ) (b : Bool) {f : ℕ → PlE D.host → Module.End D.what₂.LL (S.WL j)}
    (hs : HeckeStabR S j f) (k k' : ℕ) (P P' : PlE D.host) (h : Commute (f k P) (f k' P')) :
    Commute (hkFR S i j b f hs k P) (hkFR S i j b f hs k' P') := by
  let r : ℕ → PlE D.host → Module.End S.Ks (FmK S j) := fun k P =>
    ((f k P).restrictScalars S.Ks).restrict (p := (S.A j).WK) (q := (S.A j).WK) fun x hx => hs k P x hx
  have hr : r k P * r k' P' = r k' P' * r k P := LinearMap.ext fun x => Subtype.ext (LinearMap.congr_fun h.eq x.1)
  unfold hkFR Commute SemiconjBy
  change (Module.End.baseChangeHom S.Ks (KB S i b) (FmK S j) (r k P)) * (Module.End.baseChangeHom S.Ks (KB S i b) (FmK S j) (r k' P')) =
    (Module.End.baseChangeHom S.Ks (KB S i b) (FmK S j) (r k' P')) * (Module.End.baseChangeHom S.Ks (KB S i b) (FmK S j) (r k P))
  rw [← map_mul, ← map_mul, hr]



theorem hkComm_of_family (f : ∀ j, ℕ → PlE D.host → Module.End D.what₂.LL (S.WL j))
    (hs : ∀ j, 1 ≤ j → j ≤ D.R.m → HeckeStabR S j (f j))
    (c : ∀ i : D.ntw.Tw, Bool → ℕ → PlE D.host → FractionRing (D.ntw.O i))
    (hEq : ∀ i j b (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) (k : ℕ) (P : PlE D.host) (x : D.nexp.Fm i j b), P ∉ D.ntw.S0 i →
      Formalism.BasicNotions.IsSplitPl D.host P → k ≤ D.R.r →
      Y.eF i j b h1 h2 (D.nexp.hkF i j b k P x) = c i b k P • hkFR S i j b (f j) (hs j h1 h2) k P (Y.eF i j b h1 h2 x))
    (hc : ∀ (i : D.ntw.Tw) j, 1 ≤ j → j ≤ D.R.m → ∀ k P k' P', Formalism.MainNotions.IntegralHeckeForms.HkIdx i k P → Formalism.MainNotions.IntegralHeckeForms.HkIdx i k' P' →
      Commute (f j k P) (f j k' P')) : HkComm D := by
  intro i _ j hj b k P k' P' hk hk'
  obtain ⟨h1, h2⟩ := Finset.mem_Icc.1 hj
  have hF := baseChange_comm S i j b (hs j h1 h2) k k' P P' (hc i j h1 h2 k P k' P' hk hk')
  refine LinearMap.ext fun x => (Y.eF i j b h1 h2).injective ?_
  change Y.eF i j b h1 h2 (D.nexp.hkF i j b k P (D.nexp.hkF i j b k' P' x)) =
    Y.eF i j b h1 h2 (D.nexp.hkF i j b k' P' (D.nexp.hkF i j b k P x))
  rw [hEq i j b h1 h2 k P _ hk.2.2.2 hk.2.2.1 hk.2.1, hEq i j b h1 h2 k' P' _ hk'.2.2.2 hk'.2.2.1 hk'.2.1,
    hEq i j b h1 h2 k' P' _ hk'.2.2.2 hk'.2.2.1 hk'.2.1, hEq i j b h1 h2 k P _ hk.2.2.2 hk.2.2.1 hk.2.1, map_smul, map_smul,
    smul_comm]
  exact congrArg (fun z => c i b k' P' • c i b k P • z) (LinearMap.congr_fun hF.eq (Y.eF i j b h1 h2 x))

theorem family_comm (hL : Rl.toRealDat.toLevCh.Is A3.A.μ0) (hF : Rl.toRealDat.IsFam) (hW : Rl.toRealDat.models_HW)
    (hinj : ∀ i, Function.Injective ((Rl.FW i).j (sg0 D A3.A))) (hC : GlobalTheory.ExportPin.Model.Covered Rl)
    (f : ∀ j, ℕ → PlE D.host → Module.End D.what₂.LL (S.WL j))
    (hr : ∀ (i : D.ntw.Tw) (n : Fin D.R.m) (k : ℕ) (P : PlE D.host), Formalism.MainNotions.IntegralHeckeForms.HkIdx i k P →
      ∀ (α : GA D (Wc D n)) (R : Finset (GA D (Wc D n))), IsHeckeAt (Wc D n) P k α →
        Bridge.IsDC (levG (Wc D n) (Rl.βW n) (Rl.datWp n Rl.triv)) α R → ∃ c : ℂ, ∀ x : S.WL ((n : ℕ) + 1),
          (Rl.HW n (sg0 D A3.A)).e ((Rl.FW n).j (sg0 D A3.A) ((Y.fi n).e (f ((n : ℕ) + 1) k P x))) =
            c • heckeOn (Rl.MW n (sg0 D A3.A)) R ((Rl.HW n (sg0 D A3.A)).e ((Rl.FW n).j (sg0 D A3.A) ((Y.fi n).e x))))
    (i : D.ntw.Tw) (j : ℕ) (h1 : 1 ≤ j) (h2 : j ≤ D.R.m) (k : ℕ) (P : PlE D.host) (k' : ℕ) (P' : PlE D.host)
    (hk : Formalism.MainNotions.IntegralHeckeForms.HkIdx i k P) (hk' : Formalism.MainNotions.IntegralHeckeForms.HkIdx i k' P') : Commute (f j k P) (f j k' P') := by
  obtain ⟨n, rfl⟩ : ∃ n, j = n + 1 := ⟨j - 1, by omega⟩
  let m : Fin D.R.m := ⟨n, h2⟩
  have so := hC i P hk.2.2.2 hk.2.2.1
  have so' := hC i P' hk'.2.2.2 hk'.2.2.1
  obtain ⟨α, Rc, ha, hR⟩ := GlobalTheory.HeckeSupSt.exists_heckeElt hL hF m so hk.2.1
  obtain ⟨α', Rc', ha', hR'⟩ := GlobalTheory.HeckeSupSt.exists_heckeElt hL hF m so' hk'.2.1
  obtain ⟨c, hc⟩ := hr i m k P hk α Rc ha hR
  obtain ⟨c', hc'⟩ := hr i m k' P' hk' α' Rc' ha' hR'
  exact commute_of_read Rl cG S Y hL hF.Sb hW m (hinj m) so so' ha ha' hR hR' hc hc'



end Tied

end GlobalTheory.SupLaw
