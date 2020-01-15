# Mongodb Version 4 Ubuntu 18.04

## Summary
We need to create a reusable chef cookbook for installing and managing mongodb servers.

## Tasks
- Install Mongodb Version 4 Ubuntu 18.04

- Create a new cookbook called mongo

- Create a ChefSpec suite that tests for the following:

Sources list is updated
mongodb-org is added to the sources list ( there is a matcher for this )
MongoDB will be installed

- And InSpec tests for the following:

MongoDB is installed
MongoDB is version 4.*
Create a recipe that installs and configures this cookbook correctly to pass all these tests.
