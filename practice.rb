# Cryptocurrency is all the rage. You have decided to create your own,
# KelloggCoin, that will massively disrupt financial markets at the Global
# Hub.

# Don't change the following code, which represents a series of transactions, each
# of which represents a transfer of KelloggCoin from one user to another – transactions 
# with no from_user are from the "ICO" (Initial Coin Offering)

blockchain = [
  { "from_user" => nil, "to_user" => "ben", "amount" => 20000 },
  { "from_user" => nil, "to_user" => "brian", "amount" => 20000 },
  { "from_user" => "ben", "to_user" => "evan", "amount" => 9000 },
  { "from_user" => "brian", "to_user" => "anthony", "amount" => 7000 },
  { "from_user" => "evan", "to_user" => "anthony", "amount" => 400 },
  { "from_user" => "ben", "to_user" => "anthony", "amount" => 1500 },
  { "from_user" => "anthony", "to_user" => "ben", "amount" => 4500 },
  { "from_user" => "anthony", "to_user" => "evan", "amount" => 1750 }
]

# Write code below that returns the number of KelloggCoin that each user has in their 
# KelloggCoin "wallet".

# It should print out:
# Ben's KelloggCoin balance is 14000
# Brian's KelloggCoin balance is 13000
# Evan's KelloggCoin balance is 10350
# Anthony's KelloggCoin balance is 2650

# 👇👇👇 Your code HERE 👇👇👇

# creating array of hashes for users

user_funds = [
  {"name" => "ben", "funds" => 0 },
  {"name" => "brian", "funds" => 0 },
  {"name" => "evan", "funds" => 0 },
  {"name" => "anthony", "funds" => 0 }
]

# Account for buying and selling of bitcooing
for block in blockchain
  for user in user_funds
    if block["from_user"] == user["name"]
      user["funds"] = user["funds"] - block["amount"]
    end
    if block["to_user"] == user["name"]
      user["funds"] = user["funds"] + block["amount"]
    end
  end
end

# Print out number of coin each user has

for user in user_funds
  puts "#{user["name"]}'s KelloggCoin balance is #{user["funds"]}"
end

# is there a way to make the name's capital?


