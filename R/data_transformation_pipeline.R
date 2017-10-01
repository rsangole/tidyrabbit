## Setting up pipeline

#' Set up a nested data frame with transformations
#'
#' In many machinelearning projects you want to start with original
#' values, but also transformations of those values. This function
#' combines all transformations into 1 nested dataframe that contains
#' the transformed data frames
#'
#' @param transformations a named list of transformations
#' @param y the values you want to predict, can be empty
#' @param .suffix  a vector of the same length as the transformation list that contains the suffix you want to apply to your variables
#' @param .prefix a vector of the same length as the transformation list that contains the prefix you want to apply to your variables
#'
#' @return a nested data frame with trainingsets, name and y values (if supplied)
#' @export
#'
#' @examples
#' \notrun{
#' library(mlbench)
#' data("BostonHousing")
#' prepTrain <- preProcess(x = BostonHousing[,preds.original], method = c('BoxCox'))
#' data_transformation(list(
#'       original = BostonHousing[,1:13],
#'       boxcoxed = predict(prepTrain,newdata = BostonHousing[,preds.original]),
#'       squared  = (BostonHousing[,c(1:3,5:13)])^2
#'        ),
#'         .suffix = c(NA, "boxed","squared"))
#' }
create_starterframe <- function(transformations = list(),
                                y =NULL,
                                .suffix = NULL,
                                .prefix = NULL){
    # check if suffix or prefix has same lenght as transformations?
    # make sure all three are dataframes?
    result <- enframe(transformations, name = "transformation.name",
                      value = "train.x")
    if(!is.null(y)){
        result$y <- rep(as.data.frame(y),nrow(result))
    }

    result
}
