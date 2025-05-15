output "job_name" {
  description = "Name of the Glue job"
  value       = aws_glue_job.etl_job.name
}
