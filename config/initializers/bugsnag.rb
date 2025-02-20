if defined? Bugsnag
  Bugsnag.configure do |config|
    config.api_key = 'ecf287b64e83e9e0314344a8b58ada64'

    config.discard_classes << lambda { |ex| ex.class.name.in? Shikimori::IGNORED_EXCEPTIONS }

    Shikimori::IGNORED_EXCEPTIONS.each do |class_name|
      config.discard_classes << class_name
    end
  end
end
