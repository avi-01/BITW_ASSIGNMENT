%%xlsread(filename) function is used to read the MS Excel spreadsheet file.
%%The file is accessed by there fileName. xlsread return the numeric data
%%available in the sheet.
 
filename = 'a_xlsx_file.xlsx';
file = xlsread(filename);
