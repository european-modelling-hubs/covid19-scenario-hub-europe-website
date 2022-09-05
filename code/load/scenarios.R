# Set scenario labels
library(tibble)
scenarios <- list(
  "targets" = c("Weekly incident deaths" = "inc death",
                "Weekly incident cases" = "inc case",
                "Weekly incident infections" = "inc infection",
                "Weekly hospital admissions" = "inc hosp",
                "Weekly critical care admissions" = "inc icu"),
  # ------------------------------------------------------------------------
  # Round 0
  "round-0" = list("round" = 0,
    "scenario_labels" = c(
                                       "A-2022-02-25" = "Strong/None",
                                       "B-2022-02-25" = "Strong/New",
                                       "C-2022-02-25" = "Weak/None",
                                       "D-2022-02-25" = "Weak/New"),
                   "origin_date" = as.Date("2022-03-13"),
                   "submission_window_end" = as.Date("2022-04-22"),
                   "scenario_caption" = "Strong/Weak = stronger/weaker immunity maintained over time; \n None/New = immune evading variant introduced May 2022",
    "table" = "<table>
  <tr>
    <td></td>
    <td>
      <b>No new variant
      </b><br>
      <ul>
          <li>Projections are initialized with the mix of strains circulating at the start of the projection period</li>
      </ul>
    </td>
    <td>
      <b>New variant X</b><br>
      <ul>
          <li>Introduction: From May 1st 2022 is a continuous influx of 50 weekly infections of variant X over 16 weeks</li>
          <li>Characteristics: Variant X has 30% immune escape, and the same intrinsic transmissibility and severity as Omicron.</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>
      <b> Optimistic waning of protection</b><br>
      <ul>
        <li>Speed: 10 months median time to transition to partial immunity</li>
        <li>Plateau: 40% reduction in protection from baseline (protection immediately after exposure) at plateau</b></li>
      </ul>
    </td>
    <td>
      Scenario A
    </td>
    <td>
      Scenario B
    </td>
  </tr>
  <tr>
    <td>
      <b>Pessimistic waning of protection</b><br>
      <ul>
        <li>Speed: 4 months median time to transition to partial immunity</li>
        <li>Plateau: 60% reduction in protection from baseline level at immune plateau</li>
      </ul>
    </td>
    <td>
      Scenario C
    </td>
    <td>
      Scenario D
    </td>
  </tr>
</table>"),
  # -------------------------------------------------------------------------
  # Round 1
  "round-1" = list("round" = 1,
    "scenario_labels" = c(
                                      "A-2022-05-22" = "Strong/Summer",
                                      "B-2022-05-22" = "Strong/Autumn",
                                      "C-2022-05-22" = "Weak/Summer",
                                      "D-2022-05-22" = "Weak/Autumn"),
    "origin_date" = as.Date("2022-05-22"),
    "submission_window_end" = as.Date("2022-07-01"),
    "scenario_caption" = "_Guide to scenarios: Stronger or weaker immunity maintained over time ('Strong/Weak'); \n 60+ second booster campaign starting in summer or autumn ('Summer/Autumn')_",
    "table" = "<table>
  <tr>
    <td></td>
    <td>
      <b>Slow summer booster campaign</b><br>
      <ul>
          <li>2nd booster recommended for 60+</li>
          <li>Uptake reaches 50% of 1st booster coverage by 15th December</li>
          <li>Uptake starts <b>15th June*</b></li>
      </ul>
    </td>
    <td>
      <b>Fast autumn booster campaign</b><br>
      <ul>
          <li>2nd** booster recommended for 60+</li>
          <li>Uptake reaches 50% of 1st booster coverage by 15th December</li>
          <li>Uptake starts <b>15th September</b></li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>
      <b>Optimistic slow immune waning</b><br>
      <ul>
        <li>60% reduction in immunity against infection</li>
        <li>In <b>8 months</b></li>
      </ul>
    </td>
    <td>
      Scenario A (<i>'Strong/Summer'</i>)
    </td>
    <td>
      Scenario B (<i>'Strong/Autumn'</i>)
    </td>
  </tr>
  <tr>
    <td>
      <b>Pessimistic fast immune waning</b><br>
      <ul>
        <li>60% reduction in immunity against infection</li>
        <li>In <b>3 months</b></li>
      </ul>
    </td>
    <td>
      Scenario C (<i>'Weak/Summer'</i>)
    </td>
    <td>
      Scenario D (<i>'Weak/Summer'</i>)
    </td>
  </tr>
</table>

_* If a second booster is already offered to 60+ (Greece, Netherlands), vaccination uptake continues as currently_

_** If a second booster is already offered to 60+ (Greece, Netherlands), a third booster dose is recommended_"),
  # -------------------------------------------------------------------------
  # Round 2
  "round-2" = list("round" = 2,
                   "scenario_labels" = c(
                     # Short text label for scenarios in format:
                     #  "Policy scenario / Epidemiological scenario"
                     "A-2022-07-24" = "60+Booster/Optimistic VE",
                     "B-2022-07-24" = "18+Booster/Optimistic VE",
                     "C-2022-07-24" = "60+Booster/Pessimistic VE",
                     "D-2022-07-24" = "18+Booster/Pessimistic VE"),
                   "origin_date" = as.Date("2022-07-24"),
                   "submission_window_end" = as.Date("2022-07-29"),
                   "scenario_caption" = "Scenarios: Autumn second booster campaign among population aged '18+' or '60+'; vaccine effectiveness is 'optimistic'(effectiveness as of a booster vaccine against Delta) or 'pessimistic' (as against BA.4/BA.5/BA.2.75)",
                   "table" = "<table>
  <tr>
    <td></td>
    <td>
      <b>Age 60+ booster campaign</b><br>
      <ul>
          <li>2nd* booster recommended for 60+</li>
          <li>Uptake starts 15th September, and reaches 50% coverage by 15th December</li>
      </ul>
    </td>
    <td>
      <b>Age 18+ booster campaign</b><br>
      <ul>
          <li>2nd* booster recommended for general population, ages 18+</li>
          <li>Uptake starts 15th September, and reaches 50% coverage by 15th December</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>
      <b>Optimistic vaccine effectiveness</b><br>
      <ul>
        <li>Increased booster vaccine effectiveness to that seen against <b>Delta variant</b></li>
      </ul>
    </td>
    <td>
      Scenario A
    </td>
    <td>
      Scenario B
    </td>
  </tr>
  <tr>
    <td>
      <b>Pessimistic vaccine effectiveness</b><br>
      <ul>
        <li>Reduced booster vaccine effectiveness against infection from <b>BA.4/BA.5/BA.2.75 variants</b></li>
      </ul>
    </td>
    <td>
      Scenario C
    </td>
    <td>
      Scenario D
    </td>
  </tr>
</table>"
  )
)
