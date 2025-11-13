# ShopEasy Marketing Analytics Report

## Project Background
ShopEasy, an online retail business, faced reduced customer engagement and declining conversion rates despite multiple new online marketing campaigns. The company sought a detailed analytical review to uncover key performance gaps and identify actionable strategies to optimize conversions, engagement, and customer satisfaction.

The goal of this report was to analyze user behavior across the marketing funnel, evaluate campaign performance, and uncover drivers of engagement and feedback trends.

## Business Objectives

1. **Increase Conversion Rates**  
   **Goal:** Identify factors impacting the conversion rate and provide recommendations to improve it.  
   **Insight Goal:** Highlight key stages where visitors drop off and suggest improvements to optimize the conversion funnel.
   
3. **Enhance Customer Engagement**  
   **Goal:** Determine which types of content drive the highest engagement.  
   **Insight Goal:** Analyze interaction levels across campaigns and content types to inform more effective content strategies.

4. **Improve Customer Feedback Scores**  
   **Goal:** Understand customer sentiment and common themes in reviews.  
   **Insight Goal:** Identify recurring positive and negative feedback to guide product and service improvements.


## Data Structure & Model
This project was developed using a **star schema model** with multiple fact and dimension tables to enable flexible analysis and optimized Power BI performance.

| Table Name         | Type       | Description                                                                 | Row Count |
|--------------------|------------|-----------------------------------------------------------------------------|-----------|
| `fact_journey`     | Fact       | Customer navigation and funnel journey data (stages, duration, actions)     | 4,011     |
| `fact_engagement`  | Fact       | Engagement activities (views, likes, clicks, campaigns)                     | 4,623     |
| `fact_reviews`     | Fact       | Customer reviews and sentiment                                              | 1,363     |
| `dim_customers`    | Dimension  | Customer demographics and geography references                              | 100       |
| `dim_products`     | Dimension  | Product information (category, price, name)                                 | 20        |
| `dim_geography`    | Dimension  | City and country mapping                                                    | 10        |
| `dim_date`         | Dimension  | Date hierarchy for trend analysis                                           | —         |

<img width="1747" height="683" alt="image" src="https://github.com/user-attachments/assets/92d63884-b0ec-402b-a537-2ff7c45edde8" />

🔹 **Model Shape:** Star schema with multiple fact tables linked to shared dimensions (`dim_date`, `dim_products`, `dim_customers`, `dim_geography`).  
🔹 **Tool Used:** Power BI Relationships Model for inter-table connectivity and optimized query performance.

## Tools & Technologies

| Tool         | Purpose                                      |
|--------------|----------------------------------------------|
| Power BI     | Data visualization and dashboard design      |
| SQL          | Data extraction and querying from the database |
| Power Query  | Data cleaning and transformation             |
| Python       | Sentiment analysis for text reviews          |
| DAX          | Measure calculations and KPI creation        |

## Dashboard Pages & Analytical Focus

### Page 0 — Overview Dashboard
- **KPIs:** Conversion Rate, Engagement Rate, Average Rating  
- **Visuals:** KPI cards, trend lines, segment performance bar chart  
- **Purpose:** Provide an at-a-glance summary of overall marketing performance trends.
<img width="1444" height="798" alt="image" src="https://github.com/user-attachments/assets/9a00eb79-d71c-4809-b0f2-ec3369a74916" />

### Page 1 — Conversion Optimization
- **Goal:** Track drop-offs in the funnel and identify low-performing products and regions.  
- **Visuals:** Funnel chart, conversion by product, map by region.  
- **DAX Highlights:**  
  - Conversion Rate  
  - Drop-off Rate  
  - Conversion by Product  
  - Conversion by Region
 <img width="1442" height="806" alt="image" src="https://github.com/user-attachments/assets/b2ae00f3-c387-4f53-ad50-067e48055a39" />
### Page 2 — Engagement Performance
- **Goal:** Measure how content and campaigns drive user actions.  
- **Visuals:** Bar chart by content type, line trend by month, campaign leaderboard.  
- **DAX Highlights:**  
  - Engagement Rate  
  - Engagement by Content Type  
  - Campaign Engagement
 <img width="1440" height="800" alt="image" src="https://github.com/user-attachments/assets/b77db3b6-be38-410a-9ec8-487f81252bfa" />
### Page 3 — Customer Sentiment & Ratings
- **Goal:** Examine customer satisfaction levels and common review patterns.  
- **Visuals:** Sentiment donut chart, average rating by product, word cloud from text analytics.  
- **DAX Highlights:**  
  - Positive & Negative Sentiment %  
  - Average Rating  
  - Sentiment Distribution
 <img width="1443" height="801" alt="image" src="https://github.com/user-attachments/assets/b7b51b95-d802-4b22-8912-38f5d237e4e3" />
## Key Insights

1. **Funnel Drop-Off**  
   - Out of 1,777 visitors, only 790 reached checkout.  
   - A significant loss of **654 users** occurred between the product and checkout stages.  
   - Only **200 purchases** were completed.  
   - **Recommendation:** Conduct usability testing and session analysis to identify UX or pricing friction on the product and checkout pages.

2. **Product Performance**  
   - **Swim Goggles** showed the lowest conversion rate at **2.75%**.  
   - **Recommendation:** Reassess product presentation, pricing, or relevance to audience segments.

3. **Regional Conversion**  
   - **Amsterdam** has the highest conversion rate (**6.27%**), with an average of **16 visitors per purchase**.  
   - **Recommendation:** Study Amsterdam’s marketing strategies and replicate successful localized targeting in other markets.

4. **Content Engagement**  
   - **Video content** drives the highest engagement (**24.6%**).  
   - **Recommendation:** Invest more in short-form and interactive video campaigns.

5. **Engagement Trend**  
   - Engagement has been **declining since Jan 2023**, which marked the peak.  
   - **Recommendation:** Reevaluate campaign frequency, ad fatigue, and content diversity.

6. **Campaign Performance**  
   - **Campaign ID 18** achieved **120K clicks** from **570K views** — a strong CTR.  
   - **Recommendation:** Use Campaign 18’s targeting and creative style as a benchmark for future campaigns.

7. **Customer Ratings & Sentiment**  
   - Overall average rating: **4.0 stars**  
   - **34.04% positive** and only **3.60% negative** reviews  
   - **Climbing Rope** has the highest product rating at **3.91 stars**  
   -  **Recommendation:** Highlight positive feedback in marketing materials and improve products with recurring low-rating themes.

## Strategic Recommendation: Best-Case Marketing Scenario
To optimize ShopEasy’s marketing outcomes:

### 1. Conversion Optimization
- Simplify the checkout flow and enhance product-page clarity.
- Use A/B testing to identify key friction points.
- Focus promotional budgets on high-performing regions like Amsterdam.

### 2. Engagement Reinforcement
- Prioritize video-based campaigns with proven engagement results.
- Launch retargeting ads leveraging high-performing content themes.
- Refresh campaigns quarterly to avoid fatigue.

### 3. Feedback-Driven Product Improvement
- Leverage sentiment insights to refine underperforming products.
- Promote top-rated products (like **Climbing Rope**) as “hero” items in campaigns.

### 4. Data-Driven Decision Support
- Establish automated monitoring of engagement and sentiment metrics in Power BI.
- Schedule monthly performance reviews with marketing and insights leads.

## Outcome
The analysis provided **actionable recommendations** that can directly improve customer conversion, engagement, and satisfaction.  
By implementing the findings from this report, ShopEasy can enhance marketing efficiency, strengthen customer trust, and ultimately **drive sustainable growth**.

## Stakeholders
- **Marketing Team Lead** — Performance Strategy and Campaign Optimization  
- **Customer Insights Lead** — Behavior Analysis and Feedback Integration
“`
