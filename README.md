# Magnus Carlsen Chess Performance Analysis

## Navigation

[Overview](#project-overview) •
[Dashboard](#dashboard) •
[Key Findings](#key-findings) •
[Recommendations](#recommendations) •
[Technical Implementation](#technical-implementation) •
[Limitations](#limitations) •
[Conclusion](#conclusion)

## Project Overview

This project uses **Power BI** to analyse **13,237 Magnus Carlsen games played on Lichess between December 2017 and December 2021**. The aim is to explore his online playing activity, rating development and performance across time controls, colours, openings and opponents.

The project demonstrates:

- Data cleaning and transformation
- Exploratory chess data analysis
- KPI and measure development
- Interactive filtering and cross-analysis
- Dashboard design and data visualisation in **Power BI**

The analysis aims to answer questions such as:

- How did Magnus Carlsen's Lichess Elo change over time?
- Which time controls accounted for most of his games?
- How frequently did he win, lose or draw?
- Did his results differ when playing White and Black?
- Which openings did he play most often, and which produced the strongest results?
- Which opponents did he face most frequently, and how did he perform against them?

## Dashboard

![Magnus Carlsen Chess Performance Dashboard](/images/dashboard.png)

The interactive dashboard provides a consolidated view of Carlsen's Lichess performance. Users can filter the analysis by **year** and **time control**, while the visuals summarise Elo progression, game outcomes, colour performance, opening results and opponent records.

Headline metrics include:

- **13,237** games played
- **3,379** highest Elo
- **3,068** average Elo
- **67.9%** overall win rate
- **24.2%** loss rate
- **7.8%** draw rate

## Key Findings

### 1. Overall Performance

- Carlsen won **67.9%** of the games analysed, equivalent to approximately **9,000 wins**.
- He lost **24.2%** and drew **7.8%**, showing that decisive results were much more common than draws in this online sample.
- His average Elo was **3,068**, while his highest recorded Elo was **3,379**.

### 2. Time-Control Distribution

- **Bullet accounted for 92.7%** of all games, making it by far the dominant time control in the dataset.
- Blitz represented **6.9%**, while Rapid accounted for only a very small proportion of the games.
- The dashboard's overall findings should therefore be interpreted primarily as a reflection of Carlsen's **Lichess bullet performance**.

### 3. Elo Development

- Carlsen's Elo displayed an overall upward trend across the analysis period.
- Rating observations were volatile, with several sharp rises and falls and a particularly large temporary decline around late 2020.
- Despite short-term fluctuations, his rating recovered and reached some of its strongest levels toward the end of the period.

### 4. Performance by Colour

- Carlsen performed more strongly with **White**, winning **71.9%** of games compared with **63.9%** with Black.
- This represents an **8 percentage-point advantage** when playing White.
- His loss rate increased from **21.4% with White** to **27.1% with Black**, reinforcing the advantage of the first move.

### 5. Opening Performance

- **A00 – Uncommon Opening** was the most frequently played opening shown, with **809 games** and a **72.6% win rate**.
- **B06 – Robatsch** also performed strongly, producing a **72.0% win rate across 547 games**.
- **B01 – Scandinavian** was played 566 times and achieved a **67.8% win rate**.
- The **Réti Opening** and **Nimzowitsch–Larsen Attack** returned lower win rates of **65.1%** and **65.0%**, respectively, among the leading openings displayed.

### 6. Opponent Analysis

- **Andrew Tang** appears as a major opponent, with **1,695 games** played against Carlsen.
- Carlsen won **61.3%**, lost **30.9%** and drew **7.8%** of those games.
- His win rate against Tang was **6.6 percentage points below** his overall rate, suggesting that Tang was a comparatively challenging opponent within this dataset.

## Limitations

- The dataset covers **Lichess games from December 2017 to December 2021** and does not represent Carlsen's complete competitive career.
- Since **92.7% of the games are Bullet**, the headline metrics are not directly representative of classical chess or even all online time controls.
- Opening win rates are descriptive and do not control for colour, opponent rating, game volume or changes in playing strength over time.
- Elo values across different Lichess time controls may not be directly comparable if they come from separate rating pools.

## Technical Implementation

Key elements of the Power BI report include:

- KPI cards for total games, highest Elo and average Elo.
- Measures for win, loss and draw percentages.
- A time-series visual with a trend line to show Elo progression.
- A proportional chart showing the distribution of games by time control.
- Colour-based performance comparisons for games played as White and Black.
- Opening and opponent tables combining game volume with outcome percentages.
- Interactive year and time-control slicers for focused analysis.
- A consistent dark visual theme designed around chess imagery and compact dashboard navigation.



## Conclusion

The analysis demonstrates Magnus Carlsen's exceptional performance on Lichess, with an overall **67.9% win rate**, an average Elo above **3,000** and a generally rising rating trend across the period studied. He achieved noticeably stronger results with White, while uncommon and hypermodern opening choices featured prominently among his most frequently played openings.

The most important context is the dataset's heavy concentration in Bullet chess. The dashboard therefore offers a strong view of Carlsen's high-speed online play, but further segmentation by time control, colour and opponent strength would be needed before generalising the findings to his wider chess performance.
