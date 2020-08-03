{-# LANGUAGE ExtendedDefaultRules #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE QuasiQuotes #-}
{-# LANGUAGE TemplateHaskell #-}
{-# LANGUAGE TypeFamilies #-}

module Main where

import Lib

import Yesod

data App = App

mkYesod "App" [parseRoutes|
    / HomeR GET
|]

instance Yesod App

getHomeR :: HandlerFor App Value
getHomeR = return $ object ["msg" .= "Hello, World"]

main :: IO ()
main = warp 3000 App
