# Bitrise Flutter Sample

[![Bitrise status](https://app.bitrise.io/app/e6acd6634ef188c0/status.svg?token=ySsYqtCVgbkhizkjhlZnbQ&branch=main)](https://app.bitrise.io/app/aa6d28fe1fba58a8) ⚠️ Don't forget to update this

This is a sample Flutter project that demonstrates a [Bitrise](https://bitrise.io) CI/CD setup. Build history is publicly available [here](https://app.bitrise.io/app/aa6d28fe1fba58a8#/builds).

## Project setup and config

### Bitrise Workflow

#### `primary` Workflow

<details>
<summary>Workflow Steps</summary>

![Primary workflow](docs/workflow-primary.png)
</details>

This workflow is automatically run by Bitrise on every commit on every branch. In addition to running `flutter analyze` to check for code quality, this workflow also runs `flutter test` to execute unit tests. Finally, `flutter drive` is run to execute integration tests. All test results are uploaded to the "Apps & Artifacts" tab on the build. 

#### `deploy` Workflow
<details>
<summary>Workflow steps</summary>

![Deploy workflow](docs/workflow-deploy.png)
</details>

This workflow creates both an APK for Android devices and an IPA for iOS devices. Both can be found on the Apps & Artifacts tab on the build page. While no actual signing is done in this sample, the appropriate steps are in place. The "Android Sign" and "Certificate and Profile Installer" steps have been added for Android and iOS respectively. 

## Advanced use cases

While this repo demonstrates a simple project config on Bitrise, there are many advanced features that might be relevant for your project:

- [Fan-Out Builds](https://blog.bitrise.io/fan-out-parallel-builds-and-test-reports-on-bitrise) -Could be used to separate building iOS, Android, and testing
- [Collecting and exporting code signing files with codesigndoc](https://devcenter.bitrise.io/code-signing/ios-code-signing/collecting-files-with-codesigndoc/#collecting-the-files-with-codesigndoc)
- [Managing iOS code signing files - automatic provisioning](https://devcenter.bitrise.io/code-signing/ios-code-signing/ios-auto-provisioning/)