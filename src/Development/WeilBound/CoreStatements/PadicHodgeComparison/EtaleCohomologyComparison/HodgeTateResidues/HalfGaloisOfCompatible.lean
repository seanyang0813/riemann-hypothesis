module

public import Mathlib.Algebra.Algebra.Defs
public import Mathlib.Data.Finset.NatAntidiagonal
public import Mathlib.LinearAlgebra.Basis.Defs
public import Mathlib.LinearAlgebra.Dual.Defs
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.FirstChernHodgeTateCompatAlt
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.KProps
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullRId
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.RedPullPd
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.ToYIsFirstChernIff
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsLiftOneSOfLevEqOne

-- This file was produced by scripts/clump.py from the modules listed below.
-- Members: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.Same, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CompId, Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.HalfGaloisOfCompatible

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.Same =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.Same", "h": "module\n\npublic import Mathlib.Algebra.Algebra.Defs\npublic import Mathlib.Data.Finset.NatAntidiagonal\npublic import Mathlib.LinearAlgebra.Basis.Defs\npublic import Mathlib.LinearAlgebra.Dual.Defs\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Data.Nat.Choose.Multinomial\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.PiTensorProduct\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.RingTheory.WittVector.IsPoly\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\nimport Mathlib.Tactic.ReduceModChar\nimport Mathlib.Topology.Sheaves.Init\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open Module

namespace CrystallineSemistableComparison.HT.H2

variable {K B B' E : Type} [Field K] [CommRing B] [CommRing B'] [CommRing E] [Algebra K B] [Algebra K B']
  {V V' V'' : ℕ → Type 1} [∀ a, AddCommGroup (V a)] [∀ a, Module K (V a)] [∀ a, AddCommGroup (V' a)] [∀ a, Module K (V' a)]
  [∀ a, AddCommGroup (V'' a)] [∀ a, Module K (V'' a)]
  {W : Type 1} [AddCommGroup W] [Module B W]

structure ACo (θ : B →+* E) (μ : ∀ a, V a →ₛₗ[algebraMap K B] W) (r : ℕ) (co : W →+ ∀ a, Dual K (V a) →+ E) : Prop where
  smul : ∀ (b : B) w a φ, co (b • w) a φ = θ b * co w a φ
  same : ∀ a ≤ r, ∀ y φ, co (μ a y) a φ = θ (algebraMap K B (φ y))
  diff : ∀ a a', a ≠ a' → ∀ y, co (μ a' y) a = 0
  span : Submodule.span B {w : W | ∃ a ≤ r, ∃ y, w = μ a y} = ⊤

theorem ACo.hom {W' : Type 1} [AddCommGroup W'] [Module B' W'] {θ : B →+* E} {θ' : B' →+* E}
    {μ : ∀ a, V a →ₛₗ[algebraMap K B] W} {μ' : ∀ a, V' a →ₛₗ[algebraMap K B'] W'} {r r' : ℕ}
    {co : W →+ ∀ a, Dual K (V a) →+ E} {co' : W' →+ ∀ a, Dual K (V' a) →+ E} (h : ACo θ μ r co) (h' : ACo θ' μ' r' co')
    (hr : r ≤ r') {sB : B →+* B'} (sC : E →+* E) (hθ : ∀ b, θ' (sB b) = sC (θ b))
    (ho : ∀ k : K, sB (algebraMap K B k) = algebraMap K B' k) (f : W →ₛₗ[sB] W') (p : ∀ a, V a →ₗ[K] V' a) (u : ℕ → B')
    (hμ : ∀ a ≤ r, ∀ y, f (μ a y) = u a • μ' a (p a y)) (w : W) (a : ℕ) (φ : Dual K (V' a)) :
    co' (f w) a φ = θ' (u a) * sC (co w a (φ ∘ₗ p a)) := by
  have hw : w ∈ Submodule.span B {w : W | ∃ a ≤ r, ∃ y, w = μ a y} := h.span ▸ trivial
  induction hw using Submodule.span_induction with
  | mem w hw =>
    obtain ⟨a', ha', y, rfl⟩ := hw
    rw [hμ a' ha', h'.smul]
    by_cases e : a = a'
    · subst e
      rw [h'.same a (ha'.trans hr), h.same a ha', ← hθ, ho]; rfl
    · rw [h'.diff a a' e, h.diff a a' e]; simp
  | zero => simp
  | add x y _ _ hx hy => simp only [map_add (f := _), Pi.add_apply, AddMonoidHom.add_apply, hx, hy, mul_add]
  | smul b x _ hx => rw [map_smulₛₗ, h'.smul, h.smul, hx, hθ, map_mul]; ring

theorem ACo.cup {W' W'' : Type 1} [AddCommGroup W'] [Module B W'] [AddCommGroup W''] [Module B W''] {θ : B →+* E}
    {μ : ∀ a, V a →ₛₗ[algebraMap K B] W} {μ' : ∀ a, V' a →ₛₗ[algebraMap K B] W'} {μ'' : ∀ a, V'' a →ₛₗ[algebraMap K B] W''}
    {r r' s : ℕ} {co : W →+ ∀ a, Dual K (V a) →+ E} {co' : W' →+ ∀ a, Dual K (V' a) →+ E} {co'' : W'' →+ ∀ a, Dual K (V'' a) →+ E}
    (h : ACo θ μ r co) (h' : ACo θ μ' r' co') (h'' : ACo θ μ'' s co'') (hs : r + r' = s) (o : K →+* E)
    (ho : ∀ k, θ (algebraMap K B k) = o k) (cu : W →ₗ[B] W' →ₗ[B] W'')
    (cV : ∀ {a a' c : ℕ}, a + a' = c → V a → V' a' → V'' c)
    (hV : ∀ {a a' c : ℕ} (e : a + a' = c), ∃ b : V a →ₗ[K] V' a' →ₗ[K] V'' c, ∀ x y, b x y = cV e x y)
    (hμ : ∀ {a a' c : ℕ} (e : a + a' = c), a ≤ r → a' ≤ r' → ∀ y y', cu (μ a y) (μ' a' y') = μ'' c (cV e y y'))
    {m m' : ℕ → ℕ} (b : ∀ a, Basis (Fin (m a)) K (V a)) (b' : ∀ a, Basis (Fin (m' a)) K (V' a)) (c : ℕ) (φ : Dual K (V'' c))
    (w : W) (w' : W') :
    co'' (cu w w') c φ = ∑ p : (Finset.HasAntidiagonal.antidiagonal c : Finset (ℕ × ℕ)), ∑ t, ∑ t',
      co w p.1.1 ((b p.1.1).coord t) * co' w' p.1.2 ((b' p.1.2).coord t') *
        o (φ (cV (Finset.HasAntidiagonal.mem_antidiagonal.1 p.2) (b p.1.1 t) (b' p.1.2 t'))) := by
  have hw : w ∈ Submodule.span B {w : W | ∃ a ≤ r, ∃ y, w = μ a y} := h.span ▸ trivial
  induction hw using Submodule.span_induction with
  | zero => simp
  | add x y _ _ hx hy =>
    simp only [map_add (f := _), LinearMap.add_apply, Pi.add_apply, AddMonoidHom.add_apply, hx, hy, add_mul, Finset.sum_add_distrib]
  | smul d x _ hx =>
    rw [map_smul, LinearMap.smul_apply, h''.smul, hx]
    simp only [h.smul, Finset.mul_sum, mul_assoc]
  | mem w hw =>
  obtain ⟨a, ha, y, rfl⟩ := hw
  have hw' : w' ∈ Submodule.span B {w : W' | ∃ a ≤ r', ∃ y, w = μ' a y} := h'.span ▸ trivial
  induction hw' using Submodule.span_induction with
  | zero => simp
  | add x y _ _ hx hy =>
    simp only [map_add (f := _), Pi.add_apply, AddMonoidHom.add_apply, hx, hy, add_mul, mul_add, Finset.sum_add_distrib]
  | smul d x _ hx =>
    rw [map_smul, h''.smul, hx]
    simp only [h'.smul, Finset.mul_sum]
    refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
  | mem w' hw' =>
  obtain ⟨a', ha', y', rfl⟩ := hw'
  have hz : ∀ p : (Finset.HasAntidiagonal.antidiagonal c : Finset (ℕ × ℕ)), p.1 ≠ (a, a') → (∑ t, ∑ t',
      co (μ a y) p.1.1 ((b p.1.1).coord t) * co' (μ' a' y') p.1.2 ((b' p.1.2).coord t') *
        o (φ (cV (Finset.HasAntidiagonal.mem_antidiagonal.1 p.2) (b p.1.1 t) (b' p.1.2 t')))) = 0 := by
    intro p hp
    by_cases e : p.1.1 = a
    · have e' : p.1.2 ≠ a' := fun e' => hp (Prod.ext e e')
      simp [h'.diff _ _ e']
    · simp [h.diff _ _ e]
  by_cases e : a + a' = c
  · rw [hμ e ha ha', h''.same c (by omega), ho,
      Finset.sum_eq_single ⟨(a, a'), Finset.HasAntidiagonal.mem_antidiagonal.2 e⟩ (fun p _ hp => hz p fun e => hp (Subtype.ext e))
        (fun hh => absurd (Finset.mem_univ _) hh)]
    obtain ⟨β, hβ⟩ := hV e

    simp only [h.same a ha, h'.same a' ha', ho, ← hβ, ← map_mul, ← map_sum]
    congr 1
    conv_lhs => rw [← (b a).sum_repr y, ← (b' a').sum_repr y']

    simp only [map_sum, map_smul, LinearMap.sum_apply, LinearMap.smul_apply, smul_eq_mul, Basis.coord_apply, Finset.mul_sum]
    rw [Finset.sum_comm]
    refine Finset.sum_congr rfl fun _ _ => Finset.sum_congr rfl fun _ _ => by ring
  · rw [hμ rfl ha ha', h''.diff c _ (Ne.symm e), AddMonoidHom.zero_apply]
    refine (Finset.sum_eq_zero fun p _ => hz p fun e' => e ?_).symm
    have := Finset.HasAntidiagonal.mem_antidiagonal.1 p.2
    rw [e'] at this
    exact this

end CrystallineSemistableComparison.HT.H2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.Same =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CompId =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CompId", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.FirstChernHodgeTateCompatAlt\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.Same\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.KProps\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.GammaIndependence.PullRId\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.CechPairings.TotPairing\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.RedPullPd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris DividedPowers

namespace CrystallineSemistableComparison.HT.H2

open Pb

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} {Y : CB l K}


open Classical in
def coL {m : ℕ} (L : Lv Y m) (M : Model l K) (r j : ℕ) : HG (L.QB M) r j →+ ∀ a, Module.Dual K (Hdg M.q a j) →+ ℂ_[l] :=
  if h : ∃ co, IsCo L.γB M.q (L.QB M) L.θ L.tB_mem r j co then h.choose else 0

theorem isCo (hC : CoEx l K) {m : ℕ} (L : Lv Y m) {M : Model l K} (hM : M.Sm) {r : ℕ} (j : ℕ) (h : r < m) :
    IsCo L.γB M.q (L.QB M) L.θ L.tB_mem r j (coL L M r j) := by
  rw [coL, dite_eq_left (hC L M hM r j h).2]
  exact (hC L M hM r j h).2.choose_spec

theorem aCo (hC : CoEx l K) {m : ℕ} (L : Lv Y m) {M : Model l K} (hM : M.Sm) {r : ℕ} (j : ℕ) (h : r < m) :
    ACo (V := fun a => Hdg M.q a j) L.θ (fun a => L.μ M a r j) r (coL L M r j) :=
  ⟨(isCo hC L hM j h).smul, (isCo hC L hM j h).same, (isCo hC L hM j h).diff, (hC L M hM r j h).1⟩

def idH {m : ℕ} (L : Lv Y m) : LHom L L (RingHom.id _) (fun _ => RingHom.id _) (RingHom.id _) 1 where
  le := le_rfl
  sA := RingHom.id _
  sB := RingHom.id _
  dpA := (DPMorphism.id L.γ).isDPMorphism
  dpB := (DPMorphism.id L.γB).isDPMorphism
  oA _ := rfl
  oB _ := rfl
  ι _ := rfl
  lam _ := rfl
  cris _ _ := rfl
  θ _ := rfl
  cB := 1
  t := (one_mul _).symm
  θc := map_one _

theorem co_hom (hC : CoEx l K) (hμ : HomMu l K) {m m' : ℕ} {L : Lv Y m} {L' : Lv Y m'} {sΛ : Y.Λ →+* Y.Λ}
    {sn : ∀ n, Y.R n →+* Y.R n} {sC : ℂ_[l] →+* ℂ_[l]} {c : ℂ_[l]} (h : LHom L L' sΛ sn sC c) {M N : Model l K} (hM : M.Sm) (hN : N.Sm)
    (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) {r : ℕ} (j : ℕ) (hr : r < m') (w : HG (L.QB N) r j) (a : ℕ)
    (φ : Module.Dual K (Hdg M.q a j)) :
    coL L' M r j (h.fW u hu r j w) a φ =
      c ^ (r - a) * sC (coL L N r j w a (φ ∘ₗ pullH (Model.genMap u hu) (Model.genMap_q u hu) a j)) := by
  have := (aCo hC L hN j (hr.trans_le h.le)).hom (aCo hC L' hM j hr) le_rfl sC h.θ h.oB (h.fW u hu r j)
    (fun a => pullH (Model.genMap u hu) (Model.genMap_q u hu) a j) (fun a => h.cB ^ (r - a)) (fun a _ y => hμ h u hu a r j y) w a φ
  rw [map_pow, h.θc] at this
  exact this

def pullM (Y : CB l K) {M N : Model l K} (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) (n : ℕ) :
    GlobalTheory.LogCris.Mor (Y.L N n) (Y.L M n) (RingHom.id _) :=
  B.crMor (F := B.schFn N.p) (F' := B.schFn M.p) (b := Y.bs n) (b' := Y.bs n) (ht := rfl) (ht' := rfl) (RingHom.id _) rfl
    (DPMorphism.id _).isDPMorphism ((B.schMap u hu).ptK _) fun _ _ _ => rfl

theorem comp_id (hF : KForm) (M : Model l K) (h : 𝟙 M.X ≫ M.p = M.p) (a j : ℕ) (φ : Module.Dual K (Hdg M.q a j)) :
    φ ∘ₗ pullH (Model.genMap (𝟙 M.X) h) (Model.genMap_q _ h) a j = φ :=
  LinearMap.ext fun x => congrArg φ (hF.pull_id M.q _ _ (genMap_id M h) a j x)

theorem down (hC : CoEx l K) (hR : HomRho l K) (hμ : HomMu l K) (hF : KForm) {m m' : ℕ} {L : Lv Y m} {L' : Lv Y m'}
    (h : LHom L L' (RingHom.id _) (fun _ => RingHom.id _) (RingHom.id _) 1) {M : Model l K} (hM : M.Sm) {r j : ℕ} (hr : r < m')
    (x : Y.Fam M r j) (w : HG (L.QB M) r j) (hw : L.Rho x w) : ∃ w', L'.Rho x w' ∧ coL L' M r j w' = coL L M r j w := by
  have h1 := hR h (𝟙 M.X) (Category.id_comp _) (pullM Y (𝟙 M.X) (Category.id_comp _)) (fun _ _ _ => rfl) r j x w hw
  have e : (fun n => (pdOm (pullM Y (𝟙 M.X) (Category.id_comp _) n) (RingHom.id _) (h.cris n) r).pull j (x n)) = x :=
    funext fun n => pd_id (pullM Y (𝟙 M.X) (Category.id_comp _) n) (h.cris n) (fun _ => rfl)
      (fun B₀ y => Category.comp_id (show Spec B₀ ⟶ M.X from y.1.2)) r j (x n)
  rw [e] at h1
  refine ⟨_, h1, funext fun a => AddMonoidHom.ext fun φ => ?_⟩
  rw [co_hom hC hμ h hM hM _ _ j hr, comp_id hF, one_pow, one_mul]; rfl

variable (S : ∀ m, Lv Y (m + 1))


open Classical in
def gam {M : Model l K} {r j : ℕ} (x : Y.Fam M r j) : ∀ a, Module.Dual K (Hdg M.q a j) →+ ℂ_[l] :=
  if h : ∃ w, (S r).Rho x w then coL (S r) M r j h.choose else 0

variable {S}

structure Hyp (S : ∀ m, Lv Y (m + 1)) : Prop where
  ex : RhoEx l K
  co : CoEx l K
  hom : HomRho l K
  mu : HomMu l K
  mul : MulRho l K
  c1 : FirstChernHodgeTateCompat l K
  form : KForm
  dn : ∀ m, Nonempty (LHom (S (m + 1)) (S m) (RingHom.id _) (fun _ => RingHom.id _) (RingHom.id _) 1)

namespace Hyp
variable (H : Hyp S) {M : Model l K} (hM : M.Sm)
include H hM

theorem gam_eq {r j m : ℕ} (hm : r ≤ m) {x : Y.Fam M r j} (hx : CB.Comp x) {w : HG ((S m).QB M) r j} (hw : (S m).Rho x w) :
    gam S x = coL (S m) M r j w := by
  induction m, hm using Nat.le_induction with
  | base =>
    rw [gam, dite_eq_left ⟨w, hw⟩]
    exact congrArg _ ((H.ex.ex (S r) M hM r j r.lt_succ_self x hx).unique (Exists.choose_spec ⟨w, hw⟩) hw)
  | succ m hm ih =>
    obtain ⟨w', h1, h2⟩ := down H.co H.hom H.mu H.form (H.dn m).some hM (Nat.lt_succ_of_le hm) x w hw
    exact (ih h1).trans h2

theorem rho {r j m : ℕ} (hm : r ≤ m) {x : Y.Fam M r j} (hx : CB.Comp x) : ∃ w, (S m).Rho x w :=
  (H.ex.ex (S m) M hM r j (Nat.lt_succ_of_le hm) x hx).exists

theorem add {r j : ℕ} {x y : Y.Fam M r j} (hx : CB.Comp x) (hy : CB.Comp y) (hxy : CB.Comp (x + y)) (a : ℕ) :
    gam S (x + y) a = gam S x a + gam S y a := by
  obtain ⟨w, hw⟩ := H.rho hM le_rfl hx
  obtain ⟨w', hw'⟩ := H.rho hM le_rfl hy
  rw [H.gam_eq hM le_rfl hxy (H.ex.add _ _ _ _ _ _ _ _ hw hw'), H.gam_eq hM le_rfl hx hw, H.gam_eq hM le_rfl hy hw', map_add (f := _)]
  rfl

theorem lin {r j : ℕ} (c : Y.Λ) {x : Y.Fam M r j} (hx : CB.Comp x) (hc : CB.Comp (c • x)) (a : ℕ) (φ : Module.Dual K (Hdg M.q a j)) :
    gam S (c • x) a φ = Y.θ c * gam S x a φ := by
  obtain ⟨w, hw⟩ := H.rho hM le_rfl hx
  rw [H.gam_eq hM le_rfl hc (H.ex.smul _ _ _ _ c _ _ hw), H.gam_eq hM le_rfl hx hw, ← (S r).θ_lam]
  exact (isCo H.co (S r) hM j r.lt_succ_self).smul _ _ _ _

theorem lin' {r j : ℕ} {x : Y.Fam M r j} (hx : CB.Comp x) (a : ℕ) (k : K) (φ : Module.Dual K (Hdg M.q a j)) :
    gam S x a (k • φ) = kC K k * gam S x a φ := by
  obtain ⟨w, hw⟩ := H.rho hM le_rfl hx
  rw [H.gam_eq hM le_rfl hx hw, ← (S r).θ_K]
  exact (isCo H.co (S r) hM j r.lt_succ_self).lin _ _ _ _

theorem big {r j : ℕ} {x : Y.Fam M r j} (hx : CB.Comp x) (a : ℕ) (ha : r < a) : gam S x a = 0 := by
  obtain ⟨w, hw⟩ := H.rho hM le_rfl hx
  rw [H.gam_eq hM le_rfl hx hw]
  exact (isCo H.co (S r) hM j r.lt_succ_self).big a ha w


theorem sh {r r' j : ℕ} (k : ℕ) (h : r + k = r') {x : Y.Fam M r j} (hx : CB.Comp x) (hs : CB.Comp (CB.shS k h x)) (a : ℕ) :
    gam S (CB.shS k h x) a = gam S x a := by
  have hr : r ≤ r' := by omega
  obtain ⟨w, hw⟩ := H.rho hM hr hx
  rw [H.gam_eq hM le_rfl hs (H.mul.sh _ _ k h _ _ hw), H.gam_eq hM hr hx hw]
  refine AddMonoidHom.ext fun φ => ?_
  have := (aCo H.co (S r') hM j (Nat.lt_succ_of_le hr)).hom (aCo H.co (S r') hM j r'.lt_succ_self) hr (sB := RingHom.id _)
    (RingHom.id _) (fun _ => rfl) (fun _ => rfl) (shG ((S r').QB M) (S r').tB_mem k h j) (fun _ => LinearMap.id) (fun _ => 1)
    (fun a ha y => (H.mul.sh_μ _ _ k h a ha y).trans (one_smul _ _).symm) w a φ
  rw [map_one, one_mul] at this
  exact this

theorem hom' {N : Model l K} (hN : N.Sm) {sΛ : Y.Λ →+* Y.Λ} {sn : ∀ n, Y.R n →+* Y.R n} {sC : ℂ_[l] →+* ℂ_[l]} {c : ℂ_[l]} {r j : ℕ}
    (h : LHom (S r) (S r) sΛ sn sC c) (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p)
    (mm : ∀ n, GlobalTheory.LogCris.Mor (Y.L N n) (Y.L M n) (sn n))
    (hpt : ∀ (n : ℕ) (B₀ : CommRingCat.{0}) (y : (Y.L M n).Pt.obj B₀), ((mm n).pt.app B₀ y).1.2 = (show Spec B₀ ⟶ M.X from y.1.2) ≫ u)
    {x : Y.Fam N r j} (hx : CB.Comp x) (x' : Y.Fam M r j) (hx' : CB.Comp x')
    (hc : ∀ n a, sn n (Y.c n a) = Y.c n (sΛ a)) (e : ∀ n, x' n = (pdOm (mm n) sΛ (hc n) r).pull j (x n))
    (a : ℕ) (φ : Module.Dual K (Hdg M.q a j)) :
    gam S x' a φ = c ^ (r - a) * sC (gam S x a (φ ∘ₗ pullH (Model.genMap u hu) (Model.genMap_q u hu) a j)) := by
  obtain ⟨w, hw⟩ := H.rho hN le_rfl hx
  have h1 := H.hom h u hu mm hpt r j x w hw
  obtain rfl : x' = fun n => (pdOm (mm n) sΛ (h.cris n) r).pull j (x n) := funext e
  rw [H.gam_eq hM le_rfl hx' h1, H.gam_eq hN le_rfl hx hw]
  exact co_hom H.co H.mu h hM hN u hu j r.lt_succ_self w a φ

theorem nat {N : Model l K} (hN : N.Sm) {r j : ℕ} (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p)
    {x : Y.Fam N r j} (hx : CB.Comp x) (x' : Y.Fam M r j) (hx' : CB.Comp x')
    (e : ∀ n, x' n = (pdOm (c := Y.c n) (c' := Y.c n) (pullM Y u hu n) (RingHom.id Y.Λ) (fun _ => rfl) r).pull j (x n))
    (a : ℕ) (φ : Module.Dual K (Hdg M.q a j)) :
    gam S x' a φ = gam S x a (φ ∘ₗ pullH (Model.genMap u hu) (Model.genMap_q u hu) a j) := by
  rw [H.hom' hM hN (idH (S r)) u hu (pullM Y u hu) (fun _ _ _ => rfl) hx x' hx' (fun _ _ => rfl) e, one_pow, one_mul]; rfl

theorem gal {sΛ : Y.Λ →+* Y.Λ} {sn : ∀ n, Y.R n →+* Y.R n} {sC : ℂ_[l] →+* ℂ_[l]} {c : ℂ_[l]} {r j : ℕ}
    (h : LHom (S r) (S r) sΛ sn sC c) (mm : ∀ n, GlobalTheory.LogCris.Mor (Y.L M n) (Y.L M n) (sn n))
    (hpt : ∀ (n : ℕ) (B₀ : CommRingCat.{0}) (y : (Y.L M n).Pt.obj B₀), ((mm n).pt.app B₀ y).1.2 = y.1.2)
    {x : Y.Fam M r j} (hx : CB.Comp x) (x' : Y.Fam M r j) (hx' : CB.Comp x')
    (hc : ∀ n a, sn n (Y.c n a) = Y.c n (sΛ a)) (e : ∀ n, x' n = (pdOm (mm n) sΛ (hc n) r).pull j (x n))
    (a : ℕ) (φ : Module.Dual K (Hdg M.q a j)) :
    c ^ a * gam S x' a φ = c ^ r * sC (gam S x a φ) := by
  rcases le_or_gt a r with ha | ha
  · rw [H.hom' hM hM h (𝟙 M.X) (Category.id_comp _) mm (fun n B₀ y => (hpt n B₀ y).trans (Category.comp_id _).symm) hx x' hx' hc e,
      comp_id H.form, ← mul_assoc, ← pow_add, Nat.add_sub_cancel' ha]
  · rw [H.big hM hx a ha, H.big hM hx' a ha]; simp

theorem cup {r r' s i j : ℕ} (h : r + r' = s) {x : Y.Fam M r i} {y : Y.Fam M r' j} (hx : CB.Comp x) (hy : CB.Comp y)
    (hxy : CB.Comp (CB.cupS h x y)) {m m' : ℕ → ℕ} (b : ∀ a, Module.Basis (Fin (m a)) K (Hdg M.q a i))
    (b' : ∀ a, Module.Basis (Fin (m' a)) K (Hdg M.q a j)) (c : ℕ) (φ : Module.Dual K (Hdg M.q c (i + j))) :
    gam S (CB.cupS h x y) c φ = ∑ p : (Finset.HasAntidiagonal.antidiagonal c : Finset (ℕ × ℕ)), ∑ s, ∑ s',
      gam S x p.1.1 ((b p.1.1).coord s) * gam S y p.1.2 ((b' p.1.2).coord s') *
        kC K (φ (cupH M.q (Finset.HasAntidiagonal.mem_antidiagonal.1 p.2) rfl (b p.1.1 s) (b' p.1.2 s'))) := by
  have h1 : r ≤ s := by omega
  have h2 : r' ≤ s := by omega
  obtain ⟨w, hw⟩ := H.rho hM h1 hx
  obtain ⟨w', hw'⟩ := H.rho hM h2 hy
  obtain ⟨β, hβ⟩ := CrystallineSemistableComparison.P.cup_bilin (grOkQ ((S s).QB M) h).pair (rfl : i + j = i + j)
  rw [H.gam_eq hM le_rfl hxy (H.mul.cup _ _ h _ _ _ _ hw hw'), H.gam_eq hM h1 hx hw, H.gam_eq hM h2 hy hw']
  have := (aCo H.co (S s) hM i (Nat.lt_succ_of_le h1)).cup (aCo H.co (S s) hM j (Nat.lt_succ_of_le h2))
    (aCo H.co (S s) hM (i + j) s.lt_succ_self) h (kC K) (S s).θ_K β (fun e y y' => cupH M.q e rfl y y')
    (fun e => H.form.bilin M.q e rfl) (fun e ha ha' y y' => (hβ _ _).trans (H.mul.cup_μ _ _ h e ha ha' y y')) b b' c φ w w'
  rw [hβ] at this
  exact this

theorem one (h1 : CB.Comp (Y.oneS M)) (φ : Module.Dual K (Hdg M.q 0 0)) : gam S (Y.oneS M) 0 φ = kC K (φ (oneH M.q)) := by
  rw [H.gam_eq hM le_rfl h1 (H.mul.one (S 0) M), ← (S 0).θ_K]
  exact (isCo H.co (S 0) hM 0 Nat.one_pos).same 0 le_rfl _ _

theorem c1' (D : E.LineData M.X) (hD : sSup (𝒱D D) = ⊤) (x : Y.Fam M 1 2) (c : Hdg M.q 1 2) (hx : CB.Comp x) (h1 : CB.IsFirstChernClassInFamily D x)
    (h2 : IsDlogFirstChernClass M.q (genD D) c) : (∀ φ, gam S x 1 φ = kC K (φ c)) ∧ ∀ a, a ≠ 1 → gam S x a = 0 := by
  rw [H.gam_eq hM le_rfl hx (H.c1 (S 1) M Nat.one_lt_two D hD x c h1 h2)]
  exact ⟨fun φ => ((isCo H.co (S 1) hM 2 Nat.one_lt_two).same 1 le_rfl _ _).trans ((S 1).θ_K _),
    fun a ha => (isCo H.co (S 1) hM 2 Nat.one_lt_two).diff a 1 ha _⟩

end Hyp

end CrystallineSemistableComparison.HT.H2
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CompId =====

-- ===== clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.HalfGaloisOfCompatible =====
-- clump-header: {"m": "Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.HalfGaloisOfCompatible", "h": "module\n\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.ToYIsFirstChernIff\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.CompId\npublic import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.IsLiftOneSOfLevEqOne\nimport Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.RedPullPd\nimport Mathlib.Algebra.Order.Floor.Extended\nimport Mathlib.Algebra.Order.Floor.Semifield\nimport Mathlib.Algebra.Order.Interval.Basic\nimport Mathlib.Analysis.Complex.UpperHalfPlane.Basic\nimport Mathlib.Analysis.Normed.Algebra.GelfandRadius\nimport Mathlib.Analysis.SpecialFunctions.Bernstein\nimport Mathlib.Analysis.SpecialFunctions.Gamma.Basic\nimport Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp\nimport Mathlib.Combinatorics.Enumerative.DyckWord\nimport Mathlib.Combinatorics.SimpleGraph.Triangle.Removal\nimport Mathlib.Data.NNRat.Floor\nimport Mathlib.Geometry.Euclidean.Volume.Basic\nimport Mathlib.NumberTheory.Chebyshev\nimport Mathlib.NumberTheory.Height.NumberField\nimport Mathlib.NumberTheory.Height.Projectivization\nimport Mathlib.NumberTheory.LucasLehmer\nimport Mathlib.NumberTheory.SelbergSieve\nimport Mathlib.RingTheory.Radical.NatInt\nimport Mathlib.Tactic.Echelon.Zsqrtd\nimport Mathlib.Tactic.Inclusion.Extension.Core.Core\nimport Mathlib.Tactic.Inclusion.Extension.Interval.BinarySplit\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Exp\nimport Mathlib.Tactic.Inclusion.Extension.IntervalDyadicReal.Hypotheses\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Basic\nimport Mathlib.Tactic.Inclusion.Extension.IntervalInt.Hypotheses\nimport Mathlib.Tactic.NormNum.Irrational\nimport Mathlib.Tactic.NormNum.IsCoprime\nimport Mathlib.Tactic.NormNum.IsSquare\nimport Mathlib.Tactic.NormNum.LegendreSymbol\nimport Mathlib.Tactic.NormNum.ModEq\nimport Mathlib.Tactic.NormNum.NatFib\nimport Mathlib.Tactic.NormNum.NatLog\nimport Mathlib.Tactic.NormNum.NatSqrt\nimport Mathlib.Tactic.NormNum.Ordinal\nimport Mathlib.Tactic.NormNum.Parity\nimport Mathlib.Tactic.NormNum.Prime\nimport Mathlib.Tactic.NormNum.RealSqrt\n\n"}
section -- clump:auto
@[expose] public section

set_option backward.isDefEq.respectTransparency false
set_option linter.unusedVariables false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry GlobalTheory.LogCris DividedPowers GroundTheory.PAdicHodge

namespace CrystallineSemistableComparison.HT

open PAlg H2

variable {l : ℕ} [Fact l.Prime] {K : IntermediateField ℚ_[l] (PadicAlgCl l)} (ht : TFil l) (hs : CrisSurj l)
  {S : ∀ m, Lv (cb K ht hs) (m + 1)} (H : Hyp S)

theorem cY {M : Model l K} {r j : ℕ} {x : Fam M r j} (h : Comp x) : CB.Comp (toY ht hs x) := (toY_comp ht hs x).2 h

theorem toY_pull {M N : Model l K} (u : M.X ⟶ N.X) (hu : u ≫ N.p = M.p) {r j : ℕ} (x : Fam N r j) (n : ℕ) :
    toY ht hs (pullS u hu x) n = (pdOm (c := (cb K ht hs).c n) (c' := (cb K ht hs).c n) (pullM (cb K ht hs) u hu n)
      (RingHom.id (cb K ht hs).Λ) (fun _ => rfl) r).pull j (toY ht hs x n) := rfl

def galY (M : Model l K) (σ : K.fixingSubgroup) (n : ℕ) : GlobalTheory.LogCris.Mor ((cb K ht hs).L M n) ((cb K ht hs).L M n)
    (galBase (IntermediateField.fixingSubgroupEquiv K σ) n) :=
  CrystallineSemistableComparison.SH.galM (B.schFn M.p) (okToOC l K) (IntermediateField.fixingSubgroupEquiv K σ) (galOC_okToOC _) false n

theorem galY_pt (M : Model l K) (σ : K.fixingSubgroup) (n : ℕ) (B₀ : CommRingCat.{0}) (y : ((cb K ht hs).L M n).Pt.obj B₀) :
    ((galY ht hs M σ n).pt.app B₀ y).1.2 = y.1.2 :=
  CrystallineSemistableComparison.SH.base_snd (B.schFn M.p) (B.gal_κb (okToOC l K) (IntermediateField.fixingSubgroupEquiv K σ) (galOC_okToOC _) false n) B₀ y

theorem toY_gal {M : Model l K} (σ : K.fixingSubgroup) {r j : ℕ} (x : Fam M r j) (n : ℕ) :
    toY ht hs (galS σ x) n = (pdOm (c := (cb K ht hs).c n) (c' := (cb K ht hs).c n) (galY ht hs M σ n)
      (ACris.galCris (IntermediateField.fixingSubgroupEquiv K σ)) (galBase_cris _ n) r).pull j (toY ht hs x n) := rfl

include H in
theorem half_galois_of_compatible (hg : ∀ (m : ℕ) (σ : K.fixingSubgroup), Nonempty (LHom (S m) (S m)
    (ACris.galCris (IntermediateField.fixingSubgroupEquiv K σ)) (galBase (IntermediateField.fixingSubgroupEquiv K σ))
    (period_ring_base.σC σ.1).toRingHom (qC l (period_ring_base.χ σ.1)))) :
    Half2 (K := K) ht (fun x => gam S (toY ht hs x)) := by
  exact {
    add hM _ _ x y hx hy a := H.add hM (cY ht hs hx) (cY ht hs hy) (cY ht hs (comp_add hx hy)) a
    lin hM _ _ c x hx a φ := H.lin hM c (cY ht hs hx) (cY ht hs (comp_smul c hx)) a φ
    lin' hM _ _ x hx a k φ := H.lin' hM (cY ht hs hx) a k φ
    sh hM _ _ _ k h x hx a := H.sh hM k h (cY ht hs hx) (cY ht hs (comp_sh ht k h hx)) a
    gal {M} hM r _ σ x hx a φ := H.gal hM (hg r σ).some (galY ht hs M σ) (galY_pt ht hs M σ) (cY ht hs hx) _
      (cY ht hs (comp_gal σ hx)) (fun n => galBase_cris _ n) (toY_gal ht hs σ x) a φ
    nat u hu hM hN _ _ x hx a φ := H.nat hM hN u hu (cY ht hs hx) _ (cY ht hs (comp_pull u hu hx)) (toY_pull ht hs u hu x) a φ
    cup hM _ _ _ _ _ h x y hx hy _ _ b b' c φ := H.cup hM h (cY ht hs hx) (cY ht hs hy) (cY ht hs (comp_cup h hx hy)) b b' c φ
    one {M} hM φ := H.one hM (cY ht hs (comp_one M)) φ
    c1 hM D hD x c hx h1 h2 := H.c1' hM D hD _ c (cY ht hs hx) ((toY_isFirstChern_iff ht hs D x).2 h1) h2
  }

variable (l K) in
theorem half2Of : Half2Of l K := fun ht hs hL h1 h2 h3 h4 h5 h6 h7 _ =>
  (hL ht hs).elim fun S => ⟨_, half_galois_of_compatible ht hs (S := S.L) ⟨h1, h2, h3, h4, h5, h6, h7, fun m => ⟨S.dn m⟩⟩ fun m σ => ⟨S.gal m σ⟩⟩

end CrystallineSemistableComparison.HT
end -- clump:auto
end -- clump:auto
end -- clump:auto
-- ===== end clump member: Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.HodgeTateResidues.HalfGaloisOfCompatible =====
