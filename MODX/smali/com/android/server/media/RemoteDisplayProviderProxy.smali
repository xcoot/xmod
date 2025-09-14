.class public final Lcom/android/server/media/RemoteDisplayProviderProxy;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

.field public mBound:Z

.field public final mComponentName:Landroid/content/ComponentName;

.field public mConnectionReady:Z

.field public final mContext:Landroid/content/Context;

.field public mDiscoveryMode:I

.field public mDisplayState:Landroid/media/RemoteDisplayState;

.field public mDisplayStateCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$Callback;

.field public final mDisplayStateChanged:Lcom/android/server/media/RemoteDisplayProviderProxy$1;

.field public final mHandler:Landroid/os/Handler;

.field public mRunning:Z

.field public mScheduledDisplayStateChangedCallback:Z

.field public mSelectedDisplayId:Ljava/lang/String;

.field public final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, p0}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(ILjava/lang/Object;)V

    .line 10
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    .line 12
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    .line 14
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 16
    iput p3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    .line 18
    new-instance p1, Landroid/os/Handler;

    .line 20
    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    .line 25
    return-void
.end method


# virtual methods
.method public final bind()V
    .locals 6

    .line 1
    const-string v0, ": Bind failed"

    .line 3
    iget-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    const-string v2, ": Binding"

    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 23
    move-result-object v1

    .line 24
    const-string v2, "RemoteDisplayProvider"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance v1, Landroid/content/Intent;

    .line 31
    const-string/jumbo v3, "com.android.media.remotedisplay.RemoteDisplayProvider"

    .line 34
    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 37
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 39
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 42
    :try_start_0
    iget-object v3, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    .line 44
    new-instance v4, Landroid/os/UserHandle;

    .line 46
    iget v5, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mUserId:I

    .line 48
    invoke-direct {v4, v5}, Landroid/os/UserHandle;-><init>(I)V

    .line 51
    const v5, 0x4000001

    .line 54
    invoke-virtual {v3, v1, p0, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 57
    move-result v1

    .line 58
    iput-boolean v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 60
    if-nez v1, :cond_0

    .line 62
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 67
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    move-result-object v1

    .line 77
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    goto :goto_0

    .line 81
    :catch_0
    move-exception v1

    .line 82
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p0

    .line 97
    invoke-static {v2, p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_0
    :goto_0
    return-void
.end method

.method public final disconnect()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 3
    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 7
    const-string v2, "RemoteDisplayProvider"

    .line 9
    if-eqz v1, :cond_0

    .line 11
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 13
    invoke-interface {v0, v1}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    goto :goto_0

    .line 17
    :catch_0
    move-exception v0

    .line 18
    const-string v1, "Failed to deliver request to disconnect from display."

    .line 20
    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 23
    :cond_0
    :goto_0
    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 26
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 28
    iget-object v3, v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 30
    if-eqz v3, :cond_2

    .line 32
    invoke-interface {v3}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    .line 35
    move-result-object v3

    .line 36
    if-eqz v3, :cond_1

    .line 38
    invoke-interface {v3, v1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    const-string v0, "binder is null while dispose method is called"

    .line 44
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    const-string/jumbo v0, "mProvider is null while dispose method is called"

    .line 51
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :goto_1
    iget-object v0, v1, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    .line 56
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;->mConnectionRef:Ljava/lang/ref/WeakReference;

    .line 58
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 61
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 64
    iget-object v1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 66
    invoke-static {v1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 69
    move-result v1

    .line 70
    if-nez v1, :cond_3

    .line 72
    iput-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayState:Landroid/media/RemoteDisplayState;

    .line 74
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 76
    if-nez v0, :cond_3

    .line 78
    const/4 v0, 0x1

    .line 79
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mScheduledDisplayStateChangedCallback:Z

    .line 81
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    .line 83
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDisplayStateChanged:Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    .line 85
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 88
    :cond_3
    return-void
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string v0, ": Connected"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "RemoteDisplayProvider"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iget-boolean p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 25
    if-eqz p1, :cond_1

    .line 27
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 30
    invoke-static {p2}, Landroid/media/IRemoteDisplayProvider$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IRemoteDisplayProvider;

    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 36
    new-instance p2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 38
    invoke-direct {p2, p0, p1}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;-><init>(Lcom/android/server/media/RemoteDisplayProviderProxy;Landroid/media/IRemoteDisplayProvider;)V

    .line 41
    :try_start_0
    invoke-interface {p1}, Landroid/media/IRemoteDisplayProvider;->asBinder()Landroid/os/IBinder;

    .line 44
    move-result-object v1

    .line 45
    const/4 v2, 0x0

    .line 46
    invoke-interface {v1, p2, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 49
    iget-object v1, p2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mCallback:Lcom/android/server/media/RemoteDisplayProviderProxy$ProviderCallback;

    .line 51
    invoke-interface {p1, v1}, Landroid/media/IRemoteDisplayProvider;->setCallback(Landroid/media/IRemoteDisplayCallback;)V

    .line 54
    iget-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mHandler:Landroid/os/Handler;

    .line 56
    new-instance v1, Lcom/android/server/media/RemoteDisplayProviderProxy$1;

    .line 58
    const/4 v2, 0x1

    .line 59
    invoke-direct {v1, v2, p2}, Lcom/android/server/media/RemoteDisplayProviderProxy$1;-><init>(ILjava/lang/Object;)V

    .line 62
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    iput-object p2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    invoke-virtual {p2}, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->binderDied()V

    .line 71
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 79
    const-string p0, ": Registration failed"

    .line 81
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 88
    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    goto :goto_0

    .line 92
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 100
    const-string p0, ": Service returned invalid remote display provider binder"

    .line 102
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 109
    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    :cond_1
    :goto_0
    return-void
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    const-string v0, ": Service disconnected"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 18
    const-string v0, "RemoteDisplayProvider"

    .line 20
    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 26
    return-void
.end method

.method public final setDiscoveryMode(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 3
    if-eq v0, p1, :cond_1

    .line 5
    iput p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 7
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 18
    invoke-interface {v0, p1}, Landroid/media/IRemoteDisplayProvider;->setDiscoveryMode(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    goto :goto_0

    .line 22
    :catch_0
    move-exception p1

    .line 23
    const-string v0, "RemoteDisplayProvider"

    .line 25
    const-string v1, "Failed to deliver request to set discovery mode."

    .line 27
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 33
    :cond_1
    return-void
.end method

.method public final setSelectedDisplay(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 9
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 11
    const-string v1, "RemoteDisplayProvider"

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 17
    if-eqz v0, :cond_0

    .line 19
    iget-object v2, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 21
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    :try_start_0
    iget-object v2, v2, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 26
    invoke-interface {v2, v0}, Landroid/media/IRemoteDisplayProvider;->disconnect(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    goto :goto_0

    .line 30
    :catch_0
    move-exception v0

    .line 31
    const-string v2, "Failed to deliver request to disconnect from display."

    .line 33
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 36
    :cond_0
    :goto_0
    iput-object p1, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 38
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mConnectionReady:Z

    .line 40
    if-eqz v0, :cond_1

    .line 42
    if-eqz p1, :cond_1

    .line 44
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mActiveConnection:Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;

    .line 46
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 49
    :try_start_1
    iget-object v0, v0, Lcom/android/server/media/RemoteDisplayProviderProxy$Connection;->mProvider:Landroid/media/IRemoteDisplayProvider;

    .line 51
    invoke-interface {v0, p1}, Landroid/media/IRemoteDisplayProvider;->connect(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 54
    goto :goto_1

    .line 55
    :catch_1
    move-exception p1

    .line 56
    const-string v0, "Failed to deliver request to connect to display."

    .line 58
    invoke-static {v1, v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_1
    :goto_1
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 64
    :cond_2
    return-void
.end method

.method public final start()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 3
    if-nez v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ": Starting"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RemoteDisplayProvider"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x1

    .line 28
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 33
    :cond_0
    return-void
.end method

.method public final stop()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ": Stopping"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RemoteDisplayProvider"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->updateBinding()V

    .line 33
    :cond_0
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "Service connection "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object p0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mComponentName:Landroid/content/ComponentName;

    .line 10
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 21
    return-object p0
.end method

.method public final unbind()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 3
    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ": Unbinding"

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 22
    const-string v1, "RemoteDisplayProvider"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mBound:Z

    .line 30
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->disconnect()V

    .line 33
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mContext:Landroid/content/Context;

    .line 35
    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 38
    :cond_0
    return-void
.end method

.method public final updateBinding()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mRunning:Z

    .line 3
    if-eqz v0, :cond_1

    .line 5
    iget v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mDiscoveryMode:I

    .line 7
    if-nez v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/server/media/RemoteDisplayProviderProxy;->mSelectedDisplayId:Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->bind()V

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-virtual {p0}, Lcom/android/server/media/RemoteDisplayProviderProxy;->unbind()V

    .line 20
    :goto_0
    return-void
.end method
