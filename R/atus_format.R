atus_format <- function(data){
    data <- sapply(data, as.character)
    data[data == "NOT_DISPLAYED"] <- "0"
    data <- as.data.frame(data)
    my_vars <- c("chores", "day","friends","grooming","homework","meals",
                 "online","read","school","sleep","sports","television",
                 "travel","videogames","work")
    Time.Use[, my_vars] <- sapply(Time.Use[, my_vars], as.character)
    Time.Use[, my_vars] <- sapply(Time.Use[, my_vars], as.numeric)
    sum_atus <- data %.% 
        group_by(user.id, day) %.% 
        summarise(chores = sum(chores), 
                  friends = sum(friends), 
                  grooming = sum(grooming), 
                  homework = sum(homework), 
                  meals = sum(meals), 
                  online = sum(online), 
                  read = sum(read), 
                  school = sum(school), 
                  sleep = sum(sleep), 
                  sports = sum(sports), 
                  television = sum(television), 
                  travel = sum(travel), 
                  videogames = sum(videogames), 
                  work = sum(work))
    mean_atus <- sum_atus %.% 
        group_by(user.id) %.% 
        summarise(chores = mean(chores), 
                  friends = mean(friends), 
                  grooming = mean(grooming), 
                  homwork = mean(homework), 
                  meals = mean(meals), 
                  online = mean(online), 
                  read = mean(read), 
                  school = mean(school), 
                  sleep = mean(sleep), 
                  sports = mean(sports), 
                  television = mean(television), 
                  travel = mean(travel), 
                  videogames = mean(videogames), 
                  work = mean(work))
    data <- as.data.frame(mean_atus)
    return(data)
}