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

    .line 2
    .line 3
    new-instance p1, Landroid/content/Intent;

    .line 4
    .line 5
    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 6
    .line 7
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 13
    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 17
    .line 18
    const-string/jumbo v1, "com.samsung.android.capture.ScreenshotExecutor"

    .line 19
    .line 20
    .line 21
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    const-string/jumbo v1, "capturedOrigin"

    .line 25
    .line 26
    .line 27
    const/16 v2, 0x64

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 30
    .line 31
    .line 32
    const-string/jumbo v1, "callingPackageName"

    .line 33
    .line 34
    .line 35
    const-string/jumbo v2, "com.samsung.accessibility"

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 39
    .line 40
    .line 41
    const-string/jumbo v1, "displayId"

    .line 42
    .line 43
    .line 44
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 49
    .line 50
    .line 51
    const/high16 p1, 0x10000000

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/ScreenShot;->mContext:Landroid/content/Context;

    .line 57
    .line 58
    sget-object p1, Landroid/os/UserHandle;->SEM_CURRENT:Landroid/os/UserHandle;

    .line 59
    .line 60
    const-string/jumbo v1, "com.samsung.permission.CAPTURE"

    .line 61
    .line 62
    .line 63
    invoke-virtual {p0, v0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_0
    return-void
.end method
