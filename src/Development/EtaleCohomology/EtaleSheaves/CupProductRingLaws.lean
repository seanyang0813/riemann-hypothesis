module

public import Development.AbelianVarietyTheory.Definitions.Divisors.PullHlComp

@[expose] public section

noncomputable section
open CategoryTheory Limits AlgebraicGeometry Opposite CochainComplex CochainComplex.HomComplex GlobalTheory.EtC

namespace LateralTheory.E.CupProductRingLaws

def LeafCupSpec : Prop := ∀ (R : Type) [CommRing R] {I J K : Cx R} (μ : Pair I J K) (E : Spc) {n m k : ℤ} (hk : n + m = k),
  (∀ (α : Cocycle ((chains R).obj E) I n) (β : Cocycle ((chains R).obj E) J m),
    ∃ γ : Cocycle ((chains R).obj E) K k, μ.IsAW hk α.1 β.1 γ.1) ∧
  ∀ (α : Cocycle ((chains R).obj E) I n) (β : Cocycle ((chains R).obj E) J m) (γ : Cocycle ((chains R).obj E) K k),
    μ.IsAW hk α.1 β.1 γ.1 → μ.cup E hk (CohomologyClass.mk α) (CohomologyClass.mk β) = CohomologyClass.mk γ

def LeafTwPairExists : Prop := ∀ (q : ℕ) [NeZero q] (i j : ℤ),
  ∃ μ : Pair (res _ (tw q i)) (res _ (tw q j)) (res _ (tw q (i + j))), IsTwPair μ

def LeafTwPairUnique : Prop := ∀ (q : ℕ) [NeZero q] (i j : ℤ) (μ μ' : Pair (res _ (tw q i)) (res _ (tw q j)) (res _ (tw q (i + j)))),
  IsTwPair μ → IsTwPair μ' → ∀ (E : Spc) {n m k : ℤ} (hk : n + m = k), μ.cup E hk = μ'.cup E hk

def LeafKumTExists : Prop := ∀ (q : ℕ) [NeZero q], ∃ t : ∀ U : Scheme.{0}, (Γ(U, ⊤))ˣ → Sec ((res _ (tw q 1)).X 0) U, IsKum q t

def IsOneCocycle (q : ℕ) (E : Spc) (α : Cocycle ((chains (ZMod q)).obj E) (res _ (tw q 0)) 0) : Prop :=
  ∀ (U : Scheme.{0}) (x : Sx E 0 U) (ζ : Prim q Γ(U, ⊤)), ev (R := ZMod q) α.1 0 0 (by simp) U x = resGen 0 ζ

def IsEtaleFirstChernClassCocycle (q : ℕ) {E : Spc} (L : E ⟶ ofCat (glCat 1)) (γ : Cocycle ((chains (ZMod q)).obj E) (res _ (tw q 1)) 2) : Prop :=
  (∀ (U : Scheme.{0}) (x : Sx E 0 U), ev (R := ZMod q) γ.1 0 2 (by simp) U x = 0) ∧
    (∀ (U : Scheme.{0}) (x : Sx E 1 U) (v : (Γ(U, ⊤))ˣ), v ^ q = lineUnit L x →
      ev (R := ZMod q) γ.1 1 1 (by simp) U x = Sec.map ((res _ (tw q 1)).d 0 1) (kumT q U v)) ∧
    ∀ (U : Scheme.{0}) (x : Sx E 2 U) (v w : (Γ(U, ⊤))ˣ), v ^ q = lineUnit L (x.sub 0 1 (by omega)) →
      w ^ q = lineUnit L (x.sub 1 1 (by omega)) →
      ev (R := ZMod q) γ.1 2 0 (by simp) U x = kumT q U v + kumT q U w - kumT q U (v * w)

def LeafOneSpec : Prop := ∀ (q : ℕ) [NeZero q] (E : Spc), Inv q E →
  (∃ α, IsOneCocycle q E α) ∧ ∀ α, IsOneCocycle q E α → one q E = CohomologyClass.mk α

def EtaleFirstChernClassRepresentedByChernCocycle : Prop := ∀ (q : ℕ) [NeZero q] {E : Spc} (L : E ⟶ ofCat (glCat 1)), Inv q E →
  (∃ γ, IsEtaleFirstChernClassCocycle q L γ) ∧ ∀ γ, IsEtaleFirstChernClassCocycle q L γ → c1 q L = CohomologyClass.mk γ

def LeafNatCup : Prop := ∀ (q : ℕ) [NeZero q] {E E' : Spc} (f : E ⟶ E') {n m i j : ℤ} (a : Ht q E' n i) (b : Ht q E' m j),
  pull _ f _ _ (cup q a b) = cup q (pull _ f _ _ a) (pull _ f _ _ b)

def LeafNatOne : Prop := ∀ (q : ℕ) [NeZero q] {E E' : Spc} (f : E ⟶ E'), Inv q E' → pull _ f _ _ (one q E') = one q E

def EtaleFirstChernClassNaturalUnderPullback : Prop := ∀ (q : ℕ) [NeZero q] {E E' : Spc} (f : E ⟶ E') (L : E' ⟶ ofCat (glCat 1)), Inv q E' →
  pull _ f _ _ (c1 q L) = c1 q (f ≫ L)

def LeafNatKum : Prop := ∀ (q : ℕ) [NeZero q] {Y X : Scheme.{0}} (f : Y ⟶ X) (u : (Γ(X, ⊤))ˣ), IsUnit (q : Γ(X, ⊤)) →
  pull _ (sch.map f) _ _ (kum q u) = kum q (Units.map f.appTop.hom.toMonoidHom u)

def LeafRingUnit : Prop := ∀ (q : ℕ) [NeZero q] (E : Spc), Inv q E →
  ∀ {n i : ℤ} (a : Ht q E n i), cup q (one q E) a = a.cast (by ring) (by ring)

def LeafRingAssoc : Prop := ∀ (q : ℕ) [NeZero q] (E : Spc) {n m k i j l : ℤ} (a : Ht q E n i) (b : Ht q E m j) (c : Ht q E k l),
  cup q (cup q a b) c = (cup q a (cup q b c)).cast (by ring) (by ring)

def LeafRingComm : Prop := ∀ (q : ℕ) [NeZero q] (E : Spc) {n m i j : ℤ} (a : Ht q E n i) (b : Ht q E m j),
  cup q a b = (n * m).negOnePow • (cup q b a).cast (by ring) (by ring)

end LateralTheory.E.CupProductRingLaws
