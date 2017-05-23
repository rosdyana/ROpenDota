## About

ROpenDota provides a client for the API of OpenDota. OpenDota is a web service which is provide DOTA2 real time data. Data is collected through the Steam WebAPI. With ROpenDota you can easily grab the latest DOTA2 statistics in R programming such as latest match on official international competition, analyzing your or enemy performance to learn their strategies,etc.

#### What is OpenDota?
OpenDota is a volunteer-developed, open source platform providing Dota 2 data. It provides a web interface for casual users to browse through the collected data, as well as an API to allow developers to build their own applications with it.

Data is collected through the Steam WebAPI, as well as replay parsing of .dem files. The replay file contains much more data than the WebAPI, at the cost of additional CPU time spent to process the file. As a result, replay parsing can only be done for a subset of the matches played, while basic data from the API is collected for every public match.

#### What are your terms and conditions?
The service is provided on a best-effort basis. Since it relies on Valve infrastucture, we cannot make any guarantees of availability.

#### Build Status
[![Build Status](https://travis-ci.org/rosdyana/ROpenDota.svg?branch=master)](https://travis-ci.org/rosdyana/ROpenDota)

#### Released Version
[![CRAN_Status_Badge](http://www.r-pkg.org/badges/version/ROpenDota)](https://cran.r-project.org/package=ROpenDota)

#### Download Stats.
[![CRAN Total Download](https://cranlogs.r-pkg.org/badges/grand-total/ROpenDota)](https://cran.r-project.org/)

[![Downloads from the RStudio CRAN mirror](http://cranlogs.r-pkg.org/badges/ROpenDota)](https://cran.r-project.org/)

## Installation

To install the latest released version from CRAN you just need to run on your console:

```r
install.packages('ROpenDota')
```

To install the development version you need to have the `devtools` package installed. To install devtools type in your console: `install.packages('devtools')`.

Then to install RDota2 run the following on your console:

```R
devtools::install_github('rosdyana/ROpenDota')
```

## Credits
 - [OpenDota](https://www.opendota.com/) 
 - [R](https://www.r-project.org/)
 - [YZU](https://www.yzu.edu.tw/)
