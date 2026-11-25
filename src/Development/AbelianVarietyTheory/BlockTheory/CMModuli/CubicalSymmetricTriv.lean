module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.BirationalGeometry.ToroidalCompactification.CubeVal
import Mathlib.Algebra.Order.Floor.Extended
import Mathlib.Algebra.Order.Floor.Semifield
import Mathlib.Algebra.Order.Interval.Basic
import Mathlib.Analysis.Complex.UpperHalfPlane.Basic
import Mathlib.Analysis.Normed.Algebra.GelfandRadius
import Mathlib.Analysis.SpecialFunctions.Bernstein
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Combinatorics.Enumerative.DyckWord
import Mathlib.Combinatorics.SimpleGraph.Triangle.Removal
import Mathlib.Data.NNRat.Floor
import Mathlib.Data.Nat.Choose.Multinomial
import Mathlib.Geometry.Euclidean.Volume.Basic
import Mathlib.NumberTheory.Chebyshev
import Mathlib.NumberTheory.Height.NumberField
import Mathlib.NumberTheory.Height.Projectivization
import Mathlib.NumberTheory.LucasLehmer
import Mathlib.NumberTheory.SelbergSieve
import Mathlib.RingTheory.Radical.NatInt
import Mathlib.RingTheory.WittVector.IsPoly
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
import Mathlib.Tactic.Polynomial.Basic
import Mathlib.Tactic.ReduceModChar

@[expose] public section

noncomputable section

namespace GlobalTheory.IndefiniteRowSideFullHecke.CubicalSymmetricTriv

open AlgebraicGeometry CategoryTheory Limits MonoidalCategory CartesianMonoidalCategory MonObj
open ReciprocityTheory.ChartRestriction.G.Semi ReciprocityTheory.ChartRestriction.G.Geo.Tor

def thirdDiff {A U : Type} [CommGroup A] [CommGroup U] (f : A → U) (x y w : A) : U :=
  f (x * y * w) * (f (x * y))⁻¹ * (f (x * w))⁻¹ * (f (y * w))⁻¹ * f x * f y * f w * (f 1)⁻¹

section Sym

variable {S : Scheme.{0}} (G : Over S) [GrpObj G] [IsCommMonObj G]

abbrev symLB (L : LB G.left) : LB G.left :=
  LB.LinComb L (K := Fin 2) ![(ι[G]).left, 𝟙 G.left] ![1, -1]

variable {G}

def rigV (L : RigLB G) {T : Over S} (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι) :
    (T.left.presheaf.stalk z)ˣ :=
  val (L := L.L) L.rig (toUnit T).left z J

def symV {L : LB G.left} (σ : LB.Gen (symLB G L)) {T : Over S} (z : T.left)
    (J : (T.left ⟶ G.left) → L.ι) (x : T ⟶ G) : (T.left.presheaf.stalk z)ˣ :=
  val (L := L) σ x.left z J

variable (G)

structure CubSym where

  L : RigLB G

  cub : CubicalStr G L

  sym : LB.Gen (symLB G L.L)
  sym_gen : sym.IsGen
  sym_rig : LB.Gen.Corr L.L _ _ _ _ (LB.pullGen L.L _ _ sym (eSec G)) (LB.oneGen L.L)
  sym_cub : ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι), Good L.L z J →
    ∀ x y w : T ⟶ G, cubV cub z J x⁻¹ y⁻¹ w⁻¹ = thirdDiff (symV sym z J) x y w * cubV cub z J x y w

variable {G}

end Sym

section Iso

variable {S S' : Scheme.{0}} {G' : Over S'} {G : Over S} [GrpObj G'] [IsCommMonObj G']
  [GrpObj G] [IsCommMonObj G]

end Iso

section Triv

variable {S : Scheme.{0}} {H G : Over S} [GrpObj H] [IsCommMonObj H] [GrpObj G] [IsCommMonObj G]

abbrev lamOn (i : H ⟶ G) (L : LB G.left) : LB (H ⊗ G).left :=
  LB.LinComb L (K := Fin 4)
    ![((fst H G ≫ i) * snd H G).left, (fst H G ≫ i).left, (snd H G).left, (1 : H ⊗ G ⟶ G).left]
    ![1, -1, -1, 1]

def lamV {i : H ⟶ G} {L : LB G.left} (s : LB.Gen (lamOn i L)) {T : Over S} (z : T.left)
    (J : (T.left ⟶ G.left) → L.ι) (t : T ⟶ H) (x : T ⟶ G) : (T.left.presheaf.stalk z)ˣ :=
  val (L := L) s (lift t x).left z J

structure IsBiextTriv {L : RigLB G} (c : CubicalStr G L) (i : H ⟶ G) [IsMonHom i]
    (s : LB.Gen (lamOn i L.L)) : Prop where
  gen : s.IsGen
  law₁ : ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι), Good L.L z J →
    ∀ (t t' : T ⟶ H) (x : T ⟶ G), lamV s z J (t * t') x =
      cubV c z J (t ≫ i) (t' ≫ i) x * lamV s z J t x * lamV s z J t' x
  law₂ : ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι), Good L.L z J →
    ∀ (t : T ⟶ H) (x x' : T ⟶ G), lamV s z J t (x * x') =
      cubV c z J (t ≫ i) x x' * lamV s z J t x * lamV s z J t x'

def trivV {i : H ⟶ G} {L : LB G.left} (σ : LB.Gen (L.pull i.left)) {T : Over S} (z : T.left)
    (J : (T.left ⟶ G.left) → L.ι) (t : T ⟶ H) : (T.left.presheaf.stalk z)ˣ :=
  val (L := L) σ t.left z J

structure IsCubTriv {L : RigLB G} (c : CubicalStr G L) (i : H ⟶ G) [IsMonHom i]
    (σ : LB.Gen (L.L.pull i.left)) : Prop where
  gen : σ.IsGen
  rig : ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι), Good L.L z J →
    trivV σ z J 1 = rigV L z J
  cub : ∀ (T : Over S) (z : T.left) (J : (T.left ⟶ G.left) → L.L.ι), Good L.L z J →
    ∀ t t' t'' : T ⟶ H,
      thirdDiff (trivV σ z J) t t' t'' = cubV c z J (t ≫ i) (t' ≫ i) (t'' ≫ i)

variable {B : Over S} [GrpObj B] [IsCommMonObj B]

end Triv

section Pairing

variable {S : Scheme.{0}} {G : Over S} [GrpObj G] [IsCommMonObj G] {L : RigLB G}
  (c : CubicalStr G L)

end Pairing

section Torus

variable {S : Scheme.{0}} {X : Type} [AddCommGroup X] {G : Over S} [GrpObj G]

def charV (χ : X) {T : Over S} (z : T.left) (t : T ⟶ splitTorus S X) : (T.left.presheaf.stalk z)ˣ :=
  gm t.left z ⊤ (charUnit S X χ)

variable {B : Over S} [GrpObj B]

structure IsTorusExt (i : splitTorus S X ⟶ G) (q : G ⟶ B) : Prop where
  free : Module.Free ℤ X
  finite : Module.Finite ℤ X
  comm : IsCommMonObj G
  abelian : IsAbelianScheme B
  i_hom : IsMonHom i
  q_hom : IsMonHom q
  isKernel : IsPullback i (toUnit _) q (η[B])
  locTriv : ∀ b : B.left, ∃ V : B.left.Opens, b ∈ V ∧
    ∃ r : V.toScheme ⟶ G.left, r ≫ q.left = V.ι

end Torus

section Examples

variable {S : Scheme.{0}} (G : Over S) [GrpObj G] [IsCommMonObj G]

end Examples

end GlobalTheory.IndefiniteRowSideFullHecke.CubicalSymmetricTriv
