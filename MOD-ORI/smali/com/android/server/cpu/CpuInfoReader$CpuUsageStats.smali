.class public final Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final guestNiceTimeMillis:J

.field public final guestTimeMillis:J

.field public final idleTimeMillis:J

.field public final iowaitTimeMillis:J

.field public final irqTimeMillis:J

.field public final niceTimeMillis:J

.field public final softirqTimeMillis:J

.field public final stealTimeMillis:J

.field public final systemTimeMillis:J

.field public final userTimeMillis:J


# direct methods
.method public constructor <init>(JJJJJJJJJJ)V
    .locals 3

    .line 1
    move-object v0, p0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    .line 4
    .line 5
    move-wide v1, p1

    .line 6
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 7
    .line 8
    move-wide v1, p3

    .line 9
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 10
    .line 11
    move-wide v1, p5

    .line 12
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 13
    .line 14
    move-wide v1, p7

    .line 15
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 16
    .line 17
    move-wide v1, p9

    .line 18
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 19
    .line 20
    move-wide v1, p11

    .line 21
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 22
    .line 23
    move-wide/from16 v1, p13

    .line 24
    .line 25
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 26
    .line 27
    move-wide/from16 v1, p15

    .line 28
    .line 29
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 30
    .line 31
    move-wide/from16 v1, p17

    .line 32
    .line 33
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 34
    .line 35
    move-wide/from16 v1, p19

    .line 36
    .line 37
    iput-wide v1, v0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 38
    .line 39
    return-void
.end method

.method public static diff(JJ)J
    .locals 1

    .line 1
    cmp-long v0, p0, p2

    .line 2
    .line 3
    if-lez v0, :cond_0

    .line 4
    .line 5
    sub-long/2addr p0, p2

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const-wide/16 p0, 0x0

    .line 8
    .line 9
    :goto_0
    return-wide p0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;

    .line 12
    .line 13
    iget-wide v3, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 14
    .line 15
    iget-wide v5, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 16
    .line 17
    cmp-long v1, v5, v3

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 22
    .line 23
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 24
    .line 25
    cmp-long v1, v3, v5

    .line 26
    .line 27
    if-nez v1, :cond_2

    .line 28
    .line 29
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 30
    .line 31
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 32
    .line 33
    cmp-long v1, v3, v5

    .line 34
    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 38
    .line 39
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 40
    .line 41
    cmp-long v1, v3, v5

    .line 42
    .line 43
    if-nez v1, :cond_2

    .line 44
    .line 45
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 46
    .line 47
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 48
    .line 49
    cmp-long v1, v3, v5

    .line 50
    .line 51
    if-nez v1, :cond_2

    .line 52
    .line 53
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 54
    .line 55
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 56
    .line 57
    cmp-long v1, v3, v5

    .line 58
    .line 59
    if-nez v1, :cond_2

    .line 60
    .line 61
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 62
    .line 63
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 64
    .line 65
    cmp-long v1, v3, v5

    .line 66
    .line 67
    if-nez v1, :cond_2

    .line 68
    .line 69
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 70
    .line 71
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 72
    .line 73
    cmp-long v1, v3, v5

    .line 74
    .line 75
    if-nez v1, :cond_2

    .line 76
    .line 77
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 78
    .line 79
    iget-wide v5, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 80
    .line 81
    cmp-long v1, v3, v5

    .line 82
    .line 83
    if-nez v1, :cond_2

    .line 84
    .line 85
    iget-wide v3, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 86
    .line 87
    iget-wide p0, p1, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 88
    .line 89
    cmp-long p0, v3, p0

    .line 90
    .line 91
    if-nez p0, :cond_2

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_2
    move v0, v2

    .line 95
    :goto_0
    return v0
.end method

.method public final hashCode()I
    .locals 12

    .line 1
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 2
    .line 3
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 4
    .line 5
    .line 6
    move-result-object v2

    .line 7
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 8
    .line 9
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 14
    .line 15
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 20
    .line 21
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 22
    .line 23
    .line 24
    move-result-object v5

    .line 25
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 26
    .line 27
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 32
    .line 33
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 34
    .line 35
    .line 36
    move-result-object v7

    .line 37
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 38
    .line 39
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    .line 41
    .line 42
    move-result-object v8

    .line 43
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 44
    .line 45
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 50
    .line 51
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 52
    .line 53
    .line 54
    move-result-object v10

    .line 55
    iget-wide v0, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v11

    .line 61
    filled-new-array/range {v2 .. v11}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object p0

    .line 65
    invoke-static {p0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    .line 66
    .line 67
    .line 68
    move-result p0

    .line 69
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "CpuUsageStats{ userTimeMillis = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->userTimeMillis:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", niceTimeMillis = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->niceTimeMillis:J

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", systemTimeMillis = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->systemTimeMillis:J

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", idleTimeMillis = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->idleTimeMillis:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", iowaitTimeMillis = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->iowaitTimeMillis:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", irqTimeMillis = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->irqTimeMillis:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const-string v1, ", softirqTimeMillis = "

    .line 64
    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->softirqTimeMillis:J

    .line 69
    .line 70
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    const-string v1, ", stealTimeMillis = "

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->stealTimeMillis:J

    .line 79
    .line 80
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    const-string v1, ", guestTimeMillis = "

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    .line 87
    .line 88
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestTimeMillis:J

    .line 89
    .line 90
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v1, ", guestNiceTimeMillis = "

    .line 94
    .line 95
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-wide v1, p0, Lcom/android/server/cpu/CpuInfoReader$CpuUsageStats;->guestNiceTimeMillis:J

    .line 99
    .line 100
    const-string p0, " }"

    .line 101
    .line 102
    invoke-static {v0, v1, v2, p0}, Landroid/hardware/audio/common/V2_0/AudioConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;JLjava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object p0

    .line 106
    return-object p0
.end method
