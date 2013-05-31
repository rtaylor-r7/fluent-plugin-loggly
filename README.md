Loggly plugin for Fluentd
=============

With fluent-plugin-loggly you will be able to use the service loggly.com as output for you fluentd logs.

#Branch notes

There appear to be issues Net:HTTP::Persistent on some versions of ruby? https://github.com/drbrain/net-http-persistent/issues/37
These are appearing as "Bad Request" responses from loggly when they are posted
Changed to use rest-client gem instead of Net::HTTP, simplier and dont' have to worry about getting into bad state


# Getting Started
* Install fluentd http://fluentd.org
* gem install fluent-plugin-loggly
* Make sure you have an account at loggly.com.
* Create a input.
* Choose service type: HTTP
* JSON logging: true
* Get the url that could by used to do HTTPS POST (this will be used for configuration of the plugin).
  It should be something like https://logs.loggly.com/inputs/xxx-xxxx-xxxx-xxxxx-xxxxxxxxxx

## Parameters
**loggly_url** the url to your loggly input (string)  
**progname** program name to include in log messages. [ruby doc](http://www.ruby-doc.org/stdlib-1.9.3/libdoc/logger/rdoc/Logger.html#progname-attribute-method) (string)


Setup the loggly output:

~~~~~
    <match your_match>
      type loggly
      loggly_url https://logs.loggly.com/inputs/xxx-xxxx-xxxx-xxxxx-xxxxxxxxxx
    </source>
~~~~~

# TODO
* TCP support

