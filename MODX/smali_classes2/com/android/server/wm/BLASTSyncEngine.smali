.class public final Lcom/android/server/wm/BLASTSyncEngine;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mActiveSyncs:Ljava/util/ArrayList;

.field public final mHandler:Landroid/os/Handler;

.field public mNextSyncId:I

.field public final mOnIdleListeners:Ljava/util/ArrayList;

.field public final mPendingSyncSets:Ljava/util/ArrayList;

.field public final mTmpFinishQueue:Ljava/util/ArrayList;

.field public final mTmpFringe:Ljava/util/ArrayList;

.field public final mWm:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/os/Handler;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mNextSyncId:I

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 13
    .line 14
    new-instance v0, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mPendingSyncSets:Ljava/util/ArrayList;

    .line 20
    .line 21
    new-instance v0, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mOnIdleListeners:Ljava/util/ArrayList;

    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 34
    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFringe:Ljava/util/ArrayList;

    .line 41
    .line 42
    iput-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 43
    .line 44
    iput-object p2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    .line 45
    .line 46
    return-void
.end method


# virtual methods
.method public final addToSyncSet(ILcom/android/server/wm/WindowContainer;)V
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_7

    .line 14
    .line 15
    :cond_0
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    aget-boolean p1, p1, v0

    .line 19
    .line 20
    iget v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 21
    .line 22
    if-eqz p1, :cond_1

    .line 23
    .line 24
    int-to-long v1, v0

    .line 25
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 30
    .line 31
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v8

    .line 39
    const-wide v4, -0x69c4a033cf0c78fL    # -5.459491884869798E276

    .line 40
    .line 41
    .line 42
    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    const/4 v7, 0x0

    .line 46
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->getSyncGroup()Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    const-string v1, "BLASTSyncEngine"

    .line 54
    .line 55
    if-eqz p1, :cond_d

    .line 56
    .line 57
    if-eq p1, p0, :cond_d

    .line 58
    .line 59
    iget-boolean v2, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    .line 60
    .line 61
    if-nez v2, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asWindowState()Lcom/android/server/wm/WindowState;

    .line 65
    .line 66
    .line 67
    move-result-object v2

    .line 68
    if-eqz v2, :cond_3

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_3
    iget-object v2, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 72
    .line 73
    if-eq v2, p1, :cond_4

    .line 74
    .line 75
    goto/16 :goto_5

    .line 76
    .line 77
    :cond_4
    :goto_0
    const-string v2, "SyncGroup "

    .line 78
    .line 79
    const-string v3, " conflicts with "

    .line 80
    .line 81
    invoke-static {v0, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    iget v3, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 86
    .line 87
    const-string v4, ": Making "

    .line 88
    .line 89
    const-string v5, " depend on "

    .line 90
    .line 91
    invoke-static {v3, v0, v4, v5, v2}, Lcom/android/server/ServiceKeeper$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/StringBuilder;)V

    .line 92
    .line 93
    .line 94
    invoke-static {v2, v3, v1}, Lcom/android/server/HeapdumpWatcher$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 98
    .line 99
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_5

    .line 104
    .line 105
    goto/16 :goto_6

    .line 106
    .line 107
    :cond_5
    iget-object v2, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 108
    .line 109
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-eqz v2, :cond_6

    .line 114
    .line 115
    goto/16 :goto_4

    .line 116
    .line 117
    :cond_6
    iget-object v2, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 118
    .line 119
    iget-object v2, v2, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFringe:Ljava/util/ArrayList;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 125
    .line 126
    .line 127
    const/4 v4, 0x0

    .line 128
    move v5, v4

    .line 129
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    if-ge v5, v6, :cond_b

    .line 134
    .line 135
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    check-cast v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 140
    .line 141
    if-ne v6, p0, :cond_8

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 144
    .line 145
    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    const-string v2, " Detected dependency cycle between "

    .line 149
    .line 150
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    const-string v2, " and "

    .line 157
    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string v2, ": Moving "

    .line 165
    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string v2, " to "

    .line 173
    .line 174
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p1

    .line 184
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    .line 186
    .line 187
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 188
    .line 189
    if-nez p1, :cond_7

    .line 190
    .line 191
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowContainer;->setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 192
    .line 193
    .line 194
    goto :goto_6

    .line 195
    :cond_7
    iget-object p1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 196
    .line 197
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 201
    .line 202
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 203
    .line 204
    .line 205
    iput-object p0, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 206
    .line 207
    goto :goto_6

    .line 208
    :cond_8
    move v7, v4

    .line 209
    :goto_2
    iget-object v8, v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 210
    .line 211
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 212
    .line 213
    .line 214
    move-result v8

    .line 215
    if-ge v7, v8, :cond_a

    .line 216
    .line 217
    iget-object v8, v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 218
    .line 219
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v8

    .line 223
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    if-eqz v8, :cond_9

    .line 228
    .line 229
    goto :goto_3

    .line 230
    :cond_9
    iget-object v8, v6, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 231
    .line 232
    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v8

    .line 236
    check-cast v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 237
    .line 238
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    .line 240
    .line 241
    :goto_3
    add-int/lit8 v7, v7, 0x1

    .line 242
    .line 243
    goto :goto_2

    .line 244
    :cond_a
    add-int/lit8 v5, v5, 0x1

    .line 245
    .line 246
    goto :goto_1

    .line 247
    :cond_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 248
    .line 249
    .line 250
    :goto_4
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 251
    .line 252
    sget-object v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->NO_DEPENDENCIES:Ljava/util/ArrayList;

    .line 253
    .line 254
    if-ne v0, v2, :cond_c

    .line 255
    .line 256
    new-instance v0, Ljava/util/ArrayList;

    .line 257
    .line 258
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 259
    .line 260
    .line 261
    iput-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 262
    .line 263
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 264
    .line 265
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 266
    .line 267
    .line 268
    goto :goto_6

    .line 269
    :cond_d
    :goto_5
    iget-object p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 270
    .line 271
    invoke-virtual {p1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 272
    .line 273
    .line 274
    invoke-virtual {p2, p0}, Lcom/android/server/wm/WindowContainer;->setSyncGroup(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V

    .line 275
    .line 276
    .line 277
    :goto_6
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->prepareSync()Z

    .line 278
    .line 279
    .line 280
    iget p1, p2, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 281
    .line 282
    if-nez p1, :cond_e

    .line 283
    .line 284
    iget-object p1, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 285
    .line 286
    if-eqz p1, :cond_e

    .line 287
    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    .line 289
    .line 290
    const-string v0, "addToSync: unset SyncGroup "

    .line 291
    .line 292
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-object v0, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 296
    .line 297
    iget v0, v0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 298
    .line 299
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 300
    .line 301
    .line 302
    const-string v0, " for non-sync "

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 308
    .line 309
    .line 310
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object p1

    .line 314
    invoke-static {v1, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    .line 316
    .line 317
    const/4 p1, 0x0

    .line 318
    iput-object p1, p2, Lcom/android/server/wm/WindowContainer;->mSyncGroup:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 319
    .line 320
    :cond_e
    iget-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 321
    .line 322
    if-eqz p1, :cond_f

    .line 323
    .line 324
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 325
    .line 326
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 327
    .line 328
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 329
    .line 330
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 331
    .line 332
    .line 333
    :cond_f
    :goto_7
    return-void
.end method

.method public final getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    return-object p0

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 9
    .line 10
    const-string v0, "SyncGroup is not started yet id="

    .line 11
    .line 12
    invoke-static {p1, v0}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw p0
.end method

.method public final getSyncSet(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-ge v0, v1, :cond_1

    .line 9
    .line 10
    iget-object v1, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    check-cast v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 17
    .line 18
    iget v1, v1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 19
    .line 20
    if-eq v1, p1, :cond_0

    .line 21
    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 32
    .line 33
    return-object p0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0
.end method

.method public final hasActiveSync()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
.end method

.method public final onSurfacePlacement()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 13
    .line 14
    iget-object v2, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    add-int/2addr v1, v2

    .line 27
    iget-object v3, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    mul-int/2addr v3, v1

    .line 34
    div-int/lit8 v3, v3, 0x2

    .line 35
    .line 36
    :cond_1
    :goto_0
    iget-object v1, v0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_e

    .line 43
    .line 44
    const-string v1, "BLASTSyncEngine"

    .line 45
    .line 46
    if-gtz v3, :cond_2

    .line 47
    .line 48
    const-string v4, "Trying to finish more syncs than theoretically possible. This should never happen. Most likely a dependency cycle wasn\'t detected."

    .line 49
    .line 50
    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    .line 52
    .line 53
    :cond_2
    add-int/lit8 v3, v3, -0x1

    .line 54
    .line 55
    iget-object v4, v0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    check-cast v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 63
    .line 64
    iget-object v6, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 65
    .line 66
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    if-gez v6, :cond_3

    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_3
    iget-boolean v7, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 74
    .line 75
    if-nez v7, :cond_4

    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_4
    sget-object v7, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 79
    .line 80
    aget-boolean v8, v7, v2

    .line 81
    .line 82
    iget v9, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 83
    .line 84
    if-eqz v8, :cond_5

    .line 85
    .line 86
    int-to-long v10, v9

    .line 87
    iget-object v8, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 88
    .line 89
    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v8

    .line 93
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 94
    .line 95
    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 96
    .line 97
    .line 98
    move-result-object v10

    .line 99
    filled-new-array {v10, v8}, [Ljava/lang/Object;

    .line 100
    .line 101
    .line 102
    move-result-object v17

    .line 103
    const/16 v16, 0x0

    .line 104
    .line 105
    const-wide v13, 0x6e1ad43c22b3c5dL

    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    const/4 v15, 0x1

    .line 111
    invoke-static/range {v12 .. v17}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 112
    .line 113
    .line 114
    :cond_5
    iget-object v8, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 115
    .line 116
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v8

    .line 120
    const-string v10, "SyncGroup "

    .line 121
    .line 122
    if-nez v8, :cond_7

    .line 123
    .line 124
    sget-boolean v5, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 125
    .line 126
    if-eqz v5, :cond_6

    .line 127
    .line 128
    const-string v5, ":  Unfinished dependencies: "

    .line 129
    .line 130
    invoke-static {v9, v10, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    iget-object v4, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 135
    .line 136
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_6
    aget-boolean v1, v7, v2

    .line 148
    .line 149
    if-eqz v1, :cond_1

    .line 150
    .line 151
    int-to-long v5, v9

    .line 152
    iget-object v1, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 153
    .line 154
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 159
    .line 160
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v12

    .line 168
    const/4 v11, 0x0

    .line 169
    const-wide v8, 0x754d51b2efdb3c04L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    const/4 v10, 0x1

    .line 175
    invoke-static/range {v7 .. v12}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    goto/16 :goto_0

    .line 179
    .line 180
    :cond_7
    iget-object v8, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 181
    .line 182
    invoke-virtual {v8}, Landroid/util/ArraySet;->size()I

    .line 183
    .line 184
    .line 185
    move-result v8

    .line 186
    sub-int/2addr v8, v2

    .line 187
    :goto_1
    if-ltz v8, :cond_a

    .line 188
    .line 189
    iget-object v11, v4, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 190
    .line 191
    invoke-virtual {v11, v8}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    move-result-object v11

    .line 195
    check-cast v11, Lcom/android/server/wm/WindowContainer;

    .line 196
    .line 197
    invoke-virtual {v11, v4}, Lcom/android/server/wm/WindowContainer;->isSyncFinished(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)Z

    .line 198
    .line 199
    .line 200
    move-result v12

    .line 201
    if-nez v12, :cond_9

    .line 202
    .line 203
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 204
    .line 205
    if-eqz v4, :cond_8

    .line 206
    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    const-string v5, ":  Unfinished container: "

    .line 216
    .line 217
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    const-string v5, " mSyncState="

    .line 224
    .line 225
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 226
    .line 227
    .line 228
    iget v5, v11, Lcom/android/server/wm/WindowContainer;->mSyncState:I

    .line 229
    .line 230
    invoke-static {v4, v5, v1}, Lcom/android/server/DeviceIdleController$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_0

    .line 234
    .line 235
    :cond_8
    aget-boolean v1, v7, v2

    .line 236
    .line 237
    if-eqz v1, :cond_1

    .line 238
    .line 239
    int-to-long v4, v9

    .line 240
    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 245
    .line 246
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 247
    .line 248
    .line 249
    move-result-object v4

    .line 250
    filled-new-array {v4, v1}, [Ljava/lang/Object;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    const/4 v10, 0x0

    .line 255
    const-wide v7, 0x88f1955f4253460L

    .line 256
    .line 257
    .line 258
    .line 259
    .line 260
    const/4 v9, 0x1

    .line 261
    invoke-static/range {v6 .. v11}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 262
    .line 263
    .line 264
    goto/16 :goto_0

    .line 265
    .line 266
    :cond_9
    add-int/lit8 v8, v8, -0x1

    .line 267
    .line 268
    goto :goto_1

    .line 269
    :cond_a
    invoke-virtual {v4}, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->finishNow()V

    .line 270
    .line 271
    .line 272
    move v1, v5

    .line 273
    :goto_2
    iget-object v7, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 274
    .line 275
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 276
    .line 277
    .line 278
    move-result v7

    .line 279
    if-ge v5, v7, :cond_1

    .line 280
    .line 281
    iget-object v7, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 282
    .line 283
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v7

    .line 287
    check-cast v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 288
    .line 289
    iget-object v8, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 290
    .line 291
    invoke-virtual {v8, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v8

    .line 295
    if-nez v8, :cond_b

    .line 296
    .line 297
    goto :goto_3

    .line 298
    :cond_b
    if-lt v5, v6, :cond_c

    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_c
    iget-object v7, v7, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 302
    .line 303
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    .line 304
    .line 305
    .line 306
    move-result v7

    .line 307
    if-nez v7, :cond_d

    .line 308
    .line 309
    goto :goto_3

    .line 310
    :cond_d
    iget-object v7, v0, Lcom/android/server/wm/BLASTSyncEngine;->mTmpFinishQueue:Ljava/util/ArrayList;

    .line 311
    .line 312
    iget-object v8, v0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 313
    .line 314
    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v8

    .line 318
    check-cast v8, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 319
    .line 320
    invoke-virtual {v7, v1, v8}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 321
    .line 322
    .line 323
    add-int/lit8 v1, v1, 0x1

    .line 324
    .line 325
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_e
    return-void
.end method

.method public final removeFromDependencies(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    if-ge v0, v2, :cond_2

    .line 10
    .line 11
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    check-cast v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 18
    .line 19
    iget-object v3, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 20
    .line 21
    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-nez v3, :cond_0

    .line 26
    .line 27
    goto :goto_1

    .line 28
    :cond_0
    iget-object v2, v2, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mDependencies:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_1
    const/4 v1, 0x1

    .line 38
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    if-nez v1, :cond_3

    .line 42
    .line 43
    return-void

    .line 44
    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 45
    .line 46
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 47
    .line 48
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V
    .locals 0

    .line 1
    iget-object p1, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mOnTimeout:Lcom/android/server/wm/BLASTSyncEngine$SyncGroup$$ExternalSyntheticLambda2;

    .line 2
    .line 3
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mHandler:Landroid/os/Handler;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final setReady(IZ)Z
    .locals 9

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-boolean p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 6
    .line 7
    if-ne p1, p2, :cond_0

    .line 8
    .line 9
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    sget-object p1, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    aget-boolean p1, p1, v0

    .line 15
    .line 16
    if-eqz p1, :cond_1

    .line 17
    .line 18
    iget p1, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 19
    .line 20
    int-to-long v1, p1

    .line 21
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 22
    .line 23
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v8

    .line 35
    const/4 v7, 0x0

    .line 36
    const-wide v4, 0x5794d7bee7fb3e74L    # 8.01998467284049E113

    .line 37
    .line 38
    .line 39
    .line 40
    .line 41
    const/16 v6, 0xd

    .line 42
    .line 43
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    iput-boolean p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mReady:Z

    .line 47
    .line 48
    if-eqz p2, :cond_2

    .line 49
    .line 50
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->this$0:Lcom/android/server/wm/BLASTSyncEngine;

    .line 51
    .line 52
    iget-object p0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mWm:Lcom/android/server/wm/WindowManagerService;

    .line 53
    .line 54
    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 57
    .line 58
    .line 59
    :cond_2
    move p0, v0

    .line 60
    :goto_0
    return p0
.end method

.method public final setSyncMethod(II)V
    .locals 3

    .line 1
    invoke-virtual {p0, p1}, Lcom/android/server/wm/BLASTSyncEngine;->getSyncGroup(I)Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mRootMembers:Landroid/util/ArraySet;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-boolean v0, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    const-string/jumbo v0, "setSyncMethod, id="

    .line 18
    .line 19
    .line 20
    const-string v1, ", method="

    .line 21
    .line 22
    const-string v2, ", caller="

    .line 23
    .line 24
    invoke-static {p1, p2, v0, v1, v2}, Lcom/android/internal/util/jobs/ArrayUtils$$ExternalSyntheticOutline0;->m(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const/4 v0, 0x3

    .line 29
    invoke-static {v0}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "BLASTSyncEngine"

    .line 41
    .line 42
    invoke-static {v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    .line 44
    .line 45
    :cond_0
    iput p2, p0, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncMethod:I

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 49
    .line 50
    const-string p2, "Not allow to change sync method after adding group member, id="

    .line 51
    .line 52
    invoke-static {p1, p2}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    throw p0
.end method

.method public final startSyncSet(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;JZ)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-lez v0, :cond_0

    .line 9
    .line 10
    move v0, v1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    if-nez p4, :cond_1

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    const-string v3, "SyncGroup "

    .line 20
    .line 21
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget v3, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 25
    .line 26
    const-string v4, ": Started when there is other active SyncGroup"

    .line 27
    .line 28
    const-string v5, "BLASTSyncEngine"

    .line 29
    .line 30
    invoke-static {v2, v3, v4, v5}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/BLASTSyncEngine;->mActiveSyncs:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    .line 37
    .line 38
    iput-boolean p4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mIgnoreIndirectMembers:Z

    .line 39
    .line 40
    sget-boolean v2, Lcom/samsung/android/rune/CoreRune;->FW_SHELL_TRANSITION_LOG:Z

    .line 41
    .line 42
    sget-object v3, Lcom/android/internal/protolog/ProtoLogImpl_324116711$Cache;->WM_DEBUG_SYNC_ENGINE_enabled:[Z

    .line 43
    .line 44
    iget-object v4, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mListener:Lcom/android/server/wm/BLASTSyncEngine$TransactionReadyListener;

    .line 45
    .line 46
    iget v5, p1, Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;->mSyncId:I

    .line 47
    .line 48
    if-eqz v2, :cond_2

    .line 49
    .line 50
    aget-boolean p4, v3, v1

    .line 51
    .line 52
    if-eqz p4, :cond_4

    .line 53
    .line 54
    int-to-long v0, v5

    .line 55
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p4

    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 70
    .line 71
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    filled-new-array {v0, p4, v2}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v8

    .line 79
    const-wide v4, -0x6bd62b0b9314c65eL

    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    const/4 v6, 0x1

    .line 85
    const/4 v7, 0x0

    .line 86
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_2
    aget-boolean v1, v3, v1

    .line 91
    .line 92
    if-eqz v1, :cond_4

    .line 93
    .line 94
    int-to-long v1, v5

    .line 95
    if-eqz p4, :cond_3

    .line 96
    .line 97
    if-eqz v0, :cond_3

    .line 98
    .line 99
    const-string p4, "(in parallel) "

    .line 100
    .line 101
    goto :goto_1

    .line 102
    :cond_3
    const-string p4, ""

    .line 103
    .line 104
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_SYNC_ENGINE:Lcom/android/internal/protolog/ProtoLogGroup;

    .line 109
    .line 110
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    filled-new-array {v1, p4, v0}, [Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v8

    .line 118
    const-wide v4, -0x2956de0d3d93c33fL    # -2.9512502947194385E109

    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    const/4 v6, 0x1

    .line 124
    const/4 v7, 0x0

    .line 125
    invoke-static/range {v3 .. v8}, Lcom/android/internal/protolog/ProtoLogImpl_324116711;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;JILjava/lang/String;[Ljava/lang/Object;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    :goto_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/BLASTSyncEngine;->scheduleTimeout(Lcom/android/server/wm/BLASTSyncEngine$SyncGroup;J)V

    .line 129
    .line 130
    .line 131
    return-void
.end method
