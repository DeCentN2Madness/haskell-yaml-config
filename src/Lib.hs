{-# LANGUAGE OverloadedStrings #-}
module Lib
    ( someFunc
    ) where

import Data.Yaml.Config (load, subconfig, lookupDefault)

someFunc :: IO ()
someFunc = do
  configFile <- load "./config.yaml"
  cfg <- subconfig "config" configFile
  let items = lookupDefault "items" [] cfg

  mapM_ putStrLn items
