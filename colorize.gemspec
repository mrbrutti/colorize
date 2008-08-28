require 'rubygems'
Gem::manage_gems
require 'rake/gempackagetask'

spec = Gem::Specification.new do |s| 
  s.name = "Colorize"
  s.version = "0.0.1"
  s.author = "Matias P. Brutti"
  s.email = "matiasbrutti@gmail.com"
  s.homepage = "http://www.freedomcoder.com.ar"
  s.platform = Gem::Platform::RUBY
  s.summary = "System Colorize module"
  s.files = Dir.glob("{lib}/**/*") + Dir.glob("{test}/**/*")
  s.require_path = "lib"
end

Rake::GemPackageTask.new(spec) do |pkg| 
  pkg.need_tar = true 
end 

task :default => "pkg/#{spec.name}-#{spec.version}.gem" do
    puts "generated latest version"
end

