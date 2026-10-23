resource "aws_ecr_repository" "app_repo" {
  name         = "${lower(var.project_name)}-flask-app"
  force_delete = true

  image_scanning_configuration {
    scan_on_push = true
  }

  tags = {
    name = "${var.project_name}-flask-app"
  }
}

