## Sensu-Yieldbot-consul

## Functionality

## Files
 * bin/check-consul
 * bin/check-service-consul

## Usage

## Installation

#### Artifactory

`gem install sensu-yieldbot-consul`

#### Bundler

Add *sensu-yieldbot-consul* to your Gemfile and run `bundle install` or `bundle update`

#### Chef

Using the Sensu **sensu_gem** LWRP
```
sensu_gem 'sensu-yieldbot-consul' do
  version '0.0.1'
end
```

Using the Chef **gem_package** resource
```
gem_package 'sensu-yieldbot-consul' do
  version '0.0.1'
end
```

## Notes
