import Data.Char
import Data.Maybe


-- Caesar Cipher
encode shift msg =  
                let ords = map ord msg
                    shifted = map (+ shift ) ords in map chr shifted

-- another method to do Caesar Cipher
encode' shift msg = map chr $ map (+shift) $ map ord msg 

-- To decode the Caesar Cipher 
decode shift msg = map chr $ map (\x -> x-shift) $ map ord msg

-- Make first word as capital and the rest small
wordcap (x:xs) = toUpper x : [toLower x | x<-xs]
