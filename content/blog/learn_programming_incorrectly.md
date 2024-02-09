---

title: "How to not learn programming"

description: "Inspired by an unfortunate soul who tried to use chatgpt for help in an operating systems lab"

date: "2024-02-06"

draft: true

---

# Why am I writing this?

Well today (the first day of writing this post) after I got done with my operating systems lab on my way out I noticed someone trying to use ChatGPT to help them with the lab. The lab was pretty simple (relatively speaking) all you had to do was modify a version xv6 to print a message while in kernel mode and to have an additional userland program that did the same thing that echo did. However while the lab was simple the nature of why it was simple made it so using ChatGPT to help was almost certainly harder than just doing the lab. And that is why I want to write this. While other people more popular who are better at writing and understand this phenomenon better have definitely written about this before and it's somewhat "obvious"<sup><a href="#1">1</a></sup> when you think about it I still want to write about it for not entirely rational reasons.

# Why ChatGPT is unreliable

Before I go into why using ChatGPT teaches such a small amount I first want to address an idea. That idea being that you can get by using ChatGPT and don't need to learn programming properly. This is false, while ChatGPT can be used for common things it will fall apart the instant you try to do anything that's seriously novel. That example of trying to make "easy" changes in xv6 being one example but for one that's a bit less intimidating let's look at how things went when I tried to use it for something once. Specifically I wanted to make a project in a relatively unpopular lang called [Erlang](https://www.erlang.org/) not for any particular reason just to learn. So the first thing I did was read a book<sup><a href="#2">2</a></sup> (😱) from my university library. Unfortunately the build system the book explains or maybe the explanation (but probably the build system) sucks. So I decided fuck it I'll check with ChatGPT. Long story short it did not give a working answer for how to setup an Erlang project but it did alert me to the existance of [Rebar3](https://rebar3.org/docs/getting-started/) which had a command to set everything up and made building an Erlang project not terrible (yipee). Right what was I talking about right ChatGPT failed here because it isn't common place for people to put up Erlang project files online (relatively speaking) so it made stuff up. This combination of lacking information sometime + making things up makes ChatGPT unreliable unless you're doing something that's been a million times before. Will that often be the case yes but sometimes it isn't so relying on ChatGPT is a bad idea.

# How to not learn programming (and end up in over your head)

Simple just outsource the actual programming but still succeed. There are a few ways to do this with varying degrees of effectiveness (effectiveness being measured inversely to how much you learn). 

First you can try to get other people to do things for you rather than struggling and figuring out how to do something for yourself. This technique is about as old as the internet if not older unfortunately people who are helpful often want to see you learn something and will if possible try to do things to make you learn rather than just vomitting up a solution [assuming they don't just tell you to fuck off](http://www.catb.org/%7Eesr/faqs/smart-questions.html). Serious note: click the link at the end of the previous sentence it is more strict than is generally expected or required nowadays but

Second you can search for an answer to your problem and blindly copy and paste a result without getting any more understanding on what the code you copied does though maybe changing some names to match your domain. This technique is also old (in internet time) maybe as old or older than Google I'm too young to know. What I do know is that this technique of not learning has the upside of not having someone who's trying to make you learn instead you just have the solution and you copy it albeit at the cost of some difficulty in finding it. Serious note: for the people who copy sometimes but do know what they're doing most of the time relax: 1) sometimes code is repetive and annoying so being able to use what someone else has done to save effort is good as long as it's substituting for effort and not knowledge 2) sometimes the answer is arbitrary or arcane within the domain of knowledge that's relevant to you and copy pasting is a nececity. Ideally you'll go back and understand what you copied out later, especially since it probably is or will be in the domain of knowledge that is relevant to you. That said if you copy code you should cite it via a commented link for future convenience and understanding. A variant of technique 2 being to just use a library, framework etc that does everything for you with both the caveats I previously mentioned still applying.

Third and most recently is the recent wave of synthetic text generators powered by Large Language Models(LLMs). Examples of these at time of writing being ChatGPT, Falcon, LLaMa, Github Copilot, etc. These are perfect for not learning programming because if you have trouble you just ask the chat bot and it gives an answer no difficulty or making you learn. Serious note: If you are learning programming do not use Chat bots to help you at all. If you do then how confident can you be that you'll be able to do what the chat bot is doing without assistance? The answer is that unless you try without that help you can't. And odds are that if you're making heavy usage of a chat bot that you'll barely get anything out of the programming experience learning wise. The first two methods at least involve other humans or learning how to search (which is useful to learn) but this involves no such learning based caveat. That said they can be useful if 1) the model was trained on data with an acceptable legal license for what you're doing. If the model was trained on the internet and you're intending to share what you did as open source then you should assume internet training isn't acceptable, likewise if you're getting paid. 2) The work the model is doing should either be doable within 5 minutes of work on your part, some template file(s), or it should be unreliable google search on focused steroids<sup><a href="#3">3</a></sup>.

To restate though **DO NOT USE A CHATBOT WHILE LEARNING** you will learn more without it and know you aren't reliant on it...

# Conclusion?

Uuuuh well I just had a thought that there's a whole separate phenomenon of tutorials but I don't have enough experience to comment on that soooo yeah.

<sup><a href="#1" name="1">1</a></sup> - What's obvious to me isn't obvious to everyone because I am weird.

<sup><a href="#2" name="2">2</a></sup> - title: Learn you some Erlang for great good! a beginner's guide author: Fred Hébert isbn: 1-59327-435-1

<sup><a href="#3" name="3">3</a></sup> - I'm aware of this use case due to one specific person you know who you are you Pythonic eldritch deity. ~~I'm not squeamish normally but an image of "Ehlers Danlos Syndrome" made me squirm noticably~~
