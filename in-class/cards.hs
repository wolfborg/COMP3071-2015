-- Let's play war
data Suit = Spades | Hearts | Clubs | Diamonds deriving (Show, Eq, Enum)

-- No matter what the suit happens to be
-- no one is better than the other
instance Ord Suit where
    x <= y = False

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving (Show, Eq, Ord, Enum)

data Card = Card {
    rank :: Rank,
    suit :: Suit
} deriving (Show, Eq, Ord)

-- Card Ace Spades
pack = [Card r s | r <- [Two .. Ace], s <- [Spades .. Diamonds]]
