# Sample SDET environment

## Getting setup

The environment must have a version of ruby greater than 2.3.3. Preferably 2.4.0.

Typically the SDETs would then clone this repo and run the following command to setup the environment and install the gems:

```bash
bundle install
```

The expected list of ruby gems and their dependencies is:

```bash
Using builder 3.2.3
Using ffi 1.9.18
Using gherkin 4.1.1
Using cucumber-wire 0.0.1
Using diff-lcs 1.3
Using multi_json 1.12.1
Using multi_test 0.1.2
Using rspec-support 3.5.0
Using rubyzip 1.2.1
Using websocket 1.2.4
Using bundler 1.14.6
Using childprocess 0.6.3
Using cucumber-core 1.5.0
Using rspec-core 3.5.4
Using rspec-expectations 3.5.0
Using rspec-mocks 3.5.0
Using selenium-webdriver 3.4.0
Using cucumber 2.4.0
Using rspec 3.5.0
Bundle complete! 4 Gemfile dependencies, 19 gems now installed.
```

The four principle gems used are:

* gherkin 4.1.1
* rspec 3.5.4
* selenium-webdriver 3.4.0
* cucumber 2.4.0


They would also need the chrome webdriver installed and an instance of chrome ( headless or standard ). Although to inspect the page elements the SDETs will require a browser with which to view the page.

The version of chrome webdriver must stay in step with the version of chrome.

The latest version of chrome on Mac is 58.0.3029.81, which corresponds with webdriver version 2.29.461585 as tested. There may be some leeway in this.

A typical error when the versions are out of step is:

```bash
Chrome driver unrecognized Blink revision
```

To run the test framework simply type:

```bash
cucumber
```

expected output is:


```bash
Feature: Simple load

  Scenario:                     # features/simple.feature:2
    Given We navigate to a page # features/step_definitions/simple_steps.rb:4
    Then The page will load     # features/step_definitions/simple_steps.rb:8

1 scenario (1 passed)
2 steps (2 passed)
0m2.562s
```

You may change the page to load and the expected page title in features/step_definitions/simple_steps.rb



