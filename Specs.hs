import Test.HUnit
import System.Exit(exitFailure)

main = failOnError =<< runTestTT unitTests

failOnError :: Counts -> IO ()
failOnError (Counts _ _ 0 0) = return ()
failOnError _                = exitFailure

unitTests = test [
  "makes sense" ~: do
    putStrLn "testing"
    assertEqual "1+1=2" 2 (1 + 1)
  ]
