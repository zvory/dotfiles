Run all the tests in the project $ARGUMENTS

- Read the instructions in CLAUDE.md for instructions of how to build it.

- If missing, here are some examples:

* ddsqlizer: bzl test '//domains/xpq/apps/ddsqlizer:*'
* connector-server: bzl test '//domains/xpq/apps/connector-server:*'
* trino / trino-plugins: bzl test //domains/apm/libs/trino-plugins:trino-plugins-tests //domains/apm/libs/trino-tester:trino-tester-tests
* shadowing-platform: `go test ./...`
* substrait-executor: `go test ./...`

