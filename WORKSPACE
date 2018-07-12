workspace(name = "baffold")

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/Globegitter/rules_docker.git",
    tag = "v0.4.0",
)

git_repository(
    name = "io_bazel_rules_go",
    remote = "https://github.com/bazelbuild/rules_go.git",
    tag = "0.13.0",
)

git_repository(
    name = "bazel_gazelle",
    remote = "https://github.com/bazelbuild/bazel-gazelle",
    tag = "0.13.0",
)

# load go rules
load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains")
go_rules_dependencies()
go_register_toolchains()

# load gazelle
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
gazelle_dependencies()

# load js rules

git_repository(
    name = "build_bazel_rules_nodejs",
    remote = "https://github.com/bazelbuild/rules_nodejs.git",
    tag = "0.10.0",
)

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories", "npm_install")

node_repositories(package_json = ["//:package.json"])

npm_install(
    name = "npm_deps",
    package_json = "//:package.json",
)

# Loads Docker rules for nodejs --> oops not working
# add comments and build nodejs with base container rules

#load(
#    "@io_bazel_rules_docker//nodejs:image.bzl",
#    _nodejs_image_repos = "repositories",
#)
#
#_nodejs_image_repos()

# Loads Docker rules for go

load(
    "@io_bazel_rules_docker//go:image.bzl",
    _go_image_repos = "repositories",
)

_go_image_repos()

# Loads Docker rules for java
load(
    "@io_bazel_rules_docker//java:image.bzl",
    _java_image_repos = "repositories",
)

_java_image_repos()

# Load docker rules for containers

load(
    "@io_bazel_rules_docker//container:container.bzl",
    "container_pull",
    container_repositories = "repositories",
)

container_repositories()

container_pull(
  name = "node_base",
  registry = "index.docker.io",
  repository = "library/node",
  tag = "9",
)
