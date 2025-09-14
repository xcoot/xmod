.class public final Lcom/android/server/location/fudger/LocationFudger;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final OFFSET_UPDATE_INTERVAL_MS:J = 0x36ee80L

.field public static final OLD_WEIGHT:D


# instance fields
.field public final mAccuracyM:F

.field public mCachedCoarseLocation:Landroid/location/Location;

.field public mCachedCoarseLocationResult:Landroid/location/LocationResult;

.field public mCachedFineLocation:Landroid/location/Location;

.field public mCachedFineLocationResult:Landroid/location/LocationResult;

.field public final mClock:Ljava/time/Clock;

.field public mLatitudeOffsetM:D

.field public mLongitudeOffsetM:D

.field public mNextUpdateRealtimeMs:J

.field public final mRandom:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-wide v0, 0x3feff8a0902de00dL    # 0.9991

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 9
    move-result-wide v0

    .line 10
    sput-wide v0, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    .line 12
    return-void
.end method

.method public constructor <init>(FLjava/time/Clock;Ljava/util/Random;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 6
    iput-object p3, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    .line 8
    const/high16 p3, 0x43480000    # 200.0f

    .line 10
    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    .line 13
    move-result p1

    .line 14
    iput p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 16
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 19
    move-result-wide v0

    .line 20
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 22
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 25
    move-result-wide v0

    .line 26
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 28
    invoke-virtual {p2}, Ljava/time/Clock;->millis()J

    .line 31
    move-result-wide p1

    .line 32
    const-wide/32 v0, 0x36ee80

    .line 35
    add-long/2addr p1, v0

    .line 36
    iput-wide p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J

    .line 38
    return-void
.end method

.method public static wrapLatitude(D)D
    .locals 3

    .line 1
    const-wide v0, 0x40567fffda36a676L    # 89.999990990991

    .line 6
    cmpl-double v2, p0, v0

    .line 8
    if-lez v2, :cond_0

    .line 10
    move-wide p0, v0

    .line 11
    :cond_0
    const-wide v0, -0x3fa9800025c9598aL    # -89.999990990991

    .line 16
    cmpg-double v2, p0, v0

    .line 18
    if-gez v2, :cond_1

    .line 20
    move-wide p0, v0

    .line 21
    :cond_1
    return-wide p0
.end method

.method public static wrapLongitude(D)D
    .locals 4

    .line 1
    const-wide v0, 0x4076800000000000L    # 360.0

    .line 6
    rem-double/2addr p0, v0

    .line 7
    const-wide v2, 0x4066800000000000L    # 180.0

    .line 12
    cmpl-double v2, p0, v2

    .line 14
    if-ltz v2, :cond_0

    .line 16
    sub-double/2addr p0, v0

    .line 17
    :cond_0
    const-wide v2, -0x3f99800000000000L    # -180.0

    .line 22
    cmpg-double v2, p0, v2

    .line 24
    if-gez v2, :cond_1

    .line 26
    add-double/2addr p0, v0

    .line 27
    :cond_1
    return-wide p0
.end method


# virtual methods
.method public final createCoarse(Landroid/location/Location;)Landroid/location/Location;
    .locals 11

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 4
    if-eq p1, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 8
    if-ne p1, v0, :cond_0

    .line 10
    goto/16 :goto_1

    .line 12
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 13
    monitor-enter p0

    .line 14
    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mClock:Ljava/time/Clock;

    .line 16
    invoke-virtual {v0}, Ljava/time/Clock;->millis()J

    .line 19
    move-result-wide v0

    .line 20
    iget-wide v2, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 22
    cmp-long v2, v0, v2

    .line 24
    if-gez v2, :cond_1

    .line 26
    monitor-exit p0

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    :try_start_2
    sget-wide v2, Lcom/android/server/location/fudger/LocationFudger;->OLD_WEIGHT:D

    .line 30
    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 32
    mul-double/2addr v4, v2

    .line 33
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 36
    move-result-wide v6

    .line 37
    const-wide v8, 0x3f9eb851eb851eb8L    # 0.03

    .line 42
    mul-double/2addr v6, v8

    .line 43
    add-double/2addr v6, v4

    .line 44
    iput-wide v6, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 46
    iget-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 48
    mul-double/2addr v2, v4

    .line 49
    invoke-virtual {p0}, Lcom/android/server/location/fudger/LocationFudger;->nextRandomOffset()D

    .line 52
    move-result-wide v4

    .line 53
    mul-double/2addr v4, v8

    .line 54
    add-double/2addr v4, v2

    .line 55
    iput-wide v4, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 57
    const-wide/32 v2, 0x36ee80

    .line 60
    add-long/2addr v0, v2

    .line 61
    iput-wide v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mNextUpdateRealtimeMs:J
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 63
    monitor-exit p0

    .line 64
    :goto_0
    new-instance v0, Landroid/location/Location;

    .line 66
    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    .line 69
    invoke-virtual {v0}, Landroid/location/Location;->removeBearing()V

    .line 72
    invoke-virtual {v0}, Landroid/location/Location;->removeSpeed()V

    .line 75
    invoke-virtual {v0}, Landroid/location/Location;->removeAltitude()V

    .line 78
    const/4 v1, 0x0

    .line 79
    invoke-virtual {v0, v1}, Landroid/location/Location;->setExtras(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    .line 85
    move-result-wide v1

    .line 86
    invoke-static {v1, v2}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    .line 89
    move-result-wide v1

    .line 90
    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    .line 93
    move-result-wide v3

    .line 94
    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    .line 97
    move-result-wide v3

    .line 98
    iget-wide v5, p0, Lcom/android/server/location/fudger/LocationFudger;->mLongitudeOffsetM:D

    .line 100
    const-wide v7, 0x40fb198000000000L    # 111000.0

    .line 105
    div-double/2addr v5, v7

    .line 106
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 109
    move-result-wide v9

    .line 110
    invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D

    .line 113
    move-result-wide v9

    .line 114
    div-double/2addr v5, v9

    .line 115
    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    .line 118
    move-result-wide v5

    .line 119
    add-double/2addr v5, v3

    .line 120
    iget-wide v3, p0, Lcom/android/server/location/fudger/LocationFudger;->mLatitudeOffsetM:D

    .line 122
    div-double/2addr v3, v7

    .line 123
    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    .line 126
    move-result-wide v3

    .line 127
    add-double/2addr v3, v1

    .line 128
    iget v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 130
    float-to-double v1, v1

    .line 131
    div-double/2addr v1, v7

    .line 132
    div-double/2addr v3, v1

    .line 133
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    .line 136
    move-result-wide v3

    .line 137
    long-to-double v3, v3

    .line 138
    mul-double/2addr v3, v1

    .line 139
    invoke-static {v3, v4}, Lcom/android/server/location/fudger/LocationFudger;->wrapLatitude(D)D

    .line 142
    move-result-wide v1

    .line 143
    iget v3, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 145
    float-to-double v3, v3

    .line 146
    div-double/2addr v3, v7

    .line 147
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    .line 150
    move-result-wide v7

    .line 151
    invoke-static {v7, v8}, Ljava/lang/Math;->cos(D)D

    .line 154
    move-result-wide v7

    .line 155
    div-double/2addr v3, v7

    .line 156
    div-double/2addr v5, v3

    .line 157
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    .line 160
    move-result-wide v5

    .line 161
    long-to-double v5, v5

    .line 162
    mul-double/2addr v5, v3

    .line 163
    invoke-static {v5, v6}, Lcom/android/server/location/fudger/LocationFudger;->wrapLongitude(D)D

    .line 166
    move-result-wide v3

    .line 167
    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setLatitude(D)V

    .line 170
    invoke-virtual {v0, v3, v4}, Landroid/location/Location;->setLongitude(D)V

    .line 173
    iget v1, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 175
    invoke-virtual {v0}, Landroid/location/Location;->getAccuracy()F

    .line 178
    move-result v2

    .line 179
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    .line 182
    move-result v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 186
    monitor-enter p0

    .line 187
    :try_start_3
    iput-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedFineLocation:Landroid/location/Location;

    .line 189
    iput-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 191
    monitor-exit p0

    .line 192
    return-object v0

    .line 193
    :catchall_0
    move-exception p1

    .line 194
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 195
    throw p1

    .line 196
    :catchall_1
    move-exception p1

    .line 197
    monitor-exit p0

    .line 198
    throw p1

    .line 199
    :catchall_2
    move-exception p1

    .line 200
    goto :goto_2

    .line 201
    :cond_2
    :goto_1
    :try_start_4
    iget-object p1, p0, Lcom/android/server/location/fudger/LocationFudger;->mCachedCoarseLocation:Landroid/location/Location;

    .line 203
    monitor-exit p0

    .line 204
    return-object p1

    .line 205
    :goto_2
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 206
    throw p1
.end method

.method public final nextRandomOffset()D
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/location/fudger/LocationFudger;->mRandom:Ljava/util/Random;

    .line 3
    invoke-virtual {v0}, Ljava/util/Random;->nextGaussian()D

    .line 6
    move-result-wide v0

    .line 7
    iget p0, p0, Lcom/android/server/location/fudger/LocationFudger;->mAccuracyM:F

    .line 9
    float-to-double v2, p0

    .line 10
    const-wide/high16 v4, 0x4010000000000000L    # 4.0

    .line 12
    div-double/2addr v2, v4

    .line 13
    mul-double/2addr v2, v0

    .line 14
    return-wide v2
.end method
