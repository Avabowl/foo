% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/hello.R
\name{data_reader}
\alias{data_reader}
\title{Data reader for different file format}
\usage{
data_reader(file_path)
}
\arguments{
\item{file_path}{your file path,if the file doesn't in the
current  directory,please give the complete paths.}
}
\value{
a dataframe extracted from your input data
}
\description{
Use this function to open label-free proteomics data in different file formats(csv,txt,xlsx)
}
\details{
This funtion can load label-free proteomics files in csv/txt/xlsx format."NA","#N/A","NaN","" and
0 are seem as missing values and transform to NA.The default data format is the first column is names of proteins/peptides,
and the first row is names of samples.The samples information file can also load by this funtion.Currently,this funtion can
support "proteinGroups.txt" file from MaxQuant except for the default format.The name of MaxQuant rawfile doesn't matter,
and the MaxQuant data extracted by this funtion can be analyzed by function data_cleaner().
}
\examples{
test_data<-data_reader("test.csv")
test_data<-data_reader("test.xlsx")
test_data<-data_reader("test.txt")
test_path<-c("test.csv")
test_data<-data_reader(test_path)

}
