.class public final Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public totalNormalizedAvailableCpuFreqKHz:J

.field public totalOfflineCpus:I

.field public totalOfflineMaxCpuFreqKHz:J

.field public totalOnlineCpus:I

.field public totalOnlineMaxCpuFreqKHz:J

.field public final uptimeMillis:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final getAverageAvailableCpuFreqPercent()I
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 2
    .line 3
    long-to-double v0, v0

    .line 4
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 5
    .line 6
    mul-double/2addr v0, v2

    .line 7
    iget-wide v2, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    .line 8
    .line 9
    long-to-double v2, v2

    .line 10
    div-double/2addr v0, v2

    .line 11
    double-to-int v0, v0

    .line 12
    if-gez v0, :cond_0

    .line 13
    .line 14
    sget-boolean v1, Lcom/android/server/cpu/CpuMonitorService;->DEBUG:Z

    .line 15
    .line 16
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    invoke-virtual {p0}, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p0

    .line 28
    const-string v0, "CpuMonitorService"

    .line 29
    .line 30
    const-string v1, "Computed negative CPU availability percent(%d) for %s "

    .line 31
    .line 32
    invoke-static {v0, v1, p0}, Lcom/android/server/utils/Slogf;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    const/4 p0, 0x0

    .line 36
    return p0

    .line 37
    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Snapshot{uptimeMillis = "

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->uptimeMillis:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", totalOnlineCpus = "

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineCpus:I

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v1, ", totalOfflineCpus = "

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineCpus:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string v1, ", totalNormalizedAvailableCpuFreqKHz = "

    .line 34
    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalNormalizedAvailableCpuFreqKHz:J

    .line 39
    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    const-string v1, ", totalOnlineMaxCpuFreqKHz = "

    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOnlineMaxCpuFreqKHz:J

    .line 49
    .line 50
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    const-string v1, ", totalOfflineMaxCpuFreqKHz = "

    .line 54
    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    iget-wide v1, p0, Lcom/android/server/cpu/CpuMonitorService$CpusetInfo$Snapshot;->totalOfflineMaxCpuFreqKHz:J

    .line 59
    .line 60
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    const/16 p0, 0x7d

    .line 64
    .line 65
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p0

    .line 72
    return-object p0
.end method
