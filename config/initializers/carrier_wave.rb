if Rails.env.production?
  Carrierwave.configure do |config|
    config.fog_credentials = {
        # Confiuration for Amazon S3
        provider: 'AWS',
        aws_access_key_id:  ENV['AKIAI5QFPFT5MBB7JZMQ'],
        aws_secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }
    config.fog_directory = ENV['S3_BUCKET']
  end
end