resource "aws_cloudwatch_metric_alarm" "TargetTracking-APP-ORUAM-AlarmHigh" {
    alarm_name          = "TargetTracking-APP-ORUAM-AlarmHigh"
    comparison_operator = "GreaterThanThreshold"
    evaluation_periods  = "3"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "10.0"
    alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:824992859843:scalingPolicy:b258bf66-0ff3-403d-8931-5c8271fb71f1:autoScalingGroupName/APP-ORUAM:policyName/AQUI."
    alarm_actions       = ["arn:aws:autoscaling:us-east-1:824992859843:scalingPolicy:b258bf66-0ff3-403d-8931-5c8271fb71f1:autoScalingGroupName/APP-ORUAM:policyName/AQUI"]
    dimensions {
        AutoScalingGroupName = "APP-ORUAM"
    }
}

resource "aws_cloudwatch_metric_alarm" "TargetTracking-APP-ORUAM-AlarmLow" {
    alarm_name          = "TargetTracking-APP-ORUAM-AlarmLow"
    comparison_operator = "LessThanThreshold"
    evaluation_periods  = "15"
    metric_name         = "CPUUtilization"
    namespace           = "AWS/EC2"
    period              = "60"
    statistic           = "Average"
    threshold           = "9.0"
    alarm_description   = "DO NOT EDIT OR DELETE. For TargetTrackingScaling policy arn:aws:autoscaling:us-east-1:824992859843:scalingPolicy:b258bf66-0ff3-403d-8931-5c8271fb71f1:autoScalingGroupName/APP-ORUAM:policyName/AQUI."
    alarm_actions       = ["arn:aws:autoscaling:us-east-1:824992859843:scalingPolicy:b258bf66-0ff3-403d-8931-5c8271fb71f1:autoScalingGroupName/APP-ORUAM:policyName/AQUI"]
    dimensions {
        AutoScalingGroupName = "APP-ORUAM"
    }
}

