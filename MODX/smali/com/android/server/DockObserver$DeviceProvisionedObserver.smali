.class public final Lcom/android/server/DockObserver$DeviceProvisionedObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mRegistered:Z

.field public final synthetic this$0:Lcom/android/server/DockObserver;


# direct methods
.method public constructor <init>(Lcom/android/server/DockObserver;Lcom/android/server/DockObserver$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
.end method


# virtual methods
.method public final isDeviceProvisioned()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 10
    move-result-object p0

    .line 11
    const-string/jumbo v0, "device_provisioned"

    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 18
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 v1, 0x1

    .line 22
    :cond_0
    return v1
.end method

.method public final onChange(ZLandroid/net/Uri;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 3
    iget-object p1, p1, Lcom/android/server/DockObserver;->mLock:Ljava/lang/Object;

    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->updateRegistration()V

    .line 9
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    .line 12
    move-result p2

    .line 13
    if-eqz p2, :cond_0

    .line 15
    iget-object p0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 17
    iget p2, p0, Lcom/android/server/DockObserver;->mReportedDockState:I

    .line 19
    if-eqz p2, :cond_0

    .line 21
    iget-object p2, p0, Lcom/android/server/DockObserver;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 23
    invoke-virtual {p2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 26
    iget-object p0, p0, Lcom/android/server/DockObserver;->mHandler:Lcom/android/server/DockObserver$1;

    .line 28
    const/4 p2, 0x0

    .line 29
    invoke-virtual {p0, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 32
    goto :goto_0

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    goto :goto_1

    .line 35
    :cond_0
    :goto_0
    monitor-exit p1

    .line 36
    return-void

    .line 37
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    throw p0
.end method

.method public final updateRegistration()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->isDeviceProvisioned()Z

    .line 4
    move-result v0

    .line 5
    xor-int/lit8 v0, v0, 0x1

    .line 7
    iget-boolean v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    .line 9
    if-ne v0, v1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->this$0:Lcom/android/server/DockObserver;

    .line 14
    invoke-virtual {v1}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 21
    move-result-object v1

    .line 22
    if-eqz v0, :cond_1

    .line 24
    const-string/jumbo v2, "device_provisioned"

    .line 27
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 30
    move-result-object v2

    .line 31
    const/4 v3, 0x0

    .line 32
    invoke-virtual {v1, v2, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 35
    goto :goto_0

    .line 36
    :cond_1
    invoke-virtual {v1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 39
    :goto_0
    iput-boolean v0, p0, Lcom/android/server/DockObserver$DeviceProvisionedObserver;->mRegistered:Z

    .line 41
    return-void
.end method
