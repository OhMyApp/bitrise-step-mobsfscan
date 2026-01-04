# MobSFScan

mobsfscan is a static analysis tool (SAST) that can find insecure code patterns in your Android and iOS source code. Supports Java, Kotlin, Android XML, Swift and Objective C Code.

mobsfscan uses MobSF static analysis rules and is powered by semgrep and libsast pattern matcher.

Configuration information and troubleshooting information are available on the mobsfscan repository at https://github.com/MobSF/mobsfscan

mobsfscan is compliant with LGPL-3.0, meaning you can use this tool in your project, even if your project is proprietary or commercial.


## Usage

To use this step in your workflow you just have to manually add this step in your `bitrise.yml`:

```
 - git::https://github.com/OhMyApp/bitrise-step-mobsfscan.git@main:
     title: MobSFScan
     inputs:
     - project_path: "."
```

You can edit other inputs from the side panel in the UI editor.