import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure GroundMotionPackage where
  sourceMechanism : Prop
  pathAttenuation : Prop
  siteResponse : Prop
  residualUncertainty : Prop

structure GroundMotionEvidence (G : GroundMotionPackage) where
  sourceMechanismClosed : G.sourceMechanism
  pathAttenuationClosed : G.pathAttenuation
  siteResponseClosed : G.siteResponse
  residualUncertaintyClosed : G.residualUncertainty

def GroundMotionClosed (G : GroundMotionPackage) : Prop :=
  G.sourceMechanism ∧ G.pathAttenuation ∧ G.siteResponse ∧ G.residualUncertainty

theorem ground_motion_closed_from_evidence (G : GroundMotionPackage) (E : GroundMotionEvidence G) :
    GroundMotionClosed G := by
  exact And.intro E.sourceMechanismClosed (And.intro E.pathAttenuationClosed (And.intro E.siteResponseClosed E.residualUncertaintyClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
