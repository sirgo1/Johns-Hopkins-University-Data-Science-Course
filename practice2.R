install.packages("httr")
library(httr)
oauth_endpoints("github")

myapp <- oauth_app("github",
                   key = "8d44a9c9981f3ab1e41c",
                   secret = "72d66f5be02b4dee9f364ea7461228034ea0b3fd"
)
github_token <- oauth2.0_token(oauth_endpoints("github"), myapp)
gtoken <- config(token = github_token)
req <- GET("https://api.github.com/users/jtleek/repos", gtoken)
stop_for_status(req)
content(req)