# MobSFScan

mobsfscan is a static analysis tool (SAST) that can find insecure code patterns in your Android and iOS source code. Supports Java, Kotlin, Android XML, Swift and Objective C Code.

mobsfscan uses MobSF static analysis rules and is powered by semgrep and libsast pattern matcher.

Configuration information and troubleshooting information are available on the mobsfscan repository at https://github.com/MobSF/mobsfscan

mobsfscan is compliant with LGPL-3.0, meaning you can use this tool in your project, even if your project is proprietary or commercial.


## Usage

If you want to use this step in your project's `bitrise.yml`:

Reference it in your `bitrise.yml` with the `git::https://github.com/OhMyApp/bitrise-step-mobsfscan.git@main` step reference style:

```
- git::https://github.com/OhMyApp/bitrise-step-mobsfscan.git@main:
   title: MobSFScan
   inputs:
   - project_path: "."
```

Check `step.yml` for other optional inputs.