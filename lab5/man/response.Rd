\name{response}
\alias{response}
\docType{data}
\title{
A Data Set
}
\description{
The response you get when you make a request.
}
\usage{data("response")}
\format{
  The format is:
List of 10
 $ url        : chr "https://api.kolada.se/v2/data/kpi/N00945/year/2021"
 $ status_code: int 200
 $ headers    :List of 7
  ..$ content-type                : chr "application/json; charset=utf-8"
  ..$ server                      : chr "Microsoft-IIS/10.0"
  ..$ x-powered-by                : chr "ASP.NET"
  ..$ access-control-allow-origin : chr "*"
  ..$ access-control-allow-headers: chr "Origin, X-Requested-With, Content-Type, Accept"
  ..$ date                        : chr "Wed, 09 Oct 2024 09:18:28 GMT"
  ..$ content-length              : chr "495176"
  ..- attr(*, "class")= chr [1:2] "insensitive" "list"
 $ all_headers:List of 1
  ..$ :List of 3
  .. ..$ status : int 200
  .. ..$ version: chr "HTTP/1.1"
  .. ..$ headers:List of 7
  .. .. ..$ content-type                : chr "application/json; charset=utf-8"
  .. .. ..$ server                      : chr "Microsoft-IIS/10.0"
  .. .. ..$ x-powered-by                : chr "ASP.NET"
  .. .. ..$ access-control-allow-origin : chr "*"
  .. .. ..$ access-control-allow-headers: chr "Origin, X-Requested-With, Content-Type, Accept"
  .. .. ..$ date                        : chr "Wed, 09 Oct 2024 09:18:28 GMT"
  .. .. ..$ content-length              : chr "495176"
  .. .. ..- attr(*, "class")= chr [1:2] "insensitive" "list"
 $ cookies    :'data.frame':	0 obs. of  7 variables:
  ..$ domain    : logi(0) 
  ..$ flag      : logi(0) 
  ..$ path      : logi(0) 
  ..$ secure    : logi(0) 
  ..$ expiration: 'POSIXct' num(0) 
  ..$ name      : logi(0) 
  ..$ value     : logi(0) 
 $ content    : raw [1:495176] 7b 22 63 6f ...
 $ date       : POSIXct[1:1], format: "2024-10-09 09:18:28"
 $ times      : Named num [1:6] 0 0.0419 0.0501 0.0761 0.3529 ...
  ..- attr(*, "names")= chr [1:6] "redirect" "namelookup" "connect" "pretransfer" ...
 $ request    :List of 7
  ..$ method    : chr "GET"
  ..$ url       : chr "https://api.kolada.se/v2/data/kpi/N00945/year/2021"
  ..$ headers   : Named chr "application/json, text/xml, application/xml, */*"
  .. ..- attr(*, "names")= chr "Accept"
  ..$ fields    : NULL
  ..$ options   :List of 2
  .. ..$ useragent: chr "libcurl/8.3.0 r-curl/5.2.3 httr/1.4.7"
  .. ..$ httpget  : logi TRUE
  ..$ auth_token: NULL
  ..$ output    : list()
  .. ..- attr(*, "class")= chr [1:2] "write_memory" "write_function"
  ..- attr(*, "class")= chr "request"
 $ handle     :Class 'curl_handle' <externalptr> 
 - attr(*, "class")= chr "response"
}
\details{
%%  ~~ If necessary, more details than the __description__ above ~~
}
\source{
%%  ~~ reference to a publication or URL from which the data were obtained ~~
}
\references{
%%  ~~ possibly secondary sources and usages ~~
}
\examples{
data(response)
## maybe str(response) ; plot(response) ...
}
\keyword{datasets}
