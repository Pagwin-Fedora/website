---
title: "A universal tutorial on the basics for every* programming language"
description: "A tutorial tha covers all the basic concepts that procedural languages commonly have"
date: 2021-01-20
draft: true
---
## Prelude
No this isn't comprehensive, so no you won't be able to immediately go start making something after having read this and no this doesn't cover everything you might possibly run into, see [#The Asterisk](#The%20Asterisk). Also the examples will be in Pseudocode so this isn't a generic python/javascript tutorial :P.

## The Asterisks
If you didn't notice the asterisk in the title next to every, now you know there is one. The reason for that asterisk is that this blog only covers stuff that is common(as built in language features) in procedural programming. If you don't know what "procedural" means don't worry about it and pretend that this covers every programming language. 

## The Data
Fundamentally programming is about the manipulation of data for varying purposes. On occasion a programmer will want data to be displayed which can be accomplished in many ways. For the purposes of this blog `DISPLAY(some_data)` `indicates that whatever `some_data` is should be displayed. Now that data can be displayed, what data can we have? There are a few different types of data we can have<sup>[[1]](#1)</sup>. For now I'll only specify 3. Those 3 are strings, numbers and booleans. First there are strings, more commonly known as text. In many programming languages, including our pseudocode, we can create a string in our program by surrounding some text with quotes `"like this"`. Our second type is numbers which hold numbers. We can of course add, subtract, multiply, divide and raise to a power all of these numbers with the notation of `number1 + number2`, `number1 - number2`, `number1 * number2`, `number1 / number2` and `number1 ^ number2` respectively. And Last but not least we have booleans which can hold the values of `true` and `false`. Just like how we can apply different operations onto different number we also have some operations we can apply to booleans. First we have `NOT` which will take a boolean and give back the opposite boolean e.g. true → false and false → true. Second we have `OR` which takes 2 booleans and gives back true if either of them are true and false otherwise. Third we have `AND` which takes 2 booleans and gives back true only if both of them are true and false otherwise. Finally we have `XOR` which will only give back true if only 1 of it's inputs is true eg `true XOR true` → false and `false XOR false` → false but `true XOR false` → true.

## Variables
Variables allow for the storage of data in named<sup>[[2][(#2)</sup> buckets which is very useful especially when taking input that can change at runtime. We can put a value into a variable like so `someVar ← "a string"` which would set the variable someVar to the string value of "a string".


## Conditionals
Conditionals(specified with `IF`) are statements that can allow us to gate code behind some condition being true. Besides the obvious of just specifying a boolean value ourself we can also perform certain tests on other values to get booleans. First we can see if 2 values are the same i.e. the same type and the same value of that type which we can do with a simple `value1 = value2` for ease of syntax we can also see if they are not equal to each other with `value1 ≠ value2` furthermore if both values are numbers we can see if one if greater than or less than the other with `value1 > value2` and `value1 < value2` respectively. I should probably provide an example snippet of pseudocode
```
someNum ← 5
"Sidenote: when I have a statement that can take multiple lines of code"
"I'll surround those lines with curly brackets also when I need to make"
"a comment which is intended to do nothing to the code like this it'll be"
"a free floating string(s) which nothing is done with like this"
IF someNum = 5 {
    DISPLAY("someNum is indeed 5")
}
ELSE {
    DISPLAY("I have no idea how this happened")
}
```

## Procedures


## Footnotes
<a href="./#1" name="1">1</a> - I see you in the back there person who wants to be technically correct(if I wasn't writing this it'd be me) with your statements about how in C a lot of what differentiates types is just dereferencing the integer pointers down to their values and pretending chars aren't integers but I don't care so shut up.

<a href="./#2" name="2">2</a> - most programming languages have certain specifications on what you can name your variables and there's also reccomended ways you should name your variables and both of these can vary per language so you should probably read their documentation for specifics but for my purposes I'm gonna stick to [camelCase](https://en.wikipedia.org/wiki/Camel_case) using only english letters as I'm unaware of any non-esoteric programing languages which disallow such naming
