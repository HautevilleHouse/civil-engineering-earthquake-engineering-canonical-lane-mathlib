import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure LiquefactionSusceptibilityPackage where
  soilType : Type u
  groundwaterDepth : Prop
  cyclicStressRatio : Prop
  standardPenetrationResistance : Prop

structure LiquefactionEvidence (L : LiquefactionSusceptibilityPackage) where
  groundwaterDepthClosed : L.groundwaterDepth
  cyclicStressRatioClosed : L.cyclicStressRatio
  standardPenetrationResistanceClosed : L.standardPenetrationResistance

def LiquefactionSusceptibilityClosed (L : LiquefactionSusceptibilityPackage) : Prop :=
  L.groundwaterDepth ∧ L.cyclicStressRatio ∧ L.standardPenetrationResistance

theorem liquefaction_susceptibility_closed_from_evidence
    (L : LiquefactionSusceptibilityPackage) (E : LiquefactionEvidence L) :
    LiquefactionSusceptibilityClosed L := by
  exact And.intro E.groundwaterDepthClosed
    (And.intro E.cyclicStressRatioClosed E.standardPenetrationResistanceClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse