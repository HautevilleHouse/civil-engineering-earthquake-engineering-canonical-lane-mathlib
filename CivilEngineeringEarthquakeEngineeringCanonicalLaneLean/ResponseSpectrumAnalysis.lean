import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure ResponseSpectrumPackage where
  modalDecomposition : Prop
  spectralAcceleration : Prop
  combinationRule : Prop
  dampingModel : Prop

structure ResponseSpectrumEvidence (R : ResponseSpectrumPackage) where
  modalDecompositionClosed : R.modalDecomposition
  spectralAccelerationClosed : R.spectralAcceleration
  combinationRuleClosed : R.combinationRule
  dampingModelClosed : R.dampingModel

def ResponseSpectrumClosed (R : ResponseSpectrumPackage) : Prop :=
  R.modalDecomposition ∧ R.spectralAcceleration ∧ R.combinationRule ∧ R.dampingModel

theorem response_spectrum_closed_from_evidence (R : ResponseSpectrumPackage) (E : ResponseSpectrumEvidence R) :
    ResponseSpectrumClosed R := by
  exact And.intro E.modalDecompositionClosed (And.intro E.spectralAccelerationClosed (And.intro E.combinationRuleClosed E.dampingModelClosed))

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
