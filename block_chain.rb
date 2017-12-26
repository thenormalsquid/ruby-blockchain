# Learn about blockchain and ruby 

# example block:
# block = {
#     'index': 1,
#     'timestamp': 1506057125.900785,
#     'transactions': [
#         {
#             'sender': "8527147fe1f5426f9dd545de4b27ee00",
#             'recipient': "a77f5cdfa2934df3954a5c7c7da5df1f",
#             'amount': 5,
#         }
#     ],
#     'proof': 324984774000,
#     'previous_hash': "2cf24dba5fb0a30e26e83b2ac5b9e29e1b161e5c1fa7425e73043362938b9824"
# }

# hashes a block instance
def hash(block)
    puts block
end

class BlockChain
    def initialize
        @chain = [] 
        @current_transactions = [] # array of transactions
        
        self.new_block(100, hash = 1)
    end

    def new_block(proof, hash = nil)
        # @param proof: <int> given by the proof of work algorithm
        # @param hash: <Optional> hash of previous block
        block = {
            :index => @chain.length + 1,
            :timestamp => Time.now.getutc,
            :transactions => @current_transactions,
            :proof => proof,
            :previoush_hash => hash
        }
        # reinitialize the transactions
        @current_transactions = []

        @chain.push(block)

        return block
    end

    def new_transaction(sender, recipient, amount)
        @current_transactions.push({
            :sender => sender,
            :recipient => recipient,
            :amount => amount
        })
        return @last_block["index"] + 1
    end

    attr_accessor :last_block
end
