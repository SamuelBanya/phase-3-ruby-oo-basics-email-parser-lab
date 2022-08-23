# Build a class EmailAddressParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailAddressParser
  attr_accessor :email_addresses

  def initialize(email_addresses)
    @email_addresses = email_addresses
  end

  def parse
    # ... This pattern was never shown unfortunately, so this was an awkward find
    # only to figure out that this is basically a glorified regex hunt:
    email_addresses.split(/, | /).uniq
    # email_addresses.split(" ")
    # email_addresses.split(",")
    # email_addresses = email_addresses.uniq
  end
end
