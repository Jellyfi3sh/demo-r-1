fnm <- "0-report-main"

# Upload the RMD to IPFS.
{
  res <- httr::POST(
    url = "https://uploads.pinata.cloud/v3/files", 
    config = httr::add_headers(
      .headers = c("Authorization" = paste("Bearer", Sys.getenv("PINATA_JWT")))), 
    body = list(
      network = "public",
      file = httr::upload_file(path = paste0(fnm, ".Rmd"))), 
    encode = "multipart")
  
  if (res$status_code >= 300) {
    stop("res$status_code = ", res$status_code)
  }
  
  res <- httr::content(x = res, as = "parsed")
  message("RMD CID: ", res$data$cid) # bafkreiatfbihqg6a3irw6khvus563it2nsjteyqlrmomb6t5nngz4xwqvm
}

# Upload the HTML to IPFS.
{
  res <- httr::POST(
    url = "https://uploads.pinata.cloud/v3/files", 
    config = httr::add_headers(
      .headers = c("Authorization" = paste("Bearer", Sys.getenv("PINATA_JWT")))), 
    body = list(
      network = "public",
      file = httr::upload_file(path = paste0(fnm, ".html"))), 
    encode = "multipart")
  
  if (res$status_code >= 300) {
    stop("res$status_code = ", res$status_code)
  }
  
  res <- httr::content(x = res, as = "parsed")
  message("HTML CID: ", res$data$cid) # bafybeie2oqp5h5jtzgvcblw7wmbhufal23vm3tqggrdy2yoljqpwqpw4me
}

