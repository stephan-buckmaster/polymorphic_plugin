# PolymorphicPlugin

A sample Rails 3.1 plugin designed to illustrate the problems of building a polymorphic :has_many, :through
relationship in a pluggable Rails module.

There's a [StackOverflow thread](http://stackoverflow.com/questions/8130537/polymorphic-has-many-through-as-module-in-rails-3-1-plugin)
describing the problem this is trying to solve.

See [the blog post](http://mettadore.com/analysis/polymorphic-has_many-through-in-rails-modules/)
 for the full description of this repository and the behavior.

Look at polymorphic_plugin_test.rb file to see what's going on.

## inside-module branch

This branch: 'inside-module' fails. The other branch: 'outside-module' passes.
