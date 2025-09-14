.class public final Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/location/provider/LocationProviderManager$LocationTransport;
.implements Lcom/android/server/location/provider/LocationProviderManager$ProviderTransport;


# instance fields
.field public final mListener:Landroid/location/ILocationListener;


# direct methods
.method public constructor <init>(Landroid/location/ILocationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    check-cast p1, Landroid/location/ILocationListener;

    .line 9
    iput-object p1, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    .line 11
    return-void
.end method


# virtual methods
.method public final deliverOnFlushComplete(I)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    .line 3
    invoke-interface {p0, p1}, Landroid/location/ILocationListener;->onFlushComplete(I)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 16
    move-result-object p0

    .line 17
    new-instance v0, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 19
    const/4 v1, 0x5

    .line 20
    invoke-direct {v0, v1, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 23
    check-cast p0, Landroid/os/HandlerExecutor;

    .line 25
    invoke-virtual {p0, v0}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :goto_0
    return-void
.end method

.method public final deliverOnLocationChanged(Landroid/location/LocationResult;Lcom/android/server/location/provider/LocationProviderManager$ExternalWakeLockReleaser;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    .line 3
    invoke-virtual {p1}, Landroid/location/LocationResult;->asList()Ljava/util/List;

    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onLocationChanged(Ljava/util/List;Landroid/os/IRemoteCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    new-instance p1, Ljava/lang/RuntimeException;

    .line 14
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 17
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 20
    move-result-object p0

    .line 21
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 23
    const/4 v0, 0x3

    .line 24
    invoke-direct {p2, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 27
    check-cast p0, Landroid/os/HandlerExecutor;

    .line 29
    invoke-virtual {p0, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    :goto_0
    return-void
.end method

.method public final deliverOnProviderEnabledChanged(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/android/server/location/provider/LocationProviderManager$LocationListenerTransport;->mListener:Landroid/location/ILocationListener;

    .line 3
    invoke-interface {p0, p1, p2}, Landroid/location/ILocationListener;->onProviderEnabledChanged(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    goto :goto_0

    .line 7
    :catch_0
    move-exception p0

    .line 8
    new-instance p1, Ljava/lang/RuntimeException;

    .line 10
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 13
    invoke-static {}, Lcom/android/server/location/LocationServiceThread;->getExecutor()Ljava/util/concurrent/Executor;

    .line 16
    move-result-object p0

    .line 17
    new-instance p2, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;

    .line 19
    const/4 v0, 0x4

    .line 20
    invoke-direct {p2, v0, p1}, Lcom/android/server/location/provider/LocationProviderManager$$ExternalSyntheticLambda22;-><init>(ILjava/lang/Object;)V

    .line 23
    check-cast p0, Landroid/os/HandlerExecutor;

    .line 25
    invoke-virtual {p0, p2}, Landroid/os/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 28
    :goto_0
    return-void
.end method
