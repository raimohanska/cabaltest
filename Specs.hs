import Test.HUnit
import Test.Hspec
import System.Exit(exitFailure)

main = do failOnError =<< runTestTT unitTests
          hspecX specs

failOnError :: Counts -> IO ()
failOnError (Counts _ _ 0 0) = return ()
failOnError _                = exitFailure

unitTests = test [
  "makes sense" ~: do
    putStrLn "testing"
    assertEqual "1+1=2" 2 (1 + 1)
  ]

specs = describe "Plus function" [
  it "calculates the sum of two number" (1 + 1 == 2)
  ] 
