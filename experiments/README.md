🚀 **Objective**

The goal of this project is to process the bank-full.csv dataset, clean and analyze the data, engineer features, prepare it for modeling, and build a predictive model. This document provides a structured roadmap of all the steps involved.

🛠️ **Tools & Libraries Include the libraries and tools that will be used:** Python Libraries: Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn, etc. Tools: Jupyter Notebook, VSCode, or other preferred environments.

📊 **Steps & Workflow**

**Data Cleaning**

Goal: Ensure data integrity by removing inconsistencies, missing values, and duplicates. Actions: Check for Missing Values: Identify and handle missing data. Remove Duplicates: Eliminate any repeated rows in the dataset. Standardize Text Formatting: Standardize categorical variables to ensure uniformity.

Assess the Columns for "Unknown" Values Contact & poutcome: If their proportion of "unknown" values > 30%, evaluate their impact on the target variable (y). If minimal impact is found, these columns can be dropped entirely. Job & Education: Rows with "unknown" values should be removed if they're likely crucial for prediction. Strategy for Handling "Unknown" Values Replace with Mode: If < 10% of the data has "unknown," replace missing values with the mode (most frequent value). Remove Rows/Columns: If > 30% of the data contains "unknown," consider dropping the rows or the entire column.

Impact Evaluation: Chi-Square Tests Objective: Determine statistical relationships between selected features (contact and poutcome) and the target variable y. Method: Perform Chi-Square Tests to determine association. p-value < 0.05: Statistically significant relationship. p-value > 0.05: Minimal/no impact on the target variable.

Verify Cleaning After addressing all "unknown" values, validate that the cleaning steps were successful.

**Exploratory Data Analysis (EDA)**

Goal: Understand the data, relationships between variables, and identify trends. Actions: Summarize numerical and categorical variables. Visualize data distributions, correlations, and trends. Identify outliers.

Example: Visualize age distributions using histograms or boxplots for better interpretation.

**Feature Engineering**

Goal: Create new features or transform existing ones to improve model performance. Actions: Group numerical data into categories (e.g., create age groups). Generate interaction features (e.g., combining balance_per_campaign features). Encode categorical variables (e.g., one-hot encoding).

**Data Transformation**

Goal: Prepare the data for model training by transforming features and addressing class imbalances. Actions: Scaling: Standardize numerical features for uniformity. Handle class imbalance using techniques such as SMOTE or oversampling.

**MODELING :**

The goal of this analysis is to predict whether a client will subscribe to a term deposit (y) using three classification models: KNN, Random Forest, and XGBoost. The models are evaluated and compared to identify the most suitable one for the task.

**Dataset Overview :**

Total Records: 45,211 Features: 16 (after preprocessing) Target Variable: 1 (Subscribed): 11.7% 0 (Not Subscribed): 88.3%

**Models and Parameters :**

K-Nearest Neighbors (KNN) - Key Parameters: n_neighbors=5 Strengths: Simple and interpretable. Weaknesses: Sensitive to class imbalance; lower recall for the minority class.

Random Forest - Key Parameters: n_estimators=100, max_depth=20, min_samples_split=5, min_samples_leaf=2 Strengths: Handles class imbalance well and is robust to overfitting. Weaknesses: Computationally intensive for large datasets.

XGBoost - Key Parameters: learning_rate=0.1, n_estimators=100, max_depth=6, scale_pos_weight=7.55 Strengths: Excellent for imbalanced datasets, interpretable via feature importance. Weaknesses: High computational cost.

The models were evaluated on:

Accuracy: Overall proportion of correct predictions. Precision: Proportion of true positives among predicted positives. Recall: Proportion of actual positives correctly identified. F1-Score: Harmonic mean of precision and recall.

**Performance Metrics :**

Metric	KNN	Random Forest	XGBoost
Accuracy (%)	84.0	89.0	87.0
Precision	0.38	0.53	0.48
Recall	0.58	0.62	0.79
F1-Score	0.46	0.57	0.59

**Observations** :

KNN - Achieved reasonable accuracy (84%) but struggled with the minority class (low precision). Recall (0.58) indicates it could capture some positives but less effectively than Random Forest or XGBoost.

Random Forest - Strong balance between precision (0.53) and recall (0.62), resulting in an F1-Score of 0.57. Highest overall accuracy (89%) among the three models.

XGBoost - Achieved the best recall (0.79), making it suitable for identifying positive cases. Lower precision (0.48) compared to Random Forest but outperformed in F1-Score (0.59).

**Conclusion:**

Random Forest has the highest overall accuracy and balanced performance across all metrics. XGBoost is the best for recall, making it ideal when identifying positive cases is critical.

**Recommendations :**

We can XGBoost for scenarios requiring high recall (e.g., minimizing false negatives). Random Forest is suitable for general-purpose tasks with high accuracy and balanced metrics.

DSI_Team_Project_Bank_Marketing/experiments/README.md at Data-Processing · amirfarimani/DSI_Team_Project_Bank_Marketing
