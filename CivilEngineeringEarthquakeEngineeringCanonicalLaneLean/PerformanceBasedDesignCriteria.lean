import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure PerformanceBasedDesignCriteriaPackage where
  hazardLevel : String
  targetDriftRatio : Float
  targetStrength : Float
  collapsePrevention : Prop
  lifeSafety : Prop

structure PerformanceBasedDesignEvidence (P : PerformanceBasedDesignCriteriaPackage) where
  collapsePreventionClosed : P.collapsePrevention
  lifeSafetyClosed : P.lifeSafety
  driftSatisfied : P.targetDriftRatio > 0.0

def PerformanceBasedDesignClosed (P : PerformanceBasedDesignCriteriaPackage) : Prop :=
  P.collapsePrevention ∧ P.lifeSafety ∧ P.targetDriftRatio > 0.0

theorem performance_based_design_closed_from_evidence (P : PerformanceBasedDesignCriteriaPackage)
    (E : PerformanceBasedDesignEvidence P) : PerformanceBasedDesignClosed P := by
  exact And.intro E.collapsePreventionClosed
    (And.intro E.lifeSafetyClosed E.driftSatisfied)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
