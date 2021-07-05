output "Message" {
  value = "Hello world"
}


output "Password" {
  value = "W4I3sIx6njGqcF@WVRq3Ol4LpEvzaGQWhrTWX@rFM0LeBsdABQ"
}

output "AZ" {
  value = aws_instance.web[0].availability_zone
}

output "SomeOutput" {
  value = <<EOF

        Machine1 has the following IP address   ${aws_instance.web[0].public_ip}
        Machine1 has the following ID           ${aws_instance.web[0].id}
        Machine1 is in                          ${aws_instance.web[0].availability_zone}
        Machine1 uses following key pair        ${aws_key_pair.class2.key_name}

        Machine2 has the following IP address   ${aws_instance.web[1].public_ip}
        Machine2 has the following ID           ${aws_instance.web[1].id}
        Machine2 is in                          ${aws_instance.web[0].availability_zone}
        Machine2 uses following key pair        ${aws_key_pair.class2.key_name}

        Machine3 has the following IP address   ${aws_instance.web[2].public_ip}
        Machine3 has the following ID           ${aws_instance.web[2].id}
        Machine3 is in                          ${aws_instance.web[0].availability_zone}
        Machine3 uses following key pair        ${aws_key_pair.class2.key_name}

    EOF
}