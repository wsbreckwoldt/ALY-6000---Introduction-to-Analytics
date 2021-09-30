# Class:      ALY6000-enter CRN number 
# Report:     Module 1 Project
# Professor:  Dr. Dee Chiluiza
# Student:    William Breckwoldt
# Date:       9/30/2021


# Task 1: Create a vector named car_speed and enter data from table 1.
car_speed = c(64.52, 44.04, 66.13, 41.43, 53.26, 61.66, 47.51, 61.21, 60.74, 50.84, 50.46, 54.17, 55.49, 69.09, 56.85, 52.43, 49.68, 38.93, 57.20, 61.95, 59.59, 45.32, 60.36, 55.89)

# Task 2: Obtain the average speed

mean_speed = mean(car_speed)
print(paste("The mean speed is", round(mean_speed, 2), "miles per hour"))

# Task 3: Obtain the standard deviation

sd_speed = sd(car_speed)
print(paste("The standard deviation is", round(sd_speed, 2), "miles per hour"))

# Task 4: Obtain the median speed

median_speed = median(car_speed)
print(paste("The median speed is", round(median_speed, 2), "miles per hour"))

# Task 5: Obtain the quantiles

min_speed = min(car_speed)
q15_speed = quantile(car_speed, .15)
q50_speed = quantile(car_speed, .50)
q75_speed = quantile(car_speed, .75)
q82_speed = quantile(car_speed, .82)
max_speed = max(car_speed)

print (paste("The minimum speed is", min_speed, "miles per hour"))
print (paste("The 15th quantile is", q15_speed, "miles per hour"))
print (paste("The 50th quantile is", q50_speed, "miles per hour"))
print (paste("The 75th quantile is", q75_speed, "miles per hour"))
print (paste("The 82nd quantile is", q82_speed, "miles per hour"))
print (paste("The maximum speed is", max_speed, "miles per hour"))

# Task 6: Delete values

car_speed2 = car_speed[! car_speed %in% c(55.89)]
car_speed2
mean_speed2 = mean(car_speed2)

# Task 7: Adding values

car_speed3 = append(car_speed2, 45.12)
mean_speed3 = mean(car_speed3)


# Task 8: Create vector sales

sales = c(180, 250, 440, 620, 730, 710, 510)

# Task 9: Create vector days

days = c("Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday")

# Task 10: Link the days of the week with the sale values

names(sales) = days

# Task 11: Present sales again and observe the difference

sales

# Task 12: Create vector good_sales

good_sales = sales > 500
good_sales

# Task 13. Present only the days of the week with more than $500 in sales****

good_sales2 = good_sales[! days %in% c("Monday","Tuesday","Wednesday")]
install.packages("knitr")

knitr::kable(good_sales2[x = TRUE])

# Task 14. Enter and present table 2 data using Matrix****

main_store = c(32000, 37800)

first_branch = c(25000, 33000)

second_branch = c(18000, 15000)

third_branch = c(23500, 22600)

city_sales = c(main_store, first_branch, second_branch, third_branch)

city_sales

city_sales_matrix = matrix(city_sales, nrow = 4, byrow = TRUE)

city_sales_matrix

cities = c("Bogota", "Madrid")

stores = c("Main Store", "First Branch", "Second Branch", "Third Branch")

colnames(city_sales_matrix) = cities

rownames(city_sales_matrix) = stores

city_sales_matrix

