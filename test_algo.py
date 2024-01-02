
# def count_duplicate_in_column(matrix, column_index):
#     num_rows = len(matrix)
#     column_values = {}

#     for row in range(num_rows):
#         value = matrix[row][column_index]

#         # Update the count in the dictionary
#         column_values[value] = column_values.get(value, 0) + 1

#     # Sum up the counts for duplicates
#     total_duplicates = sum(count - 1 for count in column_values.values() if count > 1)

#     return total_duplicates

# # Example 2D array with duplicate in the second column
# two_dimensional_array = [
#     [1, 2, 3],
#     [4, 5, 6],
#     [7, 5, 9],
#     [10, 2, 12],
#     [13, 5, 15]
# ]


# x = 31 
# y = 101 + x // 10 * 100 + x % 10
# print(y)
# column_index_to_check = 1  # Specify the column index to check for duplicates

# duplicates_count = count_duplicate_in_column(two_dimensional_array, column_index_to_check)

# print(f"Number of duplicates in column {column_index_to_check}: {duplicates_count}")


# array1 = [11, 8, 19, 4, 2, 36, 28, 32, 33, 37, 17, 7, 31, 40, 39, 41, 16, 0, 44, 10, 38, 18, 42, 3, 26, 29, 35, 14, 30, 27, 5, 6, 21, 24]
# array2 = [40, 0, 33, 11, 5, 18, 16, 37, 6, 31]

# # Combine the arrays
# combined_array = array1 + array2

# # Check if all numbers from 0 to 44 are present in the combined array
# if set(combined_array) == set(range(45)):
#     print("The combined array contains numbers from 0 to 44.")
# else:
#     print("The combined array does not contain all numbers from 0 to 44.")


# data = [['YPIF4202B', 'ABIF4401I', '', '', 'DAIF4951A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SAIF4603C', 'DSIF4202F', '', '', '', '', '', 
# '', '', '', '', 'SCTI4411B', 'DPIF4202C', '', '', '', '', '', '', '', '', '', '', '', '', 'HBIF4402F'], ['FBIF4406B', '', '', '', '', '', '', '', '', '', 'TAIF4201G', '', 'ISIF4401G', 'MNIF4605C', '', '', '', '', '', '', 'VHIF4604B', '', '', '', 'DHIF4403F', '', 'WSIF4201C', '', '', 'HTIF4952A', '', 'BSIF4913A', 'BAIF4405F', '', '', 'DOIF4603F', '', '', '', '', 'RRIF4963A', 'BAIF4405E', 'MLIF4101A', '', ''], ['', '', '', 'IMTI4411A', 'ALIF4406I', '', '', '', '', '', '', '', 'AMIF4402D', '', 'DAIF4951A', '', '', '', '', '', '', '', '', 'DAIF4986A', '', '', '', 'MNIF4966A', '', 'RNIF4404E', '', '', 
# 'AYIF4403D', '', 'DZIF4304I', '', '', 'SRIF4406F', '', '', 'JLIF4405I', 'STIF4972A', '', '', ''], ['', '', '', '', '', '', '', '', '', '', '', '', '', 
# '', '', '', '', 'BSIF4701I', '', 'AYIF4403D', '', '', '', '', '', '', '', '', '', 'SAIF4604D', '', 'HBIF4402E', 'ASIF4922A', '', '', '', '', '', '', '', '', '', '', 'BMIF4402I', ''], ['', '', '', '', '', '', '', '', '', '', '', '', 'VHIF4604C', '', 'AWIF4604E', '', '', '', '', 'MKIF4404I', 'ALIF4406C', '', 'AWIF4405B', '', '', '', '', '', '', '', '', '', '', '', '', '', 'IMTI4411A', '', '', 'AWIF4604D', '', '', '', '', ''], ['', 'WSIF4201E', '', '', '', '', 'ALIF4964F', '', '', '', '', '', '', 'VHIF4304A', '', 'IMIF4933A', 'RAIF4947A', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', '', 'SCIF4404D', '', '', '', '', '', '', '', '', '', 'DOIF4603F'], ['', '', '', '', '', '', '', 'DAIF4403B', '', '', '', '', '', '', '', '', 'DPIF4957A', '', '', '', '', '', 'HFIF4602B', '', '', '', '', 'RJIF4971A', 'VHIF4604A', '', '', '', 'RJIF4605D', '', 'ISIF4401F', '', 'ISIF4401H', '', '', '', 
# '', '', '', '', ''], ['', '', '', '', 'RAIF4201I', 'RNIF4603B', '', '', '', '', '', '', '', '', 'MKIF4404I', '', '', '', 'RLIF4401C', '', 'DSIF4404A', 
# 'FBIF4605B', '', '', '', '', '', 'BSIF4602E', '', '', '', '', 'UYIF4603D', 'FBIF4406A', '', '', '', '', '', '', '', '', '', '', 'DSIF4202G'], ['', '', 
# '', 'ARIF4202E', 'AWIF4405B', '', '', '', 'ISIF4504I', '', '', 'NSIF4403C', '', '', 'MRIF4903A', '', '', 'RAIF4201A', '', '', '', '', '', '', 'BJIF4402B', '', '', '', '', '', '', 'RMIF4602B', '', '', '', '', '', 'UYIF4603E', '', '', 'IMIF4985A', '', '', '', ''], ['', '', '', 'BSIF4701I', '', '', '', '', '', '', '', 'ABIF4605I', 'DAIF4403B', '', '', 'ARIF4202D', '', '', '', '', 'RLIF4401C', '', '', 'CFIF4958A', '', '', '', '', '', '', '', '', 'DZIF4604I', '', 'ALIF4603A', '', 'RLIF4902A', '', '', 'BHIF4602I', '', 'WSIF4402A', '', '', ''], ['', '', '', '', 'SCTI4411B', '', '', '', '', '', '', '', '', '', '', 'RLIF4401B', '', 'WSIF4402A', 'MNIF4605C', 'ARIF4202D', '', '', '', '', 'RJIF4605E', 'VHIF4604A', '', '', '', '', '', 'MMIF4914A', '', 'DHIF4935A', '', '', '', '', '', 'HSIF4602D', 'MLIF4101A', '', 'MRIF4903A', '', 'KRTI4411A'], ['', '', '', '', '', '', '', '', 'VHIF4604B', '', '', 'RAIF4201A', '', '', 'SAIF4934A', 'KRIF4404C', 'HFIF4601A', '', '', '', '', '', 'ABIF4502I', 'WSIF4201D', '', '', '', '', '', '', '', '', 'FBIF4605A', '', '', '', '', 'YPIF4101A', '', '', '', '', '', '', ''], ['AWIF4405A', '', '', 'ISIF4504I', 'ASIF4922A', '', 'HSIF4945A', '', 'DAIF4403A', '', '', 'RMIF4602A', '', 'BJIF4602C', '', '', 'AWIF4604D', 'BSIF4913A', 'ABIF4605I', '', '', '', '', 'SRIF4406E', '', '', '', '', '', 'RNIF4603C', '', '', '', '', '', 'HFIF4601A', '', '', '', 'FBIF4504A', '', 'MNIF4605I', 'BSIF4602E', '', 'YPIF4202A']]

# c = 0
# print(len(data[0]))
# print(len(data))
# for i in range(len(data[0])):
#     for j in range(len(data)):
#         if data[j][i] != '':
#             print(data[j][i])
#             c = c + 1

# print(c)


for i in range(50):
    index_to_sesi = 101 + i // 10 * 100 + i % 10
    print(i, index_to_sesi)