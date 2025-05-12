-- DIMENSION TABLE: DimDateTime
CREATE TABLE DimDateTime (
    DateTimeID INT IDENTITY(1,1) PRIMARY KEY,
    Date DATE,
    Year INT,
    Month INT,
    Day INT,
    Weekday VARCHAR(20),
    Hour INT,
    Minute INT,
    TimeOfDay VARCHAR(20)
);

-- DIMENSION TABLE: DimLocation
CREATE TABLE DimLocation (
    LocationID INT IDENTITY(1,1) PRIMARY KEY,
    Borough VARCHAR(50),
    SiteName VARCHAR(100),
    Latitude FLOAT,
    Longitude FLOAT
);

-- DIMENSION TABLE: DimPollutant
CREATE TABLE DimPollutant (
    PollutantID INT IDENTITY(1,1) PRIMARY KEY,
    PollutantName VARCHAR(100),
    Category VARCHAR(100)
);

-- FACT TABLE: FactAirQualityReadings
CREATE TABLE FactAirQualityReadings (
    ReadingID INT IDENTITY(1,1) PRIMARY KEY,
    DateTimeID INT NOT NULL,
    LocationID INT NOT NULL,
    PollutantID INT NOT NULL,
    Temperature FLOAT,
    Humidity FLOAT,
    WindSpeed FLOAT,
    WeatherCondition VARCHAR(100),
    ConcentrationValue FLOAT,
    Unit VARCHAR(50),
    IsThresholdExceeded BOOLEAN,

    FOREIGN KEY (DateTimeID) REFERENCES DimDateTime(DateTimeID),
    FOREIGN KEY (LocationID) REFERENCES DimLocation(LocationID),
    FOREIGN KEY (PollutantID) REFERENCES DimPollutant(PollutantID)
);
