.class public final Lcom/android/server/wm/BlurController;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mBlurDisabledSetting:Z

.field public volatile mBlurEnabled:Z

.field public final mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

.field public final mContext:Landroid/content/Context;

.field public mCriticalThermalStatus:Z

.field public mInPowerSaveMode:Z

.field public final mLock:Ljava/lang/Object;

.field public mTunnelModeEnabled:Z

.field public final mTunnelModeListener:Lcom/android/server/wm/BlurController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/PowerManager;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/RemoteCallbackList;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 10
    .line 11
    new-instance v0, Ljava/lang/Object;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    .line 17
    .line 18
    const/4 v0, 0x0

    .line 19
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 20
    .line 21
    new-instance v1, Lcom/android/server/wm/BlurController$1;

    .line 22
    .line 23
    new-instance v2, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 24
    .line 25
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/BlurController$1;-><init>(Lcom/android/server/wm/BlurController;Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;)V

    .line 29
    .line 30
    .line 31
    iput-object p1, p0, Lcom/android/server/wm/BlurController;->mContext:Landroid/content/Context;

    .line 32
    .line 33
    new-instance v2, Landroid/content/IntentFilter;

    .line 34
    .line 35
    const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 36
    .line 37
    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    const-string v3, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 41
    .line 42
    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    new-instance v3, Lcom/android/server/wm/BlurController$2;

    .line 46
    .line 47
    invoke-direct {v3, p0, p2}, Lcom/android/server/wm/BlurController$2;-><init>(Lcom/android/server/wm/BlurController;Landroid/os/PowerManager;)V

    .line 48
    .line 49
    .line 50
    const/4 v4, 0x0

    .line 51
    invoke-virtual {p1, v3, v2, v4, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iput-boolean v2, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    const-string v3, "disable_window_blurs"

    .line 65
    .line 66
    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 67
    .line 68
    .line 69
    move-result-object v4

    .line 70
    new-instance v5, Lcom/android/server/wm/BlurController$3;

    .line 71
    .line 72
    invoke-direct {v5, p0}, Lcom/android/server/wm/BlurController$3;-><init>(Lcom/android/server/wm/BlurController;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v4, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    const/4 v2, 0x1

    .line 87
    if-ne p1, v2, :cond_0

    .line 88
    .line 89
    move p1, v2

    .line 90
    goto :goto_0

    .line 91
    :cond_0
    move p1, v0

    .line 92
    :goto_0
    iput-boolean p1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 93
    .line 94
    new-instance p1, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;

    .line 95
    .line 96
    invoke-direct {p1, p0}, Lcom/android/server/wm/BlurController$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BlurController;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p2, p1}, Landroid/os/PowerManager;->addThermalStatusListener(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    .line 103
    .line 104
    .line 105
    move-result p1

    .line 106
    const/4 p2, 0x4

    .line 107
    if-lt p1, p2, :cond_1

    .line 108
    .line 109
    move v0, v2

    .line 110
    :cond_1
    iput-boolean v0, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    .line 111
    .line 112
    invoke-static {v1}, Landroid/view/TunnelModeEnabledListener;->register(Landroid/view/TunnelModeEnabledListener;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0}, Lcom/android/server/wm/BlurController;->updateBlurEnabled()V

    .line 116
    .line 117
    .line 118
    return-void
.end method


# virtual methods
.method public final updateBlurEnabled()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BlurController;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-boolean v1, Landroid/view/CrossWindowBlurListeners;->CROSS_WINDOW_BLUR_SUPPORTED:Z

    .line 5
    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurDisabledSetting:Z

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mInPowerSaveMode:Z

    .line 13
    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mTunnelModeEnabled:Z

    .line 17
    .line 18
    if-nez v1, :cond_0

    .line 19
    .line 20
    iget-boolean v1, p0, Lcom/android/server/wm/BlurController;->mCriticalThermalStatus:Z

    .line 21
    .line 22
    if-nez v1, :cond_0

    .line 23
    .line 24
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    goto :goto_2

    .line 28
    :cond_0
    const/4 v1, 0x0

    .line 29
    :goto_0
    iget-boolean v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 30
    .line 31
    if-ne v2, v1, :cond_1

    .line 32
    .line 33
    monitor-exit v0

    .line 34
    return-void

    .line 35
    :cond_1
    iput-boolean v1, p0, Lcom/android/server/wm/BlurController;->mBlurEnabled:Z

    .line 36
    .line 37
    iget-object v2, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    :catch_0
    :goto_1
    if-lez v2, :cond_2

    .line 44
    .line 45
    add-int/lit8 v2, v2, -0x1

    .line 46
    .line 47
    iget-object v3, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 48
    .line 49
    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    check-cast v3, Landroid/view/ICrossWindowBlurEnabledListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    :try_start_1
    invoke-interface {v3, v1}, Landroid/view/ICrossWindowBlurEnabledListener;->onCrossWindowBlurEnabledChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 56
    .line 57
    .line 58
    goto :goto_1

    .line 59
    :cond_2
    :try_start_2
    iget-object p0, p0, Lcom/android/server/wm/BlurController;->mBlurEnabledListeners:Landroid/os/RemoteCallbackList;

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 62
    .line 63
    .line 64
    monitor-exit v0

    .line 65
    return-void

    .line 66
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p0
.end method
