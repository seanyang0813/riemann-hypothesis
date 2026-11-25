module

public import GroundTheory.PAdicHodge.ACrisBdRGalois
public import GroundTheory.PAdicHodge.BdRAlgCl
public import GroundTheory.PAdicHodge.UnramifiedClosure
public import Mathlib.RingTheory.SimpleRing.Principal
public import GroundTheory.PAdicHodge.ACrisFrobFixed
public import GroundTheory.PAdicHodge.AInfTopology
public import GroundTheory.PAdicHodge.BdRInvariants

@[expose] public section

set_option maxSynthPendingDepth 1

noncomputable section

namespace GroundTheory.PAdicHodge

open _root_.WittVector Polynomial

namespace ACris

variable {p : ℕ} [hp : Fact p.Prime]

local notation "𝒪" => normInteger ℂ_[p]
local notation "𝒪♭" => PreTilt 𝒪 p
local notation "𝔹" => BDeRhamPlus 𝒪 p
local notation "φW" => WittVector.frobeniusEquiv p 𝒪♭

section Teichmuller

omit hp in
theorem pow_eq_pow_mod_of_pow_eq_one {M : Type*} [Monoid M] {x : M} {m : ℕ} (hx : x ^ m = 1)
    (k : ℕ) : x ^ k = x ^ (k % m) := by
  conv_lhs => rw [← Nat.div_add_mod k m, pow_add, pow_mul, hx, one_pow, one_mul]

theorem norm_eq_one_of_pow_eq_one {x : ℂ_[p]} {m : ℕ} (hm : 0 < m) (hx : x ^ m = 1) : ‖x‖ = 1 := by
  have h := congrArg norm hx
  rw [norm_pow, norm_one] at h
  exact (pow_eq_one_iff_of_nonneg (norm_nonneg _) hm.ne').1 h

theorem rootOfUnity_compatible {ζ : PadicAlgCl p} {m : ℕ} (hm : 0 < m) (hc : m.Coprime p)
    (hζ : ζ ^ m = 1) (n : ℕ) :
    (ζ ^ p ^ ((n + 1) * (m.totient - 1))) ^ p = ζ ^ p ^ (n * (m.totient - 1)) := by
  have hd : 1 ≤ m.totient := Nat.totient_pos.2 hm
  have hmod : p ^ m.totient % m = 1 % m := Nat.ModEq.pow_totient (Nat.Coprime.symm hc)
  have e1 : (ζ ^ p ^ ((n + 1) * (m.totient - 1))) ^ p =
      (ζ ^ p ^ (n * (m.totient - 1))) ^ p ^ m.totient := by
    rw [← pow_mul, ← pow_mul, ← pow_succ, ← pow_add]
    congr 2
    rw [add_mul, one_mul]
    omega
  have hx : (ζ ^ p ^ (n * (m.totient - 1))) ^ m = 1 := by rw [← pow_mul, mul_comm, pow_mul, hζ, one_pow]
  rw [e1, pow_eq_pow_mod_of_pow_eq_one hx, hmod, ← pow_eq_pow_mod_of_pow_eq_one hx, pow_one]

theorem exists_teichmuller_rootOfUnity {ζ : PadicAlgCl p} {m : ℕ} (hm : 0 < m) (hc : m.Coprime p)
    (hζ : ζ ^ m = 1) :
    ∃ T : AInf ℂ_[p] p, T ^ m = 1 ∧
      ((fontaineTheta (normInteger ℂ_[p]) p T : 𝒪) : ℂ_[p]) = (ζ : ℂ_[p]) := by
  set z : ℕ → PadicAlgCl p := fun n => ζ ^ p ^ (n * (m.totient - 1))
  have hzm' : ∀ n, z n ^ m = 1 := fun n => by
    simp only [z]
    rw [← pow_mul, mul_comm, pow_mul, hζ, one_pow]
  have hzm : ∀ n, (z n : ℂ_[p]) ^ m = 1 := fun n => by
    rw [PadicComplex.coe_eq, ← map_pow, hzm' n, map_one]
  have hmem : ∀ n, (z n : ℂ_[p]) ∈ normInteger ℂ_[p] := fun n =>
    mem_normInteger.2 (norm_eq_one_of_pow_eq_one hm (hzm n)).le
  set y : ℕ → 𝒪 := fun n => ⟨(z n : ℂ_[p]), hmem n⟩
  have hy : ∀ n, y (n + 1) ^ p = y n := fun n => Subtype.ext (by
    simp only [y, SubmonoidClass.coe_pow]
    rw [PadicComplex.coe_eq, PadicComplex.coe_eq, ← map_pow]
    exact congrArg _ (rootOfUnity_compatible hm hc hζ n))
  set ζf : 𝒪♭ := IsPerfectoidField.ofCompatible p y hy
  have hζf : ζf ^ m = 1 := IsPerfectoidField.preTilt_ext p fun n => by
    rw [map_pow, IsPerfectoidField.coeff_ofCompatible, ← map_pow, map_one]
    have : y n ^ m = 1 := Subtype.ext (by
      simp only [y, SubmonoidClass.coe_pow, OneMemClass.coe_one]; exact hzm n)
    rw [this, map_one]
  refine ⟨teichmuller p ζf, by rw [← map_pow, hζf, map_one], ?_⟩
  rw [fontaineTheta_teichmuller, IsPerfectoidField.untilt_ofCompatible]
  change ((ζ ^ p ^ (0 * (m.totient - 1)) : PadicAlgCl p) : ℂ_[p]) = _
  rw [Nat.zero_mul, pow_zero, pow_one]

theorem eq_of_pow_eq_one_of_theta_eq {u v : 𝔹} {m : ℕ} (hm : 0 < m) (hu : u ^ m = 1)
    (hv : v ^ m = 1) (hθ : thetaAlgHom p u = thetaAlgHom p v) (h0 : thetaAlgHom p v ≠ 0) :
    u = v := by
  have h : (∑ i ∈ Finset.range m, u ^ i * v ^ (m - 1 - i)) * (u - v) = u ^ m - v ^ m :=
    geom_sum₂_mul u v m
  rw [hu, hv, sub_self] at h
  have hS : ∑ i ∈ Finset.range m, u ^ i * v ^ (m - 1 - i) ≠ 0 := by
    intro hS
    have h1 := congrArg (thetaAlgHom p) hS

    rw [map_zero, map_sum] at h1
    simp only [map_mul, map_pow, hθ] at h1
    rw [Finset.sum_congr rfl fun i hi => (by
      rw [← pow_add]; congr 1; have := Finset.mem_range.1 hi; omega :
        thetaAlgHom p v ^ i * thetaAlgHom p v ^ (m - 1 - i) = thetaAlgHom p v ^ (m - 1)),
      Finset.sum_const, Finset.card_range, nsmul_eq_mul] at h1
    exact (mul_ne_zero (Nat.cast_ne_zero.2 hm.ne') (pow_ne_zero _ h0)) h1
  exact sub_eq_zero.1 ((mul_eq_zero.1 h).resolve_left hS)

theorem iota_teichmuller_rootOfUnity {ζ : PadicAlgCl p} {m : ℕ} (hm : 0 < m) (hc : m.Coprime p)
    (hζ : ζ ^ m = 1) :
    ∃ x : ACris ℂ_[p] p, iota ℂ_[p] p x = algClToBdR p ζ := by
  obtain ⟨T, hT, hθT⟩ := exists_teichmuller_rootOfUnity hm hc hζ
  refine ⟨algebraMap (AInf ℂ_[p] p) (ACris ℂ_[p] p) T, ?_⟩
  have hζ0 : (ζ : ℂ_[p]) ≠ 0 := by
    intro h
    have := norm_eq_one_of_pow_eq_one hm (show (ζ : ℂ_[p]) ^ m = 1 by
      rw [PadicComplex.coe_eq, ← map_pow, hζ, map_one])
    rw [h, norm_zero] at this
    exact zero_ne_one this
  apply eq_of_pow_eq_one_of_theta_eq hm
  · rw [← map_pow, ← map_pow, hT, map_one, map_one]
  · rw [← map_pow, hζ, map_one]
  · rw [thetaAlgHom_apply, thetaField_iota, theta_algebraMap, hθT, thetaAlgHom_algClToBdR]
  · rw [thetaAlgHom_algClToBdR]; exact hζ0

end Teichmuller

section Padic

private theorem map_natCast_pow {R S : Type*} [Semiring R] [Semiring S]
    (f : R →+* S) (n k : ℕ) : f ((n : R) ^ k) = (n : S) ^ k :=
  (map_pow f (n : R) k).trans (congrArg (fun z : S => z ^ k) (map_natCast f n))

/-- General-field version of `padicIntToBCrisPlus`, so that instantiating at `ℂ_[p]` avoids
abstracting `IsPerfectoidField.fact_not_isUnit` into a `_proof_n` auxiliary constant. -/
def padicIntToBCrisPlusOf (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [IsPerfectoidField K p] : ℤ_[p] →+* BCrisPlus K p :=
  (algebraMap (ACris K p) (BCrisPlus K p)).comp
    ((algebraMap (AInf K p) (ACris K p)).comp
      (IsPerfectoidField.padicIntToWitt (K := K) p))

def padicIntToBCrisPlus : ℤ_[p] →+* BCrisPlus ℂ_[p] p :=
  padicIntToBCrisPlusOf ℂ_[p]

theorem isUnit_p_bCrisPlus : IsUnit ((p : ℕ) : BCrisPlus ℂ_[p] p) := by
  let j := algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p)
  exact (map_natCast j p) ▸
    IsLocalization.Away.algebraMap_isUnit (S := BCrisPlus ℂ_[p] p) (p : ACris ℂ_[p] p)

theorem isUnit_padicIntToBCrisPlus {x : ℤ_[p]} (hx : x ≠ 0) : IsUnit (padicIntToBCrisPlus x) := by
  let f := padicIntToBCrisPlus (p := p)
  let u := (PadicInt.unitCoeff hx : ℤ_[p])
  have h : f x = f u * (p : BCrisPlus ℂ_[p] p) ^ x.valuation := calc
    f x = f (u * (p : ℤ_[p]) ^ x.valuation) := congrArg f (PadicInt.unitCoeff_spec hx)
    _ = f u * f ((p : ℤ_[p]) ^ x.valuation) := map_mul f _ _
    _ = _ := congrArg (fun z => f u * z) (map_natCast_pow f p x.valuation)
  exact h.symm ▸ ((PadicInt.unitCoeff hx).isUnit.map f).mul ((isUnit_p_bCrisPlus (p := p)).pow _)

theorem isUnit_padicIntToBCrisPlus_nzd (y : nonZeroDivisors ℤ_[p]) :
    IsUnit (padicIntToBCrisPlusOf (p := p) ℂ_[p] y) :=
  isUnit_padicIntToBCrisPlus (nonZeroDivisors.coe_ne_zero y)

/-- General-field version of `padicToBCrisPlus` to avoid kernel unfolding of `BCrisPlus ℂ_[p] p`. -/
def padicToBCrisPlusOf (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [IsPerfectoidField K p]
    (h : ∀ y : nonZeroDivisors ℤ_[p], IsUnit (padicIntToBCrisPlusOf (p := p) K y)) :
    ℚ_[p] →+* BCrisPlus K p :=
  IsLocalization.lift (M := nonZeroDivisors ℤ_[p]) (S := ℚ_[p])
    (g := padicIntToBCrisPlusOf (p := p) K) h

def padicToBCrisPlus : ℚ_[p] →+* BCrisPlus ℂ_[p] p :=
  padicToBCrisPlusOf ℂ_[p] isUnit_padicIntToBCrisPlus_nzd

/-- General-field version of `algebraPadicBCrisPlus` to avoid kernel unfolding of `BCrisPlus ℂ_[p] p`. -/
@[instance_reducible]
def algebraPadicBCrisPlusOf (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [IsPerfectoidField K p] (f : ℚ_[p] →+* BCrisPlus K p) : Algebra ℚ_[p] (BCrisPlus K p) :=
  f.toAlgebra

instance algebraPadicBCrisPlus : Algebra ℚ_[p] (BCrisPlus ℂ_[p] p) :=
  algebraPadicBCrisPlusOf ℂ_[p] padicToBCrisPlus

private theorem padicToBCrisPlusOf_apply_int (K : Type*) [NontriviallyNormedField K]
    [IsUltrametricDist K] [IsPerfectoidField K p]
    (h : ∀ y : nonZeroDivisors ℤ_[p], IsUnit (padicIntToBCrisPlusOf (p := p) K y)) (x : ℤ_[p]) :
    padicToBCrisPlusOf (p := p) K h (algebraMap ℤ_[p] ℚ_[p] x) =
      padicIntToBCrisPlusOf (p := p) K x := by
  delta padicToBCrisPlusOf
  apply @IsLocalization.lift_eq

private theorem padicToBCrisPlus_apply_int (x : ℤ_[p]) :
    padicToBCrisPlus (p := p) (algebraMap ℤ_[p] ℚ_[p] x) = padicIntToBCrisPlus (p := p) x :=
  padicToBCrisPlusOf_apply_int ℂ_[p] isUnit_padicIntToBCrisPlus_nzd x

private theorem localization_hom_apply_eq {R S T : Type*} [CommSemiring R] [CommSemiring S]
    [Semiring T] [Algebra R S] (M : Submonoid R) [IsLocalization M S]
    (f g : S →+* T) (h : ∀ x, f (algebraMap R S x) = g (algebraMap R S x)) (x : S) :
    f x = g x :=
  RingHom.congr_fun (IsLocalization.ringHom_ext M (RingHom.ext h)) x

theorem iotaPlus_algebraMap_padic (q : ℚ_[p]) :
    iotaPlus ℂ_[p] p (algebraMap ℚ_[p] (BCrisPlus ℂ_[p] p) q) = algebraMap ℚ_[p] 𝔹 q := by
  let j := iotaPlus ℂ_[p] p
  let f := padicToBCrisPlus (p := p)
  change j (f q) = _
  refine localization_hom_apply_eq (nonZeroDivisors ℤ_[p])
    (j.comp f) (algebraMap ℚ_[p] 𝔹) (fun x => ?_) q
  let a := IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p x
  let b := algebraMap (AInf ℂ_[p] p) (ACris ℂ_[p] p) a
  change j (f (algebraMap ℤ_[p] ℚ_[p] x)) = algebraMap ℚ_[p] 𝔹 (x : ℚ_[p])
  exact (congrArg j (padicToBCrisPlus_apply_int x)).trans
    ((iotaPlus_algebraMap (K := ℂ_[p]) (p := p) b).trans (iota_padicInt x))

/-- General-field version of `iotaPlusAlg` to avoid kernel unfolding of `BCrisPlus ℂ_[p] p`. -/
def iotaPlusAlgOf (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [IsPerfectoidField K p] [CharZero K] [Algebra ℚ_[p] (BCrisPlus K p)]
    [Algebra ℚ_[p] (BDeRhamPlus (normInteger K) p)]
    (hc : ∀ q : ℚ_[p], iotaPlus K p (algebraMap ℚ_[p] (BCrisPlus K p) q) =
      algebraMap ℚ_[p] (BDeRhamPlus (normInteger K) p) q) :
    BCrisPlus K p →ₐ[ℚ_[p]] BDeRhamPlus (normInteger K) p :=
  { iotaPlus K p with commutes' := hc }

def iotaPlusAlg : BCrisPlus ℂ_[p] p →ₐ[ℚ_[p]] 𝔹 :=
  iotaPlusAlgOf ℂ_[p] iotaPlus_algebraMap_padic

theorem iotaPlusAlg_apply (x : BCrisPlus ℂ_[p] p) : iotaPlusAlg x = iotaPlus ℂ_[p] p x :=
  rfl

theorem frobenius_padicIntToWitt (a : ℤ_[p]) :
    φW (IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p a) =
      IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p a := by
  have := AInf.isAdicComplete_p (K := ℂ_[p]) (p := p)
  exact RingHom.congr_fun (ringHom_ext_padicInt
    ((φW : AInf ℂ_[p] p →+* AInf ℂ_[p] p).comp (IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p))
    (IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p)) a

theorem phiPlus_algebraMap_padic (q : ℚ_[p]) :
    phiPlus ℂ_[p] p (algebraMap ℚ_[p] (BCrisPlus ℂ_[p] p) q) =
      algebraMap ℚ_[p] (BCrisPlus ℂ_[p] p) q := by
  let F := phiPlus ℂ_[p] p
  let f := padicToBCrisPlus (p := p)
  change F (f q) = f q
  refine localization_hom_apply_eq (nonZeroDivisors ℤ_[p]) (F.comp f) f (fun x => ?_) q
  let a := IsPerfectoidField.padicIntToWitt (K := ℂ_[p]) p x
  let j := algebraMap (AInf ℂ_[p] p) (ACris ℂ_[p] p)
  let k := algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p)
  have hx := padicToBCrisPlus_apply_int x
  change F (f (algebraMap ℤ_[p] ℚ_[p] x)) = f (algebraMap ℤ_[p] ℚ_[p] x)
  calc
    _ = F (k (j a)) := congrArg F hx
    _ = k (phi (K := ℂ_[p]) (p := p) (j a)) := phiPlus_algebraMap (K := ℂ_[p]) (p := p) (j a)
    _ = k (j (φW a)) := congrArg k (phi_algebraMap (K := ℂ_[p]) (p := p) a)
    _ = k (j a) := congrArg (fun w => k (j w)) (frobenius_padicIntToWitt x)
    _ = _ := hx.symm

/-- General-field version of `phiPlusAlg` to avoid kernel unfolding of `BCrisPlus ℂ_[p] p`. -/
def phiPlusAlgOf (K : Type*) [NontriviallyNormedField K] [IsUltrametricDist K]
    [IsPerfectoidField K p] [Algebra ℚ_[p] (BCrisPlus K p)]
    (hc : ∀ q : ℚ_[p], phiPlus K p (algebraMap ℚ_[p] (BCrisPlus K p) q) =
      algebraMap ℚ_[p] (BCrisPlus K p) q) :
    BCrisPlus K p →ₐ[ℚ_[p]] BCrisPlus K p :=
  { phiPlus K p with commutes' := hc }

def phiPlusAlg : BCrisPlus ℂ_[p] p →ₐ[ℚ_[p]] BCrisPlus ℂ_[p] p :=
  phiPlusAlgOf ℂ_[p] phiPlus_algebraMap_padic

theorem phiPlusAlg_apply (x : BCrisPlus ℂ_[p] p) : phiPlusAlg x = phiPlus ℂ_[p] p x :=
  rfl

end Padic

section Unramified

def algClInBCrisPlus : Subalgebra ℚ_[p] (PadicAlgCl p) :=
  (iotaPlusAlg (p := p)).range.comap (algClToBdR p)

theorem mem_algClInBCrisPlus {β : PadicAlgCl p} :
    β ∈ algClInBCrisPlus ↔ ∃ x : BCrisPlus ℂ_[p] p, iotaPlus ℂ_[p] p x = algClToBdR p β :=
  Iff.rfl

theorem unramifiedClosure_le :
    (unramifiedClosure p).toSubalgebra ≤ algClInBCrisPlus (p := p) := by
  rw [unramifiedClosure, IntermediateField.adjoin_toSubalgebra_of_isAlgebraic
    fun x _ => Algebra.IsAlgebraic.isAlgebraic x]
  refine Algebra.adjoin_le fun ζ hζ => ?_
  obtain ⟨m, hm, hc, hζm⟩ := hζ
  obtain ⟨x, hx⟩ := iota_teichmuller_rootOfUnity hm hc hζm
  exact ⟨algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p) x, by
    show iotaPlus ℂ_[p] p _ = _
    rw [iotaPlus_algebraMap, hx]
    rfl⟩

theorem p_mem_nonZeroDivisors_aCris : (p : ACris ℂ_[p] p) ∈ nonZeroDivisors (ACris ℂ_[p] p) :=
  mem_nonZeroDivisors_iff.2 ⟨fun z hz => eq_zero_of_p_mul_eq_zero hz,
    fun z hz => eq_zero_of_p_mul_eq_zero (by rw [mul_comm]; exact hz)⟩

theorem algebraMap_aCris_injective :
    Function.Injective (algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p)) :=
  IsLocalization.injective (BCrisPlus ℂ_[p] p)
    (Submonoid.powers_le.2 p_mem_nonZeroDivisors_aCris)


theorem phiPlus_iterate_algebraMap (n : ℕ) (a : ACris ℂ_[p] p) :
    (phiPlus ℂ_[p] p)^[n] (algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p) a) =
      algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p) ((phi (K := ℂ_[p]) (p := p))^[n] a) := by
  have h : Function.Semiconj (algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p))
      (phi (K := ℂ_[p]) (p := p)) (phiPlus ℂ_[p] p) :=
    fun b => (phiPlus_algebraMap (K := ℂ_[p]) (p := p) b).symm
  exact (h.iterate_right n a).symm

theorem exists_root_of_aeval_eq_zero {Q : ℚ_[p][X]} (hQ : Q.Monic) {z : 𝔹} (hz : aeval z Q = 0) :
    ∃ r ∈ (Q.map (algebraMap ℚ_[p] (PadicAlgCl p))).roots, z = algClToBdR p r := by
  set Q' := Q.map (algebraMap ℚ_[p] (PadicAlgCl p))
  have hQ' : Q'.Monic := hQ.map _
  have hsplit : Q'.Splits := IsAlgClosed.splits Q'
  have hprod := hsplit.eq_prod_roots_of_monic hQ'
  have h1 : Q'.eval₂ (algClToBdR p : PadicAlgCl p →+* 𝔹) z = 0 := by
    rw [Polynomial.eval₂_map, ← hz, aeval_def]
    congr 1
    exact (algClToBdR p).comp_algebraMap
  rw [hprod, Polynomial.eval₂_multiset_prod, Multiset.map_map] at h1
  obtain ⟨r, hr, hr0⟩ := Multiset.mem_map.1 (Multiset.prod_eq_zero_iff.1 h1)
  simp only [Function.comp_apply, eval₂_sub, eval₂_X, eval₂_C] at hr0
  exact ⟨r, hr, sub_eq_zero.1 hr0⟩



theorem mem_unramifiedClosure_of_iotaPlus_eq {x : BCrisPlus ℂ_[p] p} {β : PadicAlgCl p}
    (hx : iotaPlus ℂ_[p] p x = algClToBdR p β) : β ∈ unramifiedClosure p := by
  classical
  have hint : IsIntegral ℚ_[p] β := Algebra.IsIntegral.isIntegral β
  let Q := minpoly ℚ_[p] β
  have hQm : Q.Monic := minpoly.monic hint
  let J := iotaPlus ℂ_[p] p
  let F := phiPlus ℂ_[p] p
  let iotaAlg := iotaPlusAlg (p := p)
  let phiAlg := phiPlusAlg (p := p)
  let evalPlus (y : BCrisPlus ℂ_[p] p) := aeval y Q
  let evalBdR (z : 𝔹) := aeval z Q
  have hQ0 : aeval x Q = 0 := by
    have hβ0 : aeval (algClToBdR p β) Q = 0 :=
      (aeval_algHom_apply (algClToBdR p) β Q).trans
        ((congrArg (algClToBdR p) (minpoly.aeval ℚ_[p] β)).trans (map_zero (algClToBdR p)))
    have hjx : iotaAlg x = algClToBdR p β := (iotaPlusAlg_apply x).trans hx
    refine iotaPlus_injective (K := ℂ_[p]) (p := p) ?_
    calc
      J (aeval x Q) = iotaAlg (aeval x Q) := (iotaPlusAlg_apply _).symm
      _ = aeval (iotaAlg x) Q := (aeval_algHom_apply iotaAlg x Q).symm
      _ = aeval (algClToBdR p β) Q := congrArg evalBdR hjx
      _ = 0 := hβ0
      _ = J 0 := (map_zero J).symm
  have hQn : ∀ n, aeval (F^[n] x) Q = 0 := by
    intro n
    induction n with
    | zero => exact hQ0
    | succ n ih =>
      let y := F^[n] x
      calc
        _ = aeval (F y) Q := congrArg evalPlus
          (Function.iterate_succ_apply' (f := (F : BCrisPlus ℂ_[p] p → BCrisPlus ℂ_[p] p)) n x)
        _ = aeval (phiAlg y) Q := congrArg evalPlus (phiPlusAlg_apply y).symm
        _ = phiAlg (aeval y Q) := aeval_algHom_apply phiAlg y Q
        _ = 0 := (congrArg phiAlg ih).trans (map_zero phiAlg)
  have hroot : ∀ n, ∃ r ∈ (Q.map (algebraMap ℚ_[p] (PadicAlgCl p))).roots,
      J (F^[n] x) = algClToBdR p r := fun n => by
    let y := F^[n] x
    refine exists_root_of_aeval_eq_zero (p := p) hQm ?_
    calc
      aeval (J y) Q = aeval (iotaAlg y) Q := congrArg evalBdR (iotaPlusAlg_apply y).symm
      _ = iotaAlg (aeval y Q) := aeval_algHom_apply iotaAlg y Q
      _ = 0 := (congrArg iotaAlg (hQn n)).trans (map_zero iotaAlg)
  choose r hr hrx using hroot

  let root : ℕ → (Q.map (algebraMap ℚ_[p] (PadicAlgCl p))).roots.toFinset := fun n =>
    ⟨r n, Multiset.mem_toFinset.2 (hr n)⟩
  obtain ⟨a₁, a₂, hne, hf⟩ := Finite.exists_ne_map_eq_of_infinite root
  have hr12 : r a₁ = r a₂ := congrArg Subtype.val hf
  obtain ⟨n₁, n₂, hlt, hr'⟩ : ∃ n₁ n₂, n₁ < n₂ ∧ r n₁ = r n₂ := by
    rcases lt_or_gt_of_ne hne with h | h
    · exact ⟨a₁, a₂, h, hr12⟩
    · exact ⟨a₂, a₁, h, hr12.symm⟩
  let x' := F^[n₁] x
  let N := n₂ - n₁
  have hN : 1 ≤ N := Nat.sub_pos_of_lt hlt
  have hfix : F^[N] x' = x' := by
    refine iotaPlus_injective (K := ℂ_[p]) (p := p) ?_
    calc
      J (F^[N] x') = J (F^[N + n₁] x) := congrArg J
        (Function.iterate_add_apply (f := (F : BCrisPlus ℂ_[p] p → BCrisPlus ℂ_[p] p)) N n₁ x).symm
      _ = J (F^[n₂] x) := congrArg (fun n => J (F^[n] x)) (Nat.sub_add_cancel hlt.le)
      _ = algClToBdR p (r n₂) := hrx n₂
      _ = algClToBdR p (r n₁) := congrArg (algClToBdR p) hr'.symm
      _ = J x' := (hrx n₁).symm

  let E := algebraMap (ACris ℂ_[p] p) (BCrisPlus ℂ_[p] p)
  obtain ⟨k, a, hs⟩ := IsLocalization.Away.surj (p : ACris ℂ_[p] p) x'
  let d : BCrisPlus ℂ_[p] p := (p : BCrisPlus ℂ_[p] p) ^ k
  have hs' : x' * d = E a :=
    (congrArg (fun b : BCrisPlus ℂ_[p] p => x' * b ^ k) (map_natCast E p)).symm.trans hs
  let G := F ^ N
  have hd : G d = d := map_natCast_pow G p k
  have ha : (phi (K := ℂ_[p]) (p := p))^[N] a = a := by
    refine algebraMap_aCris_injective (p := p) ?_
    calc
      E ((phi (K := ℂ_[p]) (p := p))^[N] a) = G (E a) := (phiPlus_iterate_algebraMap N a).symm
      _ = G (x' * d) := congrArg G hs'.symm
      _ = G x' * G d := map_mul G x' d
      _ = x' * d := congrArg₂ (· * ·) hfix hd
      _ = E a := hs'

  have hθa : ((theta ℂ_[p] p a : 𝒪) : ℂ_[p]) = ((r n₁ * (p : PadicAlgCl p) ^ k : PadicAlgCl p) : ℂ_[p]) := by
    have h1 : iota ℂ_[p] p a = algClToBdR p (r n₁ * (p : PadicAlgCl p) ^ k) := by
      have hjd : J d = (p : 𝔹) ^ k := map_natCast_pow J p k
      have hrd : algClToBdR p ((p : PadicAlgCl p) ^ k) = (p : 𝔹) ^ k :=
        map_natCast_pow (algClToBdR p).toRingHom p k
      calc
        _ = J (E a) := (iotaPlus_algebraMap (K := ℂ_[p]) (p := p) a).symm
        _ = J (x' * d) := congrArg J hs'.symm
        _ = J x' * J d := map_mul J x' d
        _ = algClToBdR p (r n₁) * algClToBdR p ((p : PadicAlgCl p) ^ k) :=
          congrArg₂ (· * ·) (hrx n₁) (hjd.trans hrd.symm)
        _ = _ := (map_mul (algClToBdR p) (r n₁) ((p : PadicAlgCl p) ^ k)).symm
    exact (thetaField_iota a).symm.trans
      ((thetaAlgHom_apply p _).symm.trans
        ((congrArg (thetaAlgHom p) h1).trans (thetaAlgHom_algClToBdR p _)))
  have hpnorm : ‖(p : ℂ_[p])‖ = ‖(p : PadicAlgCl p)‖ := by
    rw [← PadicComplex.coe_natCast, PadicComplex.norm_extends]
  have hmem : r n₁ * (p : PadicAlgCl p) ^ k ∈ unramifiedClosure p := by
    refine mem_unramifiedClosure_of_forall_approx fun m => ?_
    obtain ⟨u, hu, hu'⟩ := exists_theta_approx_of_phi_iterate hN ha m
    refine ⟨u, hu, ?_⟩
    rw [hθa, ← UniformSpace.Completion.coe_sub, PadicComplex.norm_extends, hpnorm] at hu'
    exact hu'
  have hrU : r n₁ ∈ unramifiedClosure p := by
    have hpk : ((p : PadicAlgCl p) ^ k) ∈ unramifiedClosure p := pow_mem (natCast_mem _ p) k
    have hpk0 : ((p : PadicAlgCl p) ^ k) ≠ 0 := pow_ne_zero _ (Nat.cast_ne_zero.2 hp.out.ne_zero)
    have := mul_mem hmem (inv_mem hpk)
    rwa [mul_assoc, mul_inv_cancel₀ hpk0, mul_one] at this

  have hQr : aeval (r n₁) Q = 0 := by
    have h := (mem_roots (hQm.map (algebraMap ℚ_[p] (PadicAlgCl p))).ne_zero).1 (hr n₁)
    rwa [IsRoot, eval_map, ← aeval_def] at h
  have hmin : minpoly ℚ_[p] (r n₁) = minpoly ℚ_[p] β :=
    (minpoly.eq_of_irreducible_of_monic (minpoly.irreducible hint) hQr hQm).symm
  obtain ⟨τ, hτ⟩ := (Normal.minpoly_eq_iff_mem_orbit (PadicAlgCl p)).1 hmin
  have hτ' : τ β = r n₁ := hτ
  have hβ : β = τ⁻¹ (r n₁) := by
    rw [← hτ', ← AlgEquiv.mul_apply, inv_mul_cancel, AlgEquiv.one_apply]
  rw [hβ]
  exact gal_mem_unramifiedClosure τ⁻¹ hrU

end Unramified

section Invariants

variable {K : IntermediateField ℚ_[p] (PadicAlgCl p)}

theorem iotaPlus_gal_smul (σ : Gal(PadicAlgCl p/K)) (x : BCrisPlus ℂ_[p] p) :
    iotaPlus ℂ_[p] p (σ • x) = σ • iotaPlus ℂ_[p] p x := by
  let j := iotaPlus ℂ_[p] p
  let g := galBdRHom σ
  change j (galPlus σ x) = g (j x)
  refine localization_hom_apply_eq (Submonoid.powers (p : ACris ℂ_[p] p))
    (j.comp (galPlus σ)) (g.comp j) (fun y => ?_) x
  exact (congrArg j (galPlus_algebraMap σ y)).trans
    ((iotaPlus_algebraMap (K := ℂ_[p]) (p := p) (galCris σ y)).trans
      ((iota_gal_smul σ y).trans (congrArg g (iotaPlus_algebraMap (K := ℂ_[p]) (p := p) y).symm)))

variable [FiniteDimensional ℚ_[p] K]

theorem bCrisPlus_fixed (x : BCrisPlus ℂ_[p] p) (hx : ∀ σ : Gal(PadicAlgCl p/K), σ • x = x) :
    ∃ k ∈ maxUnramified p K, iotaPlus ℂ_[p] p x = algClToBdR p k := by
  obtain ⟨k, hk⟩ := bDeRhamPlus_fixed K (iotaPlus ℂ_[p] p x) fun σ => by
    exact (iotaPlus_gal_smul σ x).symm.trans (congrArg (iotaPlus ℂ_[p] p) (hx σ))
  exact ⟨k, ⟨k.2, mem_unramifiedClosure_of_iotaPlus_eq hk.symm⟩, hk.symm⟩


omit [FiniteDimensional ℚ_[p] K] in
theorem exists_bCrisPlus_fixed {k : PadicAlgCl p} (hk : k ∈ maxUnramified p K) :
    ∃ x : BCrisPlus ℂ_[p] p, (∀ σ : Gal(PadicAlgCl p/K), σ • x = x) ∧
      iotaPlus ℂ_[p] p x = algClToBdR p k := by
  obtain ⟨x, hx⟩ := (mem_algClInBCrisPlus (p := p)).1 (unramifiedClosure_le hk.2)
  refine ⟨x, fun σ => iotaPlus_injective (K := ℂ_[p]) (p := p) ?_, hx⟩
  exact (iotaPlus_gal_smul σ x).trans
    ((congrArg (fun y : 𝔹 => σ • y) hx).trans
      ((gal_smul_algClToBdR σ k).trans
        ((congrArg (algClToBdR p) (σ.commutes (⟨k, hk.1⟩ : K))).trans hx.symm)))

end Invariants

end ACris

end GroundTheory.PAdicHodge
