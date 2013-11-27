module ActivitiesHelper

def html_text(text) 
	sanitize text.gsub(/(?:\n\r?|\r\n?)/, '<br />') 
end

end
