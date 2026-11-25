module

public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSideReadingLevelZeroMoved
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStages
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIdentificationTypeRepresentativesClasses
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsReadingInMovedRowData
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport
public import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RootsOfUnityRingLeWittIntegers
public import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RepOfHeq
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsRowBasisFromReferenceTupleQuotient
import Formalism.PadicSubsetSums.StableGradedCounts.ZBrauerNesbittAlg
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
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHermPosChainRealEndSpaceTuple
import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowIdentificationsRealRowSideOfChainComparison
import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GoodCopy, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftTieOfPk, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStage, Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStageStatement

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GoodCopy =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GoodCopy", "h": "module\n\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSideReadingLevelZeroMoved\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsRowBasisFromReferenceTupleQuotient\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowBasisCongruenceLengthsOtherLaterStages\nimport Formalism.PadicSubsetSums.StableGradedCounts.ZBrauerNesbittAlg\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw.CopyRead

section Copy

variable {B : Base} {C : Cols B} {a : Late B C} (b : Late B C) {px : PreX B.toPre} {I : ColIn B px} {hX : B.fields.Ok} {T : TwDat B}
  {Wt : Set B.places.Pl}

def cpR (z : Dat a.st I hX T Wt) :
    @RealDat3 b.st.toD7 _ _ _ _ _ _ (famR b.st I hX (usedOf I T Wt) z.Xg z.tr) (coreJ b z.core).Q.c.F _ _ ((by exact @alg B C a b (↥(@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@IntermediateField.toField Rat Complex Rat.instField Complex.instField (@DivisionRing.toRatAlgebra Complex (@Field.toDivisionRing Complex Complex.instField) Complex.instCharZero) (@ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff.F (@Formalism.HC.HostRaw.E (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instField (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (@Formalism.HC.HostRaw.instNF (@Late.st B C a).toD7.R.toFrame (@Formalism.HC.HostAx.toHostRaw (@Late.st B C a).toD7.R.toFrame (@Host.toHostAx (@Late.st B C a).toD7.R (@Late.st B C a).toD7.host))) (Formalism.L2.Pj.instCMHost (@Late.st B C a).toD7) (@Formalism.L2.Pj.Par.H (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.l (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))) (@Formalism.L2.Pj.Par.c (@Late.st B C a).toD7 (@Formalism.L2.Pj.Core.Q (@Late.st B C a).toD7 (@Formalism.L2.Pj.CoreJ.toCore (@Late.st B C a).toD7 (@Dat.core (@Late.st B C a) px I hX T Wt z)))))) (@Dat.alg (@Late.st B C a) px I hX T Wt z))) :=
  (by with_unfolding_all exact ((real3 b (iK := z.alg) z.R) :))



theorem rrT_copy (z₀ : Dat a.st I hX T Wt) (z : Dat b.st I hX T Wt) (h1 : z.Xg = z₀.Xg) (h2 : z.tr = z₀.tr)
    (h3 : HEq z.core (coreJ b z₀.core)) (h4 : HEq z.R (real3 b (iK := z₀.alg) z₀.R)) (y₀ : Hd z₀.R.toRealDat) (bb : Bool) (E : Hs)
    (jE : E.T →ₗ[ℂ] (y₀.C z₀.F.lv2).Amb 0) (n : ℕ) (c : Module.Basis (Fin n) ℂ E.T)
    (Xo : InfinitePlace B.LL → Matrix (Fin n) (Fin n) ℂ) (h : RrT z₀.F y₀ bb jE n c Xo) :
    ∀ (y : Hd z.R.toRealDat) (jE' : E.T →ₗ[ℂ] (y.C z.F.lv2).Amb 0), HEq jE' jE → RrT z.F y bb jE' n c Xo := by
  obtain @⟨Xg, tr, core, al, alg_eq, R, cG, geo, pins, lev, idG, good, mu, l1, l2⟩ := z
  dsimp only at h1 h2 h3 h4
  subst h1 h2
  obtain rfl : core = coreJ b z₀.core := eq_of_heq h3
  have e : al = (by with_unfolding_all exact ((alg b z₀.alg) :)) := by
    refine Algebra.algebra_ext _ _ fun y => B.embLL.injective ?_
    exact (alg_eq y).trans ((by with_unfolding_all exact ((z₀.alg_eq ((y))).symm : _)))
  subst e
  obtain rfl : R = cpR b z₀ := eq_of_heq (h4.trans ((by with_unfolding_all exact ((HEq.refl (cpR b z₀)) :))))
  intro y jE' hj
  exact (by with_unfolding_all exact (((@rr_eta_tr B C a b _ _ _ _ _ _ _ _ _ z₀.alg _ z₀.R z₀.F).2 y₀ ((y)) bb E jE ((jE')) n c ((Xo)) ((hj)) h) : _))

end Copy



theorem coords {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 I0 T : Type} {A3 : FamIn3 D.what₂.LL G Pl0 I0 (List ℕ) T D.R.m}
    {Ks : Type} [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] {R : RealDat3 D A3 Ks} {F : Face3 D A3} {X0 : BaseLevelRowSide D}
    {Y : Read (A3 := A3) R.toRealDat F.lv2 X0} (Z : RationalReadingWithoutCongruence R F X0 Y) (y : Hd R.toRealDat)
    (heq_eigen_embedding_zero : D.what₂.EE0 →ₗ[ℂ] (y.C F.lv2).Amb 0) (hinj : Function.Injective heq_eigen_embedding_zero) (n : ℕ) (c : Module.Basis (Fin n) ℂ D.what₂.EE0)
    (Xo : InfinitePlace D.what₂.LL → Matrix (Fin n) (Fin n) ℂ) (h : RrT F y false (E := ⟨D.what₂.EE0⟩) heq_eigen_embedding_zero n c Xo)
    (hz : ∀ v, HEq (Y.Iz.jE v).1 (heq_eigen_embedding_zero v)) :
    ∃ ε : X0.s.RR.V ≃ₗ[D.what₂.LL] (Fin n → D.what₂.LL), (∀ x, X0.s.jEE x = ∑ i, D.what₂.embLL (ε x i) • c i) ∧
      ∀ v, v ≠ A3.A.v0 → ∀ x x', Formalism.HermitianLatticesTheory.majAt X0.s.RR.b X0.s.RR.X v x x' =
        Formalism.HermitianLatticesTheory.majAt (Pi.basisFun D.what₂.LL (Fin n)) Xo v (ε x) (ε x') := by
  obtain ⟨rfl, a0, b0⟩ := h
  refine ⟨Z.eRR0.symm, fun x => hinj ?_, fun v hv x x' => ?_⟩
  · have h := Z.jEE0 (Z.eRR0.symm x)
    rw [Z.eRR0.apply_symm_apply] at h
    exact (eq_of_heq (hz _)).symm.trans (h.trans (a0 (Z.eRR0.symm x)).symm)
  · have h := Z.met0 v hv (Z.eRR0.symm x) (Z.eRR0.symm x')
    rw [Z.eRR0.apply_symm_apply, Z.eRR0.apply_symm_apply] at h
    exact h.trans (GoodSideLattices.majAt_cast rfl _ Xo v (b0 v).1 _ _).symm

variable {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z₀ : w.Lt} {hX : B.fields.Ok} {Wt : Set B.places.Pl}
  {z₀ : Dat (w.st Z₀) w.I hX T Wt} {q : RowPk w z₀}



theorem RRset_two {o o' : q.Over} (s : Side0 o) (s' : Side0 o') (μ : (w.D o.Z).what₂.Tup) :
    s.p0.s.RRset μ = (s'.p0.s.RRset μ) := by
  have h : ∀ k, s.p0.s.downTo μ k = (by with_unfolding_all exact ((s'.p0.s.downTo ((μ)) k) : _)) := by
    intro k
    induction k with
    | zero => exact (by with_unfolding_all exact ((Eq.refl (s.p0.s.downTo μ 0)) :))
    | succ k ih => exact (by with_unfolding_all exact ((congrArg (fun φ : type_of% (s.p0.s.downTo μ k) => φ.comp (s.p0.s.io μ k)) ih) :))
  have hi := congrArg (fun φ : type_of% (s.p0.s.downTo μ (w.D o.Z).R.m) =>
    (s.p0.s.multZero μ).toLinearEquiv.toLinearMap ∘ₗ φ ∘ₗ (s.p0.s.multTop μ).symm.toLinearEquiv.toLinearMap) (h (w.D o.Z).R.m)
  exact (by with_unfolding_all exact ((congrArg (fun φ : s.p0.s.Amb μ →ₗ[ℂ] (w.D o.Z).what₂.EE0 =>
    φ '' ((fun x => (s.p0.s.V0 μ ⊓ (s.p0.s.V0 μ ⊓ LinearMap.ker φ)ᗮ).starProjection x) ''
      ((s.p0.s.Mtilde μ).carrier ∩ (s.p0.s.V0 μ : Set (s.p0.s.Amb μ))))) hi) :))



theorem rrT_moved {o : q.Over} (m : Moved o) (hc : m.Copy) (hco : m.Coh) (b : Bool) {n c Xo}
    (h : RrT z₀.F q.y b (q.t.ch b).jE n c Xo) : RrT m.z.F m.y b (m.t.ch b).jE n c Xo :=
  rrT_copy (B := B) (C := w.C) (a := Z₀) o.Z z₀ m.z m.Xg m.tr ((by with_unfolding_all exact (hc.core :))) ((by with_unfolding_all exact (hc.R :))) q.y b _ _ n c Xo h m.y _ (hco.jE b)

theorem lat_tr {K : Type} [Field K] [NumberField K] [StarRing K] (e : K →+* ℂ) {V : Type} [NormedAddCommGroup V]
    [InnerProductSpace ℂ V] {n : ℕ} (c : Module.Basis (Fin n) ℂ V) (Xo : InfinitePlace K → Matrix (Fin n) (Fin n) ℂ)
    {ι : Type} (P : ι → HeightOneSpectrum (𝓞 K)) {S S' : ι → Set V} (hS : S = S') {RR RR' : HLat K} (hR : RR' = RR)
    {j : RR.V →ₛₗ[e] V} {j' : RR'.V →ₛₗ[e] V} (hj : HEq j' j)
    (h : ∃ ε : RR.V ≃ₗ[K] (Fin n → K), (∀ x, j x = ∑ i, e (ε x i) • c i) ∧
      (∀ v, v ≠ InfinitePlace.mk e → ∀ x x', Formalism.HermitianLatticesTheory.majAt RR.b RR.X v x x' =
        Formalism.HermitianLatticesTheory.majAt (Pi.basisFun K (Fin n)) Xo v (ε x) (ε x')) ∧
      ∀ x : RR.V, x ∈ RR.L ↔ ∀ u, ∃ d : 𝓞 K, d ∉ (P u).asIdeal ∧ d • x ∈ Submodule.span (𝓞 K) {z | j z ∈ S u}) :
    ∃ ε : RR'.V ≃ₗ[K] (Fin n → K), (∀ x, j' x = ∑ i, e (ε x i) • c i) ∧
      (∀ v, v ≠ InfinitePlace.mk e → ∀ x x', Formalism.HermitianLatticesTheory.majAt RR'.b RR'.X v x x' =
        Formalism.HermitianLatticesTheory.majAt (Pi.basisFun K (Fin n)) Xo v (ε x) (ε x')) ∧
      ∀ x : RR'.V, x ∈ RR'.L ↔ ∀ u, ∃ d : 𝓞 K, d ∉ (P u).asIdeal ∧ d • x ∈ Submodule.span (𝓞 K) {z | j' z ∈ S' u} := by
  subst hS hR
  cases hj
  exact h



theorem good_copy {K : Ctx} {P : Pre2 K w} (x : St P) (N : NStage B w.C (P.q.W x.o.η x.o.hη)) (m : Moved (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over)) (hc : m.Copy)
    (hco : m.Coh) (s : Side0 (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over)) (hR : s.RR = x.s.RR) (hj : HEq s.jEE x.s.jEE) : GoodSideLattices.Good m s := by
  obtain ⟨n, c, Xo, h⟩ := rrT_exists (w.st P.Z₀).toD7 (Gc B w.px) (PlS B w.px) (PlI B w.px) (TupU w.I (usedOf w.I T P.Wt))
    (famR (w.st P.Z₀) w.I P.hX (usedOf w.I T P.Wt) P.z.Xg P.z.tr) P.z.core.Q.c.F P.z.R P.z.F P.z.cG P.z.pins P.intersectionNumber_baseChange P.q.y false
    (P.q.p.ch false).EE (P.q.t.ch false).jE (P.q.t.ch false).jE_inj (P.q.t.ch false).jE_range
  have h0 := rrT_moved x.m x.copy x.coh false h
  have h1 := rrT_moved m hc hco false h
  have h2 := coords x.r.Z x.m.y ((by with_unfolding_all exact ((x.m.t.ch false).jE :))) ((by with_unfolding_all exact ((x.m.t.ch false).jE_inj :))) n ((by with_unfolding_all exact (c :))) ((by with_unfolding_all exact (Xo :))) ((by with_unfolding_all exact (h0 :))) ((by with_unfolding_all exact (x.pin.heq_eigen_embedding_zero :)))
  obtain ⟨ε, h2, h3⟩ := h2
  have h4 : (fun u : B.places.Pl => ((by with_unfolding_all exact ((x.s.p0.s.RRset ((w.D x.o.Z).what₂.muAt u)) :)) : Set (P.q.p.ch false).EE.T)) =
      fun u => (by with_unfolding_all exact ((s.p0.s.RRset ((w.D (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))).what₂.muAt u)) :)) :=
    funext fun u => (by with_unfolding_all exact ((RRset_two x.s s ((w.D x.o.Z).what₂.muAt u)) :))
  have h5 := lat_tr (K := B.LL) B.embLL c Xo ((by with_unfolding_all exact ((fun u : B.places.Pl => (w.D x.o.Z).plEq u) :))) h4 hR hj
    ⟨(by with_unfolding_all exact (ε :)), (by with_unfolding_all exact (h2 :)), (by with_unfolding_all exact (h3 :)), (by with_unfolding_all exact (x.r.Z.rr0 :))⟩
  obtain ⟨ε', k1, k2, k3⟩ := h5
  exact ⟨n, c, Xo, ε', h1, k1, k2, (by with_unfolding_all exact (k3 :))⟩

end GlobalTheory.Mem.R3.Rw.CopyRead

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GoodCopy =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftTieOfPk =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftTieOfPk", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.ReadPk\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsIdentificationTypeRepresentativesClasses\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsReadingInMovedRowData\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.IsHermPosChainRealEndSpaceTuple\nimport Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RowIdentificationsRealRowSideOfChainComparison\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.MainNotions.StandardLattice Formalism.MainNotions.S MeasureTheory IsDedekindDomain NumberField
open Formalism.L2.Theta Formalism.L2.DIV Formalism.L2.Indef Formalism.L2.Rows Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.Lev Formalism.IndefR.Cx Formalism.IndefR.RecTie
open scoped TensorProduct InnerProductSpace ComplexOrder
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI
open GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.Mem.R3.Tr

noncomputable section

namespace GlobalTheory.Mem.R3.Rw.CopyRead


theorem liftTie_of_pk : ∀ (D : D7) (G : Type) [Group G] [Fintype G] (Pl0 T : Type) (A : FamIn D.what₂.LL G Pl0 T D.R.m) (Ks : Type) [Field Ks] [NumberField Ks] [Algebra Ks D.what₂.LL] (R : RealDat D A Ks) (F : Face D A) (y : Hd R), (∀ μ, Used0 D μ ↔ y.Us μ) → DV.LamDef D → ∀ (rep : D.what₂.FT → Formalism.L2.NG.FinTyp D.host.E D.R.r) (jL : ∀ (i : Fin D.R.m) t, (Fin (lDim D A F.P0 F.ψ0 i t) → D.what₂.LL) → D.what₂.Mt (y.tup t) ((i : ℕ) + 1)) (t : LfT y F rep (Mt := fun μ j => ⟨D.what₂.Mt μ j⟩) jL ⟨fun j => ⟨D.what₂.Mj j⟩, D.what₂.MjLat, D.what₂.thetaP, D.what₂.isot⟩), ∃ (I : LiftIds (y.L F)) (mj : GlobalTheory.RealGeo.MjTie R F), LiftTie (y.L F) I ∧ (∀ i π, I.prtW i π = y.prtW F i (rep π)) ∧ (∀ i x, (I.jMj i x).1 = t.jMj i x) ∧ (∀ μ h i x, (I.jMt μ h i x).1 = t.jMt μ i x) ∧ ∀ i x, mj.eW i x = t.eW i x := by
  intro D G _ _ Pl0 T A Ks _ _ _ R F y hU hLam rep jL t
  let I : LiftIds (y.L F) :=
    { jMj := fun i =>
        (LinearEquiv.ofInjective (t.jMj i) (t.jMj_inj i)).trans (LinearEquiv.ofEq _ _ (t.jMj_range i))
      jMt := fun μ hμ i =>
        (LinearEquiv.ofInjective (t.jMt μ i) (t.jMt_inj μ ((hU μ).1 hμ) i)).trans
          (LinearEquiv.ofEq _ _ (t.jMt_range μ ((hU μ).1 hμ) i))
      prtW := fun i π => y.prtW F i (rep π) }
  refine ⟨I, ⟨t.eW, t.eW_range, t.eW_norm, t.eW_lat⟩, ?_, fun _ _ => rfl, fun _ _ => rfl, fun _ _ _ _ => rfl,
    fun _ _ => rfl⟩
  refine ⟨fun i => GlobalTheory.HilbertLevels.holW R F y.tupT y.hm y.hTop y.hinj i, fun i x x' => t.jMj_ip i x x',
    fun μ hμ i x x' => t.jMt_ip μ ((hU μ).1 hμ) i x x', ?_, fun i π v => t.isot i π v,
    fun i π π' h => t.disj i π π' h, ?_⟩
  · intro μ hμ i x w _ hw hthC hgood
    exact t.theta μ ((hU μ).1 hμ) i x _ w hw hthC hgood
  · intro μ _ i π c h0 hc
    rw [hLam μ ((i : ℕ) + 1) (by omega) i.2 π h0]
    exact DV.lamTr_of_scalar D μ _ π c h0 hc



open GlobalTheory.Mem.R3.Rw.ComplexificationCasts in
theorem read_of_fits : ∀ (B : Base) (f : Fr B.toPre) (T : TwDat B) (w : ColW B f T) (Z₀ : w.Lt) (hX : B.fields.Ok) (Wt : Set B.places.Pl) (z₀ : Dat (w.st Z₀) w.I hX T Wt), ∀ (q : RowPk w z₀) (o : q.Over), o.Fits → ∀ m : Moved o, ∀ s : Side0 o, ∃ Y : Read m.z.R.toRealDat m.z.F.lv2 s.p0, Y.tup = m.y.tup ∧ Y.tupT = m.y.tupT ∧ Y.PY = m.y.PY ∧ Y.PW = m.y.PW ∧ (∀ t, HEq (Y.jA t) ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j) ∧ (∀ t, HEq (Y.jA0 t) ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j) ∧ (∀ (i : Fin (w.D o.Z).R.m) t x, HEq (Y.eMt i t x) x) ∧ (∀ π, (principalLevelFrame.rowRepR m.z.R.θ (Y.eFT π)).Iso (m.t.rep π)) ∧ (∀ x, HEq (Y.Ish.jE x).1 ((m.t.ch true).jE x)) ∧ (∀ x, HEq (Y.Iz.jE x).1 ((m.t.ch false).jE x)) ∧ (∀ i x, HEq (Y.mj.eW i x) (m.t.lf.eW i x)) ∧ (∀ μ h i x, HEq (Y.IL.jMt μ h i x).1 (m.t.lf.jMt μ i x)) := by
  intro B f T w Z₀ hX Wt z₀ q o hfits m s
  have hB : m.z.R.toRealDat.BaseW m.z.F.lv2 := m.z.pins.char.base
  have hmu := muAt_eq m
  have hU : ∀ μ, Used0 (w.st o.Z).toD7 μ ↔ m.y.Us μ := by
    intro μ; unfold Used0 Hd.Us; simp only [hmu]
  have hN : NumOK (w.st o.Z).toD7 := q.num o.η o.hη o.V o.S o.N o.G
  -- The coordinate maps of these local definitions reduce to the chain maps.
  let Ish := SideTie.ids (S := RowSide.sharp (w.st o.Z).toD7) hU (m.t.ch true)
  let Iz := SideTie.ids (D := (w.st o.Z).toD7) (R := m.z.R.toRealDat) (F := m.z.F.lv2)
    (S := s.p0.s) (bs := (w.st o.Z).toD7.what₂.onb0) (ty := (w.st o.Z).toD7.what₂.ft0)
    hU (m.t.ch false)
  have h1R := SideTie.real (S := RowSide.sharp (w.st o.Z).toD7) hU (m.t.ch true)
  have h0R := SideTie.real (D := (w.st o.Z).toD7) (R := m.z.R.toRealDat) (F := m.z.F.lv2)
    (S := s.p0.s) (bs := (w.st o.Z).toD7.what₂.onb0) (ty := (w.st o.Z).toD7.what₂.ft0)
    hU (m.t.ch false)
  have kL := liftTie_of_pk _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y hU hN.lam m.t.rep _ m.t.lf
  obtain ⟨IL, mj, hLT, hPW, hMj, hMt, hEW⟩ := kL
  have kF := RepCls.reps_classes _ _ _ _ _ _ m.z.R.toRealDat m.z.F.lv2 m.y _ m.t.rep m.t.reps
  obtain ⟨eF, heF⟩ := kF
  have kE := exists_eE (E := (w.st o.Z).toD7.what₂.EE) m.y hB true
    (m.t.ch true).jE (m.t.ch true).jE_range
  obtain ⟨eE, heE⟩ := kE
  have hocc : ∀ π, (∃ σ, (q.p.ch true).ty σ = π) ∨ ∃ σ, (q.p.ch false).ty σ = π := fun π => by
    have k := (heF π).2.2.2
    obtain ⟨b, h0, hle⟩ := k
    have k' := exists_type (q.p.ch b).bs (q.p.ch b).ty π (m.t.ch b).jE _ ((m.t.ch b).ft π) h0 (hle.trans (m.t.ch b).jE_range.ge)
    cases b
    · exact Or.inr k'
    · exact Or.inl k'
  let Y : Read m.z.R.toRealDat m.z.F.lv2 s.p0 := {
    tup := m.y.tup
    tupT := m.y.tupT
    tupT_tup := m.y.tupT_tup
    tupTie := fun μ h => tupTie m.y ((hU μ).1 h)
    tup0 := m.y.tup0
    muAt := hmu
    hm := m.y.hm
    hTop := m.y.hTop
    hinj := m.y.hinj
    Ish := Ish
    Iz := Iz
    IL := IL
    Kc := ⟨fun μ => m.z.R.toLevCh.xi (m.y.tupT μ)⟩
    PY := m.y.PY
    PW := m.y.PW
    eFT := eF
    ιW := m.y.ιW
    tied := ⟨h1R, h0R, hLT, colTie m.y hB hN.bu⟩
    prtE := fun π => by exact ((heF π).2.1 true).symm
    prtE0 := fun π => by exact ((heF π).2.1 false).symm
    prtWE := fun i π => by exact (hPW i π).trans ((heF π).2.2.1 i).symm
    xi := fun _ _ => rfl
    isomFin := m.y.isomFin
    frameMatch := m.y.frameMatch
    hF := m.y.hF
    stdPsi := m.y.stdPsi
    jA := fun t => by exact ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j
    jA0 := fun t => by exact ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j
    eMt := fun i t => by exact (LinearEquiv.funCongrLeft B.LL B.LL (finCongr (congrArg Mat1.n (m.t.hL i t))))
    formsA := fun t => by exact ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).forms
    latA := fun t => by exact ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).latT
    formsAtBottomLevel := fun t => by exact ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).forms
    latA0 := fun t => by exact ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).latT
    formsL := fun i t => by exact (cast_forms (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)))
    latL := fun i t => by exact (cast_lat (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)))
    topRead := fun t h x => by
      let e := (q.p.ch true).multTop (m.y.tup t)
      let v := ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)).j x
      change (m.t.ch true).jX (m.y.tup t) (e (e.symm v)) = _
      exact (congrArg ((m.t.ch true).jX (m.y.tup t)) (e.apply_symm_apply v)).trans
        ((m.t.ch true).top t ((hU _).1 h) x)
    topRead0 := fun t h x => by
      let e := (q.p.ch false).multTop (m.y.tup t)
      let v := ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)).j x
      change (m.t.ch false).jX (m.y.tup t) (e (e.symm v)) = _
      exact (congrArg ((m.t.ch false).jX (m.y.tup t)) (e.apply_symm_apply v)).trans
        ((m.t.ch false).top t ((hU _).1 h) x)
    mtRead := fun i t h x => by
      exact ((hMt _ h i _).trans ((congrArg (m.t.lf.jMt (m.y.tup t) i)
        (cast_apply (m.t.hL i t) (q.p.tL (m.y.tup t) ((i : ℕ) + 1)) x)).trans (m.t.lf.read i t ((hU _).1 h) x)))
    mj := mj
    mjRead := fun i v => by
      refine (hMj i v).trans ?_
      exact (m.t.lf.jMj_read i v).trans
        (congrArg (fun u => PiTensorProduct.lift ((m.z.R.HW i _).e u)) (hEW i v).symm)
    stable := fun μ => by exact (m.t.tA true μ).stable
    stable0 := fun μ => by exact (m.t.tA false μ).stable
    eE := by exact eE
    eE_read := fun x => by
      change (m.t.ch true).jE x = _
      exact heE x
    dall := by exact m.t.dall
    junk := fun μ h => iota_eq_zero _ m.y.hm μ ((m.t.ch true).junk μ fun h' => h ((hU μ).2 h'))
    cen0 := fun cG hk t => by
      exact (cen_of_tie ((m.t.tA false (m.y.tup t)).cast (m.t.hA false t)) (m.z.R.eG.trans cG) (fun z x => s.cen (m.y.tup t) z x)
        (s.is _ (stdIso_of_keep m.z cG hk) (m.y.tup t)))
    cen1 := fun cG hk t => by
      exact (cen_of_tie ((m.t.tA true (m.y.tup t)).cast (m.t.hA true t)) (m.z.R.eG.trans cG)
        (fun z x => o.N.ntypes.cenAmb (m.y.tup t) z x) ((hfits.cen _ (stdIso_of_keep m.z cG hk)).amb (m.y.tup t)))
    lam := hN.lam
    occ := by exact hocc
    kap := q.kap o.η o.hη o.V o.S o.N o.G
    bu := hN.bu
    ze := hN.ze }
  refine ⟨Y, rfl, rfl, rfl, rfl, fun _ => HEq.rfl, fun _ => HEq.rfl, ?_, ?_, ?_, ?_, ?_, ?_⟩
  · intro i t x
    exact heq_funCongr (K := B.LL) (congrArg Mat1.n (m.t.hL i t)) x
  · exact fun π => (heF π).1
  · intro x
    change HEq ((m.t.ch true).jE x) ((m.t.ch true).jE x)
    exact HEq.rfl
  · intro x
    change HEq ((m.t.ch false).jE x) ((m.t.ch false).jE x)
    exact HEq.rfl
  · exact fun i x => heq_of_eq (hEW i x)
  · exact fun μ h i x => heq_of_eq (hMt μ h i x)

end GlobalTheory.Mem.R3.Rw.CopyRead

end
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftTieOfPk =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStage =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStage", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RootsOfUnityRingLeWittIntegers\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.GoodCopy\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.LiftTieOfPk\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.RepOfHeq\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.ExistsSideReadingLevelZeroMoved\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.IndefR.principalLevelFrame.instCMHostI

namespace GlobalTheory.Mem.R3.Rw.CopyRead

private theorem pin_of {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z₀ : w.Lt} {hX : B.fields.Ok}
    {Wt : Set B.places.Pl} {z₀ : GlobalTheory.Mem.R3.Dat (w.st Z₀) w.I hX T Wt}
    {q : GlobalTheory.Mem.R3.Rw.RowPk w z₀} {o : q.Over}
    {m : GlobalTheory.Mem.R3.Rw.Moved o} {s : GlobalTheory.Mem.R3.Rw.Side0 o}
    (r : GlobalTheory.Mem.R3.Rw.ReadPk m s) (Y : Read m.z.R.toRealDat m.z.F.lv2 s.p0) (e : r.Y = Y)
    (h8 : ∀ π, (Formalism.IndefR.principalLevelFrame.rowRepR m.z.R.θ (Y.eFT π)).Iso (m.t.rep π))
    (h9 : ∀ x, HEq (Y.Ish.jE x).1 ((m.t.ch true).jE x)) (h10 : ∀ x, HEq (Y.Iz.jE x).1 ((m.t.ch false).jE x))
    (h11 : ∀ i x, HEq (Y.mj.eW i x) (m.t.lf.eW i x)) (h12 : ∀ μ h i x, HEq (Y.IL.jMt μ h i x).1 (m.t.lf.jMt μ i x)) : r.Pin := by
  subst e
  exact ⟨h8, h9, h10, h11, h12⟩

private theorem read_pinned {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {Z₀ : w.Lt} {hX : B.fields.Ok}
    {Wt : Set B.places.Pl} {z₀ : GlobalTheory.Mem.R3.Dat (w.st Z₀) w.I hX T Wt}
    {q : GlobalTheory.Mem.R3.Rw.RowPk w z₀} {o : q.Over} (hF : o.Fits)
    (m : GlobalTheory.Mem.R3.Rw.Moved o) (s : GlobalTheory.Mem.R3.Rw.Side0 o)
    (hs : GlobalTheory.Mem.R3.Rw.GoodSideLattices.Good m s) : ∃ r : GlobalTheory.Mem.R3.Rw.ReadPk m s, r.Pin := by
  have k := read_of_fits B f T w Z₀ hX Wt z₀ q o hF m s
  obtain ⟨Y, h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, h12⟩ := k
  have k2 := GoodSideLattices.read_of_good hF m s hs Y h9 h10
  obtain ⟨Z⟩ := k2
  exact ⟨⟨Y, Z, h1, h2, h3, h4, h5, h6, h7⟩, pin_of _ Y rfl h8 h9 h10 h11 h12⟩



theorem read_copyN : ∀ {K : Ctx} {B : Base} {f : Fr B.toPre} {T : TwDat B} {w : ColW B f T} {P : Pre2 K w} (x : St P) (N : NStage B w.C (P.q.W x.o.η x.o.hη)), GrpTrue N f → GrpAt (w.st (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))) w.I → (∀ eR, StdIso (w.st (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))) w.px eR → CenIs P.q.p N eR) → ∀ (m : Moved (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over)), m.Copy → m.Coh → ∀ (sg : SameGrp (B := B) (C := w.C) x.o.Z (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))) (s : Side0 (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over)), s.RR = x.s.RR → HEq s.jEE x.s.jEE → (∀ μ (c : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))).nd))) (c0 : Subalgebra.center ℂ (MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd))), (∀ g, (c0 : MonoidAlgebra ℂ (G0g (w.D x.o.Z).nd)).coeff g = (c : MonoidAlgebra ℂ (G0g (w.D (RowPk.Over.Z (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over))).nd)).coeff (sg.iso g)) → s.cen μ c = x.s.cen μ c0) → ∃ r : ReadPk m s, r.Pin ∧ HEq (repOf r.Y) (repOf x.r.Y)  := by
  intro K B f T w P x N hG hGA hCen m hc hco _ s hRR hj _
  have hF : RowPk.Over.Fits (⟨x.o.η, x.o.hη, x.o.V, x.o.S, N, x.o.G⟩ : P.q.Over) := ⟨x.fits.div, hG, hGA, hCen⟩
  have k := read_pinned hF m s (good_copy x N m hc hco s hRR hj)
  exact k.imp fun r hp => ⟨hp, repOf_heq x.coh x.r x.pin hco r hp⟩

end GlobalTheory.Mem.R3.Rw.CopyRead
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStage =====

-- ===== clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStageStatement =====
-- clump-header: {"m": "Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStageStatement", "h": "module\n\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.WeakCharInertPartRealAdelicDataTransport\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.NonzeroPlacesOverPrimesLifts\npublic import Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.RootsOfUnityRingLeWittIntegers\npublic import Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStage\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Development.AbelianVarietyTheory.Definitions.AutomorphicMembership.StrictHenselianAcyclic\n\n"}
section -- clump:auto
@[expose] public section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.N Formalism.L2 Formalism.L2.Host Formalism.L2.NT Formalism.IndefR.NX NumberField IsDedekindDomain GlobalTheory.Mem GlobalTheory.Mem.Col2 GlobalTheory.Mem.Top GlobalTheory.Mem.Top.GroupRetwisting GlobalTheory.Mem.Top.Bl GlobalTheory.Mem.R3 GlobalTheory.Mem.R3.Rw GlobalTheory.HeightCounting GlobalTheory.HeightCounting.Up
attribute [local instance] Formalism.BasicNotions.Host.cmStar


end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AbelianVarietyTheory.Proofs.IwasawaDecomposition.AdelicRowsReadingTransportLaterHeckeGaloisStageStatement =====
