.class public final Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;
.super Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final TAG:Ljava/lang/String;

.field public final mPerf:Landroid/util/BoostFramework;

.field public final synthetic this$0:Lcom/android/server/chimera/GPUMemoryReclaimer;


# direct methods
.method public constructor <init>(Lcom/android/server/chimera/GPUMemoryReclaimer;Lcom/android/server/chimera/GPUMemoryReclaimer;)V
    .locals 6

    .line 1
    const-string p1, "GMR: Success write max reclaim limit: "

    .line 3
    invoke-direct {p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;-><init>()V

    .line 6
    const-class v0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;

    .line 8
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 12
    const-string v1, "GMR "

    .line 14
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    .line 20
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 22
    new-instance p2, Landroid/util/BoostFramework;

    .line 24
    invoke-direct {p2}, Landroid/util/BoostFramework;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    .line 29
    const-string/jumbo v1, "vendor.perf.bgt.enable"

    .line 32
    const-string/jumbo v2, "false"

    .line 35
    invoke-virtual {p2, v1, v2}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p2

    .line 39
    invoke-static {p2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 42
    move-result p2

    .line 43
    if-eqz p2, :cond_0

    .line 45
    const/4 p2, 0x1

    .line 46
    iput-boolean p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->mIsInitialized:Z

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    const/4 p2, 0x0

    .line 50
    iput-object p2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    .line 52
    const-string/jumbo p2, "perf-hal bgt disabled"

    .line 55
    invoke-static {v0, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :goto_0
    :try_start_0
    new-instance p2, Ljava/io/File;

    .line 60
    const-string v1, "/sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 62
    invoke-direct {p2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 65
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    .line 68
    move-result-wide v1

    .line 69
    sget v3, Landroid/system/OsConstants;->_SC_PAGESIZE:I

    .line 71
    invoke-static {v3}, Landroid/system/Os;->sysconf(I)J

    .line 74
    move-result-wide v4

    .line 75
    div-long/2addr v1, v4

    .line 76
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 79
    move-result-object v1

    .line 80
    invoke-static {p2, v1}, Landroid/os/FileUtils;->stringToFile(Ljava/io/File;Ljava/lang/String;)V

    .line 83
    new-instance p2, Ljava/lang/StringBuilder;

    .line 85
    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 88
    invoke-static {}, Lcom/android/server/chimera/GPUMemoryReclaimer;->getMaxReclaimSize()J

    .line 91
    move-result-wide v1

    .line 92
    invoke-static {v3}, Landroid/system/Os;->sysconf(I)J

    .line 95
    move-result-wide v3

    .line 96
    div-long/2addr v1, v3

    .line 97
    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p1

    .line 104
    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    goto :goto_1

    .line 108
    :catch_0
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    .line 110
    const-string p1, "GMR: Failed to write max recaim limit to /sys/class/kgsl/kgsl/max_reclaim_limit"

    .line 112
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_1
    return-void
.end method


# virtual methods
.method public final calculateReclaimed([J)J
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    aget-wide p0, p1, p0

    .line 4
    return-wide p0
.end method

.method public final calculateResident([J)J
    .locals 4

    .line 1
    const/4 p0, 0x0

    .line 2
    aget-wide v0, p1, p0

    .line 4
    const/4 p0, 0x1

    .line 5
    aget-wide v2, p1, p0

    .line 7
    add-long/2addr v0, v2

    .line 8
    const/4 p0, 0x2

    .line 9
    aget-wide p0, p1, p0

    .line 11
    sub-long/2addr v0, p0

    .line 12
    return-wide v0
.end method

.method public final getMeminfoRaw(I)[J
    .locals 6

    .line 1
    const-string v0, "/sys/class/kgsl/kgsl/proc/"

    .line 3
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 7
    const-string v0, "/gpumem_mapped"

    .line 9
    invoke-static {p1, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 13
    const-string v1, "/gpumem_unmapped"

    .line 15
    invoke-static {p1, v1}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 19
    const-string v2, "/gpumem_reclaimed"

    .line 21
    invoke-static {p1, v2}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 25
    iget-object v2, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 27
    iget-object v2, v2, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 29
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-static {v0}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 39
    move-result-wide v2

    .line 40
    iget-object v0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 42
    iget-object v0, v0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 44
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 47
    invoke-static {v1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 54
    move-result-wide v0

    .line 55
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;->self:Lcom/android/server/chimera/GPUMemoryReclaimer;

    .line 57
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer;->mUtils:Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;

    .line 59
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 62
    invoke-static {p1}, Lcom/android/server/chimera/GPUMemoryReclaimer$Utils;->readFileToString(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 66
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 69
    move-result-wide p0

    .line 70
    const/4 v4, 0x3

    .line 71
    new-array v4, v4, [J

    .line 73
    const/4 v5, 0x0

    .line 74
    aput-wide v2, v4, v5

    .line 76
    const/4 v2, 0x1

    .line 77
    aput-wide v0, v4, v2

    .line 79
    const/4 v0, 0x2

    .line 80
    aput-wide p0, v4, v0

    .line 82
    return-object v4
.end method

.method public final getReclaimableTasks()Ljava/util/ArrayList;
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 8
    const-string v2, "/sys/class/kgsl/kgsl/proc"

    .line 10
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_1

    .line 19
    const/4 v2, 0x0

    .line 20
    :goto_0
    array-length v3, v1

    .line 21
    if-ge v2, v3, :cond_1

    .line 23
    aget-object v3, v1, v2

    .line 25
    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_0

    .line 31
    invoke-virtual {v3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    move-result-object v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 38
    move-result v3

    .line 39
    new-instance v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;

    .line 41
    invoke-direct {v4, v3, p0}, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;-><init>(ILcom/android/server/chimera/GPUMemoryReclaimer$VendorPlugin;)V

    .line 44
    iget-boolean v3, v4, Lcom/android/server/chimera/GPUMemoryReclaimer$ReclaimableTask;->mIsSuccess:Z

    .line 46
    if-eqz v3, :cond_0

    .line 48
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    goto :goto_1

    .line 52
    :catch_0
    move-exception v1

    .line 53
    goto :goto_2

    .line 54
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 56
    goto :goto_0

    .line 57
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    .line 59
    const-string v3, "Cannot access /sys/class/kgsl/kgsl/proc : "

    .line 61
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v1}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 75
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->TAG:Ljava/lang/String;

    .line 77
    invoke-static {p0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    return-object v0
.end method

.method public final swapInImpl(I)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const/high16 v0, 0x42820000    # 65.0f

    .line 9
    filled-new-array {v0, p1}, [I

    .line 12
    move-result-object p1

    .line 13
    const/16 v0, 0xa

    .line 15
    invoke-virtual {p0, v0, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 18
    const/4 p0, 0x0

    .line 19
    return p0
.end method

.method public final swapOutImpl(ILjava/lang/String;)I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/chimera/GPUMemoryReclaimer$KGSLPlugin;->mPerf:Landroid/util/BoostFramework;

    .line 3
    if-nez p0, :cond_0

    .line 5
    const/4 p0, -0x1

    .line 6
    return p0

    .line 7
    :cond_0
    const p2, 0x42824000    # 65.125f

    .line 10
    filled-new-array {p2, p1}, [I

    .line 13
    move-result-object p1

    .line 14
    const/16 p2, 0xa

    .line 16
    invoke-virtual {p0, p2, p1}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 19
    const/4 p0, 0x0

    .line 20
    return p0
.end method
