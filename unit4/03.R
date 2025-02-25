# Define the data manually
sound_data <- read.table("unit4/Data_V1.txt", header = TRUE, sep = "\t")

# Save the output as a PNG file
png(filename = "Graph.png", height = 600, width = 800, bg = "white")

# Plot the graph
plot(sound_data$Tone,
    type = "o", col = "blue",
    main = "Learning Samples", col.main = "red", font.main = 4, # Title
    xlab = "Features", # X-axis
    ylab = "Amount", col.lab = "#076707", # Y-axis
    xaxt = "n",
    yaxt = "n",
    ylim = c(1, 15), pch = 1,
)

lines(sound_data$Frequency, lty = 2, type = "o", col = "red", pch = 5)
lines(sound_data$Harmony, lty = 2, type = "o", col = "green", pch = 5)
lines(sound_data$Parity, lty = 2, type = "o", col = "purple", pch = 5)

# Customize x-axis and y-axis labels
axis(1, at = 1:10, labels = sound_data$Features)
# Sets Y-axis from 1 to 12 with spacing of 4 units
axis(2, at = c(0, 4, 8, 12), lwd = 0.5)

# Add a legend
legend("topleft",
    inset = c(0.02, 0.02), # Moves legend slightly to the right
    legend = c("Tone", "Frequency", "Harmony", "Parity"),
    col = c("blue", "red", "green", "purple"),
    lty = 1, pch = c(1, 5, 5, 5)
)

# Add the current date to the graph
text(9.5, 15, paste("Date:", Sys.Date()), col = "black", cex = 1)

# Close the PNG device to save the file
dev.off()
