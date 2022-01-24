---

title: "Pogo so far"

description: "A summary of the work I've done on pogo so far and where I intend to go with it"

date: 2022-01-01

draft: true

---
t
So in [My last blog](https://pagwin.xyz/blog/gh_actions/), I briefly mentioned a project I'm working on called [Pogo](https://github.com/Pagwin-Fedora/Pogo) and then said absolutely nothing about what it actually is or what I was going to do with it. I did say I wanted to write a blog article on it though and this is that blog article.

## What is Pogo?

[Pogo](https://github.com/Pagwin-Fedora/Pogo) is a todo list I'm working on that I wanted to use as an excuse to learn how to use [Go](https://go.dev/) [Rust](https://www.rust-lang.org/)'s FFI, how to store and retrieve data with [SQL](https://en.wikipedia.org/wiki/SQL) queries/statements. how to make UI in [Dart](https://dart.dev/)/[Flutter](https://flutter.dev/) and how to write [Sphaghetti](https://www.goya.com/media/4173/creole-spaghetti.jpg?quality=80) in C++. I put it this all toegether with copious usage of FFI to connect the Rust, Go and [C++](https://en.wikipedia.org/wiki/C%2B%2B) for the backend and the dart/flutter for the frontend.

## Problems
But recently I've decided that all of that is dumb and unnecessary. Mostly because my architecture slowly morphed into passing around strings and I realized that my setup is overly complicated for that
