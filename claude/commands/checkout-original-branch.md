# Checkout Original Branch

After a PR has been merged, checkout the original/base branch.

## Steps

1. Use the bash command `trunk` to etermine the original/base branch:

2. Fetch the original branch INTO the local branch using refspec syntax:
   ```
   git fetch origin <original-branch>:<original-branch>
   ```

3. Checkout the original branch:
   ```
   git checkout <original-branch>
   ```

## Notes

- Prepend `GIT_EDITOR=true` to git commands if needed to avoid getting blocked
- If there are any uncommitted changes, bail out and explain the situation

