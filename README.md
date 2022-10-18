# COVID-19 Scenario Hub website: guide to code

Contents:
- [Code for analysis and reporting](#analysis-and-reporting)
- [Editing specific website pages](#website-pages)

## Analysis and reporting

#### Analysis 

Scenario analyses hinge on the file [`scenarios.R`](/code/load/scenarios.R) which provides meta-data for each scenario round.

Analysis functions are in sub-folders of [`code`](/code), as follows:

Load
- `scenarios.R`: Create scenario metadata
- `load_local_results.R`: load files from a local clone of the main scenario hub
- `download_results.R`: fetch a parquet file stored on github
- `plot_palettes`: Get colour palettes for plotting
- `plot_scenarios`: Plot the four scenarios side by side

Report
- `prep.R`: load and prepare data using functions in `load`
- `results-multi-country.Rmd`: create results comparing scenarios for countries with multiple models

Summarise
- `cumulative.R`: summarise cumulative outcomes
- `peaks.R`: find and summarise outcomes at projected peaks

#### Reporting

Reports can be run via the script `create-report.R`, or separately by interactively knitting each report's Rmd file. 
Reports use the following Rmd chunks of common code:
- `_model_feature.Rmd`: number of models etc.
- `_cumulative_plots.Rmd`: create cumulative plots
- `_peaks.Rmd`: create plots of peaks
- `_by_scenario.Rmd`: plot by scenario


# Website pages

- [About](about.Rmd)
- [Community](community.Rmd)
- [Contact](contact.Rmd)
- [Scenarios](scenarios.Rmd)
- [Report 1](report1.Rmd)
- [Report 2](report2.Rmd)
