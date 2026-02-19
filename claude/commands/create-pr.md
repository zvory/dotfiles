# Open a PR

- Never open draft PR unless user states otherwise.
- Check that I'm in a branch other than `main`, `master` or `prod`. If not, bail and explain.
- Check the diff between my branch and the main branch of the repo (only committed changes, ignore any uncommitted changes)
- Write up a quick PR description in the following format
- After the pr is created, run the `review` command
- After the PR is created, run the command `integrate -d`

[<feature_area>]: <title in lowercase> (60 characters or less)

Use the nameof the current directory as the feature_area.

```
## Summary
 
(Include a summary for the changes, including the motivation). 


## Changes
 
...

(Do not state a line by line description, just call out more detailed things that do not belong to the summary)
```
- Always paste the link to the PR in your response so I can click it easily
- Prepend GIT_EDITOR=true to all git commands you run, so you can avoid getting blocked as you execute commands