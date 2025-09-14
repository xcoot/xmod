.class public final Lcom/android/server/location/gnss/sec/GnssHalStatus;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public excutorService:Ljava/util/concurrent/ExecutorService;

.field public isHalStatusChecked:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    .line 7
    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    .line 10
    return-void
.end method


# virtual methods
.method public final triggerCheckingHalStatus(J)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    .line 4
    new-instance v0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;

    .line 6
    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/location/gnss/sec/GnssHalStatus;J)V

    .line 9
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    .line 15
    invoke-interface {p1, v0}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 18
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    .line 20
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 23
    return-void
.end method

.method public final updateHalStatusChecked()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    .line 4
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_0

    .line 14
    iget-object p0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->excutorService:Ljava/util/concurrent/ExecutorService;

    .line 16
    invoke-interface {p0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 19
    :cond_0
    return-void
.end method
