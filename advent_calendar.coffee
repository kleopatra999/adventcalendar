class AdventCalendar
  days:
    1:
      title: "Get a free ebook"
      description: "Get the free ebook 'Efficiency in Development Workflows'."
      callToAction: "Better Software Development Workflows"
      link: "http://ebooks.codeship.io/efficiency-in-development-workflows-by-codeship"
    2:
      title: "Vagrant Machines with Packer"
      description: "Learn how to build Vagrant Machines with Packer"
      callToAction: "Vagrant and Packer"
      link: "http://blog.codeship.io/2013/11/07/building-vagrant-machines-with-packer.html"
    3:
      title: "Unit testing with Angular JS"
      description: "Andy Shora wrote a great article about Unit Testing best practices in AngularJS. Definitely a must-read!"
      callToAction: "Unit Testing best practices in AngularJS"
      link: "http://blog.codeship.io/2013/10/31/unit-testing-best-practices-in-angularjs.html"
    4:
      title: "Faster tests"
      description: "Read this blog post by Oren Dobzinski to learn how to speed up your test suite with dependency injection"
      callToAction: "Speed up your test suite"
      link: "http://blog.codeship.io/2013/10/15/slow-tests-are-the-symptom-not-the-cause.html"
    5:
      title: "Podcast about Continuous Deployment"
      description: "Check out the ShopTalkShow Podcast with Chris Coyier on Continuous Deployment and Automation"
      callToAction: "Podcast: Continuous Deployment and Automation"
      link: "http://blog.codeship.io/2013/10/10/shoptalkshow-podcast-with-chris-coyier-on-continuous-deployment-and-automation.html"
    6:
      title: "Continuous Deployment to OpsWorks"
      description: "In this guest blog post you can learn how to set up Continuous Deployment to Amazon OpsWorks"
      callToAction: "How to set up Continuous Deployment to Amazon OpsWorks"
      link: "http://blog.codeship.io/2013/09/18/how-to-deploy-to-amazon-opsworks-using-codeship.html"
    7:
      title: "How we deploy our build servers"
      description: "From the Codeship Workflow Series. Learn how we deploy of Immutable Build Servers continuosly at the Codeship."
      callToAction: "Continuous Deployment of Immutable Build Servers"
      link: "http://blog.codeship.io/2013/09/12/the-codeship-workflow-part-5-continuous-deployment-of-immutable-build-servers.html"
    8:
      title: "Continuous Deployment at GrabCAD"
      description: "We interviewed Amos Benninga from GrabCAD. Learn how GrabCAD uses Continuous Integration and Continuous Deployment."
      callToAction: "Continuous Integration and Continuous Deployment at GrabCAD"
      link: "http://blog.codeship.io/2013/09/04/continuous-integration-and-continuous-deployment-at-grabcad.html"
    9:
      title: "Testing JavaScript callbacks with QUnit"
      description: "Learn how to test synchronous and asynchronous JavaScript callbacks with QUnit in our video tutorial"
      callToAction: "Testing JavaScript callbacks with QUnit"
      link: "http://blog.codeship.io/2013/09/03/testing-tuesday-21-testing-synchronous-and-asynchronous-javascript-callbacks-with-qunit.html"
    10:
      title: "Deployment Pipelines and Zero Downtime Deployment"
      description: "Learn how we deploy at the Codeship with Deployment Pipelines and Zero Downtime Deployment."
      callToAction: "Deployment Pipelines and Zero Downtime Deployment"
      link: "http://blog.codeship.io/2013/08/30/the-codeship-workflow-part-3-deployment-pipelines.html"
    11:
      title: "Free Code School course"
      description: "We are giving away a free course on Code School. Go and grab it!"
      callToAction: "Get a free Code School course"
      link: "http://blog.codeship.io/2013/08/28/get-a-free-codeschool-course-sponsored-by-codeship.html"
    12:
      title: "Pull Requests and Code Review"
      description: "Learn how we ensure code Quality at the Codeship with Pull Requests and Code Reviews."
      callToAction: "Pull Requests and Code Reviews"
      link: "http://blog.codeship.io/2013/08/22/the-codeship-workflow-part-2-pull-requests-and-code-review.html"
    13:
      title: "Testing node.js apps with Jasmine"
      description: "Learn how to test node.js applications with Jasmine in this video tutorial."
      callToAction: "Testing node.js with Jasmine"
      link: "http://blog.codeship.io/2013/08/20/testing-tuesday-19-how-to-test-node-js-applications-with-jasmine.html"
    14:
      title: "Developing a new feature"
      description: "Learn how we develop new features at the Codeship."
      callToAction: "How to develop a new feature"
      link: "http://blog.codeship.io/2013/08/16/the-codeship-workflow-part-1-developing-a-new-feature.html"
    15:
      title: "Book recommendation"
      description: "No Christmas present yet? How about the book “Cucumber Recipes”? We wrote a review about it!"
      callToAction: "Cucumber Recipes"
      link: "http://blog.codeship.io/2013/08/01/book-review-cucumber-recipes.html"
    16: {}
    17: {}
    18: {}
    19: {}
    20: {}
    21: {}
    22: {}
    23: {}
    24: {}

  todays_window: (->
    # calculate today's window
    dec24 = new Date(2013, 11, 24)
    now = new Date()
    # now = new Date(2013, 11, 3);
    days_till_xmas = Math.ceil (dec24 - now) / (24 * 60 * 60 * 1000)
    todays_window = 24 - days_till_xmas
    todays_window= Math.max 1, todays_window
    Math.min 24, todays_window)()

  calendar_data: ->
    # Today
    todays_data = @days[@todays_window]
    todays_data.day = @todays_window

    # Calendar
    days_list = for day, text of @days
      text.day = day
      text.open = true if @todays_window >= day
      text

    today: todays_data, days: days_list

module.exports = AdventCalendar;
