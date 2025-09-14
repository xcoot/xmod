.class public final Lcom/android/server/chimera/ProcessStatsAndOomScores;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public mPids:[I

.field public mScores:[I

.field public mStates:[I


# direct methods
.method public static create(Lcom/android/server/chimera/ChimeraAppInfo;Lcom/android/server/chimera/SystemRepository;)Lcom/android/server/chimera/ProcessStatsAndOomScores;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_3

    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    goto :goto_2

    .line 7
    :cond_0
    new-instance v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 13
    .line 14
    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 15
    .line 16
    iput-object v0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 17
    .line 18
    iget-object v0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 19
    .line 20
    check-cast v0, Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-array v2, v0, [I

    .line 27
    .line 28
    iput-object v2, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 29
    .line 30
    iget-object p0, p0, Lcom/android/server/chimera/ChimeraAppInfo;->procList:Ljava/util/List;

    .line 31
    .line 32
    check-cast p0, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    .line 36
    .line 37
    move-result-object p0

    .line 38
    const/4 v2, 0x0

    .line 39
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    if-eqz v3, :cond_1

    .line 44
    .line 45
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;

    .line 50
    .line 51
    iget-object v4, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 52
    .line 53
    add-int/lit8 v5, v2, 0x1

    .line 54
    .line 55
    iget v3, v3, Lcom/android/server/chimera/ChimeraAppInfo$ProcessInfo;->pid:I

    .line 56
    .line 57
    aput v3, v4, v2

    .line 58
    .line 59
    move v2, v5

    .line 60
    goto :goto_0

    .line 61
    :cond_1
    iget-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 62
    .line 63
    invoke-virtual {p1, p0}, Lcom/android/server/chimera/SystemRepository;->getProcessStatesAndOomScoresForPIDs([I)Landroid/util/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    if-eqz p0, :cond_2

    .line 68
    .line 69
    iget-object p1, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 70
    .line 71
    check-cast p1, [I

    .line 72
    .line 73
    iput-object p1, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 74
    .line 75
    iget-object p0, p0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 76
    .line 77
    check-cast p0, [I

    .line 78
    .line 79
    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-array p0, v0, [I

    .line 83
    .line 84
    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 85
    .line 86
    new-array p0, v0, [I

    .line 87
    .line 88
    iput-object p0, v1, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 89
    .line 90
    :goto_1
    return-object v1

    .line 91
    :cond_3
    :goto_2
    return-object v0
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "pids: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mPids:[I

    .line 12
    .line 13
    array-length v4, v3

    .line 14
    const-string v5, " "

    .line 15
    .line 16
    if-ge v2, v4, :cond_0

    .line 17
    .line 18
    aget v3, v3, v2

    .line 19
    .line 20
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    const-string v2, "/ stats: "

    .line 30
    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    move v2, v1

    .line 35
    :goto_1
    iget-object v3, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mStates:[I

    .line 36
    .line 37
    array-length v4, v3

    .line 38
    if-ge v2, v4, :cond_1

    .line 39
    .line 40
    aget v3, v3, v2

    .line 41
    .line 42
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    add-int/lit8 v2, v2, 0x1

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const-string v2, "/ adjs: "

    .line 52
    .line 53
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    :goto_2
    iget-object v2, p0, Lcom/android/server/chimera/ProcessStatsAndOomScores;->mScores:[I

    .line 57
    .line 58
    array-length v3, v2

    .line 59
    if-ge v1, v3, :cond_2

    .line 60
    .line 61
    aget v2, v2, v1

    .line 62
    .line 63
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    add-int/lit8 v1, v1, 0x1

    .line 70
    .line 71
    goto :goto_2

    .line 72
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object p0

    .line 76
    return-object p0
.end method
