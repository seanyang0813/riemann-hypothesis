module

public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.UpLReStage
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemPrinCongOfSm
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPtOfIffUnitaryDecoration
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPtOfMulJ0Decoration
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrueColumnSpacesStandardInFrameCoords
public import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RootsMinpolyPhi
public import Mathlib.RepresentationTheory.Coinduced
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RedivisionStructureEq
public import Formalism.LocalToGlobal.HermitianForms.TiedSym
public import Formalism.LocalToGlobal.HermitianColumns.SymAll
public import Formalism.LocalToGlobal.GroupLattices.Joint0
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow
public import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DiscreteSeriesUpqUniqueOfClassification
public import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StarCoeffOfEqReverse
public import Development.AbelianVarietyTheory.Definitions.Foundations.CdScaleTieIff
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsDiscreteSeriesFormalDegreeProduct
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSpectralObjectsOverReplacedStagesStatement
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NeZeroTop
import Development.AbelianVarietyTheory.Proofs.DivisorProofs.RootsReverseProd
import Mathlib.Algebra.AffineMonoid.UniqueSums
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Tactic.Basify
import Mathlib.Tactic.ENatToNat
import Mathlib.Tactic.NormNum.Parity
import Mathlib.Topology.Sheaves.Init
import Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCharLab
import Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemChainVecsDet
import Mathlib.Tactic.Linter.Style
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrueScaleIsScale

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotLv3MvFixH, Development.AbelianVarietyTheory.Proofs.FoundationProofs.LabelEqOfMemSuppSpan, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FormsRe, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermRe, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColsTiedSym, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RangeEEAndNorm, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelThreeToFour

-- ===== clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotLv3MvFixH =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotLv3MvFixH", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.UpLReStage\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.MemPrinCongOfSm\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPtOfIffUnitaryDecoration\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsPtOfMulJ0Decoration\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrueColumnSpacesStandardInFrameCoords\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.NeZeroTop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.SRe.CarModel

section Pts
open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Col Formalism.L2.DIV Formalism.L2.Ker Formalism.UG Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.Chr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC GlobalTheory.Mem.Col2.TopCh GlobalTheory.Mem.ColAd Matrix
attribute [local instance] GlobalTheory.Mem.Col2.starE Formalism.BasicNotions.Host.cmStar

theorem pt_swap {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [StarRing E] [Algebra F E] (hc : CMData F E) {n : ℕ}
    [NeZero n] {ST SG Q Q' : Finset (HeightOneSpectrum (𝓞 E))} (hQ : Q' = ∅) {y k k' g : GL (Fin n) (AfE F E)} {p : DecoF E n ST SG Q}
    {q : DecoF E n ST SG Q'} (h : IsPtOf hc (y * k) p) (h' : IsPtOf hc (y * k') p) (hq : IsPtOf hc (g * k) q) :
    IsPtOf hc (g * k') q := by
  have e : ∀ a : GL (Fin n) (AfE F E), a * k * (k⁻¹ * k') = a * k' := fun a => by group
  obtain ⟨hz, hr⟩ := ((isPtOf_mul_J0 F E hc n ST SG Q (y * k) (k⁻¹ * k') p p 1).1 h (by rw [e]; exact h')).2 (one_smul _ _).symm
  have := (isPtOf_mul_J0 F E hc n ST SG Q' (g * k) (k⁻¹ * k') q q 1).2.1 hQ hq hz hr
  rw [e] at this
  exact (one_smul _ q : ((1, 1, 1) : UF E n × GLG (E := E) (n := n) (SG := SG) × GLQ E n Q') • q = q) ▸ this



theorem reads_le {B : Base} {X : PreX B.toPre} (I : TC B X) (u : B.Word) (i : ℕ) {Lb Lb'} {U U' : Subgroup (GA B (B.R.N i))}
    {chi : U →* ℂˣ} {chi' : U' →* ℂˣ} {y y' st st' k k'} (hy : y' = y)
    (h : I.Reads u I.mu0 i (fun _ => ()) (fun _ => Lb) (fun _ => U) (fun _ => chi) y st k)
    (h' : I.Reads u I.mu0 i (fun _ => ()) (fun _ => Lb') (fun _ => U') (fun _ => chi') y' st' k')
    (hU : U ≤ UAd B.sp.cm (B.R.N i)) (x : U) : ∃ hx : x.1 ∈ U', chi' ⟨x.1, hx⟩ = chi x := by
  subst hy
  rename' y' => y
  obtain ⟨c, -⟩ := h.onto ()
  have hQ : QE I.sel (I.tup I.mu0 : Chr B.fields.F B.fields.E B.fields.K) = ∅ := by
    rw [I.trueColumn_tuple_trivial_eq_one]
    exact twistPrimes_trivialTuple_empty I.sel I.S
  haveI : NeZero (B.R.N i) := ⟨(B.R.N_pos i).ne'⟩
  obtain ⟨p0, hp0, -⟩ := h.k_std ()
  have hk : k () ∈ UAd B.sp.cm (B.R.N i) := hp0.uni
  have hyk : y c * k () ∈ UAd B.sp.cm (B.R.N i) := (h.pt c).uni
  have hg : y c * x.1 * k () ∈ UAd B.sp.cm (B.R.N i) := by
    have h1 : y c * x.1 * k () = (y c * k ()) * ((k ())⁻¹ * x.1 * k ()) := by group
    rw [h1]
    exact mul_mem hyk (mul_mem (mul_mem (inv_mem hk) (hU x.2)) hk)
  obtain ⟨q₁, hq₁, -⟩ := exists_near (ST := (B.primes X).vT u) (SG := (B.primes X).vGs)
    (Q := QE I.sel (I.tup I.mu0 : Chr B.fields.F B.fields.E B.fields.K)) B.sp.cm 0 hg
  have hq : IsPtOf B.sp.cm (y c * x.1 * k ()) q₁ :=
    (GlobalTheory.Mem.Col2.PtDeco.isPtOf_iff_decoRaw _ _ B.sp.cm _ _ _ _ _ q₁ hQ).2 ⟨hg, hq₁.symm⟩
  have hq' : IsPtOf B.sp.cm (y c * x.1 * k' ()) q₁ := pt_swap B.sp.cm hQ (h.pt c) (h'.pt c) hq
  have hm := (h.lev c x.1 q₁ hq).1 x.2
  have hx : x.1 ∈ U' := (h'.lev c x.1 q₁ hq').2 hm
  obtain ⟨κ, hgam, hκq, -⟩ := hm
  refine ⟨hx, Units.ext ?_⟩
  exact (h'.chr c ⟨x.1, hx⟩ κ hgam (by rw [hκq]; exact hq')).trans (h.chr c x κ hgam (by rw [hκq]; exact hq)).symm

theorem heq_chi {G : Type} [Group G] {U U' : Subgroup G} {chi : U →* ℂˣ} {chi' : U' →* ℂˣ}
    (h : ∀ x : U, ∃ hx : x.1 ∈ U', chi' ⟨x.1, hx⟩ = chi x) (h' : ∀ x : U', ∃ hx : x.1 ∈ U, chi ⟨x.1, hx⟩ = chi' x) :
    U' = U ∧ HEq chi' chi := by
  have e : U' = U := le_antisymm (fun x hx => (h' ⟨x, hx⟩).1) (fun x hx => (h ⟨x, hx⟩).1)
  subst e
  exact ⟨rfl, heq_of_eq (MonoidHom.ext fun x => (h x).2)⟩

end Pts

section Std
open Formalism.BasicNotions Formalism.MainNotions Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Col2.TC GlobalTheory.Mem.Top GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3.Tr GlobalTheory.Mem.ColAd Formalism.L2.Col
attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T}



theorem U_le (Z : w.Lt) (u : B.Word) (F : Forms0 (w.D Z) u) :
    (show Subgroup (GA B (B.R.N 0)) from F.cls0.lev.U) ≤ UAd B.sp.cm (B.R.N 0) := by
  have hg1 : gramN (w.D Z) 0 (Nat.zero_le _) = 1 := ((spaces_in_coordinates w.I w.ok w.pins w.l Z).2.2.2 0 (Nat.zero_le _)).1
  have eU : UPts (sigD (w.D Z)) (gramN (w.D Z) 0 (Nat.zero_le _)) (FiniteAdeleRing (𝓞 (w.D Z).host.F) (w.D Z).host.F) =
      UAd B.sp.cm (B.R.N 0) := by rw [hg1]; rfl
  exact fun x hx => eU ▸ ((F.cls0.lev.U_eq x).1 hx).1

abbrev Car (B : Base) : Type :=
  Submodule (𝓞 B.host.E) (Fin (B.R.N 0) → B.host.E) × Σ U : Subgroup (GA B (B.R.N 0)), (U →* ℂˣ)



def car (Z : w.Lt) (u : B.Word)
    (S : StepLevel (w.D Z).host.F (w.D Z).host.E (sigD (w.D Z)) (gramN (w.D Z) 0 (Nat.zero_le _)) ((w.D Z).mem u).A.T (w.D Z).R.f
      (badG (w.D Z))) : Car B := (S.Lb, ⟨S.U, S.chi⟩)



theorem car_eq {Z Z' : w.Lt} (t : ColT w Z) (t' : ColT w Z') (u : B.Word) :
    car Z' u (t'.C.forms u).to0.cls0.lev = car Z u (t.C.forms u).to0.cls0.lev := by
  obtain ⟨k, h⟩ := (t.std u).ends 0 (Nat.zero_le _) (Or.inl rfl)
  obtain ⟨k', h'⟩ := (t'.std u).ends 0 (Nat.zero_le _) (Or.inl rfl)
  have hy := (funext ((t.std u).yE 0 (Nat.zero_le _) (Or.inl rfl))).trans (funext ((t'.std u).yE 0 (Nat.zero_le _) (Or.inl rfl))).symm
  have e := heq_chi (reads_le w.I u 0 hy.symm h h' (U_le Z u (t.C.forms u).to0)) (reads_le w.I u 0 hy h' h (U_le Z' u (t'.C.forms u).to0))
  exact Prod.ext (Submodule.ext fun x => (h'.lb () x).trans (h.lb () x).symm) (Sigma.ext e.1 e.2)


theorem y_eq {Z Z' : w.Lt} (t : ColT w Z) (t' : ColT w Z') (u : B.Word) :
    (t'.C.forms u).to0.cls0.y = ((t.C.forms u).to0.cls0.y) :=
  funext fun c => Subtype.ext (((t'.std u).yE 0 (Nat.zero_le _) (Or.inl rfl) c).trans ((t.std u).yE 0 (Nat.zero_le _) (Or.inl rfl) c).symm)


theorem eY_eq {Z Z' : w.Lt} (t : ColT w Z) (t' : ColT w Z') (u : B.Word) :
    (t'.C.forms u).to0.val0.eY = ((t.C.forms u).to0.val0.eY) :=
  Equiv.ext fun c => Subtype.ext (((t'.std u).eY 0 (Nat.zero_le _) (Or.inl rfl) c).trans ((t.std u).eY 0 (Nat.zero_le _) (Or.inl rfl) c).symm)



theorem sameStd : SameStd := by
  intro B f T w Z Zn col col' F₁ h u
  have e : car (reL Z Zn) u (col'.C.forms u).to0.cls0.lev = car (reL Z Zn) u (F₁ u).cls0.lev :=
    (car_eq col col' u).trans ((congrArg (car Z u) (Eq.symm (h u).left)))
  have e2 := Sigma.ext_iff.1 (congrArg Prod.snd e)
  exact ⟨congrArg Prod.fst e, e2.1, e2.2, (y_eq col col' u).trans ((by with_unfolding_all exact ((h u).2.1.symm :))), (eY_eq col col' u).trans ((by with_unfolding_all exact ((h u).2.2.symm :)))⟩

end Std

section Mv
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.L2.DIV Formalism.MainNotions Formalism.L2.Forms NumberField
  IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.R3.Tr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl Formalism.L2.SG.ColDict Formalism.L2.SG.HidaSetting
attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {F F' : ∀ u, Forms0 D u}



def trCar (h : SameCar F F') {X : HidaSetting D} {u} (t : Transport X u (F u)) : Transport X u (F' u) :=
  { t with
    hc_rep := fun c => by rw [(h u).2.2.2.1]; exact t.hc_rep c
    J_isom := fun c ξ η => by rw [(h u).2.2.2.2]; exact t.J_isom c ξ η }


theorem colDictL_car (h : SameCar F F') {X : HidaSetting D} {u} (t : Transport X u (F u)) (hK : X.LevelSubgroupCharacter) :
    colDictL X (trCar h t) hK = colDictL X t hK := by
  refine LinearMap.ext fun T => funext fun c => funext fun z => ?_
  exact congrArg (fun e => t.J (shP X u T.1 (t.hc c)) (e z)) (congrArg DFunLike.coe (h u).2.2.2.2)

theorem chi_of_heq {G : Type} [Group G] {U U' : Subgroup G} {chi : U →* ℂˣ} {chi' : U' →* ℂˣ} (e : U' = U) (h : HEq chi' chi)
    (x : G) (hx : x ∈ U') : chi' ⟨x, hx⟩ = chi ⟨x, e ▸ hx⟩ := by
  subst e
  rw [eq_of_heq h]


theorem lev_car (h : SameCar F F') {X : HidaSetting D} {u} {t : Transport X u (F u)} {hK : X.LevelSubgroupCharacter} (l : LevelMatch X t hK) :
    LevelMatch X (trCar h t) hK := by
  refine ⟨fun x => ?_, fun g y hr => ⟨?_, fun hk hy => ?_⟩⟩
  · rw [(h u).1]; exact l.1 x
  · rw [(h u).2.1]; exact (l.2 g y hr).1
  · rw [chi_of_heq (h u).2.1 (h u).2.2.1]; exact (l.2 g y hr).2 hk _



def packCar (h : SameCar F F') (P : SPack D F) : SPack D F' :=
  { P with
    tr := fun u => trCar h (P.tr u)
    into := fun u T => by rw [colDictL_car]; exact P.into u T
    bij := fun u => by unfold ColDictBij; rw [colDictL_car]; exact P.bij u
    lev := fun u => lev_car h (P.lev u)
    isom := fun u a b => by rw [colDictL_car]; exact P.isom u a b }



def restCar (h : SameCar F F') {P : SPack D F} (S : SRest P) : SRest (packCar h P) where
  hI := S.hI
  autTie := S.autTie
  colPin := fun u x => Subtype.ext ((LinearMap.congr_fun (colDictL_car h (P.tr u) P.Y.hK) _).trans (congrArg Subtype.val (S.colPin u x)))
  j := S.j
  rowPin := S.rowPin
  locTied := S.locTied



def satCar (h : SameCar F F') (p : RowPk D) (s : p.SAt F) : p.SAt F' :=
  { P := packCar h s.P, S := restCar h s.S, t := s.t, c := s.c, c_pos := s.c_pos, see := s.see, ev := s.ev, rowJ := s.rowJ }

end Mv

section Slot
open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.L2.DIV Formalism.MainNotions Formalism.L2.Forms NumberField
  IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.R3.Tr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl
attribute [local instance] Formalism.BasicNotions.Host.cmStar




variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T}




end Slot

end GlobalTheory.Mem.SRe.CarModel

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotLv3MvFixH =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.LabelEqOfMemSuppSpan =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.FoundationProofs.LabelEqOfMemSuppSpan", "h": "module\n\nimport Development.AbelianVarietyTheory.Proofs.DivisorProofs.RootsReverseProd\npublic import Development.AbelianVarietyTheory.Proofs.InertiaEigenvalues.RootsMinpolyPhi\npublic import Mathlib.RepresentationTheory.Coinduced\nimport Mathlib.Algebra.AffineMonoid.UniqueSums\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\nimport Development.AbelianVarietyTheory.Definitions.NonGaloisDescent.IsCharLab\nimport Development.AbelianVarietyTheory.Proofs.FoundationProofs.MemChainVecsDet\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.SeriesSupport

open Polynomial GlobalTheory.GLq GlobalTheory.GLp GlobalTheory.GLp.Supp Formalism.MainNotions.ArithmeticCylinders Formalism.BasicNotions Formalism.CyclotomicNorms
open scoped Classical

section Dual

variable {g : ℕ} [Fact g.Prime]

theorem phi_conj (L : LabelDatum g) (x : Fbar g) : GalSer.phi L (starRingAut : ℂ ≃+* ℂ) x = x⁻¹ := by
  by_cases hx : x = 0
  · rw [hx, GalSer.phi_zero, inv_zero]
  apply GalSer.teich_injective L
  rw [GalSer.teich_phi]
  have h1 : ‖L.teich x‖ = 1 := (L.teich.isOfFinOrder (GalSer.finOrder hx)).norm_eq_one
  have h2 : L.teich x⁻¹ = (L.teich x)⁻¹ :=
    eq_inv_of_mul_eq_one_left (by rw [← map_mul, inv_mul_cancel₀ hx, map_one])
  rw [h2, Complex.inv_eq_conj h1]
  rfl

theorem roots_reverse {K : Type} [Field K] (s : Multiset K) (hs : (0 : K) ∉ s) :
    ((s.map fun x => X - C x).prod.reverse).roots = s.map (·⁻¹) := by
  apply GlobalTheory.DualLabel.roots_reverse_prod <;> assumption

theorem rel_dual (L : LabelDatum g) {f : (ZMod g)[X]} (hm : f.Monic) (h0 : f.coeff 0 ≠ 0) :
    GalSer.Rel L (starRingAut : ℂ ≃+* ℂ) f (C (f.coeff 0)⁻¹ * f.reverse) := by
  refine ⟨?_, ?_⟩
  · rw [Monic, leadingCoeff_mul, leadingCoeff_C, reverse_leadingCoeff, trailingCoeff_eq_coeff_zero h0,
      inv_mul_cancel₀ h0]
  · have hz : (0 : Fbar g) ∉ rootsBar f := fun h => by
      rw [GalSer.mem_rootsBar hm.ne_zero, ← coeff_zero_eq_aeval_zero'] at h
      exact h0 ((map_eq_zero _).1 h)
    have e : f.reverse.map (algebraMap (ZMod g) (Fbar g)) = (f.map (algebraMap (ZMod g) (Fbar g))).reverse := by
      rw [reverse, reverse, reflect_map, natDegree_map]
    have hf := (IsAlgClosed.splits (f.map (algebraMap (ZMod g) (Fbar g)))).eq_prod_roots_of_monic (hm.map _)
    rw [rootsBar, Polynomial.map_mul, map_C, roots_C_mul _ (by simpa using h0), e, hf]
    simp only [phi_conj]
    exact roots_reverse _ hz

end Dual

local instance factTypePrime (D : D7) (k : Fin 2) : Fact (D.host.g k).Prime := ⟨D.host.g_prime k⟩

abbrev LocRep (D : D7) (k : Fin 2) (n : ℕ) : Type 1 := Rep.{0} ℂ (GL (Fin n) ℚ_[D.host.g k])

variable (D : D7)
  (σ : D.ntypes.Par → ∀ k, D.nd.PlG k → LocRep D k D.R.r)
  (ΩV : D.what₂.Tup → ℕ → ∀ k, D.nd.PlG k → LocRep D k D.R.nV)
  (ιV : ∀ μ j k v, D.what₂.Mt μ j →ₗ[ℂ] ΩV μ j k v)
  (ΩX : D.what₂.Tup → ∀ k, D.nd.PlG k → LocRep D k D.R.rankX')
  (ιX : ∀ μ k v, D.what₂.Amb μ →ₛₗ[starRingEnd ℂ] ΩX μ k v)

end GlobalTheory.SeriesSupport
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.FoundationProofs.LabelEqOfMemSuppSpan =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FormsRe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FormsRe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RedivisionStructureEq\npublic import Formalism.LocalToGlobal.HermitianForms.TiedSym\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.SRe.ColRe

open Formalism.BasicNotions Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.SRe NumberField IsDedekindDomain

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (Z : New D)

abbrev reD' (D : D7) (Z : New D) : D7 :=
  { D with
    s := mix D.s Z.Z.s
    s_split := D.s_split
    s_HH := Z.Z.s_HH
    s_Cu := Z.Z.s_Cu
    s_PlF := Z.Z.s_PlF
    s_Cu_isom := Z.Z.s_Cu_isom
    sEE := Z.Z.sEE
    div := (reD D Z).div }

def formsRe_atT {u : D.what₂.Word} (A : AtTTied (D := D) u) : AtTTied (D := reD' D Z) u := { A with }

def formsRe_cls {u : D.what₂.Word} {i : ℕ} {hi : i ≤ D.R.m} (K : ClsTied (D := D) u i hi) :
    ClsTied (D := reD' D Z) u i hi := { K with }

def formsRe_val {u : D.what₂.Word} {eV : (D.mem u).A.vT ≃ PlT D u} {i : ℕ} {hi : i ≤ D.R.m}
    {K : ClsTied (D := D) u i hi} (W : ValTied (D := D) u eV i hi K) :
    ValTied (D := reD' D Z) u eV i hi (formsRe_cls Z K) := { W with }

def formsRe_lv {u : D.what₂.Word} {A : AtTTied (D := D) u} {i : ℕ} {hi : i ≤ D.R.m}
    (P : LvTied (D := D) u A i hi) : LvTied (D := reD' D Z) u (formsRe_atT Z A) i hi := { P with }

def formsRe_clsP {u : D.what₂.Word} (K : ClsPTied (D := D) u) : ClsPTied (D := reD' D Z) u := { K with }

def formsRe_valP {u : D.what₂.Word} {K : ClsPTied (D := D) u} (W : ValPTied (D := D) u K) :
    ValPTied (D := reD' D Z) u (formsRe_clsP Z K) := { W with }

def formsRe_til {u : D.what₂.Word} {A : AtTTied (D := D) u} {K : ClsPTied (D := D) u}
    {P : LvTied (D := D) u A D.R.m le_rfl} (Tl : TilTied (D := D) u A K P) :
    TilTied (D := reD' D Z) u (formsRe_atT Z A) (formsRe_clsP Z K) (formsRe_lv Z P) := { Tl with }

def formsRe_tilAd {u : D.what₂.Word} {A : AtTTied (D := D) u} {K : ClsPTied (D := D) u}
    {P : LvTied (D := D) u A D.R.m le_rfl} {Tl : TilTied (D := D) u A K P}
    {Km : ClsTied (D := D) u D.R.m le_rfl} (Ta : TilAd (D := D) Tl Km) :
    TilAd (D := reD' D Z) (formsRe_til Z Tl) (formsRe_cls Z Km) := { Ta with }

def formsRe_chart {T : ℕ} {bad : Set (HeightOneSpectrum (𝓞 D.host.F))} {i : ℕ} {hi : i ≤ D.R.m}
    {cl : Type} {stab : cl → Type} [∀ c, Group (stab c)]
    {lat : cl → Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E)}
    (K : LevelChart D T bad i hi stab lat) : LevelChart (reD' D Z) T bad i hi stab lat := { K with }

def formsRe_lvG {u : D.what₂.Word} {T : ℕ} {res : ∀ v : (D.mem u).A.vT, 𝓞 D.host.E →+* (D.mem u).A.Fv v}
    {i : ℕ} {hi : i ≤ D.R.m} {lat : (D.mem u).C.cls i → Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E)}
    (L : LevelCompatibleLattices (D := D) (u := u) (D.fm u) T res i hi lat) :
    LevelCompatibleLattices (D := reD' D Z) (u := u) (D.fm u) T res i hi lat := { L with }

def formsRe {u : D.what₂.Word} {Ch : ℕ → Type} {chOf : ∀ i, (D.mem u).C.cls i → Ch i} (T : FormsTiedSym D u Ch chOf) :
    FormsTiedSym (reD D Z) u Ch chOf :=
  ({ T with
    atT := formsRe_atT Z T.atT
    cls := fun i hi h => formsRe_cls Z (T.cls i hi h)
    val := fun i hi h => formsRe_val Z (T.val i hi h)
    lv := fun i hi => formsRe_lv Z (T.lv i hi)
    ch := fun i h1 h2 β => formsRe_chart Z (T.ch i h1 h2 β)
    valC := fun i h1 h2 => { T.valC i h1 h2 with }
    dilC := fun i h1 h2 => { T.dilC i h1 h2 with }
    lvC := fun i h1 h2 => formsRe_lvG Z (T.lvC i h1 h2)
    clsP := formsRe_clsP Z T.clsP
    valP := formsRe_valP Z T.valP
    til := formsRe_til Z T.til
    tilAd := formsRe_tilAd Z T.tilAd } : FormsTiedSym (reD' D Z) u Ch chOf)

end GlobalTheory.Mem.SRe.ColRe

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FormsRe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermRe =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermRe", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RedivisionStructureEq\npublic import Formalism.LocalToGlobal.HermitianColumns.SymAll\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.SRe.ColRe

open Formalism.BasicNotions Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.SRe NumberField IsDedekindDomain

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (Z : New D)



def hermRe_base (B : Formalism.L2.Herm.HermColsCh D) : Formalism.L2.Herm.HermColsCh (reD' D Z) := { B with }

def hermRe_atT {B : Formalism.L2.Herm.HermColsCh D} {u : D.what₂.Word}
    (A : Formalism.L2.Herm.AtT D u (B.vT u) (B.Fv u)) :
    Formalism.L2.Herm.AtT (reD' D Z) u ((hermRe_base Z B).vT u) ((hermRe_base Z B).Fv u) := { A with }

theorem hermRe_ad {B : Formalism.L2.Herm.HermColsCh D} {A : ∀ u, Formalism.L2.Herm.AtT D u (B.vT u) (B.Fv u)}
    (Ad : Formalism.L2.Herm.SymmetricAdelicCompatibility D B A) :
    Formalism.L2.Herm.SymmetricAdelicCompatibility (reD' D Z) (hermRe_base Z B) (fun u => hermRe_atT Z (A u)) :=
  { Ad with }

def hermRe (H : Formalism.L2.Herm.ColsHermS D) : Formalism.L2.Herm.ColsHermS (reD D Z) :=
  ({ H with
    base := hermRe_base Z H.base
    atT := fun u => hermRe_atT Z (H.atT u) } : Formalism.L2.Herm.ColsHermS (reD' D Z))

end GlobalTheory.Mem.SRe.ColRe

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermRe =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColsTiedSym =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColsTiedSym", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.Joint0\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.FormsRe\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.HermRe\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.SRe.ColRe

open Formalism.BasicNotions Formalism.L2.Forms GlobalTheory.Mem GlobalTheory.Mem.SRe NumberField IsDedekindDomain

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} (Z : New D)



def colsRe (C : ColsTiedSym D) : ColsTiedSym (reD D Z) :=
  ({ C with
    herm := (hermRe Z C.herm : Formalism.L2.Herm.ColsHermS (reD' D Z))
    forms := fun u => (formsRe Z (C.forms u) : FormsTiedSym (reD' D Z) u _ _) } : ColsTiedSym (reD' D Z))



theorem sameF_colsRe (C : ColsTiedSym D) :
    SameForms0LevelsAndValues Z (fun u => (C.forms u).to0) (fun u => ((colsRe Z C).forms u).to0) :=
  fun _ => ⟨rfl, rfl, rfl⟩



theorem exists_colsTiedSym (D : D7) (Z : New D) (C : ColsTiedSym D) :
    ∃ C' : ColsTiedSym (reD D Z), SameForms0LevelsAndValues Z (fun u => (C.forms u).to0) (fun u => (C'.forms u).to0) :=
  ⟨colsRe Z C, sameF_colsRe Z C⟩

end GlobalTheory.Mem.SRe.ColRe

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColsTiedSym =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RangeEEAndNorm =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RangeEEAndNorm", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StableIffCarrierEq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField Matrix Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Mult Formalism.IndefR.Datum Formalism.IndefR.Cx
open scoped TensorProduct InnerProductSpace
attribute [local instance] Formalism.BasicNotions.Host.cmStar
open Formalism.IndefR.RecTie Formalism.IndefR.Lev Formalism.L2.Rows GlobalTheory.Mem GlobalTheory.Mem.R3

noncomputable section

namespace GlobalTheory.Mem.R3.RowsLvl

section Scale

variable {D : D7} {V : HSp D} {S : D.what₂.Tau → SPar}

theorem isMultiplicityInner_smul_measure (M : DSModel V S) (μ : Measure (GA D V)) (𝓕 : Set (GA D V)) (T T' : MMap M) {c : ℝ}
    (hc : 0 < c) {k : ℂ} (h : IsMultIP M μ 𝓕 T T' k) :
    IsMultIP M (ENNReal.ofReal c • μ) 𝓕 T T' ((c : ℂ) * k) := by
  intro v v'
  obtain ⟨hi, he⟩ := h v v'
  refine ⟨?_, ?_⟩
  · unfold IntegrableOn at hi ⊢
    rw [Measure.restrict_smul]
    exact hi.smul_measure ENNReal.ofReal_ne_top
  · rw [Measure.restrict_smul, integral_smul_measure, he, ENNReal.toReal_ofReal hc.le, Complex.real_smul, mul_assoc]

theorem ipM_smul (M : DSModel V S) (μ : Measure (GA D V)) (𝓕 : Set (GA D V)) (T T' : MMap M) {c : ℝ}
    (hc : 0 < c) (hv : ∃ v : M.Vec, ∏ τ, ⟪(v τ : M.H τ), (v τ : M.H τ)⟫_ℂ ≠ 0) :
    ipM M (ENNReal.ofReal c • μ) 𝓕 T T' = (c : ℂ) * ipM M μ 𝓕 T T' := by
  obtain ⟨v, hv⟩ := hv
  by_cases h : ∃ k, IsMultIP M μ 𝓕 T T' k
  · have hs := isMultiplicityInner_smul_measure M μ 𝓕 T T' hc (ipM_spec M μ 𝓕 T T' h)
    exact hasPeterssonInner_unique M _ 𝓕 T T' v hv (ipM_spec M _ 𝓕 T T' ⟨_, hs⟩) hs
  · have h' : ¬ ∃ k, IsMultIP M (ENNReal.ofReal c • μ) 𝓕 T T' k := by
      rintro ⟨k, hk⟩
      have e : ENNReal.ofReal c⁻¹ • ENNReal.ofReal c • μ = μ := by
        rw [smul_smul, ← ENNReal.ofReal_mul (inv_nonneg.2 hc.le), inv_mul_cancel₀ hc.ne', ENNReal.ofReal_one, one_smul]
      have := isMultiplicityInner_smul_measure M _ 𝓕 T T' (inv_pos.2 hc) hk
      rw [e] at this
      exact h ⟨_, this⟩
    unfold ipM
    rw [dite_eq_right h, dite_eq_right h', mul_zero]

theorem mmap_eq_zero (M : DSModel V S) (hv : ¬ ∃ v : M.Vec, ∏ τ, ⟪(v τ : M.H τ), (v τ : M.H τ)⟫_ℂ ≠ 0) (T : MMap M) :
    T = 0 := by
  classical
  have : ∃ τ, ∀ w : M.sm τ, w = 0 := by
    by_contra hne
    push_neg at hne
    choose w hw using hne
    refine hv ⟨w, Finset.prod_ne_zero_iff.2 fun τ _ => ?_⟩
    rw [inner_self_ne_zero]
    exact fun h0 => hw τ (Subtype.ext h0)
  obtain ⟨τ, hτ⟩ := this
  ext v g
  rw [T.map_coord_zero τ (hτ (v τ))]
  rfl

end Scale

end GlobalTheory.Mem.R3.RowsLvl

namespace GlobalTheory.Mem.R3.RowsLvl



theorem range_eE_and_norm : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 I0 T : Type) (A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3) (cG : G0 R.Pg D.R.r ≃* G0g D.nd) (X0 : BaseLevelRowSide D) (Y : Read (A3 := A3) R.toRealDat F.lv2 X0), Pins R F cG → Holds R F → LinearMap.range Y.eE = (R.toRealDat.EEat (R.toRealDat.levR F.lv2 true)).comap R.HE.e ∧ ∀ x, ‖Y.eE x‖ ^ 2 = RealDat.nP F.lv2 true * ‖x‖ ^ 2 := by
  intro D G _ _ Pl0 I0 T A3 Ks _ _ _ R F cG X0 Y hP _
  have hE : R.models_HE := hP.char.base.models.HE
  have hEEc : (toChainReal R.toRealDat F.lv2 Y.tupT Y.hm Y.hTop).EEc true =
      (R.toRealDat.EEat (R.toRealDat.levR F.lv2 true)).map
        (PiTensorProduct.lift : Mult.MMap (R.MY 0) ≃ₗ[ℂ] _).toLinearMap := rfl
  have hlift : Function.Injective (PiTensorProduct.lift : Mult.MMap (R.MY 0) ≃ₗ[ℂ] _) :=
    LinearEquiv.injective _
  refine ⟨?_, fun x => ?_⟩
  · ext h
    constructor
    · rintro ⟨x, rfl⟩
      have hm := (Y.Ish.jE x).2
      rw [Y.eE_read, hEEc] at hm
      obtain ⟨u, hu, he⟩ := hm
      have : u = R.HE.e (Y.eE x) := hlift he
      rw [Submodule.mem_comap, ← this]
      exact hu
    · intro hh
      rw [Submodule.mem_comap] at hh
      have hm : (PiTensorProduct.lift : Mult.MMap (R.MY 0) ≃ₗ[ℂ] _) (R.HE.e h) ∈
          (toChainReal R.toRealDat F.lv2 Y.tupT Y.hm Y.hTop).EEc true := by
        rw [hEEc]; exact ⟨_, hh, rfl⟩
      refine ⟨Y.Ish.jE.symm ⟨_, hm⟩, ?_⟩
      have e1 := Y.eE_read (Y.Ish.jE.symm ⟨_, hm⟩)
      rw [LinearEquiv.apply_symm_apply] at e1
      exact (hE.1 (hlift e1)).symm
  · have hx := Y.tied.sharp.ee x x
    have hy := hE.2.2 (Y.eE x) (Y.eE x)
    have hnP : 0 < RealDat.nP F.lv2 true := by
      unfold RealDat.nP; exact_mod_cast Nat.card_pos
    by_cases hv : ∃ v : (R.MY 0).Vec, ∏ τ, ⟪(v τ : (R.MY 0).H τ), (v τ : (R.MY 0).H τ)⟫_ℂ ≠ 0
    · have e : ⟪x, x⟫_ℂ = (((RealDat.nP F.lv2 true)⁻¹ : ℝ) : ℂ) * ⟪Y.eE x, Y.eE x⟫_ℂ := by
        rw [hx, hy]
        show ipMT _ _ _ _ _ = _
        unfold ipMT
        rw [Y.eE_read]
        erw [LinearEquiv.symm_apply_apply]
        exact ipM_smul _ _ _ _ _ (inv_pos.2 hnP) hv
      rw [inner_self_eq_norm_sq_to_K, inner_self_eq_norm_sq_to_K] at e
      have e' : ‖x‖ ^ 2 = (RealDat.nP F.lv2 true)⁻¹ * ‖Y.eE x‖ ^ 2 := by
        apply Complex.ofReal_injective
        rw [Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_pow]
        exact e
      rw [e', ← mul_assoc, mul_inv_cancel₀ hnP.ne', one_mul]
    · have h0 : Y.eE x = 0 :=
        hE.1 (by rw [mmap_eq_zero _ hv (R.HE.e (Y.eE x)), mmap_eq_zero _ hv (R.HE.e 0)])
      have h1 : (Y.Ish.jE x).1 = 0 := by
        rw [Y.eE_read, h0, map_zero]; exact map_zero _
      have hx0 : x = 0 := (LinearEquiv.map_eq_zero_iff _).1 (Submodule.coe_eq_zero.1 h1)
      simp [hx0]

end GlobalTheory.Mem.R3.RowsLvl
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RangeEEAndNorm =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelThreeToFour =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelThreeToFour", "h": "module\n\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.HarishChandraFinite\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.ExistsNormLeHeightPow\npublic import Development.AbelianVarietyTheory.PublishedTheorems.AutomorphicForms₂.DiscreteSeriesUpqUniqueOfClassification\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.UpLReStage\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NotLv3MvFixH\npublic import Development.AbelianVarietyTheory.Proofs.FlagMeasures.StarCoeffOfEqReverse\npublic import Development.AbelianVarietyTheory.Proofs.FoundationProofs.LabelEqOfMemSuppSpan\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsColsTiedSym\npublic import Development.AbelianVarietyTheory.Definitions.Foundations.CdScaleTieIff\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsDiscreteSeriesFormalDegreeProduct\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSpectralObjectsOverReplacedStagesStatement\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RangeEEAndNorm\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.TrueScaleIsScale\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.Mem.SRe.UpS

open Formalism.BasicNotions Formalism.BasicNotions.TH Formalism.L2.Theta Formalism.IndefR.Mult Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.L2.DIV
  Formalism.L2.SG.RowDict Formalism.L2.SG.ConcreteSettingExists Formalism.MainNotions Formalism.L2.Forms MeasureTheory NumberField IsDedekindDomain
  GlobalTheory.EX GlobalTheory.Mem GlobalTheory.Mem.R3.Tr GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.SRe

attribute [local instance] Formalism.BasicNotions.Host.cmStar

def RowHyp {D : D7} (p : RowPk D) : Prop :=
  p.R.toLevCh.Is p.A.μ0 ∧ p.R.grp_levels p.F ∧ GrpPin p.R ∧ p.R.IsModels ∧
    LinearMap.range p.eE = (p.R.EEat (p.R.levR p.F true)).comap p.R.HE.e ∧
    (∀ x, ‖p.eE x‖ ^ 2 = RealDat.nP p.F true * ‖x‖ ^ 2) ∧ DallTie p.R p.F



theorem rowHyp_read {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat3 D A3 Ks) (F : Face3 D A3)
    (cG : G0 R.Pg D.R.r ≃* G0g D.nd) {X0 : BaseLevelRowSide D} (Y : R3.Read (A3 := A3) R.toRealDat F.lv2 X0) (hP : R3.Pins R F cG)
    (hH : R3.Holds R F) : RowHyp (⟨G, Pl0, T, A3.A, Ks, R.toRealDat, F.lv2, Y.eE⟩ : RowPk D) := by
  have hr := R3.RowsLvl.range_eE_and_norm D G Pl0 I0 T A3 Ks R F cG X0 Y hP hH
  obtain ⟨plg, iso, h⟩ := hP.keep.grp
  exact ⟨hP.char.base.lev, hP.char.base.grp.levels, ⟨R.eG.trans cG, plg, iso, h⟩, hP.char.base.models, hr.1, hr.2, Y.dall⟩

variable {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T}



theorem rowHyp_pkOf {Z : w.Lt} {Wt : Set B.places.Pl} {p0 : BaseLevelRowSide (w.D Z)} (r : RowsT K w Z Wt p0) : RowHyp (pkOf r) :=
  (by with_unfolding_all exact ((rowHyp_read r.r.z.R r.r.z.F r.r.z.cG r.r.Y r.r.z.pins r.r.intersectionNumber_baseChange) :))

def reSt {C : Cols B} (a : Late B C) (Zs : SNew a.D) : SStage B C a.W := reStage a.st Zs

def SatNew : Prop :=
  ∀ (B : Base) (C : Cols B) (a : Late B C) (p : RowPk a.D) (F0 : ∀ u, Forms0 a.D u) (P : SPack a.D F0), GapHyp a.D →
    Integrable P.X.ph (Formalism.L2.SG.ProjRows.muInf P.X.B.I) → Formalism.L2.SG.Pf.LocCP.LocTied a.D → RealTied a.D →
    a.D.what₂.Dstar = StandardLattice.DstarD a.D → IdempotentRealFixed a.D → RowHyp p →
    ∃ Zs : SNew a.D, ∀ (N : ∀ u, Submodule (𝓞 a.D.what₂.LL) (a.D.div.Nu u).V) (hh : a.D.what₂.Word → ℝ)
      (F₁ : ∀ u, Forms0 (reL a ⟨Zs, N, hh⟩).D u), SameL a ⟨Zs, N, hh⟩ F0 F₁ → Nonempty (SAtL a ⟨Zs, N, hh⟩ p.R p.F p.eE F₁)


theorem satOfDiscreteSeries (h1 : GlobalTheory.Dec.DSInfChar) (h2 : GlobalTheory.Published.HarishChandraFinite) (h3 : GlobalTheory.Published.CuspRapidDecay)
    (h4 : GlobalTheory.Published.DiscreteSeriesUpqUnique) (h5 : Formalism.L2.SG.RowsDef.RowsFinDim) : SatNew :=
  fun B C a p F0 P g i l r d e ⟨a1, a2, a3, a4, a5, a6, a7⟩ =>
    GlobalTheory.T.exists_spectralObjects_over_replacedStages h1 h2 h3 h4 h5 B C a p.G' p.Pl0 p.T p.A p.Ks p.R p.F F0 p.eE P g i l r d a1 a2 a3 e a4 a5 a6 a7



theorem sat_col (a : w.Lt) (col : ColT w a) (p : RowPk (Late.D a)) (Zs : SNew (Late.D a))
    (H : ∀ (N : ∀ u, Submodule (𝓞 (Late.D a).what₂.LL) ((Late.D a).div.Nu u).V) (hh : (Late.D a).what₂.Word → ℝ)
      (F₁ : ∀ u, Forms0 (reL a ⟨Zs, N, hh⟩).D u), SameL a ⟨Zs, N, hh⟩ (fun u => (col.C.forms u).to0) F₁ →
        Nonempty (SAtL a ⟨Zs, N, hh⟩ p.R p.F p.eE F₁))
    (N : ∀ u, Submodule (𝓞 B.LL) (a.V.div.Nu u).V) (h : B.Word → ℝ) (col' : ColT w (upL a (reSt a Zs) N h)) :
    Nonempty ((p.up a (reSt a Zs) N h).SAt fun u => (col'.C.forms u).to0) := by
  let Zn : New (Late.D a) := ⟨Zs, (by with_unfolding_all exact (N :)), (by with_unfolding_all exact (h :))⟩
  obtain ⟨C', hC⟩ := ColRe.exists_colsTiedSym (Late.D a) Zn col.C
  let F₀ : ∀ u, Forms0 (reD (Late.D a) Zn) u := fun u => (C'.forms u).to0
  let F₁ : ∀ u, Forms0 (reL a Zn).D u := (by with_unfolding_all exact (F₀ :))
  have hF : SameL a Zn (fun u => (col.C.forms u).to0) F₁ := (by with_unfolding_all exact (hC :))
  obtain ⟨s⟩ := H Zn.N Zn.h F₁ hF
  have c := CarModel.sameStd B f T w a Zn col ((by with_unfolding_all exact (col' :))) F₁ hF
  exact ⟨CarModel.satCar (D := Late.D (upL a (reSt a Zs) N h)) (F := (by with_unfolding_all exact (F₁ :))) ((by with_unfolding_all exact (c :))) (p.up a (reSt a Zs) N h) ((by with_unfolding_all exact (s :)))⟩

def RealOf : Prop := ∀ D : D7, VolTieG D → D.s.cdScale = Vol.trueScale D.cd → (∀ τ, D.dsig τ = Vol.trueDsig D.R (D.hc τ)) → RealTied D

def PackEx : Prop := ∀ (D : D7) (F : ∀ u, Forms0 D u), GapHyp D → Formalism.L2.SG.Pf.LocCP.LocTied D →
  ∃ P : SPack D F, Integrable P.X.ph (Formalism.L2.SG.ProjRows.muInf P.X.B.I)



theorem real_of (hR : RealOf) (a : w.Lt) (g : GIs2 K w a.G) (hs : a.S.s.cdScale = Vol.trueScale a.G.cd)
    (hd : ∀ τ, a.S.dsig τ = Vol.trueDsig B.R (B.hc τ)) : RealTied (w.D a) :=
  hR (w.D a) (g a.W a.V a.S a.N).1 ((by with_unfolding_all exact (hs :))) ((by with_unfolding_all exact (hd :)))



theorem realOf (h1 : Vol.DiscreteSeriesExist) (h2 : Vol.FormalDegreeFormula₂) : RealOf := by
  intro D hv hs hd
  refine ⟨?_, ?_, ?_, hv⟩
  · rw [Vol.cdScaleTie_iff, hs]
    exact GlobalTheory.Mem.Vol.ScaleExists.trueScale_isScale D.cd
  · intro τ
    unfold Formalism.L2.Theta.IsDsig
    rw [hs, hd τ]
    exact (_root_.GlobalTheory.Mem.Vol.exists_isDS_isFdeg_trueDsig h1 h2 D.cd D.R (D.hc τ)).1
  · intro τ H _ _ σ d hσ hf
    rw [hs] at hf
    rw [hd τ]
    exact (_root_.GlobalTheory.Mem.Vol.exists_isDS_isFdeg_trueDsig h1 h2 D.cd D.R (D.hc τ)).2 H σ d hσ hf

theorem goodIdempotent_real_of_harishChandra_series (D : D7) (h : GlobalTheory.GLq.ESerTie D) : IdempotentRealFixed D :=
  GlobalTheory.GoodIdemReal.star_coeff_of_reverse D fun k g hm h0 x => by
    haveI : Fact (D.host.g k).Prime := ⟨D.host.g_prime k⟩
    obtain ⟨L, -, he⟩ := h k
    rw [he, he]
    exact DFunLike.congr_fun (GlobalTheory.GLq.GalSer.eSerC_map L _ D.R.r hm (GlobalTheory.SeriesSupport.rel_dual L hm h0)) x

end GlobalTheory.Mem.SRe.UpS

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LevelThreeToFour =====
