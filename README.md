# hugo-bio

My resume site builder using [Hugo](https://gohugo.io)

## Update the contents and check them by running Hugo server

```
$ hugo server
```

## Build and deploy the publishment

Following command builds the contents and deploys the publishment to [https://github.com/momotaro98/momotaro98.github.io](https://github.com/momotaro98/momotaro98.github.io).

```
$ cd hugo-bio
$ ./deploy.sh
```

## How to modify themes as a submodule

Update and push to the master of [this forked repository](https://github.com/momotaro98/hugo-resume).

After that, update the commit of the theme repository.

```
$ cd hugo-bio
$ cd themes/resume
$ git pull origin master
$ cd ../..
$ git add .
$ git commit
```
