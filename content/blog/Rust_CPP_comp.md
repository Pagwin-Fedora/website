---

title: "Comparing Rust and C++"

description: "A post on how I view rust and C++ in relation to each other and my thoughts on them"

date: "2024-04-11"

draft: true

---

# What this is not

This is not me dunking in C++ because of memory safety (mostly). It also isn't unbiased I like Rust more than C++ for a couple of reasons.

# C++ is acceptable in some places

It has references and it has a way of distinguishing between references which can change stuff and references that can't. It has smart pointers `std::unique_ptr` and `std::shared_ptr` (we'll come back to this) alongside RAII via destructors `~class_name`. It has declarative/functional ways of working with iterators via stuff in the algorithm header in particular `std::transform`, `std::copy_if` and `std::find`. This is all nice and if C++ didn't have it I would complain about it. Anyways onto complaining about C++ due to being spoiled by Rust.

# Complaints
