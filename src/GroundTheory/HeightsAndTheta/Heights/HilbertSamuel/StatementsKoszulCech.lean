module

public import ReciprocityTheory.ReductiveGroups.ArithmeticGeometry.ArakelovGeometry.KleimanNefness.AmpleSt

@[expose] public section

set_option maxSynthPendingDepth 1

namespace GroundTheory.Heights₂.Heights.HilbertSamuel

open MvPolynomial ReciprocityTheory.ChartRestriction.G.Geo ReciprocityTheory.ChartRestriction.G.ArakelovGeometry

noncomputable section

namespace KoszulCech

variable {S : Type} [CommRing S] {K : Type} [Fintype K] {ι : K → Type} [∀ k, LinearOrder (ι k)]

def frontCell {n : ℕ} (I : KH.Cell K ι n) : KH.Cell K ι 0 :=
  ⟨fun k => {(I.1 k).min' (I.2.1 k)}, fun _ => Finset.singleton_nonempty _, by simp⟩

def restrict0 {M : Type} [AddCommGroup M] [Module (MRingOver S ι) M] (z : KH.CechC S ι M 0) {n : ℕ}
    (I : KH.Cell K ι n) : LocalizedModule (KH.cellMon S I.1) M :=
  KH.cellRes S M (frontCell I).1 I.1 (z (frontCell I))


variable (S ι) in
abbrev KosC (V : Ideal (MRingOver S ι)) (R p n : ℕ) : Type :=
  {J : Finset (Fin R) // J.card = p} → KH.CechC S ι (MRingOver S ι ⧸ V) n

def kosSign {R : ℕ} (J : Finset (Fin R)) (j : Fin R) : ℤ :=
  (-1) ^ (J.filter (· < j)).card

def kosD {V : Ideal (MRingOver S ι)} {R : ℕ} (z : Fin R → KH.CechC S ι (MRingOver S ι ⧸ V) 0) (p n : ℕ) :
    KosC S ι V R (p + 1) n →+ KosC S ι V R p n where
  toFun φ J I := ∑ j : Fin R, if h : j ∈ J.1 then 0 else
    (kosSign J.1 j : LocalizedModule (KH.cellMon S I.1) (MRingOver S ι ⧸ V)) *
      (restrict0 (z j) I * φ ⟨insert j J.1, by rw [Finset.card_insert_of_notMem h, J.2]⟩ I)
  map_zero' := by
    funext J I
    refine Finset.sum_eq_zero fun j _ => ?_
    split_ifs
    · rfl
    · exact (congrArg (fun x => (kosSign J.1 j : LocalizedModule (KH.cellMon S I.1) (MRingOver S ι ⧸ V)) * x)
        (mul_zero (restrict0 (z j) I))).trans (mul_zero _)
  map_add' φ ψ := by
    funext J I
    simp only [Pi.add_apply, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun j _ => ?_
    split_ifs
    · exact (add_zero 0).symm
    · exact (congrArg (fun x => (kosSign J.1 j : LocalizedModule (KH.cellMon S I.1) (MRingOver S ι ⧸ V)) * x)
        (mul_add (restrict0 (z j) I) _ _)).trans (mul_add _ _ _)

variable [LinearOrder K]


variable (S ι) in
def kosCech (V : Ideal (MRingOver S ι)) (R p n : ℕ) : KosC S ι V R p n →+ KosC S ι V R p (n + 1) :=
  (KH.cechD S ι (MRingOver S ι ⧸ V) n).toAddMonoidHom.compLeft _

variable [∀ k, Fintype (ι k)]


variable (S ι) in
def kosPart (V : Ideal (MRingOver S ι)) (R : ℕ) (α c : K → ℤ) (p n : ℕ) : AddSubgroup (KosC S ι V R p n) :=
  (Submodule.pi Set.univ fun _ => KH.cechCc ι (KH.quotPart S V) (c - (p : ℤ) • α) n).toAddSubgroup

end KoszulCech

open KoszulCech

def KoszulCechComplex.Statement : Prop :=
  ∀ (S : Type) [CommRing S] (K : Type) [Fintype K] [LinearOrder K] (ι : K → Type) [∀ k, Fintype (ι k)]
    [∀ k, LinearOrder (ι k)] (V : Ideal (MRingOver S ι)) (α : K → ℤ) (R : ℕ)
    (z : Fin R → KH.CechC S ι (MRingOver S ι ⧸ V) 0),
    (∀ j, z j ∈ KH.cechZc ι (KH.quotPart S V) α 0) →
    ∀ (c : K → ℤ) (p n : ℕ),
      (∀ φ ∈ kosPart S ι V R α c (p + 1) n, kosD z p n φ ∈ kosPart S ι V R α c p n) ∧
      (∀ φ, kosCech S ι V R p n (kosD z p n φ) = kosD z p (n + 1) (kosCech S ι V R (p + 1) n φ)) ∧
      (∀ φ, kosD z p n (kosD z (p + 1) n φ) = 0)

section Inhabitants

namespace KoszulCech

variable {S : Type} [CommRing S] {K : Type} [Fintype K] [LinearOrder K] {ι : K → Type} [∀ k, Fintype (ι k)]
  [∀ k, LinearOrder (ι k)]


end KoszulCech


end Inhabitants

end

end GroundTheory.Heights₂.Heights.HilbertSamuel
