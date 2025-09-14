.class public final Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;
.super Ljava/lang/Thread;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final synthetic this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

.field public final synthetic val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

.field public final synthetic val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;


# direct methods
.method public constructor <init>(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;Lcom/android/server/am/KillPolicyManager$KpmRaw;Lcom/android/server/am/KillPolicyManager$KpmRaw;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 3
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 5
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 7
    const-string p1, "PMMProcessHeavyDumpThread"

    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "ActivityManager_kpm"

    .line 3
    const-string v1, "ProcessMemoryHeavy peakLmkdKillAdj : "

    .line 5
    const-wide/16 v2, 0xbb8

    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    const-string v2, "PMM gatherHeavyProcessThread"

    .line 13
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 18
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 20
    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 26
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_0

    .line 31
    iget-boolean v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 33
    if-nez v2, :cond_0

    .line 35
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 37
    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 39
    invoke-static {v2, v3, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 42
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 44
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 46
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 48
    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 50
    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 52
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 54
    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 56
    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 58
    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 60
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 62
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 64
    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    .line 67
    goto :goto_0

    .line 68
    :catch_0
    move-exception v0

    .line 69
    goto :goto_1

    .line 70
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 72
    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 74
    invoke-static {v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 77
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 79
    if-eqz v2, :cond_1

    .line 81
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 83
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 85
    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 87
    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 89
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 91
    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 93
    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 95
    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 97
    iget-object v3, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 99
    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 101
    :cond_1
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 103
    if-eqz v2, :cond_2

    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 112
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 126
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 128
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    .line 131
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 133
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    goto :goto_2

    .line 137
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 140
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 142
    iput-boolean v4, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 144
    return-void
.end method
