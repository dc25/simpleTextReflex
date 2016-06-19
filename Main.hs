import Reflex.Dom

fps = "style" =: "display:inline-block;  margin:10px;  border-style:solid;  border-width:1px"

bps len = "style" =: ("display:inline-block;  margin:10px;  border-style:solid;  border-width:" ++ show len ++ "px")

main = mainWidget $ do
    elAttr "div" fps $ text "helloworld"
    ti <- elAttr "div" fps $ textInput def
    let dString = value ti
    dStyle <- mapDyn (bps.length) dString
    elDynAttr "div" dStyle $ dynText dString
    return ()


