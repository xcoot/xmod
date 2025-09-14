.class public final Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;


# virtual methods
.method public final performCornerAction(I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 5
    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 18
    const-string/jumbo v1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 24
    const-string/jumbo v1, "capturedOrigin"

    .line 27
    const/16 v2, 0x64

    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 32
    const-string/jumbo v1, "callingPackageName"

    .line 35
    const-string/jumbo v2, "com.samsung.accessibility"

    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 41
    const-string/jumbo v1, "displayId"

    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    const/high16 p1, 0x10000000

    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 56
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 58
    sget-object p1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    .line 60
    const-string/jumbo v1, "com.samsung.permission.CAPTURE"

    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 66
    :goto_0
    return-void
.end method
