module

public import Formalism.LocalToGlobal.CharacterGerms.RowTiePGerm
import Formalism.FormalGroupLog.FormalGroupLogProofs.ChainRule

@[expose] public section

noncomputable section

open Classical

namespace Formalism.L2.FormalSeriesBounds

namespace LogEx

open ReciprocityTheory.ChartRestriction.G.Geo.Tor.Germ MvPowerSeries PartialDerivEval

section Law

variable {C : Type} [Field C] [CharZero C] {d : ℕ} (G : FGLaw C d)

theorem constant_zero_zero_point {n : ℕ} (P : Pt C n d) (hP : ∀ j, constantCoeff (P j) = 0) :
    Z0 (![0, P] : Fin 2 → Pt C n d) := by
  intro k i; fin_cases k
  · simp
  · exact hP i

alias coordinate_point_constantCoeff := _root_.Formalism.L2.FormalSeriesBounds.PartialDerivEval.z0_pt

theorem eval_eval_pair {m n : ℕ} {a b : Pt C m d} (hab : Z0 (![a, b] : Fin 2 → Pt C m d)) {E : Fin m → Pt C n d}
    (hE : Z0 E) {a' b' : Pt C n d} (ha : ∀ i, ev E (a i) = a' i) (hb : ∀ i, ev E (b i) = b' i) (f : PS C 2 d) :
    ev E (ev ![a, b] f) = ev ![a', b'] f := by
  rw [ev_ev hab hE]
  congr 1
  funext k i
  fin_cases k
  · exact ha i
  · exact hb i

theorem eval_eval_single {m n : ℕ} {a : Pt C m d} (ha0 : Z0 (![a] : Fin 1 → Pt C m d)) {E : Fin m → Pt C n d} (hE : Z0 E)
    {a' : Pt C n d} (ha : ∀ i, ev E (a i) = a' i) (f : PS C 1 d) : ev E (ev ![a] f) = ev ![a'] f := by
  rw [ev_ev ha0 hE]
  congr 1
  funext k i
  fin_cases k
  exact ha i

theorem ev_self1 (g : PS C 1 d) : ev (n := 1) ![pt C d 0] g = g := by
  unfold ev
  have h : (fun p : Fin 1 × Fin d => (![pt C d 0] : Fin 1 → Pt C 1 d) p.1 p.2) = X := by
    funext p
    obtain ⟨k, j⟩ := p
    fin_cases k
    rfl
  rw [h, subst_self]
  rfl

theorem F_0P {n : ℕ} (P : Pt C n d) (hP : ∀ j, constantCoeff (P j) = 0) (a : Fin d) :
    ev ![0, P] (G.F a) = P a := by
  have h := congrArg (ev (![P] : Fin 1 → Pt C n d)) (G.unit a)
  rw [ev_ev (constant_zero_zero_point (pt C d 0) (coordinate_point_constantCoeff 0)) (z0_1 P hP), ev_X (z0_1 P hP)] at h
  have e : (fun k i => ev (![P] : Fin 1 → Pt C n d) ((![0, pt C d 0] : Fin 2 → Pt C 1 d) k i)) =
      (![0, P] : Fin 2 → Pt C n d) := by
    funext k i
    fin_cases k
    · exact ev_zero (z0_1 P hP)
    · exact ev_X (z0_1 P hP) 0 i
  rw [e] at h
  exact h

theorem group_law_zero_right {n : ℕ} (P : Pt C n d) (hP : ∀ j, constantCoeff (P j) = 0) (a : Fin d) :
    ev ![P, 0] (G.F a) = P a := by
  rw [← G.comm a, eval_eval_pair (z0_pp 1 0) (z0_p0 P hP) (a' := 0) (b' := P)
    (fun i => ev_X (z0_p0 P hP) 1 i) (fun i => ev_X (z0_p0 P hP) 0 i)]
  exact F_0P G P hP a

def Mm (j k : Fin d) : PS C 1 d :=
  ev (n := 1) ![pt C d 0, 0] (pderiv (R := C) ((1 : Fin 2), k) (G.F j))

theorem constant_zero_first_zero : Z0 (![pt C d 0, 0] : Fin 2 → Pt C 1 d) := z0_p0 _ (coordinate_point_constantCoeff 0)

def MM : Matrix (Fin d) (Fin d) (PS C 1 d) := Matrix.of fun j k => Mm G j k

theorem pderiv_eval_single {n : ℕ} (P : Pt C n d) (hP : ∀ j, constantCoeff (P j) = 0) (g : PS C 1 d) (q : Fin n × Fin d) :
    pderiv (R := C) q (ev ![P] g) =
      ∑ b, ev ![P] (pderiv (R := C) ((0 : Fin 1), b) g) * pderiv (R := C) q (P b) := by
  unfold ev
  rw [Formalism.G.LogCR.pderiv_subst (a := fun p : Fin 1 × Fin d => (![P] : Fin 1 → Pt C n d) p.1 p.2)
    (fun p => z0_1 P hP p.1 p.2) g q, Fintype.sum_prod_type, Fin.sum_univ_one]
  rfl

theorem eval_group_law_at_zero (h : PS C 1 d) : ev (n := 1) ![pt C d 0, 0] (ev (n := 2) ![G.F] h) = h := by
  rw [eval_eval_single (z0_1 G.F G.const) constant_zero_first_zero (a' := pt C d 0) (fun b => group_law_zero_right G (pt C d 0) (coordinate_point_constantCoeff 0) b), ev_self1]

end Law

end LogEx

end Formalism.L2.FormalSeriesBounds
