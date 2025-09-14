.class public final Lcom/android/server/slice/SliceManagerService$Lifecycle;
.super Lcom/android/server/SystemService;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mService:Lcom/android/server/slice/SliceManagerService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final onBootPhase(I)V
    .locals 1

    .line 1
    const/16 v0, 0x226

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 6
    .line 7
    sget p1, Lcom/android/server/slice/SliceManagerService;->$r8$clinit:I

    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method

.method public final onStart()V
    .locals 6

    .line 1
    new-instance v0, Lcom/android/server/slice/SliceManagerService;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    new-instance v2, Lcom/android/server/ServiceThread;

    .line 8
    .line 9
    const-string v3, "SliceManagerService"

    .line 10
    .line 11
    const/16 v4, 0xa

    .line 12
    .line 13
    const/4 v5, 0x1

    .line 14
    invoke-direct {v2, v4, v3, v5}, Lcom/android/server/ServiceThread;-><init>(ILjava/lang/String;Z)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/android/server/slice/SliceManagerService;-><init>(Landroid/content/Context;Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 28
    .line 29
    const-string/jumbo v1, "slice"

    .line 30
    .line 31
    .line 32
    invoke-virtual {p0, v1, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 33
    .line 34
    .line 35
    return-void
.end method

.method public final onUserStopping(Lcom/android/server/SystemService$TargetUser;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/server/slice/SliceManagerService;->mLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v0

    .line 10
    :try_start_0
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService;->mPinnedSlicesByUri:Landroid/util/ArrayMap;

    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    new-instance v1, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;

    .line 17
    .line 18
    invoke-direct {v1, p1}, Lcom/android/server/slice/SliceManagerService$$ExternalSyntheticLambda3;-><init>(I)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p0, v1}, Ljava/util/Collection;->removeIf(Ljava/util/function/Predicate;)Z

    .line 22
    .line 23
    .line 24
    monitor-exit v0

    .line 25
    return-void

    .line 26
    :catchall_0
    move-exception p0

    .line 27
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    throw p0
.end method

.method public final onUserUnlocking(Lcom/android/server/SystemService$TargetUser;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/slice/SliceManagerService$Lifecycle;->mService:Lcom/android/server/slice/SliceManagerService;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/server/SystemService$TargetUser;->getUserIdentifier()I

    .line 4
    .line 5
    .line 6
    sget p1, Lcom/android/server/slice/SliceManagerService;->$r8$clinit:I

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    return-void
.end method
