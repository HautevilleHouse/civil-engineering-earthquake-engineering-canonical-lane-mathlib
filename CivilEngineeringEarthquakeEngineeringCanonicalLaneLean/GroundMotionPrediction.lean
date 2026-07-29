import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure GroundMotionPredictionPackage where
  attenuationRelation : Type u
  siteAmplification : Type v
  intensityMeasure : Type w
  predictionEquationDefined : Prop
  siteResponseDefined : Prop
  intensityDefined : Prop
  attenuationEvidence : predictionEquationDefined
  siteEvidence : siteResponseDefined
  intensityEvidence : intensityDefined

structure GroundMotionPredictionEvidence (G : GroundMotionPredictionPackage) where
  predictionEquationDefinedClosed : G.predictionEquationDefined
  siteResponseDefinedClosed : G.siteResponseDefined
  intensityDefinedClosed : G.intensityDefined

def GroundMotionPredictionClosed (G : GroundMotionPredictionPackage) : Prop :=
  G.predictionEquationDefined ∧ G.siteResponseDefined ∧ G.intensityDefined

theorem ground_motion_prediction_closed_from_evidence (G : GroundMotionPredictionPackage) (E : GroundMotionPredictionEvidence G) :
    GroundMotionPredictionClosed G := by
  exact And.intro E.predictionEquationDefinedClosed (And.intro E.siteResponseDefinedClosed E.intensityDefinedClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse