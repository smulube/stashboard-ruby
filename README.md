# Stashboard gem

Simple little ruby library for interacting with a Stashboard instance
([http://www.stashboard.org]((http://www.stashboard.org)).

Stashboard is a Python application designed to be run on the Google App Engine,
which provides a system status type page for your application similar to the
status pages offered by [Amazon AWS](http://status.aws.amazon.com/), or 
[Google Apps](http://www.google.com/appsstatus).

This library doesn't address setting up your Stashboard instance, but
simplifies interacting with it from Ruby.

# Usage

    stashboard = Stashboard.new("https://your-app.appspot.com", "<stashboard_oauth_token>", "<stashboard_oauth_secret>")

    # get all services
    stashboard.services

    # get individual service details
    stashboard.service("website")

    # create new event for a service
    stashboard.create_event("website", "down", "Server unavailable, attempting to restart")
