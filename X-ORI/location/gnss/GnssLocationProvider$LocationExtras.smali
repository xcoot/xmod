.class public final Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mBundle:Landroid/os/Bundle;

.field public mMaxCn0:I

.field public mMeanCn0:I

.field public mSvCount:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/os/Bundle;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final set(III)V
    .locals 0

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iput p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 3
    .line 4
    iput p2, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 5
    .line 6
    iput p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    iget-object p1, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mBundle:Landroid/os/Bundle;

    .line 10
    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    const-string/jumbo p2, "satellites"

    .line 15
    .line 16
    .line 17
    iget p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mSvCount:I

    .line 18
    .line 19
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    .line 21
    .line 22
    const-string/jumbo p2, "meanCn0"

    .line 23
    .line 24
    .line 25
    iget p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMeanCn0:I

    .line 26
    .line 27
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 28
    .line 29
    .line 30
    const-string/jumbo p2, "maxCn0"

    .line 31
    .line 32
    .line 33
    iget p3, p0, Lcom/android/server/location/gnss/GnssLocationProvider$LocationExtras;->mMaxCn0:I

    .line 34
    .line 35
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 36
    .line 37
    .line 38
    monitor-exit p0

    .line 39
    goto :goto_0

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_0
    :goto_0
    return-void

    .line 44
    :catchall_1
    move-exception p1

    .line 45
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 46
    throw p1
.end method
