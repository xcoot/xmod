.class public final synthetic Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

.field public final synthetic f$1:J


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/location/gnss/sec/GnssHalStatus;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 5
    .line 6
    iput-wide p2, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$1:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/location/gnss/sec/GnssHalStatus;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/android/server/location/gnss/sec/GnssHalStatus$$ExternalSyntheticLambda0;->f$1:J

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    const-string p0, "GnssHalStatus"

    .line 9
    .line 10
    :try_start_0
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    .line 12
    .line 13
    iget-boolean v0, v0, Lcom/android/server/location/gnss/sec/GnssHalStatus;->isHalStatusChecked:Z

    .line 14
    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const-string v0, "Calling GnssNative was failed. It will be recovered."

    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    const-string/jumbo v0, "dev.gnss.initializehal"

    .line 23
    .line 24
    .line 25
    const-string v1, "ON"

    .line 26
    .line 27
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    const-string/jumbo v0, "checkHalStatusAndReset() failed."

    .line 32
    .line 33
    .line 34
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    .line 36
    .line 37
    :cond_0
    :goto_0
    return-void
.end method
