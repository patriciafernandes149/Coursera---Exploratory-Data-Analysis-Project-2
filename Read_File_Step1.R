# Download of the file

archiveFile <- "exdata_data_NEI_data.zip"

if(!file.exists(archiveFile)) {
    
    archiveURL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2FNEI_data.zip"
    
    download.file(url=archiveURL,destfile=archiveFile)
}

if(!(file.exists("summarySCC_PM25.rds") && file.exists("Source_Classification_Code.rds"))) { 
    unzip(archiveFile) 
}
