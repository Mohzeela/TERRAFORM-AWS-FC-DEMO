terraform {
    backend "s3" {
        bucket = ""
        key    = ""
        region     = "us-east-1"
      # dynamodb_table = "value"  for state locking; preventing the state file from accidental updates by putting a lock on file so that the current update can be finished before processing the new change
    }
}