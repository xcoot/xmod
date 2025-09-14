.class public final Lcom/android/server/DeviceIdleController$1;
.super Landroid/content/BroadcastReceiver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/DeviceIdleController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/server/DeviceIdleController$1;->$r8$classId:I

    .line 2
    .line 3
    iput-object p1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

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
    .locals 4

    .line 1
    const/4 p1, 0x1

    .line 2
    const/4 v0, 0x0

    .line 3
    iget v1, p0, Lcom/android/server/DeviceIdleController$1;->$r8$classId:I

    .line 4
    .line 5
    packed-switch v1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 9
    .line 10
    monitor-enter v1

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 12
    .line 13
    invoke-virtual {p0}, Lcom/android/server/DeviceIdleController;->updateInteractivityLocked()V

    .line 14
    .line 15
    .line 16
    monitor-exit v1

    .line 17
    return-void

    .line 18
    :catchall_0
    move-exception p0

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p0

    .line 21
    :pswitch_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    .line 27
    .line 28
    const/4 v2, -0x1

    .line 29
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    sparse-switch v3, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :sswitch_0
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v2, 0x2

    .line 47
    goto :goto_0

    .line 48
    :sswitch_1
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 49
    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_1
    move v2, p1

    .line 58
    goto :goto_0

    .line 59
    :sswitch_2
    const-string v3, "android.intent.action.BATTERY_CHANGED"

    .line 60
    .line 61
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    .line 63
    .line 64
    move-result v1

    .line 65
    if-nez v1, :cond_2

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_2
    move v2, v0

    .line 69
    :goto_0
    packed-switch v2, :pswitch_data_1

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :pswitch_1
    const-string p1, "android.intent.extra.REPLACING"

    .line 74
    .line 75
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_5

    .line 80
    .line 81
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    if-eqz p1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    if-eqz p1, :cond_5

    .line 92
    .line 93
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 94
    .line 95
    const/4 p2, 0x5

    .line 96
    const/4 v0, 0x0

    .line 97
    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/DeviceIdleController;->removePowerSaveWhitelistAppInternal(Ljava/lang/String;ILcom/android/server/DeviceIdleController$TargetPkg;)Z

    .line 98
    .line 99
    .line 100
    goto :goto_3

    .line 101
    :pswitch_2
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 102
    .line 103
    invoke-virtual {p0, p2}, Lcom/android/server/DeviceIdleController;->updateConnectivityState(Landroid/content/Intent;)V

    .line 104
    .line 105
    .line 106
    goto :goto_3

    .line 107
    :pswitch_3
    const-string/jumbo v1, "present"

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    const-string/jumbo v2, "plugged"

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 118
    .line 119
    .line 120
    move-result p2

    .line 121
    if-eqz p2, :cond_3

    .line 122
    .line 123
    move p2, p1

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    move p2, v0

    .line 126
    :goto_1
    iget-object v2, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 127
    .line 128
    monitor-enter v2

    .line 129
    :try_start_1
    iget-object p0, p0, Lcom/android/server/DeviceIdleController$1;->this$0:Lcom/android/server/DeviceIdleController;

    .line 130
    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    if-eqz p2, :cond_4

    .line 134
    .line 135
    goto :goto_2

    .line 136
    :cond_4
    move p1, v0

    .line 137
    :goto_2
    invoke-virtual {p0, p1}, Lcom/android/server/DeviceIdleController;->updateChargingLocked(Z)V

    .line 138
    .line 139
    .line 140
    monitor-exit v2

    .line 141
    :cond_5
    :goto_3
    return-void

    .line 142
    :catchall_1
    move-exception p0

    .line 143
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 144
    throw p0

    .line 145
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    :sswitch_data_0
    .sparse-switch
        -0x5bb23923 -> :sswitch_2
        -0x45e5283a -> :sswitch_1
        0x1f50b9c2 -> :sswitch_0
    .end sparse-switch

    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
