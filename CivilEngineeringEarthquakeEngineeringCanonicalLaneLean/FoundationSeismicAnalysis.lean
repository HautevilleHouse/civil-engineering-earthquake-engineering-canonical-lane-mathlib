import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure FoundationSeismicAnalysisPackage where
  soilType : String
  spectralAcceleration : Float
  siteClass : String
  liquefactionPotential : Prop
  bearingCapacity : Prop

structure FoundationSeismicEvidence (F : FoundationSeismicAnalysisPackage) where
  spectralAccelerationClosed : F.spectralAcceleration > 0.0
  liquefactionPotentialAssessed : F.liquefactionPotential
  bearingCapacitySatisfied : F.bearingCapacity

def FoundationSeismicClosed (F : FoundationSeismicAnalysisPackage) : Prop :=
  F.spectralAcceleration > 0.0 ∧ F.liquefactionPotential ∧ F.bearingCapacity

theorem foundation_seismic_closed_from_evidence (F : FoundationSeismicAnalysisPackage)
    (E : FoundationSeismicEvidence F) : FoundationSeismicClosed F := by
  exact And.intro E.spectralAccelerationClosed
    (And.intro E.liquefactionPotentialAssessed E.bearingCapacitySatisfied)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
