Wait about 5 seconds as checks might take some time to hit...

```
sleep 5
```

Let's make sure that we wait for GitHub checks:

```
gh pr checks --watch
```


If all checks have passed, go ahead and merge it:


```
gh pr merge --merge
```




NOTE: It is ok to use --admin if the repository is one of these: gensim, experimental