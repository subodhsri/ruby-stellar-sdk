require 'stellar-sdk'

account = Stellar::Account.from_seed("SBXH4SEH32PENMMB66P4TY6LXUIFMRVFUMX2LJC3P2STHICBJLNQJOH5") 
client  = Stellar::Client.default_testnet()

issuer = Stellar::Account.lookup("tips*stellarid.io")
asset = Stellar::Asset.alphanum4("USD", issuer)

client.send({
  from:   account,
  to:     recipient,
  amount: Stellar::Amount.new(100, asset, issuer)
}) # => #<OK>