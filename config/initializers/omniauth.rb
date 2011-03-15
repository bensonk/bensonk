Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, 'u2HiHMX3yo3aimmtrgAhPQ', 'NqHVazsA1VEqkP7Bo2O8cA7BXC2j8GM8PGAbIIl4rAU'
  provider :facebook, '189059097798739', '9cb76779785d457df97274d0b69c9691'
end
