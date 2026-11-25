module

public import Formalism.HermitianCurvature.StatementTL
public import Formalism.HermitianCurvature.HermitianCurvatureProofs.RuleGD
import Std.Tactic.BVDecide.Normalize.Prop
import Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterLiftOfParts
import Mathlib.Tactic.Linter.Style

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Formalism.HermitianCurvature.HermitianCurvatureProofs.FnComm, Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteAvrBvrOfCommuteSiteOps

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FnComm =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.FnComm", "h": "module\n\npublic import Formalism.HermitianCurvature.StatementTL\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.TL

open Matrix Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr

section

variable {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] {r : ℕ} {L : LevelData A r} {st : Start A}

theorem fn_comm (L : LevelData A r) {x y : A} (hx : x ∈ zfns L) (hy : y ∈ zfns L) : x * y = y * x :=
  L.fns_comm x (Or.inr hx) y (Or.inr hy)

theorem z10 (h : IsLevelStart L st) {Y : ℂ} (hi : Y ∈ st.inv) :
    st.QQ Y 1 0 * L.ζ = L.ζ * st.QQ Y 1 0 - st.QQ Y 1 1 ∧ Commute (st.QQ Y 1 0) L.ζb := by
  have hlow := h.low Y hi
  have htau := h.tau Y
  have mζ : L.ζ ∈ zfns L := Or.inl rfl
  have mζi : L.ζi ∈ zfns L := Or.inr (Or.inl rfl)
  have mζb : L.ζb ∈ zfns L := Or.inr (Or.inr (Or.inl rfl))
  have mGG : L.GG ∈ zfns L := Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  have mGGi : L.GGi ∈ zfns L := Or.inr (Or.inr (Or.inr (Or.inr (Or.inr rfl))))
  have cm : ∀ {x y : A}, x ∈ zfns L → y ∈ zfns L → Commute x y := fun hx hy => fn_comm L hx hy
  have hX : ∀ g ∈ zfns L, Commute (st.x Y) g := h.x_fn Y
  have hE : ∀ g ∈ zfns L, Commute (st.ee Y) g := h.ee_fn Y
  have hc : ∀ a : A, Commute (algebraMap ℂ A (Y + 1 / 2)) a := fun a => Algebra.commutes _ a
  have hl : L.l0 Y + L.ζb * L.ζi * L.GGi * st.ee Y =
      -L.nab + (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) + L.ζb * L.ζi * L.GGi * st.ee Y) := by
    simp only [Formalism.FourierDecayAlt.R.LevelData.l0]
    abel
  rw [hl] at hlow
  have hT : ∀ g ∈ zfns L, Commute (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
      L.ζb * L.ζi * L.GGi * st.ee Y) g := by
    intro g hg
    apply Commute.add_left
    · exact ((hc _).mul_left ((cm mζb hg).mul_left (cm mGGi hg))).neg_left
    · exact (((cm mζb hg).mul_left (cm mζi hg)).mul_left (cm mGGi hg)).mul_left (hE _ hg)
  have hTz := hT _ mζ
  have hGXz : Commute (L.GG * st.x Y) L.ζ := (cm mGG mζ).mul_left (hX _ mζ)
  constructor
  · rw [hlow, htau]
    calc L.GG * st.x Y * (-L.nab + (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
          L.ζb * L.ζi * L.GGi * st.ee Y)) * L.ζ
        = L.GG * st.x Y * (-(L.nab * L.ζ) + (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
          L.ζb * L.ζi * L.GGi * st.ee Y) * L.ζ) := by noncomm_ring
      _ = L.GG * st.x Y * (-(L.ζ * L.nab + 1) + L.ζ * (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
          L.ζb * L.ζi * L.GGi * st.ee Y)) := by rw [L.nab_ζ, hTz.eq]
      _ = (L.GG * st.x Y * L.ζ) * (-L.nab + (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
          L.ζb * L.ζi * L.GGi * st.ee Y)) - L.GG * st.x Y := by noncomm_ring
      _ = L.ζ * (L.GG * st.x Y * (-L.nab + (-(algebraMap ℂ A (Y + 1 / 2) * (L.ζb * L.GGi)) +
          L.ζb * L.ζi * L.GGi * st.ee Y))) - L.GG * st.x Y := by
        rw [hGXz.eq]
        noncomm_ring
  · rw [hlow]
    have hnab : Commute L.nab L.ζb := L.nab_ζb
    exact ((cm mGG mζb).mul_left (hX _ mζb)).mul_left (hnab.neg_left.add_left (hT _ mζb))

theorem zetaQQ : ZetaQQ := by
  intro A _ _ _ _ r L st hS h Y hY hi
  have mζ : L.ζ ∈ zfns L := Or.inl rfl
  have mζb : L.ζb ∈ zfns L := Or.inr (Or.inr (Or.inl rfl))
  have mG : L.GG ∈ zfns L := Or.inr (Or.inr (Or.inr (Or.inr (Or.inl rfl))))
  have sζb : star L.ζb = L.ζ := by rw [← hS.1, star_star]
  have herm : ∀ Z : ℂ, star Z = Z → ∀ i j, star (st.QQ Z i j) = st.QQ Z j i := fun Z hZ i j => by
    have := congrFun (congrFun (h.start.herm Z hZ) j) i
    rwa [Matrix.conjTranspose_apply] at this
  have base : ∀ Z : ℂ, star Z = Z → Z ∈ st.inv →
      (st.QQ Z 1 0 * L.ζ = L.ζ * st.QQ Z 1 0 - st.QQ Z 1 1 ∧ Commute (st.QQ Z 1 0) L.ζb ∧
      st.QQ Z 0 1 * L.ζb = L.ζb * st.QQ Z 0 1 + st.QQ Z 1 1 ∧ Commute (st.QQ Z 0 1) L.ζ ∧
      Commute (st.QQ Z 1 1) L.ζ ∧ Commute (st.QQ Z 1 1) L.ζb) := fun Z hZ hZi => by
    obtain ⟨a, b⟩ := z10 h hZi
    refine ⟨a, b, ?_, ?_, ?_, ?_⟩
    · have := congrArg star a
      rw [star_mul, star_sub, star_mul, herm Z hZ, herm Z hZ, hS.1] at this
      rw [this]; abel
    · have := congrArg star b.eq
      rw [star_mul, star_mul, herm Z hZ, sζb] at this
      exact this.symm
    · rw [h.tau]; exact Commute.mul_left (fn_comm L mG mζ) (h.x_fn Z _ mζ)
    · rw [h.tau]; exact Commute.mul_left (fn_comm L mG mζb) (h.x_fn Z _ mζb)
  refine ⟨base Y hY hi, fun hn => ?_⟩
  have cancel : ∀ Z ∈ st.inv, ∀ u : A, u * st.QQ Z 1 1 = 0 → u = 0 := fun Z hZ u hu => by
    rw [h.tau] at hu
    have : u * (L.GG * st.x Z) * st.xi Z * L.GGi = u := by
      rw [mul_assoc u, mul_assoc L.GG, (h.x_xi Z hZ).1, mul_one, mul_assoc, L.GG_GGi, mul_one]
    rw [← this, hu, zero_mul, zero_mul]
  have key : st.QQ Y 0 0 * L.ζb = L.ζb * st.QQ Y 0 0 + st.QQ Y 1 0 := by
    obtain ⟨-, b10, b01, -, -, -⟩ := base Y hY hi
    rcases hn with hm | hp
    · have hr : star (Y - 1) = Y - 1 := by rw [star_sub, hY, star_one]
      obtain ⟨-, -, c01, -, -, c11⟩ := base _ hr hm
      have d := congrFun (congrFun (h.start.det (Y - 1)).1 0) 1
      simp [Matrix.mul_apply, Fin.sum_univ_two, YangianSpanCharacter.T.J] at d
      have dq := Algebra.commutes (st.q (Y - 1)) L.ζb
      rw [← d] at dq
      apply eq_of_sub_eq_zero
      apply cancel _ hm
      have e1 := c11.eq
      have e2 := b10.eq
      calc _ = st.QQ Y 0 0 * (L.ζb * st.QQ (Y - 1) 1 1) - L.ζb * st.QQ Y 0 0 * st.QQ (Y - 1) 1 1
            - st.QQ Y 1 0 * st.QQ (Y - 1) 1 1 := by noncomm_ring
        _ = ((-st.QQ Y 1 0 * st.QQ (Y - 1) 0 1 + st.QQ Y 0 0 * st.QQ (Y - 1) 1 1) * L.ζb -
            L.ζb * (-st.QQ Y 1 0 * st.QQ (Y - 1) 0 1 + st.QQ Y 0 0 * st.QQ (Y - 1) 1 1)) +
            (st.QQ Y 1 0 * (st.QQ (Y - 1) 0 1 * L.ζb) - L.ζb * st.QQ Y 1 0 * st.QQ (Y - 1) 0 1
              - st.QQ Y 1 0 * st.QQ (Y - 1) 1 1) := by rw [← e1]; noncomm_ring
        _ = 0 := by
          rw [c01, ← e2]
          have : (-st.QQ Y 1 0 * st.QQ (Y - 1) 0 1 + st.QQ Y 0 0 * st.QQ (Y - 1) 1 1) * L.ζb -
            L.ζb * (-st.QQ Y 1 0 * st.QQ (Y - 1) 0 1 + st.QQ Y 0 0 * st.QQ (Y - 1) 1 1) = 0 := by
            rw [sub_eq_zero]; simpa [neg_mul] using dq
          rw [this]; noncomm_ring
    · have hr : star (Y + 1) = Y + 1 := by rw [star_add, hY, star_one]
      obtain ⟨-, c10, -, -, -, c11⟩ := base _ hr hp
      have d := congrFun (congrFun (h.start.det Y).2 0) 1
      have d' := congrFun (congrFun (h.start.det Y).2 1) 1
      simp [Matrix.mul_apply, Fin.sum_univ_two, YangianSpanCharacter.T.J] at d d'
      have dq := Algebra.commutes (st.q Y) L.ζb
      rw [← d] at dq
      apply eq_of_sub_eq_zero
      apply cancel _ hp
      have e1 := c11.eq
      have e2 := c10.eq
      have d2 : st.QQ Y 1 0 * st.QQ (Y + 1) 1 1 = st.QQ Y 1 1 * st.QQ (Y + 1) 1 0 := by
        have := d'; rw [neg_add_eq_zero] at this; exact this.symm
      calc _ = st.QQ Y 0 0 * (L.ζb * st.QQ (Y + 1) 1 1) - L.ζb * st.QQ Y 0 0 * st.QQ (Y + 1) 1 1
            - st.QQ Y 1 0 * st.QQ (Y + 1) 1 1 := by noncomm_ring
        _ = ((-st.QQ Y 0 1 * st.QQ (Y + 1) 1 0 + st.QQ Y 0 0 * st.QQ (Y + 1) 1 1) * L.ζb -
            L.ζb * (-st.QQ Y 0 1 * st.QQ (Y + 1) 1 0 + st.QQ Y 0 0 * st.QQ (Y + 1) 1 1)) +
            (st.QQ Y 0 1 * (st.QQ (Y + 1) 1 0 * L.ζb) - L.ζb * st.QQ Y 0 1 * st.QQ (Y + 1) 1 0
              - st.QQ Y 1 0 * st.QQ (Y + 1) 1 1) := by rw [← e1]; noncomm_ring
        _ = 0 := by
          rw [e2, ← mul_assoc (st.QQ Y 0 1), b01, d2]
          have : (-st.QQ Y 0 1 * st.QQ (Y + 1) 1 0 + st.QQ Y 0 0 * st.QQ (Y + 1) 1 1) * L.ζb -
            L.ζb * (-st.QQ Y 0 1 * st.QQ (Y + 1) 1 0 + st.QQ Y 0 0 * st.QQ (Y + 1) 1 1) = 0 := by
            rw [sub_eq_zero]; simpa [neg_mul] using dq
          rw [this]; noncomm_ring
  refine ⟨key, ?_⟩
  have := congrArg star key
  rw [star_mul, star_add, star_mul, herm Y hY, herm Y hY, sζb] at this
  rw [this]; abel

end

end Formalism.FourierDecayAlt.TL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.FnComm =====

-- ===== clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteAvrBvrOfCommuteSiteOps =====
-- clump-header: {"m": "Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteAvrBvrOfCommuteSiteOps", "h": "module\n\nimport Formalism.HermitianCurvature.HermitianCurvatureProofs.LetterLiftOfParts\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.RuleGD\npublic import Formalism.HermitianCurvature.StatementTL\npublic import Formalism.HermitianCurvature.HermitianCurvatureProofs.FnComm\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Basify\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.Linter.Style\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.Polynomial.Basic\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\nimport Std.Tactic.BVDecide.Normalize.Prop\n\n"}
section -- clump:auto
@[expose] public section

namespace Formalism.FourierDecayAlt.TL

open Matrix Formalism.FourierDecayAlt.R Formalism.FourierDecayAlt.Wd Formalism.FourierDecayAlt.Fr Formalism.FourierDecayAlt.P.RuleGD

section

variable {A : Type} [Ring A] [StarRing A] [Algebra ℂ A] [StarModule ℂ A] {r : ℕ}

theorem vecP (L : LevelData A r) (φ : A →+* A) (t : ℂ) (hal : ∀ z, φ (algebraMap ℂ A z) = algebraMap ℂ A z)
    (hp : ∀ l, φ (L.p l) = L.p l + algebraMap ℂ A t) (hf : ∀ x ∈ L.fns, φ x = x) (Y : ℂ) :
    φ (L.Ar Y) = L.Ar (Y + t) ∧ φ (L.Br Y) = L.Br (Y + t) := by
  have hT : ∀ l, φ.mapMatrix (L.Tl Y l) = L.Tl (Y + t) l := by
    intro l
    have hc : φ (L.c l) = L.c l := hf _ (Or.inl (Or.inl (Or.inl (Or.inl ⟨l, rfl⟩))))
    have hci : φ (L.ci l) = L.ci l := hf _ (Or.inl (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩))))
    ext i j
    fin_cases i <;> fin_cases j <;> simp [R.LevelData.Tl, hal, hp, hc, hci, map_add (f := _)] <;> abel
  have hTP : φ.mapMatrix (L.Tprod Y) = L.Tprod (Y + t) := by
    unfold R.LevelData.Tprod
    rw [map_list_prod, List.map_reverse, List.map_ofFn]
    have hfun : (φ.mapMatrix ∘ L.Tl Y) = L.Tl (Y + t) := funext hT
    rw [hfun]
  refine ⟨?_, ?_⟩
  · unfold R.LevelData.Ar
    rw [← hTP]
    rfl
  · unfold R.LevelData.Br
    rw [← hTP]
    rfl

theorem vecM (L : LevelData A r) (φ : A →+* A) (t : ℂ) (hal : ∀ z, φ (algebraMap ℂ A z) = algebraMap ℂ A z)
    (hp : ∀ l, φ (L.pb l) = L.pb l + algebraMap ℂ A t) (hf : ∀ x ∈ L.fns, φ x = x) (Y : ℂ) :
    φ (L.Avr Y) = L.Avr (Y - t) ∧ φ (L.Bvr Y) = L.Bvr (Y - t) := by
  have hT : ∀ l, φ.mapMatrix (L.Tvl Y l) = L.Tvl (Y - t) l := by
    intro l
    have hc : φ (L.cb l) = L.cb l := hf _ (Or.inl (Or.inl (Or.inr ⟨l, rfl⟩)))
    have hci : φ (L.cbi l) = L.cbi l := hf _ (Or.inl (Or.inr ⟨l, rfl⟩))
    ext i j
    fin_cases i <;> fin_cases j <;> simp [R.LevelData.Tvl, hal, hp, hc, hci, map_sub] <;> abel
  have hTP : φ.mapMatrix (L.Tvprod Y) = L.Tvprod (Y - t) := by
    unfold R.LevelData.Tvprod
    rw [map_list_prod, List.map_reverse, List.map_ofFn]
    have hfun : (φ.mapMatrix ∘ L.Tvl Y) = L.Tvl (Y - t) := funext hT
    rw [hfun]
  refine ⟨?_, ?_⟩
  · unfold R.LevelData.Avr
    rw [← hTP]
    rfl
  · unfold R.LevelData.Bvr
    rw [← hTP]
    rfl

noncomputable def cDr (L : LevelData A r) : A →+* A := cj L.Dr L.Dri (Dr_Dri L) (Dri_Dr L)
noncomputable def cDrb (L : LevelData A r) : A →+* A := cj L.Drb L.Drbi (Drb_Drbi L) (Drbi_Drb L)
noncomputable def cZ (L : LevelData A r) : A →+* A := cj L.ζ L.ζi L.ζ_ζi L.ζi_ζ
noncomputable def cZb (L : LevelData A r) : A →+* A := cj L.ζb L.ζbi L.ζb_ζbi L.ζbi_ζb

structure Eff (L : LevelData A r) (φ : A →+* A) (t t' : ℂ) : Prop where
  al : ∀ z, φ (algebraMap ℂ A z) = algebraMap ℂ A z
  f : ∀ x ∈ L.fns, φ x = x
  P : ∀ Y, φ (L.Ar Y) = L.Ar (Y + t) ∧ φ (L.Br Y) = L.Br (Y + t)
  M : ∀ Y, φ (L.Avr Y) = L.Avr (Y - t') ∧ φ (L.Bvr Y) = L.Bvr (Y - t')

theorem Eff.smul {L : LevelData A r} {φ : A →+* A} {t t' : ℂ} (h : Eff L φ t t') (z : ℂ) (x : A) :
    φ (z • x) = z • φ x := by
  rw [Algebra.smul_def, Algebra.smul_def, map_mul, h.al]

theorem eff_Dr (L : LevelData A r) : Eff L (cDr L) 1 0 := by
  have hfix : ∀ x, x * L.Dr = L.Dr * x → cDr L x = x := fun x hx => by
    show L.Dri * x * L.Dr = x
    rw [mul_assoc, hx, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Dri_Dr L, one_mul]
  have hal : ∀ z, cDr L (algebraMap ℂ A z) = algebraMap ℂ A z := fun z => hfix _ (Algebra.commutes z L.Dr)
  have hf : ∀ x ∈ L.fns, cDr L x = x := fun x hx => hfix _ (Formalism.FourierDecayAlt.P.RuleGD.fns_Dr L hx)
  have hp : ∀ l, cDr L (L.p l) = L.p l + algebraMap ℂ A 1 := by
    intro l
    show L.Dri * _ * L.Dr = _
    rw [mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.p_Dr, one_mul, mul_add, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Dri_Dr, one_mul, map_one]
  have hpb : ∀ l, cDr L (L.pb l) = L.pb l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (Formalism.FourierDecayAlt.P.RuleGD.comm_Dr L (fun m => L.pb_c l m))
  exact ⟨hal, hf, fun Y => vecP L (cDr L) 1 hal hp hf Y, fun Y => vecM L (cDr L) 0 hal hpb hf Y⟩

theorem eff_Drb (L : LevelData A r) : Eff L (cDrb L) 0 1 := by
  have hfix : ∀ x, x * L.Drb = L.Drb * x → cDrb L x = x := fun x hx => by
    show L.Drbi * x * L.Drb = x
    rw [mul_assoc, hx, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Drbi_Drb L, one_mul]
  have hal : ∀ z, cDrb L (algebraMap ℂ A z) = algebraMap ℂ A z := fun z => hfix _ (Algebra.commutes z L.Drb)
  have hf : ∀ x ∈ L.fns, cDrb L x = x := fun x hx => hfix _ (Formalism.FourierDecayAlt.P.RuleGD.fns_Drb L hx)
  have hp : ∀ l, cDrb L (L.p l) = L.p l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (Formalism.FourierDecayAlt.P.RuleGD.comm_Drb L (fun m => L.p_cb l m))
  have hpb : ∀ l, cDrb L (L.pb l) = L.pb l + algebraMap ℂ A 1 := by
    intro l
    show L.Drbi * _ * L.Drb = _
    rw [mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.pb_Drb, one_mul, mul_add, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Drbi_Drb, one_mul, map_one]
  exact ⟨hal, hf, fun Y => vecP L (cDrb L) 0 hal hp hf Y, fun Y => vecM L (cDrb L) 1 hal hpb hf Y⟩

theorem eff_Z (L : LevelData A r) : Eff L (cZ L) 0 0 := by
  have hfix : ∀ x, x * L.ζ = L.ζ * x → cZ L x = x := fun x hx => by
    show L.ζi * x * L.ζ = x
    rw [mul_assoc, hx, ← mul_assoc, L.ζi_ζ, one_mul]
  have hal : ∀ z, cZ L (algebraMap ℂ A z) = algebraMap ℂ A z := fun z => hfix _ (Algebra.commutes z L.ζ)
  have hf : ∀ x ∈ L.fns, cZ L x = x := fun x hx => hfix _ (L.fns_comm x hx L.ζ (Or.inr (Or.inl rfl)))
  have hp : ∀ l, cZ L (L.p l) = L.p l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (L.p_ζ l)
  have hpb : ∀ l, cZ L (L.pb l) = L.pb l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (L.pb_ζ l)
  exact ⟨hal, hf, fun Y => vecP L (cZ L) 0 hal hp hf Y, fun Y => vecM L (cZ L) 0 hal hpb hf Y⟩

theorem eff_Zb (L : LevelData A r) : Eff L (cZb L) 0 0 := by
  have hfix : ∀ x, x * L.ζb = L.ζb * x → cZb L x = x := fun x hx => by
    show L.ζbi * x * L.ζb = x
    rw [mul_assoc, hx, ← mul_assoc, L.ζbi_ζb, one_mul]
  have hal : ∀ z, cZb L (algebraMap ℂ A z) = algebraMap ℂ A z := fun z => hfix _ (Algebra.commutes z L.ζb)
  have hf : ∀ x ∈ L.fns, cZb L x = x := fun x hx => hfix _ (L.fns_comm x hx L.ζb (Or.inr (Or.inr (Or.inr (Or.inl rfl)))))
  have hp : ∀ l, cZb L (L.p l) = L.p l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (L.p_ζb l)
  have hpb : ∀ l, cZb L (L.pb l) = L.pb l + algebraMap ℂ A 0 := by
    intro l
    simp only [map_zero, add_zero]
    exact hfix _ (L.pb_ζb l)
  exact ⟨hal, hf, fun Y => vecP L (cZb L) 0 hal hp hf Y, fun Y => vecM L (cZb L) 0 hal hpb hf Y⟩

theorem qq_Dr {L : LevelData A r} {st : Start A} (h : AHyp L st) (Y : ℂ) (i j : Fin 2) :
    cDr L (st.QQ Y i j) = st.QQ Y i j ∧ cDrb L (st.QQ Y i j) = st.QQ Y i j := by
  have hc : ∀ m, st.QQ Y i j * L.c m = L.c m * st.QQ Y i j := fun m => h.qq_site Y i j _ (by simp [siteOps])
  have hcb : ∀ m, st.QQ Y i j * L.cb m = L.cb m * st.QQ Y i j := fun m => h.qq_site Y i j _ (by simp [siteOps])
  refine ⟨?_, ?_⟩
  · show L.Dri * st.QQ Y i j * L.Dr = _
    rw [mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.comm_Dr L hc, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Dri_Dr, one_mul]
  · show L.Drbi * st.QQ Y i j * L.Drb = _
    rw [mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.comm_Drb L hcb, ← mul_assoc, Formalism.FourierDecayAlt.P.RuleGD.Drbi_Drb, one_mul]

theorem cj_add (g gi : A) (h : g * gi = 1) (h' : gi * g = 1) {x a : A} (hx : x * g = g * x + a) :
    cj g gi h h' x = x + gi * a := by
  show gi * x * g = x + gi * a
  rw [mul_assoc, hx, mul_add, ← mul_assoc, h', one_mul]

theorem commute_Avr_Bvr_of_commute_siteOps {L : LevelData A r} {x : A} (hx : ∀ y ∈ siteOps L, Commute x y) (Y : ℂ) :
    Commute x (L.Avr Y) ∧ Commute x (L.Bvr Y) := by
  apply Formalism.FourierDecayAlt.P.TLA.ColumnLift.comm_TM <;> assumption

end

theorem capConj : CapConj := by
  intro A _ _ _ _ r L st h Y hY hi hn s
  obtain ⟨⟨a10, b10, a01, b01, a11, b11⟩, h00⟩ := zetaQQ A r L st h.starLev h.start Y hY hi
  obtain ⟨c00, d00⟩ := h00 hn
  have e1 := eff_Dr L
  have e2 := eff_Drb L
  have e3 := eff_Z L
  have e4 := eff_Zb L
  constructor
  · have hχ : ∀ x, cZb L (cDrb L x) = L.Dbi * x * L.Db := fun x => by
      simp only [cZb, cDrb, cj_apply, LevelData.Dbi, LevelData.Db, mul_assoc]
    have q00 : cZb L (st.QQ Y 0 0) = st.QQ Y 0 0 + L.ζbi * st.QQ Y 1 0 := cj_add _ _ _ _ c00
    have q01 : cZb L (st.QQ Y 0 1) = st.QQ Y 0 1 + L.ζbi * st.QQ Y 1 1 := cj_add _ _ _ _ a01
    have q10 : cZb L (st.QQ Y 1 0) = st.QQ Y 1 0 := cj_fix _ _ _ _ b10.eq
    have q11 : cZb L (st.QQ Y 1 1) = st.QQ Y 1 1 := cj_fix _ _ _ _ b11.eq
    have n1 : cZb L (cDrb L (nP L st Y 1)) = nP L st Y 1 := by
      simp only [nP, map_add (f := _), map_mul, (qq_Dr h Y _ _).2, (e2.P Y).1, (e2.P Y).2, (e4.P Y).1, (e4.P Y).2, add_zero, q10, q11]
    have n0 : cZb L (cDrb L (nP L st Y 0)) = nP L st Y 0 + bP L st Y := by
      simp only [bP, nP, map_add (f := _), map_mul, (qq_Dr h Y _ _).2, (e2.P Y).1, (e2.P Y).2, (e4.P Y).1, (e4.P Y).2, add_zero,
        q00, q01]
      noncomm_ring
    have nb : cZb L (cDrb L (bP L st Y)) = bP L st Y := by
      rw [bP, map_mul, map_mul, n1, e2.f _ (m_ζbi L), e4.f _ (m_ζbi L)]
    induction s with
    | zero => simp [cst]
    | succ s ih =>
      have : L.Dbi ^ (s + 1) * cst L st Y * L.Db ^ (s + 1) = L.Dbi * (L.Dbi ^ s * cst L st Y * L.Db ^ s) * L.Db := by
        rw [pow_succ', pow_succ]; simp only [mul_assoc]
      rw [this, ih, ← hχ]
      simp only [map_add (f := _), map_mul, e2.smul, e4.smul, n0, n1, nb, (e2.M _).1, (e2.M _).2, (e4.M _).1, (e4.M _).2, sub_zero]
      push_cast
      rw [sub_sub, add_smul, one_smul]
      noncomm_ring
  · have hψ : ∀ x, cZ L (cDr L x) = L.Di * x * L.D := fun x => by
      simp only [cZ, cDr, cj_apply, LevelData.Di, LevelData.D, mul_assoc]
    have q00 : cZ L (st.QQ Y 0 0) = st.QQ Y 0 0 + L.ζi * -st.QQ Y 0 1 := cj_add _ _ _ _ (by rw [d00, sub_eq_add_neg])
    have q10 : cZ L (st.QQ Y 1 0) = st.QQ Y 1 0 + L.ζi * -st.QQ Y 1 1 := cj_add _ _ _ _ (by rw [a10, sub_eq_add_neg])
    have q01 : cZ L (st.QQ Y 0 1) = st.QQ Y 0 1 := cj_fix _ _ _ _ b01.eq
    have q11 : cZ L (st.QQ Y 1 1) = st.QQ Y 1 1 := cj_fix _ _ _ _ a11.eq
    have zi : ∀ y ∈ siteOps L, Commute L.ζi y := by
      intro y hy
      simp only [siteOps, Set.mem_union, Set.mem_range] at hy
      rcases hy with ((((⟨l, rfl⟩ | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩) | ⟨l, rfl⟩
      exacts [(L.p_ζi l).symm, (L.pb_ζi l).symm, fc L (m_ζi L) (m_c L l), fc L (m_ζi L) (m_ci L l),
        fc L (m_ζi L) (m_cb L l), fc L (m_ζi L) (m_cbi L l)]
    have bM' : bM L st Y = L.Avr Y * (L.ζi * st.QQ Y 0 1) + L.Bvr Y * (L.ζi * st.QQ Y 1 1) := by
      rw [bM, mul_add, (commute_Avr_Bvr_of_commute_siteOps (h.qq_site Y 0 1) Y).1.eq, (commute_Avr_Bvr_of_commute_siteOps (h.qq_site Y 1 1) Y).2.eq, ← mul_assoc, ← mul_assoc,
        (commute_Avr_Bvr_of_commute_siteOps zi Y).1.eq, (commute_Avr_Bvr_of_commute_siteOps zi Y).2.eq, mul_assoc, mul_assoc]
    have nb : cZ L (cDr L (bM L st Y)) = bM L st Y := by
      simp only [bM, map_add (f := _), map_mul, (qq_Dr h Y _ _).1, (e1.M _).1, (e1.M _).2, (e3.M _).1, (e3.M _).2, sub_zero, q01, q11,
        e1.f _ (m_ζi L), e3.f _ (m_ζi L)]
    induction s with
    | zero => simp only [cst, nP, pow_zero, Nat.cast_zero, zero_smul, add_zero, sub_zero, one_mul, mul_one]; noncomm_ring
    | succ s ih =>
      have : L.Di ^ (s + 1) * cst L st Y * L.D ^ (s + 1) = L.Di * (L.Di ^ s * cst L st Y * L.D ^ s) * L.D := by
        rw [pow_succ', pow_succ]; simp only [mul_assoc]
      rw [this, ih, ← hψ]
      simp only [map_add (f := _), map_sub, map_mul, e1.smul, e3.smul, nb, (qq_Dr h Y _ _).1, (e1.M _).1, (e1.M _).2, (e3.M _).1,
        (e3.M _).2, (e1.P _).1, (e1.P _).2, (e3.P _).1, (e3.P _).2, sub_zero, add_zero, q00, q01, q10, q11]
      push_cast
      rw [add_assoc Y, add_smul, one_smul]
      generalize (s : ℂ) • bM L st Y = u
      rw [bM']
      noncomm_ring

theorem aFromB : AFromB := by
  intro A _ _ _ _ r L st h Y hY hi
  obtain ⟨⟨a10, b10, a01, b01, a11, b11⟩, -⟩ := zetaQQ A r L st h.starLev h.start Y hY hi
  have e1 := eff_Dr L
  have e2 := eff_Drb L
  have e3 := eff_Z L
  have e4 := eff_Zb L
  have xc : ∀ g, Commute (st.x Y) g → Commute (st.xi Y) g := fun g hg => by
    obtain ⟨u, v⟩ := h.start.x_xi Y hi
    calc st.xi Y * g = st.xi Y * g * (st.x Y * st.xi Y) := by rw [u, mul_one]
      _ = st.xi Y * (st.x Y * g) * st.xi Y := by rw [hg.eq]; simp only [mul_assoc]
      _ = g * st.xi Y := by rw [← mul_assoc, v, one_mul]
  have xz : ∀ g ∈ zfns L, Commute (st.xi Y) g := fun g hg => xc g (h.start.x_fn Y g hg)
  have xe : st.x Y = L.GGi * st.QQ Y 1 1 := by rw [h.start.tau, ← mul_assoc, L.GGi_GG, one_mul]
  have xD : Commute (st.xi Y) L.Dr ∧ Commute (st.xi Y) L.Drb := by
    constructor <;> apply xc <;> rw [xe]
    · exact Commute.mul_left (fns_Dr L (m_GGi L)) (comm_Dr L fun l => (h.qq_site Y 1 1 _ (by simp [siteOps])).eq)
    · exact Commute.mul_left (fns_Drb L (m_GGi L)) (comm_Drb L fun l => (h.qq_site Y 1 1 _ (by simp [siteOps])).eq)
  have DD : L.Dr * L.Drb = L.Drb * L.Dr := comm_Drb L fun l => (fns_Dr L (m_cb L l)).symm
  have inv : ∀ {a ai g : A}, a * ai = 1 → ai * a = 1 → g * a = a * g → g * ai = ai * g := fun {a ai g} u v hg => by
    calc g * ai = ai * a * g * ai := by rw [v, one_mul]
      _ = ai * (g * a) * ai := by rw [hg]; simp only [mul_assoc]
      _ = ai * g := by rw [mul_assoc, mul_assoc, u, mul_one]
  have xt : ∀ f g, f ∈ zfns L → g ∈ zfns L → st.xi Y * (f * (g * st.QQ Y 1 1)) = f * g * L.GG := fun f g hf hg => by
    rw [h.start.tau, ← mul_assoc, (xz f hf).eq, mul_assoc, ← mul_assoc (st.xi Y), (xz g hg).eq, mul_assoc,
      ← mul_assoc (st.xi Y), (xz _ (by simp [zfns])).eq, mul_assoc L.GG, (h.start.x_xi Y hi).2, mul_one, mul_assoc]
  constructor
  · have q10 : cZ L (st.QQ Y 1 0) = st.QQ Y 1 0 + L.ζi * -st.QQ Y 1 1 := cj_add _ _ _ _ (by rw [a10, sub_eq_add_neg])
    have q11 : cZ L (st.QQ Y 1 1) = st.QQ Y 1 1 := cj_fix _ _ _ _ a11.eq
    have k1 : bP L st Y * L.Dr = L.Dr * cDr L (bP L st Y) := by
      rw [cDr, cj_apply, ← mul_assoc, ← mul_assoc, Dr_Dri, one_mul]
    have k2 : L.Dr * L.Di * bP L st Y * L.D = L.Dr * cZ L (cDr L (bP L st Y)) := by
      simp only [cZ, cDr, cj_apply, LevelData.Di, LevelData.D, mul_assoc]
    have k3 : cDr L (bP L st Y) - cZ L (cDr L (bP L st Y)) = L.ζbi * (L.ζi * st.QQ Y 1 1) * L.Ar (Y + 1) := by
      simp only [bP, nP, map_add (f := _), map_mul, (qq_Dr h Y _ _).1, (e1.P _).1, (e1.P _).2, (e3.P _).1, (e3.P _).2, add_zero,
        q10, q11, e1.f _ (m_ζbi L), e3.f _ (m_ζbi L)]
      noncomm_ring
    rw [k1, k2, ← mul_sub, k3, mul_assoc (L.Db * gI L), ← mul_assoc (st.xi Y), xD.1.eq, mul_assoc L.Dr,
      ← mul_assoc (st.xi Y), xt _ _ (by simp [zfns]) (by simp [zfns])]
    have s : L.Db * gI L * L.Dr = L.ζb * L.GGi := by
      have t1 : L.Drb * L.ζb * (L.Dri * L.Drbi * L.GGi) * L.Dr = L.ζb * (L.Drb * L.Drbi) * L.GGi * (L.Dri * L.Dr) := by
        have u1 : L.Dri * L.Drbi = L.Drbi * L.Dri :=
          inv (Drb_Drbi L) (Drbi_Drb L) (inv (Dr_Dri L) (Dri_Dr L) DD.symm).symm
        have u2 : L.GGi * L.Dri = L.Dri * L.GGi := inv (Dr_Dri L) (Dri_Dr L) (fns_Dr L (m_GGi L))
        rw [← fns_Drb L (m_ζb L), u1, mul_assoc L.Drbi L.Dri, ← u2]
        simp only [mul_assoc]
      rw [LevelData.Db, gI, t1, Drb_Drbi, Dri_Dr, mul_one, mul_one]
    rw [← mul_assoc, s, aP, ← mul_assoc]
    congr 1
    rw [mul_assoc L.ζb, ← mul_assoc L.GGi, ← mul_assoc L.GGi, fc L (m_GGi L) (m_ζbi L), mul_assoc L.ζbi,
      fc L (m_GGi L) (m_ζi L), ← mul_assoc L.ζbi, mul_assoc (L.ζbi * L.ζi), L.GGi_GG, mul_one, ← mul_assoc, L.ζb_ζbi, one_mul]
  · have q01 : cZb L (st.QQ Y 0 1) = st.QQ Y 0 1 + L.ζbi * st.QQ Y 1 1 := cj_add _ _ _ _ a01
    have q11 : cZb L (st.QQ Y 1 1) = st.QQ Y 1 1 := cj_fix _ _ _ _ b11.eq
    have k1 : bM L st Y * L.Drb = L.Drb * cDrb L (bM L st Y) := by
      rw [cDrb, cj_apply, ← mul_assoc, ← mul_assoc, Drb_Drbi, one_mul]
    have k2 : L.Drb * L.Dbi * bM L st Y * L.Db = L.Drb * cZb L (cDrb L (bM L st Y)) := by
      simp only [cZb, cDrb, cj_apply, LevelData.Dbi, LevelData.Db, mul_assoc]
    have k3 : cDrb L (bM L st Y) - cZb L (cDrb L (bM L st Y)) = -(L.ζi * (L.ζbi * st.QQ Y 1 1) * L.Avr (Y - 1)) := by
      simp only [bM, map_add (f := _), map_mul, (qq_Dr h Y _ _).2, (e2.M _).1, (e2.M _).2, (e4.M _).1, (e4.M _).2, sub_zero,
        q01, q11, e2.f _ (m_ζi L), e4.f _ (m_ζi L)]
      noncomm_ring
    rw [k1, k2, ← mul_sub, k3, mul_neg, mul_neg, neg_neg, mul_assoc (L.D * gI L), ← mul_assoc (st.xi Y), xD.2.eq,
      mul_assoc L.Drb, ← mul_assoc (st.xi Y), xt _ _ (by simp [zfns]) (by simp [zfns])]
    have s : L.D * gI L * L.Drb = L.ζ * L.GGi := by
      have t1 : L.Dr * L.ζ * (L.Dri * L.Drbi * L.GGi) * L.Drb = L.ζ * (L.Dr * L.Dri) * L.GGi * (L.Drbi * L.Drb) := by
        rw [← fns_Dr L (m_ζ L), mul_assoc L.Dri, ← inv (Drb_Drbi L) (Drbi_Drb L) (fns_Drb L (m_GGi L))]
        simp only [mul_assoc]
      rw [LevelData.D, gI, t1, Dr_Dri, Drbi_Drb, mul_one, mul_one]
    rw [← mul_assoc, s, aM, ← mul_assoc]
    congr 1
    rw [mul_assoc L.ζ, ← mul_assoc L.GGi, ← mul_assoc L.GGi, fc L (m_GGi L) (m_ζi L), mul_assoc L.ζi,
      fc L (m_GGi L) (m_ζbi L), ← mul_assoc L.ζi, mul_assoc (L.ζi * L.ζbi), L.GGi_GG, mul_one, ← mul_assoc, L.ζ_ζi, one_mul]

end Formalism.FourierDecayAlt.TL
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Formalism.HermitianCurvature.HermitianCurvatureProofs.CommuteAvrBvrOfCommuteSiteOps =====
