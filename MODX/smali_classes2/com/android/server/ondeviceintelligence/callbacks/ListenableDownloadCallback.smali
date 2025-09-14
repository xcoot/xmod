.class public final Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;
.super Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

.field public final future:Lcom/android/internal/infra/AndroidFuture;

.field public final handler:Landroid/os/Handler;

.field public final idleTimeoutMs:J


# direct methods
.method public constructor <init>(Landroid/app/ondeviceintelligence/IDownloadCallback;Landroid/os/Handler;Lcom/android/internal/infra/AndroidFuture;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/ondeviceintelligence/IDownloadCallback$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    .line 9
    .line 10
    iput-wide p4, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    .line 11
    .line 12
    invoke-virtual {p2, p0, p4, p5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final onDownloadCompleted(Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadCompleted(Landroid/os/PersistableBundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    const/4 p1, 0x0

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->complete(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public final onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2, p3}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadFailed(ILjava/lang/String;Landroid/os/PersistableBundle;)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    .line 12
    .line 13
    new-instance p1, Ljava/util/concurrent/TimeoutException;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p0, p1}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final onDownloadProgress(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadProgress(J)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final onDownloadStarted(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->callback:Landroid/app/ondeviceintelligence/IDownloadCallback;

    .line 2
    .line 3
    invoke-interface {v0, p1, p2}, Landroid/app/ondeviceintelligence/IDownloadCallback;->onDownloadStarted(J)V

    .line 4
    .line 5
    .line 6
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 7
    .line 8
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->handler:Landroid/os/Handler;

    .line 12
    .line 13
    iget-wide v0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->idleTimeoutMs:J

    .line 14
    .line 15
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/ondeviceintelligence/callbacks/ListenableDownloadCallback;->future:Lcom/android/internal/infra/AndroidFuture;

    .line 2
    .line 3
    new-instance v0, Ljava/util/concurrent/TimeoutException;

    .line 4
    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/TimeoutException;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lcom/android/internal/infra/AndroidFuture;->completeExceptionally(Ljava/lang/Throwable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method
