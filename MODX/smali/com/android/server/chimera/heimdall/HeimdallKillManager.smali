.class public final Lcom/android/server/chimera/heimdall/HeimdallKillManager;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public KILL_DISABLED:Z

.field public mAlwaysRunningKillCntAfterBoot:I

.field public mGlobalKillCntAfterBoot:I

.field public mService:Lcom/android/server/am/ActivityManagerService;

.field public mSpecKillCntAfterBoot:I


# virtual methods
.method public final kill(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->KILL_DISABLED:Z

    .line 3
    if-nez v0, :cond_4

    .line 5
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->flags:I

    .line 7
    const/16 v1, 0x400

    .line 9
    and-int/2addr v0, v1

    .line 10
    if-ne v0, v1, :cond_4

    .line 12
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    .line 15
    move-result v0

    .line 16
    const/4 v1, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 19
    new-array v0, v1, [I

    .line 21
    new-array v2, v1, [I

    .line 23
    iget v3, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 25
    filled-new-array {v3}, [I

    .line 28
    move-result-object v3

    .line 29
    iget-object v4, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 31
    invoke-virtual {v4, v3, v0, v2}, Lcom/android/server/am/ActivityManagerService;->getProcessStatesAndOomScoresForPIDs([I[I[I)V

    .line 34
    const/4 v0, 0x0

    .line 35
    aget v0, v2, v0

    .line 37
    iget v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 39
    const/16 v3, 0x9

    .line 41
    invoke-static {v2, v3}, Landroid/os/Process;->sendSignal(II)V

    .line 44
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 47
    move-result-wide v2

    .line 48
    iput-wide v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    .line 50
    const-string v2, "Global Kill is performed to (with oom score="

    .line 52
    const-string v3, ") "

    .line 54
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 69
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 72
    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    .line 74
    add-int/2addr p1, v1

    .line 75
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mGlobalKillCntAfterBoot:I

    .line 77
    goto :goto_1

    .line 78
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 81
    move-result v0

    .line 82
    if-nez v0, :cond_1

    .line 84
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_4

    .line 90
    :cond_1
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    .line 92
    const/16 v2, 0xb

    .line 94
    invoke-static {v0, v2}, Landroid/os/Process;->sendSignal(II)V

    .line 97
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 100
    move-result-wide v2

    .line 101
    iput-wide v2, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->killTime:J

    .line 103
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    .line 106
    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 109
    const-string v2, "Spec Kill"

    .line 111
    goto :goto_0

    .line 112
    :cond_2
    const-string v2, "AlwaysRunning Kill"

    .line 114
    :goto_0
    const-string v3, " is performed to "

    .line 116
    invoke-static {v2, v3}, Lcom/android/internal/util/jobs/Preconditions$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->toDumpString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 124
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 131
    invoke-static {p1}, Lcom/android/server/chimera/heimdall/Heimdall;->log(Ljava/lang/String;)V

    .line 134
    if-eqz v0, :cond_3

    .line 136
    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    .line 138
    add-int/2addr p1, v1

    .line 139
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mSpecKillCntAfterBoot:I

    .line 141
    goto :goto_1

    .line 142
    :cond_3
    iget p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    .line 144
    add-int/2addr p1, v1

    .line 145
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallKillManager;->mAlwaysRunningKillCntAfterBoot:I

    .line 147
    :cond_4
    :goto_1
    return-void
.end method
