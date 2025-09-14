.class public final Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;
.super Lcom/android/server/accessibility/autoaction/actiontype/CornerActionType;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mContext:Landroid/content/Context;

.field public mUserId:I


# virtual methods
.method public final performCornerAction(I)V
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 7
    const-string/jumbo v1, "device_provisioned"

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x1

    .line 16
    if-eqz v0, :cond_0

    .line 18
    move v0, v1

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v0, v2

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 24
    move-result-object p1

    .line 25
    const-string/jumbo v3, "user_setup_complete"

    .line 28
    iget v4, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mUserId:I

    .line 30
    invoke-static {p1, v3, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 33
    move-result p1

    .line 34
    if-eqz p1, :cond_1

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    move v1, v2

    .line 38
    :goto_1
    if-eqz v0, :cond_3

    .line 40
    if-nez v1, :cond_2

    .line 42
    goto :goto_2

    .line 43
    :cond_2
    new-instance p1, Landroid/content/Intent;

    .line 45
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 48
    const-string/jumbo v0, "com.samsung.android.bixby.action.START_WITH_EPD_BIXBY"

    .line 51
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    new-instance v0, Landroid/content/ComponentName;

    .line 56
    const-string/jumbo v1, "com.samsung.android.bixby.agent"

    .line 59
    const-string/jumbo v2, "com.samsung.android.bixby.receiver.WakeupReceiver"

    .line 62
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 68
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 70
    new-instance v0, Landroid/os/UserHandle;

    .line 72
    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    .line 75
    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 78
    goto :goto_4

    .line 79
    :cond_3
    :goto_2
    iget-object p0, p0, Lcom/android/server/accessibility/autoaction/actiontype/TalkToBixby;->mContext:Landroid/content/Context;

    .line 81
    const-string/jumbo p1, "ro.build.characteristics"

    .line 84
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 87
    move-result-object p1

    .line 88
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 91
    move-result v0

    .line 92
    if-nez v0, :cond_4

    .line 94
    const-string/jumbo v0, "tablet"

    .line 97
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 100
    move-result p1

    .line 101
    if-eqz p1, :cond_4

    .line 103
    const p1, 0x1040f41

    .line 106
    goto :goto_3

    .line 107
    :cond_4
    const p1, 0x1040f40

    .line 110
    :goto_3
    invoke-static {p0, p1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 113
    move-result-object p0

    .line 114
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 117
    :goto_4
    return-void
.end method
