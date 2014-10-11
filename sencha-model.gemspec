# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "sencha-model/version"

Gem::Specification.new do |s|
  s.name        = "sencha-model"
  s.version     = Sencha::Model::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Chris Scott"]
  s.email       = ["christocracy@gmail.com"]
  s.homepage    = "http://www.transistorsoft.com"
  s.summary     = %q{This gem auto-generates ExtJS compatible model specifications from your ORM (eg: ActiveRecord, DataMapper, MongoMapper)}
  s.description = %q{This gem auto-generates ExtJS compatible model specifications from your ORM (eg: ActiveRecord, DataMapper, MongoMapper)}
  
  s.add_development_dependency "shoulda"
  s.add_development_dependency "mocha"
  s.add_development_dependency "extlib"
  s.add_development_dependency "activerecord", ">= 3.0.0"
  s.add_development_dependency "sqlite3-ruby"
  
  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end
