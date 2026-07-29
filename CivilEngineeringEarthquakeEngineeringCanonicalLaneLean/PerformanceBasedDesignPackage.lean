import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure PerformanceBasedDesignPackage where
  hazardCurve : Type u
  fragilityFunction : Type v
  collapseProbability : Prop
  driftCompliance : Prop
  repairCostRatio : Prop

structure PerformanceBasedDesignEvidence (P : PerformanceBasedDesignPackage) where
  collapseProbabilityClosed : P.collapseProbability
  driftComplianceClosed : P.driftCompliance
  repairCostRatioClosed : P.repairCostRatio

def PerformanceBasedDesignClosed (P : PerformanceBasedDesignPackage) : Prop :=
  P.collapseProbability ∧ P.driftCompliance ∧ P.repairCostRatio

theorem performance_based_design_closed_from_evidence
    (P : PerformanceBasedDesignPackage) (E : PerformanceBasedDesignEvidence P) :
    PerformanceBasedDesignClosed P := by
  exact And.intro E.collapseProbabilityClosed
    (And.intro E.driftComplianceClosed E.repairCostRatioClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse