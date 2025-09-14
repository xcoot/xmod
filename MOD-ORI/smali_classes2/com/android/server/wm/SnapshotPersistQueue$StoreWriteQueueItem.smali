.class public final Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;
.super Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mId:I

.field public final mSnapshot:Landroid/window/TaskSnapshot;

.field public final synthetic this$0:Lcom/android/server/wm/SnapshotPersistQueue;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/SnapshotPersistQueue;IILandroid/window/TaskSnapshot;Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    invoke-direct {p0, p5, p3}, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;-><init>(Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;I)V

    .line 4
    .line 5
    .line 6
    iput p2, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 7
    .line 8
    const/4 p1, 0x4

    .line 9
    invoke-virtual {p4, p1}, Landroid/window/TaskSnapshot;->addReference(I)V

    .line 10
    .line 11
    .line 12
    iput-object p4, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    const-class v2, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 9
    .line 10
    if-eq v2, v1, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    check-cast p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;

    .line 14
    .line 15
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 16
    .line 17
    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 18
    .line 19
    if-ne v1, v2, :cond_1

    .line 20
    .line 21
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 22
    .line 23
    iget v2, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 24
    .line 25
    if-ne v1, v2, :cond_1

    .line 26
    .line 27
    iget-object p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 28
    .line 29
    iget-object p1, p1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 30
    .line 31
    if-ne p0, p1, :cond_1

    .line 32
    .line 33
    const/4 v0, 0x1

    .line 34
    :cond_1
    :goto_0
    return v0
.end method

.method public final onDequeuedLocked()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public final onQueuedLocked()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 4
    .line 5
    invoke-virtual {v1, p0}, Ljava/util/ArrayDeque;->remove(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    iget-object v0, v0, Lcom/android/server/wm/SnapshotPersistQueue;->mStoreQueueItems:Ljava/util/ArrayDeque;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "StoreWriteQueueItem{ID="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget v1, p0, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string v1, ", UserId="

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget p0, p0, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 19
    .line 20
    const-string/jumbo v1, "}"

    .line 21
    .line 22
    .line 23
    invoke-static {p0, v0, v1}, Landroid/hardware/broadcastradio/V2_0/AmFmBandRange$$ExternalSyntheticOutline0;->m(ILjava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    return-object p0
.end method

.method public final write()V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "Unable to open "

    .line 4
    .line 5
    const-wide/16 v3, 0x20

    .line 6
    .line 7
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v5, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mId:I

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string v6, "StoreWriteQueueItem#"

    .line 18
    .line 19
    invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    iget-object v6, v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mPersistInfoProvider:Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;

    .line 33
    .line 34
    iget v7, v1, Lcom/android/server/wm/SnapshotPersistQueue$WriteQueueItem;->mUserId:I

    .line 35
    .line 36
    invoke-virtual {v6, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 41
    .line 42
    .line 43
    move-result v8

    .line 44
    const-string v9, "WindowManager"

    .line 45
    .line 46
    if-nez v8, :cond_2

    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    const-string v8, "Unable to create snapshot directory for user dir="

    .line 58
    .line 59
    invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v6, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getDirectory(I)Ljava/io/File;

    .line 63
    .line 64
    .line 65
    move-result-object v8

    .line 66
    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    .line 75
    .line 76
    :cond_2
    :goto_0
    new-instance v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;

    .line 77
    .line 78
    invoke-direct {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;-><init>()V

    .line 79
    .line 80
    .line 81
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 82
    .line 83
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getOrientation()I

    .line 84
    .line 85
    .line 86
    move-result v8

    .line 87
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->orientation:I

    .line 88
    .line 89
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 90
    .line 91
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getRotation()I

    .line 92
    .line 93
    .line 94
    move-result v8

    .line 95
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->rotation:I

    .line 96
    .line 97
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 98
    .line 99
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 100
    .line 101
    .line 102
    move-result-object v8

    .line 103
    iget v8, v8, Landroid/graphics/Point;->x:I

    .line 104
    .line 105
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskWidth:I

    .line 106
    .line 107
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 108
    .line 109
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getTaskSize()Landroid/graphics/Point;

    .line 110
    .line 111
    .line 112
    move-result-object v8

    .line 113
    iget v8, v8, Landroid/graphics/Point;->y:I

    .line 114
    .line 115
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->taskHeight:I

    .line 116
    .line 117
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 118
    .line 119
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    .line 120
    .line 121
    .line 122
    move-result-object v8

    .line 123
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 124
    .line 125
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetLeft:I

    .line 126
    .line 127
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 128
    .line 129
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    .line 130
    .line 131
    .line 132
    move-result-object v8

    .line 133
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 134
    .line 135
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetTop:I

    .line 136
    .line 137
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 138
    .line 139
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    .line 140
    .line 141
    .line 142
    move-result-object v8

    .line 143
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 144
    .line 145
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetRight:I

    .line 146
    .line 147
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 148
    .line 149
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getContentInsets()Landroid/graphics/Rect;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 154
    .line 155
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->insetBottom:I

    .line 156
    .line 157
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 158
    .line 159
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 160
    .line 161
    .line 162
    move-result-object v8

    .line 163
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 164
    .line 165
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetLeft:I

    .line 166
    .line 167
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 168
    .line 169
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 170
    .line 171
    .line 172
    move-result-object v8

    .line 173
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 174
    .line 175
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetTop:I

    .line 176
    .line 177
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 178
    .line 179
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 180
    .line 181
    .line 182
    move-result-object v8

    .line 183
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 184
    .line 185
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetRight:I

    .line 186
    .line 187
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 188
    .line 189
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getLetterboxInsets()Landroid/graphics/Rect;

    .line 190
    .line 191
    .line 192
    move-result-object v8

    .line 193
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 194
    .line 195
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->letterboxInsetBottom:I

    .line 196
    .line 197
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 198
    .line 199
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->isRealSnapshot()Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    iput-boolean v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isRealSnapshot:Z

    .line 204
    .line 205
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 206
    .line 207
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    .line 208
    .line 209
    .line 210
    move-result v8

    .line 211
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->windowingMode:I

    .line 212
    .line 213
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 214
    .line 215
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getAppearance()I

    .line 216
    .line 217
    .line 218
    move-result v8

    .line 219
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->appearance:I

    .line 220
    .line 221
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 222
    .line 223
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->isTranslucent()Z

    .line 224
    .line 225
    .line 226
    move-result v8

    .line 227
    iput-boolean v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->isTranslucent:Z

    .line 228
    .line 229
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 230
    .line 231
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getTopActivityComponent()Landroid/content/ComponentName;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v8

    .line 239
    iput-object v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->topActivityComponent:Ljava/lang/String;

    .line 240
    .line 241
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 242
    .line 243
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getId()J

    .line 244
    .line 245
    .line 246
    move-result-wide v10

    .line 247
    iput-wide v10, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->id:J

    .line 248
    .line 249
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 250
    .line 251
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getCutoutInsets()Landroid/graphics/Rect;

    .line 252
    .line 253
    .line 254
    move-result-object v8

    .line 255
    if-eqz v8, :cond_3

    .line 256
    .line 257
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 258
    .line 259
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getCutoutInsets()Landroid/graphics/Rect;

    .line 260
    .line 261
    .line 262
    move-result-object v8

    .line 263
    iget v8, v8, Landroid/graphics/Rect;->left:I

    .line 264
    .line 265
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetLeft:I

    .line 266
    .line 267
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 268
    .line 269
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getCutoutInsets()Landroid/graphics/Rect;

    .line 270
    .line 271
    .line 272
    move-result-object v8

    .line 273
    iget v8, v8, Landroid/graphics/Rect;->top:I

    .line 274
    .line 275
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetTop:I

    .line 276
    .line 277
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 278
    .line 279
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getCutoutInsets()Landroid/graphics/Rect;

    .line 280
    .line 281
    .line 282
    move-result-object v8

    .line 283
    iget v8, v8, Landroid/graphics/Rect;->right:I

    .line 284
    .line 285
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetRight:I

    .line 286
    .line 287
    iget-object v8, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 288
    .line 289
    invoke-virtual {v8}, Landroid/window/TaskSnapshot;->getCutoutInsets()Landroid/graphics/Rect;

    .line 290
    .line 291
    .line 292
    move-result-object v8

    .line 293
    iget v8, v8, Landroid/graphics/Rect;->bottom:I

    .line 294
    .line 295
    iput v8, v0, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->cutoutInsetBottom:I

    .line 296
    .line 297
    :cond_3
    invoke-static {v0}, Lcom/android/server/wm/nano/WindowManagerProtos$TaskSnapshotProto;->toByteArray(Lcom/android/framework/protobuf/nano/MessageNano;)[B

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getProtoFile(II)Ljava/io/File;

    .line 302
    .line 303
    .line 304
    move-result-object v8

    .line 305
    new-instance v10, Landroid/util/AtomicFile;

    .line 306
    .line 307
    invoke-direct {v10, v8}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 308
    .line 309
    .line 310
    const/4 v11, 0x1

    .line 311
    const/4 v12, 0x0

    .line 312
    :try_start_0
    invoke-virtual {v10}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 313
    .line 314
    .line 315
    move-result-object v13
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 316
    :try_start_1
    invoke-virtual {v13, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v10, v13}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 320
    .line 321
    .line 322
    move v0, v11

    .line 323
    goto :goto_2

    .line 324
    :catch_0
    move-exception v0

    .line 325
    goto :goto_1

    .line 326
    :catch_1
    move-exception v0

    .line 327
    const/4 v13, 0x0

    .line 328
    :goto_1
    invoke-virtual {v10, v13}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 329
    .line 330
    .line 331
    new-instance v10, Ljava/lang/StringBuilder;

    .line 332
    .line 333
    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 337
    .line 338
    .line 339
    const-string v8, " for persisting. "

    .line 340
    .line 341
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    .line 343
    .line 344
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 345
    .line 346
    .line 347
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    .line 353
    .line 354
    move v0, v12

    .line 355
    :goto_2
    xor-int/2addr v0, v11

    .line 356
    const-string v8, " for persisting."

    .line 357
    .line 358
    iget-object v10, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 359
    .line 360
    invoke-virtual {v10}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 361
    .line 362
    .line 363
    move-result-object v10

    .line 364
    if-eqz v10, :cond_8

    .line 365
    .line 366
    invoke-virtual {v10}, Landroid/hardware/HardwareBuffer;->isClosed()Z

    .line 367
    .line 368
    .line 369
    move-result v13

    .line 370
    if-nez v13, :cond_8

    .line 371
    .line 372
    invoke-virtual {v10}, Landroid/hardware/HardwareBuffer;->getWidth()I

    .line 373
    .line 374
    .line 375
    move-result v13

    .line 376
    if-le v13, v11, :cond_8

    .line 377
    .line 378
    invoke-virtual {v10}, Landroid/hardware/HardwareBuffer;->getHeight()I

    .line 379
    .line 380
    .line 381
    move-result v10

    .line 382
    if-gt v10, v11, :cond_4

    .line 383
    .line 384
    goto/16 :goto_4

    .line 385
    .line 386
    :cond_4
    iget-object v10, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 387
    .line 388
    invoke-virtual {v10}, Landroid/window/TaskSnapshot;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    .line 389
    .line 390
    .line 391
    move-result-object v10

    .line 392
    iget-object v13, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 393
    .line 394
    invoke-virtual {v13}, Landroid/window/TaskSnapshot;->getColorSpace()Landroid/graphics/ColorSpace;

    .line 395
    .line 396
    .line 397
    move-result-object v13

    .line 398
    invoke-static {v10, v13}, Landroid/graphics/Bitmap;->wrapHardwareBuffer(Landroid/hardware/HardwareBuffer;Landroid/graphics/ColorSpace;)Landroid/graphics/Bitmap;

    .line 399
    .line 400
    .line 401
    move-result-object v10

    .line 402
    if-nez v10, :cond_5

    .line 403
    .line 404
    const-string v0, "Invalid task snapshot hw bitmap"

    .line 405
    .line 406
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    .line 408
    .line 409
    goto/16 :goto_5

    .line 410
    .line 411
    :cond_5
    sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 412
    .line 413
    invoke-virtual {v10, v13, v12}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    .line 414
    .line 415
    .line 416
    move-result-object v12

    .line 417
    if-nez v12, :cond_6

    .line 418
    .line 419
    new-instance v0, Ljava/lang/StringBuilder;

    .line 420
    .line 421
    const-string v2, "Bitmap conversion from (config="

    .line 422
    .line 423
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    .line 427
    .line 428
    .line 429
    move-result-object v2

    .line 430
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 431
    .line 432
    .line 433
    const-string v2, ", isMutable="

    .line 434
    .line 435
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 436
    .line 437
    .line 438
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->isMutable()Z

    .line 439
    .line 440
    .line 441
    move-result v2

    .line 442
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    const-string v2, ") to (config=ARGB_8888, isMutable=false) failed."

    .line 446
    .line 447
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 451
    .line 452
    .line 453
    move-result-object v0

    .line 454
    invoke-static {v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    .line 456
    .line 457
    goto/16 :goto_5

    .line 458
    .line 459
    :cond_6
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getWidth()I

    .line 460
    .line 461
    .line 462
    move-result v13

    .line 463
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->getHeight()I

    .line 464
    .line 465
    .line 466
    move-result v14

    .line 467
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 468
    .line 469
    .line 470
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getHighResolutionBitmapFile(II)Ljava/io/File;

    .line 471
    .line 472
    .line 473
    move-result-object v10

    .line 474
    :try_start_2
    new-instance v15, Ljava/io/FileOutputStream;

    .line 475
    .line 476
    invoke-direct {v15, v10}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 477
    .line 478
    .line 479
    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    .line 480
    .line 481
    const/16 v4, 0x5f

    .line 482
    .line 483
    invoke-virtual {v12, v3, v4, v15}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 484
    .line 485
    .line 486
    invoke-virtual {v15}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    .line 487
    .line 488
    .line 489
    iget-boolean v10, v6, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mEnableLowResSnapshots:Z

    .line 490
    .line 491
    if-nez v10, :cond_7

    .line 492
    .line 493
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 494
    .line 495
    .line 496
    goto :goto_3

    .line 497
    :cond_7
    int-to-float v10, v13

    .line 498
    iget v13, v6, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->mLowResScaleFactor:F

    .line 499
    .line 500
    mul-float/2addr v10, v13

    .line 501
    float-to-int v10, v10

    .line 502
    int-to-float v14, v14

    .line 503
    mul-float/2addr v14, v13

    .line 504
    float-to-int v13, v14

    .line 505
    invoke-static {v12, v10, v13, v11}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 506
    .line 507
    .line 508
    move-result-object v10

    .line 509
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->recycle()V

    .line 510
    .line 511
    .line 512
    invoke-virtual {v6, v5, v7}, Lcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;->getLowResolutionBitmapFile(II)Ljava/io/File;

    .line 513
    .line 514
    .line 515
    move-result-object v12

    .line 516
    :try_start_3
    new-instance v13, Ljava/io/FileOutputStream;

    .line 517
    .line 518
    invoke-direct {v13, v12}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 519
    .line 520
    .line 521
    invoke-virtual {v10, v3, v4, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 522
    .line 523
    .line 524
    invoke-virtual {v13}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 525
    .line 526
    .line 527
    invoke-virtual {v10}, Landroid/graphics/Bitmap;->recycle()V

    .line 528
    .line 529
    .line 530
    :goto_3
    move v11, v0

    .line 531
    goto :goto_5

    .line 532
    :catch_2
    move-exception v0

    .line 533
    new-instance v3, Ljava/lang/StringBuilder;

    .line 534
    .line 535
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 549
    .line 550
    .line 551
    goto :goto_5

    .line 552
    :catch_3
    move-exception v0

    .line 553
    new-instance v3, Ljava/lang/StringBuilder;

    .line 554
    .line 555
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 556
    .line 557
    .line 558
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 559
    .line 560
    .line 561
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 562
    .line 563
    .line 564
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 565
    .line 566
    .line 567
    move-result-object v2

    .line 568
    invoke-static {v9, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 569
    .line 570
    .line 571
    goto :goto_5

    .line 572
    :cond_8
    :goto_4
    const-string v0, "Invalid task snapshot hw buffer, taskId="

    .line 573
    .line 574
    invoke-static {v5, v0, v9}, Lcom/android/server/NandswapManager$$ExternalSyntheticOutline0;->m(ILjava/lang/String;Ljava/lang/String;)V

    .line 575
    .line 576
    .line 577
    :goto_5
    if-eqz v11, :cond_9

    .line 578
    .line 579
    iget-object v0, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->this$0:Lcom/android/server/wm/SnapshotPersistQueue;

    .line 580
    .line 581
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 582
    .line 583
    .line 584
    invoke-static {v5, v7, v6}, Lcom/android/server/wm/SnapshotPersistQueue;->deleteSnapshot(IILcom/android/server/wm/BaseAppSnapshotPersister$PersistInfoProvider;)V

    .line 585
    .line 586
    .line 587
    :cond_9
    iget-object v0, v1, Lcom/android/server/wm/SnapshotPersistQueue$StoreWriteQueueItem;->mSnapshot:Landroid/window/TaskSnapshot;

    .line 588
    .line 589
    const/4 v1, 0x4

    .line 590
    invoke-virtual {v0, v1}, Landroid/window/TaskSnapshot;->removeReference(I)V

    .line 591
    .line 592
    .line 593
    const-wide/16 v1, 0x20

    .line 594
    .line 595
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 596
    .line 597
    .line 598
    return-void
.end method
