.class public final Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;
.super Landroid/os/Handler;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;


# direct methods
.method public constructor <init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    return-void

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 8
    .line 9
    iget-object p1, p1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLock:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter p1

    .line 12
    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 13
    .line 14
    iget-boolean v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    .line 15
    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    monitor-exit p1

    .line 19
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget v2, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mLoadRequestFlags:I

    .line 23
    .line 24
    if-nez v2, :cond_2

    .line 25
    .line 26
    iget-object v1, v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mSaveRequestFlagsWithUserId:Ljava/util/Map;

    .line 27
    .line 28
    check-cast v1, Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-eqz v1, :cond_2

    .line 35
    .line 36
    monitor-exit p1

    .line 37
    return-void

    .line 38
    :cond_2
    new-instance v1, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;

    .line 39
    .line 40
    iget-object v2, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 41
    .line 42
    invoke-direct {v1, v2}, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$LazyThread;-><init>(Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 46
    .line 47
    .line 48
    iget-object p0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister$H;->this$0:Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;

    .line 49
    .line 50
    iput-boolean v0, p0, Lcom/samsung/android/server/packagefeature/PackageFeatureUserChangePersister;->mThreadStarted:Z

    .line 51
    .line 52
    monitor-exit p1

    .line 53
    return-void

    .line 54
    :goto_0
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    throw p0
.end method
