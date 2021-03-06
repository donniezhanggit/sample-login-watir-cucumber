# sample-login-watir-cucumber

This is an example 
[Watir](http://watir.com)-[Cucumber](https://cucumber.io)-[Ruby](https://www.ruby-lang.org)
implementation of Acceptance Test Driven Development (ATDD).
**However, it also provides a somewhat extensible framework that can be reused
by replacing the existing tests.**

These tests show how to use Watir-Cucumber to verify...
* that critical elements are on a page
* the ability to login as a user

It also demonstrates the basic features
of the Watir-Cucumber framework and how they can be extended.
This example contains...
* support for multiple browsers

## To Run the Automated Tests
The tests either can be run directly by the Cucumber runner or by the
supplied Rakefile.

### Examples ###
#### Defaults ####
```
bundle exec rake
```
```
bundle exec cucumber
```
#### Browsers ####
```
SPEC_BROWSER=chrome bundle exec rake
```
```
SPEC_BROWSER=firefox_headless bundle exec cucumber
```

### To Run Using Rake
To run the automated tests using Rake, execute...

*command-line-arguments* `bundle exec rake`

### To Run Using Cucumber
To run the automated tests using Cucumber, execute...

*command-line-arguments* `bundle exec cucumber`

### Command Line Arguments
#### Specify Browser
`SPEC_BROWSER=`...

* Mostly, this uses a pass thru and convert to symbol approach
  * **example:** "chrome" converts to `:chrome` which is a Watir browser
* Headless browsers are handled by detecting the word "headless"
and sending that as an argument to the browser specified
  * **example:** "chrome_headless" converts to `:chrome`
  with `headless` argument

#### Browser Drivers
This project uses the
[Webdrivers](https://github.com/titusfortner/webdrivers)
gem to automatically download and maintain chromedriver and
geckodriver (Firefox).

#### Supported Browsers
The following browsers were working on Mac at the time of this commit:
* `chrome` - Google Chrome (requires Chrome)
* `chrome_headless` - Google Chrome run in headless mode (requires Chrome > 59)
* `firefox` - Mozilla Firefox (requires Firefox)
* `firefox_headless` - Mozilla Firefox (requires Firefox)
* `safari` - Apple Safari (requires Safari)


*R.I.P.* `phantomjs` - PhantomJS headless browser is no longer supported by Watir
(although I can no longer seem to find the link)

## Requirements
* Ruby 2.4.5
* To run the tests using a specific browser requires that browser
be installed
(e.g. to run the tests in the Chrome Browser requires
Chrome be installed).

Install bundler (if not already installed for your Ruby):

```
$ gem install bundler
```

Install gems (from project root):

```
$ bundle
```

## Additional Information
These tests use the [page-object gem](https://rubygems.org/gems/page-object)
