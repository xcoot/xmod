.class public final synthetic Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/android/server/ExplicitHealthCheckController;

.field public final synthetic f$1:Ljava/util/Set;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 6
    iput-object p2, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    .line 8
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$0:Lcom/android/server/ExplicitHealthCheckController;

    .line 3
    iget-object p0, p0, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda1;->f$1:Ljava/util/Set;

    .line 5
    check-cast p1, Ljava/util/List;

    .line 7
    iget-object v1, v0, Lcom/android/server/ExplicitHealthCheckController;->mSupportedConsumer:Ljava/util/function/Consumer;

    .line 9
    invoke-interface {v1, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 12
    new-instance v1, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;

    .line 14
    invoke-direct {v1, v0, p1, p0}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/ExplicitHealthCheckController;Ljava/util/List;Ljava/util/Set;)V

    .line 17
    iget-object p0, v0, Lcom/android/server/ExplicitHealthCheckController;->mLock:Ljava/lang/Object;

    .line 19
    monitor-enter p0

    .line 20
    :try_start_0
    const-string/jumbo p1, "get health check requested packages"

    .line 23
    invoke-virtual {v0, p1}, Lcom/android/server/ExplicitHealthCheckController;->prepareServiceLocked(Ljava/lang/String;)Z

    .line 26
    move-result p1

    .line 27
    if-nez p1, :cond_0

    .line 29
    monitor-exit p0

    .line 30
    goto :goto_1

    .line 31
    :catchall_0
    move-exception p1

    .line 32
    goto :goto_2

    .line 33
    :cond_0
    const-string p1, "ExplicitHealthCheckController"

    .line 35
    const-string v2, "Getting health check requested packages"

    .line 37
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    :try_start_1
    iget-object p1, v0, Lcom/android/server/ExplicitHealthCheckController;->mRemoteService:Landroid/service/watchdog/IExplicitHealthCheckService;

    .line 42
    new-instance v0, Landroid/os/RemoteCallback;

    .line 44
    new-instance v2, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;

    .line 46
    invoke-direct {v2, v1}, Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/ExplicitHealthCheckController$$ExternalSyntheticLambda2;)V

    .line 49
    invoke-direct {v0, v2}, Landroid/os/RemoteCallback;-><init>(Landroid/os/RemoteCallback$OnResultListener;)V

    .line 52
    invoke-interface {p1, v0}, Landroid/service/watchdog/IExplicitHealthCheckService;->getRequestedPackages(Landroid/os/RemoteCallback;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 55
    goto :goto_0

    .line 56
    :catch_0
    move-exception p1

    .line 57
    :try_start_2
    const-string v0, "ExplicitHealthCheckController"

    .line 59
    const-string v1, "Failed to get health check requested packages"

    .line 61
    invoke-static {v0, v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_0
    monitor-exit p0

    .line 65
    :goto_1
    return-void

    .line 66
    :goto_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 67
    throw p1
.end method
