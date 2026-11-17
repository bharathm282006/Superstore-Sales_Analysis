# Superstore Sales Analysis — Business Insights

## Dataset and method

- Dataset: US Sample Superstore
- Prepared file: `2_cleaned_data/Superstore_cleaned.csv`
- Records: 9,994 rows
- Distinct orders: 5,009
- Analysis basis: calculations from the included prepared CSV using sales, profit, order IDs, region, category, segment, sub-category, and product fields.

## 1. Overall performance

| KPI | Value |
|---|---:|
| Total sales | **$2,297,201.07** |
| Total profit | **$286,397.02** |
| Distinct orders | **5,009** |
| Average sales per order | **$458.61** |
| Overall profit margin | **12.47%** |

Average sales per order is calculated as total sales divided by distinct order IDs. It is not the average of the individual transaction-row sales values.

## 2. Regional performance

| Region | Sales | Profit | Profit margin |
|---|---:|---:|---:|
| West | $725,457.93 | $108,418.45 | **14.94%** |
| East | $678,781.36 | $91,522.78 | **13.48%** |
| Central | $501,239.88 | $39,706.36 | **7.92%** |
| South | $391,721.90 | $46,749.43 | **11.93%** |

**Insight:** West has the highest sales and profit margin. Central has the lowest margin despite generating more sales than South. This makes Central a priority for further investigation into discount levels, product mix, and operating costs; the figures alone do not prove the cause.

## 3. Category performance

| Category | Sales | Profit | Profit margin |
|---|---:|---:|---:|
| Technology | $836,154.10 | $145,454.95 | **17.40%** |
| Office Supplies | $719,046.99 | $122,490.80 | **17.04%** |
| Furniture | $741,999.98 | $18,451.27 | **2.49%** |

**Insight:** Technology produces the highest sales and profit margin. Furniture has substantial sales but a much lower margin, so increasing Furniture sales alone may not improve overall profitability.

## 4. Sub-category profit warning

| Sub-category | Sales | Profit | Profit margin |
|---|---:|---:|---:|
| Tables | $206,965.68 | **-$17,725.48** | **-8.56%** |
| Bookcases | $114,880.05 | **-$3,472.56** | **-3.02%** |
| Supplies | $46,673.52 | **-$1,189.10** | **-2.55%** |
| Copiers | $149,528.01 | $55,617.82 | **37.19%** |
| Accessories | $167,380.31 | $41,936.64 | **25.06%** |

**Insight:** Tables, Bookcases, and Supplies record losses in the prepared dataset. Copiers and Accessories show comparatively high profit margins. These differences warrant product-level review before changing prices or inventory.

## 5. Customer segment performance

| Segment | Sales | Profit | Profit margin |
|---|---:|---:|---:|
| Consumer | $1,161,401.34 | $134,119.21 | **11.55%** |
| Corporate | $706,146.44 | $91,979.13 | **13.03%** |
| Home Office | $429,653.29 | $60,298.68 | **14.03%** |

**Insight:** Consumer contributes the most sales, while Home Office has the highest profit margin. Segment strategies can therefore consider both scale and profitability rather than sales alone.

## 6. Highest-revenue products

| Rank | Product | Sales |
|---:|---|---:|
| 1 | Canon imageCLASS 2200 Advanced Copier | $61,599.82 |
| 2 | Fellowes PB500 Electric Punch Plastic Comb Binding Machine with Manual Bind | $27,453.38 |
| 3 | Cisco TelePresence System EX90 Videoconferencing Unit | $22,638.48 |

**Insight:** The leading product by sales generates more than twice the sales of the second-ranked product in this dataset.

## Business recommendations

1. **Review Central region performance:** Compare discounting and product mix with West and East to understand the margin gap.
2. **Investigate loss-making sub-categories:** Review pricing, discount rules, supplier costs, and returns for Tables, Bookcases, and Supplies.
3. **Protect profitable categories:** Understand which Technology and Office Supplies products contribute to their stronger margins.
4. **Use segment-specific strategies:** Consumer is the largest sales segment, while Home Office has the strongest margin.
5. **Monitor product concentration:** Track availability and profitability of high-revenue products, not sales alone.
6. **Evaluate discounts with order-level profit:** Avoid assuming a discount threshold causes losses without validating the calculation at the order level.

## Important interpretation notes

- These findings are descriptive. They show patterns in the dataset but do not establish why those patterns occurred.
- Discount impact should be validated with a clearly defined order-level analysis before setting a discount cap. The earlier summary's discount-band figures are not reproduced here because the included SQL file does not contain the corresponding calculation.
- The prepared CSV has 9,994 rows, zero exact duplicate rows, and zero missing values in the file-level check performed for this updated summary.
