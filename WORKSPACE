workspace(name = "baffold")

#git_repository(
#    name = "io_bazel_rules_docker",
#    remote = "https://github.com/bazelbuild/rules_docker.git",
#    tag = "v0.4.0",
#)

git_repository(
    name = "io_bazel_rules_docker",
    remote = "https://github.com/Globegitter/rules_docker.git",
    #tag = "v0.4.0",
    commit = "044cea35912e96b0f6acea3db6b5c421b086538e",
)

http_archive(
    name = "io_bazel_rules_go",
    sha256 = "feba3278c13cde8d67e341a837f69a029f698d7a27ddbb2a202be7a10b22142a",
    url = "https://github.com/bazelbuild/rules_go/releases/download/0.10.3/rules_go-0.10.3.tar.gz",
)

http_archive(
    name = "bazel_gazelle",
    url = "https://github.com/bazelbuild/bazel-gazelle/releases/download/0.11.0/bazel-gazelle-0.11.0.tar.gz",
    sha256 = "92a3c59734dad2ef85dc731dbcb2bc23c4568cded79d4b87ebccd787eb89e8d0",
)

# load go rules
load("@io_bazel_rules_go//go:def.bzl", "go_rules_dependencies", "go_register_toolchains", "go_repository")
go_rules_dependencies()
go_register_toolchains()

# load gazelle
load("@bazel_gazelle//:deps.bzl", "gazelle_dependencies")
gazelle_dependencies()

# load js rules
#git_repository(
#    name = "build_bazel_rules_nodejs",
#    remote = "https://github.com/bazelbuild/rules_nodejs.git",
#    tag = "0.10.0", # check for the latest tag when you install
#)

git_repository(
    name = "build_bazel_rules_nodejs",
    remote = "https://github.com/bazelbuild/rules_nodejs.git",
    tag = "0.10.0", # check for the latest tag when you install
)

load("@build_bazel_rules_nodejs//:defs.bzl", "node_repositories", "npm_install")

node_repositories(package_json = ["//:package.json"])

#load("@build_bazel_rules_nodejs//:defs.bzl", "npm_install")

#npm_install(
#    name = "npm_deps",
#    package_json = "//:package.json",
#    package_lock_json = "//:package-lock.json",
#)

npm_install(
    name = "npm_deps",
    package_json = "//:package.json",
)

load(
    "@io_bazel_rules_docker//nodejs:image.bzl",
    _nodejs_image_repos = "repositories",
)

_nodejs_image_repos()


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


