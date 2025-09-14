.class public final Lcom/android/server/power/stats/SystemServerCpuThreadReader;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

.field public final mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

.field public mLastBinderThreadCpuTimesUs:[J

.field public mLastThreadCpuTimesUs:[J


# direct methods
.method public constructor <init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    invoke-direct {v0, p1, p2}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;-><init>(ILcom/android/internal/os/KernelSingleProcessCpuThreadReader$CpuTimeInStateReader;)V

    invoke-direct {p0, v0}, Lcom/android/server/power/stats/SystemServerCpuThreadReader;-><init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 6
    iput-object p1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    return-void
.end method


# virtual methods
.method public final readDelta()Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getCpuFrequencyCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 8
    .line 9
    iget-object v2, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mDeltaCpuThreadTimes:Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    new-array v1, v0, [J

    .line 14
    .line 15
    iput-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 16
    .line 17
    new-array v1, v0, [J

    .line 18
    .line 19
    iput-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    .line 20
    .line 21
    new-array v1, v0, [J

    .line 22
    .line 23
    iput-object v1, v2, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 24
    .line 25
    new-array v1, v0, [J

    .line 26
    .line 27
    iput-object v1, v2, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 28
    .line 29
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mKernelCpuThreadReader:Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;

    .line 30
    .line 31
    invoke-virtual {v1}, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader;->getProcessCpuUsage()Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    if-nez v1, :cond_1

    .line 36
    .line 37
    const/4 p0, 0x0

    .line 38
    return-object p0

    .line 39
    :cond_1
    add-int/lit8 v0, v0, -0x1

    .line 40
    .line 41
    :goto_0
    if-ltz v0, :cond_2

    .line 42
    .line 43
    iget-object v3, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->threadCpuTimesMillis:[J

    .line 44
    .line 45
    aget-wide v3, v3, v0

    .line 46
    .line 47
    const-wide/16 v5, 0x3e8

    .line 48
    .line 49
    mul-long/2addr v3, v5

    .line 50
    iget-object v7, v1, Lcom/android/internal/os/KernelSingleProcessCpuThreadReader$ProcessCpuUsage;->selectedThreadCpuTimesMillis:[J

    .line 51
    .line 52
    aget-wide v7, v7, v0

    .line 53
    .line 54
    mul-long/2addr v7, v5

    .line 55
    iget-object v5, v2, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->threadCpuTimesUs:[J

    .line 56
    .line 57
    iget-object v6, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 58
    .line 59
    aget-wide v9, v6, v0

    .line 60
    .line 61
    sub-long v9, v3, v9

    .line 62
    .line 63
    const-wide/16 v11, 0x0

    .line 64
    .line 65
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 66
    .line 67
    .line 68
    move-result-wide v9

    .line 69
    aput-wide v9, v5, v0

    .line 70
    .line 71
    iget-object v5, v2, Lcom/android/server/power/stats/SystemServerCpuThreadReader$SystemServiceCpuThreadTimes;->binderThreadCpuTimesUs:[J

    .line 72
    .line 73
    iget-object v6, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    .line 74
    .line 75
    aget-wide v9, v6, v0

    .line 76
    .line 77
    sub-long v9, v7, v9

    .line 78
    .line 79
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 80
    .line 81
    .line 82
    move-result-wide v9

    .line 83
    aput-wide v9, v5, v0

    .line 84
    .line 85
    iget-object v5, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastThreadCpuTimesUs:[J

    .line 86
    .line 87
    aput-wide v3, v5, v0

    .line 88
    .line 89
    iget-object v3, p0, Lcom/android/server/power/stats/SystemServerCpuThreadReader;->mLastBinderThreadCpuTimesUs:[J

    .line 90
    .line 91
    aput-wide v7, v3, v0

    .line 92
    .line 93
    add-int/lit8 v0, v0, -0x1

    .line 94
    .line 95
    goto :goto_0

    .line 96
    :cond_2
    return-object v2
.end method
