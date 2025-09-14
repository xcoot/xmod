.class public abstract Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final MODEL_UMR_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    const-string/jumbo v0, "ro.sys.kernelmemory.umr.enabled"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "false"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v1, "true"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    sput-boolean v0, Lcom/android/server/chimera/umr/UnifiedMemoryReclaimer;->MODEL_UMR_ENABLED:Z

    .line 19
    .line 20
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 21
    .line 22
    .line 23
    const-string v1, "Unknown"

    .line 24
    .line 25
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "0x4f4c"

    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 32
    .line 33
    .line 34
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    .line 35
    .line 36
    .line 37
    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_cpu_threshold_ms"

    .line 38
    .line 39
    .line 40
    const/16 v1, 0x190

    .line 41
    .line 42
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 43
    .line 44
    .line 45
    const-string/jumbo v0, "ro.sys.kernelmemory.umr.psi_mem_threshold_ms"

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x64

    .line 49
    .line 50
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 51
    .line 52
    .line 53
    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_avail_low_threshold_kb"

    .line 54
    .line 55
    .line 56
    const-wide/32 v1, 0x200000

    .line 57
    .line 58
    .line 59
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 60
    .line 61
    .line 62
    const-string/jumbo v0, "ro.sys.kernelmemory.umr.mem_free_low_threshold_kb"

    .line 63
    .line 64
    .line 65
    const-wide/32 v1, 0x19000

    .line 66
    .line 67
    .line 68
    invoke-static {v0, v1, v2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 69
    .line 70
    .line 71
    const/4 v0, 0x1

    .line 72
    const-string/jumbo v1, "staticInitialize: UnifiedMemoryReclaimer is disabled by config"

    .line 73
    .line 74
    .line 75
    invoke-static {v1, v0}, Lcom/android/server/chimera/umr/KernelMemoryProxy$ReclaimerLog;->write(Ljava/lang/String;Z)V

    .line 76
    .line 77
    .line 78
    return-void
.end method

.method private static native closeCpuStatusMonitorNative()V
.end method

.method private static native closeMemStatusMonitorNative()V
.end method

.method private static native createStatusMonitorNative()I
.end method

.method private static native destroyStatusMonitorNative()V
.end method

.method public static dumpInfo(Ljava/io/PrintWriter;)V
    .locals 4

    .line 1
    const-string v0, "1"

    .line 2
    .line 3
    const-string/jumbo v1, "true"

    .line 4
    .line 5
    .line 6
    const-string v2, "True"

    .line 7
    .line 8
    const-string v3, "TRUE"

    .line 9
    .line 10
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    const-string v0, "0"

    .line 18
    .line 19
    const-string/jumbo v1, "false"

    .line 20
    .line 21
    .line 22
    const-string v2, "False"

    .line 23
    .line 24
    const-string v3, "FALSE"

    .line 25
    .line 26
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 31
    .line 32
    .line 33
    :try_start_0
    const-string/jumbo v0, "disabled by system configuration"

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    :catch_0
    return-void
.end method

.method private static native getFreeMemoryNative()J
.end method

.method public static isInAppLaunch()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/android/server/chimera/umr/ForegroundAppTracker;->mForegroundMonitor:Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-static {}, Lcom/android/server/chimera/umr/ForegroundAppTracker;->getForegroundMonitor()Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-boolean v0, v0, Lcom/android/server/chimera/umr/ForegroundAppTracker$ForegroundMonitor;->mAppLaunch:Z

    .line 12
    .line 13
    :goto_0
    return v0
.end method

.method private static native openCpuStatusMonitorNative(II)I
.end method

.method private static native openMemStatusMonitorNative(II)I
.end method

.method private static native waitForStatusUpdate()I
.end method
