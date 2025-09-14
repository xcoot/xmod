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

    .line 2
    .line 3
    iput-object p2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 6
    .line 7
    const-string p1, "PMMProcessHeavyDumpThread"

    .line 8
    .line 9
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    const-string v0, "ActivityManager_kpm"

    .line 2
    .line 3
    const-string v1, "ProcessMemoryHeavy peakLmkdKillAdj : "

    .line 4
    .line 5
    const-wide/16 v2, 0xbb8

    .line 6
    .line 7
    const/4 v4, 0x0

    .line 8
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 9
    .line 10
    .line 11
    const-string v2, "PMM gatherHeavyProcessThread"

    .line 12
    .line 13
    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 17
    .line 18
    iget-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->this$0:Lcom/android/server/am/KillPolicyManager;

    .line 19
    .line 20
    invoke-virtual {v3}, Lcom/android/server/am/KillPolicyManager;->getProcMemInfo()Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 27
    .line 28
    const/4 v3, 0x1

    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-boolean v2, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 32
    .line 33
    if-nez v2, :cond_0

    .line 34
    .line 35
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 36
    .line 37
    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 38
    .line 39
    invoke-static {v2, v3, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 40
    .line 41
    .line 42
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmBigdata:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 43
    .line 44
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 45
    .line 46
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 47
    .line 48
    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 49
    .line 50
    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 51
    .line 52
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 53
    .line 54
    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 55
    .line 56
    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 57
    .line 58
    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 59
    .line 60
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 61
    .line 62
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 63
    .line 64
    invoke-static {v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mreportHeavyProcessTop5ByAdj(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V

    .line 65
    .line 66
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

    .line 71
    .line 72
    iget-object v5, v2, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 73
    .line 74
    invoke-static {v2, v4, v5}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mgetProcessMemoryDumpInformation(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;ZLcom/android/server/am/KillPolicyManager$ProcMemInfo;)V

    .line 75
    .line 76
    .line 77
    :goto_0
    iget-object v2, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->val$kpmPolicy:Lcom/android/server/am/KillPolicyManager$KpmRaw;

    .line 78
    .line 79
    if-eqz v2, :cond_1

    .line 80
    .line 81
    iget-object v5, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 82
    .line 83
    iget-object v6, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 84
    .line 85
    iget-object v7, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 86
    .line 87
    iget v8, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 88
    .line 89
    iput-object v6, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 90
    .line 91
    iput-boolean v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->isGetPssDump:Z

    .line 92
    .line 93
    iput v8, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->peakLmkdKillAdj:I

    .line 94
    .line 95
    iput-object v7, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->procMemInfo:Lcom/android/server/am/KillPolicyManager$ProcMemInfo;

    .line 96
    .line 97
    iget-object v3, v5, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->memoryUsageByAdj:Ljava/util/HashMap;

    .line 98
    .line 99
    iput-object v3, v2, Lcom/android/server/am/KillPolicyManager$KpmRaw;->dumpHeavyMemoryUsageByAdj:Ljava/util/HashMap;

    .line 100
    .line 101
    :cond_1
    sget-boolean v2, Lcom/android/server/am/KillPolicyManager;->KPM_DEBUG:Z

    .line 102
    .line 103
    if-eqz v2, :cond_2

    .line 104
    .line 105
    new-instance v2, Ljava/lang/StringBuilder;

    .line 106
    .line 107
    invoke-direct {v2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    iget-object v1, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 111
    .line 112
    iget v1, v1, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->peakLmkdKillAdj:I

    .line 113
    .line 114
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    .line 123
    .line 124
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 125
    .line 126
    iget-object v0, v0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->dumpHeavyProcessList:Ljava/util/ArrayList;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->showDebugHeavyProcess(Ljava/util/ArrayList;)V

    .line 129
    .line 130
    .line 131
    iget-object v0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 132
    .line 133
    invoke-static {v0}, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->-$$Nest$mshowDebugAdjMemory(Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 138
    .line 139
    .line 140
    :cond_2
    :goto_2
    iget-object p0, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo$1;->this$1:Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;

    .line 141
    .line 142
    iput-boolean v4, p0, Lcom/android/server/am/KillPolicyManager$ProcessMemoryHeavyInfo;->isThreadRunning:Z

    .line 143
    .line 144
    return-void
.end method
