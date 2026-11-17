# Superstore Sales Analysis — Business Insights

## Dataset and Method

- **Dataset:** US Sample Superstore
- **Prepared file:** `2_cleaned_data/Superstore_cleaned.csv`
- **Total records:** 9,994
- **Distinct orders:** 5,009
- **Analysis basis:** Sales, profit, order IDs, region, category, customer segment, sub-category, and product information.

The analysis focuses on identifying business performance patterns and opportunities for improvement.

---

## 1. Overall Performance

| KPI | Value |
|---|---:|
| Total Sales | **$2,297,201.07** |
| Total Profit | **$286,397.02** |
| Total Orders | **5,009** |
| Average Sales per Order | **$229.86** |
| Overall Profit Margin | **12.47%** |

**Insight:** The business generated approximately $2.30 million in sales and $286.40K in profit, with an overall profit margin of 12.47%.

---

## 2. Regional Performance

| Region | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| West | $725,457.93 | $108,418.45 | **14.94%** |
| East | $678,781.36 | $91,522.78 | **13.48%** |
| Central | $501,239.88 | $39,706.36 | **7.92%** |
| South | $391,721.90 | $46,749.43 | **11.93%** |

**Insights:**

- West generated the highest sales and profit.
- East ranked second in both sales and profit.
- Central had the lowest profit margin at 7.92%.
- South generated the lowest sales but achieved a higher profit margin than Central.

**Recommendation:** Investigate the Central region's lower profitability by reviewing its product mix, discounting patterns, and operating costs.

---

## 3. Category Performance

| Category | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| Technology | $836,154.10 | $145,454.95 | **17.40%** |
| Office Supplies | $719,046.99 | $122,490.80 | **17.04%** |
| Furniture | $741,999.98 | $18,451.27 | **2.49%** |

**Insights:**

- Technology generated the highest sales and profit.
- Office Supplies achieved a strong profit margin of 17.04%.
- Furniture generated substantial sales but had a comparatively low profit margin of 2.49%.

**Recommendation:** Review Furniture pricing, discounting, and product costs to identify opportunities to improve profitability.

---

## 4. Sub-Category Profitability

| Sub-Category | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| Tables | $206,965.68 | **-$17,725.48** | **-8.56%** |
| Bookcases | $114,880.05 | **-$3,472.56** | **-3.02%** |
| Supplies | $46,673.52 | **-$1,189.10** | **-2.55%** |
| Copiers | $149,528.01 | $55,617.82 | **37.19%** |
| Accessories | $167,380.31 | $41,936.64 | **25.06%** |

**Insights:**

- Tables recorded the highest loss among the listed sub-categories.
- Bookcases and Supplies also recorded negative profits.
- Copiers achieved the highest profit margin among the listed sub-categories.
- Accessories also demonstrated strong profitability.

**Recommendation:** Investigate loss-making sub-categories and review pricing, discount policies, supplier costs, and product-level performance.

---

## 5. Customer Segment Performance

| Segment | Sales | Profit | Profit Margin |
|---|---:|---:|---:|
| Consumer | $1,161,401.34 | $134,119.21 | **11.55%** |
| Corporate | $706,146.44 | $91,979.13 | **13.03%** |
| Home Office | $429,653.29 | $60,298.68 | **14.03%** |

**Insights:**

- Consumer contributed the highest sales and total profit.
- Corporate achieved a profit margin of 13.03%.
- Home Office recorded the highest profit margin at 14.03%.

**Recommendation:** Develop segment-specific strategies that consider both sales contribution and profitability.

---

## 6. Highest-Revenue Products

| Rank | Product | Sales |
|---:|---|---:|
| 1 | Canon imageCLASS 2200 Advanced Copier | $61,599.82 |
| 2 | Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind | $27,453.38 |
| 3 | Cisco TelePresence System EX90 Videoconferencing Unit | $22,638.48 |

**Insights:**

- Canon imageCLASS 2200 Advanced Copier was the highest-revenue product.
- Its sales were more than twice those of the second-ranked product.
- These products are important contributors to overall sales performance.

**Recommendation:** Monitor the availability, sales trends, and profitability of high-revenue products.

---

## 7. Business Recommendations

Based on the analysis, the following recommendations can help improve business performance:

1. **Improve Central region profitability:** Investigate the reasons behind its comparatively low profit margin.
2. **Review loss-making sub-categories:** Focus on Tables, Bookcases, and Supplies to identify opportunities to reduce losses.
3. **Strengthen profitable categories:** Continue monitoring Technology and Office Supplies because of their strong profit contributions.
4. **Develop customer segment strategies:** Focus on Consumer for sales contribution and Home Office for its higher profit margin.
5. **Monitor high-revenue products:** Track product availability, sales, and profitability.
6. **Evaluate discount strategies:** Examine the relationship between discounts and order-level profitability before introducing discount limits.

---

## 8. Important Interpretation Notes

- The findings are based on descriptive analysis of the available Superstore dataset.
- The analysis identifies patterns and relationships but does not establish the causes behind them.
- Discount impact should be validated using a clearly defined order-level analysis before making pricing decisions.
- The prepared CSV contains 9,994 records.
- The file-level data quality check found zero exact duplicate rows and zero missing values.

---

## Conclusion

The analysis highlights differences in sales and profitability across regions, product categories, sub-categories, and customer segments.

The West region and Technology category demonstrated strong performance, while the Central region and certain Furniture sub-categories require further investigation.

The findings provide a foundation for understanding business performance and identifying areas for improvement using SQL analysis and Power BI visualization.
