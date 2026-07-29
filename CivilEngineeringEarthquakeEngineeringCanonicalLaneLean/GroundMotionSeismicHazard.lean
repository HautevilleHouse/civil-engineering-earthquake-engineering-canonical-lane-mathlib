import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicHazardPackage where
  region : Type u
  faultMechanism : Type v
  attenuationRelation : Type w
  peakGroundAcceleration : Prop
  responseSpectrum : Prop
  siteAmplification : Prop

structure GroundMotionAnalyticEvidence (S : SeismicHazardPackage) where
  peakGroundAccelerationClosed : S.peakGroundAcceleration
  responseSpectrumClosed : S.responseSpectrum
  siteAmplificationClosed : S.siteAmplification

def SeismicHazardClosed (S : SeismicHazardPackage) : Prop :=
  S.peakGroundAcceleration ∧ S.responseSpectrum ∧ S.siteAmplification

theorem seismic_hazard_closed_from_evidence (S : SeismicHazardPackage)
    (E : GroundMotionAnalyticEvidence S) : SeismicHazardClosed S := by
  exact And.intro E.peakGroundAccelerationClosed
    (And.intro E.responseSpectrumClosed E.siteAmplificationClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse