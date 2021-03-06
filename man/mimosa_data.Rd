% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/mimosa_data.R
\name{mimosa_data}
\alias{mimosa_data}
\title{MIMoSA Training Data Frame}
\usage{
mimosa_data(
  brain_mask,
  FLAIR,
  T1,
  T2 = NULL,
  PD = NULL,
  tissue = FALSE,
  gold_standard = NULL,
  normalize = "no",
  cand_mask = NULL,
  slices = NULL,
  orientation = c("axial", "coronal", "sagittal"),
  cores = 1,
  verbose = TRUE
)
}
\arguments{
\item{brain_mask}{brain or tissue mask of class nifti}

\item{FLAIR}{volume of class nifti}

\item{T1}{volume of class nifti}

\item{T2}{volume of class nifti. If not available use NULL.}

\item{PD}{volume of class nifti. If not available use NULL.}

\item{tissue}{is a logical value that determines whether the brain mask is a full brain mask or tissue mask (excludes CSF), should be FALSE unless you provide the tissue mask as the brain_mask object}

\item{gold_standard}{gold standard lesion segmentation mask of class nifti}

\item{normalize}{is 'no' by default and will not perform any normalization on data. To normalize data specify 'Z' for z-score normalization or 'WS' for WhiteStripe normalization}

\item{cand_mask}{is NULL to use candidate mask procedure proposed with method or a nifti object to be used as the candidate mask}

\item{slices}{vector of desired slices to train on, if NULL then train over the entire brain mask}

\item{orientation}{string value telling which orientation the training slices are specified in, can take the values of "axial", "sagittal", or "coronal"}

\item{cores}{1 numeric indicating the number of cores to be used (no more than 4 is useful for this software implementation)}

\item{verbose}{logical indicating printing diagnostic output}
}
\value{
List of objects
}
\description{
This function creates the training vectors from a single MRI study that has FLAIR, T1, T2, and PD volumes as well as binary masks of lesions. The function can create a tissue mask for the data (or the user can supply a brain mask), the candidate voxels for lesion segmentation, smoothed volumes, and coupling maps. The user may supply already normalized data if they wish to use an alternative normalization method.
}
