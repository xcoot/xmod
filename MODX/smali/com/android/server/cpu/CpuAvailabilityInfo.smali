.class public final Lcom/android/server/cpu/CpuAvailabilityInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final cpuset:I

.field public final dataTimestampUptimeMillis:J

.field public final latestAvgAvailabilityPercent:I

.field public final pastNMillisAvgAvailabilityPercent:I

.field public final pastNMillisDuration:J


# direct methods
.method public constructor <init>(IIIJJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 v0, 0x2

    .line 5
    const-string/jumbo v1, "cpuset"

    .line 8
    const/4 v2, 0x1

    .line 9
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 12
    move-result p1

    .line 13
    iput p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 15
    invoke-static {p4, p5}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 18
    move-result-wide p4

    .line 19
    iput-wide p4, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 21
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(I)I

    .line 24
    move-result p1

    .line 25
    iput p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 27
    iput p3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 29
    invoke-static {p6, p7}, Lcom/android/internal/util/Preconditions;->checkArgumentNonnegative(J)J

    .line 32
    move-result-wide p1

    .line 33
    iput-wide p1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    .line 35
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuAvailabilityInfo;

    .line 13
    iget v1, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 15
    iget v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 17
    if-ne v3, v1, :cond_2

    .line 19
    iget-wide v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 21
    iget-wide v5, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 23
    cmp-long v1, v3, v5

    .line 25
    if-nez v1, :cond_2

    .line 27
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 29
    iget v3, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 31
    if-ne v1, v3, :cond_2

    .line 33
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 35
    iget v3, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 37
    if-ne v1, v3, :cond_2

    .line 39
    iget-wide v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    .line 41
    iget-wide p0, p1, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    .line 43
    cmp-long p0, v3, p0

    .line 45
    if-nez p0, :cond_2

    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v0, v2

    .line 49
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 12
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 15
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 18
    move-result-object v2

    .line 19
    iget v3, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 24
    move-result-object v3

    .line 25
    iget-wide v4, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 30
    move-result-object p0

    .line 31
    filled-new-array {v0, v1, v2, v3, p0}, [Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 35
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 38
    move-result p0

    .line 39
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 3
    const-string v1, "CpuAvailabilityInfo{cpuset = "

    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->cpuset:I

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    const-string v1, ", dataTimestampUptimeMillis = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->dataTimestampUptimeMillis:J

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 23
    const-string v1, ", latestAvgAvailabilityPercent = "

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->latestAvgAvailabilityPercent:I

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v1, ", pastNMillisAvgAvailabilityPercent = "

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    iget v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisAvgAvailabilityPercent:I

    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string v1, ", pastNMillisDuration = "

    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    iget-wide v1, p0, Lcom/android/server/cpu/CpuAvailabilityInfo;->pastNMillisDuration:J

    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 53
    const/16 p0, 0x7d

    .line 55
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object p0

    .line 62
    return-object p0
.end method
