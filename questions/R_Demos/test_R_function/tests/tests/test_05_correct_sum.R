## @title [Part 2] Correct Data.Frame Sum
## @score 3

## Check to see if student's code returns the correct data.frame

library(tinytest)
using(ttdo)

# Permute penguins
penguinsTest <- read.csv("/grade/serverFilesCourse/datasets/penguins.csv")
print(str(penguinsTest))
penguinsTest$body_mass_g  <- penguinsTest$body_mass_g + rnorm(nrow(penguinsTest), mean = 5, sd = 1)
print(sum(penguinsTest$body_mass_g, na.rm=TRUE))

## Get correct result
source("/grade/tests/ans.R")
reference <- penguin_sum_reference(penguinsTest)
print(reference)

## Get student's result
student <- plr::source_and_eval_safe("/grade/student/student2.R",
                                     penguin_sum(penguinsTest),
                                     "ag")

## Test
expect_equivalent_with_diff(student, reference, tolerance = 1e-4)
