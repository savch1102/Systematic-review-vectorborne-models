import pandas as pd

# Load the Excel file specifying the header row
file_path = 'Database Systematic Review.xlsx'
df = pd.read_excel(file_path, sheet_name="Database_Filtered")

# Retrieve column headers
headers = df.columns.tolist()
print("Column headers:", headers)

# Drop duplicate rows based on the 'DOI' column
df_cleaned = df.drop_duplicates(subset='DOI')

# Remove rows where 'Behavior_1' equals '-'
df_cleaned = df_cleaned[df_cleaned['Behavior_1'] != '-']

# Export the cleaned DataFrame to a new Excel file
output_path = 'Data.xlsx'
df_cleaned.to_excel(output_path, index=False)

print(f"Cleaned DataFrame successfully saved to {output_path}")

file_path = 'Database Systematic Review.xlsx'
df_raw = pd.read_excel(file_path, sheet_name="Database_Raw")

# Count occurrences across categories in the cleaned dataset
year_counts = df_cleaned['Year'].value_counts()
transmission_counts = df_cleaned['Transmission_1'].value_counts()
model_counts = df_cleaned['Model_1'].value_counts()
behavior_counts = df_cleaned['Behavior_1'].value_counts()

# Display summary statistics
print("\nFrequency distribution for 'Year':")
for year, count in year_counts.items():
    print(f"{year}: {count}")

print("\nFrequency distribution for 'Transmission_1':")
for transmission, count in transmission_counts.items():
    print(f"{transmission}: {count}")

print("\nFrequency distribution for 'Model_1':")
for model, count in model_counts.items():
    print(f"{model}: {count}")

print("\nFrequency distribution for 'Behavior_1':")
for behavior, count in behavior_counts.items():
    print(f"{behavior}: {count}")
