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
                   "scenario_caption" = "Scenarios: Stronger/weaker immunity maintained over time; \n None/New immune evading variant introduced May 2022",
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
                 "scenario_caption" = "Scenarios: Stronger or weaker immunity maintained over time ('Strong/Weak'); \n 60+ second booster campaign starting in summer or autumn ('Summer/Autumn')",
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
                 "scenario_caption" = "Scenarios: Autumn second booster campaign among population aged '18+' or '60+'; \n Vaccine effectiveness is 'optimistic'(effectiveness as of a booster vaccine against Delta) or 'pessimistic' (as against BA.4/BA.5/BA.2.75)",
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
),
# -------------------------------------------------------------------------
# Round 3
"round-3" = list("round" = 3,
                 # Short text label for scenarios in format:
                 #  "Policy scenario / Epidemiological scenario"
                 "scenario_labels" = c(
                   "A" = "A. No vaccination, optimistic variants",
                   "B" = "B. Annual vaccination, optimistic variants",
                   "C" = "C. Biannual vaccination, optimistic variants",
                   "D" = "D. No vaccination, pessimistic variants",
                   "E" = "E. Annual booster campaign, pessimistic variants",
                   "F" = "F. Biannual booster campaign, pessimistic variants"
                 ),
                 # Key dates
                 "origin_date" = as.Date("2022-09-11"),
                 "submission_window_end" = as.Date("2022-09-16"),
                 # Short scenario guide (for website + figure captions)
                 "scenario_caption" = "Scenarios: New vaccination (none/annual/biannual); \n New variants (optimistic/pessimistic)",
                 # HTML format scenario table
                 "table" = "<table>
                   <tr>
      <td>
      </td>
      <td>
        <b> No further vaccination </b><br>
        <ul>
            <li> Vaccination as planned<sup>*</sup> </li>
            <li> <b>No</b> further vaccination </li>
        </ul>
      </td>
      <td>
        <b> Annual vaccination </b><br>
        <ul>
            <li> Vaccination as planned<sup>*</sup> </li>
            <li> <b>2023 onwards</b>: annual vaccination programme in <b>autumn</b><sup>**</sup> </li>
            <li> Uptake higher in 60+ than <60 age groups</li>
        </ul>
      </td>
      <td>
        <b> Bi-annual vaccination </b><br>
        <ul>
            <li> Vaccination as planned<sup>*</sup> </li>
            <li> <b>2023 onwards</b>: bi-annual (2 per year) vaccination in <b>spring and autumn</b><sup>**</sup></li>
            <li> Uptake higher in 60+ than <60 age groups </li>
        </ul>
      </td>
    </tr>
    <tr>
      <td>
        <b>Optimistic variant scenario</b><br>
        <ul>
          <li><b>20%</b> reduction in immunity against <b>infection</b> </li>
          <li><b>0%</b> reduction in immunity against <b>severe</b> outcome </li>
          <li><b>One new variant</b> every 9 months </li>
          <li> First introduction: <b>1st October 2022 </b></li>
        </ul>
      </td>
      <td>
        Scenario A
      </td>
      <td>
        Scenario B
      </td>
      <td>
        Scenario C
      </td>
    </tr>
    <tr>
      <td>
        <b>Pessimistic variant scenario</b><br>
        <ul>
          <li><b>75%</b> reduction in immunity against <b>infection</b> </li>
          <li><b>20%</b> reduction in immunity against <b>severe</b> outcomes </li>
          <li><b>One new variant</b> every 9 months </li>
          <li> First introduction: <b>1st October 2022 </b></li>
        </ul>
      </td>
      <td>
        Scenario D
      </td>
      <td>
        Scenario E
      </td>
      <td>
        Scenario F
      </td>
    </tr>
  </table>

  _* Vaccination as planned = Primary schedule + 2 booster doses_
  \n
  _** Seasonal vaccination campaigns: Autumn = 15 September to 15 December; Spring = 15 March to 15 June_"
),
# -------------------------------------------------------------------------
# Round 4
"round-4" = list("round" = 4,
                 # Short text label for scenarios in format:
                 #  "Policy scenario / Epidemiological scenario"
                 "scenario_labels" = c(
                   "A" = "A. Optimistic waning and no new variant",
                   "B" = "B. Optimistic waning and a new variant",
                   "C" = "C. Pessimistic waning and no new variant",
                   "D" = "D. Pessimistic waning and a new variant"
                 ),
                 # Key dates
                 "origin_date" = as.Date("2023-03-15"),
                 "submission_window_end" = as.Date("2023-03-17"),
                 # Short scenario guide (for website + figure captions)
                 "scenario_caption" = "Scenarios: Immunity waning (optimistic/pessimistic); \n New variants (no/yes)",
                 # HTML format scenario table
                 "table" = "<table>

<tr>
    <td>
    </td>
    <td>
      <b> No new variant </b>
      <ul>
          <li> Projections are initialised in agreement with the SARS-CoV-2 variants that are circulating at the start of the projection period</li>
      </ul>
    </td>
    <td>
      <b> New variant (sub-lineage) X </b>
      <ul>
          <li> Introduction: From <b>1st May 2023</b>, at least of <b>0.1% of all new infections</b> are due to a new variant X over 16 weeks </li>
          <li> Characteristics: Variant X has <b>30% immune escape against infection and 0% immune escape against severe outcomes</b>, and the same intrinsic transmissibility and severity as currently dominating Omicron sub-lineage</li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>
      <b>Optimistic waning</b><br>
      <ul>
        <li> Protection against infection: <b>6 months</b> median time to transition to <b>70%</b> of the initial immunity </li>
        <li> Protection against severe outcomes: no waning </li>
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
      <b>Pessimistic waning</b><br>
      <ul>
        <li> Protection against infection: <b>6 months</b> median time to transition to <b>40%</b> of the initial immunity </li>
        <li> Protection against severe outcomes: <b>6 months</b> median time to transition to <b>80%</b> of the initial immunity </li> </li>
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
),

# -------------------------------------------------------------------------
# Round 5
"round-5" = list("round" = 5,
                 # Short text label for scenarios in format:
                 #  "Policy scenario / Epidemiological scenario"
                 "scenario_labels" = c(
                   "A" = "A. No vaccination, optimistic waning",
                   "B" = "B. Pessimistic vaccination, optimistic waning",
                   "C" = "C. Optimistic vaccination, optimistic waning",
                   "D" = "D. Upper boundary vaccination, optimistic waning",
                   "E" = "E. No vaccination, pessimistic waning",
                   "F" = "F. Pessimistic vaccination, pessimistic waning",
                   "G" = "G. Optimistic vaccination, pessimistic waning",
                   "H" = "H. Upper boundary vaccination, pessimistic waning"
                 ),
                 # Key dates
                 "origin_date" = as.Date("2023-08-01"),
                 "submission_window_end" = as.Date("2023-08-20"),
                 # Short scenario guide (for website + figure captions)
                 "scenario_caption" = "Scenarios: Autumn COVID-19 vaccination campaign; \n Immunity waning (optimistic/pessimistic)",
                 # HTML format scenario table
                 "table" = "<table>
  <tr>
    <td>
    </td>
    <td>
      <b> No vaccination </b>
      <ul>
      </ul>
    </td>
    <td>
      <b> Pessimistic vaccination </b>
      <ul>
          <li> <b>60+</b> booster with <b>-50%</b> of flu vaccination uptake* </li>
      </ul>
    </td>
    <td>
      <b> Optimistic vaccination </b>
      <ul>
          <li> <b>60+</b> booster with <b>+15 percentage points</b> of flu vaccination uptake* (capped at 100%) </li>
      </ul>
    </td>
    <td>
      <b> Theoretical upper boundary vaccination </b>
      <ul>
          <li> <b>60+</b> booster with <b>100%</b> coverage </li>
      </ul>
    </td>
  </tr>
  <tr>
    <td>
      <b>Optimistic waning</b><br>
      <ul>
        <li> Protection against infection: <b>6 months</b> median time to transition to <b>70%</b> of the initial immunity </li>
        <li> Protection against severe outcomes: no waning </li>
      </ul>
    </td>
    <td>
      Scenario A
    </td>
    <td>
      Scenario B
    </td>
    <td>
      Scenario C
    </td>
    <td>
      Scenario D
    </td>
  </tr>
  <tr>
    <td>
      <b>Pessimistic waning</b><br>
      <ul>
        <li> Protection against infection: <b>6 months</b> median time to transition to <b>40%</b> of the initial immunity </li>
        <li> Protection against severe outcomes: <b>6 months</b> median time to transition to <b>80%</b> of the initial immunity </li> </li>
      </ul>
    </td>
    <td>
      Scenario E
    </td>
    <td>
      Scenario F
    </td>
    <td>
      Scenario G
    </td>
    <td>
      Scenario H
    </td>
  </tr>
</table>"
)
)


