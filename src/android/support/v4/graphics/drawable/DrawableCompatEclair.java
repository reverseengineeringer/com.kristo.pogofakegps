package android.support.v4.graphics.drawable;

import android.graphics.drawable.Drawable;

class DrawableCompatEclair
{
  public static Drawable wrapForTinting(Drawable paramDrawable)
  {
    Object localObject = paramDrawable;
    if (!(paramDrawable instanceof TintAwareDrawable)) {
      localObject = new DrawableWrapperEclair(paramDrawable);
    }
    return (Drawable)localObject;
  }
}

/* Location:
 * Qualified Name:     android.support.v4.graphics.drawable.DrawableCompatEclair
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */