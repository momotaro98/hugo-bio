# hugo-bio

My resume site builder using [Hugo](https://gohugo.io)

## Update the contents then check them by running Hugo server in Docker container

```
$ docker-compose up
```

## Deployment

`git push origin master` build and deploys the artifact to [https://github.com/momotaro98/momotaro98.github.io](https://github.com/momotaro98/momotaro98.github.io) with GitHub Action.

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
