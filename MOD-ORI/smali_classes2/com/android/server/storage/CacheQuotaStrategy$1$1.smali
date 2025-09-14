.class public final Lcom/android/server/storage/CacheQuotaStrategy$1$1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

.field public final synthetic val$service:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/server/storage/CacheQuotaStrategy$1;Landroid/os/IBinder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/android/server/storage/CacheQuotaStrategy;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 9
    .line 10
    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    .line 11
    .line 12
    iget-object v2, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->val$service:Landroid/os/IBinder;

    .line 13
    .line 14
    invoke-static {v2}, Landroid/app/usage/ICacheQuotaService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/ICacheQuotaService;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    iput-object v2, v1, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    .line 19
    .line 20
    iget-object v1, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 21
    .line 22
    iget-object v1, v1, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    .line 23
    .line 24
    invoke-static {v1}, Lcom/android/server/storage/CacheQuotaStrategy;->-$$Nest$mgetUnfulfilledRequests(Lcom/android/server/storage/CacheQuotaStrategy;)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    new-instance v2, Landroid/os/RemoteCallback;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 31
    .line 32
    iget-object v3, v3, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    .line 33
    .line 34
    invoke-direct {v2, v3}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    .line 36
    .line 37
    :try_start_1
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1$1;->this$1:Lcom/android/server/storage/CacheQuotaStrategy$1;

    .line 38
    .line 39
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy$1;->this$0:Lcom/android/server/storage/CacheQuotaStrategy;

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/storage/CacheQuotaStrategy;->mRemoteService:Landroid/app/usage/ICacheQuotaService;

    .line 42
    .line 43
    invoke-interface {p0, v2, v1}, Landroid/app/usage/ICacheQuotaService;->computeCacheQuotaHints(Landroid/os/RemoteCallback;Ljava/util/List;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p0

    .line 50
    :try_start_2
    const-string v1, "CacheQuotaStrategy"

    .line 51
    .line 52
    const-string v2, "Remote exception occurred while trying to get cache quota"

    .line 53
    .line 54
    invoke-static {v1, v2, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 55
    .line 56
    .line 57
    :goto_0
    monitor-exit v0

    .line 58
    return-void

    .line 59
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 60
    throw p0
.end method
