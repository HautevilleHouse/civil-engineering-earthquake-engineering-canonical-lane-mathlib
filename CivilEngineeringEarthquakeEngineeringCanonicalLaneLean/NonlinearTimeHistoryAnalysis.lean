import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure NonlinearTimeHistoryAnalysisPackage where
  groundMotionRecord : String
  structuralModel : Type
  dampingRatio : Float
  plasticityModel : Prop
  timeStep : Float

default instance : Inhabited (NonlinearTimeHistoryAnalysisPackage) where
  default := {
    groundMotionRecord := "default"
    structuralModel := PUnit
    dampingRatio := 0.05
    plasticityModel := True
    timeStep := 0.01
  }

structure NonlinearTimeHistoryEvidence (N : NonlinearTimeHistoryAnalysisPackage) where
  plasticityModelClosed : N.plasticityModel
  dampingRatioValid : N.dampingRatio ≥ 0.0 ∧ N.dampingRatio ≤ 1.0

def NonlinearTimeHistoryClosed (N : NonlinearTimeHistoryAnalysisPackage) : Prop :=
  N.plasticityModel ∧ N.dampingRatio ≥ 0.0 ∧ N.dampingRatio ≤ 1.0

theorem nonlinear_time_history_closed_from_evidence (N : NonlinearTimeHistoryAnalysisPackage)
    (E : NonlinearTimeHistoryEvidence N) : NonlinearTimeHistoryClosed N := by
  exact And.intro E.plasticityModelClosed
    (And.intro (And.left E.dampingRatioValid) (And.right E.dampingRatioValid))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
