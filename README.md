# CODATA

*Programming with R repo for [CODATA-RDA School of Research Data
Science](http://www.ictp-saifr.org/?page_id=15270).*

*5-6 Dec. 2017*

*ICTP South American Institute for Fundamental Research*

*IFT-UNESP*

## Main resources

Listed below are the links for selected material for this course. All
material are from [Software Carpentry](https://software-carpentry.org/)
lessons.

### Topics from r-novice-gapminder

Selected topics from
[r-novice-gapminder](http://swcarpentry.github.io/r-novice-gapminder/).

Github repo: https://github.com/swcarpentry/r-novice-gapminder

1. Introduction to R and RStudio
  - Questions:
    - "How to find your way around RStudio?"
    - "How to interact with R?"
    - "How to manage your environment?"
    - "How to install packages?"
  - Objectives:
    - "Describe the purpose and use of each pane in the RStudio IDE"
    - "Locate buttons and options in the RStudio IDE"
    - "Define a variable"
    - "Assign data to a variable"
    - "Manage a workspace in an interactive R session"
    - "Use mathematical and comparison operators"
    - "Call functions"
    - "Manage packages"
  - Keypoints:
    - "Use RStudio to write and run R programs."
    - "R has the usual arithmetic operators and mathematical functions."
    - "Use `<-` to assign values to variables."
    - "Use `ls()` to list the variables in a program."
    - "Use `rm()` to delete objects in a program."
    - "Use `install.packages()` to install packages (libraries)."
3. Seeking Help
  - Questions:
    - "How can I get help in R?"
  - Objectives:
    - "To be able read R help files for functions and special
      operators."
    - "To be able to use CRAN task views to identify packages to solve a
      problem."
    - "To be able to seek help from your peers."
  - Keypoints:
    - "Use `help()` to get online help in R."
4. Data Structures
  - Questions:
    - "How can I read data in R?"
    - "What are the basic data types in R?"
    - "How do I represent categorical information in R?"
  - Objectives:
    - "To be aware of the different types of data."
    - "To begin exploring data frames, and understand how they are
      related to vectors, factors and lists."
      - "To be able to ask questions from R about the type, class, and
      structure of an object."
  - Keypoints:
    - "Use `read.csv` to read tabular data in R."
    - "The basic data types in R are double, integer, complex, logical,
      and character."
    - "Use factors to represent categories in R."
5. Exploring Data Frames
  - Questions:
    - "How can I manipulate a data frame?"
  - Objectives:
    - "Be able to add and remove rows and columns."
    - "Be able to remove rows with `NA` values."
    - "Be able to append two data frames"
    - "Be able to articulate what a `factor` is and how to convert
      between `factor` and `character`."
    - "Be able to find basic properties of a data frames including size,
    class or type of the columns, names, and first few rows."
  - Keypoints:
    - "Use `cbind()` to add a new column to a data frame."
    - "Use `rbind()` to add a new row to a data frame."
    - "Remove rows from a data frame."
    - "Use `na.omit()` to remove rows from a data frame with `NA` values."
    - "Use `levels()` and `as.character()` to explore and manipulate factors"
    - "Use `str()`, `nrow()`, `ncol()`, `dim()`, `colnames()`,
      `rownames()`, `head()` and `typeof()` to understand structure of
      the data frame"
    - "Read in a csv file using `read.csv()`"
    - "Understand `length()` of a data frame"
6. Subsetting Data
  - Questions:
    - "How can I work with subsets of data in R?"
  - Objectives:
    - "To be able to subset vectors, factors, matrices, lists, and data
      frames"
    - "To be able to extract individual and multiple elements: by index,
      by name, using comparison operations"
    - "To be able to skip and remove elements from various data
    structures."
  - Keypoints:
    - "Indexing in R starts at 1, not 0."
    - "Access individual values by location using `[]`."
    - "Access slices of data using `[low:high]`."
    - "Access arbitrary sets of data using `[c(...)]`."
    - "Use logical operations and logical vectors to access subsets of data."
7. Control Flow
  - Questions:
    - "How can I make data-dependent choices in R?"
    - "How can I repeat operations in R?"
  - Objectives:
    - "Write conditional statements with `if()` and `else()`."
    - "Write and understand `for()` loops."
  - Keypoints:
    - "Use `if` and `else` to make choices."
    - "Use `for` to repeat operations."
9. Vectorization
  - Questions:
    - "How can I operate on all the elements of a vector at once?"
  - Objectives:
    - "To understand vectorized operations in R."
  - Keypoints:
    - "Use vectorized operations instead of loops."
10. Functions Explained
  - Questions:
    - "How can I write a new function in R?"
  - Objectives:
    - "Define a function that takes arguments."
    - "Return a value from a function."
    - "Check argument conditions with `stopifnot()` in functions."
    - "Test a function."
    - "Set default values for function arguments."
    - "Explain why we should divide programs into small, single-purpose
    functions."
  - Keypoints:
    - "Use `function` to define a new function in R."
    - "Use parameters to pass values into functions."
    - "Use `stopifnot()` to flexibly check function arguments in R."
    - "Load functions into programs using `source()`."
11. Writing Data
  - Questions:
    - "How can I save plots and data created in R?"
  - Objectives:
    - "To be able to write out plots and data from R."
  - Keypoints:
    - "Save plots from RStudio using the 'Export' button."
    - "Use `write.table` to save tabular data."

### Topics from r-novice-inflammation

Selected topics from
[r-novice-inflammation](http://swcarpentry.github.io/r-novice-inflammation/).

Github repo: https://github.com/swcarpentry/r-novice-inflammation

2. Creating Functions
  - Questions:
    - "How do I make a function?"
    - "How can I test my functions?"
    - "How should I document my code?"
  - Objectives:
    - "Define a function that takes arguments."
    - "Return a value from a function."
    - "Test a function."
    - "Set default values for function arguments."
    - "Explain why we should divide programs into small, single-purpose
    functions."
  - Keypoints:
    - "Define a function using `name <- function(...args...) {...body...}`."
    - "Call a function using `name(...values...)`."
    - "R looks for variables in the current stack frame before looking
      for them at the top level."
    - "Use `help(thing)` to view help for something."
    - "Put comments at the beginning of functions to provide help for
      that function."
    - "Annotate your code!"
    - "Specify default values for arguments when defining a function
      using `name = value` in the argument list."
    - "Arguments can be passed by matching based on name, by position,
      or by omitting them (in which case the default value is used)."
3. Analyzing Multiple Data Sets
  - Questions:
    - "How can I do the same thing to multiple data sets?"
    - "How do I write a `for` loop?"
  - Objectives:
    - "Explain what a `for` loop does."
    - "Correctly write `for` loops to repeat simple calculations."
    - "Trace changes to a loop variable as the loop runs."
    - "Trace changes to other variables as they are updated by a `for` loop."
    - "Use a function to get a list of filenames that match a simple pattern."
    - "Use a `for` loop to process multiple files."
  - Keypoints:
    - "Use `for (variable in collection)` to process the elements of a
      collection one at a time."
    - "The body of a `for` loop is surrounded by curly braces (`{}`)."
    - "Use `length(thing)` to determine the length of something that
      contains other values."
    - "Use `list.files(path = \"path\", pattern = \"pattern\",
      full.names = TRUE)` to create a list of files whose names match a
      pattern."
4. Making Choices
  - Questions:
    - "How do I make choices using `if` and `else` statements?"
    - "How do I compare values?"
    - "How do I save my plots to a PDF file?"
  - Objectives:
    - "Save plot(s) in a PDF file."
    - "Write conditional statements with `if` and `else`."
    - "Correctly evaluate expressions containing `&` ('and') and `|`
    ('or')."
  - Keypoints:
    - "Save a plot in a pdf file using `pdf(\"name.pdf\")` and stop
      writing to the pdf file with `dev.off()`."
    - "Use `if (condition)` to start a conditional statement, `else if
      (condition)` to provide additional tests, and `else` to provide a
      default."
      - "The bodies of conditional statements must be surrounded by
        curly braces `{ }`."
    - "Use `==` to test for equality."
    - "`X & Y` is only true if both X and Y are true."
    - "`X | Y` is true if either X or Y, or both, are true."
15. Loops in R
  - Questions:
    - "How can I do the same thing multiple times more efficiently in R?"
    - "What is vectorization?"
    - "Should I use a loop or an `apply` statement?"
  - Objectives:
    - "Compare loops and vectorized operations."
    - "Use the apply family of functions."
  - Keypoints:
    - "Where possible, use vectorized operations instead of `for` loops
      to make code faster and more concise."
    - "Use functions such as `apply` instead of `for` loops to operate
      on the values in a data structure."

## Other resources

- Material for the classes from "Computational Statistics I" at UFPR:
  http://leg.ufpr.br/~fernandomayer/aulas/ce083 (portuguese only)
- Some databases: http://leg.ufpr.br/~fernandomayer/data/
