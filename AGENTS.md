# AI Agent Instructions

## General Guidelines

* Focus on "why" and not "how" in documentation.
* Test all return values for errors.
* Use `const` for variables that are not reassigned.
* Use short, imperative commit messages.
* Separate unrelated changes into distinct commits.
* Whenever possible, separate logic from dependencies or interfaces such that logic can be unit tested.

## Code Style

* Go version 1.24 with the latest patch release.
* Avoid complex embedded logic in a single function. Break complex functions down into smaller functions.
* Use strong typing wherever possible.
* Don't use the `interface{}` construct. Use `any` instead.
* 

## Testing

* 