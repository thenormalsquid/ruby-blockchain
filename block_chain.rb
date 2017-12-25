# Learn about blockchain and ruby 

class BlockChain
    class << BlockChain
        def hash(block)
            puts block
        end
    end

    def initialize(chain, current_transactions)
        @chain = chain
        @current_transactions = current_transactions
    end

    def new_block
    end

    def new_transaction
    end

    def last_block
        # returns last block in the chain
    end
end