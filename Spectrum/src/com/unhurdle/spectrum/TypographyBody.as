package com.unhurdle.spectrum
{
  COMPILE::JS{
    import org.apache.royale.core.WrappedHTMLElement;
  }

  public class TypographyBody extends Typography
  {
    public function TypographyBody()
    {
      super();
    }
    COMPILE::JS
    override protected function createElement():WrappedHTMLElement{
      return super.createElement();
    }
    override public function set size(value:Number):void{
      super.size = value;
      switch(value){
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:toggle("spectrum-Body"+value,true);
          break;
      }
    }
  }
}