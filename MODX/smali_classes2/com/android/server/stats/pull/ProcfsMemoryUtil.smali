.class public abstract Lcom/android/server/stats/pull/ProcfsMemoryUtil;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final CMDLINE_OUT:[I

.field public static final STATUS_KEYS:[Ljava/lang/String;

.field public static final VMSTAT_KEYS:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    const/16 v0, 0x1000

    .line 2
    .line 3
    filled-new-array {v0}, [I

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    .line 8
    .line 9
    const-string v5, "RssShmem:"

    .line 10
    .line 11
    const-string v6, "VmSwap:"

    .line 12
    .line 13
    const-string v1, "Uid:"

    .line 14
    .line 15
    const-string v2, "VmHWM:"

    .line 16
    .line 17
    const-string v3, "VmRSS:"

    .line 18
    .line 19
    const-string v4, "RssAnon:"

    .line 20
    .line 21
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    .line 26
    .line 27
    const-string/jumbo v0, "oom_kill"

    .line 28
    .line 29
    .line 30
    filled-new-array {v0}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    sput-object v0, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->VMSTAT_KEYS:[Ljava/lang/String;

    .line 35
    .line 36
    return-void
.end method

.method public static getProcessCmdlines()Landroid/util/SparseArray;
    .locals 7

    .line 1
    const/16 v0, 0x400

    .line 2
    .line 3
    new-array v0, v0, [I

    .line 4
    .line 5
    const-string v1, "/proc"

    .line 6
    .line 7
    invoke-static {v1, v0}, Landroid/os/Process;->getPids(Ljava/lang/String;[I)[I

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/util/SparseArray;

    .line 12
    .line 13
    array-length v2, v0

    .line 14
    invoke-direct {v1, v2}, Landroid/util/SparseArray;-><init>(I)V

    .line 15
    .line 16
    .line 17
    array-length v2, v0

    .line 18
    const/4 v3, 0x0

    .line 19
    :goto_0
    if-ge v3, v2, :cond_2

    .line 20
    .line 21
    aget v4, v0, v3

    .line 22
    .line 23
    if-gez v4, :cond_0

    .line 24
    .line 25
    goto :goto_2

    .line 26
    :cond_0
    invoke-static {v4}, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->readCmdlineFromProcfs(I)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    invoke-virtual {v1, v4, v5}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    :goto_2
    return-object v1
.end method

.method public static readCmdlineFromProcfs(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    new-array v0, v0, [Ljava/lang/String;

    .line 3
    .line 4
    const-string v1, "/proc/"

    .line 5
    .line 6
    const-string v2, "/cmdline"

    .line 7
    .line 8
    invoke-static {p0, v1, v2}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    sget-object v1, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->CMDLINE_OUT:[I

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-static {p0, v1, v0, v2, v2}, Landroid/os/Process;->readProcFile(Ljava/lang/String;[I[Ljava/lang/String;[J[F)Z

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    if-nez p0, :cond_0

    .line 20
    .line 21
    const-string p0, ""

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    aget-object p0, v0, p0

    .line 26
    .line 27
    return-object p0
.end method

.method public static readMemorySnapshotFromProcfs(I)Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;
    .locals 13

    .line 1
    const/4 v0, 0x6

    .line 2
    new-array v0, v0, [J

    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    const-wide/16 v2, -0x1

    .line 6
    .line 7
    aput-wide v2, v0, v1

    .line 8
    .line 9
    const/4 v4, 0x3

    .line 10
    aput-wide v2, v0, v4

    .line 11
    .line 12
    const/4 v5, 0x4

    .line 13
    aput-wide v2, v0, v5

    .line 14
    .line 15
    const/4 v6, 0x5

    .line 16
    aput-wide v2, v0, v6

    .line 17
    .line 18
    const-string v7, "/proc/"

    .line 19
    .line 20
    const-string v8, "/status"

    .line 21
    .line 22
    invoke-static {p0, v7, v8}, Lcom/android/server/BinaryTransparencyService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v7, Lcom/android/server/stats/pull/ProcfsMemoryUtil;->STATUS_KEYS:[Ljava/lang/String;

    .line 27
    .line 28
    invoke-static {p0, v7, v0}, Landroid/os/Process;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)V

    .line 29
    .line 30
    .line 31
    aget-wide v7, v0, v1

    .line 32
    .line 33
    cmp-long p0, v7, v2

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    aget-wide v9, v0, v4

    .line 38
    .line 39
    cmp-long p0, v9, v2

    .line 40
    .line 41
    if-eqz p0, :cond_1

    .line 42
    .line 43
    aget-wide v4, v0, v5

    .line 44
    .line 45
    cmp-long p0, v4, v2

    .line 46
    .line 47
    if-eqz p0, :cond_1

    .line 48
    .line 49
    aget-wide v11, v0, v6

    .line 50
    .line 51
    cmp-long p0, v11, v2

    .line 52
    .line 53
    if-nez p0, :cond_0

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_0
    new-instance p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;

    .line 57
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    .line 60
    .line 61
    long-to-int v1, v7

    .line 62
    iput v1, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->uid:I

    .line 63
    .line 64
    const/4 v1, 0x1

    .line 65
    aget-wide v1, v0, v1

    .line 66
    .line 67
    long-to-int v1, v1

    .line 68
    iput v1, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssHighWaterMarkInKilobytes:I

    .line 69
    .line 70
    const/4 v1, 0x2

    .line 71
    aget-wide v0, v0, v1

    .line 72
    .line 73
    long-to-int v0, v0

    .line 74
    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssInKilobytes:I

    .line 75
    .line 76
    long-to-int v0, v9

    .line 77
    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->anonRssInKilobytes:I

    .line 78
    .line 79
    long-to-int v0, v4

    .line 80
    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->rssShmemKilobytes:I

    .line 81
    .line 82
    long-to-int v0, v11

    .line 83
    iput v0, p0, Lcom/android/server/stats/pull/ProcfsMemoryUtil$MemorySnapshot;->swapInKilobytes:I

    .line 84
    .line 85
    return-object p0

    .line 86
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 87
    return-object p0
.end method
