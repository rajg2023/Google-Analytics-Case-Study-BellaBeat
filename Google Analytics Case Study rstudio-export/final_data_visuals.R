# R Script for Creating and Combining Four Data Visualizations
# Make sure your 'finalData.csv' file is in the same directory as this script,
# or provide the full path to the file in the read.csv() function.

# 1. Install and Load Necessary Packages
# Uncomment the install.packages() lines below if you haven't installed them yet.
# install.packages("ggplot2")
# install.packages("patchwork")

library(ggplot2)
library(patchwork)

# 2. Load Your Data
# Assumes 'finalData.csv' is in your current working directory.
finalData <- read.csv("finalData.csv")

# 3. Create Four Individual Plots

# --- Plot 1: Histogram of WeightKg ---
p1 <- ggplot(finalData, aes(x = WeightKg)) +
  geom_histogram(binwidth = 5, fill = "salmon", color = "darkred", alpha = 0.8) +
  labs(title = "Distribution of Weight (Kg)", x = "Weight (Kg)", y = "Frequency") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# --- Plot 2: Scatter Plot of WeightKg vs. BMI ---
p2 <- ggplot(finalData, aes(x = WeightKg, y = BMI)) +
  geom_point(aes(color = BMI), size = 3, alpha = 0.8) + # Color points by BMI
  scale_color_gradient(low = "lightblue", high = "darkblue") + # Gradient color scale
  labs(title = "Weight vs. BMI", x = "Weight (Kg)", y = "BMI") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# --- Plot 3: Bar Chart of totalSteps by ID ---
# Convert 'id' to a factor for proper plotting and reorder by totalSteps
finalData$id_factor <- factor(finalData$id)
p3 <- ggplot(finalData, aes(x = reorder(id_factor, totalSteps), y = totalSteps)) +
  geom_bar(stat = "identity", fill = "lightgreen", color = "darkgreen", alpha = 0.8) +
  labs(title = "Total Steps by Individual", x = "Individual ID", y = "Total Steps") +
  theme_minimal() +
  theme(axis.text.x = element_text(angle = 45, hjust = 1), # Rotate x-axis labels
        plot.title = element_text(hjust = 0.5, face = "bold"))

# --- Plot 4: Scatter Plot of totalDista vs. totalCalor ---
p4 <- ggplot(finalData, aes(x = totalDistance, y = totalCalories)) +
  geom_point(aes(color = totalDistance), size = 3, alpha = 0.7) +
  scale_color_gradient(low = "gold", high = "darkorange") + # Different color gradient
  geom_smooth(method = "lm", se = FALSE, color = "purple", linetype = "dashed") + # Add a linear trend line
  labs(title = "Calories Burned vs. Distance Covered", x = "Total Distance", y = "Total Calories") +
  theme_minimal() +
  theme(plot.title = element_text(hjust = 0.5, face = "bold"))

# 4. Combine the Plots using patchwork
# Arrange them in a 2x2 grid
(p1 | p2) / (p3 | p4)

# You can also save the combined plot to a file if you like:
# ggsave("combined_visuals.png", plot = (p1 | p2) / (p3 | p4), width = 12, height = 8, dpi = 300)
