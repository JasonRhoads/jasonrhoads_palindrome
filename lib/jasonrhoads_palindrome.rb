require "jasonrhoads_palindrome/version"

module JasonrhoadsPalindrome
  
    # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.strip.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end
  
  private
    # Returns content for palindrome testing.
    def processed_content
      to_s.scan(/[a-z0-9]/i).join.downcase
    end
end

class String
  include JasonrhoadsPalindrome
end

class Integer
  include JasonrhoadsPalindrome
end