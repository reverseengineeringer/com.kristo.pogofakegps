package android.support.v4.animation;

import android.animation.Animator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.view.View;

class HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat
  implements ValueAnimatorCompat
{
  final Animator mWrapped;
  
  public HoneycombMr1AnimatorCompatProvider$HoneycombValueAnimatorCompat(Animator paramAnimator)
  {
    mWrapped = paramAnimator;
  }
  
  public void addListener(AnimatorListenerCompat paramAnimatorListenerCompat)
  {
    mWrapped.addListener(new HoneycombMr1AnimatorCompatProvider.AnimatorListenerCompatWrapper(paramAnimatorListenerCompat, this));
  }
  
  public void addUpdateListener(final AnimatorUpdateListenerCompat paramAnimatorUpdateListenerCompat)
  {
    if ((mWrapped instanceof ValueAnimator)) {
      ((ValueAnimator)mWrapped).addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
      {
        public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
        {
          paramAnimatorUpdateListenerCompat.onAnimationUpdate(HoneycombMr1AnimatorCompatProvider.HoneycombValueAnimatorCompat.this);
        }
      });
    }
  }
  
  public void cancel()
  {
    mWrapped.cancel();
  }
  
  public float getAnimatedFraction()
  {
    return ((ValueAnimator)mWrapped).getAnimatedFraction();
  }
  
  public void setDuration(long paramLong)
  {
    mWrapped.setDuration(paramLong);
  }
  
  public void setTarget(View paramView)
  {
    mWrapped.setTarget(paramView);
  }
  
  public void start()
  {
    mWrapped.start();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.animation.HoneycombMr1AnimatorCompatProvider.HoneycombValueAnimatorCompat
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */