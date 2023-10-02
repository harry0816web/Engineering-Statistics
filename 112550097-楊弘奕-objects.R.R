# sep.25 exercise 2
set.seed(1)
math.score <- sample(0:100,80,replace = TRUE)
math.score


# (a)
mean(math.score[1:30])
sd(math.score[1:30])

# (b)
passId <- math.score >= 60
pass <- which(passId)
length(pass)
which(passId)

# (c)
(score.max <- max(math.score))
which(math.score == score.max)
(score.min <- min(math.score))
which(math.score == score.min)

# (d)
score.sorted <- sort(math.score,decreasing = TRUE)
mean(score.sorted[1:10])
sd(score.sorted[1:10])

# (e)
score.summary <- summary(math.score)
score.summary['1st Qu.']

