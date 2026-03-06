# demo-r-1
A demonstration of the basics of Jellyfish's lineage-preserving approach to data processing in R.

## Introduction

This repository serves as a demonstration of how to produce a monitoring report for an impact project, according to the Jellyfish data processing approach. The primary drivers of the approach is transparency and reproducibility - at Jellyfish we firmly believe that any changes made to some data, however small those changes may seem, and any calculations performed on the data should be fully documented and reproducible.

## The data

The data used for this demonstration was contributed to the public domain by the [National Biodiversity Data Centre (NBDC), Ireland](https://biodiversityireland.ie/). The dataset, as provided by the NBDC on their website, unfortunately does not contain the rawest version of the data - the data has been minimally cleaned by the NBDC before being made publicly available. For the purposes of this demonstration, however, we shall treat the publicly available version of the dataset from the NBDC's website as if it contained the original, raw, completely unmodified data.

In many "real-life" cases, if not most, the rawest version of a dataset lives on a proprietary platform or a private server where it is only accessible to holders of specific credentials. As such, the first phase of data processing typically involves dealing with those credentials, and the Jellyfish file that performs the steps of that first phase can therefore only be executed by the holders of those credentials. In the interest of making this demonstration as informative as possible, we chose to make use of a public dataset (at the cost of not using a perfect "version 0"), so that anyone will be able to run all the demonstration files independently.

## Technical requirements

To run all the files of this demonstration yourself, you will need a Pinata JWT. If you do not have a Pinata account, you can open a free one easily at https://pinata.cloud/. Once you have your Pinata JWT you should store it as an environment variable named "PINATA_JWT".

You will naturally also need R, and the R packages listed at the end of each report chapter.

## The how-to

The top-level file in the directory is the 0-report-main.Rmd. This RMD, when rendered, produces the actual [monitoring report](https://ipfs.io/ipfs/bafybeie2oqp5h5jtzgvcblw7wmbhufal23vm3tqggrdy2yoljqpwqpw4me) to be given to a verifier or an auditor. The other RMDs in this repository correspond to chapters and sections of the report, and will be rendered automatically when the top-level RMD is rendered. 

You can render an RMD to an HTML, PDF or .docx file; we strongly recommend making use of HTML files or PDFs. 
