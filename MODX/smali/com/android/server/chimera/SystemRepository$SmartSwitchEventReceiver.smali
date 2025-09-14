.class public final Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mOnStart:Z

.field public mOnTransfer:Z


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    if-nez p2, :cond_0

    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    const/4 v2, -0x1

    .line 14
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v3

    .line 18
    sparse-switch v3, :sswitch_data_0

    .line 21
    goto :goto_0

    .line 22
    :sswitch_0
    const-string/jumbo v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_FINISH"

    .line 25
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-nez v1, :cond_1

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 v2, 0x3

    .line 33
    goto :goto_0

    .line 34
    :sswitch_1
    const-string/jumbo v3, "com.samsung.android.intent.SMARTSWITCH_TRANSFER"

    .line 37
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 41
    if-nez v1, :cond_2

    .line 43
    goto :goto_0

    .line 44
    :cond_2
    const/4 v2, 0x2

    .line 45
    goto :goto_0

    .line 46
    :sswitch_2
    const-string/jumbo v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_ONGOING"

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v1

    .line 53
    if-nez v1, :cond_3

    .line 55
    goto :goto_0

    .line 56
    :cond_3
    move v2, p1

    .line 57
    goto :goto_0

    .line 58
    :sswitch_3
    const-string/jumbo v3, "com.samsung.android.intent.action.SMARTSWITCH_WORK_START"

    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_4

    .line 67
    goto :goto_0

    .line 68
    :cond_4
    move v2, v0

    .line 69
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 72
    goto :goto_1

    .line 73
    :pswitch_0
    iput-boolean v0, p0, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 75
    goto :goto_1

    .line 76
    :pswitch_1
    const-string/jumbo p1, "smartswitch_transfer"

    .line 79
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 82
    move-result p1

    .line 83
    iput-boolean p1, p0, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 85
    goto :goto_1

    .line 86
    :pswitch_2
    iput-boolean p1, p0, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 88
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 90
    const-string p2, "SmartSwitchEventReceiver() - mOnStart: "

    .line 92
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 95
    iget-boolean p2, p0, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnStart:Z

    .line 97
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 100
    const-string p2, ", mOnTransfer: "

    .line 102
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    iget-boolean p0, p0, Lcom/android/server/chimera/SystemRepository$SmartSwitchEventReceiver;->mOnTransfer:Z

    .line 107
    const-string p2, "SystemRepositoryDefault"

    .line 109
    invoke-static {p2, p1, p0}, Lcom/android/server/accessibility/FlashNotificationsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/StringBuilder;Z)V

    .line 112
    return-void

    .line 113
    :sswitch_data_0
    .sparse-switch
        -0x59dc8c44 -> :sswitch_3
        -0x326d7bab -> :sswitch_2
        -0x2b1b6001 -> :sswitch_1
        0x786c859 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
