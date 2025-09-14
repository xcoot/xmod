.class public final Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

.field public static final IS_DEBUG_LEVEL_LOW:Z

.field public static final IS_ENG_BUILD:Z


# instance fields
.field public final mAlwaysRunningProcMap:Ljava/util/Map;

.field public mContext:Landroid/content/Context;

.field public mHandler:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor$OomAdjHandler;

.field public mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

.field public mIsInit:Z

.field public mIsIssueTrackerInstalled:Z

.field public mServiceThread:Lcom/android/server/ServiceThread;

.field public mSystemRepository:Lcom/android/server/chimera/SystemRepository;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 3
    invoke-direct {v0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;-><init>()V

    .line 6
    sput-object v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 8
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 11
    const-string v1, "0x4f4c"

    .line 13
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 21
    sput-boolean v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->IS_DEBUG_LEVEL_LOW:Z

    .line 23
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 25
    sput-boolean v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->IS_ENG_BUILD:Z

    .line 27
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 11
    return-void
.end method

.method public static isAlwaysRunningAdj(I)Z
    .locals 1

    .line 1
    if-lez p0, :cond_0

    .line 3
    const/16 v0, 0xfa

    .line 5
    if-gt p0, v0, :cond_0

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


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->isEnable()Z

    .line 4
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 8
    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 12
    const-string v3, "AlwaysRunningGateKeeping"

    .line 14
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    new-instance v3, Ljava/lang/StringBuilder;

    .line 19
    const-string v4, "  Feature enable: "

    .line 21
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 30
    move-result-object v3

    .line 31
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 34
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "  Global quota: "

    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 43
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 45
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 47
    iget v4, v4, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 49
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    const-string v3, "  Process detect hour: 3"

    .line 61
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 64
    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->getAlwaysRunningList()Ljava/util/List;

    .line 69
    move-result-object p0

    .line 70
    check-cast p0, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 75
    move-result v0

    .line 76
    if-nez v0, :cond_0

    .line 78
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 81
    const-wide/16 v3, 0x3

    .line 83
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 86
    move-result-object v0

    .line 87
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 91
    const-string v3, "  Always Running Process List (> %d hour)\n"

    .line 93
    invoke-virtual {p1, v3, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 96
    const-string v0, "  Pid ProcessName PackageName CurAdj AlwaysRunningMinutes"

    .line 98
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 104
    move-result-object p0

    .line 105
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 108
    move-result v0

    .line 109
    if-eqz v0, :cond_0

    .line 111
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 119
    const-string v4, "  "

    .line 121
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 124
    iget v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 126
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 129
    const-string v4, ","

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    iget-object v5, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 136
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    iget-object v5, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 144
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    iget v5, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->adj:I

    .line 152
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    iget-wide v4, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 160
    sub-long v4, v1, v4

    .line 162
    const-wide/32 v6, 0xea60

    .line 165
    div-long/2addr v4, v6

    .line 166
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 176
    goto :goto_0

    .line 177
    :cond_0
    return-void
.end method

.method public final getAlwaysRunningList()Ljava/util/List;
    .locals 9

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 9
    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 12
    monitor-enter v3

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mAlwaysRunningProcMap:Ljava/util/Map;

    .line 15
    check-cast p0, Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 25
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v4

    .line 29
    if-eqz v4, :cond_1

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 35
    check-cast v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 37
    iget-wide v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->alwaysRunningStartTime:J

    .line 39
    const-wide/16 v7, 0x0

    .line 41
    cmp-long v7, v5, v7

    .line 43
    if-eqz v7, :cond_0

    .line 45
    sub-long v5, v1, v5

    .line 47
    const-wide/32 v7, 0xa4cb80

    .line 50
    cmp-long v5, v5, v7

    .line 52
    if-lez v5, :cond_0

    .line 54
    iget-boolean v5, v4, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->isForegroundApp:Z

    .line 56
    if-nez v5, :cond_0

    .line 58
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    goto :goto_0

    .line 62
    :catchall_0
    move-exception p0

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    monitor-exit v3

    .line 65
    return-object v0

    .line 66
    :goto_1
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    throw p0
.end method

.method public final isEnable()Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsInit:Z

    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_4

    .line 6
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mHeimdall:Lcom/android/server/chimera/heimdall/Heimdall;

    .line 8
    iget-object v2, v0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 10
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 12
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 14
    iget-boolean v2, v2, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    .line 16
    if-nez v2, :cond_0

    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget v2, v0, Lcom/android/server/chimera/heimdall/Heimdall;->PROP_ALWAYS_RUNNING_DISABLE:I

    .line 21
    const/4 v3, -0x1

    .line 22
    const/4 v4, 0x1

    .line 23
    if-eq v2, v3, :cond_2

    .line 25
    if-nez v2, :cond_1

    .line 27
    move v1, v4

    .line 28
    :cond_1
    return v1

    .line 29
    :cond_2
    sget-boolean v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->IS_DEBUG_LEVEL_LOW:Z

    .line 31
    if-nez v2, :cond_4

    .line 33
    sget-boolean v2, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->IS_ENG_BUILD:Z

    .line 35
    if-nez v2, :cond_4

    .line 37
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->mIsIssueTrackerInstalled:Z

    .line 39
    if-eqz p0, :cond_4

    .line 41
    iget p0, v0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 43
    and-int/lit8 v0, p0, 0x2

    .line 45
    if-eqz v0, :cond_3

    .line 47
    goto :goto_0

    .line 48
    :cond_3
    and-int/lit8 p0, p0, 0x4

    .line 50
    if-eqz p0, :cond_4

    .line 52
    :goto_0
    move v1, v4

    .line 53
    :cond_4
    :goto_1
    return v1
.end method
