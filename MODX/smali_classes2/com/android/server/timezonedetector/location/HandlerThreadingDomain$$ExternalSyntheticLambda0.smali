.class public final synthetic Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$1:Ljava/util/concurrent/Callable;

.field public final synthetic f$2:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic f$3:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/Callable;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Callable;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$0:Ljava/util/concurrent/atomic/AtomicReference;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$1:Ljava/util/concurrent/Callable;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$2:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain$$ExternalSyntheticLambda0;->f$3:Ljava/util/concurrent/CountDownLatch;

    .line 8
    .line 9
    :try_start_0
    invoke-interface {v1}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    .line 16
    :goto_0
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 17
    .line 18
    .line 19
    goto :goto_1

    .line 20
    :catchall_0
    move-exception v0

    .line 21
    goto :goto_2

    .line 22
    :catch_0
    move-exception v0

    .line 23
    :try_start_1
    invoke-virtual {v2, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :goto_1
    return-void

    .line 28
    :goto_2
    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 29
    .line 30
    .line 31
    throw v0
.end method
