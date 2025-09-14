.class public final Lcom/android/server/location/gnss/GnssPowerStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mElapsedRealtimeFlags:I

.field public final mElapsedRealtimeNanos:J

.field public final mElapsedRealtimeUncertaintyNanos:D

.field public final mMultibandAcquisitionModeEnergyMilliJoule:D

.field public final mMultibandTrackingModeEnergyMilliJoule:D

.field public final mOtherModesEnergyMilliJoule:[D

.field public final mSinglebandAcquisitionModeEnergyMilliJoule:D

.field public final mSinglebandTrackingModeEnergyMilliJoule:D

.field public final mTotalEnergyMilliJoule:D


# direct methods
.method public constructor <init>(IJDDDDDD[D)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    move v1, p1

    .line 6
    iput v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    .line 8
    move-wide v1, p2

    .line 9
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    .line 11
    move-wide v1, p4

    .line 12
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    .line 14
    move-wide v1, p6

    .line 15
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    .line 17
    move-wide v1, p8

    .line 18
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    .line 20
    move-wide v1, p10

    .line 21
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    .line 23
    move-wide v1, p12

    .line 24
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    .line 26
    move-wide/from16 v1, p14

    .line 28
    iput-wide v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    .line 30
    move-object/from16 v1, p16

    .line 32
    iput-object v1, v0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    .line 34
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/FileDescriptor;Landroid/util/IndentingPrintWriter;[Ljava/lang/String;Landroid/location/GnssCapabilities;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    .line 4
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const-string/jumbo p1, "time: "

    .line 10
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 13
    sget-object p1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 15
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    .line 17
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 20
    move-result-wide v0

    .line 21
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->formatRealtime(J)Ljava/lang/String;

    .line 24
    move-result-object p3

    .line 25
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeUncertaintyNanos()Z

    .line 31
    move-result p3

    .line 32
    if-eqz p3, :cond_0

    .line 34
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    .line 36
    const-wide/16 v2, 0x0

    .line 38
    cmpl-double p3, v0, v2

    .line 40
    if-eqz p3, :cond_0

    .line 42
    const-string p3, " +/- "

    .line 44
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 47
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    .line 49
    double-to-long v0, v0

    .line 50
    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    .line 53
    move-result-wide v0

    .line 54
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(J)V

    .line 57
    :cond_0
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerTotal()Z

    .line 60
    move-result p1

    .line 61
    const-string/jumbo p3, "mJ"

    .line 64
    if-eqz p1, :cond_1

    .line 66
    const-string/jumbo p1, "total power: "

    .line 69
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 72
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    .line 74
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 77
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 80
    :cond_1
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandTracking()Z

    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 86
    const-string/jumbo p1, "single-band tracking power: "

    .line 89
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 92
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    .line 94
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 97
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 100
    :cond_2
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandTracking()Z

    .line 103
    move-result p1

    .line 104
    if-eqz p1, :cond_3

    .line 106
    const-string/jumbo p1, "multi-band tracking power: "

    .line 109
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 112
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    .line 114
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 117
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 120
    :cond_3
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerSinglebandAcquisition()Z

    .line 123
    move-result p1

    .line 124
    if-eqz p1, :cond_4

    .line 126
    const-string/jumbo p1, "single-band acquisition power: "

    .line 129
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 132
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    .line 134
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 137
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 140
    :cond_4
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerMultibandAcquisition()Z

    .line 143
    move-result p1

    .line 144
    if-eqz p1, :cond_5

    .line 146
    const-string/jumbo p1, "multi-band acquisition power: "

    .line 149
    invoke-virtual {p2, p1}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 152
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    .line 154
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 157
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 160
    :cond_5
    invoke-virtual {p4}, Landroid/location/GnssCapabilities;->hasPowerOtherModes()Z

    .line 163
    move-result p1

    .line 164
    if-eqz p1, :cond_6

    .line 166
    const/4 p1, 0x0

    .line 167
    :goto_0
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    .line 169
    array-length p4, p4

    .line 170
    if-ge p1, p4, :cond_6

    .line 172
    new-instance p4, Ljava/lang/StringBuilder;

    .line 174
    const-string/jumbo v0, "other mode ["

    .line 177
    invoke-direct {p4, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    const-string v0, "] power: "

    .line 185
    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 191
    move-result-object p4

    .line 192
    invoke-virtual {p2, p4}, Landroid/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    .line 195
    iget-object p4, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    .line 197
    aget-wide v0, p4, p1

    .line 199
    invoke-virtual {p2, v0, v1}, Landroid/util/IndentingPrintWriter;->print(D)V

    .line 202
    invoke-virtual {p2, p3}, Landroid/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    .line 205
    add-int/lit8 p1, p1, 0x1

    .line 207
    goto :goto_0

    .line 208
    :cond_6
    return-void
.end method

.method public final getElapsedRealtimeNanos()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeNanos:J

    .line 3
    return-wide v0
.end method

.method public final getElapsedRealtimeUncertaintyNanos()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeUncertaintyNanos:D

    .line 3
    return-wide v0
.end method

.method public final getMultibandAcquisitionModeEnergyMilliJoule()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandAcquisitionModeEnergyMilliJoule:D

    .line 3
    return-wide v0
.end method

.method public final getMultibandTrackingModeEnergyMilliJoule()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mMultibandTrackingModeEnergyMilliJoule:D

    .line 3
    return-wide v0
.end method

.method public final getOtherModesEnergyMilliJoule()[D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mOtherModesEnergyMilliJoule:[D

    .line 3
    return-object p0
.end method

.method public final getSinglebandAcquisitionModeEnergyMilliJoule()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandAcquisitionModeEnergyMilliJoule:D

    .line 3
    return-wide v0
.end method

.method public final getSinglebandTrackingModeEnergyMilliJoule()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mSinglebandTrackingModeEnergyMilliJoule:D

    .line 3
    return-wide v0
.end method

.method public final getTotalEnergyMilliJoule()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mTotalEnergyMilliJoule:D

    .line 3
    return-wide v0
.end method

.method public final hasElapsedRealtimeNanos()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    .line 3
    const/4 v0, 0x1

    .line 4
    and-int/2addr p0, v0

    .line 5
    if-eqz p0, :cond_0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    return v0
.end method

.method public final hasElapsedRealtimeUncertaintyNanos()Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/server/location/gnss/GnssPowerStats;->mElapsedRealtimeFlags:I

    .line 3
    and-int/lit8 p0, p0, 0x2

    .line 5
    if-eqz p0, :cond_0

    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public final validate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/server/location/gnss/GnssPowerStats;->hasElapsedRealtimeNanos()Z

    .line 4
    move-result p0

    .line 5
    invoke-static {p0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 8
    return-void
.end method
