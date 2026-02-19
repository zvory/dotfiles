

Git
---

- Branches must start with `zvorygin/`

Tools
---

- Use ripgrep (rg) instead of grep for finding content quickly
- Use fd instead of find for finding files quickly
- do not ever edit bazel files, use bzl run //:gazelle
- prefer to run tests using `go test ./...` over bazel
- never look at go.sum or go.mod, it's too big and will kill your context window


-----------

When asked to review a PR or anything on GitHub, use `gh cli`, for example:

```
gh pr view https://github.com/DataDog/logs-backend/pull/103509 --json id,state,url,createdAt,updatedAt,comments,files,changedFiles,body
```

-----------


To look into content under JIRA cards or Confluence links, for example, https://datadoghq.atlassian.net/wiki/spaces/XPQ/pages/4386259370/Connector+Server, use the atlassian-mcp tools.


- When asked about a particular incident, we should use the script `wtf-incident {number}` to get details