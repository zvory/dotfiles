# Code Review Checklist

## Overview
Comprehensive checklist for conducting thorough code reviews to ensure quality, security, and maintainability.
Useful before submitting code for review.   
Check the diff against main and carefully evaluate each of the items below.

If it is a simple fix or adjustment, go ahead and update it.
If it needs user input, provide a summary with the changes that are necessary.
Never create markdown files with this review.


## Review Categories
Create an agent for each task, and have it review and make changes in the listed order:

### Functionality
- [ ] Code does what it's supposed to do
- [ ] Edge cases are handled
- [ ] Error handling is appropriate
- [ ] No obvious bugs or logic errors

### Clarity
- [ ] Remove all AI generated slop introduced in this branch like extra comments that a human wouldn't add or is inconsistent with the rest of the file
- [ ] Overcooked and overcomplicated structures

### Code Quality
- [ ] Code is written idiomatically to a high bar
- [ ] Code is readable and well-structured
- [ ] Code is concise and clear
- [ ] Functions are small and focused
- [ ] Variable names are descriptive
- [ ] No code duplication
- [ ] Follows project conventions
- [ ] Comments should agree with the code
