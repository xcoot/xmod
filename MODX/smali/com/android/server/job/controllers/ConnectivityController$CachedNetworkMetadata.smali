.class public final Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public capabilitiesFirstAcquiredTimeElapsed:J

.field public defaultNetworkActivationLastCheckTimeElapsed:J

.field public defaultNetworkActivationLastConfirmedTimeElapsed:J

.field public networkCapabilities:Landroid/net/NetworkCapabilities;

.field public satisfiesTransportAffinities:Z


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "CNM{"

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->networkCapabilities:Landroid/net/NetworkCapabilities;

    .line 10
    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->toString()Ljava/lang/String;

    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string v1, ", satisfiesTransportAffinities="

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    iget-boolean v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->satisfiesTransportAffinities:Z

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    const-string v1, ", capabilitiesFirstAcquiredTimeElapsed="

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->capabilitiesFirstAcquiredTimeElapsed:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 37
    const-string v1, ", defaultNetworkActivationLastCheckTimeElapsed="

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastCheckTimeElapsed:J

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 47
    const-string v1, ", defaultNetworkActivationLastConfirmedTimeElapsed="

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    iget-wide v1, p0, Lcom/android/server/job/controllers/ConnectivityController$CachedNetworkMetadata;->defaultNetworkActivationLastConfirmedTimeElapsed:J

    .line 54
    const-string/jumbo p0, "}"

    .line 57
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 61
    return-object p0
.end method
