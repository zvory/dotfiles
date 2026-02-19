# Step 0 - Safety checks

First of all, let's make sure that we are doing the right thing. 
Go through the /review process. If there's anything incorrect, bail out.

Before we proceed, make sure we /deslop to remove any obvious LLM breadcrumbs / useless comments.


# Step 1 - Formatting / linter

If we are safe, and we are in the repository:

- `logs-backend`
	- Let's make sure that we run `bzl run @//rules/format:format_java`, `bzl run @//rules/format:format_bazel`

- `dd-source`
	- Let's run Gazelle and Snapshot on the parentmost folder that contains the changes:

		`bzl run //:gazelle -- domains/xpq && bzl run //:snapshot -- //domains/xpq/...`

- `web-ui`
	- Run `yarn lint`



If any Terraform (.tf) files were changed, use `terraform fmt {file-path-1} {file-path-2} ...` for all the changed files.


# Step 2 - Create a branch

Then, let's look at the current changes in the repository (either staged or unstaged).

We should create a branch named `zvorygin/{short-feature-name}` (git checkout -b ...) 


# Step 3 - Commit the changes

Then, let's make sure that we add/stage all the changes related to that feature.

And then commit the changes using bash, following the following structure:

```
Title: [affected component] title in lowercase with less than 80 characters

Description: description of up to 80 characters
```


Also, push the commit to remote / origin.


# Step 4 - Open pull request

Then, let's make sure that we open a pull request using bash (`gh pr create`). Do NOT use --draft.
The title should be a summary, just like the commit message, but limit to 60 characters. However, in the PR body, we should have the relevant sessions:

```
## Summary
 
(Include a summary for the changes, including the motivation)


## Changes
 
...

(Do not state a line by line description, just call out more detailed things that do not belong to the summary)


## Testing
...
(Either mention tests created, or instructions of how to test the specific change)


## Did this cause any problems?
Rollback/revert this commit and redeploy the service.

```

# Step 5 - Trigger review and integration

1. Run the command `review` while on the branch. This can be run from any directory.
2. Run the command `integrate -d` while on the branch. This can be run from any directory.

# Step 6 - Print the snippet to send to others, an informal message:


(provide in markdown so I can copy and paste on Slack)

Reference only:
```
:pr: [{title, skip special characters}]({link to the pr}/s)
```

Explanation message:
```
:wave: hi! I've filed a PR for {short description/reasoning for the change}. please take a look :pr: [{title, skip special characters}]({link to the pr}/s)
```





