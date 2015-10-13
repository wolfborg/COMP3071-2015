-- 
import System.Random
import Data.Map as Map

-- Let's play cards
data Suit = Spades | Hearts | Clubs | Diamonds deriving (Show, Eq, Enum)

-- No matter what the suit happens to be
-- no one is better than the other
instance Ord Suit where
    x <= y = False

data Rank = Two | Three | Four | Five | Six | Seven | Eight | Nine | Ten | Jack | Queen | King | Ace deriving (Show, Eq, Ord, Enum)

data Card = Card {
    rank :: Rank,
    suit :: Suit
} deriving (Eq, Ord)

instance Show Card where
    show (Card rank suit) = (show rank) ++ " of " ++ (show suit)

-- Pack of cards
pack = [Card r s | r <- [Two .. Ace], s <- [Spades .. Diamonds]]

data Facing = Up | Down

data Pile {
    cards :: [Card],
    direction :: Facing
}

-- The idea is that maybe we number the piles, or refer to them by name or an enum
data Game a {
    table :: Map a Pile
}

-- Source: http://en.literateprograms.org/Fisher-Yates_shuffle_%28Haskell%29
shuffle :: [a] -> IO [a]
shuffle l = shuffle' l []

shuffle' [] acc = return acc
shuffle' l acc =
  do k <- randomRIO (0, length l - 1)
     let (lead, x:xs) = splitAt k l
     shuffle' (lead ++ xs) (x:acc)

-- deal
