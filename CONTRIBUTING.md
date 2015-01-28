# Contributing

Fork the repo:

    git clone git@github.com:thoughtbot/suspenders.git

Set up your machine:

    ./bin/setup

Make sure the tests pass:

    rake

Make your change.
Write tests.
Make the tests pass:

    rake

Write a [good commit message][commit].
Push to your fork.
[Submit a pull request][pr].

[pr]: https://github.com/thoughtbot/suspenders/compare/

If [Hound] catches style violations,
fix them.

[hound]: https://houndci.com

Wait for us.
We try to at least comment on within one business day.
We may suggest changes.

[commit]: http://tbaggery.com/2008/04/19/a-note-about-git-commit-messages.html

## Versions

To update Suspenders' Ruby version,
change `.ruby-version` and `.travis.yml`.
