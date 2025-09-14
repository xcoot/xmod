.class public final Lcom/android/server/DockObserver$1;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    .line 2
    .line 3
    const/4 p1, 0x1

    .line 4
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_1

    .line 6
    .line 7
    :cond_0
    iget-object p1, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    .line 8
    .line 9
    const-string v0, "Dock state changed from "

    .line 10
    .line 11
    iget-object v1, p1, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 12
    .line 13
    monitor-enter v1

    .line 14
    :try_start_0
    const-string v2, "DockObserver"

    .line 15
    .line 16
    new-instance v3, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    iget v0, p1, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 22
    .line 23
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v0, " to "

    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v0, p1, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 32
    .line 33
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    iget v0, p1, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 44
    .line 45
    iput v0, p1, Lcom/android/server/DockObserver;->mPreviousDockState:I

    .line 46
    .line 47
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 52
    .line 53
    .line 54
    iget-object v0, p1, Lcom/android/server/DockObserver;->mDeviceProvisionedObserver:Lcom/android/server/DockObserver$DeviceProvisionedObserver;

    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    const-string p1, "DockObserver"

    .line 63
    .line 64
    const-string v0, "Device not provisioned, skipping dock broadcast"

    .line 65
    .line 66
    invoke-static {p1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    monitor-exit v1

    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_1
    iget-object v0, p1, Lcom/android/server/DockObserver;->mLogRecent:Lcom/android/server/DockObserver$LogRecent;

    .line 74
    .line 75
    if-eqz v0, :cond_2

    .line 76
    .line 77
    iget v2, p1, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 78
    .line 79
    iget-object v3, p1, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 80
    .line 81
    const/4 v4, 0x1

    .line 82
    invoke-virtual {v0, v4, v2, v3}, Lcom/android/server/DockObserver$LogRecent;->log(IILjava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :cond_2
    new-instance v0, Landroid/content/Intent;

    .line 86
    .line 87
    const-string v2, "android.intent.action.DOCK_EVENT"

    .line 88
    .line 89
    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const/high16 v2, 0x20000000

    .line 93
    .line 94
    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 95
    .line 96
    .line 97
    const-string v2, "android.intent.extra.DOCK_STATE"

    .line 98
    .line 99
    iget v3, p1, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 100
    .line 101
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 102
    .line 103
    .line 104
    iget v2, p1, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 105
    .line 106
    const/16 v3, 0xc8

    .line 107
    .line 108
    if-ne v2, v3, :cond_3

    .line 109
    .line 110
    iget-object v2, p1, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 111
    .line 112
    if-eqz v2, :cond_3

    .line 113
    .line 114
    const-string v3, ""

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    move-result v2

    .line 120
    if-nez v2, :cond_3

    .line 121
    .line 122
    const-string/jumbo v2, "com.sec.intent.extra.DOCK_ID"

    .line 123
    .line 124
    .line 125
    iget-object v3, p1, Lcom/android/server/DockObserver;->mReportedUsbpdIds:Ljava/lang/String;

    .line 126
    .line 127
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 128
    .line 129
    .line 130
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 135
    .line 136
    invoke-virtual {p1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 137
    .line 138
    .line 139
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 140
    :goto_0
    iget-object p0, p0, Lcom/android/server/DockObserver$1;->this$0:Lcom/android/server/DockObserver;

    .line 141
    .line 142
    iget-object p0, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 143
    .line 144
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 145
    .line 146
    .line 147
    :goto_1
    return-void

    .line 148
    :goto_2
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 149
    throw p0
.end method
