Before('@omniauth_test') do
  OmniAuth.config.test_mode = true

  # the symbol passed to mock_auth is the same as the name of the provider set up in the initializer
  OmniAuth.config.mock_auth[:facebook] = {
    :provider => 'facebook',
    :uid => '1234567',
    :info => {
      :nickname => 'jbloggs',
      :email => 'joe@bloggs.com',
      :name => 'Joe Bloggs',
      :first_name => 'Joe',
      :last_name => 'Bloggs',
      :image => 'http://graph.facebook.com/1234567/picture?type=square',
      :urls => { :Facebook => 'http://www.facebook.com/jbloggs' },
      :location => 'Palo Alto, California',
      :verified => true
    },
      :credentials => {
        :token => 'ABCDEF...', # OAuth 2.0 access_token, which you may wish to store
        :expires_at => 1321747205, # when the access token expires (it always will)
        :expires => true # this will always be true
    },
      :extra => {
        :raw_info => {
          :id => '1234567',
          :name => 'Joe Bloggs',
          :first_name => 'Joe',
          :last_name => 'Bloggs',
          :link => 'http://www.facebook.com/jbloggs',
          :username => 'jbloggs',
          :location => { :id => '123456789', :name => 'Palo Alto, California' },
          :gender => 'male',
          :email => 'joe@bloggs.com',
          :timezone => -8,
          :locale => 'en_US',
          :verified => true,
          :updated_time => '2011-11-11T06:21:03+0000'
        }
    }
  }
end

After('@omniauth_test') do
  OmniAuth.config.test_mode = false
end
