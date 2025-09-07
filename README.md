# **Uber Ride Booking Data Analysis**

## Problem Statement
Uber faces challenges with **high cancellation rates**, **incomplete rides**, and **uneven demand patterns**, directly impacting revenue, operational efficiency, and customer experience.  
The goal of this project is to **analyze ride booking data** to uncover trends, identify inefficiencies, and provide **data-driven insights** to improve service quality and optimize revenue.

---

## Project Overview
This project delivers an **end-to-end analytics workflow**, from raw data to interactive visualizations.  
Using **Python, SQL Server, and Power BI**, the analysis focuses on:
- Identifying **demand trends** across time and location.
- Understanding **cancellation behavior** by customers and drivers.
- Measuring **operational efficiency** through CTAT (Customer Turnaround Time) and VTAT (Vehicle Turnaround Time).
- Evaluating **service quality** via customer and driver ratings.
- Building a **Power BI dashboard** for monitoring KPIs and business performance.

---

## Dataset
The dataset contains **150,000 records** and **21 attributes**, covering ride details, operational metrics, cancellations, payments, and ratings.

**Key attributes include:**
- **Booking Information:** Booking ID, Date, Time, Status  
- **Trip Details:** Vehicle Type, Pickup & Drop Locations, Ride Distance, Booking Value  
- **Operational Metrics:** Avg VTAT, Avg CTAT  
- **Cancellations:** Customer vs. Driver cancellations and reasons  
- **Payments & Ratings:** Payment Method, Customer Rating, Driver Rating  

**Source:** [Kaggle - NCR Ride Bookings Dataset](https://www.kaggle.com/datasets/fatimkasem/ncr-ride-bookings-csv/data)

---

## Analysis Steps
1. **Data Cleaning & Preparation**  
   - Handled missing values and standardized data formats.  
   - Created binary flags for cancellations and incomplete rides.  
   - Combined date and time columns to enable time-based analysis.

2. **Exploratory Data Analysis (EDA)**  
   - Analyzed demand trends by **hour and weekday**.  
   - Identified top pickup and drop locations.  
   - Evaluated cancellation patterns by **customer vs. driver**.  
   - Measured CTAT and VTAT across vehicle types.  
   - Examined payment preferences and ratings.

3. **SQL Analysis**  
   - Wrote SQL queries to extract advanced metrics like **lost revenue**, top-performing locations, and peak demand periods.  
   - Performed trend analysis using SQL Server and connected results to Power BI.

4. **Power BI Dashboard Creation**  
   - Built an interactive dashboard with filters for **date**, **vehicle type**, and **payment method**.  
   - Visualized KPIs for bookings, revenue, cancellations, and operational performance.

---

## Key Insights
- **Driver cancellations dominate:** 27K driver cancellations vs. 10.5K customer cancellations, highlighting supply-side issues.  
- **High wait times:** Average **CTAT ≈ 29 minutes**, signaling the need for operational improvements.  
- **Revenue at risk:** Incomplete rides caused an estimated **₹4.6M revenue loss**.  
- **Demand hotspots:** Specific pickup locations show consistently higher booking volumes, ideal for driver allocation strategies.  
- **Ratings:** Average **customer rating (4.40)** is slightly higher than **driver rating (4.23)**, indicating scope for improving service quality.  
- **Digital payments lead:** **UPI** is the most popular payment method among customers.

---
