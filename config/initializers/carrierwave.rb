CarrierWave.configure do |config|
  secrets = Sekrets.settings_for(Rails.root.join('sekrets', 'ciphertext'))

  config.storage    = :aws
  config.aws_bucket = 'turbo_soul'
  config.aws_acl    = :public_read
  config.aws_authenticated_url_expiration = 60 * 60 * 24 * 365

  config.aws_credentials = {
    access_key_id:     secrets[:aws_key],
    secret_access_key: secrets[:aws_secret]
  }
end