.class public Lcom/android/server/chimera/heimdall/Heimdall;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public DISABLED:Z

.field public final KILL_DISABLED:Z

.field public final PROP_ALWAYS_RUNNING_DISABLE:I

.field public mAnomalyType:I

.field public final mAnomalyTypeArray:[I

.field public final mContext:Landroid/content/Context;

.field public final mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

.field public final mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

.field public final mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

.field public final mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

.field public final mUriAnomalyTypeEnable:Landroid/net/Uri;

.field public final mUriRandomSampleRate:Landroid/net/Uri;

.field public final mUriReportHourInterval:Landroid/net/Uri;

.field public final mUriSpecUpdate:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 9

    .line 1
    const-string v0, "1"

    .line 3
    const-string v1, "0"

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    const-string/jumbo v2, "persist.sys.heimdalld.alwaysrunning_disable"

    .line 11
    const-string v3, ""

    .line 13
    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v2

    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v5

    .line 26
    if-nez v5, :cond_1

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v2

    .line 32
    if-nez v2, :cond_0

    .line 34
    const/4 v2, -0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v2, v3

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v2, v4

    .line 39
    :goto_0
    iput v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->PROP_ALWAYS_RUNNING_DISABLE:I

    .line 41
    const-string/jumbo v2, "persist.sys.heimdalld.disable"

    .line 44
    const-string/jumbo v5, "false"

    .line 47
    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 51
    const-string/jumbo v5, "true"

    .line 54
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v2

    .line 58
    iput-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 60
    const-string/jumbo v2, "persist.sys.heimdalld.kill_disable"

    .line 63
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 71
    iput-boolean v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 73
    const/16 v1, 0x10

    .line 75
    const/16 v2, 0x8

    .line 77
    const/4 v5, 0x4

    .line 78
    const/4 v6, 0x2

    .line 79
    filled-new-array {v1, v2, v5, v6, v3}, [I

    .line 82
    move-result-object v1

    .line 83
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 85
    const/16 v1, 0x18

    .line 87
    iput v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 89
    const-string/jumbo v1, "heimdall_spec_update"

    .line 92
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 95
    move-result-object v1

    .line 96
    iput-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriSpecUpdate:Landroid/net/Uri;

    .line 98
    const-string/jumbo v2, "heimdall_anomaly_type_enable"

    .line 101
    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 104
    move-result-object v2

    .line 105
    iput-object v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAnomalyTypeEnable:Landroid/net/Uri;

    .line 107
    const-string/jumbo v5, "heimdall_always_running_global_quota"

    .line 110
    invoke-static {v5}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 113
    move-result-object v5

    .line 114
    iput-object v5, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriAlwaysRunningGlobalQuota:Landroid/net/Uri;

    .line 116
    const-string/jumbo v6, "heimdall_report_hour_interval"

    .line 119
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 122
    move-result-object v6

    .line 123
    iput-object v6, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriReportHourInterval:Landroid/net/Uri;

    .line 125
    const-string/jumbo v7, "heimdall_random_sample_rate"

    .line 128
    invoke-static {v7}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 131
    move-result-object v7

    .line 132
    iput-object v7, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mUriRandomSampleRate:Landroid/net/Uri;

    .line 134
    :try_start_0
    new-instance v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 136
    invoke-direct {v8, p1, p2, p3}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;-><init>(Landroid/os/Looper;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 139
    iput-object v8, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 141
    iget-object p3, v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 143
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 145
    new-instance p3, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 147
    invoke-direct {p3, p0, p1}, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/os/Looper;)V

    .line 150
    iput-object p3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 152
    new-instance p1, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;

    .line 154
    invoke-direct {p1, p0, p2}, Lcom/android/server/chimera/heimdall/Heimdall$ScpmManager;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;Landroid/content/Context;)V

    .line 157
    new-instance p1, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;

    .line 159
    invoke-direct {p1, p0}, Lcom/android/server/chimera/heimdall/Heimdall$SettingsObserver;-><init>(Lcom/android/server/chimera/heimdall/Heimdall;)V

    .line 162
    iput-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mContext:Landroid/content/Context;

    .line 164
    if-eqz v0, :cond_2

    .line 166
    iget-object p3, v8, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallKillManager:Lcom/android/server/chimera/heimdall/HeimdallKillManager;

    .line 168
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    const-string v0, "KILL_DISABLED set true"

    .line 173
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 176
    iput-boolean v3, p3, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    .line 178
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 181
    move-result-object p2

    .line 182
    invoke-virtual {p2, v1, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 185
    invoke-virtual {p2, v2, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 188
    invoke-virtual {p2, v5, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 191
    invoke-virtual {p2, v6, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 194
    invoke-virtual {p2, v7, v4, p1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    goto :goto_1

    .line 198
    :catch_0
    move-exception p1

    .line 199
    new-instance p2, Ljava/lang/StringBuilder;

    .line 201
    const-string p3, "Heimdall init failed "

    .line 203
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 209
    move-result-object p3

    .line 210
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 216
    move-result-object p2

    .line 217
    invoke-static {p2}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 220
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 223
    iput-boolean v3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 225
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    const-string p2, "DISABLED="

    .line 229
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 234
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 237
    const-string p2, " KILL_DISABLED="

    .line 239
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 242
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 244
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object p1

    .line 251
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 254
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 256
    if-nez p0, :cond_3

    .line 258
    const-string p0, "SCAN_VERSION=1"

    .line 260
    invoke-static {p0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 263
    :cond_3
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string v0, "Heimdall"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    return-void
.end method

.method public static native readMemtrackMemory(I)[J
.end method


# virtual methods
.method public final checkAlwaysRunningProcesses(Ljava/util/List;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;

    .line 19
    iget-object v1, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 21
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 23
    iget-object v2, v2, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->mReportedAlwaysRunningProcesses:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 25
    invoke-virtual {v2, v1}, Ljava/util/concurrent/CopyOnWriteArraySet;->contains(Ljava/lang/Object;)Z

    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_0

    .line 31
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "Skip always running checking for "

    .line 35
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 40
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    const-string v0, " , heimdall already reported it"

    .line 45
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 55
    goto :goto_0

    .line 56
    :cond_0
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 58
    const/4 v2, 0x2

    .line 59
    invoke-virtual {v1, v2, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    .line 62
    move-result-object v0

    .line 63
    iget-object v2, v1, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 65
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 68
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    return-void
.end method

.method public final dumpInfo(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    const-string v0, "  Load spec success: "

    .line 3
    const-string v1, "  SPEC_VERSION: "

    .line 5
    const-string v2, "  kill: "

    .line 7
    const-string v3, "  feature enable: "

    .line 9
    if-eqz p1, :cond_8

    .line 11
    if-nez p2, :cond_0

    .line 13
    goto/16 :goto_5

    .line 15
    :cond_0
    const-string v4, "== heimdall dump start =="

    .line 17
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    :try_start_0
    array-length v4, p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 21
    iget-object v5, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 23
    const/4 v6, 0x1

    .line 24
    if-ne v4, v6, :cond_4

    .line 26
    :try_start_1
    const-string p2, "Configurations"

    .line 28
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 33
    invoke-direct {p2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    iget-boolean v3, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 38
    xor-int/2addr v3, v6

    .line 39
    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 42
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    iget-boolean p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 51
    if-nez p2, :cond_7

    .line 53
    if-eqz v5, :cond_7

    .line 55
    new-instance p2, Ljava/lang/StringBuilder;

    .line 57
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    iget-boolean v2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->KILL_DISABLED:Z

    .line 62
    xor-int/2addr v2, v6

    .line 63
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 66
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    move-result-object p2

    .line 70
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 73
    const-string p2, "  SCAN_VERSION: 1"

    .line 75
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 78
    new-instance p2, Ljava/lang/StringBuilder;

    .line 80
    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 83
    iget-object v1, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 85
    iget v1, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 87
    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 93
    move-result-object p2

    .line 94
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 99
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 102
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 104
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 106
    iget-object v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 108
    iget-boolean v0, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mLoadSuccess:Z

    .line 110
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 113
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    move-result-object p2

    .line 117
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 120
    new-instance p2, Ljava/lang/StringBuilder;

    .line 122
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    const-string v0, "  Anomaly type enable: "

    .line 127
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    iget v0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 132
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 134
    array-length v1, v1

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    .line 137
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 140
    const/4 v3, 0x0

    .line 141
    :goto_0
    if-ge v3, v1, :cond_2

    .line 143
    rem-int/lit8 v4, v0, 0x2

    .line 145
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 148
    shr-int/lit8 v0, v0, 0x1

    .line 150
    add-int/lit8 v4, v1, -0x1

    .line 152
    if-eq v3, v4, :cond_1

    .line 154
    const-string v4, ","

    .line 156
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 161
    goto :goto_0

    .line 162
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->reverse()Ljava/lang/StringBuilder;

    .line 165
    move-result-object v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 169
    move-result-object v0

    .line 170
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p2

    .line 177
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 180
    iget-object p2, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 182
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    .line 187
    const-string v0, "  Random sample rate: "

    .line 189
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 192
    sget v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 194
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 197
    const-string v0, ", block %.1f%% reports"

    .line 199
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 205
    move-result-object p2

    .line 206
    sget v0, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->sRandomSampleRate:I

    .line 208
    int-to-double v0, v0

    .line 209
    const-wide v2, 0x3fb999999999999aL    # 0.1

    .line 214
    mul-double/2addr v0, v2

    .line 215
    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    .line 217
    sub-double/2addr v2, v0

    .line 218
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 221
    move-result-object v0

    .line 222
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 225
    move-result-object v0

    .line 226
    invoke-static {p2, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 229
    move-result-object p2

    .line 230
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 233
    invoke-virtual {v5, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpKillStatus(Ljava/io/PrintWriter;)V

    .line 236
    invoke-virtual {v5, p1}, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->dumpProcessList(Ljava/io/PrintWriter;)V

    .line 239
    const-string p2, "\nOthers"

    .line 241
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 244
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mPhaseHandler:Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;

    .line 246
    if-eqz p0, :cond_3

    .line 248
    :try_start_2
    new-instance p2, Ljava/lang/StringBuilder;

    .line 250
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    const-string v0, "  The number of pending message in phase handler: "

    .line 255
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall$PhaseHandler;->mNumberOfPendingMessages:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 260
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 263
    move-result p0

    .line 264
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object p0

    .line 271
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 274
    goto :goto_1

    .line 275
    :catch_0
    move-exception p0

    .line 276
    goto :goto_3

    .line 277
    :cond_3
    :goto_1
    sget-object p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->INSTANCE:Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningMonitor;->dump(Ljava/io/PrintWriter;)V

    .line 282
    iget-object p0, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallReportManager:Lcom/android/server/chimera/heimdall/HeimdallReportManager;

    .line 284
    invoke-virtual {p0, p1}, Lcom/android/server/chimera/heimdall/HeimdallReportManager;->dumpReportHistory(Ljava/io/PrintWriter;)V

    .line 287
    new-instance p0, Ljava/lang/StringBuilder;

    .line 289
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    const-string/jumbo p2, "report_interval(hour): "

    .line 295
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    iget-object p2, v5, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallProcessList:Lcom/android/server/chimera/heimdall/HeimdallProcessList;

    .line 300
    iget p2, p2, Lcom/android/server/chimera/heimdall/HeimdallProcessList;->mTimeoutReportProtectedHour:I

    .line 302
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 305
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    move-result-object p0

    .line 309
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 312
    goto :goto_4

    .line 313
    :cond_4
    array-length p2, p2

    .line 314
    const/4 v0, 0x2

    .line 315
    if-lt p2, v0, :cond_7

    .line 317
    iget-boolean p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->DISABLED:Z

    .line 319
    if-nez p0, :cond_6

    .line 321
    if-nez v5, :cond_5

    .line 323
    goto :goto_2

    .line 324
    :cond_5
    const-string p0, "available in noship binary"

    .line 326
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 329
    goto :goto_4

    .line 330
    :cond_6
    :goto_2
    const-string/jumbo p0, "heimdall disabled"

    .line 333
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 336
    goto :goto_4

    .line 337
    :goto_3
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 340
    :cond_7
    :goto_4
    const-string p0, "== heimdall dump end =="

    .line 342
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 345
    :cond_8
    :goto_5
    return-void
.end method

.method public final updateAlwaysRunningGlobalQuota(Landroid/content/ContentResolver;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "heimdall_always_running_global_quota"

    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_0

    .line 11
    return-void

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 14
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 16
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 18
    if-lez p1, :cond_3

    .line 20
    iget-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->this$0:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 22
    iput p1, v0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mAlwaysRunningGlobalQuotaSpec:I

    .line 24
    iget-object p0, p0, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 26
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 29
    move-result-object p0

    .line 30
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object p0

    .line 34
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_4

    .line 40
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Ljava/util/List;

    .line 46
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v0

    .line 50
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 56
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 62
    iget-boolean v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 64
    if-eqz v2, :cond_2

    .line 66
    goto :goto_0

    .line 67
    :cond_2
    iget v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSizeInitial:I

    .line 69
    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    .line 72
    move-result v2

    .line 73
    iput v2, v1, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 75
    goto :goto_0

    .line 76
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    :cond_4
    return-void
.end method

.method public final updateAnomalyType(Landroid/content/ContentResolver;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "heimdall_anomaly_type_enable"

    .line 4
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    if-eqz p1, :cond_5

    .line 10
    const-string v0, ","

    .line 12
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 15
    move-result-object p1

    .line 16
    array-length v0, p1

    .line 17
    iget-object v1, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyTypeArray:[I

    .line 19
    array-length v2, v1

    .line 20
    if-ge v0, v2, :cond_0

    .line 22
    goto :goto_2

    .line 23
    :cond_0
    const/4 v0, 0x0

    .line 24
    move v2, v0

    .line 25
    :goto_0
    array-length v3, v1

    .line 26
    if-ge v2, v3, :cond_5

    .line 28
    aget-object v3, p1, v2

    .line 30
    const-string v4, "1"

    .line 32
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result v4

    .line 36
    const/16 v5, 0x8

    .line 38
    iget-object v6, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 40
    const/16 v7, 0x10

    .line 42
    if-eqz v4, :cond_2

    .line 44
    aget v3, v1, v2

    .line 46
    iget v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 48
    or-int/2addr v4, v3

    .line 49
    iput v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 51
    const/4 v4, 0x1

    .line 52
    if-ne v3, v7, :cond_1

    .line 54
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 56
    iput-boolean v4, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    if-ne v3, v5, :cond_4

    .line 61
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 63
    iput-boolean v4, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 65
    goto :goto_1

    .line 66
    :cond_2
    const-string v4, "0"

    .line 68
    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v3

    .line 72
    if-eqz v3, :cond_4

    .line 74
    aget v3, v1, v2

    .line 76
    iget v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 78
    not-int v8, v3

    .line 79
    and-int/2addr v4, v8

    .line 80
    iput v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mAnomalyType:I

    .line 82
    if-ne v3, v7, :cond_3

    .line 84
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 86
    iput-boolean v0, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_GLOBAL_KILL:Z

    .line 88
    goto :goto_1

    .line 89
    :cond_3
    if-ne v3, v5, :cond_4

    .line 91
    iget-object v3, v6, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 93
    iput-boolean v0, v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->ENABLE_SPEC_KILL:Z

    .line 95
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 97
    goto :goto_0

    .line 98
    :cond_5
    :goto_2
    return-void
.end method

.method public final updateSpec(Landroid/content/ContentResolver;)V
    .locals 12

    .line 1
    const-string/jumbo v0, "heimdall_spec_update"

    .line 4
    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 8
    if-nez p1, :cond_0

    .line 10
    return-void

    .line 11
    :cond_0
    const-string v0, ";"

    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 16
    move-result-object p1

    .line 17
    array-length v0, p1

    .line 18
    const/4 v1, 0x0

    .line 19
    move v2, v1

    .line 20
    :goto_0
    if-ge v2, v0, :cond_8

    .line 22
    aget-object v3, p1, v2

    .line 24
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/Heimdall;->mHeimdallPhaseManager:Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;

    .line 26
    iget-object v4, v4, Lcom/android/server/chimera/heimdall/HeimdallPhaseManager;->mHeimdallTriggerManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;

    .line 28
    iget-object v5, v4, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecManager:Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;

    .line 30
    :try_start_0
    const-string v6, ","

    .line 32
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 36
    array-length v6, v3

    .line 37
    const/4 v7, 0x7

    .line 38
    if-gt v6, v7, :cond_1

    .line 40
    goto/16 :goto_4

    .line 42
    :cond_1
    aget-object v6, v3, v1

    .line 44
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 47
    move-result v6

    .line 48
    iget v8, v4, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;->mSpecVersion:I

    .line 50
    if-gt v6, v8, :cond_2

    .line 52
    goto/16 :goto_4

    .line 54
    :cond_2
    new-array v8, v7, [Ljava/lang/String;

    .line 56
    const/4 v9, 0x1

    .line 57
    invoke-static {v3, v9, v8, v1, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 60
    aget-object v3, v8, v1

    .line 62
    iget-object v7, v5, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 64
    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    move-result-object v7

    .line 68
    check-cast v7, Ljava/util/List;

    .line 70
    if-nez v7, :cond_3

    .line 72
    new-instance v7, Ljava/util/ArrayList;

    .line 74
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 77
    iget-object v5, v5, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallSpecManager;->mSpecMap:Ljava/util/HashMap;

    .line 79
    invoke-virtual {v5, v3, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    goto :goto_2

    .line 83
    :catch_0
    move-exception v3

    .line 84
    goto :goto_3

    .line 85
    :cond_3
    aget-object v3, v8, v9

    .line 87
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 90
    move-result-object v5

    .line 91
    :cond_4
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 94
    move-result v10

    .line 95
    if-eqz v10, :cond_6

    .line 97
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 100
    move-result-object v10

    .line 101
    check-cast v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 103
    iget-object v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->procName:Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v11

    .line 109
    if-eqz v11, :cond_4

    .line 111
    iget v9, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    .line 113
    if-lt v9, v6, :cond_5

    .line 115
    move v9, v1

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    new-instance v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 119
    invoke-direct {v9, v4, v8}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V

    .line 122
    iget v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    .line 124
    iput v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specSize:I

    .line 126
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    .line 128
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreGlobalKill:Z

    .line 130
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 132
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreSpecKill:Z

    .line 134
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 136
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->allowAlwaysRunning:Z

    .line 138
    iget-boolean v11, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 140
    iput-boolean v11, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->ignoreAlwaysRunningSpecKill:Z

    .line 142
    iget v9, v9, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 144
    iput v9, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->alwaysRunningSpecSize:I

    .line 146
    iput v6, v10, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;->specVersion:I

    .line 148
    move v9, v1

    .line 149
    goto :goto_1

    .line 150
    :cond_6
    :goto_2
    if-eqz v9, :cond_7

    .line 152
    new-instance v3, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;

    .line 154
    invoke-direct {v3, v4, v8}, Lcom/android/server/chimera/heimdall/HeimdallTriggerManager$HeimdallProcSpec;-><init>(Lcom/android/server/chimera/heimdall/HeimdallTriggerManager;[Ljava/lang/String;)V

    .line 157
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    goto :goto_4

    .line 161
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    const-string v5, "Update spec catch exception! "

    .line 165
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v3}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    .line 171
    move-result-object v3

    .line 172
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 179
    invoke-static {v3}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 182
    :cond_7
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 184
    goto/16 :goto_0

    .line 186
    :cond_8
    return-void
.end method
