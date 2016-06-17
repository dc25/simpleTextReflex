import Reflex.Dom

fps = "style" =: "display:inline-block;  margin:10px;  border-style:solid;  border-width:1px"
bps w = "style" =: ("display:inline-block;  margin:10px;  border-style:solid;  border-width:" ++ show w ++ "px")

main :: IO ()
main = mainWidget $ do
    el "div" $ text "helloWorld"
    ti <- elAttr "div" fps $ textInput def
    let dText = value ti
    dBps <- mapDyn (bps.length) dText
    elDynAttr "div"  dBps $ dynText dText
    return ()
    
