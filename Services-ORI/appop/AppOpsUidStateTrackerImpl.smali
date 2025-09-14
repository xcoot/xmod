.class public final Lcom/android/server/appop/AppOpsUidStateTrackerImpl;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/appop/AppOpsUidStateTracker;


# static fields
.field public static final DEBUG:Z

.field public static final DEBUG_MID:Z


# instance fields
.field public final mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

.field public final mAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public final mCapability:Landroid/util/SparseIntArray;

.field public final mClock:Lcom/android/internal/os/Clock;

.field public final mConstants:Lcom/android/server/appop/AppOpsService$Constants;

.field public final mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

.field public final mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

.field public final mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

.field public final mPendingCapability:Landroid/util/SparseIntArray;

.field public final mPendingCommitTime:Landroid/util/SparseLongArray;

.field public final mPendingGone:Landroid/util/SparseBooleanArray;

.field public final mPendingUidStates:Landroid/util/SparseIntArray;

.field public final mUidStateChangedCallbacks:Landroid/util/ArrayMap;

.field public final mUidStates:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    const-string/jumbo v0, "ro.boot.debug_level"

    .line 2
    .line 3
    .line 4
    const-string/jumbo v1, "unknown"

    .line 5
    .line 6
    .line 7
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    const-string v3, "0x4948"

    .line 12
    .line 13
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    sput-boolean v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG:Z

    .line 18
    .line 19
    const-string v2, "0x494d"

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    sput-boolean v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG_MID:Z

    .line 30
    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/app/ActivityManagerInternal;Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;Lcom/android/internal/os/Clock;Lcom/android/server/appop/AppOpsService$Constants;Ljava/lang/Thread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p5, Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 10
    .line 11
    new-instance p5, Landroid/util/SparseIntArray;

    .line 12
    .line 13
    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    new-instance p5, Landroid/util/SparseIntArray;

    .line 19
    .line 20
    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 24
    .line 25
    new-instance p5, Landroid/util/SparseIntArray;

    .line 26
    .line 27
    invoke-direct {p5}, Landroid/util/SparseIntArray;-><init>()V

    .line 28
    .line 29
    .line 30
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 31
    .line 32
    new-instance p5, Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    invoke-direct {p5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 35
    .line 36
    .line 37
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 38
    .line 39
    new-instance p5, Landroid/util/SparseBooleanArray;

    .line 40
    .line 41
    invoke-direct {p5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 42
    .line 43
    .line 44
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 45
    .line 46
    new-instance p5, Landroid/util/SparseLongArray;

    .line 47
    .line 48
    invoke-direct {p5}, Landroid/util/SparseLongArray;-><init>()V

    .line 49
    .line 50
    .line 51
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 52
    .line 53
    new-instance p5, Landroid/util/SparseBooleanArray;

    .line 54
    .line 55
    invoke-direct {p5}, Landroid/util/SparseBooleanArray;-><init>()V

    .line 56
    .line 57
    .line 58
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    .line 59
    .line 60
    new-instance p5, Landroid/util/ArrayMap;

    .line 61
    .line 62
    invoke-direct {p5}, Landroid/util/ArrayMap;-><init>()V

    .line 63
    .line 64
    .line 65
    iput-object p5, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 66
    .line 67
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 68
    .line 69
    iput-object p2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 70
    .line 71
    iput-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 72
    .line 73
    iput-object p4, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 74
    .line 75
    new-instance p1, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 76
    .line 77
    invoke-direct {p1, p2}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;-><init>(Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;)V

    .line 78
    .line 79
    .line 80
    iput-object p1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 81
    .line 82
    return-void
.end method


# virtual methods
.method public final commitUidPendingState(I)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 6
    .line 7
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 8
    .line 9
    const/16 v4, 0x2bc

    .line 10
    .line 11
    invoke-virtual {v3, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->get(II)I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 20
    .line 21
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    invoke-virtual {v5, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 25
    .line 26
    .line 27
    move-result v5

    .line 28
    invoke-virtual {v3, v1, v5}, Landroid/util/SparseIntArray;->get(II)I

    .line 29
    .line 30
    .line 31
    move-result v3

    .line 32
    iget-object v5, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 33
    .line 34
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 35
    .line 36
    invoke-virtual {v7, v1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 37
    .line 38
    .line 39
    move-result v7

    .line 40
    invoke-virtual {v5, v1, v7}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 41
    .line 42
    .line 43
    move-result v5

    .line 44
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 45
    .line 46
    invoke-virtual {v7, v1, v4}, Landroid/util/SparseIntArray;->get(II)I

    .line 47
    .line 48
    .line 49
    move-result v4

    .line 50
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 51
    .line 52
    invoke-virtual {v7, v1, v6}, Landroid/util/SparseIntArray;->get(II)I

    .line 53
    .line 54
    .line 55
    move-result v7

    .line 56
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 57
    .line 58
    invoke-virtual {v8, v1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 59
    .line 60
    .line 61
    move-result v8

    .line 62
    const/4 v9, 0x1

    .line 63
    const/16 v10, 0x1f4

    .line 64
    .line 65
    if-gt v4, v10, :cond_0

    .line 66
    .line 67
    move v11, v9

    .line 68
    goto :goto_0

    .line 69
    :cond_0
    move v11, v6

    .line 70
    :goto_0
    if-gt v2, v10, :cond_1

    .line 71
    .line 72
    move v10, v9

    .line 73
    goto :goto_1

    .line 74
    :cond_1
    move v10, v6

    .line 75
    :goto_1
    if-ne v11, v10, :cond_3

    .line 76
    .line 77
    if-ne v7, v3, :cond_3

    .line 78
    .line 79
    if-eq v8, v5, :cond_2

    .line 80
    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v10, v6

    .line 83
    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    move v10, v9

    .line 85
    :goto_3
    if-ne v4, v2, :cond_4

    .line 86
    .line 87
    if-ne v7, v3, :cond_4

    .line 88
    .line 89
    if-eq v8, v5, :cond_7

    .line 90
    .line 91
    :cond_4
    if-eqz v10, :cond_6

    .line 92
    .line 93
    if-eq v8, v5, :cond_5

    .line 94
    .line 95
    goto :goto_4

    .line 96
    :cond_5
    move v9, v6

    .line 97
    :goto_4
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 98
    .line 99
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    .line 101
    .line 102
    new-instance v11, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    const/4 v7, 0x1

    .line 105
    invoke-direct {v11, v7}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>(I)V

    .line 106
    .line 107
    .line 108
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 109
    .line 110
    .line 111
    move-result-wide v7

    .line 112
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v14

    .line 120
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 121
    .line 122
    .line 123
    move-result-object v15

    .line 124
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 125
    .line 126
    .line 127
    move-result-object v16

    .line 128
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 129
    .line 130
    .line 131
    move-result-object v17

    .line 132
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 133
    .line 134
    .line 135
    move-result-object v18

    .line 136
    move-object v12, v4

    .line 137
    invoke-static/range {v11 .. v18}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 138
    .line 139
    .line 140
    move-result-object v7

    .line 141
    iget-object v4, v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 142
    .line 143
    invoke-interface {v4, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 144
    .line 145
    .line 146
    :cond_6
    move v4, v6

    .line 147
    :goto_5
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 148
    .line 149
    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    .line 150
    .line 151
    .line 152
    move-result v7

    .line 153
    if-ge v4, v7, :cond_7

    .line 154
    .line 155
    iget-object v7, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 156
    .line 157
    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 158
    .line 159
    .line 160
    move-result-object v7

    .line 161
    check-cast v7, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    .line 162
    .line 163
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 164
    .line 165
    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v8

    .line 169
    check-cast v8, Ljava/util/concurrent/Executor;

    .line 170
    .line 171
    new-instance v9, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    .line 172
    .line 173
    invoke-direct {v9}, Ljava/lang/Object;-><init>()V

    .line 174
    .line 175
    .line 176
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 177
    .line 178
    .line 179
    move-result-object v11

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v12

    .line 184
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 185
    .line 186
    .line 187
    move-result-object v13

    .line 188
    invoke-static {v9, v7, v11, v12, v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 189
    .line 190
    .line 191
    move-result-object v7

    .line 192
    invoke-interface {v8, v7}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 193
    .line 194
    .line 195
    add-int/lit8 v4, v4, 0x1

    .line 196
    .line 197
    goto :goto_5

    .line 198
    :cond_7
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    .line 199
    .line 200
    invoke-virtual {v4, v1, v6}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 201
    .line 202
    .line 203
    move-result v4

    .line 204
    if-eqz v4, :cond_8

    .line 205
    .line 206
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 207
    .line 208
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 209
    .line 210
    .line 211
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 212
    .line 213
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 214
    .line 215
    .line 216
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 217
    .line 218
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 219
    .line 220
    .line 221
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    .line 222
    .line 223
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 224
    .line 225
    .line 226
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->finishRunningOpsForKilledPackages()Z

    .line 227
    .line 228
    .line 229
    move-result v2

    .line 230
    if-eqz v2, :cond_9

    .line 231
    .line 232
    :goto_6
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 233
    .line 234
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ge v6, v2, :cond_9

    .line 239
    .line 240
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 241
    .line 242
    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    move-result-object v2

    .line 246
    check-cast v2, Lcom/android/server/appop/AppOpsService$$ExternalSyntheticLambda12;

    .line 247
    .line 248
    iget-object v3, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStateChangedCallbacks:Landroid/util/ArrayMap;

    .line 249
    .line 250
    invoke-virtual {v3, v6}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v3

    .line 254
    check-cast v3, Ljava/util/concurrent/Executor;

    .line 255
    .line 256
    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda1;

    .line 257
    .line 258
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v5

    .line 265
    const v7, 0x7fffffff

    .line 266
    .line 267
    .line 268
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 269
    .line 270
    .line 271
    move-result-object v7

    .line 272
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 273
    .line 274
    .line 275
    move-result-object v8

    .line 276
    invoke-static {v4, v2, v5, v7, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-interface {v3, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 281
    .line 282
    .line 283
    add-int/lit8 v6, v6, 0x1

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_8
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 287
    .line 288
    invoke-virtual {v4, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 289
    .line 290
    .line 291
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 292
    .line 293
    invoke-virtual {v2, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 294
    .line 295
    .line 296
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 297
    .line 298
    invoke-virtual {v2, v1, v5}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 299
    .line 300
    .line 301
    :cond_9
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 302
    .line 303
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 304
    .line 305
    .line 306
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 307
    .line 308
    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->delete(I)V

    .line 309
    .line 310
    .line 311
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 312
    .line 313
    invoke-virtual {v2, v1}, Landroid/util/SparseBooleanArray;->delete(I)V

    .line 314
    .line 315
    .line 316
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 317
    .line 318
    invoke-virtual {v0, v1}, Landroid/util/SparseLongArray;->delete(I)V

    .line 319
    .line 320
    .line 321
    return-void
.end method

.method public final dumpEvents(Ljava/io/PrintWriter;)V
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v4, 0x0

    .line 5
    const/4 v5, 0x0

    .line 6
    :goto_0
    move-object/from16 v2, p0

    .line 7
    .line 8
    iget-object v6, v2, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 9
    .line 10
    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogSize:I

    .line 11
    .line 12
    if-lt v3, v7, :cond_1

    .line 13
    .line 14
    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 15
    .line 16
    if-lt v4, v8, :cond_1

    .line 17
    .line 18
    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 19
    .line 20
    if-ge v5, v8, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    return-void

    .line 24
    :cond_1
    :goto_1
    iget v8, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogHead:I

    .line 25
    .line 26
    add-int/2addr v8, v3

    .line 27
    rem-int/lit16 v8, v8, 0xc8

    .line 28
    .line 29
    iget v9, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogHead:I

    .line 30
    .line 31
    add-int/2addr v9, v4

    .line 32
    rem-int/lit16 v9, v9, 0xc8

    .line 33
    .line 34
    iget v10, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogHead:I

    .line 35
    .line 36
    add-int/2addr v10, v5

    .line 37
    rem-int/lit16 v10, v10, 0xc8

    .line 38
    .line 39
    iget-object v11, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLogTimestamps:[J

    .line 40
    .line 41
    if-ge v3, v7, :cond_2

    .line 42
    .line 43
    aget-wide v14, v11, v8

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_2
    const-wide v14, 0x7fffffffffffffffL

    .line 47
    .line 48
    .line 49
    .line 50
    .line 51
    :goto_2
    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogSize:I

    .line 52
    .line 53
    iget-object v12, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLogTimestamps:[J

    .line 54
    .line 55
    if-ge v4, v7, :cond_3

    .line 56
    .line 57
    aget-wide v18, v12, v9

    .line 58
    .line 59
    goto :goto_3

    .line 60
    :cond_3
    const-wide v18, 0x7fffffffffffffffL

    .line 61
    .line 62
    .line 63
    .line 64
    .line 65
    :goto_3
    iget v7, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogSize:I

    .line 66
    .line 67
    iget-object v13, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLogTimestamps:[J

    .line 68
    .line 69
    if-ge v5, v7, :cond_4

    .line 70
    .line 71
    aget-wide v16, v13, v10

    .line 72
    .line 73
    goto :goto_4

    .line 74
    :cond_4
    const-wide v16, 0x7fffffffffffffffL

    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    :goto_4
    cmp-long v7, v14, v18

    .line 80
    .line 81
    const/16 v20, 0x2

    .line 82
    .line 83
    const/16 v21, 0x1

    .line 84
    .line 85
    const-string v1, " "

    .line 86
    .line 87
    const-string v2, " capability="

    .line 88
    .line 89
    move/from16 v22, v5

    .line 90
    .line 91
    const-string v5, "%-30s"

    .line 92
    .line 93
    move/from16 v23, v10

    .line 94
    .line 95
    const-string v10, "%-8d"

    .line 96
    .line 97
    move-object/from16 v24, v13

    .line 98
    .line 99
    const-string v13, " uid="

    .line 100
    .line 101
    if-gtz v7, :cond_5

    .line 102
    .line 103
    cmp-long v7, v14, v16

    .line 104
    .line 105
    if-gtz v7, :cond_5

    .line 106
    .line 107
    aget-wide v11, v11, v8

    .line 108
    .line 109
    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mUpdateUidProcStateLog:[[I

    .line 110
    .line 111
    aget-object v6, v6, v8

    .line 112
    .line 113
    const/4 v7, 0x0

    .line 114
    aget v8, v6, v7

    .line 115
    .line 116
    aget v7, v6, v21

    .line 117
    .line 118
    aget v6, v6, v20

    .line 119
    .line 120
    invoke-static {v0, v11, v12}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 121
    .line 122
    .line 123
    const-string v9, " UPDATE_UID_PROC_STATE"

    .line 124
    .line 125
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v8

    .line 135
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v8

    .line 139
    invoke-static {v10, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    const-string v8, " procState="

    .line 147
    .line 148
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v7}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v7

    .line 155
    filled-new-array {v7}, [Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v7

    .line 159
    invoke-static {v5, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v5

    .line 163
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    invoke-static {v6}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v5

    .line 178
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v1

    .line 188
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 192
    .line 193
    .line 194
    add-int/lit8 v3, v3, 0x1

    .line 195
    .line 196
    :goto_5
    move/from16 v5, v22

    .line 197
    .line 198
    const/4 v7, 0x0

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_5
    cmp-long v7, v18, v16

    .line 202
    .line 203
    const-string v8, " uidState="

    .line 204
    .line 205
    const/4 v11, 0x3

    .line 206
    if-gtz v7, :cond_9

    .line 207
    .line 208
    aget-wide v14, v12, v9

    .line 209
    .line 210
    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mCommitUidStateLog:[[I

    .line 211
    .line 212
    aget-object v6, v6, v9

    .line 213
    .line 214
    const/4 v7, 0x0

    .line 215
    aget v9, v6, v7

    .line 216
    .line 217
    aget v7, v6, v21

    .line 218
    .line 219
    aget v12, v6, v20

    .line 220
    .line 221
    aget v6, v6, v11

    .line 222
    .line 223
    and-int/lit8 v11, v6, 0x1

    .line 224
    .line 225
    if-eqz v11, :cond_6

    .line 226
    .line 227
    move/from16 v11, v21

    .line 228
    .line 229
    goto :goto_6

    .line 230
    :cond_6
    const/4 v11, 0x0

    .line 231
    :goto_6
    and-int/lit8 v6, v6, 0x2

    .line 232
    .line 233
    if-eqz v6, :cond_7

    .line 234
    .line 235
    goto :goto_7

    .line 236
    :cond_7
    const/16 v21, 0x0

    .line 237
    .line 238
    :goto_7
    invoke-static {v0, v14, v15}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 239
    .line 240
    .line 241
    const-string v6, " COMMIT_UID_STATE     "

    .line 242
    .line 243
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 247
    .line 248
    .line 249
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    invoke-static {v10, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-static {v7}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v6

    .line 271
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 288
    .line 289
    .line 290
    invoke-static {v12}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v5

    .line 294
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    .line 299
    .line 300
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    const-string v1, " appWidgetVisible="

    .line 308
    .line 309
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {v0, v11}, Ljava/io/PrintWriter;->print(Z)V

    .line 313
    .line 314
    .line 315
    if-eqz v21, :cond_8

    .line 316
    .line 317
    const-string v1, " (changed)"

    .line 318
    .line 319
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 320
    .line 321
    .line 322
    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 323
    .line 324
    .line 325
    add-int/lit8 v4, v4, 0x1

    .line 326
    .line 327
    goto/16 :goto_5

    .line 328
    .line 329
    :cond_9
    aget-wide v14, v24, v23

    .line 330
    .line 331
    iget-object v6, v6, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mEvalForegroundModeLog:[[I

    .line 332
    .line 333
    aget-object v6, v6, v23

    .line 334
    .line 335
    const/4 v7, 0x0

    .line 336
    aget v9, v6, v7

    .line 337
    .line 338
    aget v12, v6, v21

    .line 339
    .line 340
    aget v16, v6, v20

    .line 341
    .line 342
    aget v11, v6, v11

    .line 343
    .line 344
    const/16 v17, 0x4

    .line 345
    .line 346
    aget v6, v6, v17

    .line 347
    .line 348
    invoke-static {v0, v14, v15}, Landroid/util/TimeUtils;->dumpTime(Ljava/io/PrintWriter;J)V

    .line 349
    .line 350
    .line 351
    const-string v14, " EVAL_FOREGROUND_MODE "

    .line 352
    .line 353
    invoke-virtual {v0, v14}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {v0, v13}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 360
    .line 361
    .line 362
    move-result-object v9

    .line 363
    filled-new-array {v9}, [Ljava/lang/Object;

    .line 364
    .line 365
    .line 366
    move-result-object v9

    .line 367
    invoke-static {v10, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v9

    .line 371
    invoke-virtual {v0, v9}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 372
    .line 373
    .line 374
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-static {v12}, Landroid/app/AppOpsManager;->uidStateToString(I)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v8

    .line 381
    filled-new-array {v8}, [Ljava/lang/Object;

    .line 382
    .line 383
    .line 384
    move-result-object v8

    .line 385
    invoke-static {v5, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v5

    .line 389
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 393
    .line 394
    .line 395
    new-instance v2, Ljava/lang/StringBuilder;

    .line 396
    .line 397
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 398
    .line 399
    .line 400
    invoke-static/range {v16 .. v16}, Landroid/app/ActivityManager;->getCapabilitiesSummary(I)Ljava/lang/String;

    .line 401
    .line 402
    .line 403
    move-result-object v5

    .line 404
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 405
    .line 406
    .line 407
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    .line 409
    .line 410
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 415
    .line 416
    .line 417
    const-string v1, " code="

    .line 418
    .line 419
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 420
    .line 421
    .line 422
    invoke-static {v11}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v1

    .line 426
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const-string v2, "%-20s"

    .line 431
    .line 432
    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 433
    .line 434
    .line 435
    move-result-object v1

    .line 436
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    .line 438
    .line 439
    const-string v1, " result="

    .line 440
    .line 441
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-static {v6}, Landroid/app/AppOpsManager;->modeToName(I)Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 449
    .line 450
    .line 451
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 452
    .line 453
    .line 454
    add-int/lit8 v5, v22, 0x1

    .line 455
    .line 456
    goto/16 :goto_0
.end method

.method public final evalMode(III)I
    .locals 12

    .line 1
    const/4 v0, 0x4

    .line 2
    if-eq p3, v0, :cond_0

    .line 3
    .line 4
    return p3

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->updateUidPendingStateIfNeeded(I)V

    .line 6
    .line 7
    .line 8
    iget-object p3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 9
    .line 10
    const/16 v1, 0x2bc

    .line 11
    .line 12
    invoke-virtual {p3, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    .line 13
    .line 14
    .line 15
    move-result p3

    .line 16
    iget-object v1, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->get(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mAppWidgetVisible:Landroid/util/SparseBooleanArray;

    .line 24
    .line 25
    invoke-virtual {v3, p1, v2}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    .line 26
    .line 27
    .line 28
    move-result v3

    .line 29
    if-nez v3, :cond_a

    .line 30
    .line 31
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 32
    .line 33
    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->isPendingTopUid(I)Z

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    if-nez v3, :cond_a

    .line 38
    .line 39
    iget-object v3, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mActivityManagerInternal:Landroid/app/ActivityManagerInternal;

    .line 40
    .line 41
    invoke-virtual {v3, p1}, Landroid/app/ActivityManagerInternal;->isTempAllowlistedForFgsWhileInUse(I)Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_1

    .line 46
    .line 47
    goto/16 :goto_2

    .line 48
    .line 49
    :cond_1
    const/4 v3, 0x1

    .line 50
    if-eqz p2, :cond_4

    .line 51
    .line 52
    if-eq p2, v3, :cond_4

    .line 53
    .line 54
    const/16 v4, 0x1a

    .line 55
    .line 56
    if-eq p2, v4, :cond_3

    .line 57
    .line 58
    const/16 v4, 0x1b

    .line 59
    .line 60
    if-eq p2, v4, :cond_5

    .line 61
    .line 62
    const/16 v4, 0x20

    .line 63
    .line 64
    if-eq p2, v4, :cond_2

    .line 65
    .line 66
    const/16 v4, 0x79

    .line 67
    .line 68
    if-eq p2, v4, :cond_5

    .line 69
    .line 70
    const/16 v0, 0x29

    .line 71
    .line 72
    if-eq p2, v0, :cond_4

    .line 73
    .line 74
    const/16 v0, 0x2a

    .line 75
    .line 76
    if-eq p2, v0, :cond_4

    .line 77
    .line 78
    move v0, v2

    .line 79
    goto :goto_0

    .line 80
    :cond_2
    const/16 v0, 0x40

    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_3
    const/4 v0, 0x2

    .line 84
    goto :goto_0

    .line 85
    :cond_4
    move v0, v3

    .line 86
    :cond_5
    :goto_0
    const-string v4, " opCapability= "

    .line 87
    .line 88
    const-string v5, " uidCapability= "

    .line 89
    .line 90
    const-string v6, " uidState= "

    .line 91
    .line 92
    const-string v7, " code= "

    .line 93
    .line 94
    const-string v8, "AppOps"

    .line 95
    .line 96
    sget-boolean v9, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG:Z

    .line 97
    .line 98
    sget-boolean v10, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->DEBUG_MID:Z

    .line 99
    .line 100
    if-eqz v0, :cond_8

    .line 101
    .line 102
    and-int v11, v1, v0

    .line 103
    .line 104
    if-nez v11, :cond_a

    .line 105
    .line 106
    if-nez v10, :cond_6

    .line 107
    .line 108
    if-eqz v9, :cond_7

    .line 109
    .line 110
    :cond_6
    const-string/jumbo v2, "evalModeInternal uidCapability: uid= "

    .line 111
    .line 112
    .line 113
    invoke-static {p1, p2, v2, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    move-result-object v2

    .line 117
    invoke-static {p3, v1, v5, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 118
    .line 119
    .line 120
    invoke-static {v2, v0, v8}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 121
    .line 122
    .line 123
    :cond_7
    :goto_1
    move v2, v3

    .line 124
    goto :goto_2

    .line 125
    :cond_8
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    .line 126
    .line 127
    .line 128
    move-result v11

    .line 129
    if-le p3, v11, :cond_a

    .line 130
    .line 131
    if-nez v10, :cond_9

    .line 132
    .line 133
    if-eqz v9, :cond_7

    .line 134
    .line 135
    :cond_9
    const-string/jumbo v2, "evalModeInternal uidState: uid= "

    .line 136
    .line 137
    .line 138
    invoke-static {p1, p2, v2, v7, v6}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-static {p3, v1, v5, v4, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    const-string v0, " first unrestricted state= "

    .line 149
    .line 150
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-static {p2}, Landroid/app/AppOpsManager;->resolveFirstUnrestrictedUidState(I)I

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v0

    .line 164
    invoke-static {v8, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    .line 166
    .line 167
    goto :goto_1

    .line 168
    :cond_a
    :goto_2
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 169
    .line 170
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 171
    .line 172
    .line 173
    new-instance v3, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;

    .line 174
    .line 175
    const/4 v0, 0x0

    .line 176
    invoke-direct {v3, v0}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda0;-><init>(I)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 180
    .line 181
    .line 182
    move-result-wide v4

    .line 183
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 184
    .line 185
    .line 186
    move-result-object v5

    .line 187
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 188
    .line 189
    .line 190
    move-result-object v6

    .line 191
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 192
    .line 193
    .line 194
    move-result-object v7

    .line 195
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 204
    .line 205
    .line 206
    move-result-object v10

    .line 207
    move-object v4, p0

    .line 208
    invoke-static/range {v3 .. v10}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/HeptConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 209
    .line 210
    .line 211
    move-result-object p1

    .line 212
    iget-object p0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 213
    .line 214
    invoke-interface {p0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 215
    .line 216
    .line 217
    return v2
.end method

.method public final updateUidPendingStateIfNeeded(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1, v2}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 6
    .line 7
    .line 8
    move-result-wide v3

    .line 9
    cmp-long v0, v3, v1

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-object v2, p0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->get(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    cmp-long v0, v0, v2

    .line 26
    .line 27
    if-gez v0, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 31
    .line 32
    .line 33
    :cond_1
    :goto_0
    return-void
.end method

.method public final updateUidProcState(III)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    move/from16 v3, p3

    .line 8
    .line 9
    const/4 v4, -0x1

    .line 10
    const/16 v5, 0x190

    .line 11
    .line 12
    const/16 v6, 0xc8

    .line 13
    .line 14
    const/4 v7, 0x1

    .line 15
    const/16 v8, 0x2bc

    .line 16
    .line 17
    const/16 v9, 0x1f4

    .line 18
    .line 19
    if-ne v2, v4, :cond_1

    .line 20
    .line 21
    :cond_0
    move v4, v8

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    if-gt v2, v7, :cond_2

    .line 24
    .line 25
    const/16 v4, 0x64

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_2
    const/4 v4, 0x2

    .line 29
    if-gt v2, v4, :cond_3

    .line 30
    .line 31
    move v4, v6

    .line 32
    goto :goto_1

    .line 33
    :cond_3
    const/4 v4, 0x3

    .line 34
    if-gt v2, v4, :cond_4

    .line 35
    .line 36
    :goto_0
    move v4, v9

    .line 37
    goto :goto_1

    .line 38
    :cond_4
    const/4 v4, 0x4

    .line 39
    if-gt v2, v4, :cond_5

    .line 40
    .line 41
    move v4, v5

    .line 42
    goto :goto_1

    .line 43
    :cond_5
    const/4 v4, 0x5

    .line 44
    if-gt v2, v4, :cond_6

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_6
    const/16 v4, 0xb

    .line 48
    .line 49
    if-gt v2, v4, :cond_0

    .line 50
    .line 51
    const/16 v4, 0x258

    .line 52
    .line 53
    :goto_1
    iget-object v10, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mUidStates:Landroid/util/SparseIntArray;

    .line 54
    .line 55
    invoke-virtual {v10, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 56
    .line 57
    .line 58
    move-result v10

    .line 59
    iget-object v11, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mCapability:Landroid/util/SparseIntArray;

    .line 60
    .line 61
    const/4 v12, 0x0

    .line 62
    invoke-virtual {v11, v1, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 63
    .line 64
    .line 65
    move-result v11

    .line 66
    iget-object v13, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 67
    .line 68
    invoke-virtual {v13, v1, v8}, Landroid/util/SparseIntArray;->get(II)I

    .line 69
    .line 70
    .line 71
    move-result v8

    .line 72
    iget-object v13, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 73
    .line 74
    invoke-virtual {v13, v1, v12}, Landroid/util/SparseIntArray;->get(II)I

    .line 75
    .line 76
    .line 77
    move-result v12

    .line 78
    iget-object v13, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 79
    .line 80
    const-wide/16 v14, 0x0

    .line 81
    .line 82
    invoke-virtual {v13, v1, v14, v15}, Landroid/util/SparseLongArray;->get(IJ)J

    .line 83
    .line 84
    .line 85
    move-result-wide v16

    .line 86
    cmp-long v13, v16, v14

    .line 87
    .line 88
    if-nez v13, :cond_7

    .line 89
    .line 90
    if-ne v4, v10, :cond_8

    .line 91
    .line 92
    if-ne v3, v11, :cond_8

    .line 93
    .line 94
    :cond_7
    if-eqz v13, :cond_10

    .line 95
    .line 96
    if-ne v4, v8, :cond_8

    .line 97
    .line 98
    if-eq v3, v12, :cond_10

    .line 99
    .line 100
    :cond_8
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mEventLog:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;

    .line 101
    .line 102
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 103
    .line 104
    .line 105
    new-instance v14, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog$$ExternalSyntheticLambda2;

    .line 106
    .line 107
    invoke-direct {v14}, Ljava/lang/Object;-><init>()V

    .line 108
    .line 109
    .line 110
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 111
    .line 112
    .line 113
    move-result-wide v15

    .line 114
    invoke-static/range {v15 .. v16}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 115
    .line 116
    .line 117
    move-result-object v16

    .line 118
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v17

    .line 122
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    .line 124
    .line 125
    move-result-object v18

    .line 126
    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v19

    .line 130
    move-object v15, v8

    .line 131
    invoke-static/range {v14 .. v19}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 132
    .line 133
    .line 134
    move-result-object v12

    .line 135
    iget-object v8, v8, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$EventLog;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 136
    .line 137
    invoke-interface {v8, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 138
    .line 139
    .line 140
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingUidStates:Landroid/util/SparseIntArray;

    .line 141
    .line 142
    invoke-virtual {v8, v1, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 143
    .line 144
    .line 145
    iget-object v8, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCapability:Landroid/util/SparseIntArray;

    .line 146
    .line 147
    invoke-virtual {v8, v1, v3}, Landroid/util/SparseIntArray;->put(II)V

    .line 148
    .line 149
    .line 150
    const/16 v8, 0x14

    .line 151
    .line 152
    if-ne v2, v8, :cond_9

    .line 153
    .line 154
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingGone:Landroid/util/SparseBooleanArray;

    .line 155
    .line 156
    invoke-virtual {v2, v1, v7}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 157
    .line 158
    .line 159
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 160
    .line 161
    .line 162
    goto :goto_4

    .line 163
    :cond_9
    if-lt v4, v10, :cond_f

    .line 164
    .line 165
    if-gt v4, v9, :cond_a

    .line 166
    .line 167
    if-le v10, v9, :cond_a

    .line 168
    .line 169
    goto :goto_3

    .line 170
    :cond_a
    if-ne v4, v10, :cond_b

    .line 171
    .line 172
    if-eq v3, v11, :cond_b

    .line 173
    .line 174
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :cond_b
    if-gt v4, v9, :cond_c

    .line 179
    .line 180
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 181
    .line 182
    .line 183
    goto :goto_4

    .line 184
    :cond_c
    if-nez v13, :cond_10

    .line 185
    .line 186
    iget-object v2, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mConstants:Lcom/android/server/appop/AppOpsService$Constants;

    .line 187
    .line 188
    if-gt v10, v6, :cond_d

    .line 189
    .line 190
    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->TOP_STATE_SETTLE_TIME:J

    .line 191
    .line 192
    goto :goto_2

    .line 193
    :cond_d
    if-gt v10, v5, :cond_e

    .line 194
    .line 195
    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->FG_SERVICE_STATE_SETTLE_TIME:J

    .line 196
    .line 197
    goto :goto_2

    .line 198
    :cond_e
    iget-wide v2, v2, Lcom/android/server/appop/AppOpsService$Constants;->BG_STATE_SETTLE_TIME:J

    .line 199
    .line 200
    :goto_2
    iget-object v4, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mClock:Lcom/android/internal/os/Clock;

    .line 201
    .line 202
    invoke-virtual {v4}, Lcom/android/internal/os/Clock;->elapsedRealtime()J

    .line 203
    .line 204
    .line 205
    move-result-wide v4

    .line 206
    add-long/2addr v4, v2

    .line 207
    iget-object v6, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mPendingCommitTime:Landroid/util/SparseLongArray;

    .line 208
    .line 209
    invoke-virtual {v6, v1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    .line 210
    .line 211
    .line 212
    new-instance v4, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$$ExternalSyntheticLambda0;

    .line 213
    .line 214
    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v4, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainRunnable(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledRunnable;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    const-wide/16 v4, 0x1

    .line 226
    .line 227
    add-long/2addr v2, v4

    .line 228
    iget-object v0, v0, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->mExecutor:Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;

    .line 229
    .line 230
    invoke-interface {v0, v1, v2, v3}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl$DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 231
    .line 232
    .line 233
    goto :goto_4

    .line 234
    :cond_f
    :goto_3
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/appop/AppOpsUidStateTrackerImpl;->commitUidPendingState(I)V

    .line 235
    .line 236
    .line 237
    :cond_10
    :goto_4
    return-void
.end method
