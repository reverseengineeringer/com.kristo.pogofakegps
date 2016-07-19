package android.support.v4.os;

import android.content.Context;
import android.os.UserManager;

public class UserManagerCompatApi24
{
  public static boolean isUserUnlocked(Context paramContext)
  {
    return ((UserManager)paramContext.getSystemService(UserManager.class)).isUserUnlocked();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.os.UserManagerCompatApi24
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */