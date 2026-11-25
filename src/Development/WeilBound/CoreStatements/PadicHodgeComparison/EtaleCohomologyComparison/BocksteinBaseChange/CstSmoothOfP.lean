module

public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.CstSmoothOfEtSide
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.AcrisKummerUnits.ForE
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.EtaleMapFirstChern
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernClassUnique
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.AtlasGroupActions.FirstChernCompatGlue
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.Formal
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TiltSectionUnits.FcIsUnitSub
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.BocksteinBaseChange.TiltSectionUnits.NormLtOneOfMemMax
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.EtaleChernClassEqKummerClass
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.KummerCupProducts.FirstChernUnique
public import Development.WeilBound.CoreStatements.PadicHodgeComparison.EtaleCohomologyComparison.ZariskiEtaleLifting.FirstChernCompatibleL

@[expose] public section

set_option backward.isDefEq.respectTransparency false

noncomputable section

open CategoryTheory Limits AlgebraicGeometry TensorProduct

namespace CrystallineSemistableComparison

theorem chapters_of (hP : BocksteinBaseChangeP) : Chapters :=
  { rin := fun l _ => R.forE l
    et := fun l _ K => E.etMap l K
    uniq := E.Main.firstChern_unique
    main := fun l _ => B.main l
    compat := fun l _ => B.compat l
    compatH := fun l _ => B.compatH l
    c1 := fun l _ => _root_.GlobalTheory.CompanionTheory.FirstChernComparison.main l
    p := hP }

theorem cstSmooth_of_p (hP : BocksteinBaseChangeP) (h : EtSideS) : CstSmooth :=
  cstSmooth_of_etSide glueL glueE glueB factsC resEx h (chapters_of hP)

end CrystallineSemistableComparison
