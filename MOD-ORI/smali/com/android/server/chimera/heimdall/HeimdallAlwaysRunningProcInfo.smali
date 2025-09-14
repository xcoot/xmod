.class public final Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final abnormalType:I

.field public adj:I

.field public alwaysRunningStartTime:J

.field public isForegroundApp:Z

.field public final packageName:Ljava/lang/String;

.field public final pid:I

.field public final processName:Ljava/lang/String;

.field public reportTime:J

.field public final uid:I


# direct methods
.method public constructor <init>(IIILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p4, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 3
    iput-object p5, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 4
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    .line 5
    iput p2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 6
    iput p3, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->adj:I

    return-void
.end method

.method public constructor <init>(Lcom/android/server/chimera/heimdall/HeimdallProcessData;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->firstAppPackageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->processName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 10
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->uid:I

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->uid:I

    .line 11
    iget v0, p1, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->pid:I

    iput v0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 12
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isGlobalKill()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0xbcc

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isSpecKill()Z

    move-result v0

    if-eqz v0, :cond_1

    const/16 p1, 0xbcd

    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Lcom/android/server/chimera/heimdall/HeimdallProcessData;->isAlwaysRunningSpecKill()Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0xbcf

    goto :goto_0

    :cond_2
    const/16 p1, 0xbce

    .line 15
    :goto_0
    iput p1, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    return-void
.end method


# virtual methods
.method public final toDumpString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "HeimdallAlwaysRunningProcInfo{"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v2, " processName="

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->processName:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    new-instance v1, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const-string v2, " pid="

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->pid:I

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    const-string v2, " packageName="

    .line 49
    .line 50
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    iget-object v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    new-instance v1, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    const-string v2, " reportTime="

    .line 68
    .line 69
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    iget-wide v2, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->reportTime:J

    .line 73
    .line 74
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, " abnormalType="

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget p0, p0, Lcom/android/server/chimera/heimdall/HeimdallAlwaysRunningProcInfo;->abnormalType:I

    .line 92
    .line 93
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    const-string p0, " }"

    .line 104
    .line 105
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object p0

    .line 112
    return-object p0
.end method
