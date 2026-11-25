module

public import Development.AutomorphicArithmetic.AutomorphicVarieties.TheoremsMuLinked.OrdZero
public import Development.AutomorphicArithmetic.AutomorphicVarieties.WeakShimuraTheory.NearSplit
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
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

open NumberField IsDedekindDomain Formalism.ConjugateSelfDual ReciprocityTheory.Gal IsLocalRing Polynomial UpperTheory.V.HV GlobalTheory.GalOfCusp UpperTheory.V.U3 UpperTheory.V.Base
open UpperTheory.V.Alg

namespace UpperTheory.V.Th

def BkOrd : Prop :=
  ∀ (l : ℕ) [Fact l.Prime] (H : Type) [Group H] [TopologicalSpace H] [IsTopologicalGroup H] [CompactSpace H]
    [TotallyDisconnectedSpace H] (φ : H →* Formalism.BasicNotions.Loc.GQ l), Topology.IsOpenEmbedding φ →
    ∀ (n : ℕ) (ρ : H →* GL (Fin n) (Qbar l)) (ψ : Fin n → H →* (Qbar l)ˣ) (m : Fin n → ℤ) (k : ℕ), Continuous ρ → W.HasFlag ρ ψ →
      StrictAnti m → 0 < k →
      (∀ i j g, φ g ∈ Loc.Iq l → (ψ i g / ψ j g * Loc.cycA l l (Qbar l) (φ g) ^ (m j - m i)) ^ k = 1) →
      (∃ g, Loc.cycA l l (Qbar l) (φ g) = 1 ∧ Pr.FreeRatios fun i => ψ i g) →
      ∀ y ∈ Loc.finiteCocycles φ (Loc.adGL ρ), OrdAt ((Loc.Iq l).comap φ) ρ ψ y

def AdDown : Prop :=
  ∀ (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (l : ℕ) [Fact l.Prime] (K L : Type) [Field K] [NumberField K] [IsCMField K]
    [Algebra K Ω] [Field L] [NumberField L] [IsCMField L] [Algebra L Ω] [IsAlgClosure L Ω], Module.finrank ℚ K = 2 →
    galOf ℚ L Ω ≤ galOf ℚ K Ω → ∀ (s : W.HidaSetting l L Ω) (V : s.Lev) (n : ℕ) (r : G K Ω →* GL (Fin n) (Qbar l))
      (μ : G K Ω →* (Qbar l)ˣ) (R : Representation (Qbar l) (G ℚ Ω) (Matrix (Fin n) (Fin n) (Qbar l))), Continuous r →
      Af.IsAdOf r μ R → ∀ (ρ : V.frame.G₀ →* GL (Fin n) (Qbar l)) (ka : G L Ω →* (Qbar l)ˣ),
      (∀ (g : G L Ω) (t : G K Ω), galEmb ℚ L Ω g = galEmb ℚ K Ω t → W.mat ρ (V.pr g) = (ka g : Qbar l) • W.mat r t) →
      (∀ (g g' : G L Ω) (t : G K Ω), W.resP L Ω g' = s.c * W.resP L Ω g * s.c⁻¹ → galEmb ℚ L Ω g = galEmb ℚ K Ω t →
        ka g * ka g' * μ t = cycBar L Ω l g ^ (1 - (n : ℤ))) → AdZero V ρ → Af.BlochKatoSelmerVanishes l R

def RigEnd3 : Prop :=
  ∀ (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (l : ℕ) [Fact l.Prime] (ι : Qbar l ≃+* ℂ) (c : Coef l)
    [CharP (ResidueField c.O) l] (N : ℕ) [NeZero N] (e : ℕ) (ψ : DirichletCharacter c.O N) (η : G ℚ Ω →* ℤˣ) (σ g₁ : G ℚ Ω)
    (B : ValuationSubring Ω) (M : ℕ), Pr.LinkHyp c N e η σ B M → Chr.Psi l e (Chr.dirG ℚ Ω ψ) σ = 1 →
    Pr.HasFrame c η (Chr.Psi l e (Chr.dirG ℚ Ω ψ)) σ B M →
    ∀ (A : Subalgebra c.O (PadicAlgCl l)) [IsDiscreteValuationRing A] [Module.Finite c.O A] (r : G ℚ Ω →* GG (m := 3) (R := A)),
      Pr.OrdPt l η (Chr.Psi l e (Chr.dirG ℚ Ω ψ)) σ g₁ B r →
      (∀ U : Subgroup (G ℚ Ω), IsOpen (U : Set (G ℚ Ω)) → U ≤ η.ker → MatIrr U (mats (UnitaryThreeInertia.push A.val r))) →
      ∀ (K : Type) [Field K] [NumberField K] [IsCMField K] [Algebra K Ω], Module.finrank ℚ K = 2 → η.ker = galOf ℚ K Ω →
      ∀ ρ : G K Ω →* GL (Fin 3) (Qbar l), (∀ s, (ρ s).val = (UnitaryThreeInertia.push A.val r (galEmb ℚ K Ω s)).mat) →
      Af.IsAutCsd ι (Af.tw ρ (cycBar K Ω l)⁻¹) → FreeAt l ρ → Af.BlochKatoSelmerVanishes l (adRep (UnitaryThreeInertia.push A.val r))

def AdZero2 {Ω : Type} [Field Ω] [CharZero Ω] {l : ℕ} [Fact l.Prime] (K : Type) [Field K] [NumberField K] [Algebra K Ω]
    (η : G ℚ Ω →* ℤˣ) (W : G ℚ Ω →* GL (Fin 2) (Qbar l)) : Prop :=
  ∀ θ : G ℚ Ω →* (Qbar l)ˣ, (∀ g, (θ g : Qbar l) = ((η g : ℤˣ) : ℤ)) →
    ∀ R : Representation (Qbar l) (G ℚ Ω) (Matrix (Fin 2) (Fin 2) (Qbar l)),
      Af.IsAdOf (W.comp (AlgEquiv.restrictScalarsHom ℚ : G K Ω →* G ℚ Ω)) (θ.comp (AlgEquiv.restrictScalarsHom ℚ)) R →
      Af.BlochKatoSelmerVanishes l R

def RigI : Prop :=
  ∀ {Ω : Type} [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] {K : Type} [Field K] [NumberField K] [IsCMField K] [Algebra K Ω]
    {l : ℕ} [Fact l.Prime] {c : Coef l} {N : ℕ} [NeZero N] {e : ℕ} {ψ : DirichletCharacter c.O N} (D : Dat Ω K c e ψ) {U : (_root_.UpperTheory.V.U3.Univ (_root_.UpperTheory.V.U3.GCond.noCondition _ (D.η.comp D.ι) (D.Ψ.comp D.ι)))}
    {g₁ : G ℚ Ω}, D.Marked g₁ → ∀ (S : D.Ring U g₁) (f : S.R →ₐ[c.O] PadicAlgCl l), IsLocPt f →
    ∀ (hr : HasMult D.η (push f S.r.hom)) (ι : Qbar l ≃+* ℂ), U3.TypeI D.η (push f S.r.hom) → D.IsAutI ι (push f S.r.hom) hr →
      Af.BlochKatoSelmerVanishes l (adRep (push f S.r.hom))

def RigSp4 : Prop :=
  ∀ (Ω : Type) [Field Ω] [CharZero Ω] [IsAlgClosure ℚ Ω] (l : ℕ) [Fact l.Prime] (c : Coef l) (D : GradeZeroInterpolatingElement.Raw Ω c),
    Ws.Ctx2 D ∨ Ws.Ctx3 D → ∀ N : ℕ, 1 ≤ N → Af.KillsMu N D.ψ → Af.KillsMu N D.ξ → Af.KillsMu N D.om →
    ∀ (ι : PadicAlgCl l ≃+* ℂ) r, D.EPt r → GradeZeroInterpolatingElement.Irr r → Aut.IsAut4 ι r → D.RigidAt r

end UpperTheory.V.Th

end
