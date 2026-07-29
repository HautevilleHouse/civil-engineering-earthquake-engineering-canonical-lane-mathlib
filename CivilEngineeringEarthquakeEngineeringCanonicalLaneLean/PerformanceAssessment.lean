import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure PerformanceAssessmentPackage where
  limitStates : Type u
  fragilityCurves : Type v
  lossEstimation : Type w
  limitStateDefined : Prop
  fragilityDerived : Prop
  lossModel : Prop
  limitStateEvidence : limitStateDefined
  fragilityEvidence : fragilityDerived
  lossEvidence : lossModel

structure PerformanceAssessmentEvidence (P : PerformanceAssessmentPackage) where
  limitStateDefinedClosed : P.limitStateDefined
  fragilityDerivedClosed : P.fragilityDerived
  lossModelClosed : P.lossModel

def PerformanceAssessmentClosed (P : PerformanceAssessmentPackage) : Prop :=
  P.limitStateDefined ∧ P.fragilityDerived ∧ P.lossModel

theorem performance_assessment_closed_from_evidence (P : PerformanceAssessmentPackage) (E : PerformanceAssessmentEvidence P) :
    PerformanceAssessmentClosed P := by
  exact And.intro E.limitStateDefinedClosed (And.intro E.fragilityDerivedClosed E.lossModelClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse