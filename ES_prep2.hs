import Data.Char


-- Caesar Cipher
encode shift msg =  
                let ords = map ord msg
                    shifted = map (+ shift ) ords in map chr shifted

-- another method to do Caesar Cipher
encode' shift msg = map chr $ map (+shift) $ map ord msg 

-- To decode the Caesar Cipher 
decode shift msg = map chr $ map (\x -> x-shift) $ map ord msg