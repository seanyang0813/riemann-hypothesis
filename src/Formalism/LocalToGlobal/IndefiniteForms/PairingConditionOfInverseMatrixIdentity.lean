module

public import Formalism.LocalToGlobal.IndefiniteForms.IndefSide
public import Formalism.QuotientMetricDivisors.DivIntoDualShift
public import Formalism.LocalToGlobal.IndefiniteForms.IndefUse

@[expose] public section

open Module NumberField IsDedekindDomain
open scoped Matrix ComplexOrder InnerProductSpace

noncomputable section

namespace Formalism.L2.Indef

open Formalism.DivisionValues Formalism.EigenvalueLevelCeiling

variable {K : Type} [Field K] [NumberField K] [StarRing K]

namespace ColData

variable {Bs : DefBase K} {Df : DefSide Bs} {Dc : DefCols Df} {Sp : SPer Dc} {S : IndefData Df} (C : ColData Dc Sp S)

end ColData

structure ConvFace (Bs : DefBase K) where

  primes : Prop

  symLevel : Prop

  sg0 : K →+* ℂ

  Hk : Type

  ev : Bs.Ix → Hk → K

  ev_inj : Function.Injective ev

structure IndefConv (Bs : DefBase K) (μ : HeightOneSpectrum (𝓞 K) → Bs.Tup) (cf : ConvFace Bs) : Prop where

  c1 : cf.primes

  c2 : ∀ t : Bs.Tup, t = Bs.μ0 ∨ ∃ w, μ w = t

  c3 : cf.symLevel

  c4 : Bs.v0.embedding = cf.sg0

structure HeckeRows {Bs : DefBase K} (cf : ConvFace Bs) {Df : DefSide Bs} (S : IndefData Df) where

  hE : cf.Hk → Module.End K (Fin S.D → K)

structure HeckeAll {Bs : DefBase K} (cf : ConvFace Bs) {Df : DefSide Bs} (S : IndefData Df) extends HeckeRows cf S where

  hW : ∀ j, cf.Hk → Module.End K (Fin (S.dW j) → K)

structure IndefPkg2 {Bs : DefBase K} (A : DefAmb Bs) (fc : DefSub A → DefFace Bs) (cf : ConvFace Bs) (C CH : ℝ)
    extends IndefPkg A fc C CH where

  conv : IndefConv Bs toIndefPkg.core.base.μ cf

  heckeB : HeckeAll cf toIndefPkg.core.base.toIndefData

  heckeC : HeckeAll cf toIndefPkg.core.cols.toIndefData

namespace IndefPkg2

variable {Bs : DefBase K} {A : DefAmb Bs} {fc : DefSub A → DefFace Bs} {cf : ConvFace Bs} {C CH : ℝ}
  (P : IndefPkg2 A fc cf C CH)

end IndefPkg2

namespace IndefData

variable {Bs : DefBase K} {Df : DefSide Bs} (S : IndefData Df)

def FramesR : Prop := ∀ v, IsUnit (S.XE v).det

def BaseTypeSubspacesMapOnto : Prop := ∀ p, (Df.Qp Bs.μ0 p).map (S.ι Bs.μ0).mulVecLin = S.Ep p

def BijectivityAndPositivity : Prop :=
  (∀ t, Function.Bijective (S.ι t).mulVec) ∧ (∀ v, 0 < S.κ v) ∧ (∀ j t p v, 0 < S.lam j t p v) ∧
  ∀ t v, (t = Bs.μ0 ∨ v = Bs.v0) → ∀ p,
    IsScalarOn (Df.XQ t) S.XE v (S.ι t) (S.Qpart t p) (S.κ v * ∏ j, S.lam j t p v)

end IndefData

structure IndefColsR {Bs : DefBase K} (Df : DefSide Bs) (Dc : DefCols Df) (Sp : SPer Dc) (N : IndefNum Bs)
    extends IndefData Df where

  pos : Df.Pos

  h0 : toIndefData.H0

  frames : toIndefData.FramesR

  l1a : toIndefData.BaseTypeSubspacesMapOnto

  l1c : toIndefData.BijectivityAndPositivity

  l6 : toIndefData.L6 N

  col : ColData Dc Sp toIndefData

  l1b : col.PairingFactorsThroughPeriods

  l1e : col.L1e

structure IndefExtraR {Bs : DefBase K} {Df0 Df1 : DefSide Bs} {Dc : DefCols Df1} {Sp : SPer Dc} {N : IndefNum Bs}
    (S0 : IndefSide Df0 N) (S1 : IndefColsR Df1 Dc Sp N) : Prop where

  untw : S0.toIndefData.Untwisted N

  level : LevelLink S0.toIndefData S1.toIndefData

  passage : Passage N S0.toIndefData S1.toIndefData

  fun0 : S0.toIndefData.FUN N

structure IndefCoreR {Bs : DefBase K} (Df0 Df1 : DefSide Bs) (Dc : DefCols Df1) (Sp : SPer Dc) (N : IndefNum Bs) where

  base : IndefSide Df0 N

  cols : IndefColsR Df1 Dc Sp N

  extra : IndefExtraR base cols

structure IndefPkgR {Bs : DefBase K} (A : DefAmb Bs) (fc : DefSub A → DefFace Bs) (cf : ConvFace Bs) (C CH : ℝ) where

  Zs : DefSub A

  stable : Zs.Stable

  inBlock : Zs.InBlock

  core : IndefCoreR (fc Zs).Df0 (fc Zs).Df1 (fc Zs).Dc (fc Zs).Sp ((fc Zs).Z.num C CH)

  conv : IndefConv Bs core.base.μ cf

  heckeB : HeckeAll cf core.base.toIndefData

  heckeC : HeckeRows cf core.cols.toIndefData

namespace IndefColsR

variable {Bs : DefBase K} {Df : DefSide Bs} {Dc : DefCols Df} {Sp : SPer Dc} {N : IndefNum Bs}
  (S : IndefColsR Df Dc Sp N)

theorem dQ_eq (t : Bs.Tup) : Df.dQ t = S.D := dim_of_bij _ (S.l1c.1 t)

theorem Qpart_base (p : Bs.Ix) : S.Qpart Bs.μ0 p = Df.Qp Bs.μ0 p := by
  rw [IndefData.Qpart, ← S.l1a p]
  exact Submodule.comap_map_eq_of_injective (f := (S.ι Bs.μ0).mulVecLin) (S.l1c.1 _).1 _

theorem log_eigenvalue_sum_le_min [Nonempty Bs.Ix] (v : InfinitePlace K) :
    ∑ j, N.l6 j ≤ minOver (fun p => ∑ j, Real.log (S.lam j Bs.μ0 p v)) :=
  Finset.le_inf' _ _ fun p _ => Finset.sum_le_sum fun j _ => S.l6 j p v

theorem RR_spec (hG : LatticeGlue) (wf : Df.WF) :
    Submodule.IsFullLattice K S.RR ∧ ∀ w : HeightOneSpectrum (𝓞 K), Formalism.HermitianLatticesTheory.localization₂ w.asIdeal S.RR =
      Formalism.HermitianLatticesTheory.localization₂ w.asIdeal (matLat (S.ι (S.μ w)) (Df.abelian₂ (S.μ w))) := by
  have hfin : {w | S.μ w ≠ Bs.μ0}.Finite := S.Tw.finite_toSet.subset fun w hw => (S.h0.2 w).2 hw
  refine hG K S.D (matLat (S.ι Bs.μ0) (Df.abelian₂ Bs.μ0)) (fun w => matLat (S.ι (S.μ w)) (Df.abelian₂ (S.μ w)))
    (matLat_lattice _ (S.l1c.1 _).2 _ (wf.Lam_lat _)) (fun w => matLat_lattice _ (S.l1c.1 _).2 _ (wf.Lam_lat _))
    (hfin.subset fun w hw => ?_)
  intro h
  apply hw
  show Formalism.HermitianLatticesTheory.localization₂ w.asIdeal (matLat (S.ι (S.μ w)) (Df.abelian₂ (S.μ w))) = _
  rw [h]

theorem intoDual (hD : DivIntoDualShift) (hG : LatticeGlue) (wf : Df.WF) (u : Dc.Mem)
    (Nu Nu' : Submodule (𝓞 K) (Fin (Dc.a u) → K)) (σ : HeightOneSpectrum (𝓞 K) → ℝ)
    (τ : HeightOneSpectrum (𝓞 K) → ℤ)
    (hL2 : ∀ w, ∀ φ ∈ Nu, ∀ F ∈ Df.Mt (S.μ w),
      Dc.Pt u (S.μ w) φ F = 0 ∨ σ w ≤ (vw w (Dc.Pt u (S.μ w) φ F) : ℝ))
    (hτ : ∀ w, τ w ≤ ⌈σ w⌉) (hsh : IsShift Nu Nu' τ) :
    ∀ φ ∈ Nu', S.col.B u φ ∈ Formalism.HN.dualLat S.RR := by
  intro φ hφ x hx
  refine hD K (Dc.a u) S.D S.RR (S.col.B u) (fun w => Df.nV (S.μ w)) (fun w => Df.Mt (S.μ w))
    (fun w => S.ι (S.μ w) * Df.Pq (S.μ w)) (fun _ => 1) (fun w => Dc.Pt u (S.μ w))
    (fun w => S.col.ζ u (S.μ w)) (fun w => S.l1b.2.2.1 u _) (fun w => S.l1b.2.2.2 u w)
    (fun w φ F => ?_) Nu Nu' σ τ hL2 hτ hsh (fun w => ?_) φ hφ x hx
  · rw [Matrix.one_mulVec, ← Matrix.mulVec_mulVec]
    exact S.l1b.1 u _ φ F
  · rw [matLat_one, matLat_mul]
    exact (S.RR_spec hG wf).2 w

end IndefColsR

namespace IndefCoreR

variable {Bs : DefBase K} {Df0 Df1 : DefSide Bs} {Dc : DefCols Df1} {Sp : SPer Dc} {N : IndefNum Bs}
  (P : IndefCoreR Df0 Df1 Dc Sp N)

include P

end IndefCoreR

end Formalism.L2.Indef
