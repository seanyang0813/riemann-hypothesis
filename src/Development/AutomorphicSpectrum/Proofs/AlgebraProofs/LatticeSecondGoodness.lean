module

public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff
public import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor
public import Mathlib.RingTheory.IsTensorProduct
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeSummand
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeSummandCriterion
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.KernelGraphBaseChangeHolds
public import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeKernelLocallyFree
public import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange
import Std.Tactic.BVDecide.Normalize.Prop

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFree, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFreeStatement, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeFibreIdealLocallyFree, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeGraphComapLocallyFree, Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFree =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Mathlib.RingTheory.IsTensorProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.KerBC

open GlobalTheory.CompanionTheory.Ar.Num

section Swap

variable {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C] [Algebra Ω C]
  [IsScalarTower o Ω C] (R : Subalgebra o Ω) (RC : Subalgebra o C)
  (hR : ∀ a ∈ R, algebraMap Ω C a ∈ RC)
  {V Vc : Type} [AddCommGroup V] [Module Ω V] [AddCommGroup Vc] [Module C Vc] [Module Ω Vc]
  [IsScalarTower Ω C Vc]
  {Z Zc : Type} [AddCommGroup Z] [Module Ω Z] [AddCommGroup Zc] [Module C Zc] [Module Ω Zc]
  [IsScalarTower Ω C Zc]
  (b : V →ₗ[Ω] Vc) (b' : Z →ₗ[Ω] Zc)

abbrev swp (Γ : AddSubgroup (V × Z)) : AddSubgroup (Z × V) :=
  Γ.map (AddEquiv.prodComm (M := V) (N := Z)).toAddMonoidHom

omit [Module Ω V] [Module Ω Z] in
theorem mem_swp {Γ : AddSubgroup (V × Z)} {u : Z} {v : V} : (u, v) ∈ swp Γ ↔ (v, u) ∈ Γ := by
  constructor
  · rintro ⟨⟨x, y⟩, h, e⟩
    have e' : (y, x) = (u, v) := e
    obtain ⟨rfl, rfl⟩ := Prod.mk.inj e'
    exact h
  · intro h
    exact ⟨(v, u), h, rfl⟩

omit [Module Ω V] [Module Ω Z] in
theorem map_fst_swp (Γ : AddSubgroup (V × Z)) :
    (swp Γ).map (AddMonoidHom.fst Z V) = Γ.map (AddMonoidHom.snd V Z) := by
  ext x
  constructor
  · rintro ⟨⟨u, v⟩, h, rfl⟩
    exact ⟨(v, u), mem_swp.1 h, rfl⟩
  · rintro ⟨⟨u, v⟩, h, rfl⟩
    exact ⟨(v, u), mem_swp.2 h, rfl⟩

theorem swp_stable {Γ : AddSubgroup (V × Z)} (hs : ∀ a ∈ R, ∀ v ∈ Γ, a • v ∈ Γ) :
    ∀ a ∈ R, ∀ v ∈ swp Γ, a • v ∈ swp Γ := by
  rintro a ha ⟨u, v⟩ h
  have := hs a ha _ (mem_swp.1 h)
  exact mem_swp.2 this


include hR in
theorem comap_inl (hb : IsBaseChange C b) (hb' : IsBaseChange C b')
    (Γ : AddSubgroup (V × Z)) (N : ℕ) (hs : ∀ a ∈ R, ∀ v ∈ Γ, a • v ∈ Γ)
    (hf : LocFree R N (Γ.map (AddMonoidHom.snd V Z))) :
    (spanOver RC (Prod.map b b' '' Γ)).comap (AddMonoidHom.inl Vc Zc) =
      spanOver RC (b '' Γ.comap (AddMonoidHom.inl V Z)) := by
  have key := (_root_.GlobalTheory.CompanionTheory.Ar.GraphRestrict.main R RC hR b' b hb' hb (swp Γ) ⊥ N (swp_stable R hs)
    (by rw [map_fst_swp]; exact hf) bot_le
    (by
      intro a _ v hv
      rw [AddSubgroup.mem_bot] at hv ⊢
      rw [hv, smul_zero])).2
  have hcom : (swp Γ).comap (AddMonoidHom.inr Z V) = Γ.comap (AddMonoidHom.inl V Z) := by
    ext x
    simp only [AddSubgroup.mem_comap, AddMonoidHom.inr_apply, AddMonoidHom.inl_apply]
    exact mem_swp
  rw [hcom, spanOver_swap RC b' b Γ] at key
  rw [← key]
  ext x
  simp only [AddSubgroup.mem_comap, AddMonoidHom.inr_apply, AddMonoidHom.inl_apply]
  exact (mem_swp (Γ := spanOver RC (Prod.map b b' '' Γ))).symm


include hR in
theorem inf_top_prod (hb : IsBaseChange C b) (hb' : IsBaseChange C b')
    (Γ : AddSubgroup (V × Z)) (H : AddSubgroup Z) (N : ℕ) (hs : ∀ a ∈ R, ∀ v ∈ Γ, a • v ∈ Γ)
    (hf : LocFree R N (Γ.map (AddMonoidHom.snd V Z))) (hle : H ≤ Γ.map (AddMonoidHom.snd V Z))
    (hH : ∀ a ∈ R, ∀ v ∈ H, a • v ∈ H) :
    spanOver RC (Prod.map b b' '' Γ) ⊓ (⊤ : AddSubgroup Vc).prod (spanOver RC (b' '' H)) =
      spanOver RC (Prod.map b b' '' (Γ ⊓ (⊤ : AddSubgroup V).prod H : AddSubgroup (V × Z))) := by
  have key := (_root_.GlobalTheory.CompanionTheory.Ar.GraphRestrict.main R RC hR b' b hb' hb (swp Γ) H N (swp_stable R hs)
    (by rw [map_fst_swp]; exact hf) (by rw [map_fst_swp]; exact hle) hH).1
  have hres : swp Γ ⊓ H.prod (⊤ : AddSubgroup V) =
      swp (Γ ⊓ (⊤ : AddSubgroup V).prod H : AddSubgroup (V × Z)) := by
    ext ⟨u, v⟩
    rw [mem_swp]
    simp only [AddSubgroup.mem_inf, AddSubgroup.mem_prod, AddSubgroup.mem_top, and_true, true_and]
    rw [mem_swp]
  rw [hres, spanOver_swap RC b' b Γ, spanOver_swap RC b' b] at key
  ext ⟨x, y⟩
  have := SetLike.ext_iff.1 key (y, x)
  simp only [AddSubgroup.mem_inf, AddSubgroup.mem_prod, AddSubgroup.mem_top, and_true, true_and] at this ⊢
  rw [mem_swp (Γ := spanOver RC (Prod.map b b' '' Γ)),
    mem_swp (Γ := spanOver RC (Prod.map b b' '' _))] at this
  exact this

end Swap

section Core

variable {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω] [Algebra o C] [Algebra Ω C]
  [IsScalarTower o Ω C] (R : Subalgebra o Ω) (RC : Subalgebra o C)
  (hR : ∀ a ∈ R, algebraMap Ω C a ∈ RC)
  {A Ac : Type} [AddCommGroup A] [Module Ω A] [AddCommGroup Ac] [Module C Ac] [Module Ω Ac]
  [IsScalarTower Ω C Ac]
  {B Bc : Type} [AddCommGroup B] [Module Ω B] [AddCommGroup Bc] [Module C Bc] [Module Ω Bc]
  [IsScalarTower Ω C Bc]
  {S Sc : Type} [AddCommGroup S] [Module Ω S] [AddCommGroup Sc] [Module C Sc] [Module Ω Sc]
  [IsScalarTower Ω C Sc]
  (a : A →ₗ[Ω] Ac) (b : B →ₗ[Ω] Bc) (c : S →ₗ[Ω] Sc)


include hR in
theorem core (ha : IsBaseChange C a) (hb : IsBaseChange C b) (hc : IsBaseChange C c)
    (Gam : AddSubgroup (A × B)) (Del : AddSubgroup (B × S)) (hh : AddSubgroup B) (n₁ n₂ n₃ : ℕ)
    (hGs : ∀ x ∈ R, ∀ v ∈ Gam, x • v ∈ Gam) (hDs : ∀ x ∈ R, ∀ v ∈ Del, x • v ∈ Del)
    (hhs : ∀ x ∈ R, ∀ v ∈ hh, x • v ∈ hh)
    (f₁ : LocFree R n₁ (Del.map (AddMonoidHom.fst B S)))
    (hle : hh ≤ Del.map (AddMonoidHom.fst B S))
    (f₂ : LocFree R n₂ ((Del ⊓ hh.prod (⊤ : AddSubgroup S) : AddSubgroup (B × S)).map
      (AddMonoidHom.snd B S)))
    (f₃ : LocFree R n₂ (Del.map (AddMonoidHom.snd B S)))
    (f₄ : LocFree R n₃ (Gam.map (AddMonoidHom.snd A B)))
    (hGD : Gam.map (AddMonoidHom.snd A B) = Del.comap (AddMonoidHom.inl B S)) :
    (spanOver RC (Prod.map a b '' Gam) ⊓
        (⊤ : AddSubgroup Ac).prod (spanOver RC (b '' hh))).map (AddMonoidHom.fst Ac Bc) =
      spanOver RC (a '' (Gam ⊓ (⊤ : AddSubgroup A).prod hh : AddSubgroup (A × B)).map
        (AddMonoidHom.fst A B)) := by
  set T : AddSubgroup (B × S) := Del ⊓ hh.prod (⊤ : AddSubgroup S) with hT
  set K : AddSubgroup B := T.comap (AddMonoidHom.inl B S) with hK
  have hTs : ∀ x ∈ R, ∀ v ∈ T, x • v ∈ T := by
    rintro x hx ⟨u, v⟩ h
    obtain ⟨h1, h2⟩ := AddSubgroup.mem_inf.1 h
    refine AddSubgroup.mem_inf.2 ⟨hDs x hx _ h1, ?_⟩
    exact AddSubgroup.mem_prod.2 ⟨hhs x hx _ (AddSubgroup.mem_prod.1 h2).1, AddSubgroup.mem_top _⟩
  have hKs : ∀ x ∈ R, ∀ v ∈ K, x • v ∈ K := by
    intro x hx v hv
    have := hTs x hx _ hv
    simpa [hK] using this
  have hKhh : K ≤ hh := fun v hv => (AddSubgroup.mem_prod.1 (AddSubgroup.mem_inf.1 hv).2).1
  have hKG : K ≤ Gam.map (AddMonoidHom.snd A B) := by
    rw [hGD]
    exact fun v hv => (AddSubgroup.mem_inf.1 hv).1
  have e1 := (_root_.GlobalTheory.CompanionTheory.Ar.GraphRestrict.main R RC hR b c hb hc Del hh n₁ hDs f₁ hle hhs).1
  have e2 := comap_inl R RC hR b c hb hc T n₂ hTs f₂
  have e3 := comap_inl R RC hR b c hb hc Del n₂ hDs f₃
  have e4 : (spanOver RC (Prod.map a b '' Gam)).map (AddMonoidHom.snd Ac Bc) =
      spanOver RC (b '' Gam.map (AddMonoidHom.snd A B)) := by
    have := SpanExact.map_spanOver RC (Prod.map a b '' (Gam : Set (A × B))) (LinearMap.snd C Ac Bc)
    refine Eq.trans this ?_
    congr 1
    ext y
    constructor
    · rintro ⟨_, ⟨⟨u, v⟩, h, rfl⟩, rfl⟩
      exact ⟨v, ⟨(u, v), h, rfl⟩, rfl⟩
    · rintro ⟨_, ⟨⟨u, v⟩, h, rfl⟩, rfl⟩
      exact ⟨_, ⟨(u, v), h, rfl⟩, rfl⟩
  have e5 := inf_top_prod R RC hR a b ha hb Gam K n₃ hGs f₄ hKG hKs
  have hspan : spanOver RC (b '' K) ≤ spanOver RC (b '' hh) := by
    refine AddSubgroup.closure_mono ?_
    rintro _ ⟨x, hx, e, ⟨v, hv, rfl⟩, rfl⟩
    exact ⟨x, hx, _, ⟨v, hKhh hv, rfl⟩, rfl⟩
  have e6 : spanOver RC (Prod.map a b '' Gam) ⊓
      (⊤ : AddSubgroup Ac).prod (spanOver RC (b '' hh)) =
      spanOver RC (Prod.map a b '' Gam) ⊓ (⊤ : AddSubgroup Ac).prod (spanOver RC (b '' K)) := by
    ext ⟨x, y⟩
    simp only [AddSubgroup.mem_inf, AddSubgroup.mem_prod, AddSubgroup.mem_top, true_and]
    refine ⟨fun ⟨h1, h2⟩ => ⟨h1, ?_⟩, fun ⟨h1, h2⟩ => ⟨h1, hspan h2⟩⟩
    have h3 : y ∈ (spanOver RC (Prod.map a b '' Gam)).map (AddMonoidHom.snd Ac Bc) :=
      ⟨(x, y), h1, rfl⟩
    rw [e4, hGD, ← e3] at h3
    have h4 : (y, (0 : Sc)) ∈ spanOver RC (Prod.map b c '' Del) ⊓
        (spanOver RC (b '' hh)).prod (⊤ : AddSubgroup Sc) :=
      AddSubgroup.mem_inf.2 ⟨h3, AddSubgroup.mem_prod.2 ⟨h2, AddSubgroup.mem_top _⟩⟩
    rw [e1] at h4
    rw [← e2]
    exact h4
  have e7 : (Gam ⊓ (⊤ : AddSubgroup A).prod K : AddSubgroup (A × B)) =
      Gam ⊓ (⊤ : AddSubgroup A).prod hh := by
    ext ⟨x, y⟩
    simp only [AddSubgroup.mem_inf, AddSubgroup.mem_prod, AddSubgroup.mem_top, true_and]
    refine ⟨fun ⟨h1, h2⟩ => ⟨h1, hKhh h2⟩, fun ⟨h1, h2⟩ => ⟨h1, ?_⟩⟩
    have h3 : y ∈ Gam.map (AddMonoidHom.snd A B) := ⟨(x, y), h1, rfl⟩
    rw [hGD] at h3
    exact AddSubgroup.mem_inf.2 ⟨h3, AddSubgroup.mem_prod.2 ⟨h2, AddSubgroup.mem_top _⟩⟩
  rw [e6, e5, e7]
  have := SpanExact.map_spanOver RC
    (Prod.map a b '' ((Gam ⊓ (⊤ : AddSubgroup A).prod hh : AddSubgroup (A × B)) : Set (A × B)))
    (LinearMap.fst C Ac Bc)
  refine Eq.trans this ?_
  congr 1
  ext y
  constructor
  · rintro ⟨_, ⟨⟨u, v⟩, h, rfl⟩, rfl⟩
    exact ⟨u, ⟨(u, v), h, rfl⟩, rfl⟩
  · rintro ⟨_, ⟨⟨u, v⟩, h, rfl⟩, rfl⟩
    exact ⟨_, ⟨(u, v), h, rfl⟩, rfl⟩

end Core

theorem smul_mem_stdLat_of_mem_hh {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type}
    [Zero F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s)
    (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : F → Ω)
    (hw : mulLat w (stdLat R _) ≤ D.af R p χ) {v : Fin n → Ω} (hv : v ∈ D.hh R p χ) :
    w • v ∈ stdLat R _ := by
  classical
  rw [mem_stdLat]
  intro j
  have h1 : (Pi.single j 1 : Fin n → Ω) ∈ stdLat R (Fin n) := by
    rw [mem_stdLat]
    intro k
    rw [Pi.single_apply]
    split_ifs
    · exact R.one_mem
    · exact R.zero_mem
  have hl : w • (Pi.single j 1 : Fin n → Ω) ∈ D.af R p χ := hw ⟨_, h1, rfl⟩
  unfold LieLatticeData.hh dotDual at hv
  simp only [AddSubgroup.mem_iInf] at hv
  have h2 : (w • (Pi.single j 1 : Fin n → Ω)) ⬝ᵥ v ∈ R := hv _ hl
  have h3 : (w • (Pi.single j 1 : Fin n → Ω)) ⬝ᵥ v = (w • v) j := by
    simp [smul_dotProduct]
  rwa [h3] at h2

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ, mulLat w (stdLat R _) ≤ D.af R p (χ τ)) → ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → ∀ τ, (D.bc RC).kerH RC p τ (fun a => algebraMap Ω C (χ τ a)) = spanOver RC (bcMap Ω C _ '' D.kerH R p τ (χ τ)) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hcd hB hG₁ hG₂ hw C _ _ _ _ RC hR τ
  obtain ⟨h1a, h1b⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hcd hB hG₁
  have hhh := (h1b C RC hR).2 τ |>.2.1
  have hw0 : w ≠ 0 := by
    rintro rfl
    obtain ⟨hp, -, ⟨c, -, hc⟩, -⟩ := hcd
    exact hp (by simpa using hc)
  have hhfree : LocFree R n (D.hh R p (χ τ)) := (h1a τ).2.1
  obtain ⟨hdF, hdS, hd0, hdG⟩ := hB.del τ
  obtain ⟨-, -, -, hOm⟩ := hB.free τ
  have hGs := (fun x hx => (hB.stable τ x hx).1)
  have hDs := (fun x hx => (hB.stable τ x hx).2.1)
  have eF : (D.Del τ).map (AddMonoidHom.fst _ _) = divLat w (stdLat R (Fin n)) := by
    ext v
    constructor
    · rintro ⟨⟨x, y⟩, h, rfl⟩
      exact (hdF x).1 ⟨y, h⟩
    · intro hv
      obtain ⟨y, hy⟩ := (hdF v).2 hv
      exact ⟨(v, y), hy, rfl⟩
  have eS : (D.Del τ).map (AddMonoidHom.snd _ _) = divLat w (D.omHT τ) := by
    ext v
    constructor
    · rintro ⟨⟨x, y⟩, h, rfl⟩
      exact (hdS y).1 ⟨x, h⟩
    · intro hv
      obtain ⟨y, hy⟩ := (hdS v).2 hv
      exact ⟨(y, v), hy, rfl⟩
  have hGD : (D.Gam τ).map (AddMonoidHom.snd _ _) = (D.Del τ).comap (AddMonoidHom.inl _ _) := by
    ext v
    constructor
    · rintro ⟨⟨x, y⟩, h, rfl⟩
      exact (hdG y).2 ⟨x, h⟩
    · intro hv
      obtain ⟨y, hy⟩ := (hdG v).1 hv
      exact ⟨(y, v), hy, rfl⟩
  have hG2 : LocFree R n ((D.Gam τ).map (AddMonoidHom.snd _ _)) := by
    rw [hGD]
    refine (LocFreeSchanuel.main R n (s τ) (divLat w (stdLat R (Fin n))) (divLat w (D.omHT τ)) (D.omHT τ)
      (D.Del τ) (LatticeGoodness.locFree_divLat R hw0 (LatticeGoodness.locFree_stdLat R n))
      (LatticeGoodness.locFree_divLat R hw0 hOm) hOm hDs ?_ ?_ hd0 ?_).2
    · intro v y h
      exact ⟨(hdF v).1 ⟨y, h⟩, (hdS y).1 ⟨v, h⟩⟩
    · exact fun v hv => (hdF v).2 hv
    · exact fun y hy => (hdS y).2 hy
  have hle : D.hh R p (χ τ) ≤ (D.Del τ).map (AddMonoidHom.fst _ _) := by
    rw [eF]
    exact fun v hv => smul_mem_stdLat_of_mem_hh D R p w (χ τ) (hw τ) hv
  have key := core R RC hR (bcMap Ω C (Fin (r τ))) (bcMap Ω C (Fin n)) (bcMap Ω C (Fin (s τ)))
    (LatticeGoodness.isBaseChange_bcMap Ω C _) (LatticeGoodness.isBaseChange_bcMap Ω C _)
    (LatticeGoodness.isBaseChange_bcMap Ω C _) (D.Gam τ) (D.Del τ) (D.hh R p (χ τ)) n (s τ) n hGs hDs hhfree.1
    (by rw [eF]; exact LatticeGoodness.locFree_divLat R hw0 (LatticeGoodness.locFree_stdLat R n)) hle (hG₂.im τ)
    (by rw [eS]; exact LatticeGoodness.locFree_divLat R hw0 hOm) hG2 hGD
  unfold LieLatticeData.kerH
  rw [hhh]
  exact key

end GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.KerBC
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFreeStatement =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFreeStatement", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFree\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

theorem _root_.GlobalTheory.T.character_lattice_base_change_free : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ, mulLat w (stdLat R _) ≤ D.af R p (χ τ)) → ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → ∀ τ, (D.bc RC).kerH RC p τ (fun a => algebraMap Ω C (χ τ a)) = spanOver RC (bcMap Ω C _ '' D.kerH R p τ (χ τ)) := by
  first | exact @GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.KerBC.main
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFreeStatement =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeFibreIdealLocallyFree =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeFibreIdealLocallyFree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeSummand\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeSummandCriterion\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Coalgebra.IsFrobenius\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.HopfAlgebra.Basic\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.StepIdeal

open GlobalTheory.CompanionTheory.Ar.Num

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω]

theorem mem_annSub_iff {n k : ℕ} {v : Fin n → Ω} :
    v ∈ annSub Ω n k ↔ ∀ j : Fin n, (j : ℕ) < k → v j = 0 := by
  simp [annSub, Submodule.mem_pi]

def stepCoord (Ω : Type) [Field Ω] {n : ℕ} (i : Fin n) : annSub Ω n i →ₗ[Ω] Ω :=
  (LinearMap.proj i).comp (annSub Ω n i).subtype

theorem stepCoord_apply {n : ℕ} (i : Fin n) (v : annSub Ω n i) :
    stepCoord Ω i v = (v : Fin n → Ω) i := rfl

theorem stepCoord_surjective {n : ℕ} (i : Fin n) : Function.Surjective (stepCoord Ω i) := by
  classical
  intro c
  refine ⟨⟨Pi.single i c, mem_annSub_iff.2 fun j hj => ?_⟩, by simp [stepCoord_apply]⟩
  have : j ≠ i := by rintro rfl; exact lt_irrefl _ hj
  simp [this]

theorem mem_ker_stepCoord {n : ℕ} (i : Fin n) (v : annSub Ω n i) :
    v ∈ LinearMap.ker (stepCoord Ω i) ↔ (v : Fin n → Ω) ∈ annSub Ω n ((i : ℕ) + 1) := by
  rw [LinearMap.mem_ker, stepCoord_apply, mem_annSub_iff]
  constructor
  · intro h j hj
    rcases Nat.lt_succ_iff_lt_or_eq.1 hj with hj | hj
    · exact mem_annSub_iff.1 v.2 j hj
    · rw [Fin.ext hj]; exact h
  · intro h
    exact h i (Nat.lt_succ_self _)

theorem summand_step {n : ℕ} {L : AddSubgroup (Fin n → Ω)} (i : Fin n)
    (h : Summand L (annSub Ω n ((i : ℕ) + 1))) :
    Summand (L.comap (annSub Ω n i).subtype.toAddMonoidHom) (LinearMap.ker (stepCoord Ω i)) := by
  obtain ⟨ρ, h1, h2, h3⟩ := h
  have hle : ∀ v, ρ v ∈ annSub Ω n i := fun v =>
    mem_annSub_iff.2 fun j hj => mem_annSub_iff.1 (h1 v) j (Nat.lt_succ_of_lt hj)
  refine ⟨(ρ.comp (annSub Ω n i).subtype).codRestrict _ fun v => hle _, fun v => ?_, fun u hu => ?_,
    fun v hv => ?_⟩
  · rw [mem_ker_stepCoord]
    exact h1 _
  · apply Subtype.ext
    exact h2 _ ((mem_ker_stepCoord i u).1 hu)
  · exact h3 _ hv

theorem locFree_step (R : Subalgebra o Ω) {n : ℕ} {L : AddSubgroup (Fin n → Ω)} (hL : LocFree R n L)
    (i : Fin n) (h₀ : Summand L (annSub Ω n i)) (h₁ : Summand L (annSub Ω n ((i : ℕ) + 1))) :
    LocFree R 1 ((L ⊓ (annSub Ω n i).toAddSubgroup).map (Pi.evalAddMonoidHom (fun _ => Ω) i)) := by
  have hA := ((_root_.GlobalTheory.CompanionTheory.Ar.Num.summand_of_locFree_quot R (annSub Ω n i) n 0 L hL).2 h₀).1
  have hB := ((_root_.GlobalTheory.CompanionTheory.Ar.Num.summand_of_locFree_quot R (LinearMap.ker (stepCoord Ω i)) _ 0 _ hA).2 (summand_step i h₁)).2
  have hr : Module.finrank Ω (annSub Ω n i) - Module.finrank Ω (LinearMap.ker (stepCoord Ω i)) = 1 := by
    have h := LinearMap.finrank_range_add_finrank_ker (stepCoord Ω i)
    rw [LinearMap.range_eq_top.2 (stepCoord_surjective i), finrank_top, Module.finrank_self] at h
    omega
  rw [hr] at hB
  have hC := (locFree_map_mkQ_iff R (stepCoord Ω i) (stepCoord_surjective i) _).1 hB
  convert hC using 1
  ext c
  constructor
  · rintro ⟨v, ⟨hv, hv'⟩, rfl⟩
    exact ⟨⟨v, hv'⟩, hv, rfl⟩
  · rintro ⟨v, hv, rfl⟩
    exact ⟨v, ⟨hv, v.2⟩, rfl⟩

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ i, LocFree R 1 (D.dId R p (χ τ) i)) ∧ ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → ∀ τ i, (D.bc RC).dId RC p (fun a => algebraMap Ω C (χ τ a)) i = spanOver RC (algebraMap Ω C '' D.dId R p (χ τ) i) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hc hB h1 h2
  obtain ⟨hg, hbc⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hc hB h1
  refine ⟨fun τ i => locFree_step R (hg τ).1 i (h2.ann τ i) (h2.ann τ ((i : ℕ) + 1)), ?_⟩
  intro C _ _ _ _ RC hRC τ i
  have haf := ((hbc C RC hRC).2 τ).1
  have hs := (_root_.GlobalTheory.CompanionTheory.Ar.Num.summand_baseChange R RC hRC (bcMap Ω C (Fin n)) (isBaseChange_bcMap Ω C _)
    (D.af R p (χ τ)) (annSub Ω n i) (hg τ).1.1 (h2.ann τ i)).2
  rw [span_bcMap_annSub] at hs
  unfold LieLatticeData.dId
  rw [haf, hs]
  have hm := SpanExact.map_spanOver RC
    (bcMap Ω C (Fin n) '' ((D.af R p (χ τ) ⊓ (annSub Ω n i).toAddSubgroup : AddSubgroup _) : Set (Fin n → Ω)))
    (LinearMap.proj i : (Fin n → C) →ₗ[C] C)
  have himg : algebraMap Ω C '' (((D.af R p (χ τ) ⊓ (annSub Ω n i).toAddSubgroup : AddSubgroup _).map
      (Pi.evalAddMonoidHom (fun _ => Ω) i) : AddSubgroup Ω) : Set Ω) =
      (LinearMap.proj i : (Fin n → C) →ₗ[C] C) '' (bcMap Ω C (Fin n) ''
        ((D.af R p (χ τ) ⊓ (annSub Ω n i).toAddSubgroup : AddSubgroup _) : Set (Fin n → Ω))) := by
    ext c
    constructor
    · rintro ⟨_, ⟨v, hv, rfl⟩, rfl⟩
      exact ⟨_, ⟨v, hv, rfl⟩, rfl⟩
    · rintro ⟨_, ⟨v, hv, rfl⟩, rfl⟩
      exact ⟨_, ⟨v, hv, rfl⟩, rfl⟩
  rw [himg, ← hm]
  rfl

end GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.StepIdeal
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeFibreIdealLocallyFree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeGraphComapLocallyFree =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeGraphComapLocallyFree", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.Imports\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.KernelGraphBaseChangeHolds\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Mathlib.RingTheory.IsTensorProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.Order.CompletePartialOrder\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

namespace GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness

variable {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] {n : ℕ}
  {Sg : Type} {r s : Sg → ℕ}

theorem mem_stepGraph_iff (D : LieLatticeData Ω F n Sg r s) (τ : Sg) (χ : F → Ω) (i : Fin n) (c : Ω)
    (m : Fin (r τ) → Ω) :
    (c, m) ∈ D.stepGraph τ χ i ↔
      ∃ g u, (g, m) ∈ D.Th τ ∧ u ∈ vanSub Ω F n ((i : ℕ) + 1) ∧
        c • (fun x : Fin n → F => χ (x i)) = g + u := by
  unfold LieLatticeData.stepGraph
  rw [AddSubgroup.mem_comap, AddSubgroup.mem_sup]
  constructor
  · rintro ⟨⟨g, m'⟩, hy, ⟨u, m''⟩, hz, he⟩
    obtain ⟨hu, hm⟩ := AddSubgroup.mem_prod.1 hz
    have hm0 : m'' = 0 := hm
    subst hm0
    have h1 : g + u = c • (fun x : Fin n → F => χ (x i)) := congrArg Prod.fst he
    have h2 : m' + 0 = m := congrArg Prod.snd he
    rw [add_zero] at h2
    subst h2
    exact ⟨g, u, hy, hu, h1.symm⟩
  · rintro ⟨g, u, hg, hu, he⟩
    refine ⟨(g, m), hg, (u, 0), AddSubgroup.mem_prod.2 ⟨hu, rfl⟩, ?_⟩
    exact Prod.ext he.symm (add_zero m)

theorem vanSub_apply_zero {i : ℕ} {u : (Fin n → F) → Ω} (hu : u ∈ vanSub Ω F n i) : u 0 = 0 := by
  have h := (Submodule.mem_pi.1 hu) (0 : Fin n → F) (fun _ _ => rfl)
  simpa using h

theorem stepGraph_stable [Fintype F] (D : LieLatticeData Ω F n Sg r s) {R : Subalgebra o Ω} {p : ℕ} {w : Ω}
    (hB : D.Base R p w) (τ : Sg) (χ : F → Ω) (i : Fin n) :
    ∀ a ∈ R, ∀ v ∈ D.stepGraph τ χ i, a • v ∈ D.stepGraph τ χ i := by
  rintro a ha ⟨c, m⟩ h
  obtain ⟨g, u, hg, hu, he⟩ := (mem_stepGraph_iff D τ χ i c m).1 h
  refine (mem_stepGraph_iff D τ χ i (a • c) (a • m)).2
    ⟨a • g, a • u, (hB.stable τ a ha).2.2 (g, m) hg, Submodule.smul_mem _ _ hu, ?_⟩
  rw [smul_assoc, he, smul_add]

theorem fst_mem_xId_of_mem_stepGraph [Fintype F] (D : LieLatticeData Ω F n Sg r s) {R : Subalgebra o Ω}
    {p : ℕ} {w : Ω} (hB : D.Base R p w) (τ : Sg) (χ : F → Ω) (i : Fin n) {c : Ω}
    {m : Fin (r τ) → Ω} (h : (c, m) ∈ D.stepGraph τ χ i) : c ∈ D.xId χ i := by
  obtain ⟨g, u, hg, hu, he⟩ := (mem_stepGraph_iff D τ χ i c m).1 h
  have hgM : g ∈ D.M := (((hB.th τ).1 g).1 ⟨m, hg⟩).1
  refine AddSubgroup.mem_comap.2 (AddSubgroup.mem_sup.2 ⟨g, hgM, u, hu, ?_⟩)
  exact he.symm

theorem exists_mem_stepGraph_of_mem_xId [Fintype F] (D : LieLatticeData Ω F n Sg r s) {R : Subalgebra o Ω}
    {p : ℕ} {w : Ω} (hB : D.Base R p w) (τ : Sg) (χ : F → Ω) (h0 : χ 0 = 0) (i : Fin n) {c : Ω}
    (h : c ∈ D.xId χ i) : ∃ m, (c, m) ∈ D.stepGraph τ χ i := by
  obtain ⟨g, hg, u, hu, he⟩ := AddSubgroup.mem_sup.1 (AddSubgroup.mem_comap.1 h)
  have he' : g + u = c • (fun x : Fin n → F => χ (x i)) := he
  have hu0 : u 0 = 0 := vanSub_apply_zero hu
  have hg0 : g 0 = 0 := by
    have := congrFun he' 0
    simpa [h0, hu0] using this
  obtain ⟨m, hm⟩ := ((hB.th τ).1 g).2 ⟨hg, hg0⟩
  exact ⟨m, (mem_stepGraph_iff D τ χ i c m).2 ⟨g, u, hm, hu, he'.symm⟩⟩

theorem zero_mem_stepGraph_iff (D : LieLatticeData Ω F n Sg r s) (τ : Sg) (χ : F → Ω) (i : Fin n)
    (m : Fin (r τ) → Ω) : (0, m) ∈ D.stepGraph τ χ i ↔ m ∈ D.kk τ ((i : ℕ) + 1) := by
  rw [mem_stepGraph_iff]
  constructor
  · rintro ⟨g, u, hg, hu, he⟩
    rw [zero_smul] at he
    have hgu : g = -u := eq_neg_of_add_eq_zero_left he.symm
    refine ⟨(g, m), ⟨hg, AddSubgroup.mem_prod.2 ⟨?_, trivial⟩⟩, rfl⟩
    rw [hgu]
    exact neg_mem hu
  · rintro ⟨⟨g, m'⟩, ⟨hg, hp⟩, rfl⟩
    have hv : g ∈ vanSub Ω F n ((i : ℕ) + 1) := (AddSubgroup.mem_prod.1 hp).1
    refine ⟨g, -g, hg, neg_mem hv, ?_⟩
    simp

theorem stepKer : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ i, LocFree R 1 ((D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _))) ∧ ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → ∀ τ i, ((D.bc RC).stepGraph τ (fun a => algebraMap Ω C (χ τ a)) i).comap (AddMonoidHom.inl _ _) = spanOver RC (algebraMap Ω C '' (D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _)) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hχ hB hG1 hG2
  refine ⟨fun τ i => ?_, fun C _ _ _ _ RC hRC τ i => ?_⟩
  · have h0 : χ τ 0 = 0 := (hχ.2.2.2.2 τ).1
    exact (LocFreeSchanuel.main R 1 (r τ) (D.xId (χ τ) i)
      ((D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _)) (D.kk τ ((i : ℕ) + 1))
      (D.stepGraph τ (χ τ) i) (((_root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hχ hB hG1).1 τ).2.2.2 i) (hG2.step τ i)
      (hG2.kk τ _) (stepGraph_stable D hB τ (χ τ) i)
      (fun c m h => ⟨fst_mem_xId_of_mem_stepGraph D hB τ (χ τ) i h, ⟨(c, m), h, rfl⟩⟩)
      (fun c h => exists_mem_stepGraph_of_mem_xId D hB τ (χ τ) h0 i h)
      (zero_mem_stepGraph_iff D τ (χ τ) i)
      (by
        rintro _ ⟨⟨c, m⟩, h, rfl⟩
        exact ⟨c, h⟩)).2
  · have hst := stepGraph_stable D hB τ (χ τ) i
    rw [(_root_.GlobalTheory.CompanionTheory.Ar.Num.kernel_graph_base_change D R p w χ hχ hB hG1 C RC hRC τ).2 i]
    let sw := (AddEquiv.prodComm (M := Ω) (N := Fin (r τ) → Ω)).toAddMonoidHom
    let Δ' : AddSubgroup ((Fin (r τ) → Ω) × Ω) := (D.stepGraph τ (χ τ) i).map sw
    have hst' : ∀ a ∈ R, ∀ v ∈ Δ', a • v ∈ Δ' := by
      rintro a ha _ ⟨x, hx, rfl⟩
      exact ⟨a • x, hst a ha x hx, rfl⟩
    have hfst : Δ'.map (AddMonoidHom.fst _ _) =
        (D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd _ _) := by
      rw [AddSubgroup.map_map]
      rfl
    have key := (_root_.GlobalTheory.CompanionTheory.Ar.GraphRestrict.main R RC hRC (bcMap Ω C (Fin (r τ))) (Algebra.linearMap Ω C)
      (isBaseChange_bcMap Ω C _) (IsBaseChange.linearMap Ω C) Δ' ⊥ (r τ) hst'
      (hfst ▸ hG2.step τ i) bot_le (by
        intro a _ v hv
        rw [AddSubgroup.mem_bot] at hv ⊢
        rw [hv, smul_zero])).2
    have hsw := spanOver_swap RC (bcMap Ω C (Fin (r τ))) (Algebra.linearMap Ω C)
      (D.stepGraph τ (χ τ) i)
    have e1 : Δ'.comap (AddMonoidHom.inr _ _) =
        (D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _) := by
      ext c
      constructor
      · rintro ⟨⟨c', m⟩, h, he⟩
        have h1 : m = 0 := congrArg Prod.fst he
        have h2 : c' = c := congrArg Prod.snd he
        subst h1 h2
        exact h
      · intro h
        exact ⟨_, h, rfl⟩
    have e2 : ∀ X : AddSubgroup (C × (Fin (r τ) → C)),
        (X.map (AddEquiv.prodComm (M := C) (N := Fin (r τ) → C)).toAddMonoidHom).comap
          (AddMonoidHom.inr _ _) = X.comap (AddMonoidHom.inl _ _) := by
      intro X
      ext c
      constructor
      · rintro ⟨⟨c', m⟩, h, he⟩
        have h1 : m = 0 := congrArg Prod.fst he
        have h2 : c' = c := congrArg Prod.snd he
        subst h1 h2
        exact h
      · intro h
        exact ⟨_, h, rfl⟩
    rw [hsw, e2, e1] at key
    exact key

end GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeGraphComapLocallyFree =====

-- ===== clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness =====
-- clump-header: {"m": "Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness", "h": "module\n\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.LieLatticeData\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeBaseChangeFreeStatement\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeFibreIdealLocallyFree\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeGraphComapLocallyFree\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.CharacterLatticeKernelLocallyFree\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeGoodBaseChange\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocFreeMapMkQIff\npublic import Development.AutomorphicSpectrum.Definitions.CommutativeAlgebra.FlagMinor\npublic import Mathlib.RingTheory.IsTensorProduct\npublic import Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeQuotient\npublic import Development.WeilBound.CoreStatements.TorusUniformisation.ChowMahlerFamilies.ImageLatticeBaseChange\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.KernelGraphBaseChangeHolds\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LocallyFreeBaseChangeSummand\nimport Development.AutomorphicSpectrum.Proofs.AlgebraProofs.SmulMemSpanOver\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Henselian\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.RegularLocalRing.Defs\nimport Mathlib.RingTheory.SimpleRing.Principal\nimport Mathlib.RingTheory.TensorProduct.IsBaseChangeFree\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.ENatToNat\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

open GlobalTheory.CompanionTheory.Ar.Num

noncomputable section

namespace GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness

private theorem loc_free_base_change {o Ω C : Type} [CommRing o] [Field Ω] [Field C] [Algebra o Ω]
    [Algebra o C] [Algebra Ω C] (R : Subalgebra o Ω) (RC : Subalgebra o C)
    (hRC : ∀ a ∈ R, algebraMap Ω C a ∈ RC) {ι : Type} [Finite ι] {r : ℕ}
    {L : AddSubgroup (ι → Ω)} (hL : LocFree R r L) :
    LocFree RC r (spanOver RC (bcMap Ω C ι '' (L : Set (ι → Ω)))) := by
  obtain ⟨-, k, f, c, hf, hc, hsum, hb⟩ := hL
  refine ⟨fun a ha e he => SpanExact.smul_mem_spanOver RC _ ha he, k,
    fun l => algebraMap Ω C (f l), fun l => algebraMap Ω C (c l), fun l => hRC _ (hf l),
    fun l => hRC _ (hc l), ?_, fun l => ?_⟩
  · have h := congrArg (algebraMap Ω C) hsum

    simpa only [map_sum, map_mul, map_one] using h
  obtain ⟨b, hli, hsp, hiff⟩ := hb l
  have hbc := isBaseChange_bcMap Ω C ι
  let B : Module.Basis (Fin r) Ω (ι → Ω) := Module.Basis.mk hli hsp.ge
  let B' := hbc.basis B
  have hB' : (⇑B' : Fin r → ι → C) = fun q => bcMap Ω C ι (b q) := by
    funext q
    simp [B', B, IsBaseChange.basis_apply, Module.Basis.mk_apply]
  have hbl : ∀ q, ∃ m : ℕ, f l ^ m • b q ∈ L := fun q =>
    (hiff (b q)).2 ⟨Pi.single q 1, fun q' => ⟨0, by
      rcases eq_or_ne q' q with rfl | h
      · simp [one_mem]
      · simp [h]⟩, by simp [Pi.single_apply]⟩
  refine ⟨fun q => bcMap Ω C ι (b q), by rw [← hB']; exact B'.linearIndependent,
    by rw [← hB']; exact B'.span_eq, fun e => ?_⟩
  beta_reduce
  by_cases hg : f l = 0
  · have hg' : algebraMap Ω C (f l) = 0 := by rw [hg, map_zero]
    constructor
    · intro _
      refine ⟨B'.repr e, fun q => ⟨1, by rw [hg', pow_one, zero_mul]; exact zero_mem _⟩, ?_⟩
      conv_lhs => rw [← B'.sum_repr e]
      rw [hB']
    · intro _
      exact ⟨1, by rw [hg', pow_one, zero_smul]; exact zero_mem _⟩
  have hg' : algebraMap Ω C (f l) ≠ 0 := (map_ne_zero _).2 hg
  have hgR : algebraMap Ω C (f l) ∈ RC := hRC _ (hf l)
  constructor
  · rintro ⟨m, hm⟩
    have key : ∀ x ∈ spanOver RC (bcMap Ω C ι '' (L : Set (ι → Ω))), ∃ a : Fin r → C,
        (∀ q, ∃ n : ℕ, algebraMap Ω C (f l) ^ n * a q ∈ RC) ∧
          x = ∑ q, a q • bcMap Ω C ι (b q) := by
      intro x hx
      unfold spanOver at hx
      induction hx using AddSubgroup.closure_induction with
      | mem x hx =>
        obtain ⟨a, ha, y, ⟨v, hv, rfl⟩, rfl⟩ := hx
        obtain ⟨av, hav, rfl⟩ := (hiff v).1 ⟨0, by rw [pow_zero, one_smul]; exact hv⟩
        refine ⟨fun q => a * algebraMap Ω C (av q), fun q => ?_, ?_⟩
        · obtain ⟨n, hn⟩ := hav q
          exact ⟨n, by rw [mul_left_comm, ← map_pow, ← map_mul]; exact mul_mem ha (hRC _ hn)⟩
        · set_option synthInstance.maxHeartbeats 100000 in
            simp only [map_sum, map_smul, Finset.smul_sum]
          refine Finset.sum_congr rfl fun q _ => ?_
          rw [← algebraMap_smul C (av q), smul_smul]
      | zero => exact ⟨0, fun q => ⟨0, by simp⟩, by simp⟩
      | add x y _ _ hx hy =>
        obtain ⟨a, ha, rfl⟩ := hx
        obtain ⟨a', ha', rfl⟩ := hy
        refine ⟨a + a', fun q => ?_, by simp [add_smul, Finset.sum_add_distrib]⟩
        obtain ⟨n, hn⟩ := ha q
        obtain ⟨n', hn'⟩ := ha' q
        refine ⟨n + n', ?_⟩
        have h2 : algebraMap Ω C (f l) ^ (n + n') * (a + a') q =
            algebraMap Ω C (f l) ^ n' * (algebraMap Ω C (f l) ^ n * a q) +
              algebraMap Ω C (f l) ^ n * (algebraMap Ω C (f l) ^ n' * a' q) := by
          rw [Pi.add_apply]; ring
        rw [h2]
        exact add_mem (mul_mem (pow_mem hgR _) hn) (mul_mem (pow_mem hgR _) hn')
      | neg x _ hx =>
        obtain ⟨a, ha, rfl⟩ := hx
        refine ⟨-a, fun q => ?_, by simp [neg_smul, Finset.sum_neg_distrib]⟩
        obtain ⟨n, hn⟩ := ha q
        exact ⟨n, by rw [Pi.neg_apply, mul_neg]; exact neg_mem hn⟩
    obtain ⟨a, ha, hae⟩ := key _ hm
    refine ⟨fun q => (algebraMap Ω C (f l) ^ m)⁻¹ * a q, fun q => ?_, ?_⟩
    · obtain ⟨n, hn⟩ := ha q
      refine ⟨n + m, ?_⟩
      rw [pow_add, mul_assoc, ← mul_assoc (algebraMap Ω C (f l) ^ m),
        mul_inv_cancel₀ (pow_ne_zero _ hg'), one_mul]
      exact hn
    · have he : e = (algebraMap Ω C (f l) ^ m)⁻¹ • (algebraMap Ω C (f l) ^ m • e) := by
        rw [smul_smul, inv_mul_cancel₀ (pow_ne_zero _ hg'), one_smul]
      rw [he, hae, Finset.smul_sum]
      simp only [smul_smul]
  · rintro ⟨a, ha, rfl⟩
    choose na hna using ha
    choose mb hmb using hbl
    refine ⟨∑ q, na q + ∑ q, mb q, ?_⟩
    rw [Finset.smul_sum]
    refine AddSubgroup.sum_mem _ fun q _ => ?_
    have h1 : na q ≤ ∑ q, na q :=
      Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ q)
    have h2 : mb q ≤ ∑ q, mb q :=
      Finset.single_le_sum (fun _ _ => Nat.zero_le _) (Finset.mem_univ q)
    have e1 : algebraMap Ω C (f l) ^ (∑ q, na q + ∑ q, mb q) =
        algebraMap Ω C (f l) ^ (∑ q, na q - na q) * algebraMap Ω C (f l) ^ na q *
          (algebraMap Ω C (f l) ^ (∑ q, mb q - mb q) * algebraMap Ω C (f l) ^ mb q) := by
      rw [← pow_add, ← pow_add, ← pow_add, Nat.sub_add_cancel h1, Nat.sub_add_cancel h2]
    have hcoef : algebraMap Ω C (f l) ^ (∑ q, na q - na q) *
        algebraMap Ω C (f l) ^ (∑ q, mb q - mb q) * (algebraMap Ω C (f l) ^ na q * a q) ∈ RC :=
      mul_mem (mul_mem (pow_mem hgR _) (pow_mem hgR _)) (hna q)
    have hmem : (algebraMap Ω C (f l) ^ (∑ q, na q - na q) *
        algebraMap Ω C (f l) ^ (∑ q, mb q - mb q) * (algebraMap Ω C (f l) ^ na q * a q)) •
          bcMap Ω C ι (f l ^ mb q • b q) ∈ spanOver RC (bcMap Ω C ι '' (L : Set (ι → Ω))) :=
      AddSubgroup.subset_closure ⟨_, hcoef, _, ⟨_, hmb q, rfl⟩, rfl⟩
    convert hmem using 1
    rw [map_smul, ← algebraMap_smul C (f l ^ mb q), smul_smul, smul_smul, map_pow, e1]
    congr 1
    ring

theorem main : ∀ {o Ω : Type} [CommRing o] [Field Ω] [Algebra o Ω] {F : Type} [Zero F] [One F] [Fintype F] {n : ℕ} {Sg : Type} {r s : Sg → ℕ} (D : LieLatticeData Ω F n Sg r s) (R : Subalgebra o Ω) (p : ℕ) (w : Ω) (χ : Sg → F → Ω), CharData R p w χ → D.Base R p w → D.Good₁ R p χ → D.Good₂ R p χ → (∀ τ, mulLat w (stdLat R _) ≤ D.af R p (χ τ)) → (∀ τ, LocFree R (r τ) (D.kerH R p τ (χ τ)) ∧ ∀ i, LocFree R 1 (D.dId R p (χ τ) i) ∧ LocFree R 1 ((D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _))) ∧ ∀ (C : Type) [Field C] [Algebra o C] [Algebra Ω C] [IsScalarTower o Ω C] (RC : Subalgebra o C), (∀ a ∈ R, algebraMap Ω C a ∈ RC) → (D.bc RC).Good₂ RC p (fun τ a => algebraMap Ω C (χ τ a)) ∧ ∀ τ, (D.bc RC).kerH RC p τ (fun a => algebraMap Ω C (χ τ a)) = spanOver RC (bcMap Ω C _ '' D.kerH R p τ (χ τ)) ∧ ∀ i, (D.bc RC).dId RC p (fun a => algebraMap Ω C (χ τ a)) i = spanOver RC (algebraMap Ω C '' D.dId R p (χ τ) i) ∧ ((D.bc RC).stepGraph τ (fun a => algebraMap Ω C (χ τ a)) i).comap (AddMonoidHom.inl _ _) = spanOver RC (algebraMap Ω C '' (D.stepGraph τ (χ τ) i).comap (AddMonoidHom.inl _ _)) := by
  intro o Ω _ _ _ F _ _ _ n Sg r s D R p w χ hc hB hG1 hG2 haf
  obtain ⟨hdL, hdB⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.StepIdeal.main D R p w χ hc hB hG1 hG2
  obtain ⟨hsL, hsB⟩ := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.stepKer D R p w χ hc hB hG1 hG2
  have hkL := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness.KerFree.main D R p w χ hc hB hG1 hG2 haf
  have h68 := _root_.GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodBaseChange.main D R p w χ hc hB hG1
  refine ⟨fun τ => ⟨hkL τ, fun i => ⟨hdL τ i, hsL τ i⟩⟩, ?_⟩
  intro C _ _ _ _ RC hRC
  have hbc := h68.2 C RC hRC
  have h69 := _root_.GlobalTheory.CompanionTheory.Ar.Num.kernel_graph_base_change D R p w χ hc hB hG1 C RC hRC
  have h70 := _root_.PositivityTheory.Xgn.image_lattice_base_change D R p w χ hc hB hG1 haf C RC hRC
  refine ⟨⟨fun τ i => ?_, fun τ i => ?_, fun τ i => ?_, fun τ => ?_⟩,
    fun τ => ⟨GlobalTheory.T.character_lattice_base_change_free D R p w χ hc hB hG1 hG2 haf C RC hRC τ,
      fun i => ⟨hdB C RC hRC τ i, hsB C RC hRC τ i⟩⟩⟩
  · beta_reduce
    rw [(hbc.2 τ).1, ← span_bcMap_annSub Ω C n i]
    exact (_root_.GlobalTheory.CompanionTheory.Ar.Num.summand_baseChange R RC hRC (bcMap Ω C (Fin n)) (isBaseChange_bcMap Ω C (Fin n))
      (D.af R p (χ τ)) (annSub Ω n i) (h68.1 τ).1.1 (hG2.ann τ i)).1
  · rw [(h69 τ).1 i]
    exact loc_free_base_change R RC hRC (hG2.kk τ i)
  · beta_reduce
    rw [(h69 τ).2 i,
      show AddMonoidHom.snd C (Fin (r τ) → C) = (LinearMap.snd C C (Fin (r τ) → C)).toAddMonoidHom
        from rfl, SpanExact.map_spanOver]
    have himg : (LinearMap.snd C C (Fin (r τ) → C)) ''
        (Prod.map (algebraMap Ω C) (bcMap Ω C (Fin (r τ))) '' (D.stepGraph τ (χ τ) i : Set _)) =
          bcMap Ω C (Fin (r τ)) ''
            ((D.stepGraph τ (χ τ) i).map (AddMonoidHom.snd Ω (Fin (r τ) → Ω)) : Set _) := by
      rw [AddSubgroup.coe_map, Set.image_image, Set.image_image]
      rfl
    rw [himg]
    exact loc_free_base_change R RC hRC (hG2.step τ i)
  · beta_reduce
    rw [h70 τ]
    exact loc_free_base_change R RC hRC (hG2.im τ)

end GlobalTheory.CompanionTheory.Ar.Num.LatticeGoodness
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.AutomorphicSpectrum.Proofs.AlgebraProofs.LatticeSecondGoodness =====
