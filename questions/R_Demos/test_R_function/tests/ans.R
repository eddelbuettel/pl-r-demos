penguin_read_reference <- function(file) {
    read.csv(file)
}

penguin_sum_reference <- function(dat) {
    sum(dat$body_mass_g, na.rm=TRUE)
}
