import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CivilEngineeringEarthquakeEngineeringCanonicalLaneLean

structure ResponseSpectrumModalAnalysisPackage where
  modalFrequencies : List Float
  modalShapes : List (List Float)
  responseSpectrum : Float -> Float
  modalCombinationRule : String
  baseShear : Prop

structure ResponseSpectrumModalEvidence (R : ResponseSpectrumModalAnalysisPackage) where
  modalFrequenciesComputed : R.modalFrequencies.length > 0
  responseSpectrumApplied : ∀ f ∈ R.modalFrequencies, R.responseSpectrum f ≥ 0.0
  baseShearClosed : R.baseShear

def ResponseSpectrumModalClosed (R : ResponseSpectrumModalAnalysisPackage) : Prop :=
  R.modalFrequencies.length > 0 ∧ (∀ f ∈ R.modalFrequencies, R.responseSpectrum f ≥ 0.0) ∧ R.baseShear

theorem response_spectrum_modal_closed_from_evidence (R : ResponseSpectrumModalAnalysisPackage)
    (E : ResponseSpectrumModalEvidence R) : ResponseSpectrumModalClosed R := by
  exact And.intro E.modalFrequenciesComputed
    (And.intro E.responseSpectrumApplied E.baseShearClosed)

end CivilEngineeringEarthquakeEngineeringCanonicalLaneLean
end HautevilleHouse
