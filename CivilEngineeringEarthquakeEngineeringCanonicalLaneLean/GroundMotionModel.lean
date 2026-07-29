import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure EarthquakeAdmittedObject where
  sourceModel : Type u
  propagationPath : Type v
  latitude : Float
  longitude : Float
  magnitude : Float
  depth : Float
  distanceToSite : Float
  groundMotionPrediction : Float
  conclusion : groundMotionPrediction > 0

structure AdmissibleClass where
  object : EarthquakeAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse