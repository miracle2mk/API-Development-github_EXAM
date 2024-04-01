
# Function to calculate simple interest
calculate_simple_interest() {
    principal=$1
    rate=$2
    time=$3

    interest=$(echo "scale=2; $principal * $rate * $time / 100" | bc)
    echo "The simple interest is: $interest"
}

# Read input from user
read -p "Enter the principal amount: " principal
read -p "Enter the interest rate (in percentage): " rate
read -p "Enter the time period (in years): " time

# Call the function to calculate simple interest
calculate_simple_interest $principal $rate $time
