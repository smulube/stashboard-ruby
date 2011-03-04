Stashboard gem
==============

Simple little ruby library for interacting with a Stashboard instance
(http://www.stashboard.org).

Usage
=====

    stashboard = Stashboard.new("https://your-app.appspot.com", "<stashboard_oauth_token>", "<stashboard_oauth_secret>")

    # get all services
    stashboard.services

    # get individual service details
    stashboard.service("website")
