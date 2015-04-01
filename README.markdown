Mongrations
===========

Mongrations aims to be similar to ActiveRecord's data migrations, except
instead of worrying about schema changes, offering a way to change data when
necessary.

Example: You decide after a few weeks of running an application that you want
to add timestamps, and want to display the created_at time for an application.

You could put a default timestamp into the model (and in this case that might
be appropriate), but you might also just want to say, "everything needs to get
a new timestamp that doesn't already have one, let's say when the US beat
Canada in hockey in the Olympics."

Installation
============

If you're using Rails 2:

`gem install mongrations`

In your environment.rb:

`config.gem "mongrations"`

If you're using Rails 3/Bundler, just add:

`gem "mongrations"`

to your Gemfile.

In both cases, open your Rakefile, and add:

`require 'mongrations/tasks'`


Example
=======

To generate a mongration, just do:

`rails generate mongration whatever_you_want_your_mongration_to_be`

To run it, do

`rake mongo:mongrate`

Other rake tasks added have been `mongo:mongrate:redo`, `mongo:mongrate:up`, `mongo:mongrate:down`, `mongo:mongrate:rollback`.


Dependencies
============

You need Mongo and MongoMapper for this to be of any use. Shoulda and Matchy are required to run the tests.

Credit
======
Original code is from Rails 2.3.5 and ActiveRecord 2.3.5, now adapted to work
with MongoMapper

Original adaptation by terrbear.

Fixed to work with recent versions of MongoMapper and released as a gem by Chris Heald.
=======
You need Mongo and MongoMapper for this to be of any use.
This is tested with rails 3.it 'll not support the older version .
please use https://github.com/terrbear/mongrations for rails older version.


License
=======
Released under the MIT license
