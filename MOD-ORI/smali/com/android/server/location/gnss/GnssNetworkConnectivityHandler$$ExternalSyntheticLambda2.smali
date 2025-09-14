.class public final synthetic Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

.field public final synthetic f$1:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;->f$0:Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler$$ExternalSyntheticLambda2;->f$1:Ljava/lang/Runnable;

    .line 4
    .line 5
    sget-boolean v1, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->VERBOSE:Z

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    :try_start_0
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssNetworkConnectivityHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 23
    .line 24
    .line 25
    throw p0
.end method
