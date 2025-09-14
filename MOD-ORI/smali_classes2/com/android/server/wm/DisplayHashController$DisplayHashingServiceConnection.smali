.class public final Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field public mQueuedCommands:Ljava/util/ArrayList;

.field public mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

.field public final synthetic this$0:Lcom/android/server/wm/DisplayHashController;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/DisplayHashController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onBindingDied(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onNullBinding(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method

.method public final onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    :try_start_0
    invoke-static {p2}, Landroid/service/displayhash/IDisplayHashingService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/displayhash/IDisplayHashingService;

    .line 7
    .line 8
    .line 9
    move-result-object p2

    .line 10
    iput-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 13
    .line 14
    if-eqz p2, :cond_1

    .line 15
    .line 16
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    const/4 v1, 0x0

    .line 21
    :goto_0
    if-ge v1, p2, :cond_0

    .line 22
    .line 23
    iget-object v2, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/android/server/wm/DisplayHashController$Command;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 30
    .line 31
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 32
    .line 33
    invoke-interface {v2, v3}, Lcom/android/server/wm/DisplayHashController$Command;->run(Landroid/service/displayhash/IDisplayHashingService;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :catch_0
    move-exception v2

    .line 40
    :try_start_2
    const-string v3, "WindowManager"

    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "exception calling "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v5, ": "

    .line 56
    .line 57
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_0
    const/4 p1, 0x0

    .line 74
    iput-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mQueuedCommands:Ljava/util/ArrayList;

    .line 75
    .line 76
    :cond_1
    monitor-exit v0

    .line 77
    return-void

    .line 78
    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 79
    throw p0
.end method

.method public final onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->this$0:Lcom/android/server/wm/DisplayHashController;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/server/wm/DisplayHashController;->mServiceConnectionLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter p1

    .line 6
    const/4 v0, 0x0

    .line 7
    :try_start_0
    iput-object v0, p0, Lcom/android/server/wm/DisplayHashController$DisplayHashingServiceConnection;->mRemoteService:Landroid/service/displayhash/IDisplayHashingService;

    .line 8
    .line 9
    monitor-exit p1

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception p0

    .line 12
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw p0
.end method
