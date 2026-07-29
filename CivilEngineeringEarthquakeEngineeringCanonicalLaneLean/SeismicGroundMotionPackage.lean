import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SeismicGroundMotionPackage where
  accelerationTimeHistory : Type u
  responseSpectrum : Type v
  peakGroundAcceleration : Prop
  siteClassification : Prop
  durationIntensity : Prop

structure SeismicGroundMotionEvidence (G : SeismicGroundMotionPackage) where
  peakGroundAccelerationClosed : G.peakGroundAcceleration
  siteClassificationClosed : G.siteClassification
  durationIntensityClosed : G.durationIntensity

def SeismicGroundMotionClosed (G : SeismicGroundMotionPackage) : Prop :=
  G.peakGroundAcceleration ∧ G.siteClassification ∧ G.durationIntensity

theorem seismic_ground_motion_closed_from_evidence
    (G : SeismicGroundMotionPackage) (E : SeismicGroundMotionEvidence G) :
    SeismicGroundMotionClosed G := by
  exact And.intro E.peakGroundAccelerationClosed
    (And.intro E.siteClassificationClosed E.durationIntensityClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse