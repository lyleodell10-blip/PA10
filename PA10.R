# Name: Lyle O'Dell
# Course: COP2073C - R Programming
# Assignment: Module 10 Programming Assignment (PA10)
# Date: November 9, 2026

# Install required packages if they are not already installed.
if (!requireNamespace("tidyverse", quietly = TRUE)) {
  install.packages("tidyverse")
}
if (!requireNamespace("nycflights13", quietly = TRUE)) {
  install.packages("nycflights13")
}

# Load tidyverse functions and the flights dataset.
library(tidyverse)
library(nycflights13)

# Sort by scheduled departure, then descending departure delay.
# Keep only the four columns required by the assignment.
flights_result <- flights %>%
  arrange(sched_dep_time, desc(dep_delay)) %>%
  select(sched_dep_time, dep_delay, carrier, day)

# Display the resulting tibble.
flights_result
