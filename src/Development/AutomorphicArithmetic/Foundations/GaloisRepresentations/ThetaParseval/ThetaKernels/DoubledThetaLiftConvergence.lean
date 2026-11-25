module

public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ExistsWeilTransportAdelicSchwartzCmExtension
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.IsUSplittingInl
public import Development.AbelianVarietyTheory.Proofs.DivisorProofs.ThetaTransformAdelicSchwartzHasFiniteLevelCM
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.PsiTContPerK
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.SchrodingerModelIntertwining
public import Development.AutomorphicArithmetic.Foundations.GaloisRepresentations.ThetaParseval.ThetaKernels.SiegelWeilKawayTop
public import Development.WeilBound.CoreStatements.AutomorphicKernels.SiegelWeilFormula.SiegelWeilActions.EisensteinNormSumRationalInvariant

/-! # DoubledThetaLiftConvergence: Consolidated global theta-kernel definitions and proofs (DoubledThetaLiftConvergence). -/
@[expose] public section

open GlobalTheory.WeilSchrodinger (thetaTr)
open UpperTheory.TP.W (GoodK)

open scoped TensorProduct Matrix
open NumberField IsDedekindDomain Formalism.MainNotions.GlobalTheoryTheory.GenusMassVolumes GlobalTheory.WeilM
  GlobalTheory.LFun GlobalTheory.IndefiniteRowSideFullHecke.WeilTensorModels

noncomputable section
namespace GlobalTheory.ThetaLevelF
open MeasureTheory Formalism.IndefR.DatumF Matrix
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E]
theorem thetaTr_levelF_k : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F]
  E) (B : Base F E),
    GoodK σ B → IsStdCharF (fun w : InfinitePlace F => (B.emb w).1) B.ψ (-1) →
    ∀ (nS nT : ℕ) (JS : Matrix (Fin nS) (Fin nS) E) (JT : Matrix (Fin nT) (Fin nT) E),
      IsHermND σ JS → IsHermND σ JT → ∀ ξ₀ : E, ξ₀ ≠ 0 → σ ξ₀ = -ξ₀ →
      ∀ (JA : Matrix (Fin nT) (Fin nT) E) (JB : Matrix (Fin nS) (Fin nS) E) (ξ : AF F ⊗[F] E), JA = JTᵀ →
        ξ • incM F JB = incM F (ξ₀ • JS⁻¹) →
        ∀ (κ : Type) [Fintype κ] (co : Darboux (symp (cA σ) ξ (incM F JA) (incM F JB)) κ),
          (∀ x : Matrix (Fin nT) (Fin nS) E, ∃ y z : κ → F,
            co.e (incM F x) = (fun i => algebraMap F (AF F) (y i), fun i => algebraMap F (AF F) (z i))) →
          ∀ Φ ∈ schA F κ, ∃ U : AddSubgroup (WOF F E nS nT), IsOpen (U : Set (WOF F E nS nT)) ∧
            ∀ u ∈ U, u.map (infPartF F E) = 0 → heisOF σ JS JT ξ₀ B.ψ u (thetaTr F co B.ψ
              Φ) = thetaTr F co B.ψ Φ := by
  intro F E _ _ _ _ _ σ B _ hψ nS nT JS JT _ _ ξ₀ _ _ JA JB ξ hA hB κ _ co _ Φ hΦ
  have : IsModuleTopology (AF F) (WOF F E nS nT) :=
    inferInstanceAs (IsModuleTopology (AF F) (Fin nT → Fin nS → AF F ⊗[F] E))
  obtain ⟨K, hK⟩ := GlobalTheory.ThetaLevel.schr_fin_fix F B.ψ hψ.1.1 Φ hΦ
  have hcont := IsModuleTopology.continuous_of_linearMap co.e.toLinearMap
  let f1 : WOF F E nS nT →+ (κ → Af F) :=
    AddMonoidHom.mk' (fun u i => ((co.e u).1 i).2) (fun u v => by funext i; rw [map_add (f := _)]; rfl)
  let f2 : WOF F E nS nT →+ (κ → Af F) :=
    AddMonoidHom.mk' (fun u i => ((co.e u).2 i).2) (fun u v => by funext i; rw [map_add (f := _)]; rfl)
  have hf1 : Continuous f1 :=
    continuous_pi fun i => continuous_snd.comp ((continuous_apply i).comp (continuous_fst.comp hcont))
  have hf2 : Continuous f2 :=
    continuous_pi fun i => continuous_snd.comp ((continuous_apply i).comp (continuous_snd.comp hcont))
  let U := K.comap f1 hf1 ⊓ K.comap f2 hf2
  refine ⟨(U : AddSubgroup _), U.isOpen, fun u hu hinf => funext fun w => ?_⟩
  have hfix : schr B.ψ (co.e u) Φ = Φ := by
    rw [e_eq_fin co u hinf]
    exact hK _ hu.1 _ hu.2
  show B.ψ (symplOHF σ JS JT ξ₀ w u) * thetaSum F (schr B.ψ (co.e (w + u)) Φ) =
    thetaSum F (schr B.ψ (co.e w) Φ)
  rw [map_add (f := _)]
  have h1 : schr B.ψ (co.e w + co.e u) Φ = fun x =>
      B.ψ (-(⅟(2 : AF F) * ((co.e w).1 ⬝ᵥ (co.e u).2 - (co.e u).1 ⬝ᵥ (co.e w).2))) *
        schr B.ψ (co.e w) (schr B.ψ (co.e u) Φ) x :=
    funext (GlobalTheory.ThetaLevel.schr_add B.ψ _ _ Φ)
  rw [h1, hfix]
  simp only [thetaSum]
  rw [tsum_mul_left, ← mul_assoc, ← AddChar.map_add_eq_mul]
  have h2 : symplOHF σ JS JT ξ₀ w u =
      ⅟(2 : AF F) * ((co.e w).1 ⬝ᵥ (co.e u).2 - (co.e u).1 ⬝ᵥ (co.e w).2) := by
    rw [symplOHF, GlobalTheory.TransportF.symplOF_eq_symp hA hB, co.form]
    congr 1
    refine (invOf_eq_right_inv ?_).symm
    rw [← map_ofNat (algebraMap F (AF F)) 2, ← map_mul]
    norm_num
  rw [h2, add_neg_cancel, AddChar.map_zero_eq_one, one_mul]
end GlobalTheory.ThetaLevelF
end

namespace GlobalTheory.ThetaLevelCM
theorem thetaTr_level_k : ∀ (F E : Type) [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] (σ : E →ₐ[F]
  E) (B : Base F E),
    GoodK σ B → ∀ (nS nT : ℕ) (JS : Matrix (Fin nS) (Fin nS) E) (JT : Matrix (Fin nT) (Fin nT)
      E),
      IsHermND σ JS → IsHermND σ JT → ∀ ξ₀ : E, ξ₀ ≠ 0 → σ ξ₀ = -ξ₀ →
      Formalism.IndefR.DatumF.IsStdCharF (fun w : InfinitePlace F => (B.emb w).1) B.ψ (-1) →
      ∀ (JA : Matrix (Fin nT) (Fin nT) E) (JB : Matrix (Fin nS) (Fin nS) E) (ξ : AF F ⊗[F] E), JA = JTᵀ →
        ξ • incM F JB = incM F (ξ₀ • JS⁻¹) →
        ∀ (κ : Type) [Fintype κ] (co : Darboux (symp (cA σ) ξ (incM F JA) (incM F JB)) κ),
          (∀ x : Matrix (Fin nT) (Fin nS) E, ∃ y z : κ → F,
            co.e (incM F x) = (fun i => algebraMap F (AF F) (y i), fun i => algebraMap F (AF F) (z i))) →
          ∀ φ ∈ schA F κ,
          ∃ U : AddSubgroup (Formalism.IndefR.DatumF.WOF F E nS nT), IsOpen (U : Set (Formalism.IndefR.DatumF.WOF F E nS
            nT)) ∧
            ∀ u ∈ U, u.map (Formalism.IndefR.DatumF.infPartF F E) = 0 →
              Formalism.IndefR.DatumF.heisOF σ JS JT ξ₀ B.ψ u (thetaTr F co B.ψ φ) =
                thetaTr F co B.ψ φ := by
  intro F E _ _ _ _ _ σ B hB nS nT JS JT hS hT ξ₀ h0 hσ hψ JA JB ξ hA hJB κ _ co hco φ hφ
  exact GlobalTheory.ThetaLevelF.thetaTr_levelF_k F E σ B hB hψ nS nT JS JT hS hT ξ₀ h0 hσ JA JB ξ hA hJB κ co
    hco φ hφ
end GlobalTheory.ThetaLevelCM

noncomputable section
open scoped NNReal Classical ComplexOrder
open MeasureTheory Filter Topology GlobalTheory.AdelicU GlobalTheory.ThK.Dbl GlobalTheory.Cont PositivityTheory.Rg.Sw
open GlobalTheory.ThK (incV)
open Matrix (fromBlocks fromBlocks_multiply single_apply single_mul_single_same transpose_apply)
open GlobalTheory.EisBL.DoubledParabolic (inFrame_mul)
open GlobalTheory.Doubling (absE)
variable {F E : Type} [Field F] [NumberField F] [Field E] [NumberField E] [Algebra F E] {σ : E →ₐ[F] E}
abbrev _root_.GlobalTheory.T.doubled_theta_lift_convergence :=
  GlobalTheory.ThetaLevelCM.thetaTr_level_k

namespace PositivityTheory.SiegelWeilFormula.Act.C5
variable {d : SD_k σ}
variable {R : RD_k d} {L : LD_k d}
variable {nb : nA σ d.Y d.b → d.G} {uM : (Fin L.n → AE F E) → d.G} {nb' : nA σ L.Y L.b → G2 σ L.Y} {w₁ : d.G} {cM :
  (Fin L.n → AE F E) × AF F → d.G} {δ : E}
theorem bMat_sB_k (b : Fin L.n → AE F E) :
    bMat_k (sB_k R L b) = C6.sExp_k L ((R.ε : ℤ) : AE F E) b := by
  simp only [bMat_k, sB_k, eA_eq_k, C6.sExp_k]
theorem sB_eq_sb_k (b : Fin L.n → AE F E) : sB_k R L b = C6.B.sb_k L ((R.ε : ℤ) : AE F E) b := by
  simp only [sB_k, eA_eq_k, C6.B.sb_k]
theorem Hyp_k.toC6 (h : Hyp_k L nb uM nb' w₁ cM δ) : C6.Hyp_k L nb uM nb' w₁ cM δ :=
  ⟨h.nb, h.uM, h.nb', h.wr, h.wf, h.cf, h.δ0⟩
omit [NumberField E] in
theorem ellA_tmul_k (δ : E) (a : AF F) (e : E) : ellA (F := F) δ (a ⊗ₜ[F] e) =
    a * algebraMap F (AF F) ((Classical.epsilon fun ℓ : E →ₗ[F] F => δ ≠ 0 → ℓ δ = 1) e) := by
  simp only [ellA, LinearMap.comp_apply, LinearMap.baseChange_tmul]
  simp [Algebra.smul_def, mul_comm]
theorem ellA_self_k (h : Hyp_k L nb uM nb' w₁ cM δ) : ellA (F := F) δ (inclR (F := F) (AF F) δ) = 1 := by
  show ellA (F := F) δ ((1 : AF F) ⊗ₜ[F] δ) = 1
  rw [ellA_tmul_k, ellSpec h.δ0, map_one, mul_one]
theorem heis_of_nq_k (h : Hyp_k L nb uM nb' w₁ cM δ) {x : d.G}
    (hx : C4.Bq.NQ (Sum.inl L.i₀) (Sum.inr L.i₀) (inFrame d.b x)) :
    x = sM_k R L (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j))) *
      cM (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j)),
        ellA δ (inFrame d.b x (Sum.inl L.i₀) (Sum.inr L.i₀) +
          ∑ j, inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j)) *
            cA σ (inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j))))) := by
  set y := inFrame d.b x (Sum.inl L.i₀) (Sum.inr L.i₀) +
          ∑ j, inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j)) *
            cA σ (inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j))) with hy
  have hc : ∀ z, (cA σ).toRingHom ((cA σ).toRingHom z) = z := cc_k d
  have hse : (cA σ).toRingHom ((R.ε : ℤ) : AE F E) = ((R.ε : ℤ) : AE F E) := map_intCast _ _
  have hUx : C6.M.U (cA σ).toRingHom ((R.ε : ℤ) : AE F E) (inFrame d.b x) := kunf.frame_eq R.hε x
  have hp : cA σ y = -(((R.ε : ℤ) : AE F E) * y) :=
    C6.M.even_im_hermitian_sub hc (eps_mul_k R) hse L.em L.inj L.rng hUx hx
  have hy' := eig_k (R := R) h y (by rw [hp, neg_mul])
  apply kunf.inFrame_injective d.b
  refine C6.M.nq_unique (s := (cA σ).toRingHom) (e := ((R.ε : ℤ) : AE F E)) (i₀ := L.i₀) hc (eps_mul_k R) hse hUx
    (kunf.frame_eq R.hε _) hx ?_ ?_
  · rw [inFrame_mul, inFrame_sM'_k, bMat_sB_k]
    exact C4.Bq.NQ.mul (C6.nq_sExp_k _ _) (C6.nq_cM_k h.toC6 _)
  · intro c
    rw [inFrame_mul, inFrame_sM'_k, bMat_sB_k]
    obtain ⟨r1, r2, r3, r4⟩ := C6.row_sC_k h.toC6 ((R.ε : ℤ) : AE F E)
      (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j)))
      (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j))) (ellA δ y)
    rcases c with k | k <;> rcases idx_k L k with rfl | ⟨j, rfl⟩
    · rw [r4, hx.apply (Or.inl rfl), Matrix.one_apply_eq]
    · exact (r1 j).symm
    · rw [r3, hy', hy, add_sub_cancel_right]
    · exact (r2 j).symm
theorem heis_nq_k (h : Hyp_k L nb uM nb' w₁ cM δ) (b u : Fin L.n → AE F E) (a : AF F) :
    C4.Bq.NQ (Sum.inl L.i₀) (Sum.inr L.i₀) (inFrame d.b (sM_k R L b * cM (u, a))) := by
  rw [inFrame_mul, inFrame_sM'_k, bMat_sB_k]
  exact C4.Bq.NQ.mul (C6.nq_sExp_k _ _) (C6.nq_cM_k h.toC6 _)
/-- The right action of a frame matrix on the Heisenberg coordinates `(b, u)`, read as the row `(u, b)`. -/
def heisAct_k (L : LD_k d) (G : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E))
    (w : (Fin L.n → AE F E) × (Fin L.n → AE F E)) : (Fin L.n → AE F E) × (Fin L.n → AE F E) :=
  (fun k => Matrix.vecMul (Sum.elim w.2 w.1) G (Sum.inr k), fun k => Matrix.vecMul (Sum.elim w.2 w.1) G (Sum.inl k))
theorem heisAct_elim_k (G : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E))
    (w : (Fin L.n → AE F E) × (Fin L.n → AE F E)) :
    Sum.elim (heisAct_k L G w).2 (heisAct_k L G w).1 = Matrix.vecMul (Sum.elim w.2 w.1) G := by
  ext (k | k) <;> rfl
theorem heisAct_act_k {G G' : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E)} (hG : G * G' = 1)
    (w : (Fin L.n → AE F E) × (Fin L.n → AE F E)) : heisAct_k L G' (heisAct_k L G w) = w := by
  have e := heisAct_elim_k G' (heisAct_k L G w)
  rw [heisAct_elim_k G w, Matrix.vecMul_vecMul, hG, Matrix.vecMul_one] at e
  refine Prod.ext (funext fun k => ?_) (funext fun k => ?_)
  · exact congrFun e (Sum.inr k)
  · exact congrFun e (Sum.inl k)
theorem heisAct_add_k (G : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E))
    (w w' : (Fin L.n → AE F E) × (Fin L.n → AE F E)) :
    heisAct_k L G (w + w') = heisAct_k L G w + heisAct_k L G w' := by
  have e : (Sum.elim (w + w').2 (w + w').1 : Fin L.n ⊕ Fin L.n → AE F E) =
      Sum.elim w.2 w.1 + Sum.elim w'.2 w'.1 := by ext (k | k) <;> rfl
  simp only [heisAct_k, e, Matrix.add_vecMul]
  rfl
theorem heisAct_continuous_k (G : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E)) :
    Continuous (heisAct_k L G) := by
  have hv : Continuous fun w : (Fin L.n → AE F E) × (Fin L.n → AE F E) => Matrix.vecMul (Sum.elim w.2 w.1) G := by
    refine Continuous.matrix_vecMul (continuous_pi fun i => ?_) continuous_const
    rcases i with i | i
    · exact (continuous_apply i).comp continuous_snd
    · exact (continuous_apply i).comp continuous_fst
  exact (continuous_pi fun k => (continuous_apply (Sum.inr k)).comp hv).prodMk
    (continuous_pi fun k => (continuous_apply (Sum.inl k)).comp hv)
theorem mem_ratV_iff_k (v : Fin L.n → AE F E) :
    v ∈ L.ratV ↔ ∀ i, v i ∈ (inclR (F := F) (E := E) (AF F)).range := by
  constructor
  · intro hv
    let φ : (Fin L.n → E) →+ (Fin L.n → AE F E) :=
      AddMonoidHom.compLeft (inclR (F := F) (E := E) (AF F)).toAddMonoidHom (Fin L.n)
    have hle : L.ratV ≤ φ.range := (AddSubgroup.closure_le _).2 (by rintro _ ⟨x, rfl⟩; exact ⟨x, rfl⟩)
    obtain ⟨x, rfl⟩ := hle hv
    exact fun i => ⟨x i, rfl⟩
  · intro hv
    choose x hx using hv
    exact AddSubgroup.subset_closure ⟨x, funext hx⟩
theorem heisAct_rat_k {G : Matrix (Fin L.n ⊕ Fin L.n) (Fin L.n ⊕ Fin L.n) (AE F E)}
    (hG : ∀ i j, G i j ∈ (inclR (F := F) (E := E) (AF F)).range) {w : (Fin L.n → AE F E) × (Fin L.n → AE F E)}
    (hw : w ∈ (L.ratV.prod L.ratV : AddSubgroup _)) : heisAct_k L G w ∈ (L.ratV.prod L.ratV : AddSubgroup _) := by
  obtain ⟨h1, h2⟩ := AddSubgroup.mem_prod.1 hw
  rw [mem_ratV_iff_k] at h1 h2
  have hv : ∀ c, Matrix.vecMul (Sum.elim w.2 w.1) G c ∈ (inclR (F := F) (E := E) (AF F)).range := by
    intro c
    simp only [Matrix.vecMul, dotProduct]
    refine Subring.sum_mem _ fun i _ => Subring.mul_mem _ ?_ (hG i c)
    rcases i with i | i
    · exact h2 i
    · exact h1 i
  exact AddSubgroup.mem_prod.2 ⟨(mem_ratV_iff_k _).2 fun i => hv _, (mem_ratV_iff_k _).2 fun i => hv _⟩
theorem j_conj_act_k (h : Hyp_k L nb uM nb' w₁ cM δ) (γ' : G2 σ L.Y) (b u : Fin L.n → AE F E) (a : AF F) :
    L.j γ' * (sM_k R L b * cM (u, a)) =
      sM_k R L (heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).1 * cM ((heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).2,
        a + ellA δ (∑ l, (heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).1 l *
          cA σ ((heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).2 l) - ∑ l, b l * cA σ (u l))) * L.j γ' := by
  set H := inFrame d.b (sM_k R L b * cM (u, a)) with hH
  set x : d.G := L.j γ' * (sM_k R L b * cM (u, a)) * L.j γ'⁻¹ with hxdef
  have hxF : inFrame d.b x = inFrame d.b (L.j γ') * H * inFrame d.b (L.j γ'⁻¹) := by
    rw [hxdef, inFrame_mul, inFrame_mul]
  have hJJ : inFrame d.b (L.j γ') * inFrame d.b (L.j γ'⁻¹) = 1 := by
    rw [← inFrame_mul, ← map_mul, mul_inv_cancel, map_one, GlobalTheory.EisBL.DoubledParabolic.inFrame_one]
  have hnq : C4.Bq.NQ (Sum.inl L.i₀) (Sum.inr L.i₀) (inFrame d.b x) := by
    rw [hxF]
    exact C4.Bq.NQ.conj (by simp) (C4.Bq.pad_j_k L γ') (C4.Bq.pad_j_k L γ'⁻¹) hJJ (heis_nq_k h b u a)
  obtain ⟨r1, r2, r3, r4⟩ := C6.row_sC_k h.toC6 ((R.ε : ℤ) : AE F E) b u a
  have hHe : C6.sExp_k L ((R.ε : ℤ) : AE F E) b * inFrame d.b (cM (u, a)) = H := by
    rw [hH, inFrame_mul, inFrame_sM'_k, bMat_sB_k]
  rw [hHe] at r1 r2 r3 r4
  have hrow : ∀ c, inFrame d.b x (Sum.inl L.i₀) c = ∑ m, H (Sum.inl L.i₀) m * inFrame d.b (L.j γ'⁻¹) m c := by
    intro c
    rw [hxF, Matrix.mul_assoc, Matrix.mul_apply, Finset.sum_eq_single (Sum.inl L.i₀)]
    · rw [(L.j_out γ' _ (by simp) _).1, Matrix.one_apply_eq, one_mul, Matrix.mul_apply]
    · intro m _ hm
      rw [(L.j_out γ' _ (by simp) _).1, Matrix.one_apply_ne (Ne.symm hm), zero_mul]
    · simp
  have hem : ∀ p q, inFrame d.b (L.j γ'⁻¹) (Sum.map L.em L.em p) (Sum.map L.em L.em q) = inFrame L.b γ'⁻¹ p q :=
    fun p q => congrFun (congrFun (L.j_in γ'⁻¹) p) q
  have hrowS : ∀ q, inFrame d.b x (Sum.inl L.i₀) (Sum.map L.em L.em q) =
      Matrix.vecMul (Sum.elim u b) (inFrame L.b γ'⁻¹) q := by
    intro q
    have hq1 : inFrame d.b (L.j γ'⁻¹) (Sum.inl L.i₀) (Sum.map L.em L.em q) = 0 := by
      rw [(L.j_out γ'⁻¹ _ (by simp) _).1]
      rcases q with q | q <;> simp [Matrix.one_apply, (C4.em_ne_k L q).symm]
    have hq2 : inFrame d.b (L.j γ'⁻¹) (Sum.inr L.i₀) (Sum.map L.em L.em q) = 0 := by
      rw [(L.j_out γ'⁻¹ _ (by simp) _).1]
      rcases q with q | q <;> simp [Matrix.one_apply, (C4.em_ne_k L q).symm]
    rw [hrow, Fintype.sum_sum_type, sum_split_k L, sum_split_k L, hq1, hq2, mul_zero, mul_zero, zero_add, zero_add]
    simp only [r1, r2, Matrix.vecMul, dotProduct, Fintype.sum_sum_type, Sum.elim_inl, Sum.elim_inr]
    congr 1
    · exact Finset.sum_congr rfl fun k _ => by rw [← hem (Sum.inl k) q]; rfl
    · exact Finset.sum_congr rfl fun k _ => by rw [← hem (Sum.inr k) q]; rfl
  have hrowY : inFrame d.b x (Sum.inl L.i₀) (Sum.inr L.i₀) =
      a • inclR (AF F) δ - ∑ j, b j * cA σ (u j) := by
    rw [hrow, Finset.sum_eq_single (Sum.inr L.i₀)]
    · rw [(L.j_out γ'⁻¹ _ (by simp) _).1, Matrix.one_apply_eq, mul_one, r3]
    · intro m _ hm
      rw [(L.j_out γ'⁻¹ (Sum.inr L.i₀) (by simp) m).2, Matrix.one_apply_ne hm, mul_zero]
    · simp
  have hmain := heis_of_nq_k (R := R) h hnq
  have hb' : (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j))) =
      (heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).1 := funext fun j => hrowS (Sum.inr j)
  have hu' : (fun j => inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j))) =
      (heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).2 := funext fun j => hrowS (Sum.inl j)
  have hs : inFrame d.b x (Sum.inl L.i₀) (Sum.inr L.i₀) +
          ∑ j, inFrame d.b x (Sum.inl L.i₀) (Sum.inr (L.em j)) *
            cA σ (inFrame d.b x (Sum.inl L.i₀) (Sum.inl (L.em j))) =
      a • inclR (AF F) δ + (∑ l, (heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).1 l *
          cA σ ((heisAct_k L (inFrame L.b γ'⁻¹) (b, u)).2 l) - ∑ l, b l * cA σ (u l)) := by
    rw [hrowY, ← hb', ← hu']
    ring
  rw [hs, hb', hu', map_add (f := ellA (F := F) δ), map_smul, ellA_self_k h, smul_eq_mul, mul_one] at hmain
  rw [← hmain, hxdef, mul_assoc _ (L.j γ'⁻¹), ← map_mul, inv_mul_cancel, map_one, mul_one]
theorem first_orbit_mul_fixed {γ r : d.G}
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀)) :
    FirstOrbit L (γ * r) ↔
      FirstOrbit L γ := by
  have e : ∀ i, inFrame d.b (γ * r) (Sum.inr i) (Sum.inl L.i₀) = inFrame d.b γ (Sum.inr i) (Sum.inl L.i₀) := by
    intro i
    rw [inFrame_mul, Matrix.mul_apply]
    simp only [hx, Matrix.one_apply, mul_ite, mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, ite_true]
  simp only [FirstOrbit, e]
theorem first_orbit_parabolic_invariant {p g : d.G} (hp : p ∈ par2 σ d.Y) :
  FirstOrbit L (p * g) ↔
  FirstOrbit L g := by
  have h21 : ∀ {q : d.G}, q ∈ par2 σ d.Y → ∀ i j, inFrame d.b q (Sum.inr i) (Sum.inl j) = 0 := by
    intro q hq i j
    have := (kunf.mem_stabiliser_iff_frame_lower_block d.ok.frame q).1 hq
    have := congrFun (congrFun this i) j
    simpa [Matrix.toBlocks₂₁] using this
  have key : ∀ {q γ : d.G},
    q ∈ par2 σ d.Y → FirstOrbit L γ →
    FirstOrbit L (q * γ) := by
    intro q γ hq hγ i
    have hγ' : ∀ k, inFrame d.b γ (Sum.inr k) (Sum.inl L.i₀) = 0 := hγ
    rw [inFrame_mul, Matrix.mul_apply, Fintype.sum_sum_type]
    simp [h21 hq, hγ']
  refine ⟨fun h => ?_, key hp⟩
  have := key (inv_mem hp) h
  rwa [inv_mul_cancel_left] at this
theorem eisenstein_second_term_reindex {M : Type} [AddCommMonoid M] [TopologicalSpace M] (H : ℂ → M) {s₁ : ℂ} {f : d.G →
  ℂ}
    (hf : IsSec d.K d.χ s₁ f) (z : ℂ) {r : d.G} (hr : r ∈ rat2 σ d.Y)
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀))
    (g : d.G) : ∑' q : {q : Cs_k d // ¬
      FirstOrbit L (rep_k
      q)},
      H (phz_k d f s₁ z
      (rep_k q.1 * (r * g))) =
      ∑' q : {q : Cs_k d // ¬
        FirstOrbit L (rep_k
        q)},
        H (phz_k d f s₁ z
        (rep_k q.1 * g)) := by
  classical
  let γr : rat2 σ d.Y := ⟨r, hr⟩
  let e0 := GlobalTheory.Eis.rmulEquiv (par2 σ d.Y) (rat2 σ d.Y) γr
  have hrep : ∀ q : Cs_k d, ∃ p ∈ par2 σ d.Y,
    p ∈ rat2 σ d.Y ∧ rep_k (e0 q) = p *
    (rep_k q * r) := by
    intro q
    have h1 : e0 q = GlobalTheory.AutomorphicL2Unitary.mk _ (Quotient.out q * γr) := by
      show GlobalTheory.AutomorphicL2Unitary.rmul _ γr q = _
      conv_lhs => rw [← Quotient.out_eq q]
      rfl
    have h2 : GlobalTheory.AutomorphicL2Unitary.mk ((par2 σ d.Y).subgroupOf (rat2 σ d.Y)) (Quotient.out q * γr) =
        GlobalTheory.AutomorphicL2Unitary.mk ((par2 σ d.Y).subgroupOf (rat2 σ d.Y)) (Quotient.out (e0 q)) := by
      rw [← h1]; exact (Quotient.out_eq _).symm
    obtain ⟨γ, hγ⟩ := GlobalTheory.AutomorphicL2Unitary.mk_eq_iff.1 h2
    refine ⟨((γ : rat2 σ d.Y) : d.G), Subgroup.mem_subgroupOf.1 γ.2, (γ : rat2 σ d.Y).2, ?_⟩
    have := congrArg Subtype.val hγ
    show ((Quotient.out (e0 q) : rat2 σ d.Y) : d.G) = _
    rw [← this]
    rfl
  have hS : ∀ q : Cs_k d,
    ¬ FirstOrbit L (rep_k q)
    ↔ ¬ FirstOrbit L (rep_k
    (e0 q)) := by
    intro q
    obtain ⟨p, hp, -, he⟩ := hrep q
    rw [he, first_orbit_parabolic_invariant hp, first_orbit_mul_fixed hx]
  let e : {q : Cs_k d // ¬
    FirstOrbit L (rep_k q)}
    ≃ {q : Cs_k d // ¬
    FirstOrbit L (rep_k q)}
    := e0.subtypeEquiv hS
  have hterm : ∀ q : {q : Cs_k d // ¬
    FirstOrbit L (rep_k q)},
      phz_k d f s₁ z (rep_k
        q.1 * (r * g)) = phz_k d f s₁ z
        (rep_k (e q).1 * g) := by
    intro q
    obtain ⟨p, hp, hpr, he⟩ := hrep q.1
    show _ = phz_k d f s₁ z
      (rep_k (e0 q.1) * g)
    rw [he, mul_assoc, mul_assoc, C4.phz_rat_k hf z hp hpr]
  rw [tsum_congr fun q => congrArg H (hterm q)]
  exact e.tsum_eq (fun q => H (phz_k d f s₁ z
    (rep_k q.1 * g)))
theorem eisenstein_term_right_invariant {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁ f) (z : ℂ) {r : d.G} (hr : r ∈
  rat2 σ d.Y)
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀))
    (g : d.G) : eisensteinSecondTerm L (phz_k d f s₁ z) (r * g) =
      eisensteinSecondTerm L (phz_k d f s₁ z) g :=
  eisenstein_second_term_reindex id hf z hr hx g
theorem eisenstein_norm_sum_invariant_right {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁ f) (z : ℂ) {r : d.G} (hr : r ∈
  rat2 σ d.Y)
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀))
    (g : d.G) : ∑' q : {q : Cs_k d // ¬
      FirstOrbit L (rep_k
      q)},
      ‖phz_k d f s₁ z (rep_k
      q.1 * (r * g))‖ₑ =
      ∑' q : {q : Cs_k d // ¬
        FirstOrbit L (rep_k
        q)},
        ‖phz_k d f s₁ z
        (rep_k q.1 * g)‖ₑ :=
  eisenstein_second_term_reindex (fun w => ‖w‖ₑ) hf z hr hx g
def eO_k (L : LD_k d) : Matrix (Fin d.n) (Fin d.n) (AE F E) := Matrix.single L.i₀ L.i₀ 1
theorem em_ne'_k (L : LD_k d) (j : Fin L.n) : L.i₀ ≠ L.em j := (ComplexParameterFamilyContinuity.em_ne_k L j).symm
theorem eO_mul_eO_k : eO_k L * eO_k L = eO_k L := by
  simp [eO_k]
theorem eO_single_k (x : AE F E) : eO_k L * Matrix.single L.i₀ L.i₀ x = Matrix.single L.i₀ L.i₀ x := by
  simp [eO_k]
theorem single_eO_k (x : AE F E) : Matrix.single L.i₀ L.i₀ x * eO_k L = Matrix.single L.i₀ L.i₀ x := by
  simp [eO_k]
theorem wf_blocks_k (α β : AE F E) :
    (1 - Matrix.single (Sum.inl L.i₀) (Sum.inl L.i₀) 1 - Matrix.single (Sum.inr L.i₀) (Sum.inr L.i₀) 1 +
      Matrix.single (Sum.inl L.i₀) (Sum.inr L.i₀) α + Matrix.single (Sum.inr L.i₀) (Sum.inl L.i₀) β :
        Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) =
      fromBlocks (1 - eO_k L) (Matrix.single L.i₀ L.i₀ α) (Matrix.single L.i₀ L.i₀ β) (1 - eO_k L) := by
  ext (i | i) (j | j) <;> simp [eO_k, Matrix.single, Matrix.one_apply]
theorem wf_mul_k (α β α' β' : AE F E) (ha : α * α' = 1) (hb : β * β' = 1) :
    fromBlocks (1 - eO_k L) (Matrix.single L.i₀ L.i₀ α) (Matrix.single L.i₀ L.i₀ β) (1 - eO_k L) *
      fromBlocks (1 - eO_k L) (Matrix.single L.i₀ L.i₀ β') (Matrix.single L.i₀ L.i₀ α') (1 - eO_k L) = 1 := by
  rw [fromBlocks_multiply, ← Matrix.fromBlocks_one]
  have h1 : (1 - eO_k L) * (1 - eO_k L) = 1 - eO_k L := by
    rw [mul_sub, sub_mul, sub_mul, one_mul, mul_one, one_mul, eO_mul_eO_k]; abel
  congr 1
  · rw [h1, single_mul_single_same, ha, ← eO_k]; abel
  · simp only [mul_sub, sub_mul, one_mul, mul_one, eO_single_k, single_eO_k]; abel
  · simp only [mul_sub, sub_mul, one_mul, mul_one, eO_single_k, single_eO_k]; abel
  · rw [h1, single_mul_single_same, hb, ← eO_k]; abel
theorem det_one_add_col_k (N : Matrix (Fin d.n) (Fin d.n) (AE F E)) (hN : ∀ i j, j ≠ L.i₀ → N i j = 0)
    (h0 : N L.i₀ L.i₀ = 0) : (1 + N).det = 1 := by
  have e : N = Matrix.replicateCol Unit (fun i => N i L.i₀) * Matrix.replicateRow Unit (Pi.single L.i₀ (1 : AE F E)) :=
    by
    ext i j
    simp only [Matrix.mul_apply, Matrix.replicateCol_apply, Matrix.replicateRow_apply, Finset.univ_unique,
      Finset.sum_singleton]
    by_cases hj : j = L.i₀
    · subst hj; simp
    · rw [hN i j hj]; simp [hj]
  rw [e, Matrix.det_one_add_replicateCol_mul_replicateRow]
  simp [h0]
theorem section_unipotent_invariant_weyl (h : Hyp_k L nb uM nb' w₁ cM δ) {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁
  f) (z : ℂ)
    (b : Fin L.n → AE F E) (g : d.G) : phz_k d f s₁ z (w₁ * (sM_k R L b *
      g)) = phz_k d f s₁ z (w₁ * g) := by
  classical
  obtain ⟨a₁, b₁, ha₁, hb₁, hW⟩ := h.wf
  set α : AE F E := inclR (F := F) (AF F) a₁
  set β : AE F E := inclR (F := F) (AF F) b₁
  set α' : AE F E := inclR (F := F) (AF F) a₁⁻¹
  set β' : AE F E := inclR (F := F) (AF F) b₁⁻¹
  have hα : α * α' = 1 := by rw [← map_mul, mul_inv_cancel₀ ha₁, map_one]
  have hβ : β * β' = 1 := by rw [← map_mul, mul_inv_cancel₀ hb₁, map_one]
  set W := fromBlocks (1 - eO_k L) (Matrix.single L.i₀ L.i₀ α) (Matrix.single L.i₀ L.i₀ β) (1 - eO_k L)
  set W' := fromBlocks (1 - eO_k L) (Matrix.single L.i₀ L.i₀ β') (Matrix.single L.i₀ L.i₀ α') (1 - eO_k L)
  have hW1 : inFrame d.b w₁ = W := by rw [hW, wf_blocks_k]
  have hWW : W * W' = 1 := wf_mul_k α β α' β' hα hβ
  have hWi : inFrame d.b w₁⁻¹ = W' := by
    have h1 : inFrame d.b w₁⁻¹ * W = 1 :=
      by rw [← hW1, ← inFrame_mul, inv_mul_cancel,
      GlobalTheory.EisBL.DoubledParabolic.inFrame_one]
    calc inFrame d.b w₁⁻¹ = inFrame d.b w₁⁻¹ * (W * W') := by rw [hWW, Matrix.mul_one]
      _ = W' := by rw [← Matrix.mul_assoc, h1, Matrix.one_mul]
  set S := sB_k R L b
  set p : d.G := w₁ * sM_k R L b * w₁⁻¹
  have hP : inFrame d.b p = W * bMat_k S * W' := by
    simp only [p, inFrame_mul, hW1, hWi, inFrame_sM'_k]
    rfl
  have hS0 : S L.i₀ L.i₀ = 0 := sB_i0i0_k b
  have h1e : (1 - eO_k L) * (1 - eO_k L) = 1 - eO_k L := by
    rw [mul_sub, sub_mul, sub_mul, one_mul, mul_one, one_mul, eO_mul_eO_k]; abel
  have h21 : (inFrame d.b p).toBlocks₂₁ = 0 := by
    rw [hP]
    simp only [W, W', bMat_k, fromBlocks_multiply, Matrix.toBlocks_fromBlocks₂₁, Matrix.mul_one, Matrix.mul_zero,
      add_zero]
    rw [add_mul, Matrix.single_mul_mul_single, hS0, mul_sub, mul_one, single_eO_k, sub_mul, one_mul, eO_single_k]
    simp
  set N := (1 - eO_k L) * S * Matrix.single L.i₀ L.i₀ α'
  have h11 : (inFrame d.b p).toBlocks₁₁ = 1 + N := by
    rw [hP]
    simp only [W, W', bMat_k, fromBlocks_multiply, Matrix.toBlocks_fromBlocks₁₁, Matrix.mul_one, Matrix.mul_zero,
      add_zero]
    rw [h1e, add_mul, single_mul_single_same, hα, ← eO_k]
    simp only [N]; abel
  have hN : ∀ i j, j ≠ L.i₀ → N i j = 0 := fun i j hj => by
    simp only [N]; exact Matrix.mul_single_apply_of_ne _ _ _ _ _ hj _
  have hN0 : N L.i₀ L.i₀ = 0 := by
    simp only [N, Matrix.mul_single_apply_same, sub_mul, one_mul, Matrix.sub_apply, eO_k, Matrix.single_mul_apply_same,
      one_mul, sub_self]
  have hp : p ∈ par2 σ d.Y := (kunf.mem_stabiliser_iff_frame_lower_block d.ok.frame p).2 h21
  obtain ⟨t, ht⟩ := mem_parabolic_GL2_iff.1 hp
  obtain ⟨-, t₀, ht₀⟩ := d.ok.frame
  have htv := ((kunf.isPar_frame ht₀ p t).1 ht).2
  have hdet : Matrix.GeneralLinearGroup.det t = 1 := by
    ext
    rw [Matrix.GeneralLinearGroup.val_det_apply, htv, Matrix.det_mul, Matrix.det_mul, h11, det_one_add_col_k N hN hN0,
      mul_one, Units.val_one, ← Matrix.det_mul, kunf.incM_GL_mul_inv, Matrix.det_one]
  have hg : w₁ * (sM_k R L b * g) = p * (w₁ * g) := by simp only [p]; group
  rw [hg, C4.phz_par_k hf z ht hdet]
theorem ratV_incl_k {v : Fin L.n → AE F E} (hv : v ∈ L.ratV) :
    ∃ x : Fin L.n → E, v = fun i => inclR (AF F) (x i) := by
  induction hv using AddSubgroup.closure_induction with
  | mem v hv => obtain ⟨x, hx⟩ := hv; exact ⟨x, by rw [← hx]; rfl⟩
  | zero => exact ⟨0, by ext i; simp⟩
  | add v w _ _ hv hw =>
    obtain ⟨x, rfl⟩ := hv; obtain ⟨x', rfl⟩ := hw; exact ⟨x + x', by ext i; simp⟩
  | neg v _ hv => obtain ⟨x, rfl⟩ := hv; exact ⟨-x, by ext i; simp⟩
theorem hz_uA_i0i0_k (u : Fin L.n → AE F E) : uA_k L u L.i₀ L.i₀ = 1 := by
  simp [uA_k, Matrix.sum_apply, Matrix.single, ComplexParameterFamilyContinuity.em_ne_k L]
theorem hz_uA_i0em_k (u : Fin L.n → AE F E) (l : Fin L.n) : uA_k L u L.i₀ (L.em l) = u l := by
  simp [uA_k, Matrix.sum_apply, Matrix.single, em_ne'_k L, L.inj.eq_iff]
theorem unipotent_block_entry_zero (u : Fin L.n → AE F E) (k : Fin L.n) : uA_k L u (L.em k) L.i₀ = 0 := by
  simp [uA_k, Matrix.sum_apply, Matrix.single, ComplexParameterFamilyContinuity.em_ne_k L, em_ne'_k L]
theorem hz_uA_emem_k (u : Fin L.n → AE F E) (k l : Fin L.n) :
    uA_k L u (L.em k) (L.em l) = if k = l then 1 else 0 := by
  simp [uA_k, Matrix.sum_apply, Matrix.single, Matrix.one_apply, em_ne'_k L,
    L.inj.eq_iff]
def Dm_k (L : LD_k d) (u : Fin L.n → AE F E) : Matrix (Fin d.n) (Fin d.n) (AE F E) := (uA_k L (-u))ᵀ.map (cA σ)
theorem hz_D_i0i0_k (u : Fin L.n → AE F E) : Dm_k L u L.i₀ L.i₀ = 1 := by
  simp [Dm_k, hz_uA_i0i0_k]
theorem hz_D_i0em_k (u : Fin L.n → AE F E) (l : Fin L.n) : Dm_k L u L.i₀ (L.em l) = 0 := by
  simp [Dm_k, unipotent_block_entry_zero]
theorem derivation_block_entry (u : Fin L.n → AE F E) (k : Fin L.n) : Dm_k L u (L.em k) L.i₀ = -cA σ (u k) := by
  simp [Dm_k, hz_uA_i0em_k]
theorem hz_D_emem_k (u : Fin L.n → AE F E) (k l : Fin L.n) : Dm_k L u (L.em k) (L.em l) = if k = l then 1 else 0 := by
  simp only [Dm_k, Matrix.map_apply, transpose_apply, hz_uA_emem_k]
  by_cases hkl : k = l
  · subst hkl; simp
  · simp [hkl, Ne.symm hkl]
theorem hz_aB_i0i0_k (x : AF F) : aB_k L δ x L.i₀ L.i₀ = x • inclR (F := F) (AF F) δ := by
  simp [aB_k, Matrix.single]
theorem hz_aB_i0em_k (x : AF F) (l : Fin L.n) : aB_k L δ x L.i₀ (L.em l) = 0 := by
  simp [aB_k, Matrix.single, em_ne'_k L]
theorem centre_block_entry_zero (x : AF F) (k : Fin L.n) : aB_k L δ x (L.em k) L.i₀ = 0 := by
  simp [aB_k, Matrix.single, em_ne'_k L]
theorem hz_aB_emem_k (x : AF F) (k l : Fin L.n) : aB_k L δ x (L.em k) (L.em l) = 0 := by
  simp [aB_k, Matrix.single, em_ne'_k L]
theorem hz_uA_add_k (u v : Fin L.n → AE F E) : uA_k L u * uA_k L v = uA_k L (u + v) := by
  have e := ComplexParameterFamilyContinuity.unipotent_nilpotent_mul_eq_zero L u v
  change (1 + ComplexParameterFamilyContinuity.unipotentNilpotentPart L u) * (1 +
    ComplexParameterFamilyContinuity.unipotentNilpotentPart L v) = 1 +
    ComplexParameterFamilyContinuity.unipotentNilpotentPart L (u + v)
  rw [mul_add, add_mul, add_mul, one_mul, one_mul, mul_one, e, add_zero]
  simp only [ComplexParameterFamilyContinuity.unipotentNilpotentPart, Pi.add_apply, Matrix.single_add,
    Finset.sum_add_distrib]
  abel
theorem heis'_k (h : Hyp_k L nb uM nb' w₁ cM δ) :
    ∃ Z : (Fin L.n → AE F E) → (Fin L.n → AE F E) → AF F, Continuous (Function.uncurry Z) ∧
      (∀ u₀ b, u₀ ∈ L.ratV → b ∈ L.ratV → Z u₀ b ∈ (algebraMap F (AF F)).range) ∧
      ∀ u₀ a₀ b u a, cM (u₀, a₀) * (sM_k R L b * cM (u, a)) = sM_k R L b * cM (u₀ + u, a₀ + a + Z u₀ b) := by
  classical
  let y : (Fin L.n → AE F E) → (Fin L.n → AE F E) → AE F E := fun u₀ b =>
    ∑ l, b l * cA σ (u₀ l) - ∑ k, u₀ k * (eA_k R * cA σ (b k))
  refine ⟨fun u₀ b => ellA δ (y u₀ b), ?_, ?_, ?_⟩
  · have hl : Continuous (ellA (F := F) (E := E) δ) := IsModuleTopology.continuous_of_linearMap _
    have hc := GlobalTheory.EisBL.DoubledGroupTopology.continuous_cA σ
    show Continuous fun p : (Fin L.n → AE F E) × (Fin L.n → AE F E) => ellA δ (y p.1 p.2)
    refine hl.comp ((continuous_finsetSum _ fun l _ => ?_).sub (continuous_finsetSum _ fun k _ => ?_))
    · exact ((continuous_apply l).comp continuous_snd).mul (hc.comp ((continuous_apply l).comp continuous_fst))
    · exact ((continuous_apply k).comp continuous_fst).mul
        (continuous_const.mul (hc.comp ((continuous_apply k).comp continuous_snd)))
  · intro u₀ b hu hb
    obtain ⟨x0, rfl⟩ := ratV_incl_k hu
    obtain ⟨xb, rfl⟩ := ratV_incl_k hb
    have cA_inclR (x : E) : cA σ (inclR (F := F) (AF F) x) = inclR (F := F) (AF F) (σ x) := by
      show Algebra.TensorProduct.map (AlgHom.id (AF F) (AF F)) σ ((1 : AF F) ⊗ₜ[F] x) = (1 : AF F) ⊗ₜ[F] σ x
      rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
    have e : y (fun i => inclR (F := F) (AF F) (x0 i)) (fun i => inclR (F := F) (AF F) (xb i)) =
        inclR (F := F) (AF F) (∑ l, xb l * σ (x0 l) - ∑ k, x0 k * (((R.ε : ℤ) : E) * σ (xb k))) := by
      simp only [y, eA_k, map_sub, map_sum, map_mul, cA_inclR]
    show ellA δ (y _ _) ∈ _
    rw [e]
    exact ellA_inclR_k h _
  · intro u₀ a₀ b u a
    have hC : ∀ c, inFrame d.b (cM c) = fromBlocks (uA_k L c.1) (aB_k L δ c.2) 0 (Dm_k L c.1) := inFrame_cM_k h
    have hM := inFrame_sM'_k (R := R) (L := L) b
    apply eq_of_upper_k
    · rw [inFrame_mul, inFrame_mul, hC, hC, hM]
      simp [bMat_k, fromBlocks_multiply]
    · rw [inFrame_mul, hC, hM]
      simp [bMat_k, fromBlocks_multiply]
    · rw [inFrame_mul, inFrame_mul,
        inFrame_mul, hC, hC, hC, hM]
      simp only [bMat_k, fromBlocks_multiply, Matrix.toBlocks_fromBlocks₁₁, Matrix.one_mul, 
        Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add]
      exact hz_uA_add_k u₀ u
    · rw [inFrame_mul, inFrame_mul,
        inFrame_mul, hC, hC, hC, hM]
      simp only [bMat_k, fromBlocks_multiply, Matrix.toBlocks_fromBlocks₁₂, Matrix.one_mul, 
        Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add]
      have hZ : ellA δ (y u₀ b) • inclR (F := F) (AF F) δ = y u₀ b := by
        refine eig_k (R := R) h _ ?_
        have he := eps_mul_k R
        simp only [y, eA_eq_k, map_sub, map_sum, map_mul, map_intCast, cc_k d, mul_sub, Finset.mul_sum]
        simp only [← Finset.sum_sub_distrib]
        refine Finset.sum_congr rfl fun l _ => ?_
        linear_combination (-(u₀ l * cA σ (b l))) * he
      ext i j
      rcases idx_k L i with rfl | ⟨k, rfl⟩ <;> rcases idx_k L j with rfl | ⟨l, rfl⟩ <;>
        simp only [Matrix.add_apply, Matrix.mul_apply, sum_split_k L, hz_uA_i0i0_k, hz_uA_i0em_k,
          unipotent_block_entry_zero, hz_uA_emem_k,
          hz_D_i0i0_k, hz_D_i0em_k, derivation_block_entry, hz_D_emem_k, hz_aB_i0i0_k, hz_aB_i0em_k,
            centre_block_entry_zero, hz_aB_emem_k, sB_i0i0_k,
          sB_i0em_k, section_entry_embedded_row, sB_emem_k, Pi.add_apply, map_add, mul_one, one_mul, mul_zero, zero_mul,
            add_zero, zero_add,
          mul_ite, ite_mul, Finset.sum_ite_eq, Finset.sum_ite_eq', Finset.mem_univ, ite_true, Finset.sum_const_zero]
      rw [add_smul, add_smul, hZ]
      simp only [y, mul_neg, mul_add, neg_add, Finset.sum_neg_distrib, Finset.sum_add_distrib]
      ring
end PositivityTheory.SiegelWeilFormula.Act.C5

namespace PositivityTheory.SiegelWeilFormula.Act.C5
variable {d : SD_k σ} (R : RD_k d) (L : LD_k d)
theorem uA_zero_k : uA_k L 0 = 1 := by simp [uA_k]
theorem uA_col_k (u : Fin L.n → AE F E) (j : Fin d.n) : uA_k L u j L.i₀ = if j = L.i₀ then 1 else 0 := by
  simp [uA_k, Matrix.add_apply, Matrix.sum_apply, Matrix.one_apply,
    fun k => (ComplexParameterFamilyContinuity.em_ne_k L k)
    ]
theorem uA_mul_aB_k (u : Fin L.n → AE F E) (δ : E) (a : AF F) : uA_k L u * aB_k L δ a = aB_k L δ a := by
  simp only [uA_k, aB_k, add_mul, one_mul, Finset.sum_mul]
  rw [Finset.sum_eq_zero fun j _ => Matrix.single_mul_single_of_ne _ _ _ _ (ComplexParameterFamilyContinuity.em_ne_k L
    j) _, add_zero]
theorem aB_mul_D_k (u : Fin L.n → AE F E) (δ : E) (a : AF F) : aB_k L δ a * (uA_k L u)ᵀ.map (cA σ) = aB_k L δ a := by
  ext i j
  simp only [aB_k, Matrix.mul_apply, single_apply, Matrix.map_apply, transpose_apply]
  by_cases hi : L.i₀ = i
  · subst hi
    by_cases hj : j = L.i₀
    · subst hj; simp [uA_col_k]
    · simp [uA_col_k, hj, Ne.symm hj]
  · simp [hi]
theorem aB_add_k (δ : E) (a a' : AF F) : aB_k L δ (a + a') = aB_k L δ a + aB_k L δ a' := by
  simp only [aB_k, add_smul, Matrix.single_add]
theorem sB_add_k (b b' : Fin L.n → AE F E) : sB_k R L (b + b') = sB_k R L b + sB_k R L b' := by
  simp only [sB_k, Pi.add_apply, map_add (f := _), mul_add, neg_add, Matrix.single_add, ← Finset.sum_add_distrib]
  refine Finset.sum_congr rfl fun j _ => by abel
theorem index_cases_sum (r : Fin d.n ⊕ Fin d.n) : r = Sum.inl L.i₀ ∨ r = Sum.inr L.i₀ ∨ ∃ a,
  r = Sum.map L.em L.em a := by
  rcases r with i | i <;> rcases idx_k L i with rfl | ⟨k, rfl⟩
  · exact Or.inl rfl
  · exact Or.inr (Or.inr ⟨Sum.inl k, rfl⟩)
  · exact Or.inr (Or.inl rfl)
  · exact Or.inr (Or.inr ⟨Sum.inr k, rfl⟩)
def padB_k (β : Matrix (Fin L.n) (Fin L.n) (AE F E)) : Matrix (Fin d.n) (Fin d.n) (AE F E) :=
  ∑ k, ∑ l, Matrix.single (L.em k) (L.em l) (β k l)
theorem pad_block_row_zero (β : Matrix (Fin L.n) (Fin L.n) (AE F E)) (j : Fin d.n) : padB_k L β L.i₀ j = 0 := by
  simp [padB_k, Matrix.sum_apply, fun k => ComplexParameterFamilyContinuity.em_ne_k L k]
theorem pad_block_column_zero (β : Matrix (Fin L.n) (Fin L.n) (AE F E)) (i : Fin d.n) : padB_k L β i L.i₀ = 0 := by
  simp [padB_k, Matrix.sum_apply, fun k => ComplexParameterFamilyContinuity.em_ne_k L k]
theorem padB_em_k (β : Matrix (Fin L.n) (Fin L.n) (AE F E)) (k l : Fin L.n) : padB_k L β (L.em k) (L.em l) = β k l := by
  simp [padB_k, Matrix.sum_apply, single_apply, L.inj.eq_iff, ite_and, Finset.sum_ite_eq']
theorem mem_ratV_k {b : Fin L.n → AE F E} (hb : b ∈ L.ratV) : ∃ x : Fin L.n → E, b = incV F x := by
  let φ : (Fin L.n → E) →+ (Fin L.n → AE F E) :=
    AddMonoidHom.compLeft (inclR (F := F) (E := E) (AF F)).toAddMonoidHom (Fin L.n)
  have hle : L.ratV ≤ φ.range := (AddSubgroup.closure_le _).2 (by rintro _ ⟨x, rfl⟩; exact ⟨x, rfl⟩)
  obtain ⟨x, hx⟩ := hle hb
  exact ⟨x, hx.symm⟩
variable {R L}
variable {nb : nA σ d.Y d.b → d.G} {uM : (Fin L.n → AE F E) → d.G} {nb' : nA σ L.Y L.b → G2 σ L.Y} {w₁ : d.G} {cM :
  (Fin L.n → AE F E) × AF F → d.G} {δ : E}
theorem inFrame_uM'_k (h : Hyp_k L nb uM nb' w₁ cM δ) (u : Fin L.n → AE F E) :
    inFrame d.b (uM u) = fromBlocks (uA_k L u) 0 0 ((uA_k L (-u))ᵀ.map (cA σ)) := by
  obtain ⟨a', ha⟩ := h.uM u
  rw [ha, lr_of_k ha (uA_mul_neg_k L u)]
theorem inFrame_jn_k (h : Hyp_k L nb uM nb' w₁ cM δ) (β : nA σ L.Y L.b) :
    inFrame d.b (L.j (nb' β)) = fromBlocks 1 (padB_k L β.1) 0 1 := by
  have hin : ∀ a b, inFrame d.b (L.j (nb' β)) (Sum.map L.em L.em a) (Sum.map L.em L.em b) = inFrame L.b (nb' β) a b :=
    fun a b => congrFun (congrFun (L.j_in (nb' β)) a) b
  ext r c
  rcases index_cases_sum L r with rfl | rfl | ⟨a, rfl⟩
  · rw [(L.j_out _ _ (by simp) c).1]
    rcases c with c | c <;> simp [Matrix.one_apply, pad_block_row_zero]
  · rw [(L.j_out _ _ (by simp) c).1]
    rcases c with c | c <;> simp [Matrix.one_apply]
  · rcases index_cases_sum L c with rfl | rfl | ⟨b, rfl⟩
    · rw [(L.j_out _ _ (by simp) _).2]
      rcases a with a | a <;> simp [Matrix.one_apply, ComplexParameterFamilyContinuity.em_ne_k]
    · rw [(L.j_out _ _ (by simp) _).2]
      rcases a with a | a <;> simp [Matrix.one_apply, pad_block_column_zero, ComplexParameterFamilyContinuity.em_ne_k]
    · rw [hin, h.nb' β]
      rcases a with a | a <;> rcases b with b | b <;> simp [Matrix.one_apply, padB_em_k, L.inj.eq_iff]
theorem frame_centre_block_form (h : Hyp_k L nb uM nb' w₁ cM δ) (a : AF F) :
    inFrame d.b (cM (0, a)) = fromBlocks 1 (aB_k L δ a) 0 1 := by
  rw [inFrame_cM_k h]
  simp [uA_zero_k, Matrix.transpose_one]
theorem sM_add_k (b b' : Fin L.n → AE F E) : sM_k R L (b + b') = sM_k R L b * sM_k R L b' := by
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k, inFrame_sM'_k, inFrame_sM'_k, inFrame_sM'_k,
    sB_add_k]
  exact (kfour.nM_mul _ _).symm
theorem cM_split_k (h : Hyp_k L nb uM nb' w₁ cM δ) (u : Fin L.n → AE F E) (a : AF F) : cM (u, a) = uM u * cM (0,
  a) := by
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k, inFrame_cM_k h, inFrame_uM'_k h,
    frame_centre_block_form h, fromBlocks_multiply]
  simp [uA_mul_aB_k]
theorem cM_comm_k (h : Hyp_k L nb uM nb' w₁ cM δ) (u : Fin L.n → AE F E) (a : AF F) : uM u * cM (0, a) = cM (0,
  a) * uM u := by
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k,
    KAway.inFrame_mul_k, inFrame_uM'_k h, frame_centre_block_form h,
    fromBlocks_multiply,
    fromBlocks_multiply]
  simp [uA_mul_aB_k, aB_mul_D_k]
theorem centre_additive (h : Hyp_k L nb uM nb' w₁ cM δ) (a a' : AF F) : cM (0, a + a') = cM (0, a) * cM (0, a') := by
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k, frame_centre_block_form h,
    frame_centre_block_form h, frame_centre_block_form h, fromBlocks_multiply, aB_add_k]
  simp [add_comm]
theorem unipotent_commutes_centre (h : Hyp_k L nb uM nb' w₁ cM δ) (b : Fin L.n → AE F E) (a : AF F) : sM_k R L b * cM
  (0, a) = cM (0, a) * sM_k R L b := by
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k,
    KAway.inFrame_mul_k, frame_centre_block_form h, inFrame_sM'_k, bMat_k,
    fromBlocks_multiply,
    fromBlocks_multiply]
  simp [add_comm]
theorem nb_split_k (h : Hyp_k L nb uM nb' w₁ cM δ) (β : nA σ d.Y d.b) :
    nb β = L.j (nb' (C4.prj_k L β)) * (sM_k R L (pb_k L β) * cM (0,
      pa_k L δ β)) := by
  have hc := (kfour.mem_nA_iff (kfour.sigma_sigma_of_good_k d.ok.good) R.hε β.1).1 β.2
  have hcij : ∀ i j, β.1 j i = -(((R.ε : ℤ) : AE F E) * cA σ (β.1 i j)) := fun i j => by
    have := congrFun (congrFun hc i) j
    simpa using this
  have e2 := eps_mul_k R
  apply KAway.inFrame_inj_k d
  rw [KAway.inFrame_mul_k,
    KAway.inFrame_mul_k, inFrame_jn_k h, inFrame_sM'_k,
    frame_centre_block_form h, h.nb β, bMat_k,
    fromBlocks_multiply, fromBlocks_multiply]
  simp only [Matrix.one_mul, Matrix.mul_one, Matrix.mul_zero, Matrix.zero_mul, add_zero, zero_add]
  congr 1
  ext i j
  rcases idx_k L i with rfl | ⟨k, rfl⟩ <;> rcases idx_k L j with rfl | ⟨l, rfl⟩ <;>
    simp only [Matrix.add_apply, sB_i0i0_k, sB_i0em_k, section_entry_embedded_row, sB_emem_k, pad_block_row_zero,
      pad_block_column_zero, padB_em_k, aB_k,
      single_apply, C4.prj_val_k, Matrix.submatrix_apply, pb_k,
        pa_k, eA_eq_k, 
      fun k => (ComplexParameterFamilyContinuity.em_ne_k L k).symm, and_self, and_false, false_and, ite_true, ite_false,
        add_zero, zero_add]
  · have hy : cA σ (β.1 L.i₀ L.i₀) = -(((R.ε : ℤ) : AE F E)) * β.1 L.i₀ L.i₀ := by
      have e := hcij L.i₀ L.i₀
      calc cA σ (β.1 L.i₀ L.i₀) = -(((R.ε : ℤ) : AE F E)) * -(((R.ε : ℤ) : AE F E) * cA σ (β.1 L.i₀ L.i₀)) := by
            rw [neg_mul_neg, ← mul_assoc, e2, one_mul]
        _ = _ := by rw [← e]
    exact (eig_k h _ hy).symm
  · exact hcij _ _
theorem j_move_k (h : Hyp_k L nb uM nb' w₁ cM δ) (u : Fin L.n → AE F E) (β'' : nA σ L.Y L.b) :
    ∃ (B : Fin L.n → AE F E) (A : AF F), ∀ b a, L.j (nb' β'') * (sM_k R L b * cM (u, a)) =
      sM_k R L (b + B) * cM (u, a + A) * L.j (nb' β'') :=
  j_move'_k h u β''
theorem j_conj_k (h : Hyp_k L nb uM nb' w₁ cM δ) (γ' : G2 σ L.Y) :
    ∃ (Λ : ((Fin L.n → AE F E) × (Fin L.n → AE F E)) ≃ₜ+ ((Fin L.n → AE F E) × (Fin L.n → AE F E)))
      (Q : (Fin L.n → AE F E) × (Fin L.n → AE F E) → AF F), Continuous Q ∧
      (∀ b u a, L.j γ' * (sM_k R L b * cM (u, a)) = sM_k R L (Λ (b, u)).1 * cM ((Λ (b, u)).2, a + Q (b, u)) * L.j γ') ∧
      (γ' ∈ rat2 σ L.Y → ∀ w, w ∈ (L.ratV.prod L.ratV : AddSubgroup _) ↔ Λ w ∈ (L.ratV.prod L.ratV : AddSubgroup _)) :=
  j_conj'_k h γ'
theorem heis_k (h : Hyp_k L nb uM nb' w₁ cM δ) :
    ∃ Z : (Fin L.n → AE F E) → (Fin L.n → AE F E) → AF F, Continuous (Function.uncurry Z) ∧
      (∀ u₀ b, u₀ ∈ L.ratV → b ∈ L.ratV → Z u₀ b ∈ (algebraMap F (AF F)).range) ∧
      ∀ u₀ a₀ b u a, cM (u₀, a₀) * (sM_k R L b * cM (u, a)) = sM_k R L b * cM (u₀ + u, a₀ + a + Z u₀ b) :=
  heis'_k h
theorem section_unipotent_invariant (h : Hyp_k L nb uM nb' w₁ cM δ) {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁ f) (z
  : ℂ)
    (b : Fin L.n → AE F E) (g : d.G) : phz_k d f s₁ z (w₁ * (sM_k R L b *
      g)) = phz_k d f s₁ z (w₁ * g) :=
  section_unipotent_invariant_weyl h hf z b g
theorem sM_rat_k {b : Fin L.n → AE F E} (hb : b ∈ L.ratV) : sM_k R L b ∈ rat2 σ d.Y := by
  have hc (e : E) : cA σ (inclR (F := F) (AF F) e) = inclR (F := F) (AF F) (σ e) := by
    show Algebra.TensorProduct.map (AlgHom.id (AF F) (AF F)) σ ((1 : AF F) ⊗ₜ[F] e) = (1 : AF F) ⊗ₜ[F] σ e
    rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
  obtain ⟨x, rfl⟩ := mem_ratV_k L hb
  refine kunf.rat_of_inFrame (b := d.b) (M := fromBlocks 1 (∑ j, (Matrix.single L.i₀ (L.em j) (x j) +
    Matrix.single (L.em j) L.i₀ (-(((R.ε : ℤ) : E) * σ (x j))))) 0 1) ?_
  rw [inFrame_sM'_k]
  ext r c
  rcases r with i | i <;> rcases c with j | j <;>
    simp [bMat_k, incM, Matrix.map_apply, sB_k, Matrix.sum_apply, Matrix.add_apply, single_apply,
      Matrix.one_apply,
    map_sum, apply_ite (inclR (AF F)), incV, hc, eA_k, map_neg, map_mul,
    map_intCast]
theorem cM_rat_k (h : Hyp_k L nb uM nb' w₁ cM δ) {c : (Fin L.n → AE F E) × AF F} (hu : c.1 ∈ L.ratV)
    (ha : c.2 ∈ (algebraMap F (AF F)).range) : cM c ∈ rat2 σ d.Y := by
  have hc (e : E) : cA σ (inclR (F := F) (AF F) e) = inclR (F := F) (AF F) (σ e) := by
    show Algebra.TensorProduct.map (AlgHom.id (AF F) (AF F)) σ ((1 : AF F) ⊗ₜ[F] e) = (1 : AF F) ⊗ₜ[F] σ e
    rw [Algebra.TensorProduct.map_tmul, AlgHom.id_apply]
  obtain ⟨c1, c2⟩ := c
  obtain ⟨x, rfl⟩ := mem_ratV_k L hu
  obtain ⟨t, rfl⟩ := ha
  refine kunf.rat_of_inFrame (b := d.b) (M := fromBlocks (1 + ∑ j, Matrix.single L.i₀ (L.em j) (x j))
    (Matrix.single L.i₀ L.i₀ (t • δ)) 0 ((1 + ∑ j, Matrix.single L.i₀ (L.em j) (-(x j)))ᵀ.map σ)) ?_
  rw [inFrame_cM_k h]
  ext r c
  rcases r with i | i <;> rcases c with j | j <;>
    simp [uA_k, aB_k, incM, Matrix.map_apply, Matrix.sum_apply, Matrix.add_apply, single_apply, Matrix.one_apply,
    transpose_apply, map_sum, apply_ite (inclR (AF F)), apply_ite (cA σ), apply_ite (⇑σ),
      incV,
    hc, map_neg, inclR_smul]
theorem eisenstein_term_left_invariant {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁ f) (z : ℂ) {r : d.G} (hr : r ∈ rat2
  σ d.Y)
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀))
    (g : d.G) : eisensteinSecondTerm L (phz_k d f s₁ z) (r * g) =
      eisensteinSecondTerm L (phz_k d f s₁ z) g :=
  eisenstein_term_right_invariant hf z hr hx g
theorem eisenstein_norm_sum_invariant {s₁ : ℂ} {f : d.G → ℂ} (hf : IsSec d.K d.χ s₁ f) (z : ℂ) {r : d.G} (hr : r ∈ rat2
  σ d.Y)
    (hx : ∀ k,
      inFrame d.b r k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀))
    (g : d.G) : ∑' q : {q : Cs_k d // ¬
      FirstOrbit L (rep_k
      q)},
      ‖phz_k d f s₁ z (rep_k
      q.1 * (r * g))‖ₑ =
      ∑' q : {q : Cs_k d // ¬
        FirstOrbit L (rep_k
        q)},
        ‖phz_k d f s₁ z
        (rep_k q.1 * g)‖ₑ :=
  eisenstein_norm_sum_invariant_right hf z hr hx g
theorem fix_sM_k (b : Fin L.n → AE F E) (k) :
    inFrame d.b (sM_k R L b) k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl
      L.i₀) := by
  rw [inFrame_sM'_k]
  rcases k with k | k <;> simp [bMat_k, Matrix.one_apply]
theorem fix_cM_k (h : Hyp_k L nb uM nb' w₁ cM δ) (c : (Fin L.n → AE F E) × AF F) (k) :
    inFrame d.b (cM c) k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀)
      := by
  rw [inFrame_cM_k h]
  rcases k with k | k <;> simp [uA_col_k, Matrix.one_apply]
theorem fix_nb_k (h : Hyp_k L nb uM nb' w₁ cM δ) (β : nA σ d.Y d.b) (k) :
    inFrame d.b (nb β) k (Sum.inl L.i₀) = (1 : Matrix (Fin d.n ⊕ Fin d.n) (Fin d.n ⊕ Fin d.n) (AE F E)) k (Sum.inl L.i₀)
      := by
  rw [h.nb β]
  rcases k with k | k <;> simp [Matrix.one_apply]
end PositivityTheory.SiegelWeilFormula.Act.C5
end
