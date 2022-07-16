/*==== The ALB ======*/

resource "aws_iam_user" "users" {
  count = "${length(var.username)}"
  name = "${element(var.username,count.index )}"
}