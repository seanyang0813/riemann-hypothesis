module

public import Formalism.SharpRestriction.GrowthBounds.ChartComparison.IntAtJIffN
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLcInt
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocBases
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PBwLocGen
public import Formalism.LocalToGlobal.GlobalTheory.GL6.PSplitT
import Formalism.SatakeDualWeyl.AdelicIwasawaHecke.CsScale
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.ColSpanMulUnit
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.SelfDualCongr
public import Formalism.SharpRestriction.GrowthBounds.IntegralWeylLatticeSpan.WeylLatticeDescentHolds

@[expose] public section

noncomputable section

namespace Formalism.MainNotions.G.CmpJ.PValIntN

open Formalism.BasicNotions Formalism.MainNotions.G Formalism.L2.G Formalism.L2.G.Cmp Formalism.L2.G.RelativeIndexFlags Formalism.L2.Forms Formalism.UG NumberField IsDedekindDomain Matrix Formalism.MainNotions.G.CmpJ
open scoped TensorProduct

variable {D : D7}




theorem le_dual_chart {T : ℕ} {bad : Set (HeightOneSpectrum (𝓞 D.host.F))} {i : ℕ} {hi : i ≤ D.R.m} {cl : Type}
    {stab : cl → Type} [∀ c, Group (stab c)] {lat : cl → Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E)}
    (K : LevelChart D T bad i hi stab lat) (c : cl) :
    ∀ x ∈ lat c, x ∈ dualSet (sigD D : D.host.E →+* D.host.E) (gramN D i hi) (lat c) := by
  intro x hx x' hx'
  have hglob : ∀ z ∈ lat c, z ∈ Formalism.UG.CS.globLat (K.y c).1 K.lev.Lb := by
    intro z hz
    exact (K.y_lat c _).1 (Submodule.subset_span ⟨z, hz, rfl⟩)
  have hm : ∀ a ∈ K.lev.Lb, ∀ b ∈ K.lev.Lb,
      IsIntegral ℤ (((1 : ℤ) : D.host.E) * Formalism.UG.hform (sigD D : D.host.E →+* D.host.E) (gramN D i hi) a b) := by
    intro a ha b hb
    obtain ⟨r, hr⟩ := K.lev.Lb_int b hb a ha
    rw [Int.cast_one, one_mul, ← hr]
    exact RingOfIntegers.isIntegral_coe r
  have h := Formalism.UG.P.csScale_glob (sigD D) (gramN D i hi) K.lev.Lb 1 hm (K.y c).1
    (K.y c).2 (hglob x' hx') (hglob x hx)
  rw [Int.cast_one, one_mul] at h
  exact Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.bwL_descent _ _ _ h


open Formalism.L2.GlobalTheoryTheory.LocalLatticeBases Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.LocB in
theorem exB_of_lat {i : ℕ} (hi : i ≤ D.R.m) (q : ℕ) [Fact q.Prime] (L : Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E))
    (hL : Submodule.IsFullLattice D.host.E L) :
    ∃ B' : GL (Fin (D.R.N i)) D.host.E, IsLocBasis q (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D i hi) L) B' := by
  obtain ⟨d, hd, hle⟩ := dual_le_bnd (sigD D : D.host.E →+* D.host.E) (gramN D i hi) (bwB_gramN_det D i hi) _ hL
  have hsp := dual_span (sigD D : D.host.E →+* D.host.E) (gramN D i hi) _ hL.toIsLattice
  obtain ⟨B, hB⟩ := exists_isLocBasis q _ _ (fg_of_le_bnd hd hle) hsp
  refine ⟨B, ?_⟩
  have e : ((Submodule.span (𝓞 D.host.E) (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D i hi) L) :
      Submodule (𝓞 D.host.E) (Fin (D.R.N i) → D.host.E)) : Set (Fin (D.R.N i) → D.host.E)) =
      dualSet (sigD D : D.host.E →+* D.host.E) (gramN D i hi) L := span_dualSet _ _ _
  rwa [e] at hB

variable {u : D.what₂.Word} {C : ColumnChain D.R D.what₂.Tau (D.hcW u)} {A : ColumnsAtT D.R C} {P : PeriodMap D.R C}
  {M : MemberForms D.what₂.LL D.what₂.embLL D.what₂.places D.what₂.Tau (D.hcW u) C A P} {p : ℕ}
  {i : ℕ} {hi : i ≤ D.R.m} {G : GAtP p}

structure LatIn (S : StepIn M i hi G) (w : D.what₂.places.Pl) (β : S.Ch) : Prop where
  prime : p.Prime
  resChar : D.what₂.places.resChar w = p
  siteGood_prime_torsion : ¬ p ∣ S.T
  alg : ∀ v (a : ((S.loc β).pl v).1.adicCompletion D.host.F),
    (S.loc β).spl v ((1 : D.host.E) ⊗ₜ[D.host.F] a) = (a, a)
  base : ∀ v (t : Fin (D.R.N i) → ((S.loc β).pl v).1.adicCompletion D.host.F),
    (∃ x ∈ Formalism.L2.Herm.locL ((S.loc β).pl v).1 (S.K β).lev.Lb, ∀ a, ((S.loc β).spl v (x a)).1 = t a) ↔
      ∀ a, (((bc ((S.loc β).phE v) (S.loc β).B)⁻¹ : GL (Fin (D.R.N i)) (((S.loc β).pl v).1.adicCompletion D.host.F)) :
        Matrix (Fin (D.R.N i)) (Fin (D.R.N i)) _).mulVec t a ∈ ((S.loc β).pl v).1.adicCompletionIntegers D.host.F
  lat : ∀ cl : {c // S.chOf c = β}, Submodule.IsFullLattice D.host.E (S.lat cl.1)
  chi : ∀ κ : (S.K β).lev.U, ∃ r ∈ intW D.what₂.places w, r⁻¹ ∈ intW D.what₂.places w ∧
    D.what₂.embLL r = ((S.K β).lev.chi κ : ℂ)



theorem valIntN_of (S : StepIn M i hi G) (e : D.what₂.LL →+* G.Kf) (w : D.what₂.places.Pl)
    (H : ∀ β, S.Core e β) (hS : BlockRationalityField) (hfrac : IsFractionRing G.O G.Kf)
    (hR0 : ∀ x, x ∈ intW D.what₂.places w ↔ e x ∈ Set.range (algebraMap G.O G.Kf))
    (L : ∀ β, LatIn S w β) : S.ValIntN e w := by
  intro β
  have hp := (L β).prime
  have hpw := (L β).resChar
  subst hpw
  have : Fact (D.what₂.places.resChar w).Prime := ⟨D.what₂.places.resChar_prime w⟩
  have hCore := H β
  have hLat := L β
  have hEx := (hCore.toHyp hS).ex
  have hσ : ∀ x : D.host.E, sigD D (sigD D x) = x := by
    intro x
    rw [Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.forms_involution_eq_host_conj,
      Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.forms_involution_eq_host_conj,
      Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.host_conj_involutive]
  refine valIntAt_of (S := (S.K β).lev) (emb := embT D) (embLL := D.what₂.embLL) (G := S.charts.gat β)
    (e := e) (A := S.loc β) (pos := S.pos) (embV := S.embN β) (yc := (S.K β).y) weylLatticeDescent_holds hfrac (tEL D) (tEL_emb D)
    (intW D.what₂.places w) hR0 (M.lam i) hCore.wt hEx
    (fun cl B' => IsLocBasis (D.what₂.places.resChar w)
      (dualSet (sigD D : D.host.E →+* D.host.E) (gramN D i hi) (S.lat cl.1)) B')
    (fun cl => exB_of_lat hi (D.what₂.places.resChar w) (S.lat cl.1) (hLat.lat cl)) ?_ hLat.chi
  intro a Lt cl g γ κ hg hγ hpt B' hB' v s
  have hDual := le_dual_chart (S.K β) cl
  refine latO_of (G := S.charts.gat β) (e := e) (A := S.loc β) (pos := S.pos)
    (σ := sigD D) (J := gramN D i hi) (tEL D) hCore.pos_emb hσ hCore.std γ hγ B' Lt ?_ ?_ v s
  · intro v
    exact (hg v).trans (latW_gen (S.K β).lev (S.loc β) hCore.int hp hLat.siteGood_prime_torsion
      hLat.alg hLat.base (S.lat cl.1) ((S.K β).y cl) ((S.K β).y_lat cl) hDual B' hB' a g γ κ hpt v)
  · intro v a b
    exact gramW_gen (S.K β).lev (S.loc β) hCore.int hp hLat.siteGood_prime_torsion hLat.alg
      (Formalism.L2.GlobalTheoryTheory.LocalLatticeBases.bwB_gramN_det D i hi)
      (S.lat cl.1) ((S.K β).y cl) ((S.K β).y_lat cl) hDual B' hB' v a b

end Formalism.MainNotions.G.CmpJ.PValIntN

end
