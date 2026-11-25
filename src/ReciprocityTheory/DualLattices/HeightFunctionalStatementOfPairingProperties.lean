module

public import ReciprocityTheory.DualLattices.SqZeroOfSpan
public import ReciprocityTheory.DualLattices.SeriesState
public import ReciprocityTheory.DualLattices.ModuliPointsState
public import ReciprocityTheory.DualLattices.IsFibreSq
public import Mathlib.Algebra.Algebra.Prod
public import Mathlib.Algebra.Algebra.Subalgebra.Basic
import Mathlib.Tactic.Lemma
import Mathlib.Tactic.Linter.Style
import Mathlib.Tactic.ReduceModChar
import Mathlib.Tactic.LinearCombination
import Mathlib.Tactic.Ring

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: ReciprocityTheory.DualLattices.ToSigmaAddFstZeroFst, ReciprocityTheory.DualLattices.HeightFunctionalStatementOfPairingProperties

-- ===== clump member: ReciprocityTheory.DualLattices.ToSigmaAddFstZeroFst =====
-- clump-header: {"m": "ReciprocityTheory.DualLattices.ToSigmaAddFstZeroFst", "h": "module\n\npublic import ReciprocityTheory.DualLattices.SqZeroOfSpan\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

namespace ReciprocityTheory.PGsh

universe u

variable {R₀ : Type u} [CommRing R₀]

namespace BX

def tot (B : BX R₀) {R : LAlg R₀} {x y : B.G R} (u : B.P R x y) : Σ x y : B.G R, B.P R x y :=
  ⟨x, y, u⟩

def tmap (B : BX R₀) {R S : LAlg R₀} (f : LHom R S) (t : Σ x y : B.G R, B.P R x y) :
    Σ x y : B.G S, B.P S x y :=
  ⟨B.map f t.1, B.map f t.2.1, B.pmap f t.2.2⟩

variable {B : BX R₀} {R S T : LAlg R₀}

end BX

end ReciprocityTheory.PGsh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.DualLattices.ToSigmaAddFstZeroFst =====

-- ===== clump member: ReciprocityTheory.DualLattices.HeightFunctionalStatementOfPairingProperties =====
-- clump-header: {"m": "ReciprocityTheory.DualLattices.HeightFunctionalStatementOfPairingProperties", "h": "module\n\npublic import ReciprocityTheory.DualLattices.SeriesState\npublic import ReciprocityTheory.DualLattices.ModuliPointsState\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Lemma\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\npublic import ReciprocityTheory.DualLattices.IsFibreSq\npublic import ReciprocityTheory.DualLattices.ToSigmaAddFstZeroFst\npublic import Mathlib.Algebra.Algebra.Prod\npublic import Mathlib.Algebra.Algebra.Subalgebra.Basic\n\n"}
section -- clump:auto
@[expose] public section

noncomputable section

open TensorProduct

namespace ReciprocityTheory.PGsh

universe u

variable {R₀ : Type u} [CommRing R₀]

namespace BX

variable {B : BX R₀}

private lemma tot_eq {R : LAlg R₀} {x y x' y' : B.G R} {u : B.P R x y} {u' : B.P R x' y'}
    (hx : x = x') (hy : y = y') (h : HEq u u') : B.tot u = B.tot u' := by
  cases hx; cases hy; cases h; rfl

private lemma heq_of_tot {R : LAlg R₀} {x y x' y' : B.G R} {u : B.P R x y} {u' : B.P R x' y'}
    (h : B.tot u = B.tot u') : HEq u u' := by
  obtain ⟨rfl, h⟩ := Sigma.mk.inj_iff.mp h
  exact (Sigma.mk.inj_iff.mp (eq_of_heq h)).2

private lemma tot_tr1 {R : LAlg R₀} {x x' y : B.G R} (h : x = x') (u : B.P R x y) :
    B.tot (B.tr1 h u) = B.tot u := by
  subst h; rfl

private lemma tot_pmap_tr2 {R S : LAlg R₀} (f : LHom R S) {x y y' : B.G R} (h : y = y')
    (u : B.P R x y) : B.tot (B.pmap f (B.tr2 h u)) = B.tot (B.pmap f u) := by
  subst h; rfl

private lemma tot_add1_congr {R : LAlg R₀} {x₁ x₂ y x₁' x₂' y' : B.G R} {u₁ : B.P R x₁ y}
    {u₂ : B.P R x₂ y} {u₁' : B.P R x₁' y'} {u₂' : B.P R x₂' y'}
    (h₁ : B.tot u₁ = B.tot u₁') (h₂ : B.tot u₂ = B.tot u₂') :
    B.tot (B.add1 u₁ u₂) = B.tot (B.add1 u₁' u₂') := by
  obtain ⟨rfl, h₁⟩ := Sigma.mk.inj_iff.mp h₁
  obtain ⟨rfl, h₁⟩ := Sigma.mk.inj_iff.mp (eq_of_heq h₁)
  obtain ⟨rfl, h₂⟩ := Sigma.mk.inj_iff.mp h₂
  obtain ⟨_, h₂⟩ := Sigma.mk.inj_iff.mp (eq_of_heq h₂)
  cases h₁; cases h₂; rfl

private def muPair {R : LAlg R₀} (Dp : DualPair R) (c c' : (R : Type u)) : LHom Dp.D Dp.F :=
  mkLHom (AlgHom.codRestrict ((Dp.μA c).prod (Dp.μA c')) Dp.fpS fun d => by
      show Dp.π.1 (Dp.μA c d) = Dp.π.1 (Dp.μA c' d); rw [Dp.π_μA, Dp.π_μA])
    fun a ha => Dp.isUnit_of_π (by
      have h : IsUnit (Dp.π.1 (Dp.μA c a)) :=
        (ha.map ((AlgHom.fst R₀ _ _).comp Dp.fpS.val)).map Dp.π.1
      rwa [Dp.π_μA c a] at h)

private lemma zσ {R : LAlg R₀} (Dp : DualPair R) (y : B.G R) {x : B.G Dp.D}
    (c : B.P Dp.D x (B.map Dp.σ y)) (hc : B.tot (B.pmap Dp.π c) = B.tot (B.zero1 y)) :
    B.tot (B.pmap (Dp.μL 0) c) = B.tot (B.zero1 (B.map Dp.σ y)) := by
  have hμ0 : Dp.μL 0 = Dp.σ.comp Dp.π :=
    LHom.ext' fun a => by show Dp.fμ 0 a = Dp.σ.1 (Dp.π.1 a); simp [DualPair.fμ]
  rw [hμ0, tot_eq (B.map_comp Dp.π Dp.σ x) (B.map_comp Dp.π Dp.σ _) (B.pmap_comp Dp.π Dp.σ c)]
  change B.tmap Dp.σ (B.tot (B.pmap Dp.π c)) = _
  rw [hc]
  exact tot_eq (map_zero (B.map Dp.σ)) rfl (B.zeroFst_nat Dp.σ y)

private lemma nsmul1_tot {R : LAlg R₀} (Dp : DualPair R) (y : B.G R) {x : B.G Dp.D}
    (u : B.P Dp.D x (B.map Dp.σ y)) (hu : B.tot (B.pmap Dp.π u) = B.tot (B.zero1 y)) (n : ℕ) :
    B.tot (B.nsmul1 u n) = B.tot (B.pmap (Dp.μL (n : (R : Type u))) u) := by
  have hμ1 : Dp.μL 1 = LHom.id Dp.D :=
    LHom.ext' fun a => by show Dp.fμ 1 a = a; simp [DualPair.fμ]
  have hp1 (c c') : Dp.p₁L.comp (muPair Dp c c') = Dp.μL c := LHom.ext' fun _ => rfl
  have hp2 (c c') : Dp.p₂L.comp (muPair Dp c c') = Dp.μL c' := LHom.ext' fun _ => rfl
  have hps (c c') : Dp.sL.comp (muPair Dp c c') = Dp.μL (c + c') := LHom.ext' fun d => by
    show Dp.fμ c d + Dp.fμ c' d - Dp.σ.1 (Dp.π.1 (Dp.fμ c d)) = Dp.fμ (c + c') d
    simp only [DualPair.fμ, map_add (f := _), map_mul, map_sub, Dp.sect]; ring
  have pcomp {S T : LAlg R₀} (f : LHom Dp.D S) (g : LHom S T) {x' y' : B.G Dp.D}
      (v : B.P Dp.D x' y') : B.tot (B.pmap g (B.pmap f v)) = B.tot (B.pmap (g.comp f) v) :=
    (tot_eq (B.map_comp f g x') (B.map_comp f g y') (B.pmap_comp f g v)).symm
  have pid {x' y' : B.G Dp.D} (v : B.P Dp.D x' y') : B.tot (B.pmap (LHom.id Dp.D) v) = B.tot v :=
    tot_eq (B.map_id Dp.D x') (B.map_id Dp.D y') (B.pmap_id v)
  induction n with
  | zero =>
    show B.tot (B.tr1 _ (B.zero1 (B.map Dp.σ y))) = _
    rw [tot_tr1, Nat.cast_zero, zσ Dp y u hu]
  | succ n ih =>
    set a := B.nsmul1 u n
    have ha : B.tot (B.pmap Dp.π a) = B.tot (B.zero1 y) := by
      change B.tmap Dp.π (B.tot a) = _
      rw [ih]
      show B.tot (B.pmap Dp.π (B.pmap (Dp.μL (n : (R : Type u))) u)) = _
      rw [pcomp, show Dp.π.comp (Dp.μL (n : (R : Type u))) = Dp.π from LHom.ext' (Dp.π_μA _), hu]
    have hjσ : (muPair Dp 0 1).comp Dp.σ = (muPair Dp 1 0).comp Dp.σ :=
      LHom.ext' fun r => Subtype.ext (by show (Dp.fμ 0 (Dp.σ.1 r), Dp.fμ 1 (Dp.σ.1 r)) =
        (Dp.fμ 1 (Dp.σ.1 r), Dp.fμ 0 (Dp.σ.1 r)); simp [DualPair.fμ, Dp.sect])
    have ey : B.map (muPair Dp 0 1) (B.map Dp.σ y) = B.map (muPair Dp 1 0) (B.map Dp.σ y) := by
      rw [← B.map_comp, ← B.map_comp, hjσ]
    let t := B.add1 (B.pmap (muPair Dp 1 0) a) (B.tr2 ey (B.pmap (muPair Dp 0 1) u))
    have padd (g : LHom Dp.F Dp.D) : B.tot (B.pmap g t) =
        B.tot (B.add1 (B.pmap g (B.pmap (muPair Dp 1 0) a))
          (B.pmap g (B.tr2 ey (B.pmap (muPair Dp 0 1) u)))) :=
      tot_eq (map_add (B.map g) _ _) rfl (B.addFst_nat g _ _)
    obtain ⟨c, -, huniq⟩ := B.fibre_P Dp.p₁L Dp.p₂L Dp.π Dp.π Dp.isFibreSq
      (B.tot a) (B.tot u) (ha.trans hu.symm)
    have htw : B.tot t = B.tot (B.pmap (muPair Dp (n : (R : Type u)) 1) u) := by
      refine (huniq (B.tot t) ⟨?_, ?_⟩).trans
        (huniq (B.tot (B.pmap (muPair Dp (n : (R : Type u)) 1) u)) ⟨?_, ?_⟩).symm
      · exact (padd Dp.p₁L).trans ((tot_add1_congr (by rw [pcomp, hp1, hμ1, pid])
          (by rw [tot_pmap_tr2, pcomp, hp1, zσ Dp y u hu])).trans
          ((tot_eq (add_comm _ 0) rfl (B.addFst_comm a (B.zero1 _))).trans
            (tot_eq (zero_add _) rfl (B.zeroFst_add a))))
      · exact (padd Dp.p₂L).trans ((tot_add1_congr (by rw [pcomp, hp2, zσ Dp y a ha])
          (by rw [tot_pmap_tr2, pcomp, hp2, hμ1, pid])).trans
          (tot_eq (zero_add _) rfl (B.zeroFst_add u)))
      · show B.tot (B.pmap Dp.p₁L (B.pmap (muPair Dp (n : (R : Type u)) 1) u)) = B.tot a
        rw [pcomp, hp1, ih]
      · show B.tot (B.pmap Dp.p₂L (B.pmap (muPair Dp (n : (R : Type u)) 1) u)) = B.tot u
        rw [pcomp, hp2, hμ1, pid]
    have hs : B.tot (B.pmap Dp.sL t) =
        B.tot (B.pmap Dp.sL (B.pmap (muPair Dp (n : (R : Type u)) 1) u)) :=
      congrArg (B.tmap Dp.sL) htw
    have hL : B.tot (B.pmap Dp.sL t) = B.tot (B.add1 a u) :=
      (padd Dp.sL).trans (tot_add1_congr (by rw [pcomp, hps, add_zero, hμ1, pid])
        (by rw [tot_pmap_tr2, pcomp, hps, zero_add, hμ1, pid]))
    rw [hL, pcomp, hps, ← Nat.cast_add_one] at hs
    show B.tot (B.tr1 _ (B.add1 a u)) = _
    rwa [tot_tr1]

private lemma c_unique (h1 : PairingPropertiesStatement B) {R : LAlg R₀} (Dp : DualPair R) (N : ℕ)
    (x y : B.G Dp.D) {c c' : (R : Type u)} {z z' : (Dp.D : Type u)ˣ}
    (hz : B.IsPairing N x y z) (hz' : B.IsPairing N x y z')
    (e : (z : (Dp.D : Type u)) = 1 + Dp.σ.1 c * Dp.η)
    (e' : (z' : (Dp.D : Type u)) = 1 + Dp.σ.1 c' * Dp.η) : c = c' := by
  have h : (z : (Dp.D : Type u)) = z' := congrArg Units.val (h1.2.1 Dp.D N x y z z' hz hz')
  rw [e, e'] at h
  exact sub_eq_zero.mp (Dp.free _ (by rw [map_sub, sub_mul]; linear_combination h))

private lemma exists_c (h1 : PairingPropertiesStatement B) {R : LAlg R₀} (Dp : DualPair R) (N : ℕ)
    (hN : (N : (R : Type u)) = 0) (y : B.G R) (hy : N • y = 0) (v : B.gg) :
    ∃ c : (R : Type u), ∃ z : (Dp.D : Type u)ˣ,
      B.IsPairing N (B.tg Dp.π Dp.sqZero (v ⊗ₜ Dp.ηk)) (B.map Dp.σ y) z ∧
        (z : (Dp.D : Type u)) = 1 + Dp.σ.1 c * Dp.η := by
  have hx0 : N • B.tg Dp.π Dp.sqZero (v ⊗ₜ Dp.ηk) = 0 := by
    rw [← map_nsmul, ← TensorProduct.tmul_smul,
      show N • Dp.ηk = 0 from Subtype.ext (by
        show N • Dp.η = 0; rw [nsmul_eq_mul, ← map_natCast Dp.σ.1 N, hN, map_zero, zero_mul]),
      TensorProduct.tmul_zero, map_zero]
  obtain ⟨z, hz⟩ := h1.1 Dp.D N _ (B.map Dp.σ y) hx0 (by rw [← map_nsmul, hy, map_zero])
  have hp := h1.2.2.2.2.2.2.1 Dp.D R Dp.π N _ _ z hz
  rw [(B.tg_ker Dp.π Dp.sqZero _).mpr ⟨_, rfl⟩] at hp
  set w₀ := Units.map (Dp.π.1 : Dp.D →* R) z
  have h1z : w₀ = 1 :=
    (mul_left_cancel ((mul_one w₀).trans (h1.2.2.1 R N 0 0 _ w₀ w₀ w₀ hp hp (by rwa [add_zero])))).symm
  have hmem : (z : (Dp.D : Type u)) - 1 ∈ RingHom.ker Dp.π.1 := by
    rw [RingHom.mem_ker, map_sub, show Dp.π.1 z = 1 by simpa [w₀] using congrArg Units.val h1z,
      map_one, sub_self]
  rw [Dp.ker_eq, Ideal.mem_span_singleton'] at hmem
  obtain ⟨d, hd⟩ := hmem
  exact ⟨Dp.π.1 d, z, hz, by linear_combination -hd + Dp.sq_ker (Dp.sub_mem d) Dp.η_mem⟩

end BX

theorem heightFunctionalStatement_of_pairingProperties (B : BX R₀)
    (h1 : PairingPropertiesStatement B) : HighestWeightVectorUniformBounds B := by
  intro R Dp N hN
  refine ⟨fun y v u hu => ?_, fun y hy => ?_, fun y y' h h' hh hh' v => ?_⟩
  · have hu' : B.tot (B.pmap Dp.π u) = B.tot (B.zero1 y) :=
      BX.tot_eq ((B.tg_ker Dp.π Dp.sqZero _).mpr ⟨_, rfl⟩)
        (by rw [← B.map_comp, Dp.π_comp_σ, B.map_id]) hu
    exact BX.heq_of_tot ((BX.nsmul1_tot Dp y u hu' N).trans (by rw [hN]; exact BX.zσ Dp y u hu'))
  · choose cf hcf using BX.exists_c h1 Dp N hN y hy
    refine ⟨{
      toFun := cf
      map_add' := fun v v' => by
        obtain ⟨z, hz, ez⟩ := hcf v
        obtain ⟨z', hz', ez'⟩ := hcf v'
        obtain ⟨w, hw, ew⟩ := hcf (v + v')
        rw [TensorProduct.add_tmul, map_add (f := _)] at hw
        have hwz : (w : (Dp.D : Type u)) = z * z' :=
          by rw [h1.2.2.1 Dp.D N _ _ _ z z' w hz hz' hw, Units.val_mul]
        rw [ew, ez, ez'] at hwz
        exact sub_eq_zero.mp (Dp.free _ (by
          rw [map_sub, map_add (f := _)]
          linear_combination hwz + (Dp.σ.1 (cf v) * Dp.σ.1 (cf v')) * Dp.η_sq))
      map_smul' := fun r v => by
        set c := algebraMap R₀ (R : Type u) r
        have hf : ∀ a ∈ Dp.π.ker, (Dp.μL c).1.toLinearMap a ∈ Dp.π.ker := fun a ha => by
          have ha' : Dp.π.1 a = 0 := ha
          show Dp.π.1 (Dp.fμ c a) = 0
          simp [DualPair.fμ, Dp.sect, ha']
        have key := B.tg_nat Dp.π Dp.π Dp.sqZero Dp.sqZero (Dp.μL c) hf (v ⊗ₜ Dp.ηk)
        have hv : LinearMap.lTensor B.gg ((Dp.μL c).1.toLinearMap.restrict hf) (v ⊗ₜ[R₀] Dp.ηk) =
            (r • v) ⊗ₜ[R₀] Dp.ηk := by
          rw [LinearMap.lTensor_tmul, TensorProduct.smul_tmul]
          congr 1; apply Subtype.ext
          show Dp.fμ c Dp.η = r • Dp.η
          rw [Algebra.smul_def, ← Dp.σ.1.commutes r]
          simp [DualPair.fμ, Dp.π_η, c]
        rw [hv] at key
        have hμσ : (Dp.μL c).comp Dp.σ = Dp.σ :=
          LHom.ext' fun a => by show Dp.fμ c (Dp.σ.1 a) = Dp.σ.1 a; simp [DualPair.fμ, Dp.sect]
        obtain ⟨z, hz, ez⟩ := hcf v
        obtain ⟨w, hw, ew⟩ := hcf (r • v)
        have hp := h1.2.2.2.2.2.2.1 Dp.D Dp.D (Dp.μL c) N _ _ z hz
        rw [← key, ← B.map_comp, hμσ] at hp
        rw [RingHom.id_apply, Algebra.smul_def]
        refine BX.c_unique h1 Dp N _ _ hw hp ew ?_
        rw [Units.coe_map]
        show Dp.fμ c (z : (Dp.D : Type u)) = _
        rw [ez]; simp only [DualPair.fμ, Dp.sect, Dp.π_η, map_add (f := _), map_one, map_mul,
          mul_zero, add_zero, c, AlgHom.commutes]; ring
    }, hcf, fun h' hh' => LinearMap.ext fun v => ?_⟩
    obtain ⟨z, hz, ez⟩ := hh' v
    obtain ⟨z0, hz0, ez0⟩ := hcf v
    exact BX.c_unique h1 Dp N _ _ hz hz0 ez ez0
  · obtain ⟨z, hz, ez⟩ := hh v
    obtain ⟨z', hz', ez'⟩ := hh' v
    obtain ⟨hx, hy1, -⟩ := id hz
    obtain ⟨-, hy2, -⟩ := id hz'
    obtain ⟨w, hw⟩ := h1.1 Dp.D N _ (B.map Dp.σ y + B.map Dp.σ y') hx
      (by rw [nsmul_add, hy1, hy2, add_zero])
    refine ⟨w, by rwa [map_add (f := _)], ?_⟩
    rw [h1.2.2.2.1 Dp.D N _ _ _ z z' w hz hz' hw, Units.val_mul, ez, ez',
      LinearMap.add_apply, map_add (f := _)]
    linear_combination (Dp.σ.1 (h v) * Dp.σ.1 (h' v)) * Dp.η_sq

end ReciprocityTheory.PGsh
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: ReciprocityTheory.DualLattices.HeightFunctionalStatementOfPairingProperties =====
