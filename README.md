# Pathao Ride Booking Analysis

An analysis of ride-booking data (Pathao-style) using **SQL** for data querying, **Power BI** for dashboarding, and **Excel** for the raw dataset.

## 📁 Project Structure
```
pathao-ride-analysis/
├── pathao_analysis_queries.sql   # All SQL queries & views
├── project.pbix                  # Power BI dashboard
├── pathao_bookings_data.xlsx     # Raw bookings dataset
└── README.md
```

## 🛠 Tools Used
- **MySQL** – data querying & view creation
- **Power BI** – interactive dashboard/visualization
- **Excel** – source dataset

## 📊 Analysis Covered
1. All successful bookings
2. Average ride distance per vehicle type
3. Total rides cancelled by customers
4. Top 5 customers by number of rides
5. Rides cancelled by drivers (personal/car issues)
6. Max & min driver ratings for Prime Sedan
7. Rides paid via UPI
8. Average customer rating per vehicle type
9. Total booking value of successful rides
10. Incomplete rides with reasons

## ▶️ How to Use
1. Import `pathao_bookings_data.xlsx` into a MySQL table named `bookings`.
2. Run `pathao_analysis_queries.sql` to create the views and generate insights.
3. Open `project.pbix` in Power BI Desktop to explore the visual dashboard.

## 📌 Notes
- Views are created for each analysis question so results can be reused/queried later.
