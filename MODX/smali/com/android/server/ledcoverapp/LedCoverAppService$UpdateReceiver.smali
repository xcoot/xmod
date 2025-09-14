.class public final Lcom/android/server/ledcoverapp/LedCoverAppService$UpdateReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 1
    if-nez p2, :cond_0

    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 8
    if-eqz p0, :cond_2

    .line 10
    const-string p2, "android.intent.action.PACKAGE_REPLACED"

    .line 12
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    move-result p2

    .line 16
    if-nez p2, :cond_1

    .line 18
    const-string p2, "android.intent.action.PACKAGE_ADDED"

    .line 20
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result p0

    .line 24
    if-nez p0, :cond_1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {p1}, Lcom/android/server/ledcoverapp/LedCoverAppService;->backgroundAllowlist(Landroid/content/Context;)V

    .line 30
    :cond_2
    :goto_0
    return-void
.end method
