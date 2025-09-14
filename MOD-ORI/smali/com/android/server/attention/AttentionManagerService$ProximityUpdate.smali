.class final Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

.field public final mIProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

.field public mStartedUpdates:Z

.field public final synthetic this$0:Lcom/android/server/attention/AttentionManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/attention/AttentionManagerService;Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mCallbackInternal:Landroid/attention/AttentionManagerInternal$ProximityUpdateCallbackInternal;

    .line 7
    .line 8
    new-instance p1, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    .line 9
    .line 10
    invoke-direct {p1, p0}, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;-><init>(Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;)V

    .line 11
    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final cancelUpdates()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 7
    .line 8
    if-eqz v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 11
    .line 12
    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 18
    .line 19
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :try_start_1
    invoke-interface {v1}, Landroid/service/attention/IAttentionService;->onStopProximityUpdates()V

    .line 24
    .line 25
    .line 26
    iput-boolean v2, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    :try_start_2
    const-string v1, "AttentionManagerService"

    .line 31
    .line 32
    const-string v2, "Cannot call into the AttentionService"

    .line 33
    .line 34
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 35
    .line 36
    .line 37
    :cond_1
    :goto_0
    monitor-exit v0

    .line 38
    return-void

    .line 39
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 40
    throw p0
.end method

.method public final startUpdates()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/attention/AttentionManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const-string p0, "AttentionManagerService"

    .line 12
    .line 13
    const-string v1, "Already registered to a proximity service."

    .line 14
    .line 15
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    .line 17
    .line 18
    monitor-exit v0

    .line 19
    return v2

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->this$0:Lcom/android/server/attention/AttentionManagerService;

    .line 23
    .line 24
    iget-object v1, v1, Lcom/android/server/attention/AttentionManagerService;->mService:Landroid/service/attention/IAttentionService;

    .line 25
    .line 26
    if-nez v1, :cond_1

    .line 27
    .line 28
    const-string p0, "AttentionManagerService"

    .line 29
    .line 30
    const-string v1, "There is no service bound. Proximity update request rejected."

    .line 31
    .line 32
    invoke-static {p0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 36
    return v2

    .line 37
    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mIProximityUpdateCallback:Lcom/android/server/attention/AttentionManagerService$ProximityUpdate$1;

    .line 38
    .line 39
    invoke-interface {v1, v3}, Landroid/service/attention/IAttentionService;->onStartProximityUpdates(Landroid/service/attention/IProximityUpdateCallback;)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x1

    .line 43
    iput-boolean v1, p0, Lcom/android/server/attention/AttentionManagerService$ProximityUpdate;->mStartedUpdates:Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    :try_start_2
    monitor-exit v0

    .line 46
    return v1

    .line 47
    :catch_0
    move-exception p0

    .line 48
    const-string v1, "AttentionManagerService"

    .line 49
    .line 50
    const-string v3, "Cannot call into the AttentionService"

    .line 51
    .line 52
    invoke-static {v1, v3, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 53
    .line 54
    .line 55
    monitor-exit v0

    .line 56
    return v2

    .line 57
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 58
    throw p0
.end method
