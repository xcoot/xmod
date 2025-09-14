.class public final Lcom/android/server/display/mode/VotesStorage;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field static final GLOBAL_ID:I = -0x1


# instance fields
.field public final mListener:Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

.field public mLoggingEnabled:Z

.field public final mStorageLock:Ljava/lang/Object;

.field public final mVotesByDisplay:Landroid/util/SparseArray;

.field public final mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;Lcom/android/server/display/mode/VotesStatsReporter;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/Object;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 10
    .line 11
    new-instance v0, Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 17
    .line 18
    iput-object p1, p0, Lcom/android/server/display/mode/VotesStorage;->mListener:Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    const/4 v2, 0x0

    .line 10
    move v3, v2

    .line 11
    :goto_0
    :try_start_0
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 12
    .line 13
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    .line 19
    iget-object v4, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->keyAt(I)I

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    iget-object v5, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 26
    .line 27
    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    check-cast v5, Landroid/util/SparseArray;

    .line 32
    .line 33
    invoke-virtual {v5}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    invoke-virtual {v0, v4, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 38
    .line 39
    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    goto :goto_5

    .line 45
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 46
    const-string p0, "  mVotesByDisplay:"

    .line 47
    .line 48
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    :goto_1
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 52
    .line 53
    .line 54
    move-result p0

    .line 55
    if-ge v2, p0, :cond_4

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object p0

    .line 61
    check-cast p0, Landroid/util/SparseArray;

    .line 62
    .line 63
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-nez v1, :cond_1

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 71
    .line 72
    const-string v3, "    "

    .line 73
    .line 74
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    .line 78
    .line 79
    .line 80
    move-result v3

    .line 81
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v3, ":"

    .line 85
    .line 86
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const/16 v1, 0x18

    .line 97
    .line 98
    :goto_2
    if-ltz v1, :cond_3

    .line 99
    .line 100
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Lcom/android/server/display/mode/Vote;

    .line 105
    .line 106
    if-nez v3, :cond_2

    .line 107
    .line 108
    goto :goto_3

    .line 109
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    const-string v5, "      "

    .line 112
    .line 113
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {v1}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v5, " -> "

    .line 124
    .line 125
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    :goto_3
    add-int/lit8 v1, v1, -0x1

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_3
    :goto_4
    add-int/lit8 v2, v2, 0x1

    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_4
    return-void

    .line 145
    :goto_5
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 146
    throw p0
.end method

.method public final getVotes(I)Landroid/util/SparseArray;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Landroid/util/SparseArray;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    goto :goto_0

    .line 19
    :catchall_0
    move-exception p0

    .line 20
    goto :goto_3

    .line 21
    :cond_0
    new-instance p1, Landroid/util/SparseArray;

    .line 22
    .line 23
    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    .line 24
    .line 25
    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 27
    .line 28
    const/4 v1, -0x1

    .line 29
    invoke-virtual {p0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object p0

    .line 33
    check-cast p0, Landroid/util/SparseArray;

    .line 34
    .line 35
    if-eqz p0, :cond_1

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/util/SparseArray;->clone()Landroid/util/SparseArray;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    goto :goto_1

    .line 42
    :cond_1
    new-instance p0, Landroid/util/SparseArray;

    .line 43
    .line 44
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 45
    .line 46
    .line 47
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 48
    const/4 v0, 0x0

    .line 49
    :goto_2
    invoke-virtual {p0}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ge v0, v1, :cond_3

    .line 54
    .line 55
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->keyAt(I)I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->contains(I)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-nez v2, :cond_2

    .line 64
    .line 65
    invoke-virtual {p0, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    check-cast v2, Lcom/android/server/display/mode/Vote;

    .line 70
    .line 71
    invoke-virtual {p1, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_3
    return-object p1

    .line 78
    :goto_3
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 79
    throw p0
.end method

.method public injectVotesByDisplay(Landroid/util/SparseArray;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/SparseArray;->clear()V

    .line 7
    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseArray;->size()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ge v1, v2, :cond_0

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 17
    .line 18
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    invoke-virtual {p1, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Landroid/util/SparseArray;

    .line 27
    .line 28
    invoke-virtual {v2, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catchall_0
    move-exception p0

    .line 35
    goto :goto_1

    .line 36
    :cond_0
    monitor-exit v0

    .line 37
    return-void

    .line 38
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method public final updateVote(IILcom/android/server/display/mode/Vote;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "VotesStorage"

    .line 6
    .line 7
    const-string/jumbo v1, "updateVoteLocked(displayId="

    .line 8
    .line 9
    .line 10
    const-string v2, ", priority="

    .line 11
    .line 12
    invoke-static {p1, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    const-string v2, ", vote="

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v2, ")"

    .line 32
    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    :cond_0
    if-ltz p2, :cond_9

    .line 44
    .line 45
    const/16 v0, 0x18

    .line 46
    .line 47
    if-le p2, v0, :cond_1

    .line 48
    .line 49
    goto/16 :goto_3

    .line 50
    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mStorageLock:Ljava/lang/Object;

    .line 52
    .line 53
    monitor-enter v0

    .line 54
    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 55
    .line 56
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->contains(I)Z

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-eqz v1, :cond_2

    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    check-cast v1, Landroid/util/SparseArray;

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    goto :goto_2

    .line 73
    :cond_2
    new-instance v1, Landroid/util/SparseArray;

    .line 74
    .line 75
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 76
    .line 77
    .line 78
    iget-object v2, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 79
    .line 80
    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object v2

    .line 87
    check-cast v2, Lcom/android/server/display/mode/Vote;

    .line 88
    .line 89
    const/4 v3, 0x1

    .line 90
    if-eqz p3, :cond_3

    .line 91
    .line 92
    invoke-virtual {p3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v4

    .line 96
    if-nez v4, :cond_3

    .line 97
    .line 98
    invoke-virtual {v1, p2, p3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    if-nez p3, :cond_4

    .line 103
    .line 104
    if-eqz v2, :cond_4

    .line 105
    .line 106
    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_5

    .line 114
    .line 115
    iget-object v2, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesByDisplay:Landroid/util/SparseArray;

    .line 116
    .line 117
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 118
    .line 119
    .line 120
    goto :goto_1

    .line 121
    :cond_4
    const/4 v3, 0x0

    .line 122
    :cond_5
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 123
    iget-boolean v0, p0, Lcom/android/server/display/mode/VotesStorage;->mLoggingEnabled:Z

    .line 124
    .line 125
    if-eqz v0, :cond_6

    .line 126
    .line 127
    const-string v0, "VotesStorage"

    .line 128
    .line 129
    new-instance v2, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    const-string v4, "Updated votes for display="

    .line 132
    .line 133
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    const-string v4, " votes="

    .line 140
    .line 141
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v1

    .line 151
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    .line 153
    .line 154
    :cond_6
    if-eqz v3, :cond_8

    .line 155
    .line 156
    iget-object v0, p0, Lcom/android/server/display/mode/VotesStorage;->mVotesStatsReporter:Lcom/android/server/display/mode/VotesStatsReporter;

    .line 157
    .line 158
    if-eqz v0, :cond_7

    .line 159
    .line 160
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/display/mode/VotesStatsReporter;->reportVoteChanged(IILcom/android/server/display/mode/Vote;)V

    .line 161
    .line 162
    .line 163
    :cond_7
    iget-object p0, p0, Lcom/android/server/display/mode/VotesStorage;->mListener:Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;

    .line 164
    .line 165
    iget-object p0, p0, Lcom/android/server/display/mode/DisplayModeDirector$$ExternalSyntheticLambda0;->f$0:Lcom/android/server/display/mode/DisplayModeDirector;

    .line 166
    .line 167
    invoke-virtual {p0}, Lcom/android/server/display/mode/DisplayModeDirector;->notifyDesiredDisplayModeSpecsChangedLocked()V

    .line 168
    .line 169
    .line 170
    :cond_8
    return-void

    .line 171
    :goto_2
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    throw p0

    .line 173
    :cond_9
    :goto_3
    const-string p0, "VotesStorage"

    .line 174
    .line 175
    new-instance p1, Ljava/lang/StringBuilder;

    .line 176
    .line 177
    const-string v0, "Received a vote with an invalid priority, ignoring: priority="

    .line 178
    .line 179
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    invoke-static {p2}, Lcom/android/server/display/mode/Vote;->priorityToString(I)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object p2

    .line 186
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    const-string p2, ", vote="

    .line 190
    .line 191
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object p1

    .line 201
    invoke-static {p0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    return-void
.end method
