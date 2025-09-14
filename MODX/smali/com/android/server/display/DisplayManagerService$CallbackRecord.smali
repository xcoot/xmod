.class public final Lcom/android/server/display/DisplayManagerService$CallbackRecord;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mCallback:Landroid/hardware/display/IDisplayManagerCallback;

.field public final mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

.field public final mPackageName:Ljava/lang/String;

.field public final mPid:I

.field public final mUid:I

.field public mWifiDisplayScanRequested:Z

.field public mWifiDisplayScanRequestedTime:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/display/DisplayManagerService;


# direct methods
.method public constructor <init>(IIJLandroid/hardware/display/IDisplayManagerCallback;Lcom/android/server/display/DisplayManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p6, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 6
    iput p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 8
    iput p2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mUid:I

    .line 10
    iput-object p5, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 12
    new-instance p1, Ljava/util/concurrent/atomic/AtomicLong;

    .line 14
    invoke-direct {p1, p3, p4}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    .line 17
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 19
    iget-object p1, p6, Lcom/android/server/display/DisplayManagerService;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 24
    move-result-object p1

    .line 25
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 29
    if-nez p1, :cond_0

    .line 31
    const/4 p1, 0x0

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    const/4 p2, 0x0

    .line 34
    aget-object p1, p1, p2

    .line 36
    :goto_0
    iput-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    .line 38
    return-void
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/server/display/DisplayManagerService;->DEBUG:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 7
    iget-object v1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 15
    :cond_0
    const-string v0, "DisplayManagerService"

    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "Display listener for pid "

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget v2, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    const-string v2, " died."

    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 38
    invoke-static {v0, v1}, Lcom/android/server/power/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :cond_1
    const-wide/32 v0, 0x20000

    .line 44
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 47
    move-result v2

    .line 48
    if-eqz v2, :cond_2

    .line 50
    new-instance v2, Ljava/lang/StringBuilder;

    .line 52
    const-string/jumbo v3, "displayManagerBinderDied#mPid="

    .line 55
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 58
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    move-result-object v2

    .line 67
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 72
    iget-object v1, v0, Lcom/android/server/display/DisplayManagerService;->mSyncRoot:Lcom/android/server/display/DisplayManagerService$SyncRoot;

    .line 74
    monitor-enter v1

    .line 75
    :try_start_0
    iget-object v2, v0, Lcom/android/server/display/DisplayManagerService;->mCallbacks:Landroid/util/SparseArray;

    .line 77
    iget v3, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 79
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 82
    invoke-virtual {v0, p0}, Lcom/android/server/display/DisplayManagerService;->stopWifiDisplayScanLocked(Lcom/android/server/display/DisplayManagerService$CallbackRecord;)V

    .line 85
    monitor-exit v1

    .line 86
    return-void

    .line 87
    :catchall_0
    move-exception p0

    .line 88
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 89
    throw p0
.end method

.method public final notifyDisplayEventAsync(II)Z
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    .line 6
    move-result-wide v0

    .line 7
    const/4 v2, 0x1

    .line 8
    const-string v3, "DisplayManagerService"

    .line 10
    const-wide/16 v4, 0x0

    .line 12
    packed-switch p2, :pswitch_data_0

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "Unknown display event "

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v0}, Lcom/android/server/power/Slog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    goto :goto_0

    .line 33
    :pswitch_0
    const-wide/16 v6, 0x20

    .line 35
    and-long/2addr v0, v6

    .line 36
    cmp-long v0, v0, v4

    .line 38
    if-eqz v0, :cond_0

    .line 40
    goto :goto_0

    .line 41
    :pswitch_1
    const-wide/16 v6, 0x10

    .line 43
    and-long/2addr v0, v6

    .line 44
    cmp-long v0, v0, v4

    .line 46
    if-eqz v0, :cond_0

    .line 48
    goto :goto_0

    .line 49
    :pswitch_2
    const-wide/16 v6, 0x8

    .line 51
    and-long/2addr v0, v6

    .line 52
    cmp-long v0, v0, v4

    .line 54
    if-eqz v0, :cond_0

    .line 56
    goto :goto_0

    .line 57
    :pswitch_3
    const-wide/16 v6, 0x2

    .line 59
    and-long/2addr v0, v6

    .line 60
    cmp-long v0, v0, v4

    .line 62
    if-eqz v0, :cond_0

    .line 64
    goto :goto_0

    .line 65
    :pswitch_4
    const-wide/16 v6, 0x4

    .line 67
    and-long/2addr v0, v6

    .line 68
    cmp-long v0, v0, v4

    .line 70
    if-eqz v0, :cond_0

    .line 72
    goto :goto_0

    .line 73
    :pswitch_5
    const-wide/16 v6, 0x1

    .line 75
    and-long/2addr v0, v6

    .line 76
    cmp-long v0, v0, v4

    .line 78
    if-eqz v0, :cond_0

    .line 80
    :goto_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mCallback:Landroid/hardware/display/IDisplayManagerCallback;

    .line 82
    invoke-interface {v0, p1, p2}, Landroid/hardware/display/IDisplayManagerCallback;->onDisplayEvent(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return v2

    .line 86
    :catch_0
    move-exception p1

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    const-string v0, "Failed to notify process "

    .line 91
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    iget v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPid:I

    .line 96
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    const-string v0, " that displays changed, assuming it died."

    .line 101
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    move-result-object p2

    .line 108
    invoke-static {p2, p1}, Lcom/android/server/power/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->binderDied()V

    .line 114
    const/4 p0, 0x0

    .line 115
    return p0

    .line 116
    :cond_0
    iget-object p1, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->this$0:Lcom/android/server/display/DisplayManagerService;

    .line 118
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mPackageName:Ljava/lang/String;

    .line 120
    invoke-virtual {p1, v0}, Lcom/android/server/display/DisplayManagerService;->extraLogging(Ljava/lang/String;)Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_1

    .line 126
    const-string p1, "Not sending displayEvent: "

    .line 128
    const-string v0, " due to mask:"

    .line 130
    invoke-static {p2, p1, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    move-result-object p1

    .line 134
    iget-object v0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 136
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 143
    invoke-static {v3, p1}, Lcom/android/server/power/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :cond_1
    const-wide/32 v0, 0x20000

    .line 149
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 152
    move-result p1

    .line 153
    if-eqz p1, :cond_2

    .line 155
    const-string/jumbo p1, "notifyDisplayEventAsync#notSendingEvent="

    .line 158
    const-string v3, ",mEventsMask="

    .line 160
    invoke-static {p2, p1, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    move-result-object p1

    .line 164
    iget-object p0, p0, Lcom/android/server/display/DisplayManagerService$CallbackRecord;->mEventsMask:Ljava/util/concurrent/atomic/AtomicLong;

    .line 166
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object p0

    .line 173
    invoke-static {v0, v1, p0}, Landroid/os/Trace;->instant(JLjava/lang/String;)V

    .line 176
    :cond_2
    return v2

    .line 177
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
