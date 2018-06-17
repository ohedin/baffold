# baffold

Example of use of bazel and skaffold.
Builds and run a go + java images.

Also used to show a problem with skaffold with non root image targets.

## How to run ?

 * Install [bazel](https://bazel.build/)
 * Install [skaffold](https://github.com/GoogleContainerTools/skaffold)

### Standard mode

Run :
 * skaffold dev -f skaffold-root.yaml

### Helm mode

Run :
 * skaffold dev -f skaffold-helm.yaml

## Use of sub targets

If you run :
 * skaffold dev -f skaffold-sub.yaml

Then it fails
