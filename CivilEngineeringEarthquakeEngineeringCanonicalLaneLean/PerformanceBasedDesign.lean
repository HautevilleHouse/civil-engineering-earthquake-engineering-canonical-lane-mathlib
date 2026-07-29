import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure PerformanceBasedDesignPackage where
  hazardAnalysis : Prop
  structuralModeling : Prop
  demandCapacityCheck : Prop
  acceptanceCriteria : Prop

structure PerformanceBasedDesignEvidence (P : PerformanceBasedDesignPackage) where
  hazardAnalysisClosed : P.hazardAnalysis
  structuralModelingClosed : P.structuralModeling
  demandCapacityCheckClosed : P.demandCapacityCheck
  acceptanceCriteriaClosed : P.acceptanceCriteria

def PerformanceBasedDesignClosed (P : PerformanceBasedDesignPackage) : Prop :=
  P.hazardAnalysis ∧ P.structuralModeling ∧ P.demandCapacityCheck ∧ P.acceptanceCriteria

theorem performance_based_design_closed_from_evidence (P : PerformanceBasedDesignPackage) (E : PerformanceBasedDesignEvidence P) :
    PerformanceBasedDesignClosed P := by
  exact And.intro E.hazardAnalysisClosed (And.intro E.structuralModelingClosed (And.intro E.demandCapacityCheckClosed E.acceptanceCriteriaClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
