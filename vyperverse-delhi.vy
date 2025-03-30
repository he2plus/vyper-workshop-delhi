# @version 0.4.1
#pragma evm-version cancun

# ==============================================================
# This smart contract development workshop was designed and lead
# by Prakhar Tripathi [https://x.com/he2plus], India
# ==============================================================

# ---------------------- USER CUSTOMIZATION START ----------------------
# >>> REQUIRED: Replace below with your personal introduction (max 50 chars)
user_intro: public(String[50]) = "YOUR_INTRODUCTION_HERE"
# Example: "Web3 developer from Berlin building DeFi projects"

# >>> REQUIRED: Replace below with your feedback (max 100 chars)
user_feedback: public(String[100]) = "YOUR_FEEDBACK_HERE"
# Example: "Excellent workshop! Learned Vyper best practices and deployment."
# ----------------------- USER CUSTOMIZATION END -----------------------

event FavoriteNumberSet:
    user: indexed(address)
    number: uint256

event FavoritePersonSet:
    user: indexed(address)
    person: indexed(address)

event ContractWithdrawal:
    amount: uint256

favorite_numbers: public(HashMap[address, uint256])
favorite_people: public(HashMap[address, address])
owner: public(address)

@deploy
def __init__():
    # Validate user customization
    assert len(self.user_intro) > 0, "Add your introduction!"
    assert len(self.user_feedback) > 0, "Add your feedback!"
    
    # Original contract logic
    self.owner = msg.sender
    self.favorite_numbers[msg.sender] = 42
    log FavoriteNumberSet(user=msg.sender, number=42)

@external
@payable
def donate():
    pass

@external
def set_number(new_number: uint256):
    assert new_number > 0, "Invalid number"
    self.favorite_numbers[msg.sender] = new_number
    log FavoriteNumberSet(user=msg.sender, number=new_number)

@external
def set_person(person_address: address):
    assert person_address != empty(address), "Invalid address"
    self.favorite_people[msg.sender] = person_address
    log FavoritePersonSet(user=msg.sender, person=person_address)

@external
@view
def check_number_match(other_user: address) -> bool:
    return self.favorite_numbers[msg.sender] == self.favorite_numbers[other_user]

@external
def withdraw():
    assert msg.sender == self.owner, "Unauthorized"
    balance: uint256 = self.balance
    send(msg.sender, balance)
    log ContractWithdrawal(amount=balance)
