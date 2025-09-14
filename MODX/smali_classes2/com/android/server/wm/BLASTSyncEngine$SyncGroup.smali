.class public final Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static final NO_DEPENDENCIES:Ljava/util/ArrayList;


# instance fields
.field public mDependencies:Ljava/util/ArrayList;

.field public mIgnoreIndirectMembers:Z

.field public final mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

.field public final mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

.field public mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

.field public mReady:Z

.field public final mRootMembers:Landroid/util/ArraySet;

.field public final mSyncId:I

.field public mSyncMethod:I

.field public final mSyncName:Ljava/lang/String;

.field public final mTraceName:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/server/wm/BLASTSyncEngine;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/BLASTSyncEngine;Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 5
    .line 6
    const/4 p1, 0x1

    .line 7
    iput p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 11
    .line 12
    new-instance v0, Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 15
    .line 16
    .line 17
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 21
    .line 22
    iput-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    .line 23
    .line 24
    sget-object p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 27
    .line 28
    iput p3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncName:Ljava/lang/String;

    .line 31
    .line 32
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 33
    .line 34
    sget-boolean p1, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 35
    .line 36
    if-eqz p1, :cond_0

    .line 37
    .line 38
    const-string p1, "SyncGroup is created, id="

    .line 39
    .line 40
    const-string p2, ", name="

    .line 41
    .line 42
    const-string v0, ", caller="

    .line 43
    .line 44
    invoke-static {p3, p1, p2, p4, v0}, Lcom/android/server/DirEncryptService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const/4 p2, 0x7

    .line 49
    const-string v0, "BLASTSyncEngine"

    .line 50
    .line 51
    invoke-static {p2, p1, v0}, Lcom/android/server/am/ActivityManagerService$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    :cond_0
    new-instance p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    .line 55
    .line 56
    invoke-direct {p1, p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 57
    .line 58
    .line 59
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    .line 60
    .line 61
    const-wide/16 p1, 0x20

    .line 62
    .line 63
    invoke-static {p1, p2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    if-eqz v0, :cond_1

    .line 68
    .line 69
    const-string v0, "SyncGroupReady"

    .line 70
    .line 71
    invoke-static {p4, v0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m$1(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p4

    .line 75
    iput-object p4, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    .line 76
    .line 77
    invoke-static {p1, p2, p4, p3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public final finishNow()V
    .locals 23

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mTraceName:Ljava/lang/String;

    .line 4
    .line 5
    const-wide/16 v9, 0x20

    .line 6
    .line 7
    iget v11, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {v9, v10, v0, v11}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 15
    .line 16
    sget-object v12, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 17
    .line 18
    const/4 v13, 0x1

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    sget-object v0, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_FORCE_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 22
    .line 23
    aget-boolean v0, v0, v13

    .line 24
    .line 25
    if-eqz v0, :cond_2

    .line 26
    .line 27
    int-to-long v0, v11

    .line 28
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_FORCE_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 29
    .line 30
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v7

    .line 38
    const/4 v5, 0x1

    .line 39
    const-string v6, "SyncGroup %d: Finished!"

    .line 40
    .line 41
    const-wide v3, -0x75803f1b8622c18eL

    .line 42
    .line 43
    .line 44
    .line 45
    .line 46
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    aget-boolean v0, v12, v13

    .line 51
    .line 52
    if-eqz v0, :cond_2

    .line 53
    .line 54
    int-to-long v0, v11

    .line 55
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 56
    .line 57
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v7

    .line 65
    const/4 v5, 0x1

    .line 66
    const/4 v6, 0x0

    .line 67
    const-wide v3, 0x5c48c1c42ce534dbL    # 3.598854671624468E136

    .line 68
    .line 69
    .line 70
    .line 71
    .line 72
    invoke-static/range {v2 .. v7}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    iget-object v14, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 76
    .line 77
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 78
    .line 79
    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTransactionFactory:Ljava/util/function/Supplier;

    .line 80
    .line 81
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    move-object v15, v0

    .line 86
    check-cast v15, Landroid/view/SurfaceControl$Transaction;

    .line 87
    .line 88
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOrphanTransaction:Landroid/view/SurfaceControl$Transaction;

    .line 89
    .line 90
    if-eqz v0, :cond_3

    .line 91
    .line 92
    invoke-virtual {v15, v0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    .line 94
    .line 95
    :cond_3
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 96
    .line 97
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    const/4 v7, 0x0

    .line 106
    if-eqz v1, :cond_4

    .line 107
    .line 108
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 113
    .line 114
    invoke-virtual {v1, v15, v8, v7}, Lcom/android/server/wm/WindowContainer;->finishSync(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Z)V

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_4
    new-instance v2, Landroid/util/ArraySet;

    .line 119
    .line 120
    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    .line 121
    .line 122
    .line 123
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 124
    .line 125
    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 130
    .line 131
    .line 132
    move-result v1

    .line 133
    if-eqz v1, :cond_5

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 140
    .line 141
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowContainer;->waitForSyncTransactionCommit(Landroid/util/ArraySet;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_5
    invoke-virtual {v15}, Landroid/view/SurfaceControl$Transaction;->getId()J

    .line 146
    .line 147
    .line 148
    move-result-wide v5

    .line 149
    new-instance v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;

    .line 150
    .line 151
    iget v3, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 152
    .line 153
    iget-object v1, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncName:Ljava/lang/String;

    .line 154
    .line 155
    move-object v0, v4

    .line 156
    move-object/from16 v16, v1

    .line 157
    .line 158
    move-object/from16 v1, p0

    .line 159
    .line 160
    move-object v13, v4

    .line 161
    move-object/from16 v4, v16

    .line 162
    .line 163
    move-object v7, v15

    .line 164
    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Landroid/util/ArraySet;ILjava/lang/String;JLandroid/view/SurfaceControl$Transaction;)V

    .line 165
    .line 166
    .line 167
    new-instance v0, Lcom/android/server/SystemServerInitThreadPool$$ExternalSyntheticLambda0;

    .line 168
    .line 169
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 170
    .line 171
    .line 172
    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;

    .line 173
    .line 174
    invoke-direct {v1, v13}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$1CommitCallback;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v15, v0, v1}, Landroid/view/SurfaceControl$Transaction;->addTransactionCommittedListener(Ljava/util/concurrent/Executor;Landroid/view/SurfaceControl$TransactionCommittedListener;)Landroid/view/SurfaceControl$Transaction;

    .line 178
    .line 179
    .line 180
    const-wide/16 v0, 0x1388

    .line 181
    .line 182
    iget-object v2, v14, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    .line 183
    .line 184
    invoke-virtual {v2, v13, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 185
    .line 186
    .line 187
    const-string/jumbo v0, "onTransactionReady"

    .line 188
    .line 189
    .line 190
    invoke-static {v9, v10, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 191
    .line 192
    .line 193
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 194
    .line 195
    invoke-interface {v0, v15, v11}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onTransactionReady(Landroid/view/SurfaceControl$Transaction;I)V

    .line 196
    .line 197
    .line 198
    invoke-static {v9, v10}, Landroid/os/Trace;->traceEnd(J)V

    .line 199
    .line 200
    .line 201
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 204
    .line 205
    .line 206
    iget-object v0, v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    .line 207
    .line 208
    invoke-virtual {v2, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 209
    .line 210
    .line 211
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 212
    .line 213
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    if-nez v0, :cond_8

    .line 218
    .line 219
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 220
    .line 221
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 222
    .line 223
    .line 224
    move-result v0

    .line 225
    if-nez v0, :cond_8

    .line 226
    .line 227
    const/4 v0, 0x1

    .line 228
    aget-boolean v1, v12, v0

    .line 229
    .line 230
    if-eqz v1, :cond_6

    .line 231
    .line 232
    sget-object v17, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 233
    .line 234
    const-wide v18, 0x39ee2a32d7113b1aL    # 1.1897930807208512E-29

    .line 235
    .line 236
    .line 237
    .line 238
    .line 239
    const/16 v20, 0x0

    .line 240
    .line 241
    const/16 v21, 0x0

    .line 242
    .line 243
    const/16 v22, 0x0

    .line 244
    .line 245
    invoke-static/range {v17 .. v22}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    :cond_6
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 249
    .line 250
    const/4 v1, 0x0

    .line 251
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 252
    .line 253
    .line 254
    move-result-object v0

    .line 255
    check-cast v0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;

    .line 256
    .line 257
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;->mStartSync:Ljava/lang/Runnable;

    .line 258
    .line 259
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 260
    .line 261
    .line 262
    iget-object v1, v14, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 263
    .line 264
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 265
    .line 266
    .line 267
    move-result v1

    .line 268
    if-eqz v1, :cond_7

    .line 269
    .line 270
    new-instance v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;

    .line 271
    .line 272
    invoke-direct {v1, v8, v0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;Lcom/android/server/wm/BLASTSyncEngine$PendingSyncSet;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 276
    .line 277
    .line 278
    goto :goto_3

    .line 279
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 280
    .line 281
    const-string v1, "Pending Sync Set didn\'t start a sync."

    .line 282
    .line 283
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    throw v0

    .line 287
    :cond_8
    :goto_3
    iget-object v0, v14, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    .line 288
    .line 289
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 290
    .line 291
    .line 292
    move-result v0

    .line 293
    const/4 v1, 0x1

    .line 294
    sub-int/2addr v0, v1

    .line 295
    :goto_4
    if-ltz v0, :cond_a

    .line 296
    .line 297
    iget-object v1, v14, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 298
    .line 299
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 300
    .line 301
    .line 302
    move-result v1

    .line 303
    if-lez v1, :cond_9

    .line 304
    .line 305
    goto :goto_5

    .line 306
    :cond_9
    iget-object v1, v14, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    .line 307
    .line 308
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 309
    .line 310
    .line 311
    move-result-object v1

    .line 312
    check-cast v1, Ljava/lang/Runnable;

    .line 313
    .line 314
    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 315
    .line 316
    .line 317
    add-int/lit8 v0, v0, -0x1

    .line 318
    .line 319
    goto :goto_4

    .line 320
    :cond_a
    :goto_5
    return-void
.end method

.method public final onTimeout()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 13
    .line 14
    invoke-virtual {v1}, Landroid/util/ArraySet;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const/4 v2, 0x1

    .line 19
    sub-int/2addr v1, v2

    .line 20
    move v3, v2

    .line 21
    :goto_0
    const/4 v4, 0x0

    .line 22
    const-string v5, "BLASTSyncEngine"

    .line 23
    .line 24
    if-ltz v1, :cond_2

    .line 25
    .line 26
    iget-object v6, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 27
    .line 28
    invoke-virtual {v6, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v6

    .line 32
    check-cast v6, Lcom/android/server/wm/WindowContainer;

    .line 33
    .line 34
    invoke-virtual {v6, p0}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    new-instance v3, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    const-string v7, "Unfinished container: "

    .line 43
    .line 44
    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    .line 56
    .line 57
    new-instance v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;

    .line 58
    .line 59
    const/4 v5, 0x0

    .line 60
    invoke-direct {v3, v5}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda3;-><init>(I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v6, v3}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 64
    .line 65
    .line 66
    move v3, v4

    .line 67
    :cond_1
    add-int/lit8 v1, v1, -0x1

    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    sub-int/2addr v1, v2

    .line 77
    :goto_1
    if-ltz v1, :cond_3

    .line 78
    .line 79
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string v3, "Unfinished dependency: "

    .line 82
    .line 83
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    iget-object v3, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 87
    .line 88
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v3

    .line 92
    check-cast v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 93
    .line 94
    iget v3, v3, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 95
    .line 96
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    invoke-static {v5, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    .line 105
    .line 106
    add-int/lit8 v1, v1, -0x1

    .line 107
    .line 108
    move v3, v4

    .line 109
    goto :goto_1

    .line 110
    :cond_3
    if-eqz v3, :cond_4

    .line 111
    .line 112
    iget-boolean v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 113
    .line 114
    if-nez v1, :cond_4

    .line 115
    .line 116
    new-instance v1, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    const-string v2, "Sync group "

    .line 119
    .line 120
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 124
    .line 125
    const-string v3, " timed-out because not ready. If you see this, please file a bug."

    .line 126
    .line 127
    invoke-static {v1, v2, v3, v5}, Lcom/android/server/UiModeManagerService$13$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 128
    .line 129
    .line 130
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 131
    .line 132
    invoke-interface {v1}, Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;->onReadyTimeout()V

    .line 133
    .line 134
    .line 135
    :cond_4
    invoke-virtual {p0}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v0, p0}, Lcom/android/server/wm/BLASTSyncEngine;->removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 139
    .line 140
    .line 141
    return-void
.end method
