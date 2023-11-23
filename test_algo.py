
def count_duplicate_in_column(matrix, column_index):
    num_rows = len(matrix)
    column_values = {}

    for row in range(num_rows):
        value = matrix[row][column_index]

        # Update the count in the dictionary
        column_values[value] = column_values.get(value, 0) + 1

    # Sum up the counts for duplicates
    total_duplicates = sum(count - 1 for count in column_values.values() if count > 1)

    return total_duplicates

# Example 2D array with duplicate in the second column
two_dimensional_array = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 5, 9],
    [10, 2, 12],
    [13, 5, 15]
]


x = 31 
y = 101 + x // 10 * 100 + x % 10
print(y)
column_index_to_check = 1  # Specify the column index to check for duplicates

duplicates_count = count_duplicate_in_column(two_dimensional_array, column_index_to_check)

print(f"Number of duplicates in column {column_index_to_check}: {duplicates_count}")
