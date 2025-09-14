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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 4
    .line 5
    const-string p1, "KPMProcessMemoryDumpThread"

    .line 6
    .line 7
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "ActivityManager_kpm"

    .line 2
    .line 3
    const-string v1, "KPM end cycle get pss"

    .line 4
    .line 5
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 9
    .line 10
    iget-boolean v0, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 15
    .line 16
    iget-object v1, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 17
    .line 18
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 19
    .line 20
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1, v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->activate(Landroid/content/Context;)V

    .line 23
    .line 24
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

    .line 31
    .line 32
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mgetProcDumpMemInfo(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 33
    .line 34
    .line 35
    sget-boolean v0, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 40
    .line 41
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->-$$Nest$mshowDebugAdjPss(Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 47
    .line 48
    iget-object v2, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 49
    .line 50
    iput-object v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procsAdjPss:Ljava/util/HashMap;

    .line 51
    .line 52
    iget-boolean v2, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isStateChanged:Z

    .line 53
    .line 54
    if-eqz v2, :cond_2

    .line 55
    .line 56
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 57
    .line 58
    const/4 v2, 0x0

    .line 59
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 60
    .line 61
    .line 62
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 63
    .line 64
    iget-boolean v1, v0, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isDailyBigdata:Z

    .line 65
    .line 66
    if-eqz v1, :cond_3

    .line 67
    .line 68
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 69
    .line 70
    iget-object v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 71
    .line 72
    const/4 v2, 0x1

    .line 73
    invoke-virtual {v1, v2, v0}, Lcom/android/server/am/KillPolicyManager;->reportUserTrend(ILcom/android/server/am/KillPolicyManager$KpmRaw;)V

    .line 74
    .line 75
    .line 76
    :cond_3
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 77
    .line 78
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 79
    .line 80
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->val$lastCycle:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 81
    .line 82
    invoke-virtual {v0, v1}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->report(Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    .line 84
    .line 85
    :goto_1
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 90
    .line 91
    .line 92
    goto :goto_3

    .line 93
    :goto_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    goto :goto_1

    .line 97
    :goto_3
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v0, Ljava/util/HashMap;

    .line 103
    .line 104
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .line 106
    .line 107
    iput-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->procsMemoryPssKbByADJ:Ljava/util/HashMap;

    .line 108
    .line 109
    return-void

    .line 110
    :goto_4
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;

    .line 111
    .line 112
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryUsageInfo;->mProcessSamplingManager:Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;

    .line 113
    .line 114
    invoke-virtual {p0}, Lcom/android/server/am/KillPolicyManager$ProcessSamplingManager;->deactivate()V

    .line 115
    .line 116
    .line 117
    throw v0
.end method
