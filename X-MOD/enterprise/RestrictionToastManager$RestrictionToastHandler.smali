.class public final Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 1
    iget p0, p1, Landroid/os/Message;->what:I

    .line 3
    const-string v0, "RestrictionToastManager"

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq p0, v1, :cond_1

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq p0, v2, :cond_0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 15
    move-result-object p0

    .line 16
    const-string/jumbo p1, "message"

    .line 19
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_2

    .line 25
    sget-object p1, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 27
    if-eqz p1, :cond_2

    .line 29
    :try_start_0
    new-instance p1, Landroid/view/ContextThemeWrapper;

    .line 31
    sget-object v2, Lcom/android/server/enterprise/RestrictionToastManager;->mContext:Landroid/content/Context;

    .line 33
    const v3, 0x103012b

    .line 36
    invoke-direct {p1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 39
    invoke-static {p1, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 42
    move-result-object p0

    .line 43
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p0

    .line 48
    new-instance p1, Ljava/lang/StringBuilder;

    .line 50
    const-string/jumbo v1, "displayToast fail : "

    .line 53
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 56
    invoke-static {p0, p1, v0}, Lcom/android/server/enterprise/RestrictionToastManager$RestrictionToastHandler$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    sget-object p0, Lcom/android/server/enterprise/RestrictionToastManager;->mRecentlyDisplayedMsgQueue:Ljava/util/ArrayList;

    .line 62
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 64
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 67
    new-instance p0, Ljava/lang/StringBuilder;

    .line 69
    const-string v1, "Removed message from recently displayed queue: "

    .line 71
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    :cond_2
    :goto_0
    return-void
.end method
