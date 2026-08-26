# Zomato Bangalore Restaurant Analysis

End-to-end analysis of 41,263 Bangalore restaurant listings — cleaning a messy 51K-row Kaggle dataset, running SQL business-query analysis, and building a Power BI dashboard to surface pricing, rating, and location trends.

## Objective

Identify what actually drives restaurant ratings in Bangalore — location saturation, pricing tier, and online ordering.

## Tools Used

- **Python** (pandas, numpy, matplotlib, seaborn) — data cleaning & EDA
- **SQL** (pandasql) — business query analysis
- **Power BI** — interactive dashboard

## Dataset

- Source: Kaggle — Zomato Bangalore Restaurants
- Original size: 51,717 rows, 17 columns
- After cleaning: 41,263 rows, 11 columns (removed duplicates, nulls, and inconsistent cost/rating formats)

## Key Insights

1. **BTM Layout is the most saturated market** — ~3,900 restaurants, roughly 4x the 10th-ranked area (Koramangala 7th Block, ~1,050). BTM and Koramangala together dominate restaurant density in Bangalore, meaning highest competition, not necessarily highest quality.
2. **Online ordering shows a small but consistent rating edge** — restaurants offering it average slightly higher than those that don't, though the gap is modest and not a strong standalone quality signal.
3. **Ratings cluster tightly between 3.5 and 4.1** — very few restaurants fall below 2.5 or above 4.7, suggesting either genuine consistency in quality across the city or narrow effective use of the rating scale.
4. **Price is a weak predictor of rating** — premium restaurants (>₹700 for two) rate marginally higher than budget ones, but the gap is small enough that price alone doesn't reliably signal quality.

## Files

- `analysis.sql` — SQL business queries with insights
- `dashboard_ss.png` — Power BI dashboard screenshot
- `cost_vs_rating.png`, `rating_distribution.png`, `online_order_rating.png`, `rest_type_rating.png`, `top_locations.png` — supporting EDA visuals

## Dashboard Preview
<img width="662" height="493" alt="dashboard_ss" src="https://github.com/user-attachments/assets/80c4c6a5-2804-4ca4-b102-c8a50e27276f" />


