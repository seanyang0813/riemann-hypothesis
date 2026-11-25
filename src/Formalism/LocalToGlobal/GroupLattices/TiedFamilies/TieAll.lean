module

public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLat
public import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.RecThm
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieDim
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.CmpHyp0P
public import Formalism.LocalToGlobal.GroupLattices.FockModels.Sandwich
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieWeak
public import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StabilizerCount
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieEvR
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.ChiMemSubfield
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.FullTiedCBase
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.SelfDualAtColLevel
public import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieExC
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.RecAct
import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.IsUnitDetBlockPreimage
import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.CmpCMemFunMod

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieSurj, Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLatFin, Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieAll

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieSurj =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieSurj", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLat\nimport Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.RecAct\npublic import Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.RecThm\nimport Formalism.LocalToGlobal.GroupLattices.TiedFamilies.IsUnitDetBlockPreimage\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieDim\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.G

open Formalism.L2.G.Cmp Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7} {X : Formalism.L2.Herm.Herm0 D}
  {T : ∀ u : D.what₂.Word, Forms0 D u} {Gt : GatTies D} {I : CmpIn D X}

theorem card_eq_d (D : D7) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) :
    Fintype.card ((D.fm u).lat 0).ι = Module.finrank (D.gat u w hg).O (D.gat u w hg).M := by
  have h1 : Module.finrank ℂ ((D.fm u).Fi 0) = Fintype.card ((D.fm u).lat 0).ι := by
    rw [← ((D.fm u).emb_basis 0).2]
    exact finrank_span_eq_card ((D.fm u).emb_basis 0).1
  have h2 : Module.finrank ℂ ((D.fm u).Fi 0) = Module.finrank ℂ (D.mem u).A.Mu0 :=
    congrArg (fun S : Submodule ℂ ((D.mem u).C.cls 0 → (D.mem u).C.Y 0 → ℂ) => Module.finrank ℂ S) (D.fm u).Fi_zero
  exact h1.symm.trans (h2.trans (D.gat_d u w hg).symm)

def cmpLin (H : CmpCore T Gt I) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) :
    ((D.fm u).lat 0).V →ₛₗ[I.embW u w hg] (D.gat u w hg).Fn :=
  cmpL (e := I.embW u w hg) (H.ex u w hg) (valUniq_of (embT_conj D) (evInj_rec Gt I u w hg) (ptEx_rec X T u w hg I.B))

theorem cmpLin_mem_span (H : CmpCore T Gt I) (hloc : ValIntRec T Gt I) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (x : ((D.fm u).lat 0).V) :
    cmpLin H u w hg x ∈ Submodule.span (D.gat u w hg).Kf ((D.gat u w hg).M : Set (D.gat u w hg).Fn) := by
  have hx : x ∈ Submodule.span D.what₂.LL (((D.fm u).lat 0).L : Set ((D.fm u).lat 0).V) := by
    rw [((D.fm u).lat_good 0).2.2]; trivial
  induction hx using Submodule.span_induction with
  | mem y hy =>
    apply Submodule.subset_span
    exact (cmpRec_lat_pf H hloc u w hg y).2 (Submodule.subset_span hy)
  | zero => rw [map_zero]; exact Submodule.zero_mem _
  | add y z _ _ h1 h2 => rw [map_add (f := _)]; exact Submodule.add_mem _ h1 h2
  | smul a y _ h1 => rw [LinearMap.map_smulₛₗ]; exact Submodule.smul_mem _ _ h1



theorem surjRat_pf (H : CmpCore T Gt I) (hloc : ValIntRec T Gt I)
    (hfrac : ∀ u w hg, IsFractionRing (D.gat u w hg).O (D.gat u w hg).Kf)
    (hfin : ∀ u w hg, Module.Finite (D.gat u w hg).O (D.gat u w hg).M) : SurjRat T Gt I := by
  intro u w hg F hF hrat
  have := hfrac u w hg
  have := hfin u w hg
  have hli : LinearIndependent (D.gat u w hg).Kf fun a => cmpLin H u w hg (((D.fm u).lat 0).b a) :=
    cmpC_li (e := I.embW u w hg) (embT_conj D) (H.ex u w hg)
      (valUniq_of (embT_conj D) (evInj_rec Gt I u w hg) (ptEx_rec X T u w hg I.B)) (ptAll_rec X T u (H.same u) w hg I.B)
      (embFr_inj T u) ((D.fm u).lat 0).b ((D.fm u).lat 0).b.linearIndependent
  have h1 : F ∈ Submodule.span (D.gat u w hg).Kf (Set.range fun a => cmpLin H u w hg (((D.fm u).lat 0).b a)) :=
    mem_span_of_card (D.gat u w hg).M _ hli (fun a => cmpLin_mem_span H hloc u w hg _) (card_eq_d D u w hg) F hF
  have h2 : F ∈ Submodule.span (D.gat u w hg).Kf (Set.range (cmpLin H u w hg).toAddMonoidHom) := by
    refine Submodule.span_mono ?_ h1
    rintro _ ⟨a, rfl⟩
    exact ⟨_, rfl⟩
  exact rat_mem (I.embW u w hg) (evG (D.gat u w hg)) (cmpLin H u w hg).toAddMonoidHom (evG_sep _)
    (fun a x => (cmpLin H u w hg).map_smulₛₗ a x) (fun x => (ratFn_iff _ _ _).1 (cmpC_rat x)) h2
    ((ratFn_iff _ _ _).1 hrat)

end Formalism.L2.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieSurj =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLatFin =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLatFin", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.CmpHyp0P\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLat\nimport Formalism.LocalToGlobal.GroupLattices.ComparisonMaps.CmpCMemFunMod\npublic import Formalism.LocalToGlobal.GroupLattices.FockModels.Sandwich\nimport Formalism.LocalToGlobal.GroupLattices.TiedFamilies.IsUnitDetBlockPreimage\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieSurj\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieWeak\npublic import Formalism.SharpRestriction.GrowthBounds.MultisetValuation.StabilizerCount\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace Formalism.L2.G

open Formalism.L2.G.Cmp Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix
open scoped TensorProduct

attribute [local instance] Formalism.BasicNotions.Host.cmStar

variable {D : D7}

theorem htupW_le_htup (Gt : GatTies D) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (L : (D.gat u w hg).P.Tup) :
    (D.gat u w hg).P.HtupW L ≤ (D.gat u w hg).P.Htup L := by
  have hW := Formalism.MainNotions.G.Joints.weylSandwich_of_model D (Formalism.L2.G.Model.modelSandwichG_of_ties D Gt)
  refine Submodule.span_mono ?_
  rintro Z ⟨F, hF, rfl⟩
  refine ⟨F, fun v => ?_, rfl⟩
  refine (Submodule.span_mono ?_ : HtenW (D.gat u w hg).O _ _ ≤ Hten (D.gat u w hg).O _ _) (hF v)
  rintro Y ⟨F', hF', rfl⟩
  exact ⟨F', fun s => (hW u w hg _ _ _).2 (hF' s), rfl⟩

theorem m_le_mna (Gt : GatTies D) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) : (D.gat u w hg).M ≤ (D.gat u w hg).Mna := by
  intro F hF
  have h1 := (mem_funMod_iff (D.gat u w hg) (D.gat u w hg).P.HtupW F).1 hF
  refine (mem_funMod_iff (D.gat u w hg) (D.gat u w hg).P.Htup F).2 fun i => ?_
  exact ⟨fun L hL => htupW_le_htup Gt u w hg L ((h1 i).1 L hL), (h1 i).2⟩

theorem m_finite_rec (Gt : GatTies D) (u : D.what₂.Word) (w : D.what₂.places.Pl)
    (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) (h : (D.gat u w hg).FinClasses) :
    Module.Finite (D.gat u w hg).O (D.gat u w hg).M :=
  Formalism.MainNotions.FormalGroupSystem.Pf.m_finite (D.gat u w hg) h (m_le_mna Gt u w hg)

variable {X : Formalism.L2.Herm.Herm0 D} {T : ∀ u : D.what₂.Word, Forms0 D u} {Gt : GatTies D} {I : CmpIn D X}

theorem surjRat_rec (H : CmpCore T Gt I) (hG : ∀ u w hg, GatIs D X.lev0 u w hg) (hloc : ValIntRec T Gt I) :
    SurjRat T Gt I :=
  surjRat_pf H hloc (fun u w hg => frac_of_gatIs X.lev0 u w hg (hG u w hg))
    (fun u w hg => m_finite_rec Gt u w hg (finClasses_of_gatIs X.lev0 u w hg (hG u w hg)))

theorem comparison_lattice_span_eq (H : CmpCore T Gt I) (hG : ∀ u w hg, GatIs D X.lev0 u w hg) (hloc : ValIntRec T Gt I)
    (u : D.what₂.Word) (w : D.what₂.places.Pl) (hg : GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w)) :
    Submodule.span (D.gat u w hg).O
      (cmpRec T Gt I u w hg '' (((D.fm u).lat 0).L : Set ((D.fm u).lat 0).V)) = (D.gat u w hg).M :=
  latM_rec' H hG hloc (surjRat_rec H hG hloc) u w hg

theorem cmpHyp0P_of_cmpCore (H : CmpCore T Gt I) (hG : ∀ u w hg, GatIs D X.lev0 u w hg) (hloc : ValIntRec T Gt I) :
    CmpHyp0P T Gt I :=
  { ex := H.ex,
    evInj := fun u w hg => evInj_rec Gt I u w hg,
    ptEx := fun u w hg => ptEx_rec X T u w hg I.B,
    ptAll := fun u w hg => ptAll_rec X T u (H.same u) w hg I.B,
    chi := H.chi,
    latM := comparison_lattice_span_eq H hG hloc }

end Formalism.L2.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLatFin =====

-- ===== clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieAll =====
-- clump-header: {"m": "Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieAll", "h": "module\n\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieEvR\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.ChiMemSubfield\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.CmpHyp0P\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.FullTiedCBase\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLat\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.SelfDualAtColLevel\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieExC\npublic import Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieLatFin\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.G NumberField IsDedekindDomain Formalism.UG Formalism.L2.Forms Formalism.L2.G.Cmp

namespace Formalism.L2.G

attribute [local instance] Formalism.BasicNotions.Host.cmStar Formalism.BasicNotions.factResChar

variable (D : D7) (sc : Scale) (Ce : ℝ)
  (Lc : ∀ u, ColLevel D.R D.host.F D.host.E D.sp D.host.g (D.mem u).C (D.mem u).A (D.clsLat u))
  (I : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    LocId (Lc u) (D.what₂.places.resChar w) (nOrb (zH D.R.toFrame (hP D (D.what₂.places.resChar w))))
      (WQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w)))
      (QQ (D.what₂.places.resChar w) (nFr D (D.what₂.places.resChar w))))
  (ψ : ∀ u (w : D.what₂.places.Pl), GIdx D.host (D.mem u).A.T (D.what₂.places.resChar w) →
    Formalism.L2.Herm.awayFrom₂ (Lc u) (D.what₂.places.resChar w) →* (ORec D w (nFr D (D.what₂.places.resChar w)))ˣ)
  (hd : ∀ u w h, ((packC D Lc I ψ u w h).gat (rSc sc D.R.k (D.what₂.places.resChar w))
    (epSc D.R sc Ce (D.what₂.places.resChar w))).d = Module.finrank ℂ (D.mem u).A.Mu0)
  (H0 : Formalism.L2.Herm.Herm0 (recC D sc Ce Lc I ψ hd)) (hL : ∀ u, H0.lev0 u = Lc u)
  (T : ∀ u : D.what₂.Word, Forms0 (recC D sc Ce Lc I ψ hd) u)
  (B : GL (Fin D.R.k) D.host.E) (hBs : Cmp.StdB (recC D sc Ce Lc I ψ hd) B)
  (hB : ∀ u w hg (w' : HeightOneSpectrum (𝓞 D.host.F)) (h : ((D.what₂.places.resChar w : ℕ) : 𝓞 D.host.F) ∈ w'.asIdeal),
    (I u w hg).fr w' h = bc (((RingHom.fst _ _).comp ((I u w hg).spl w' h).toRingHom).comp
      (inclE (F := D.host.F) (w'.adicCompletion D.host.F))) B)

structure CmpLeft : Prop where
  same : ∀ u, SameUloc (hermitianLevelZeroOfRecursion D sc Ce Lc I ψ hd H0 hL) T u
  blk : ∀ u w hg, BlockRationalityAtPlace (hermitianLevelZeroOfRecursion D sc Ce Lc I ψ hd H0 hL) (gatTiesC D sc Ce Lc I ψ hd) u w hg B
  psi0 : ∀ u, LevelZeroCharacterRational (D := recC D sc Ce Lc I ψ hd) T u
  chi : ∀ u w hg i (γ : (((recC D sc Ce Lc I ψ hd).gat u w hg).lev i).Γ) (κ : ((T u).cls0).lev.U),
    (locAt (hermitianLevelZeroOfRecursion D sc Ce Lc I ψ hd H0 hL) u w hg B).IsAway i γ κ.1 →
    ∃ r : D.what₂.LL, D.what₂.embLL r = (((T u).cls0).lev.chi κ : ℂ) ∧
      algebraMap ((recC D sc Ce Lc I ψ hd).gat u w hg).O ((recC D sc Ce Lc I ψ hd).gat u w hg).Kf
        ((((recC D sc Ce Lc I ψ hd).gat u w hg).lev i).χ γ : ((recC D sc Ce Lc I ψ hd).gat u w hg).O) *
          (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB).embW u w hg r = 1
  valInt : ValIntRec T (gatTiesC D sc Ce Lc I ψ hd) (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB)

variable {D sc Ce Lc I ψ hd H0 hL T B hBs hB}



theorem CmpLeft.core (N : CmpLeft D sc Ce Lc I ψ hd H0 hL T B hBs hB)
    (pos : ∀ u w hg v (s : Fin (((recC D sc Ce Lc I ψ hd).gat u w hg).P.n' v)) (x : D.host.E),
      (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB).embW u w hg
        (tEL (recC D sc Ce Lc I ψ hd) ((gatTiesC D sc Ce Lc I ψ hd).gat_pos u w hg ⟨v, s⟩)
          (if Even s.val then x else sigD (recC D sc Ce Lc I ψ hd) x)) =
        ((recC D sc Ce Lc I ψ hd).gat u w hg).P.ι v ((((recC D sc Ce Lc I ψ hd).gat u w hg).P.σ v ^ s.val)
          ((locAt (hermitianLevelZeroOfRecursion D sc Ce Lc I ψ hd H0 hL) u w hg B).iw v x))) :
    CmpCore T (gatTiesC D sc Ce Lc I ψ hd) (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB) :=
  { same := N.same
    ex := fun u w hg => ex_C D sc Ce Lc I ψ hd H0 hL T B hBs hB u (N.same u) w hg
      (evRatRep_rec T (gatTiesC D sc Ce Lc I ψ hd) u w hg B (N.blk u w hg)) (N.psi0 u)
    pos := pos
    chi := N.chi }



theorem CmpLeft.toHyp0P (N : CmpLeft D sc Ce Lc I ψ hd H0 hL T B hBs hB)
    (pos : ∀ u w hg v (s : Fin (((recC D sc Ce Lc I ψ hd).gat u w hg).P.n' v)) (x : D.host.E),
      (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB).embW u w hg
        (tEL (recC D sc Ce Lc I ψ hd) ((gatTiesC D sc Ce Lc I ψ hd).gat_pos u w hg ⟨v, s⟩)
          (if Even s.val then x else sigD (recC D sc Ce Lc I ψ hd) x)) =
        ((recC D sc Ce Lc I ψ hd).gat u w hg).P.ι v ((((recC D sc Ce Lc I ψ hd).gat u w hg).P.σ v ^ s.val)
          ((locAt (hermitianLevelZeroOfRecursion D sc Ce Lc I ψ hd H0 hL) u w hg B).iw v x))) :
    CmpHyp0P T (gatTiesC D sc Ce Lc I ψ hd) (cmpInC D sc Ce Lc I ψ hd H0 hL B hBs hB) :=
  cmpHyp0P_of_cmpCore (N.core pos)
    (fun u w hg => gatIs_recC D sc Ce Lc I ψ hd H0 hL (fun u w h => isHyperbolicAt_rec_of_placeIdentification D u w h (I u w h)) u w hg) N.valInt

end Formalism.L2.G
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.LocalToGlobal.GroupLattices.TiedFamilies.TieAll =====
