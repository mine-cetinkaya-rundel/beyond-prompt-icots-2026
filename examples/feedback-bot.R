library(ellmer)
library(glue)
library(tidyverse)

prompt <- function(question, rubric_detailed, rubric_simple, answer){
  chat <- chat_openai(
    system_prompt = "You are a helpful course instructor teaching a course on data science with the R programming language and the tidyverse and tidymodels suite of packages. You like to give succinct but precise feedback."
  )
  
  chat$chat(
    glue(
      "Carefully read the {question} and the {rubric_detailed},
      then evaluate {answer} against the {rubric_detailed} to provide feedback. 
      Format the feedback as bullet points mapping to the bullet points in the {rubric_simple}.”
    )
  )
}
