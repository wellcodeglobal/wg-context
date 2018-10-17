#!/usr/bin/env ruby

class LoadContext
  WG_CONTEXT_NAMESPACE='~/.wg-context'

  def self.bppsdmk
    puts 'Loading context BPPPSDMK...'
    exec( "source #{generate_context_file_name('bppsdmk')}" )
  end

  def self.training
    puts 'Loading context Training...'
    exec( "source #{generate_context_file_name('training-ppsdmk')}" )
  end

  def self.tulip
    puts 'Loading context Tulip...'
    exec( "source #{generate_context_file_name('tulipromance')}" )
    # exec( "rails s" )
  end

  def self.generate_context_file_name project
    "#{WG_CONTEXT_NAMESPACE}/s3-#{project}-dev"
  end
end

argument = ARGV[0]
abort 'No args passed' if argument.nil?

puts "Argument send: #{argument}"

if LoadContext.respond_to? argument
  puts "Class is responding to function #{argument}"
  puts "Calling function..."
  LoadContext.send argument
else
  puts "Class didn't respond to function #{argument}"
end
