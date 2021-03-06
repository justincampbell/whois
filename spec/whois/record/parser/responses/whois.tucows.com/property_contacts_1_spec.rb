# encoding: utf-8

# This file is autogenerated. Do not edit it manually.
# If you want change the content of this file, edit
#
#   /spec/fixtures/responses/whois.tucows.com/property_contacts_1.expected
#
# and regenerate the tests with the following rake task
#
#   $ rake spec:generate
#

require 'spec_helper'
require 'whois/record/parser/whois.tucows.com.rb'

describe Whois::Record::Parser::WhoisTucowsCom, "property_contacts_1.expected" do

  before(:each) do
    file = fixture("responses", "whois.tucows.com/property_contacts_1.txt")
    part = Whois::Record::Part.new(:body => File.read(file))
    @parser = klass.new(part)
  end

  describe "#admin_contacts" do
    it do
      @parser.admin_contacts.should be_a(Array)
      @parser.admin_contacts.should have(1).items
      @parser.admin_contacts[0].should be_a(Whois::Record::Contact)
      @parser.admin_contacts[0].type.should         == Whois::Record::Contact::TYPE_ADMIN
      @parser.admin_contacts[0].name.should         == "Contact Privacy Inc. Customer 0129153591,"
      @parser.admin_contacts[0].organization.should == nil
      @parser.admin_contacts[0].address.should      == "96 Mowat Ave"
      @parser.admin_contacts[0].city.should         == "Toronto"
      @parser.admin_contacts[0].zip.should          == "M6K 3M1"
      @parser.admin_contacts[0].state.should        == "ON"
      @parser.admin_contacts[0].country_code.should == "CA"
      @parser.admin_contacts[0].phone.should        == "+1.4165385457"
      @parser.admin_contacts[0].fax.should          == nil
      @parser.admin_contacts[0].email.should        == "hairlosstalk.com@contactprivacy.com"
    end
  end
end
