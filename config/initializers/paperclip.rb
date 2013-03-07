# See https://devcenter.heroku.com/articles/paperclip-s3
Paperclip::Attachment.default_options[:url] = ':s3_domain_url'
