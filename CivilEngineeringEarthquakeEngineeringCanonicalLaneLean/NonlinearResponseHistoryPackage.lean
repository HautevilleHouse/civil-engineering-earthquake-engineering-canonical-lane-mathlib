import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure NonlinearResponseHistoryPackage where
  hystereticModel : Type u
  incrementalDynamicAnalysis : Type v
  pushoverCurve : Prop
  energyDissipation : Prop
  residualDrift : Prop

structure NonlinearResponseHistoryEvidence (N : NonlinearResponseHistoryPackage) where
  pushoverCurveClosed : N.pushoverCurve
  energyDissipationClosed : N.energyDissipation
  residualDriftClosed : N.residualDrift

def NonlinearResponseHistoryClosed (N : NonlinearResponseHistoryPackage) : Prop :=
  N.pushoverCurve ∧ N.energyDissipation ∧ N.residualDrift

theorem nonlinear_response_history_closed_from_evidence
    (N : NonlinearResponseHistoryPackage) (E : NonlinearResponseHistoryEvidence N) :
    NonlinearResponseHistoryClosed N := by
  exact And.intro E.pushoverCurveClosed
    (And.intro E.energyDissipationClosed E.residualDriftClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse