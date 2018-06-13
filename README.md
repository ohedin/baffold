# baffold

Example of use of bazel and skaffold.
Builds and run a go + java images.

Also used to show a problem with skaffold with non root image targets.

## How to run ?

 * Install [bazel](https://bazel.build/)
 * Install [skaffold](https://github.com/GoogleContainerTools/skaffold)

Then run :
 * skaffold dev -f skaffold-root.yaml

## Use of sub targets

If you run :
 * skaffold dev -f skaffold-sub.yaml

Then it fails
