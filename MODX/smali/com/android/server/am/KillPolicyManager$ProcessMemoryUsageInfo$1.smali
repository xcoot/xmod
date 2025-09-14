.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

.field public final synthetic val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 5
    const-string p1, "KPMProcessMemoryDumpThread"

    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "ActivityManager_kpm"

    .line 3
    const-string v1, "KPM end cycle get pss"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 10
    iget-boolean v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 16
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 18
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 20
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 22
    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->activate(Landroid/content/Context;)V

    .line 25
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v0

    .line 27
    goto :goto_4

    .line 28
    :catch_0
    move-exception v0

    .line 29
    goto :goto_2

    .line 30
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 32
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 35
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 37
    if-eqz v0, :cond_1

    .line 39
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 41
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 46
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 48
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 50
    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 52
    iget-boolean v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 54
    if-eqz v2, :cond_2

    .line 56
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 64
    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 66
    if-eqz v1, :cond_3

    .line 68
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 70
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 78
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 80
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->report(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 87
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 89
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    goto :goto_1

    .line 97
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 102
    new-instance v0, Ljava/util/HashMap;

    .line 104
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 107
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 109
    return-void

    .line 110
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 112
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 117
    throw v0
.end method
