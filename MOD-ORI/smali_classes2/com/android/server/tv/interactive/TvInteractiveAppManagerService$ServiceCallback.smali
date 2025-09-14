.class public final Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;
.super Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mComponent:Landroid/content/ComponentName;

.field public final mUserId:I

.field public final synthetic this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/tv/interactive/ITvInteractiveAppServiceCallback$Stub;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final onStateChanged(III)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    iget-object v3, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 11
    .line 12
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mComponent:Landroid/content/ComponentName;

    .line 13
    .line 14
    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    .line 15
    .line 16
    invoke-static {v3, v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->-$$Nest$mgetServiceStateLocked(Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;Landroid/content/ComponentName;I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;

    .line 17
    .line 18
    .line 19
    move-result-object v3

    .line 20
    iget-object v3, v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceState;->mIAppServiceId:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v4, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 23
    .line 24
    iget v5, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->mUserId:I

    .line 25
    .line 26
    invoke-virtual {v4, v5}, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;->getUserStateLocked(I)Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget-object p0, p0, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$ServiceCallback;->this$0:Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    .line 31
    .line 32
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    .line 34
    .line 35
    iget-object p0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    .line 38
    .line 39
    .line 40
    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    const/4 v5, 0x0

    .line 42
    :goto_0
    if-ge v5, p0, :cond_0

    .line 43
    .line 44
    :try_start_2
    iget-object v6, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 45
    .line 46
    invoke-virtual {v6, v5}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;

    .line 51
    .line 52
    invoke-interface {v6, v3, p1, p2, p3}, Landroid/media/tv/interactive/ITvInteractiveAppManagerCallback;->onStateChanged(Ljava/lang/String;III)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 53
    .line 54
    .line 55
    goto :goto_1

    .line 56
    :catch_0
    move-exception v6

    .line 57
    :try_start_3
    const-string v7, "TvInteractiveAppManagerService"

    .line 58
    .line 59
    const-string v8, "failed to report RTE state changed"

    .line 60
    .line 61
    invoke-static {v7, v8, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 62
    .line 63
    .line 64
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_0
    iget-object p0, v4, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService$UserState;->mCallbacks:Landroid/os/RemoteCallbackList;

    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 70
    .line 71
    .line 72
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 73
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 74
    .line 75
    .line 76
    return-void

    .line 77
    :catchall_0
    move-exception p0

    .line 78
    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 79
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 80
    :catchall_1
    move-exception p0

    .line 81
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 82
    .line 83
    .line 84
    throw p0
.end method
