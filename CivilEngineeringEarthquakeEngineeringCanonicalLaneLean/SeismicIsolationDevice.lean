import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicIsolationDevicePackage where
  isolationPeriod : Float
  yieldStrength : Float
  postYieldStiffness : Float
  energyDissipation : Prop
  stabilityUnderVerticalLoad : Prop

structure SeismicIsolationDeviceEvidence (I : SeismicIsolationDevicePackage) where
  isolationPeriodClosed : I.isolationPeriod > 0.0
  energyDissipationClosed : I.energyDissipation
  stabilityClosed : I.stabilityUnderVerticalLoad

def SeismicIsolationDeviceClosed (I : SeismicIsolationDevicePackage) : Prop :=
  I.isolationPeriod > 0.0 ∧ I.energyDissipation ∧ I.stabilityUnderVerticalLoad

theorem seismic_isolation_device_closed_from_evidence (I : SeismicIsolationDevicePackage)
    (E : SeismicIsolationDeviceEvidence I) : SeismicIsolationDeviceClosed I := by
  exact And.intro E.isolationPeriodClosed
    (And.intro E.energyDissipationClosed E.stabilityClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
