.class public final Lcom/android/server/wm/TaskSnapshotCache;
.super Lcom/android/server/wm/SnapshotCache;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static sSplitModeMaxCacheSize:I


# instance fields
.field public final mLoader:Lcom/android/server/wm/AppSnapshotLoader;

.field public final mTaskIdsInSplitMode:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/AppSnapshotLoader;)V
    .locals 1

    .line 1
    const-string v0, "Task"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/server/wm/SnapshotCache;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getSnapshot(IIZZZ)Landroid/window/TaskSnapshot;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mLoader:Lcom/android/server/wm/AppSnapshotLoader;

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    if-eqz p5, :cond_0

    .line 6
    .line 7
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 8
    .line 9
    .line 10
    const-wide/16 v1, 0x20

    .line 11
    .line 12
    const-string p5, "getSnapshot: tryRestoreFromDisk"

    .line 13
    .line 14
    invoke-static {v1, v2, p5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 p5, 0x1

    .line 18
    invoke-virtual {v0, p1, p2, p5}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    .line 19
    .line 20
    .line 21
    move-result-object p5

    .line 22
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 23
    .line 24
    .line 25
    if-eqz p5, :cond_0

    .line 26
    .line 27
    return-object p5

    .line 28
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p5

    .line 32
    invoke-virtual {p0, p5}, Lcom/android/server/wm/SnapshotCache;->getSnapshot(Ljava/lang/Integer;)Landroid/window/TaskSnapshot;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    if-eqz p0, :cond_1

    .line 37
    .line 38
    return-object p0

    .line 39
    :cond_1
    if-nez p3, :cond_2

    .line 40
    .line 41
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_2
    invoke-virtual {v0, p1, p2, p4}, Lcom/android/server/wm/AppSnapshotLoader;->loadTask(IIZ)Landroid/window/TaskSnapshot;

    .line 44
    .line 45
    .line 46
    move-result-object p0

    .line 47
    return-object p0
.end method

.method public final putSnapshot(Lcom/android/server/wm/WindowContainer;Landroid/window/TaskSnapshot;)V
    .locals 5

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mLock:Ljava/lang/Object;

    .line 4
    .line 5
    monitor-enter v0

    .line 6
    const/4 v1, 0x2

    .line 7
    :try_start_0
    invoke-virtual {p2, v1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 8
    .line 9
    .line 10
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 11
    .line 12
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 13
    .line 14
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 23
    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    iget-object v3, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    .line 27
    .line 28
    iget-object v4, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 29
    .line 30
    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v2, v2, Lcom/android/server/wm/SnapshotCache$CacheEntry;->snapshot:Landroid/window/TaskSnapshot;

    .line 34
    .line 35
    invoke-virtual {v2, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 36
    .line 37
    .line 38
    goto :goto_0

    .line 39
    :catchall_0
    move-exception p0

    .line 40
    goto :goto_1

    .line 41
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mAppIdMap:Landroid/util/ArrayMap;

    .line 46
    .line 47
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 48
    .line 49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    .line 51
    .line 52
    move-result-object v3

    .line 53
    invoke-virtual {v2, v1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    iget-object v2, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 57
    .line 58
    iget v3, p1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 59
    .line 60
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    new-instance v4, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 65
    .line 66
    invoke-direct {v4, p2, v1}, Lcom/android/server/wm/SnapshotCache$CacheEntry;-><init>(Landroid/window/TaskSnapshot;Lcom/android/server/wm/ActivityRecord;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskSnapshotCache;->removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V

    .line 73
    .line 74
    .line 75
    monitor-exit v0

    .line 76
    return-void

    .line 77
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 78
    throw p0
.end method

.method public final removeOldestCacheIfNeeded(Lcom/android/server/wm/Task;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget v1, Lcom/android/server/wm/SnapshotCache;->sMaxSnapshotCache:I

    .line 8
    .line 9
    if-gt v0, v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    sget v0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    const/4 v2, 0x1

    .line 16
    if-lez v0, :cond_1

    .line 17
    .line 18
    move v0, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    move v0, v1

    .line 21
    :goto_0
    if-eqz v0, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_2

    .line 32
    .line 33
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 34
    .line 35
    check-cast p1, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v2, v1

    .line 42
    :goto_1
    iget-object p1, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 43
    .line 44
    invoke-virtual {p1}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const/4 v0, -0x1

    .line 53
    const-wide v3, 0x7fffffffffffffffL

    .line 54
    .line 55
    .line 56
    .line 57
    .line 58
    move v5, v0

    .line 59
    :cond_3
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    .line 61
    .line 62
    move-result v6

    .line 63
    if-eqz v6, :cond_7

    .line 64
    .line 65
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object v6

    .line 69
    check-cast v6, Ljava/lang/Integer;

    .line 70
    .line 71
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 72
    .line 73
    .line 74
    move-result v7

    .line 75
    iget-object v8, p0, Lcom/android/server/wm/SnapshotCache;->mRunningCache:Landroid/util/ArrayMap;

    .line 76
    .line 77
    invoke-virtual {v8, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    check-cast v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;

    .line 82
    .line 83
    if-eqz v8, :cond_3

    .line 84
    .line 85
    iget-wide v9, v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;->timestamp:J

    .line 86
    .line 87
    iget-object v8, v8, Lcom/android/server/wm/SnapshotCache$CacheEntry;->topApp:Lcom/android/server/wm/ActivityRecord;

    .line 88
    .line 89
    if-eqz v8, :cond_6

    .line 90
    .line 91
    if-eqz v2, :cond_4

    .line 92
    .line 93
    invoke-virtual {v8}, Lcom/android/server/wm/ConfigurationContainer;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    .line 94
    .line 95
    .line 96
    move-result-object v11

    .line 97
    invoke-static {v11}, Landroid/app/WindowConfiguration;->isSplitScreenWindowingMode(Landroid/app/WindowConfiguration;)Z

    .line 98
    .line 99
    .line 100
    move-result v11

    .line 101
    if-eqz v11, :cond_4

    .line 102
    .line 103
    iget-object v7, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 104
    .line 105
    new-instance v8, Landroid/util/Pair;

    .line 106
    .line 107
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-direct {v8, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    check-cast v7, Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .line 118
    .line 119
    goto :goto_2

    .line 120
    :cond_4
    iget-boolean v6, v8, Lcom/android/server/wm/ActivityRecord;->mKeepSnapshotCache:Z

    .line 121
    .line 122
    if-eqz v6, :cond_5

    .line 123
    .line 124
    goto :goto_2

    .line 125
    :cond_5
    iget-boolean v6, v8, Lcom/android/server/wm/ActivityRecord;->mStyleFillsParent:Z

    .line 126
    .line 127
    if-nez v6, :cond_6

    .line 128
    .line 129
    iget-object v6, v8, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 130
    .line 131
    if-eqz v6, :cond_6

    .line 132
    .line 133
    new-instance v8, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    .line 134
    .line 135
    const/16 v11, 0x8

    .line 136
    .line 137
    invoke-direct {v8, v11}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>(I)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v6, v8}, Lcom/android/server/wm/WindowContainer;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    .line 141
    .line 142
    .line 143
    move-result-object v6

    .line 144
    if-eqz v6, :cond_6

    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_6
    cmp-long v6, v9, v3

    .line 148
    .line 149
    if-gez v6, :cond_3

    .line 150
    .line 151
    move v5, v7

    .line 152
    move-wide v3, v9

    .line 153
    goto :goto_2

    .line 154
    :cond_7
    if-eq v5, v0, :cond_8

    .line 155
    .line 156
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 161
    .line 162
    .line 163
    :cond_8
    if-eqz v2, :cond_a

    .line 164
    .line 165
    sget p1, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    .line 166
    .line 167
    if-lez p1, :cond_a

    .line 168
    .line 169
    iget-object p1, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 170
    .line 171
    check-cast p1, Ljava/util/ArrayList;

    .line 172
    .line 173
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 174
    .line 175
    .line 176
    move-result p1

    .line 177
    sget v0, Lcom/android/server/wm/TaskSnapshotCache;->sSplitModeMaxCacheSize:I

    .line 178
    .line 179
    if-gt p1, v0, :cond_9

    .line 180
    .line 181
    goto :goto_3

    .line 182
    :cond_9
    new-instance p1, Lcom/android/server/wm/TaskSnapshotCache$$ExternalSyntheticLambda0;

    .line 183
    .line 184
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 185
    .line 186
    .line 187
    iget-object v0, p0, Lcom/android/server/wm/TaskSnapshotCache;->mTaskIdsInSplitMode:Ljava/util/List;

    .line 188
    .line 189
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->sorted(Ljava/util/Comparator;)Ljava/util/stream/Stream;

    .line 194
    .line 195
    .line 196
    move-result-object p1

    .line 197
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-interface {p1, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    move-result-object p1

    .line 205
    check-cast p1, Ljava/util/List;

    .line 206
    .line 207
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 208
    .line 209
    .line 210
    move-result-object p1

    .line 211
    check-cast p1, Landroid/util/Pair;

    .line 212
    .line 213
    iget-object p1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 214
    .line 215
    check-cast p1, Ljava/lang/Integer;

    .line 216
    .line 217
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1}, Lcom/android/server/wm/SnapshotCache;->removeRunningEntry(Ljava/lang/Integer;)V

    .line 221
    .line 222
    .line 223
    :cond_a
    :goto_3
    return-void
.end method
