.class public final Lcom/android/server/am/FgsTempAllowList;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mLock:Ljava/lang/Object;

.field public final mMaxSize:I

.field public final mTempAllowList:Landroid/util/SparseArray;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 10
    .line 11
    const/16 v0, 0x64

    .line 12
    .line 13
    iput v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 14
    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public final add(IJLjava/lang/Object;)V
    .locals 7

    .line 1
    const-string v0, "FgsTempAllowList length:"

    .line 2
    .line 3
    const-string v1, "FgsTempAllowList bad duration:"

    .line 4
    .line 5
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 6
    .line 7
    monitor-enter v2

    .line 8
    const-wide/16 v3, 0x0

    .line 9
    .line 10
    cmp-long v3, p2, v3

    .line 11
    .line 12
    if-gtz v3, :cond_0

    .line 13
    .line 14
    :try_start_0
    const-string p0, "ActivityManager"

    .line 15
    .line 16
    new-instance p4, Ljava/lang/StringBuilder;

    .line 17
    .line 18
    invoke-direct {p4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p4, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string p2, " key: "

    .line 25
    .line 26
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    monitor-exit v2

    .line 40
    return-void

    .line 41
    :catchall_0
    move-exception p0

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 44
    .line 45
    .line 46
    move-result-wide v3

    .line 47
    iget-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    iget v5, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 54
    .line 55
    if-le v1, v5, :cond_2

    .line 56
    .line 57
    const-string v5, "ActivityManager"

    .line 58
    .line 59
    new-instance v6, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v0, " exceeds maxSize"

    .line 68
    .line 69
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    iget v0, p0, Lcom/android/server/am/FgsTempAllowList;->mMaxSize:I

    .line 73
    .line 74
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-static {v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    add-int/lit8 v1, v1, -0x1

    .line 85
    .line 86
    :goto_0
    if-ltz v1, :cond_2

    .line 87
    .line 88
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 89
    .line 90
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/util/Pair;

    .line 95
    .line 96
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 97
    .line 98
    check-cast v0, Ljava/lang/Long;

    .line 99
    .line 100
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 101
    .line 102
    .line 103
    move-result-wide v5

    .line 104
    cmp-long v0, v5, v3

    .line 105
    .line 106
    if-gez v0, :cond_1

    .line 107
    .line 108
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 111
    .line 112
    .line 113
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 117
    .line 118
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    check-cast v0, Landroid/util/Pair;

    .line 123
    .line 124
    add-long/2addr v3, p2

    .line 125
    if-eqz v0, :cond_3

    .line 126
    .line 127
    iget-object p2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p2, Ljava/lang/Long;

    .line 130
    .line 131
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 132
    .line 133
    .line 134
    move-result-wide p2

    .line 135
    cmp-long p2, p2, v3

    .line 136
    .line 137
    if-gez p2, :cond_4

    .line 138
    .line 139
    :cond_3
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 140
    .line 141
    new-instance p2, Landroid/util/Pair;

    .line 142
    .line 143
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 144
    .line 145
    .line 146
    move-result-object p3

    .line 147
    invoke-direct {p2, p3, p4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    :cond_4
    monitor-exit v2

    .line 154
    return-void

    .line 155
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    throw p0
.end method

.method public final forEach(Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 6
    .line 7
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 14
    .line 15
    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->keyAt(I)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 20
    .line 21
    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    check-cast v3, Landroid/util/Pair;

    .line 26
    .line 27
    if-eqz v3, :cond_0

    .line 28
    .line 29
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticLambda27;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    goto :goto_2

    .line 39
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_1
    monitor-exit v0

    .line 43
    return-void

    .line 44
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 45
    throw p0
.end method

.method public final get(I)Landroid/util/Pair;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/server/am/FgsTempAllowList;->mLock:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 5
    .line 6
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    const/4 v1, 0x0

    .line 11
    if-gez p1, :cond_0

    .line 12
    .line 13
    monitor-exit v0

    .line 14
    return-object v1

    .line 15
    :catchall_0
    move-exception p0

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    iget-object v2, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 18
    .line 19
    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/util/Pair;

    .line 24
    .line 25
    iget-object v2, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast v2, Ljava/lang/Long;

    .line 28
    .line 29
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 30
    .line 31
    .line 32
    move-result-wide v2

    .line 33
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 34
    .line 35
    .line 36
    move-result-wide v4

    .line 37
    cmp-long v2, v2, v4

    .line 38
    .line 39
    if-gez v2, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 42
    .line 43
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 44
    .line 45
    .line 46
    monitor-exit v0

    .line 47
    return-object v1

    .line 48
    :cond_1
    iget-object p0, p0, Lcom/android/server/am/FgsTempAllowList;->mTempAllowList:Landroid/util/SparseArray;

    .line 49
    .line 50
    invoke-virtual {p0, p1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    check-cast p0, Landroid/util/Pair;

    .line 55
    .line 56
    monitor-exit v0

    .line 57
    return-object p0

    .line 58
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    throw p0
.end method
