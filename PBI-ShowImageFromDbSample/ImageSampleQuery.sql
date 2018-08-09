USE SampleImageData;  
GO  
--Create Table with Image as varbinary datatype
CREATE TABLE ImageSample(ImageName varChar(50), ImageData varBinary(MAX));  


-- Insert an Image in a Table
INSERT INTO ImageSample(ImageName, ImageData)  
SELECT 'FirstFile',  
BulkColumn FROM OPENROWSET(Bulk 'C:\Donut Chart.png', SINGLE_BLOB) AS BLOB 
Select * from ImageSample
--Create Table with Image as Image datatype
CREATE TABLE ImageSample2(ImageName varChar(50), ImageData image);

INSERT INTO ImageSample2(ImageName, ImageData)  
SELECT 'FirstFile',  
BulkColumn FROM OPENROWSET(Bulk 'C:\Donut Chart.png', SINGLE_BLOB) AS BLOB 
Select * from ImageSample2  
