data "archive_file" "lambda" {
  type        = "zip"
  source_file = "nodejs-function.js"
  output_path = "nodejs-function.zip"
}


resource "aws_lambda_function" "lambda_nodejs" {
  filename      = "${data.archive_file.lambda.output_path}"
  function_name = "lambda_function_nodejs"
  role          = aws_iam_role.lambda_role.arn
  handler       = "nodejs-function.handler"
  runtime = "nodejs18.x"

}