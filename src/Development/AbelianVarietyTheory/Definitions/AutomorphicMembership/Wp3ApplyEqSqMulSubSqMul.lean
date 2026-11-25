module

public import Formalism.LocalToGlobal.IndefiniteReal.BaseLiftsPackageOfPrimitiveLinks
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RealIoX
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.GoodPartEq
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

@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH NumberField IsDedekindDomain Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links
open Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Lev Formalism.L2.Pj Formalism.L2.Host

namespace GlobalTheory.Mem.R3.Tr

variable {B : Base} {C : Cols B} {a : Late B C} (b : Late B C) {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type}
variable {Ks : Type} [Field Ks] [NumberField Ks] [iK : Algebra Ks a.D.what₂.LL]

section General

variable {D : D7} {A : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m} {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL]

abbrev Parts (R : RealDat3 D A Ks) : Type :=
  (A.fam3.base3.Ix → Submodule ℂ R.HE.H) × (LevelP R.Pg D.R.r ℂ → Submodule ℂ (MMap (R.MY 0))) ×
    ∀ i : Fin D.R.m, A.fam3.base3.Ix → Submodule ℂ (R.HW i (sg0 D A.A)).H

def cxW (R : RealDat3 D A Ks) (F : Face3 D A) (u : Parts R) : Cx.CxData A.fam3.amb3 :=
  { R.toCx3 F with
    EEp := fun p => (by exact ((Tw.sub (twAt D.what₂.embLL A.A.v0) (u.1 p)) :))
    EEl := fun c => (by exact ((Tw.sub (twAt D.what₂.embLL A.A.v0) ((u.2.1 (R.toRealDat.levR F.lv2 c)).comap R.HE.e)) :))
    Wp := fun i p => (by exact ((Tw.sub (twAt D.what₂.embLL A.A.v0) (u.2.2 i p)) :)) }

def carriesW (R : RealDat3 D A Ks) (E : type_of% R.EEc) (p : A.fam3.base3.Ix) (c : Pl D.host.E → List ℤ → ℂ) : Prop :=
  E c ≠ ⊥ ∧ (E c).map (LinearMap.adjoint (R.Th A.A.μ0)) ≤
    Submodule.span ℂ (R.jX A.A.μ0 '' ((A.rowI A.A.μ0).inertTypeEigenspaceSum p.1 : Set (A.A.fam.R A.A.μ0).S.Forms))

def trSemW (R : RealDat3 D A Ks) (F : Face3 D A) (u : type_of% R.Carries × type_of% R.Wc')
    (tr : Fin D.R.m → (I0 × List ℕ → D.what₂.LL) → I0 × List ℕ → D.what₂.LL) : Prop :=
  ∀ j p c, u.1 p c → ∀ s : (A.liftI j A.A.μ0).OpIx → D.what₂.LL,
    (∃ x : (A.A.fam.L j A.A.μ0).S.Forms, x ∈ Cx.BlockGood.goodR (A.A.fam.L j A.A.μ0) (A.A.fam.lvlA F.P0 F.ψ0) ∧
      (∀ i, (A.liftI j A.A.μ0).opAll i x = s i • x) ∧ R.thG j A.A.μ0 (R.jV j A.A.μ0 x) ∈ u.2 j c ∧
      R.thG j A.A.μ0 (R.jV j A.A.μ0 x) ≠ 0) →
    ∀ k : (A.liftI j A.A.μ0).PlI × List ℕ, s (Sum.inr k) = tr j p.1.2 ((A.liftI j A.A.μ0).plI k.1, k.2)

def partAtW (F : Face3 D A) (X : Cx.CxData A.fam3.amb3) (i : Fin D.R.m) (p : A.fam3.base3.Ix) (v : InfinitePlace D.what₂.LL) : Prop :=
  ∃ x, X.tC F.cr false i A.A.μ0 (Cx.cpt A.A.v0.embedding x) ∈ X.Wp i p ∧
    Formalism.HermitianLatticesTheory.majAt (Pi.basisFun D.what₂.LL _) ((Cx.lv (F.fc X.zs) false).XT i A.A.μ0) v x x ≠ 0

end General

section Three

variable {A : FamIn3 a.D.what₂.LL G Pl0 I0 (List ℕ) T a.D.R.m} (R : RealDat3 a.D A Ks) (F : Face3 a.D A)

theorem eec_eq : R.EEc = letI := alg b iK; (real3 b R).EEc :=
  (by exact ((congrArg (fun (m : type_of% (@partFull a.D)) (c : Pl a.D.host.E → List ℤ → ℂ) =>
    (m R.θ (R.MY 0) (levS _ (R.βY 0) (R.dat0 R.triv)) (levChi _ (R.βY 0) (R.dat0 R.triv)) R.SF fun P d => c P (dualLab d)).comap
      R.HE.e) (partFull_eq b a)) :))

theorem wc_eq : R.Wc' = letI := alg b iK; (real3 b R).Wc' :=
  (by exact ((congrArg₂ (fun (W : type_of% R.toRealDat.Wat) (m : type_of% (@partFull a.D)) (i : Fin a.D.R.m)
      (c : Pl a.D.host.E → List ℤ → ℂ) =>
    (W i (sg0 a.D A.A) R.triv ⊓
      m R.θ (R.MW i (sg0 a.D A.A)) (levS _ (R.βW i) (R.datWp i R.triv)) (levChi _ (R.βW i) (R.datWp i R.triv)) R.SF c).comap
      (R.HW i _).e) (wat_eq b R.toRealDat) (partFull_eq b a)) :))

theorem carries_eq : R.Carries = letI := alg b iK; (real3 b R).Carries :=
  congrArg (carriesW R) (eec_eq b R)

theorem realAdelicInertTransport_typeRows_eq : R.EEp3 = letI := alg b iK; (real3 b R).EEp3 :=
  congrArg₂ (fun (Q : type_of% R.Carries) (E : type_of% R.EEc) (p : A.fam3.base3.Ix) =>
    ⨆ (c : Pl a.D.host.E → List ℤ → ℂ) (_ : Q p c), E c) (carries_eq b R) (eec_eq b R)

theorem wp3_apply_eq_sq_mul_sub_sq_mul : R.Wp3 = letI := alg b iK; (real3 b R).Wp3 :=
  congrArg₂ (fun (Q : type_of% R.Carries) (E : type_of% R.Wc') (i : Fin a.D.R.m) (p : A.fam3.base3.Ix) =>
    ⨆ (c : Pl a.D.host.E → List ℤ → ℂ) (_ : Q p c), E i c) (carries_eq b R) (wc_eq b R)

theorem parts_eq (_F : Face3 a.D A) : ((R.EEp3, R.toRealDat.EEat, R.Wp3) : Parts R) =
    ((letI := alg b iK; (real3 b R).EEp3), letI := alg b iK; (real b R.toRealDat).EEat, (letI := alg b iK; (real3 b R).Wp3)) :=
  Prod.ext (realAdelicInertTransport_typeRows_eq b R) (Prod.ext (eeat_eq b R.toRealDat) (wp3_apply_eq_sq_mul_sub_sq_mul b R))

theorem toCx3_eq : R.toCx3 F = (@RealDat3.toCx3 (@Late.D B C b) G ‹Group G› ‹Fintype G› Pl0 I0 T (@famInThreeCoefficientChange B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T A) Ks ‹Field Ks› ‹@NumberField Ks ‹Field Ks›› (@alg B C a b Ks ‹Field Ks› iK) (@real3 B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T Ks ‹Field Ks› ‹@NumberField Ks ‹Field Ks›› iK A R) (@face3 B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T A F)) :=
  congrArg (cxW R F) (parts_eq b R F)

theorem trISem_eq : R.TrISem F = (@RealDat3.TrISem (@Late.D B C b) G ‹Group G› ‹Fintype G› Pl0 I0 T (@famInThreeCoefficientChange B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T A) Ks ‹Field Ks› ‹@NumberField Ks ‹Field Ks›› (@alg B C a b Ks ‹Field Ks› iK) (@real3 B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T Ks ‹Field Ks› ‹@NumberField Ks ‹Field Ks›› iK A R) (@face3 B C a b G ‹Group G› ‹Fintype G› Pl0 I0 T A F)) :=
  congrArg₂ (fun Q E => trSemW R F (Q, E)) (carries_eq b R) (wc_eq b R)

variable {R F}

private theorem gEx_heq :
    let _ := alg b iK; HEq (R.gEx F) ((real3 b R).gEx (face3 b F)) := by
  let _ := alg b iK; dsimp only [RealDat3.gEx, real3, real, famInThreeCoefficientChange]; exact HEq.rfl

private theorem gWx_heq :
    let _ := alg b iK; HEq (R.gWx F) ((real3 b R).gWx (face3 b F)) := by
  let _ := alg b iK; dsimp only [RealDat3.gWx, real3, real, famInThreeCoefficientChange, sg0]; exact HEq.rfl

private theorem thG_heq (R : RealDat3 a.D A Ks) (i : Fin a.D.R.m) (t : T) :
    HEq (R.thG i t) (@RealDat.thG b.D G _ _ Pl0 T (famInThreeCoefficientChange b A).A Ks _ _ (alg b iK)
      (@RealDat3.toRealDat b.D G _ _ Pl0 I0 T (famInThreeCoefficientChange b A) Ks _ _ (alg b iK) (real3 b R)) i t) := by
  dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂]
  exact HEq.rfl

private theorem lamN_heq (R : RealDat3 a.D A Ks) :
    HEq R.lamN (@RealDat3.lamN b.D G _ _ Pl0 I0 T (famInThreeCoefficientChange b A) Ks _ _ (alg b iK) (real3 b R)) := by
  refine heq_of_eq (funext fun t => funext fun j => funext fun p => ?_)
  dsimp only [RealDat3.lamN, real3, famInThreeCoefficientChange, Late.D, Late.st, Stages.toD7, assemble]

private theorem transport_cx {P : Cx.CxData A.fam3.amb3 → Prop} (h : P (R.toCx3 F)) :
    let _ := alg b iK; P ((real3 b R).toCx3 (face3 b F)) :=
  (toCx3_eq b R F) ▸ h

private theorem transport_cx_rep {V : Cx.CxData A.fam3.amb3 → Type}
    {P : ∀ X : Cx.CxData A.fam3.amb3, V X → Prop}
    {X X' : Cx.CxData A.fam3.amb3} (hX : X = X') {g : V X} {g' : V X'} (hg : HEq g g')
    (h : P X g) : P X' g' := by
  subst hX; cases hg; exact h

private theorem adj_prop_of_heq
    {H₁ H₁' H₂ H₂' : Type}
    [n₁ : NormedAddCommGroup H₁] [i₁ : InnerProductSpace ℂ H₁] [FiniteDimensional ℂ H₁]
    [n₁' : NormedAddCommGroup H₁'] [i₁' : InnerProductSpace ℂ H₁'] [FiniteDimensional ℂ H₁']
    [n₂ : NormedAddCommGroup H₂] [i₂ : InnerProductSpace ℂ H₂] [FiniteDimensional ℂ H₂]
    [n₂' : NormedAddCommGroup H₂'] [i₂' : InnerProductSpace ℂ H₂'] [FiniteDimensional ℂ H₂']
    {V : ∀ (E : Type) [NormedAddCommGroup E] [InnerProductSpace ℂ E], Type}
    {f : H₁ →ₗ[ℂ] H₂} {f' : H₁' →ₗ[ℂ] H₂'}
    {w : V H₂} {w' : V H₂'} {α : Type} {lam lam' : α}
    (P : ∀ (E₁ E₂ : Type) [NormedAddCommGroup E₁] [InnerProductSpace ℂ E₁] [NormedAddCommGroup E₂] [InnerProductSpace ℂ E₂],
      (E₁ →ₗ[ℂ] E₂) → (E₂ →ₗ[ℂ] E₁) → V E₂ → α → Prop)
    (hH₁ : H₁ = H₁') (hH₂ : H₂ = H₂')
    (hn₁ : HEq n₁ n₁') (hi₁ : HEq i₁ i₁') (hn₂ : HEq n₂ n₂') (hi₂ : HEq i₂ i₂')
    (hf : HEq f f') (hw : HEq w w') (hlam : lam = lam')
    (h : P H₁ H₂ f (LinearMap.adjoint f) w lam) :
    P H₁' H₂' f' (LinearMap.adjoint f') w' lam' := by
  subst hH₁; subst hH₂; subst hlam
  cases hn₁; cases hi₁; cases hn₂; cases hi₂; cases hf; cases hw; exact h

private theorem kap_prop_of_heq
    {m m' : ℕ} {T Ix Ix' : Type} {HX HX' : T → Type}
    [nX : ∀ t, NormedAddCommGroup (HX t)] [iX : ∀ t, InnerProductSpace ℂ (HX t)] [∀ t, FiniteDimensional ℂ (HX t)]
    [nX' : ∀ t, NormedAddCommGroup (HX' t)] [iX' : ∀ t, InnerProductSpace ℂ (HX' t)] [∀ t, FiniteDimensional ℂ (HX' t)]
    {HE HE' : Type}
    [nE : NormedAddCommGroup HE] [iE : InnerProductSpace ℂ HE] [FiniteDimensional ℂ HE]
    [nE' : NormedAddCommGroup HE'] [iE' : InnerProductSpace ℂ HE'] [FiniteDimensional ℂ HE']
    {Th : ∀ t, HX t →ₗ[ℂ] HE} {Th' : ∀ t, HX' t →ₗ[ℂ] HE'}
    {E : Ix → Submodule ℂ HE} {E' : Ix' → Submodule ℂ HE'}
    {lam : T → ℕ → Ix → ℝ} {lam' : T → ℕ → Ix' → ℝ} {κ κ' : ℝ}
    (P : ℕ → ∀ (I H : Type) [NormedAddCommGroup H] [InnerProductSpace ℂ H],
      (T → H →ₗ[ℂ] H) → (I → Submodule ℂ H) → (T → ℕ → I → ℝ) → ℝ → Prop)
    (hm : m = m') (hIx : Ix = Ix') (hHX : HX = HX') (hHE : HE = HE')
    (hnX : HEq nX nX') (hiX : HEq iX iX') (hnE : HEq nE nE') (hiE : HEq iE iE')
    (hTh : HEq Th Th') (hE : HEq E E') (hlam : HEq lam lam') (hκ : κ = κ')
    (h : P m Ix HE (fun t => Th t ∘ₗ LinearMap.adjoint (Th t)) E lam κ) :
    P m' Ix' HE' (fun t => Th' t ∘ₗ LinearMap.adjoint (Th' t)) E' lam' κ' := by
  subst hm; subst hIx; subst hHX; subst hHE; subst hκ
  cases hnX; cases hiX; cases hnE; cases hiE; cases hTh; cases hE; cases hlam; exact h

theorem isInert_tr (h : R.IsInert) : letI := alg b iK; (real3 b R).IsInert := by
  let _ := alg b iK
  exact ⟨⟨h.tie.plI_inj, h.tie.okI⟩, h.onto, h.hR, h.hL, h.SF⟩

theorem isTup_tr (h : R.IsTup) : letI := alg b iK; (real3 b R).IsTup := by
  let _ := alg b iK
  exact ⟨h.mu_off, h.mu_used, h.mu_ne, h.mu_conj, h.mu_on⟩

theorem isScal_tr (h : R.IsScal F) : letI := alg b iK; (real3 b R).IsScal (face3 b F) := by
  let _ := alg b iK
  constructor
  case lam0 =>
    intro i t p l
    exact adj_prop_of_heq (V := fun H _ _ => Submodule ℂ H)
      (fun _ _ _ _ _ _ f g W lam => W ≠ ⊥ → (∀ x ∈ W, f (g x) = (l : ℂ) • x) → lam = l)
      (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble])
      (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂])
      (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble]; exact HEq.rfl)
      (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble]; exact HEq.rfl)
      (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂]; exact HEq.rfl)
      (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂]; exact HEq.rfl)
      (thG_heq b R i t) (heq_of_eq (congrFun (congrFun (wp3_apply_eq_sq_mul_sub_sq_mul b R) i) p))
      (by dsimp only [real3, famInThreeCoefficientChange]) (h.lam0 i t p l)
  case kap =>
    exact kap_prop_of_heq
      (fun m _ _ _ _ op E lam kap => ∀ κ : ℝ, Lift.IsKap m op E lam κ →
        (∃ t p, E p ≠ ⊥ ∧ ∏ j ∈ Finset.Icc 1 m, lam t j p ≠ 0) → kap = κ)
      (by dsimp only [Late.D, Late.st, Stages.toD7, assemble]) (by dsimp only [famInThreeCoefficientChange])
      (by dsimp only [real3, real]) (by dsimp only [real3, real])
      (by dsimp only [real3, real]; exact HEq.rfl) (by dsimp only [real3, real]; exact HEq.rfl)
      (by dsimp only [real3, real]; exact HEq.rfl) (by dsimp only [real3, real]; exact HEq.rfl)
      (by dsimp only [real3, real]; exact HEq.rfl) (heq_of_eq (realAdelicInertTransport_typeRows_eq b R))
      (lamN_heq b R) (by dsimp only [real3, real]) h.kap
  case off =>
    dsimp only [RealDat3.scal_off, real3, real, face3, Face3.cr, Face3.fc, famInThreeCoefficientChange]
    exact transport_cx (P := fun X => ∀ i p v (l : ℝ), v ≠ A.A.v0 → partAtW F X i p v →
      (∀ x, X.tC F.cr false i A.A.μ0 (Cx.cpt A.A.v0.embedding x) ∈ X.Wp i p → ∀ y,
        inner ℂ (X.wC false i v (Cx.cpt v.embedding ((X.liftMat F.cr false i A.A.μ0).mulVec x)))
            (X.wC false i v (Cx.cpt v.embedding ((X.liftMat F.cr false i A.A.μ0).mulVec y))) =
          ((l : ℝ) : ℂ) * Formalism.HermitianLatticesTheory.majAt (Pi.basisFun a.D.what₂.LL _) ((Cx.lv (F.fc X.zs) false).XT i A.A.μ0) v x y) →
      R.lam3 i A.A.μ0 p v = l) b h.off
  case abs0 =>
    dsimp only [RealDat3.zero_part_eigenvalue_convention, real3, real, face3, famInThreeCoefficientChange]
    have h1 : ∀ i t p, (real3 b R).Wp3 i p = ⊥ → R.lam3 i t p A.A.v0 = Real.exp ((F.Zsc (R.toCx3 F).zs).l6m i) :=
      (wp3_apply_eq_sq_mul_sub_sq_mul b R) ▸ h.abs0
    exact transport_cx (P := fun X => ∀ i t p, (real3 b R).Wp3 i p = ⊥ →
      R.lam3 i t p A.A.v0 = Real.exp ((F.Zsc X.zs).l6m i)) b h1
  case abs =>
    dsimp only [RealDat3.scal_abs, real3, real, face3, Face3.cr, Face3.fc, famInThreeCoefficientChange]
    exact transport_cx (P := fun X => ∀ i p v, v ≠ A.A.v0 → ¬ partAtW F X i p v →
      R.lam3 i A.A.μ0 p v = Real.exp ((F.Zsc X.zs).l6m i)) b h.abs
  case tup => exact h.tup

theorem primRows3_tr (h : PrimRows3 R F) : letI := alg b iK; PrimRows3 (real3 b R) (face3 b F) := by
  set_option maxHeartbeats 16000000 in
   let _ := alg b iK
   constructor
   case heckeR => exact h.heckeR
   case heckeL => exact h.heckeL
   case hecke =>
     unfold RealDat3.PHecke; dsimp only [famInThreeCoefficientChange]
     exact transport_cx (P := fun X => (∃ hE, Cx.HeckeIntertwiningDefinite A X hE) ∧ ∃ hW, Cx.HeckeIntertwiningLifts A X hW) b h.hecke
   case gUnit =>
     unfold RealDat3.PGUnit
     exact ⟨transport_cx_rep (V := fun X => Representation ℂ G X.EE) (P := fun X gE => ∀ (g : G) (x y : X.EE), inner ℂ (gE g x) (gE g y) = inner ℂ x y) (toCx3_eq b R F) (gEx_heq b) h.gUnit.1,
       transport_cx_rep (V := fun X => ∀ i, Representation ℂ G (X.W i)) (P := fun X gW => ∀ j (g : G) (x y : X.W j), inner ℂ (gW j g x) (gW j g y) = inner ℂ x y) (toCx3_eq b R F) (gWx_heq b) h.gUnit.2⟩
   case gEquiv =>
     unfold RealDat3.PGEquiv; dsimp only [famInThreeCoefficientChange]
     exact ⟨transport_cx_rep (V := fun X => Representation ℂ G X.EE) (P := fun X gE => Cx.GEquiv3 A X gE) (toCx3_eq b R F) (gEx_heq b) h.gEquiv.1,
       transport_cx_rep (V := fun X => ∀ i, Representation ℂ G (X.W i)) (P := fun X gW => Cx.LiftGroupEquivariance A X gW) (toCx3_eq b R F) (gWx_heq b) h.gEquiv.2⟩
   case block => exact transport_cx (P := fun X => X.zs.InBlock) b h.block
   case rowTest => exact transport_cx (P := fun X => Rat.RowTest X) b h.rowTest
   case liftTest => exact transport_cx (P := fun X => Rat.LiftTest X) b h.liftTest
   case liftTestB => exact transport_cx (P := fun X => Rat.LiftTestB X false) b h.liftTestB
   case liftOnto =>
     dsimp only [face3, famInThreeCoefficientChange]
     exact transport_cx (P := fun X => ∀ hW, Cx.HeckeIntertwiningLifts A X hW → U2.OntoC A X F.P0 F.ψ0 F.P1 F.ψ1 hW) b h.liftOnto
   case pos =>
     dsimp only [face3, Face3.fc, famInThreeCoefficientChange]
     exact transport_cx (P := fun X => ∀ c, (Cx.lv (F.fc X.zs) c).Pos) b h.pos
   case posScal => exact h.posScal
   case levE =>
     unfold RealDat3.PLevE; dsimp only [face3, famInThreeCoefficientChange]
     exact ⟨transport_cx_rep (V := fun X => Representation ℂ G X.EE) (P := fun X gE => Cx.LevType3 A X (P1 := F.P1) (ψ1 := F.ψ1) (Dc := F.Dc) (Sp := F.Sp) (Zsc := F.Zsc) gE false F.P0 F.ψ0) (toCx3_eq b R F) (gEx_heq b) h.levE.1,
       transport_cx_rep (V := fun X => Representation ℂ G X.EE) (P := fun X gE => Cx.LevType3 A X (P1 := F.P1) (ψ1 := F.ψ1) (Dc := F.Dc) (Sp := F.Sp) (Zsc := F.Zsc) gE true F.P1 F.ψ1) (toCx3_eq b R F) (gEx_heq b) h.levE.2⟩
   case h2P =>
     unfold RealDat3.PrincipalLevelBijective; dsimp only [face3, famInThreeCoefficientChange]
     exact transport_cx (P := fun X => Cx.PrincipalLevelBijectivity A X (P1 := F.P1) (ψ1 := F.ψ1) (Dc := F.Dc) (Sp := F.Sp) (Zsc := F.Zsc)) b h.h2P
   case thmB =>
     exact kap_prop_of_heq (fun m _ _ _ _ op E lam κ => Lift.IsKap m op E lam κ)
       (by dsimp only [Late.D, Late.st, Stages.toD7, assemble]) (by dsimp only [famInThreeCoefficientChange])
       (by dsimp only [real3, real]) (by dsimp only [real3, real])
       (by dsimp only [real3, real]; exact HEq.rfl) (by dsimp only [real3, real]; exact HEq.rfl)
       (by dsimp only [real3, real]; exact HEq.rfl) (by dsimp only [real3, real]; exact HEq.rfl)
       (by dsimp only [real3, real]; exact HEq.rfl) (heq_of_eq (realAdelicInertTransport_typeRows_eq b R))
       (lamN_heq b R) (by dsimp only [real3, real]) h.thmB
   case sumE => exact transport_cx (P := fun X => ∀ c, X.PartsE c) b h.sumE
   case unif => exact h.unif
   case mLat => exact transport_cx (P := fun X => X.MLat false) b h.mLat
   case levW =>
     unfold RealDat3.PLevW; dsimp only [face3, famInThreeCoefficientChange]
     exact transport_cx_rep (V := fun X => ∀ i, Representation ℂ G (X.W i)) (P := fun X gW => Cx.LevelTypeOfLifts A X (P1 := F.P1) (ψ1 := F.ψ1) (Dc := F.Dc) (Sp := F.Sp) (Zsc := F.Zsc) gW false F.P0 F.ψ0) (toCx3_eq b R F) (gWx_heq b) h.levW
   case thmA =>
     intro i t
     exact adj_prop_of_heq (V := fun H _ _ => A.fam3.base3.Ix → Submodule ℂ H)
       (fun _ _ _ _ _ _ f g W lam => Lift.IsLamP f g W lam)
       (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble])
       (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂])
       (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble]; exact HEq.rfl)
       (by dsimp only [real3, real, Late.D, Late.st, Stages.toD7, assemble]; exact HEq.rfl)
       (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂]; exact HEq.rfl)
       (by dsimp only [real3, real, famInThreeCoefficientChange, sg0, Late.D, Late.st, Stages.toD7, assemble, RowsRest.what₂]; exact HEq.rfl)
       (thG_heq b R i t) (heq_of_eq (congrFun (wp3_apply_eq_sq_mul_sub_sq_mul b R) i))
       (by dsimp only [real3, famInThreeCoefficientChange]; rfl) (h.thmA i t)
   case sumW => exact transport_cx (P := fun X => X.PartsW false) b h.sumW
   case scalConj =>
     dsimp only [face3, Face3.cr, famInThreeCoefficientChange]
     exact transport_cx (P := fun X => X.GalD F.cr false) b h.scalConj
   case dimParts => exact transport_cx (P := fun X => X.DimParts false) b h.dimParts

theorem realAdelicInertTransport_furtherRows (h : UnusedChoiceStatements R F) : letI := alg b iK; UnusedChoiceStatements (real3 b R) (face3 b F) := by
  letI := alg b iK
  constructor
  case ex => exact exAt_tr b h.ex
  case conj => exact h.conj
  case levelW => exact (by exact ((lLevelW_tr b h.levelW) :))
  case integral => exact h.integral

end Three

end GlobalTheory.Mem.R3.Tr

end
