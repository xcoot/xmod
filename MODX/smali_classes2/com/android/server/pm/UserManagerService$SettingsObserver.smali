.class public final Lcom/android/server/pm/UserManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/pm/UserManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/pm/UserManagerService;Lcom/android/server/pm/UserManagerService$MainHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onChange(ZLandroid/net/Uri;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/android/server/pm/UserManagerService;->isAutoLockForPrivateSpaceEnabled()Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string/jumbo p2, "private_space_auto_lock"

    .line 12
    .line 13
    .line 14
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/android/server/pm/UserManagerService;->mContext:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iget-object v0, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService;->getMainUserIdUnchecked()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    const/4 v1, 0x2

    .line 35
    invoke-static {p1, p2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    const-string p2, "Auto-lock settings changed to "

    .line 40
    .line 41
    const-string v0, "UserManagerService"

    .line 42
    .line 43
    invoke-static {p1, p2, v0}, Lcom/android/server/HermesService$3$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/pm/UserManagerService$SettingsObserver;->this$0:Lcom/android/server/pm/UserManagerService;

    .line 47
    .line 48
    invoke-virtual {p0, p1}, Lcom/android/server/pm/UserManagerService;->setOrUpdateAutoLockPreferenceForPrivateProfile(I)V

    .line 49
    .line 50
    .line 51
    :cond_0
    return-void
.end method
