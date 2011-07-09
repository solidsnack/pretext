{-| Format plaintext as an HTML pre-formatted text block, inserting links,
    bolding and italicizing in the style of IRC clients.

    Pretext is intended for basic blogposts on the world wide web as well as
    READMEs and the sort of simple text files that accompany picture
    collections, software and bulk datasets. For this reason, Pretext seeks
    out not only links but also UNIX filepaths, creating links for the latter
    in the HTML output.

 -}
module Text.Pretext where

import Data.ByteString.Char8

import Text.Blaze.Html5
import Data.Attoparsec


Pretext = Plain ByteString | Link ByteString | Path ByteString
deriving instance Eq Pretext
deriving instance Ord Pretext
deriving instance Show Pretext

