# Customer-Satisfaction-Prediction
# Customer Satisfaction Prediction Project

This project focuses on predicting customer satisfaction ratings based on historical support ticket data using machine learning.

## 🚀 Project Objective

To build a machine learning model that accurately predicts customer satisfaction levels (ratings 1 to 5) from support ticket attributes, and to generate insights that can help improve service quality.

## 🧰 Tools & Technologies Used

* **Excel** – Data inspection, cleaning, and pivot analysis
* **SQL** – Data segmentation, trend analysis
* **Python** – ML modeling and feature engineering
* **Libraries** – Pandas, NumPy, Seaborn, Matplotlib, Scikit-learn

## 📂 Dataset Description

The dataset contains 8,469 support tickets with the following features:

* Customer demographics: Age, Gender
* Ticket info: Type, Channel, Priority, Status
* Date and time fields: Date of Purchase, First Response Time, Resolution Time
* Text columns: Ticket Subject, Description
* Target variable: Customer Satisfaction Rating (1 to 5)

## 🧹 Data Preprocessing

* Removed rows with missing satisfaction ratings
* Dropped irrelevant text fields (e.g., Description, Resolution)
* Encoded categorical features using `LabelEncoder`
* Converted datetime features where needed
* Scaled features using `StandardScaler`

## 🧠 Model Used

* **RandomForestClassifier**
* Justification: Handles categorical and numeric features well, robust to non-linearity, interpretable feature importance

## 🧪 Model Evaluation

* Classification Report: Accuracy, Precision, Recall, F1-score
* Confusion Matrix: Visualized performance by class
* Feature Importance: Identified key drivers (e.g., Ticket Priority, Type, Channel)

## 📈 Insights for Business

* Proactively predict dissatisfied customers
* Identify weak support areas by product or channel
* Optimize ticket routing and prioritization strategies

## 📌 Project Structure

```
├── data/
│   └── customer_support_tickets.csv
├── notebooks/
│   └── customer_satisfaction_model.ipynb
├── reports/
│   └── customer_satisfaction_analysis.pptx
├── Customer_Satisfaction_Prediction_Project.pptx
├── README.md
```

## 📎 Future Improvements

* Use NLP to analyze ticket descriptions
* Try XGBoost or Ordinal Classification models
* Integrate model into a live dashboard/CRM

## 🧑‍💻 Author

**\[Your Name]**
\[Your GitHub or LinkedIn profile link]



