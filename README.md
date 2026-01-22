# Market Basket Analysis – Retail Transactions

## Project Overview
This project simulates a real-world retail analytics scenario focused on understanding
customer purchasing behavior using transactional data. The objective is to identify
meaningful product associations and translate them into actionable business insights
that support revenue growth, cross-selling strategies, and operational decision-making.

The analysis combines Python-based data processing with interactive Power BI
visualizations to deliver both analytical depth and business-oriented conclusions.

---

## Business Context
Retail businesses process millions of transactions annually, yet strategic decisions
such as product placement, promotions, and bundling are often driven by intuition
rather than data. Without a clear understanding of which products are frequently
purchased together, opportunities to increase basket size and customer value are lost.

This project reflects a grocery retail environment where product diversity, customer
volume, and thin margins make data-driven insights essential.

---

## Objective
The goal of this project is to apply Market Basket Analysis to retail transaction data
in order to identify strong product associations and convert them into actionable
recommendations for revenue optimization.

---

## Dataset Overview
- Transaction-level retail data (simulated business scenario)
- Over 2 million individual orders
- Products grouped by departments and sections
- Data transformed into basket format for association rule analysis

Processed datasets and outputs are available in the `data/processed` directory.

---

## Methodology
- Data cleaning and preprocessing using Python
- Basket transformation and one-hot encoding
- Generation of association rules using support, confidence, and lift metrics
- Filtering of statistically and business-relevant rules
- Interactive visualization of results using Power BI

---
## SQL Analysis (SQLite)

This project includes a dedicated SQL layer used to validate key business metrics before applying Python-based market basket analysis.

### Example: Average Order Value (AOV)
```sql
SELECT AVG(valor_por_pedido)
FROM (
    SELECT
        id_pedido,
        SUM(precio_total) AS valor_por_pedido
    FROM tickets
    GROUP BY id_pedido
)

---

## Key findings 

- Total annual revenue reached approximately **€39.8M**, but monthly revenue declined
  by nearly **82%** over the year.
- Revenue is highly concentrated in a single department, representing roughly **93%**
  of total sales.
- A small number of sections generate over **90%** of total revenue, increasing
  dependency risk.
- The product mix is heavily weighted toward organic products, especially fresh produce.
- Average order value remains low (**€19.34**), despite a high volume of transactions.
- Market basket analysis reveals strong product associations suitable for cross-selling
  and recommendation strategies.

---

## Business Implications
- Revenue concentration increases operational and strategic risk.
- Low average basket value limits growth potential despite high transaction volume.
- Strong product associations represent an opportunity to increase revenue without
  increasing customer acquisition costs.
- Data-driven recommendations can outperform intuition-based merchandising decisions.

---

## Recommendations
- Diversify departments and sections to reduce revenue dependency risk.
- Expand and promote complementary and non-organic product offerings.
- Implement recommendation systems based on association rules to increase basket size.
- Use high-lift product pairs for targeted promotions and bundling strategies.

---

## Limitations
- The analysis is based on historical transactional data only.
- Seasonality, pricing changes, and customer segmentation were not included.
- Association rules indicate correlation, not causation.

---

## Next Steps
- Incorporate time-based and seasonal analysis.
- Segment customers to uncover more granular purchasing patterns.
- Integrate profitability and pricing metrics.
- Evaluate alternative algorithms such as FP-Growth.

---

## Tools & Technologies
- Python (Pandas, NumPy, itertools)
- Jupyter Notebook
- Power BI
- Git & GitHub

---
