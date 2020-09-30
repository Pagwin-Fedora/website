---
title: "How this website was made"
description: "It's with hugo and the rest of this is probably gonna be short and boring viewer discretion is advised"
date: 2020-09-30
---
## Prelude
Before we get to how I actually made this site let's discussed how I failed to make this site(repeatedly). I was inspired to make a simple website/blog from [this blog post](https://k1ss.org/blog/20191004a), I rapidly regretted having that as my main inspiration. I tried setting up scripts for generating pages using the output from pandoc, making the pages look nice and what not as well as make a script for generating an rss feed but rapidly realized that all of this was going to be a pain and gave up. Rinse and repeat a couple of times over several months to a year or so. 

## Actually making this website
One day(2 days before this post was written actually) I was browsing reddit when I came across [this comment](https://www.reddit.com/r/linuxquestions/comments/j0wcfj/i_hand_you_a_computer_with_a_minimalistic_install/g6vxxxj/) and realized that I'm an idiot because static site generators exist and what I had previously been doing was basically writing my own, I may still write my own but more so as a project on it's own than as something that's contributing to something else. After that work went relatively smoothly with me spending the first day learning what the fuck hugo(no I didn't do my research into static site generators don't judge me okay) is then on the second day I actually started to get into writing all the stuff for the site. For my theme as you may already know if you've looked at the footer for this website I'm using liquorice as my theme. I chose it for being simple, very nice for reading text(what I expect will be the main thing that's done on this website) and because I just liked the overall feel. There were some aspects that I felt the need to improve though such as the homepage being a bit more than just a list of every page on the site, something about lists(I don't remember what), making the subsections of these blogs and other pages in the future jump points in case I write something that would actually benefit from those jump points and not just a short one page piece and finally making the links actually look visually distinct from the text beyond simply being bold. There are probably other changes I'm forgetting and in the future I expect I'll tweak this further but that's all for now. Some of those tweaks will be me making the website smaller and more compressed following the original spirit of that kiss blog and I can already see some points where I can shave some size off but that's a story for another time.

## Making the jump points
most of those points are pretty easy if you read hugo's documentation and are willing to try random things but the jump points are a slight challenge and something worth writing about in more detail. First things first ignoring all this being generated from markdown causing some oddities how do we make a jump point on a webpage? Well with anchor tags of course!
```html
<a name="some_name_or_something_idk" href="./#some_name_or_something_idk">some content doesn't matter</a>
```
this is nice now if somebody goes to example.com/#some_name_or_something_idk their browser will jump them straight down to wherever that anchor tag is. But it doesn't jump to the anchorblock when we click on it it simply sets our url and if we reload it jumps to it. *Editor's note: as I write this I'm unsure if I'm an idiot who didn't need to do the work with this javascript I'm about to talk about so it may well be possible that it's unnecessary and the above code already does that*. So in order to fix that we'll be adding an event to our anchor element like this.
```html
<a name="name" href="./#name" id="name">some text</a>
<script>
    let elem = document.getElementById("name");
    elem.addEventListener(event=>{
	    event.target.scrollIntoView();
    });
</script>
```
Technically the event could be added by adding an onclick parameter to the anchor element in the dom but we we start dealing with another problem which I'll get to after explaining this it'll be way cleaner to just use `addEventListener` anyway the code is relatively self explanatory but I'll explain it anyways. Our element has an id that we attached to it by adding the parameter `id="name"` we can get our element in our code by asking the browser to give our element to us using the id as a reference to find the element with the method `document.getElementById`. We could totally just use `document.getElementsByName` and take the first element from that but I personally chose to add and use the id. With `addEventListener` we can attach a function that'll be called when an event fires in this case the click event for when the user clicks on the anchor element. The function in question take the event object given to it and takes out the dom element that was actually clicked on with the target property. We then scroll to that dom element with scrollIntoView. Now all we need to do is have it so that when we write out our header elements we just surround them with anchor elements and... wait.

## We didn't write those header elements though
Oh yeah we didn't write the header elements in the first place they're written in from whatever markdown generator that hugo uses. Well how do we handle this? There may be some way of changing how hugo generates html from the markdown but that sounds hard let's just write some javascript.
```js
let elems = document.getElementsByTagName("h2");
for(let elem of elems){
    elem.outerHTML = `<a name="${elem.innerText}" href="./#${elem.innerText}" id="${elem.innerText}"><h2>${elem.innerHTML}</h2></a>`;
    document.getElementById(e.innerText).addEventListener('click', event=>{
	    event.target.scrollIntoView();
    });
}
```
Ok so you already understand that last bit with the event listener and what not so allow me to explain the rest. `document.getElementsByTagName` is the same as `document.getElementById` except it gets more than one element and does it by their tag name. The for loop iterates through all the elements we just got and through each iteration we can refer to the element we're on by the variable `elem`. The parameter of `outerHTML` isn't used very often `innerHTML` and `innerText` are used more often because most people only want to control the text inside of a dom element but want to leave the outer tags untouched but in this case that's useful because we actually want to add anchor tags around our header tags which is what we do. Hooray the problem with the markdown generation not allowing fine enough control was solved. Now about adding that script in to do that work.

## Adding the script in
some failures ahead(write about fucking around with cond and the escaping html and how I couldn't find the right boolean statement to make the cond work correctly before stumbling upon the current solution)
