.class public final Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public final synthetic this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "RemoteSystemCaptionsManagerService"

    .line 13
    .line 14
    const-string/jumbo v1, "onServiceConnected()"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 24
    .line 25
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mDestroyed:Z

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    iget-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 30
    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v0, 0x0

    .line 35
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 36
    .line 37
    iput-object p2, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 38
    .line 39
    monitor-exit p1

    .line 40
    return-void

    .line 41
    :cond_2
    :goto_1
    const-string p0, "RemoteSystemCaptionsManagerService"

    .line 42
    .line 43
    const-string/jumbo p2, "onServiceConnected() dispatched after unbindService"

    .line 44
    .line 45
    .line 46
    invoke-static {p0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 47
    .line 48
    .line 49
    monitor-exit p1

    .line 50
    return-void

    .line 51
    :goto_2
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 7
    .line 8
    iget-boolean v0, v0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mVerbose:Z

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    const-string v0, "RemoteSystemCaptionsManagerService"

    .line 13
    .line 14
    const-string/jumbo v1, "onServiceDisconnected()"

    .line 15
    .line 16
    .line 17
    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception p0

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService$RemoteServiceConnection;->this$0:Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;

    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    iput-boolean v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mBinding:Z

    .line 27
    .line 28
    const/4 v0, 0x0

    .line 29
    iput-object v0, p0, Lcom/android/server/systemcaptions/RemoteSystemCaptionsManagerService;->mService:Landroid/os/IBinder;

    .line 30
    .line 31
    monitor-exit p1

    .line 32
    return-void

    .line 33
    :goto_1
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 34
    throw p0
.end method
