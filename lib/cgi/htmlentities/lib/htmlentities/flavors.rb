class CGI::HTMLEntities
  FLAVORS            = %w[html4 xhtml1 expanded]
  MAPPINGS           = {} unless defined? MAPPINGS
  SKIP_DUP_ENCODINGS = {} unless defined? SKIP_DUP_ENCODINGS
end

CGI::HTMLEntities::FLAVORS.each do |flavor|
  require_relative "./mappings/#{flavor}"
end
