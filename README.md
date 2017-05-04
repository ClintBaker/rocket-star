# ROCKET SUPPLY README

<!-- * Ruby version -->

* Devise for authentication.  Check Devise documentation.

* Configuration needs work.  Haven't taken care of SSL for securtiy, haven't handled mailers, etc.  Go over development.rb

* Postgres for production db.

* Database initialization

* Needs testing

* Comapny and user tables.  Company belongs to user(admin).  One user is the admin of the company.  They can add other users and grant them rights.  Eventually company will be email verified, etc.

* Services (job queues, cache servers, search engines, etc.) Need to adjust to puma for deployment

* Deployment instructions (yet to deploy)

* Devise create controller for more customization on the user model if necessary.

* Verify validation on model layer for companies and products

* Learn how to store / remember which company when generating a product through session hash / cookies?

* Rating system, aswell as a tierd status system.  1,000 successful orders gives you title of x, etc.

* Categories

* Search functionality

* Cart / orders
