#' Pig say sweet words!
#'
#' @return a pig
#' @export
#'
#' @examples
#' hello()
hello <- function() {
  writeLines("
\u0048\u0061\u0070\u0070\u0079 \u004e\u0065\u0077 \u0059\u0065\u0061\u0072 \u0074\u006f \u004c\u0069\u0061\u006f\u004c\u0061\u0062\u0021
\u002d\u002d\u002d\u002d\u002d\u002d
  \u005c
   \u005c
      \u005f
 \u003c\u0060\u002d\u002d\u0027\u005c\u003e\u005f\u005f\u005f\u005f\u005f\u005f
 \u002f\u002e \u002e  \u0060\u0027     \u005c
\u0028\u0060\u0027\u0029  \u002c        \u0040
 \u0060\u002d\u002e\u005f\u002c        \u002f
    \u0029\u002d\u0029\u005f\u002f\u002d\u002d\u0028 \u003e
   \u0027\u0027\u0027\u0027  \u0027\u0027\u0027\u0027")
}

#'Data reader for different file format
#'
#'Use this function to open label-free proteomics data in different file formats(csv,txt,xlsx)
#'
#' @param file_path your file path,if the file doesn't in the
#' current  directory,please give the complete paths.
#' @details This funtion can load label-free proteomics files in csv/txt/xlsx format."NA","#N/A","NaN","" and
#' 0 are seem as missing values and transform to NA.The default data format is the first column is names of proteins/peptides,
#' and the first row is names of samples.The samples information file can also load by this funtion.Currently,this funtion can
#' support "proteinGroups.txt" file from MaxQuant except for the default format.The name of MaxQuant rawfile doesn't matter,
#' and the MaxQuant data extracted by this funtion can be analyzed by function data_cleaner().
#' @return a dataframe extracted from your input data
#' @export
#'
#' @examples
#' test_data<-data_reader("test.csv")
#' test_data<-data_reader("test.xlsx")
#' test_data<-data_reader("test.txt")
#' test_path<-c("test.csv")
#' test_data<-data_reader(test_path)
#'
data_reader<-function(file_path){
  file_type<-tail(strsplit(file_path,split = "[.]")[[1]],n=1)
  if (file_type==c("csv")) {
    temp_data<-read.csv(file_path,
               header=TRUE,
               stringsAsFactors = FALSE,
               na.strings = c("#N/A","NaN","","NA"))
    write.xlsx(temp_data,"temp_data.xlsx")
    data<-data_reader("temp_data.xlsx")
    file.remove("temp_data.xlsx")
  }

  if (file_type==c("xlsx")) {
    data<-read.xlsx(file_path,
                    sheet = 1,
                    rowNames = TRUE,
                    colNames = TRUE,
                    na.strings = c("#N/A","NaN","","NA"))
  }

  if (file_type==c("txt")) {
    data<-read.delim(file_path,
                     header = TRUE,
                     row.names = 1,
                     fill = TRUE,
                     stringsAsFactors = FALSE,
                     na.strings = c("#N/A","NaN","","NA"))
  }
  data[data==0]<-NA
  return(data)
}
