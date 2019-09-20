# Project Development

For general information about contributing changes, see the
[Contributor Guidelines](https://github.com/titan-data/.github/blob/master/CONTRIBUTING.md).

## How it Works

This repository is currently under initial construction, so at the moment
there is no automated build or release process. Simply add the datasets you'd
like to see, with three scripts:

    * `build.sh` - Launch your container under titan and populate it with data
    * `publish.sh` - Commit and push your data. The S3_BUCKET environment
      variable will be set when this is invoked.
    * `destroy.sh` - Tear down any resources created by the demo (namely the
      repository).
