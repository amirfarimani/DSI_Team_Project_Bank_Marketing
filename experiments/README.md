


**Objecitve:**

The goal of this analysis is to predict whether a client will subscribe to a term deposit (y) using three classification models: KNN, Random Forest, and XGBoost. The models are evaluated and compared to identify the most suitable one for the task.

**Dataset Overview :**

Total Records: 45,211
Features: 16 (after preprocessing)
Target Variable:
1 (Subscribed): 11.7%
0 (Not Subscribed): 88.3%

**Models and Parameters :**

*K-Nearest Neighbors (KNN) -* 
Key Parameters: n_neighbors=5
Strengths: Simple and interpretable.
Weaknesses: Sensitive to class imbalance; lower recall for the minority class.

*Random Forest -* 
Key Parameters: n_estimators=100, max_depth=20, min_samples_split=5, min_samples_leaf=2
Strengths: Handles class imbalance well and is robust to overfitting.
Weaknesses: Computationally intensive for large datasets.

*XGBoost -* 
Key Parameters: learning_rate=0.1, n_estimators=100, max_depth=6, scale_pos_weight=7.55
Strengths: Excellent for imbalanced datasets, interpretable via feature importance.
Weaknesses: High computational cost.


**The models were evaluated on:**

Accuracy: Overall proportion of correct predictions.
Precision: Proportion of true positives among predicted positives.
Recall: Proportion of actual positives correctly identified.
F1-Score: Harmonic mean of precision and recall.



**Performance Metrics :**

| **Metric**          | **KNN**  | **Random Forest** | **XGBoost** |
|---------------------|----------|-------------------|-------------|
| **Accuracy (%)**    | 84.0     | 89.0              | 87.0        |
| **Precision**       | 0.38     | 0.53              | 0.48        |
| **Recall**          | 0.58     | 0.62              | 0.79        |
| **F1-Score**        | 0.46     | 0.57              | 0.59        |


**Observations :**

*KNN -* 
Achieved reasonable accuracy (84%) but struggled with the minority class (low precision).
Recall (0.58) indicates it could capture some positives but less effectively than Random Forest or XGBoost.

*Random Forest -* 
Strong balance between precision (0.53) and recall (0.62), resulting in an F1-Score of 0.57.
Highest overall accuracy (89%) among the three models.

*XGBoost -*
Achieved the best recall (0.79), making it suitable for identifying positive cases.
Lower precision (0.48) compared to Random Forest but outperformed in F1-Score (0.59).


**Conclusion:**

Random Forest has the highest overall accuracy and balanced performance across all metrics.
XGBoost is the best for recall, making it ideal when identifying positive cases is critical.

**Recommendations :**

We can XGBoost for scenarios requiring high recall (e.g., minimizing false negatives).
Random Forest is suitable for general-purpose tasks with high accuracy and balanced metrics.



