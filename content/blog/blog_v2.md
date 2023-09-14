---

title: "Who needs a CMS anyways? (and also redeploying to docker)"

description: ""

date: 2023-09-08

draft: true

---

# What's up?

We're adding comments to this blog and setting it up to deploy via docker.

## Why?

Because I wanted to add comments. The way I'm planning on doing that will mean that this blog will be more complex. Specifically in addition to generating static files and having nginx serve them I'll need to have a separate service. That separate service (and the database it depends on) will be contained within a docker container for convenience. But with parts of the site being deployed via docker I might as well deploy all of them via docker.

### Sounds like you've written a CMS so why is the static file hosting not a part of that?

Because I'm not writing a CMS, I'm just writing the backend for comments and sticking some htmx stuff into the hugo template for a blog for the frontend.
 
## [Writing the Go backend]

### Why Go?

### Annoyances
- Doesn't handle html multipart forms correctly(or the browser is wrong but I doubt that)
- Magic redirect when there's no trailing /

### Anyways

- yeeted oauth midway through

## [Writing the Hugo templating frontend]

## [Setting up the docker Containers]

## [Changing github actions and deployment pipeline to rebuild the docker container]

## [Conclusion]
