Tidyrabbit
==========

The caret package by Max Kuhn is an excellent unifier for a plentitude of machine learning packages. The tidyverse is an excellent way to select, filter and splice your data. Because the data frame is go to structure to keep things organized, we 'd like to keep all the artefacts together.

In reality we often have to leave the tidyverse to work with the caret package.

But no more.

[![license](https://img.shields.io/github/license/mashape/apistatus.svg)](http://choosealicense.com/licenses/mit/) [![Project Status: Concept – Minimal or no implementation has been done yet, or the repository is only intended to be a limited example, demo, or proof-of-concept.](http://www.repostatus.org/badges/latest/concept.svg)](http://www.repostatus.org/#concept)

Short description of the package
================================

This project solves the problem of organizing many models in [Caret](https://topepo.github.io/caret/index.html) by using data frames as the main tool to keep models and artefacts together.

features: - thin layer around the caret package - keeps model specific pre processing steps, model, model parameters and results together

Example usage
=============

In a machine learning project you often try out several models with a variety of parameters per model. Because data science is a iterative process you have to rerun models, refit their work and go back and forth between steps.

After a while you start to loose track of all the artefacts that you create, the tuning parameters, models and preprocessing steps.

in theory, it should be relatively easy to answer the following questions after your work:

-   what is the best predictive model?
-   what tuning parameters were used for that model?
-   what other models used equivalent tuning parameters?

But in practice the answers to those questions are locked in several model artefacts.

Hadley Wickham, in his many models presentation, talks about utilizing the list column in a data frame. The list column doesn't care about what is in the column as long as it is part of a list.

In any datascience project, you might want to investigate the effect of various combinations of:

-   Variable transformations
-   Variable selection
-   Grouped vs ungrouped categorical variables
-   Models of different types
-   Different hyperparameter tuning methods

The challenge with this approach is that the data and the models remain separated, there’s a lot of repeat code for object management, manipulation and plotting, and in order to compare all the models together, we have to somehow stitch the results together.

-   some actions are performed on the data set while others are specific to a model. keep the model things together. keep the data together.

``` r
library(tidyrabbit)
something()
```

Installation instructions
=========================

For now you will have to install using `devtools::install_github("rsangole/tidyrabbit")`

licence
=======

This package is released under the MIT licence. This means you can do what you want with it, although we would like a mention if you use it, it is not a prerequisit for use. You are free to modify and use it in any way you like.

The caret, and tidyverse packages are released under the GPL3 licence.
