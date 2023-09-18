#### Load Data and packages ####
library(caret); library(tidyverse)
load("Report/Data/Sequential Data v1.01.RData")

#### Train the models ####
# Set validation system
trControl <- trainControl(method  = "repeatedcv",
                          verboseIter = TRUE,
                          number  = 10,
                          repeats = 100,
                          savePredictions = "final",
                          classProbs = TRUE)

# Remove variables showing perfct collinearity with other variables
Data <- Sequential.Data %>% select(-c(Mean, Ra))

# Set formula
frmla <- as.formula(
  paste("Flake.Time", paste(colnames(Data[,2:14]), collapse = " + "), sep = " ~ "))

#### Start model training ####
# LDA model
set.seed(123)
LDA.model <- train(frmla, 
                   Data,
                   method = "lda",
                   preProc = c("center", "scale"),
                   trControl = trControl)

# Logistic regression model
set.seed(123)
logmod <- train(
  frmla, 
  Data, 
  method = "glmnet",                 
  family = 'multinom',
  trControl = trControl)

# KNN model
set.seed(123)
KNN.model <- train(
  frmla,
  Data2,
  method = "knn",
  preProc = c("center", "scale"), 
  trControl = trControl,
  tuneGrid = expand.grid(k = seq(1, 15, 1)))

# C5.0 Tree 
set.seed(123)
C50_Mod <- train(frmla, 
                 Data,
                 method = "C5.0",
                 trControl = trControl,
                 preProc = c("center", "scale"), 
                 metric = "Accuracy",
                 importance = 'impurity')

# Random Forest
set.seed(123)
RF.model <- train(frmla, 
                  Data,
                  method = "ranger",
                  trControl = trControl,
                  preProc = c("center", "scale"), 
                  metric = "Accuracy",
                  importance = 'impurity')

# GBM model 
set.seed(123)
GBM.model <- train(frmla, 
                   Data,
                   method = "gbm",
                   preProc = c("center", "scale"), 
                   trControl = trControl,
                   metric = "Accuracy")

# SVMs
set.seed(123)
SVML.model <- train(frmla, 
                    Data,
                    method = "svmLinear",
                    trControl = trControl,
                    preProc =  c('center', 'scale'),
                    metric = "Accuracy",
                    importance = 'impurity')

set.seed(123)
SVMR.model <- train(frmla, 
                    Data,
                    method = "svmRadial",
                    preProc =  c('center', 'scale'),
                    trControl = trControl,
                    metric = "Accuracy",
                    importance = 'impurity')

set.seed(123)
SVMP.model <- train(frmla, 
                    Data,
                    method = "svmPoly",
                    preProc =  c('center', 'scale'),
                    trControl = trControl,
                    metric = "Accuracy",
                    importance = 'impurity')

# Naïve Bayes
set.seed(123)
NB.model <- train(frmla, 
                  Data,
                  preProc = c("center", "scale"), 
                  method = "nb",
                  trControl = trControl,
                  metric = "Accuracy")