require "spec_helper"
require 'librarian/puppet/source/repository'

describe Librarian::Puppet::Source::Repository do

  it "should define the path to the modulefile when it is in a subfolder" do
    repository = Librarian::Puppet::Source::Repository.new mock(:environmnent) ,"path/to/git/clone", "puppet/module"
    repository.modulefile.should be == "path/to/git/clone/puppet/module/Modulefile"
  end

  it "should define the path to the modulefile when it is in the root dir of the clone" do
    repository = Librarian::Puppet::Source::Repository.new mock(:environmnent) ,"path/to/git/clone", nil
    repository.modulefile.should be == "path/to/git/clone/Modulefile"
  end

end

