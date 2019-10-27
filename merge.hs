import qualified Data.Set as Set

uniquemerge xs ys = Set.toList $ Set.fromList (xs ++ ys)