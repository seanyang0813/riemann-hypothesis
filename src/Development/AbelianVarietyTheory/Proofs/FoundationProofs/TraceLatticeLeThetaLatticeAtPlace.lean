module

public import Development.AbelianVarietyTheory.Definitions.Foundations.ThetaSeriesTies
public import Development.AbelianVarietyTheory.Proofs.FoundationProofs.KernelSpanOverClasses
import Formalism.HermitianLattices.HermitianLatticesProofs.LocBasic
import Formalism.MirabolicMackeyTheory.MirabolicMackeyProofs.LocalConditionsWeightedConditional
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

namespace GlobalTheory.TraceClassRank

open NumberField IsDedekindDomain Formalism.BasicNotions Formalism.MainNotions Formalism.MainNotions.DIV.Cons Formalism.L2.Pj Formalism.L2.Indef Formalism.L2.Indef.Tree
open Formalism.BasicNotions.TH Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes Formalism.L2.Theta Formalism.L2.DIV Formalism.IndefR Formalism.IndefR.Links Formalism.IndefR.FWT
open GlobalTheory.FormTies GlobalTheory.OnTies
open Formalism.HermitianLatticesTheory (localization₂)
open scoped TensorProduct Matrix

attribute [local instance 2000] Submodule.module

variable {D : D7} {G : Type} [Group G] [Fintype G] {Pl0 T0 : Type} {A : FamIn D.what₂.LL G Pl0 T0 D.R.m}

section Trace

variable {T : Full D} [inst : Algebra T.J.Q.c.F D.what₂.LL] {R : RealDat D A T.J.Q.c.F}
  {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)} {v₀ : ∀ (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), (R.MW i σ).Vec}
  (h : LawsP T.toTop) (fw : FWTie T.J R κ v₀) (ι : Fin D.R.m)
  (ℓ : G → (LaMod (T.Q.Dw ((ι : ℕ) + 1)) T.Q.l ≃ₗ[𝓞 D.host.E] LaMod (T.Q.Dw ((ι : ℕ) + 1)) T.Q.l))
  (U : Subgroup G) (ψ : U →* D.what₂.LLˣ) (ph : ℂ) (v : HeightOneSpectrum (𝓞 D.what₂.LL)) (p : ℕ)

def traceLat : Submodule (𝓞 D.what₂.LL) (Fin (R.nW ι) → D.what₂.LL) :=
  Submodule.span (𝓞 D.what₂.LL)
    ((fun f : U → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι) =>
        ∑ᶠ u : U, ((ψ u : D.what₂.LLˣ) : D.what₂.LL) • cuspTo h fw ι (f u)) ''
      {f | IsOrbitFamily (T.Q.Xo ((ι : ℕ) + 1)) T.Q.c (badN D) (wtA (κ ι)) (T.dδ ((ι : ℕ) + 1) (κ ι).n) (fun u : U => ℓ u)
        fun u => ((f u).1 : T.R ((ι : ℕ) + 1))})

def CompareAt (lam : HeightOneSpectrum (𝓞 D.what₂.LL)) : Prop :=
  localization₂ lam.asIdeal (traceLat h fw ι ℓ U ψ) ≤ localization₂ lam.asIdeal (thetaBase R ι U ψ ph v p)

def CompareOffOwn : Prop := ∀ lam, Formalism.EigenvalueLevelCeiling.plc lam ≠ p → CompareAt h fw ι ℓ U ψ ph v p lam

variable {h fw ι ℓ U ψ ph v p} {hinj : Function.Injective D.what₂.OtoLL} {EX : ErrX D}
    {wL wF : WeightFamilies.Wt D ((ι : ℕ) + 1)} {nT : ℕ}
    {Bs : DefBase D.what₂.LL} {Df : DefSide Bs} {S : IndefData Df} {P : Type} [Group P] [Finite P] {oc : OnConst}
    {O : OnObj S P oc} {i : Bs.J}
    {z : (Fin (O.nZ i) → D.what₂.LL) ≃ₗ[D.what₂.LL]
      D.what₂.LL ⊗[(recB h.toLawsCore).KO] (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι)}
    {act : P → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι) → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι)}
    {inc : P →* G}
    {y : (Fin (O.nX v i) → D.what₂.LL) ≃ₗ[D.what₂.LL] (Fin (srcDim A ι (R.mu v) U ψ) → D.what₂.LL)}

def comapEquiv {P G : Type} [Group P] [Group G] {inc : P →* G} (hi : Function.Injective inc) {U : Subgroup G}
    (hU : U ≤ inc.range) : U.comap inc ≃ U :=
  Equiv.ofBijective (fun u => ⟨inc u, u.2⟩) ⟨fun _ _ e => Subtype.ext (hi (congrArg Subtype.val e)), fun u => by
    obtain ⟨g, hg⟩ := hU u.2
    exact ⟨⟨g, show inc g ∈ U from hg ▸ u.2⟩, Subtype.ext hg⟩⟩

theorem isOrbitFamily_comp {E : Type} [Field E] [NumberField E] [IsCMField E] {H : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Host E}
    {Dw : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Datum H} {l : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Level H} {Xo : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Moduli Dw l}
    {c : ReciprocityTheory.ChartRestriction.G.Geo.Tor.Coeff l} {bad : ℕ} {a : (E →+* ℂ) × ℕ → ℕ} {n : ℕ} {d : DeltaDat Xo c n} {I I' : Type}
    {m : I → (LaMod Dw l ≃ₗ[𝓞 E] LaMod Dw l)} {m' : I' → (LaMod Dw l ≃ₗ[𝓞 E] LaMod Dw l)}
    {f : I → Rul Xo c} (hf : IsOrbitFamily Xo c bad a d m f) (e : I' → I) (he : ∀ u, m' u = m (e u)) :
    IsOrbitFamily Xo c bad a d m' fun u => f (e u) := by
  obtain ⟨Λ, N, x₀, P, x, h1, h2, h3, h4, h5, h6, h7⟩ := hf
  exact ⟨Λ, N, x₀, P, fun u => x (e u), h1, h2, h3, h4, h5, h6, fun u => he u ▸ h7 (e u)⟩

theorem Th0_eq_comap (t : OnTie h fw hinj EX p ι wL wF nT O v i z act inc ℓ U ψ ph y) (hi : Function.Injective inc)
    (hU : U ≤ inc.range) :
    O.Th0 v i = (traceLat h fw ι ℓ U ψ).comap ((toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL)) := by
  have hm : (O.Th0 v i).map ((toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL)) = traceLat h fw ι ℓ U ψ := by
    rw [t.Th0_eq, t.U_eq]
    unfold thetaEig traceSpan traceLat
    rw [Submodule.map_span, Set.image_image]
    have key : ∀ f : U → (recB h.toLawsCore).Cusp ((ι : ℕ) + 1) (κ ι),
        (toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL)
          (∑ᶠ u : U.comap inc, O.ψ (u : P) • z.symm (1 ⊗ₜ[(recB h.toLawsCore).KO] f (comapEquiv hi hU u))) =
        ∑ᶠ u : U, ((ψ u : D.what₂.LLˣ) : D.what₂.LL) • cuspTo h fw ι (f u) := fun f => by
      rw [map_finsum _ (Set.toFinite _), ← finsum_comp_equiv (comapEquiv hi hU)]
      refine finsum_congr fun u => ?_
      rw [map_smul, LinearMap.restrictScalars_apply, toForms_tmul, one_smul, ← algebraMap_smul D.what₂.LL]
      exact congrArg (· • _) (t.ψ_eq u u.2)
    congr 1
    ext x
    constructor
    · rintro ⟨f, hf, rfl⟩
      refine ⟨fun u => f ((comapEquiv hi hU).symm u), isOrbitFamily_comp hf _ (fun u => ?_), ?_⟩
      · exact congrArg (fun a : U => ℓ a) ((comapEquiv hi hU).apply_symm_apply u).symm
      · refine (key _).symm.trans ?_
        simp only [Equiv.symm_apply_apply]
    · rintro ⟨f, hf, rfl⟩
      exact ⟨fun u => f (comapEquiv hi hU u), isOrbitFamily_comp hf _ fun u => rfl, key f⟩
  rw [← hm]
  exact (Submodule.comap_map_eq_of_injective (f := (toForms h fw ι z).restrictScalars (𝓞 D.what₂.LL))
    (toForms_bijective h fw ι z).1 _).symm

theorem trace_lattice_le_theta_lattice_at_place (t : OnTie h fw hinj EX p ι wL wF nT O v i z act inc ℓ U ψ ph y) (hi : Function.Injective inc)
    (hU : U ≤ inc.range) {n : ℕ} (hp : RunPin R ι n v p) (hA : CompareOffOwn h fw ι ℓ U ψ ph v p) :
    localization₂ v.asIdeal (O.Th0 v i) ≤ localization₂ v.asIdeal (O.ThJ v i) := by
  rw [Th0_eq_comap t hi hU, t.ThJ_eq]
  refine localization_comap_le v _ (hA v fun e => ?_)
  have h1 := hp.1
  split_ifs at h1 with h2
  · exact D.host.pde_ne (h2.symm.trans (e.trans h1))
  · exact h2 (e.trans h1)

end Trace

section Place

variable {K : Type} [Field K] [NumberField K] [StarRing K] {Bs : DefBase K} {Df : DefSide Bs} {S : IndefData Df} {P : Type}
  [Group P] [Finite P] {c : OnConst}

def RankAtPlaces (O : OnObj S P c) : Prop :=
  AtPair S fun v => ∀ j, Formalism.EigenvalueLevelCeiling.IsLatIn (O.Zg j) ((O.Th0 v j).map ((O.e j).restrictScalars (𝓞 K))) ∧
    Formalism.EigenvalueLevelCeiling.IsLatIn (O.Zg j) (O.eJ v j) ∧ localization₂ v.asIdeal (O.Th0 v j) ≤ localization₂ v.asIdeal (O.ThJ v j)

def fillJ (O : OnObj S P c) : OnObj S P c := { O with ThJ := fun v j => O.ThJ v j ⊔ O.Th0 v j }

theorem leafRankJ_fillJ {O : OnObj S P c} (h : RankAtPlaces O) : LeafRankJ (fillJ O) := by
  have key : ∀ v j, Formalism.EigenvalueLevelCeiling.IsLatIn (O.Zg j) ((O.Th0 v j).map ((O.e j).restrictScalars (𝓞 K))) →
      Formalism.EigenvalueLevelCeiling.IsLatIn (O.Zg j) (O.eJ v j) → Formalism.EigenvalueLevelCeiling.IsLatIn (O.Zg j) ((fillJ O).eJ v j) := fun v j a b => by
    change Formalism.EigenvalueLevelCeiling.IsLatIn _ ((O.ThJ v j ⊔ O.Th0 v j).map ((O.e j).restrictScalars (𝓞 K)))
    rw [Submodule.map_sup]
    refine ⟨b.1.sup a.1, le_antisymm (Submodule.span_le.2 ?_) ?_⟩
    · change _ ≤ (O.Zg j).restrictScalars (𝓞 K)
      exact sup_le (fun x hx => b.2.le (Submodule.subset_span hx)) fun x hx => a.2.le (Submodule.subset_span hx)
    · exact b.2.ge.trans (Submodule.span_mono (show O.eJ v j ≤ _ from le_sup_left))
  exact fun w hw =>
    ⟨fun j => ⟨((h w hw).1 j).1, key _ j ((h w hw).1 j).1 ((h w hw).1 j).2.1, le_sup_right⟩,
      fun j => ⟨((h w hw).2 j).1, key _ j ((h w hw).2 j).1 ((h w hw).2 j).2.1, le_sup_right⟩⟩

theorem lix_fillJ {O : OnObj S P c} {v : HeightOneSpectrum (𝓞 K)} {j : Bs.J}
    (h : localization₂ v.asIdeal (O.Th0 v j) ≤ localization₂ v.asIdeal (O.ThJ v j)) (M : Submodule (𝓞 K) (Fin (O.nZ j) → K)) :
    Formalism.EigenvalueLevelCeiling.lix v M ((fillJ O).eJ v j) = Formalism.EigenvalueLevelCeiling.lix v M (O.eJ v j) := by
  have h1 : O.ThJ v j ⊔ O.Th0 v j ≤ localization₂ v.asIdeal (O.ThJ v j) :=
    sup_le (Formalism.HermitianLatticesTheory.locBasic_le_locS _ _) ((Formalism.HermitianLatticesTheory.locBasic_le_locS _ _).trans h)
  have h2 : (fillJ O).eJ v j ≤ localization₂ v.asIdeal (O.eJ v j) := by
    rintro _ ⟨x, hx, rfl⟩
    obtain ⟨s, hs, hsx⟩ := h1 hx
    exact ⟨s, hs, _, hsx, map_smul ((O.e j).restrictScalars (𝓞 K)) s x⟩
  have h3 : localization₂ v.asIdeal ((fillJ O).eJ v j) = localization₂ v.asIdeal (O.eJ v j) :=
    le_antisymm ((Formalism.HermitianLatticesTheory.locBasic_locS_mono _ h2).trans (Formalism.HermitianLatticesTheory.locBasic_locS_idem _ _).le)
      (Formalism.HermitianLatticesTheory.locBasic_locS_mono _ (Submodule.map_mono le_sup_left))
  exact (Formalism.EigenvalueLevelCeiling.lix_locP v M _).trans ((congrArg _ h3).trans (Formalism.EigenvalueLevelCeiling.lix_locP v M _).symm)

theorem leafTW1_fillJ {O : OnObj S P c} (h : RankAtPlaces O) (h1 : LeafTW1 O) : LeafTW1 (fillJ O) :=
  ⟨fun w hw =>
    ⟨fun j => ⟨((h1.1 w hw).1 j).1, ((h1.1 w hw).1 j).2.trans_eq
        (congrArg (fun a : ℤ => (a : ℝ) + _) (lix_fillJ ((h w hw).1 j).2.2 _).symm)⟩,
      fun j => ⟨((h1.1 w hw).2 j).1, ((h1.1 w hw).2 j).2.trans_eq
        (congrArg (fun a : ℤ => (a : ℝ) + _) (lix_fillJ ((h w hw).2 j).2.2 _).symm)⟩⟩, h1.2⟩

theorem on_core_atPlaces (N : IndefNum Bs) (O : OnObj S P c) (CE : ℝ) (hRk : RankRows S)
    (hMk : LeafMackey O) (hSup : LeafSup O) (hProj : LeafProj O) (hC : TieCoord O)
    (hSp : LeafSpan O) (hS : LeafLemmaS O) (hT0 : LatticeIndexBoundAtPairs O) (hD : LeafData O) (hJ : RankAtPlaces O)
    (hI : LeafIdentity O) (h2 : LeafTW2 O) (h1 : LeafTW1 O)
    (hSh : LeafShareI O) (hIU : LeafIndexU O) (hBS : LeafBadShare O) (hUn : LeafUnip O)
    (hG : LeafDepthGood N O) (hR : LeafDepthRam N O) (h2p : LeafDepth2 N O) (hL : LeafDepthLevel N O)
    (hPg : LeafPage O) (hSz : LeafSizes O) (hX : LeafX O) (hBad : LeafBad O)
    (hJS : LeafJSum O) (hJE : LeafJExp N O) (hCE : c.CE ≤ CE) (tE1 : ErrorConstantMatchesDefinition N O CE) : ONwith S N O.errOn :=
  on_core N (fillJ O) CE hRk hMk hSup hProj hC hSp hS hT0 hD (leafRankJ_fillJ hJ) hI h2 (leafTW1_fillJ hJ h1) hSh hIU hBS hUn
    hG hR h2p hL hPg hSz hX hBad hJS hJE hCE tE1

end Place

section Row

variable {T : HeightOneSpectrum (𝓞 D.what₂.LL) → Full D} [inst : ∀ v, Algebra (T v).J.Q.c.F D.what₂.LL]
  {R : ∀ v, RealDat D A (T v).J.Q.c.F} {κ : ∀ i : Fin D.R.m, WeightFamilies.Wt D ((i : ℕ) + 1)}
  {v₀ : ∀ v (i : Fin D.R.m) (σ : D.what₂.LL →+* ℂ), ((R v).MW i σ).Vec}
  {h : ∀ v, LawsP (T v).toTop} {fw : ∀ v, FWTie (T v).J (R v) κ (v₀ v)} {hinj : Function.Injective D.what₂.OtoLL} {EX : ErrX D}
  {p : HeightOneSpectrum (𝓞 D.what₂.LL) → ℕ}
  {Bs : DefBase D.what₂.LL} {Df : DefSide Bs} {S : IndefData Df} {P : Type} [Group P] [Finite P] {oc : OnConst}
  {O : OnObj S P oc} {ι : Bs.J → Fin D.R.m} {wL wF : ∀ i, WeightFamilies.Wt D ((ι i : ℕ) + 1)} {nT : ℕ}
  {z : ∀ v i, (Fin (O.nZ i) → D.what₂.LL) ≃ₗ[D.what₂.LL]
    D.what₂.LL ⊗[(recB (h v).toLawsCore).KO] (recB (h v).toLawsCore).Cusp ((ι i : ℕ) + 1) (κ (ι i))}
  {act : ∀ v i, P → (recB (h v).toLawsCore).Cusp ((ι i : ℕ) + 1) (κ (ι i)) →
    (recB (h v).toLawsCore).Cusp ((ι i : ℕ) + 1) (κ (ι i))}
  {inc : P →* G}
  {ℓ : ∀ v i, G → (LaMod ((T v).Q.Dw ((ι i : ℕ) + 1)) (T v).Q.l ≃ₗ[𝓞 D.host.E] LaMod ((T v).Q.Dw ((ι i : ℕ) + 1)) (T v).Q.l)}
  {U : Subgroup G} {ψ : U →* D.what₂.LLˣ} {ph : HeightOneSpectrum (𝓞 D.what₂.LL) → Bs.J → ℂ}
  {y : ∀ v i, (Fin (O.nX v i) → D.what₂.LL) ≃ₗ[D.what₂.LL] (Fin (srcDim A (ι i) ((R v).mu v) U ψ) → D.what₂.LL)}

end Row

end GlobalTheory.TraceClassRank
