#!/usr/bin/env ruby

require 'erb'
require 'yaml'
require 'dotenv'
require 'gitrob'

Dotenv.load

template = ERB.new File.new(File.join(ENV['APP_HOME'],'.gitrobrc.template')).read
config_processed = YAML.load template.result(binding)
File.open("#{Dir.home}/.gitrobrc", 'w') { |f| f.write YAML.dump(config_processed) }
Gitrob::agreement_accepted