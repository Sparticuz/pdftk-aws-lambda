# PDFtk

[pdftk-java](https://gitlab.com/pdftk-java/pdftk) is a command-line tool for working with PDFs.

This project shows how to compile and deploy the `pdftk` binary as an AWS Lambda Layer, as well as a built version for the binaries ready to use.

# AWS Lambda Layer

[Lambda Layers](https://docs.aws.amazon.com/lambda/latest/dg/configuration-layers.html) is a new convenient way to manage common dependencies between different Lambda Functions.

The following command will create a well-structured layer of this package:

```cmd
git clone https://github.com/Sparticuz/pdftk-aws-lambda.git
cd pdftk-aws-lambda
make
```

The resulting ZIP file `pdftk-aws-lambda.zip` can be uploaded to the AWS Lambda Layers console.

## Build binary (TODO)

- https://gitlab.com/pdftk-java/pdftk

### Usage

The Layer is independent from the Lambda Function Runtime, so it should be available for any of them.
