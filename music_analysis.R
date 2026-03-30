# Music Preference Analysis

# -----------------------------
# 1. Data (Based on your project)
# -----------------------------
genre <- c("Pop","Hip-Hop","Classical","Rock","Country","Folk","Melody","Reggae")
count <- c(30,16,9,8,2,1,1,1)

# -----------------------------
# 2. Bar Chart
# -----------------------------
barplot(count,
        names.arg = genre,
        col = "skyblue",
        main = "Music Preferences",
        xlab = "Genres",
        ylab = "Number of People")

# -----------------------------
# 3. Pie Chart
# -----------------------------
pie(count,
    labels = genre,
    main = "Music Preference Distribution")

# -----------------------------
# 4. Chi-Square Test
# -----------------------------
# Example gender vs preference data
data_matrix <- matrix(c(5,1,0,4,0,7,0,3,
                        4,1,1,12,1,23,1,5),
                      nrow = 2, byrow = TRUE)

chisq.test(data_matrix)

# -----------------------------
# 5. Kruskal-Wallis Test
# -----------------------------
pop <- c(20,9,1,0,0)
hiphop <- c(10,6,0,0,0)
classical <- c(2,2,0,1,1)

data_all <- c(pop, hiphop, classical)
group <- factor(rep(c("Pop","HipHop","Classical"), each = 5))

kruskal.test(data_all, group)

# -----------------------------
# 6. Mann-Whitney Test
# -----------------------------
spotify <- c(29,12,1,0,0)
youtube <- c(6,4,0,2,2)

wilcox.test(spotify, youtube)
