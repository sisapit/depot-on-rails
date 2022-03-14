# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

#---
# Excerpted from "Agile Web Development with Rails 7",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material,
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose.
# Visit https://pragprog.com/titles/rails7 for more book information.
#---
# encoding: utf-8
LineItem.delete_all
Cart.delete_all
Product.delete_all
Product.create!(title: 'Docker for Rails Developers',
                description:
                  %{<p>
      <em>Build, Ship, and Run Your Applications Everywhere</em> Docker does
      for DevOps what Rails did for web development—it gives you a new set
      of superpowers. Gone are “works on my machine” woes and lengthy setup
      tasks, replaced instead by a simple, consistent, Docker-based
      development environment that will have your team up and running in
      seconds.  Gain hands-on, real-world experience with a tool that’s
      rapidly becoming fundamental to software development. Go from zero all
      the way to production as Docker transforms the massive leap of
      deploying your app in the cloud into a baby step.
      </p>},
                image_url: 'ridocker.jpg',
                price: 19.95)
# . . .
Product.create!(title: 'Rework - Succeed in your business',
                description:
                  %{<p>Rework shows you a better, faster, easier way to succeed in business.</p>
<p>Most business books give you the same old advice: Write a business plan, study the competition, seek investors, yadda yadda. If you're looking for a book like that, put this one back on the shelf.</p>
<p>Read it and you'll know why plans are actually harmful, why you don't need outside investors, and why you're better off ignoring the competition. The truth is, you need less than you think. You don't need to be a workaholic. You don't need to staff up. You don't need to waste time on paperwork or meetings. You don't even need an office. Those are all just excuses.</p>
<p>What you really need to do is stop talking and start working. This book shows you the way. You'll learn how to be more productive, how to get exposure without breaking the bank, and tons more counterintuitive ideas that will inspire and provoke you.</p>
},
                image_url: 'rework.jpg',
                price: 29.90)

Product.create!(title: 'Design and Build Great Web APIs',
                description:
                  %{<p>
      <em>Robust, Reliable, and Resilient</em>
      APIs are transforming the business world at an increasing pace. Gain
      the essential skills needed to quickly design, build, and deploy
      quality web APIs that are robust, reliable, and resilient. Go from
      initial design through prototyping and implementation to deployment of
      mission-critical APIs for your organization. Test, secure, and deploy
      your API with confidence and avoid the “release into production”
      panic. Tackle just about any API challenge with more than a dozen
      open-source utilities and common programming patterns you can apply
      right away.
      </p>},
                image_url: 'maapis.jpg',
                price: 24.95)

Product.create!(title: 'How to Kill a Unicorn: How the World\'s Hottest Innovation Factory Builds Bold Ideas That Make It to Market ',
                description:
                  %{
<p><b>A unique behind-the-scenes look at the groundbreaking methodology that today's most in-demand innovation factory uses to create some of the boldest products and successfully bring them to market.</b></p>
<p>Today, innovation is seen by business leaders and the media alike as the key to growth, a burning issue in every company, from startups to the Fortune 500. And in that space, Fahrenheit 212 is viewed as a high-performance innovation SWAT team, able to solve the most complex, mission-critical challenges. Under Mark Payne, the firm's president and head of Idea Development, Fahrenheit 212, since its inception a decade ago, has worked with such giants of industry as Coca-Cola, Samsung, Hershey's, Campbell's Soup, LG, Starbucks, Mattel, Office Depot, Citibank, P&G, American Express, Nutrisystem, GE, and Goldman Sachs, to name but a few. It has been praised as a hotspot for innovation in publications like Fortune, Esquire, Businessweek, and FastCompany.</p>
<p>What Drives Fahrenheit 212's success is its unique methodology, combining what it calls Magic--the creative side of innovation--with Money, the business side. They explore every potential idea with the end goal in mind--bringing an innovative product to market in a way that will transform a company's business and growth. In How to Kill a Unicorn, Mark Payne pulls back the curtain on how the company is able to bring more innovative products and ideas successfully to market than any other firm and offers blow by blow inside accounts of how they grapple with and solved their biggest challenges.</p>
                  },
                image_url: 'unicorn.jpg',
                price: 33.76)

Product.create!(title: 'Modern CSS with Tailwind',
                description:
                  %{<p>
      <em>Flexible Styling Without the Fuss</em>
      Tailwind CSS is an exciting new CSS framework that allows you to
      design your site by composing simple utility classes to create complex
      effects. With Tailwind, you can style your text, move your items on
      the page, design complex page layouts, and adapt your design for
      devices from a phone to a wide-screen monitor. With this book, you’ll
      learn how to use the Tailwind for its flexibility and its consistency,
      from the smallest detail of your typography to the entire design of
      your site.
      </p>},
                image_url: 'tailwind.jpg',
                price: 18.95)
