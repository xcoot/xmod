.class public final Lcom/android/server/power/LowPowerStandbyController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/power/LowPowerStandbyController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/power/LowPowerStandbyController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 11
    .line 12
    monitor-enter p1

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 16
    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0

    .line 23
    :pswitch_0
    const-string p1, "android.intent.extra.REPLACING"

    .line 24
    .line 25
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-eqz p1, :cond_0

    .line 30
    .line 31
    goto :goto_2

    .line 32
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    if-eqz p1, :cond_1

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    const/4 p1, 0x0

    .line 44
    :goto_0
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 45
    .line 46
    iget-object v1, p2, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 47
    .line 48
    monitor-enter v1

    .line 49
    :try_start_1
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 50
    .line 51
    invoke-virtual {p2}, Lcom/android/server/power/LowPowerStandbyController;->getPolicy()Landroid/os/PowerManager$LowPowerStandbyPolicy;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {p2}, Landroid/os/PowerManager$LowPowerStandbyPolicy;->getExemptPackages()Ljava/util/Set;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    invoke-interface {p2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 66
    .line 67
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->enqueueNotifyAllowlistChangedLocked()V

    .line 68
    .line 69
    .line 70
    goto :goto_1

    .line 71
    :catchall_1
    move-exception p0

    .line 72
    goto :goto_3

    .line 73
    :cond_2
    :goto_1
    monitor-exit v1

    .line 74
    :goto_2
    return-void

    .line 75
    :goto_3
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 76
    throw p0

    .line 77
    :pswitch_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object p2

    .line 81
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 82
    .line 83
    .line 84
    const/4 v1, -0x1

    .line 85
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    sparse-switch v2, :sswitch_data_0

    .line 90
    .line 91
    .line 92
    goto :goto_4

    .line 93
    :sswitch_0
    const-string v2, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    .line 94
    .line 95
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    move-result p2

    .line 99
    if-nez p2, :cond_3

    .line 100
    .line 101
    goto :goto_4

    .line 102
    :cond_3
    const/4 v1, 0x2

    .line 103
    goto :goto_4

    .line 104
    :sswitch_1
    const-string v2, "android.intent.action.SCREEN_ON"

    .line 105
    .line 106
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-nez p2, :cond_4

    .line 111
    .line 112
    goto :goto_4

    .line 113
    :cond_4
    move v1, p1

    .line 114
    goto :goto_4

    .line 115
    :sswitch_2
    const-string v2, "android.intent.action.SCREEN_OFF"

    .line 116
    .line 117
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-nez p2, :cond_5

    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_5
    move v1, v0

    .line 125
    :goto_4
    packed-switch v1, :pswitch_data_1

    .line 126
    .line 127
    .line 128
    goto :goto_6

    .line 129
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 130
    .line 131
    iget-object p2, p0, Lcom/android/server/power/LowPowerStandbyController;->mLock:Ljava/lang/Object;

    .line 132
    .line 133
    monitor-enter p2

    .line 134
    :try_start_2
    iget-object v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mPowerManager:Landroid/os/PowerManager;

    .line 135
    .line 136
    invoke-virtual {v1}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    .line 137
    .line 138
    .line 139
    move-result v1

    .line 140
    iput-boolean v1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIsDeviceIdle:Z

    .line 141
    .line 142
    iget-boolean v2, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 143
    .line 144
    if-nez v2, :cond_7

    .line 145
    .line 146
    if-eqz v1, :cond_6

    .line 147
    .line 148
    goto :goto_5

    .line 149
    :cond_6
    move p1, v0

    .line 150
    :cond_7
    :goto_5
    iput-boolean p1, p0, Lcom/android/server/power/LowPowerStandbyController;->mIdleSinceNonInteractive:Z

    .line 151
    .line 152
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->updateActiveLocked()V

    .line 153
    .line 154
    .line 155
    monitor-exit p2

    .line 156
    goto :goto_6

    .line 157
    :catchall_2
    move-exception p0

    .line 158
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 159
    throw p0

    .line 160
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 161
    .line 162
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onInteractive()V

    .line 163
    .line 164
    .line 165
    goto :goto_6

    .line 166
    :pswitch_4
    iget-object p0, p0, Lcom/android/server/power/LowPowerStandbyController$1;->this$0:Lcom/android/server/power/LowPowerStandbyController;

    .line 167
    .line 168
    invoke-virtual {p0}, Lcom/android/server/power/LowPowerStandbyController;->onNonInteractive()V

    .line 169
    .line 170
    .line 171
    :goto_6
    return-void

    .line 172
    nop

    .line 173
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :sswitch_data_0
    .sparse-switch
        -0x7ed8ea7f -> :sswitch_2
        -0x56ac2893 -> :sswitch_1
        0x33e5d967 -> :sswitch_0
    .end sparse-switch

    .line 182
    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    .line 188
    .line 189
    .line 190
    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method
