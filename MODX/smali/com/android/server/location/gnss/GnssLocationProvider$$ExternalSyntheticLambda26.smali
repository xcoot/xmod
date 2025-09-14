.class public final synthetic Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

.field public final synthetic f$1:I

.field public final synthetic f$2:[B


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/GnssLocationProvider;I[B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 6
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$1:I

    .line 8
    iput-object p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$2:[B

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$0:Lcom/android/server/location/gnss/GnssLocationProvider;

    .line 3
    iget v1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$1:I

    .line 5
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$$ExternalSyntheticLambda26;->f$2:[B

    .line 7
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const/16 v2, 0x1be

    .line 12
    invoke-static {v2, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 15
    const-string v2, "GnssLocationProvider"

    .line 17
    const-string/jumbo v3, "calling native_inject_psds_data"

    .line 20
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    invoke-virtual {v0}, Lcom/android/server/location/gnss/GnssLocationProvider;->setXtraDownloadedTime()V

    .line 26
    iget-object v2, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mGnssNative:Lcom/android/server/location/gnss/hal/GnssNative;

    .line 28
    array-length v3, p0

    .line 29
    invoke-virtual {v2, p0, v3, v1}, Lcom/android/server/location/gnss/hal/GnssNative;->injectPsdsData([BII)V

    .line 32
    iget-object p0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mLock:Ljava/lang/Object;

    .line 34
    monitor-enter p0

    .line 35
    :try_start_0
    iget-object v0, v0, Lcom/android/server/location/gnss/GnssLocationProvider;->mPsdsBackOff:Lcom/android/server/location/gnss/ExponentialBackOff;

    .line 37
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 40
    const-wide/32 v1, 0x249f0

    .line 43
    iput-wide v1, v0, Lcom/android/server/location/gnss/ExponentialBackOff;->mCurrentIntervalMillis:J

    .line 45
    monitor-exit p0

    .line 46
    return-void

    .line 47
    :catchall_0
    move-exception v0

    .line 48
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 49
    throw v0
.end method
