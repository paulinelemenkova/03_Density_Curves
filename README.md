# R Density Distribution Curves — Mariana Trench Depths

An R script drawing kernel-density distribution curves of the bathymetric depths
of the Mariana Trench, grouped by tectonic plate and by cross-section profile.

## Related publication

This script contributes to the depth-density distribution analysis in:

Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology Using R
Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.

- DOI: https://doi.org/10.3846/gac.2019.3785
- figshare: https://doi.org/10.6084/m9.figshare.9762860
- HAL: https://hal.science/hal-02277500
- Zenodo: https://zenodo.org/record/3385005
- SSRN: https://papers.ssrn.com/sol3/papers.cfm?abstract_id=3447481
- ISSN: 2029-6991 (Scopus)

## Script

- 18-Density.R: reads DepthTect.csv, removes NA rows, reshapes wide to long with
  data.table::melt, and draws smoothed kernel-density curves (ggplot2
  geom_density) of the depth distribution grouped two ways: by tectonic plate
  (18-Density-by-plates.pdf) and by profile (18-Density-by-profiles.pdf).

(Density_23102025.r is a later, unrelated FAOSTAT example.)

## Methods

- Kernel density estimation of a continuous variable (depth), compared across
  grouping factors; wide-to-long reshaping (data.table::melt).

## Data

- DepthTect.csv: per-observation depths and tectonic-plate membership along the
  25 Mariana Trench profiles.

## Requirements

- R (>= 3.5); packages: ggplot2, data.table

## Author and citation

Polina Lemenkova — ORCID https://orcid.org/0000-0002-5759-1089
Cite: Lemenkova, P. Statistical Analysis of the Mariana Trench Geomorphology
Using R Programming Language. Geodesy and Cartography 2019, 45(2), 57-84.
https://doi.org/10.3846/gac.2019.3785

## License

MIT — see the LICENSE file (Copyright Polina Lemenkova).
