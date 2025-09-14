.class public final Lcom/android/server/wm/RunningTasks;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public mAllowed:Z

.field public mCallingUid:I

.field public mCrossUser:Z

.field public mFilterOnlyVisibleRecents:Z

.field public mKeepIntentExtra:Z

.field public mProfileIds:Landroid/util/ArraySet;

.field public mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public final mTmpFocusedTasks:Ljava/util/ArrayList;

.field public final mTmpInvisibleTasks:Ljava/util/ArrayList;

.field public final mTmpSortedTasks:Ljava/util/ArrayList;

.field public final mTmpVisibleTasks:Ljava/util/ArrayList;

.field public mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 17
    .line 18
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 24
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/server/wm/Task;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget v0, p1, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 12
    .line 13
    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    .line 14
    .line 15
    if-eq v0, v1, :cond_2

    .line 16
    .line 17
    iget v0, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 18
    .line 19
    iget v1, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    .line 20
    .line 21
    if-eq v0, v1, :cond_1

    .line 22
    .line 23
    iget-boolean v1, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    .line 24
    .line 25
    if-nez v1, :cond_1

    .line 26
    .line 27
    iget-object v1, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    .line 28
    .line 29
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    .line 41
    .line 42
    if-nez v0, :cond_2

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    .line 46
    .line 47
    if-eqz v0, :cond_3

    .line 48
    .line 49
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    const/4 v1, 0x2

    .line 54
    if-eq v0, v1, :cond_3

    .line 55
    .line 56
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x3

    .line 61
    if-eq v0, v1, :cond_3

    .line 62
    .line 63
    iget-object v0, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 64
    .line 65
    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isVisibleRecentTask(Lcom/android/server/wm/Task;)Z

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    if-nez v0, :cond_3

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_3
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isVisibleRequested()Z

    .line 73
    .line 74
    .line 75
    move-result v0

    .line 76
    if-eqz v0, :cond_4

    .line 77
    .line 78
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 79
    .line 80
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 85
    .line 86
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    :goto_0
    return-void
.end method

.method public final getTasks(ILjava/util/List;ILcom/android/server/wm/RecentTasks;Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;Z)V
    .locals 7

    .line 1
    if-gtz p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mCallingUid:I

    .line 5
    .line 6
    invoke-static {p6}, Landroid/os/UserHandle;->getUserId(I)I

    .line 7
    .line 8
    .line 9
    move-result p6

    .line 10
    iput p6, p0, Lcom/android/server/wm/RunningTasks;->mUserId:I

    .line 11
    .line 12
    and-int/lit8 p6, p3, 0x4

    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    const/4 v1, 0x1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-ne p6, v0, :cond_1

    .line 18
    .line 19
    move p6, v1

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move p6, v2

    .line 22
    :goto_0
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mCrossUser:Z

    .line 23
    .line 24
    iput-object p7, p0, Lcom/android/server/wm/RunningTasks;->mProfileIds:Landroid/util/ArraySet;

    .line 25
    .line 26
    and-int/lit8 p6, p3, 0x2

    .line 27
    .line 28
    const/4 p7, 0x2

    .line 29
    if-ne p6, p7, :cond_2

    .line 30
    .line 31
    move p6, v1

    .line 32
    goto :goto_1

    .line 33
    :cond_2
    move p6, v2

    .line 34
    :goto_1
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    .line 35
    .line 36
    and-int/lit8 p6, p3, 0x1

    .line 37
    .line 38
    if-ne p6, v1, :cond_3

    .line 39
    .line 40
    move p6, v1

    .line 41
    goto :goto_2

    .line 42
    :cond_3
    move p6, v2

    .line 43
    :goto_2
    iput-boolean p6, p0, Lcom/android/server/wm/RunningTasks;->mFilterOnlyVisibleRecents:Z

    .line 44
    .line 45
    iput-object p4, p0, Lcom/android/server/wm/RunningTasks;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 46
    .line 47
    const/16 p4, 0x8

    .line 48
    .line 49
    and-int/2addr p3, p4

    .line 50
    if-ne p3, p4, :cond_4

    .line 51
    .line 52
    move p3, v1

    .line 53
    goto :goto_3

    .line 54
    :cond_4
    move p3, v2

    .line 55
    :goto_3
    iput-boolean p3, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    .line 56
    .line 57
    instance-of p3, p5, Lcom/android/server/wm/RootWindowContainer;

    .line 58
    .line 59
    if-eqz p3, :cond_5

    .line 60
    .line 61
    check-cast p5, Lcom/android/server/wm/RootWindowContainer;

    .line 62
    .line 63
    new-instance p3, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;

    .line 64
    .line 65
    invoke-direct {p3, p0}, Lcom/android/server/wm/RunningTasks$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/RunningTasks;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p5, p3}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 69
    .line 70
    .line 71
    goto :goto_4

    .line 72
    :cond_5
    invoke-virtual {p5}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    .line 73
    .line 74
    .line 75
    move-result-object p3

    .line 76
    const/4 p4, 0x0

    .line 77
    if-eqz p3, :cond_6

    .line 78
    .line 79
    iget-object p3, p3, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    .line 80
    .line 81
    if-eqz p3, :cond_6

    .line 82
    .line 83
    iget-object p4, p3, Lcom/android/server/wm/ActivityRecord;->task:Lcom/android/server/wm/Task;

    .line 84
    .line 85
    :cond_6
    if-eqz p4, :cond_7

    .line 86
    .line 87
    invoke-virtual {p4, p5}, Lcom/android/server/wm/WindowContainer;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    .line 88
    .line 89
    .line 90
    move-result p3

    .line 91
    if-eqz p3, :cond_7

    .line 92
    .line 93
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    .line 94
    .line 95
    invoke-virtual {p3, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 96
    .line 97
    .line 98
    :cond_7
    invoke-virtual {p5, p0, v1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 99
    .line 100
    .line 101
    :goto_4
    iget-object p3, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 102
    .line 103
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    .line 104
    .line 105
    .line 106
    move-result p3

    .line 107
    move p4, v2

    .line 108
    :goto_5
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    .line 109
    .line 110
    invoke-virtual {p5}, Ljava/util/ArrayList;->size()I

    .line 111
    .line 112
    .line 113
    move-result p5

    .line 114
    if-ge p4, p5, :cond_9

    .line 115
    .line 116
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    .line 117
    .line 118
    invoke-virtual {p5, p4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p5

    .line 122
    check-cast p5, Lcom/android/server/wm/Task;

    .line 123
    .line 124
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 125
    .line 126
    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result p6

    .line 130
    if-eqz p6, :cond_8

    .line 131
    .line 132
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 133
    .line 134
    invoke-virtual {p6, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 135
    .line 136
    .line 137
    :cond_8
    add-int/lit8 p4, p4, 0x1

    .line 138
    .line 139
    goto :goto_5

    .line 140
    :cond_9
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 143
    .line 144
    .line 145
    move-result p4

    .line 146
    if-nez p4, :cond_a

    .line 147
    .line 148
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 149
    .line 150
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 151
    .line 152
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 153
    .line 154
    .line 155
    :cond_a
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 156
    .line 157
    invoke-virtual {p4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 158
    .line 159
    .line 160
    move-result p4

    .line 161
    if-nez p4, :cond_b

    .line 162
    .line 163
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 164
    .line 165
    iget-object p5, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 166
    .line 167
    invoke-virtual {p4, p5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 168
    .line 169
    .line 170
    :cond_b
    iget-object p4, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 171
    .line 172
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    .line 173
    .line 174
    .line 175
    move-result p4

    .line 176
    invoke-static {p1, p4}, Ljava/lang/Math;->min(II)I

    .line 177
    .line 178
    .line 179
    move-result p1

    .line 180
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 181
    .line 182
    .line 183
    move-result-wide p4

    .line 184
    :goto_6
    if-ge v2, p1, :cond_10

    .line 185
    .line 186
    iget-object p6, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 187
    .line 188
    invoke-virtual {p6, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 189
    .line 190
    .line 191
    move-result-object p6

    .line 192
    check-cast p6, Lcom/android/server/wm/Task;

    .line 193
    .line 194
    if-eqz p8, :cond_c

    .line 195
    .line 196
    invoke-virtual {p6}, Lcom/android/server/wm/WindowContainer;->isVisible()Z

    .line 197
    .line 198
    .line 199
    move-result p7

    .line 200
    if-nez p7, :cond_c

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_c
    if-ge v2, p3, :cond_d

    .line 204
    .line 205
    int-to-long v3, p1

    .line 206
    add-long/2addr v3, p4

    .line 207
    int-to-long v5, v2

    .line 208
    sub-long/2addr v3, v5

    .line 209
    goto :goto_7

    .line 210
    :cond_d
    const-wide/16 v3, -0x1

    .line 211
    .line 212
    :goto_7
    new-instance p7, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 213
    .line 214
    invoke-direct {p7}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 215
    .line 216
    .line 217
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mKeepIntentExtra:Z

    .line 218
    .line 219
    xor-int/2addr v0, v1

    .line 220
    invoke-virtual {p6, p7, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 221
    .line 222
    .line 223
    const-wide/16 v5, 0x0

    .line 224
    .line 225
    cmp-long v0, v3, v5

    .line 226
    .line 227
    if-lez v0, :cond_e

    .line 228
    .line 229
    iput-wide v3, p7, Landroid/app/ActivityManager$RunningTaskInfo;->lastActiveTime:J

    .line 230
    .line 231
    :cond_e
    iget v0, p7, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    .line 232
    .line 233
    iput v0, p7, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    .line 234
    .line 235
    iget-boolean v0, p0, Lcom/android/server/wm/RunningTasks;->mAllowed:Z

    .line 236
    .line 237
    if-nez v0, :cond_f

    .line 238
    .line 239
    invoke-static {p6, p7}, Lcom/android/server/wm/Task;->trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V

    .line 240
    .line 241
    .line 242
    :cond_f
    invoke-interface {p2, p7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    .line 244
    .line 245
    :goto_8
    add-int/lit8 v2, v2, 0x1

    .line 246
    .line 247
    goto :goto_6

    .line 248
    :cond_10
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpFocusedTasks:Ljava/util/ArrayList;

    .line 249
    .line 250
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 251
    .line 252
    .line 253
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpVisibleTasks:Ljava/util/ArrayList;

    .line 254
    .line 255
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 256
    .line 257
    .line 258
    iget-object p1, p0, Lcom/android/server/wm/RunningTasks;->mTmpInvisibleTasks:Ljava/util/ArrayList;

    .line 259
    .line 260
    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    .line 261
    .line 262
    .line 263
    iget-object p0, p0, Lcom/android/server/wm/RunningTasks;->mTmpSortedTasks:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 266
    .line 267
    .line 268
    return-void
.end method
