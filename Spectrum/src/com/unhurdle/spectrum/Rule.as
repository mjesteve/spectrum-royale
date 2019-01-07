package com.unhurdle.spectrum
{
   COMPILE::JS
  {
    import org.apache.royale.html.util.addElementToWrapper;
    import org.apache.royale.core.WrappedHTMLElement;
  }
  public class Rule extends SpectrumBase
  {
    public function Rule()
    {
      super();
      size = "medium";
    }
    override protected function getSelector():String{
      return "spectrum-Rule";
    }

    COMPILE::JS
    override protected function createElement():WrappedHTMLElement{
      return addElementToWrapper(this,"hr");;
    }
    
        private var _size:String;

        public function get size():String
        {
            return _size;
        }
        public function set size(value:String):void
        {
            if(value != _size){
                switch (value){
                  case "small":
                  case "medium":
                  case "large":
                      break;
                  default:
                      throw new Error("Invalid size: " + value);
                }
                if(_size){
                  toggle(valueToSelector(_size), false);
                }
                toggle(valueToSelector(value), true);
                _size = value;
            }
        }
  }
}