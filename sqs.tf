resource "aws_sqs_queue" "payment_pending" {
  name = "PaymentPending"

  tags = {
    Name = "PaymentPending"
  }
}

resource "aws_sqs_queue" "received" {
  name = "Received"

  tags = {
    Name = "Received"
  }
}

resource "aws_sqs_queue" "preparation" {
  name = "Preparation"

  tags = {
    Name = "Preparation"
  }
}

resource "aws_sqs_queue" "ready" {
  name = "Ready"

  tags = {
    Name = "Ready"
  }
}

resource "aws_sqs_queue" "finished" {
  name = "Finished"

  tags = {
    Name = "Finished"
  }
}

resource "aws_sqs_queue" "canceled" {
  name = "Canceled"

  tags = {
    Name = "Canceled"
  }
}

output "queue_urls" {
  value = {
    PaymentPending = aws_sqs_queue.payment_pending.id
    Received       = aws_sqs_queue.received.id
    Preparation    = aws_sqs_queue.preparation.id
    Ready          = aws_sqs_queue.ready.id
    Finished       = aws_sqs_queue.finished.id
    Canceled       = aws_sqs_queue.canceled.id
  }
}
