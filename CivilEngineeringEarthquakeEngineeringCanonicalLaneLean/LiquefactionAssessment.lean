import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure SoilProfile where
  soilType : String
  shearWaveVelocity : Float
  groundwaterDepth : Float
  cyclicStressRatio : Float
  cyclicResistanceRatio : Float
  liquefactionPotentialIndex : Float
  liquefactionSusceptible : Prop

structure LiquefactionEvidence (S : SoilProfile) where
  liquefactionSusceptibleClosed : S.liquefactionSusceptible

def LiquefactionClosed (S : SoilProfile) : Prop :=
  S.liquefactionSusceptible

theorem liquefaction_closed_from_evidence (S : SoilProfile)
    (E : LiquefactionEvidence S) : LiquefactionClosed S := by
  exact E.liquefactionSusceptibleClosed

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse