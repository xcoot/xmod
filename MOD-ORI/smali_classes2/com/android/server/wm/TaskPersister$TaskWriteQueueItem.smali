.class public final Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Lcom/android/server/wm/PersisterQueue$WriteQueueItem;


# instance fields
.field public final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field public final mTask:Lcom/android/server/wm/Task;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 7
    .line 8
    return-void
.end method

.method public static saveToXml(Lcom/android/server/wm/Task;)[B
    .locals 7

    .line 1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {v0}, Landroid/util/Xml;->resolveSerializer(Ljava/io/OutputStream;)Lcom/android/modules/utils/TypedXmlSerializer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 11
    .line 12
    const/4 v3, 0x0

    .line 13
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 14
    .line 15
    .line 16
    const-string/jumbo v2, "task"

    .line 17
    .line 18
    .line 19
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 20
    .line 21
    .line 22
    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 23
    .line 24
    const-string/jumbo v5, "task_id"

    .line 25
    .line 26
    .line 27
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 28
    .line 29
    .line 30
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 31
    .line 32
    if-eqz v4, :cond_0

    .line 33
    .line 34
    const-string/jumbo v5, "real_activity"

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v4

    .line 41
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 42
    .line 43
    .line 44
    :cond_0
    const-string/jumbo v4, "real_activity_suspended"

    .line 45
    .line 46
    .line 47
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 48
    .line 49
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 50
    .line 51
    .line 52
    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 53
    .line 54
    if-eqz v4, :cond_1

    .line 55
    .line 56
    const-string/jumbo v5, "orig_activity"

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 64
    .line 65
    .line 66
    :cond_1
    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 67
    .line 68
    const-string/jumbo v5, "root_affinity"

    .line 69
    .line 70
    .line 71
    if-eqz v4, :cond_3

    .line 72
    .line 73
    const-string v6, "affinity"

    .line 74
    .line 75
    invoke-interface {v1, v3, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 76
    .line 77
    .line 78
    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v6, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 81
    .line 82
    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v4

    .line 86
    if-nez v4, :cond_4

    .line 87
    .line 88
    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 89
    .line 90
    if-eqz v4, :cond_2

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    const-string v4, "@"

    .line 94
    .line 95
    :goto_0
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_3
    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v4, :cond_4

    .line 102
    .line 103
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 104
    .line 105
    .line 106
    :cond_4
    :goto_1
    iget-object v4, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 107
    .line 108
    if-eqz v4, :cond_5

    .line 109
    .line 110
    const-string/jumbo v5, "window_layout_affinity"

    .line 111
    .line 112
    .line 113
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 114
    .line 115
    .line 116
    :cond_5
    const-string/jumbo v4, "root_has_reset"

    .line 117
    .line 118
    .line 119
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 120
    .line 121
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 122
    .line 123
    .line 124
    const-string v4, "auto_remove_recents"

    .line 125
    .line 126
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 127
    .line 128
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 129
    .line 130
    .line 131
    const-string/jumbo v4, "user_id"

    .line 132
    .line 133
    .line 134
    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 135
    .line 136
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 137
    .line 138
    .line 139
    const-string/jumbo v4, "user_setup_complete"

    .line 140
    .line 141
    .line 142
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 143
    .line 144
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 145
    .line 146
    .line 147
    const-string v4, "effective_uid"

    .line 148
    .line 149
    iget v5, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 150
    .line 151
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 152
    .line 153
    .line 154
    const-string v4, "last_time_moved"

    .line 155
    .line 156
    iget-wide v5, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 157
    .line 158
    invoke-interface {v1, v3, v4, v5, v6}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 159
    .line 160
    .line 161
    const-string/jumbo v4, "never_relinquish_identity"

    .line 162
    .line 163
    .line 164
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 165
    .line 166
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 167
    .line 168
    .line 169
    iget-object v4, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 170
    .line 171
    if-eqz v4, :cond_6

    .line 172
    .line 173
    const-string v5, "last_description"

    .line 174
    .line 175
    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v4

    .line 179
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 180
    .line 181
    .line 182
    :cond_6
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 183
    .line 184
    if-eqz v4, :cond_7

    .line 185
    .line 186
    invoke-virtual {v4, v1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Lcom/android/modules/utils/TypedXmlSerializer;)V

    .line 187
    .line 188
    .line 189
    :cond_7
    const-string/jumbo v4, "task_affiliation"

    .line 190
    .line 191
    .line 192
    iget v5, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 193
    .line 194
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    .line 196
    .line 197
    const-string/jumbo v4, "prev_affiliation"

    .line 198
    .line 199
    .line 200
    iget v5, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 201
    .line 202
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 203
    .line 204
    .line 205
    const-string/jumbo v4, "next_affiliation"

    .line 206
    .line 207
    .line 208
    iget v5, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 209
    .line 210
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 211
    .line 212
    .line 213
    const-string v4, "calling_uid"

    .line 214
    .line 215
    iget v5, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 216
    .line 217
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 218
    .line 219
    .line 220
    iget-object v4, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 221
    .line 222
    const-string v5, ""

    .line 223
    .line 224
    if-nez v4, :cond_8

    .line 225
    .line 226
    move-object v4, v5

    .line 227
    :cond_8
    const-string v6, "calling_package"

    .line 228
    .line 229
    invoke-interface {v1, v3, v6, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 230
    .line 231
    .line 232
    iget-object v4, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 233
    .line 234
    if-nez v4, :cond_9

    .line 235
    .line 236
    goto :goto_2

    .line 237
    :cond_9
    move-object v5, v4

    .line 238
    :goto_2
    const-string v4, "calling_feature_id"

    .line 239
    .line 240
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 241
    .line 242
    .line 243
    const-string/jumbo v4, "resize_mode"

    .line 244
    .line 245
    .line 246
    iget v5, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 247
    .line 248
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 249
    .line 250
    .line 251
    const-string/jumbo v4, "supports_picture_in_picture"

    .line 252
    .line 253
    .line 254
    iget-boolean v5, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 255
    .line 256
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 257
    .line 258
    .line 259
    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 260
    .line 261
    if-eqz v4, :cond_a

    .line 262
    .line 263
    const-string/jumbo v5, "non_fullscreen_bounds"

    .line 264
    .line 265
    .line 266
    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v4

    .line 270
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 271
    .line 272
    .line 273
    :cond_a
    const-string/jumbo v4, "min_width"

    .line 274
    .line 275
    .line 276
    iget v5, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 277
    .line 278
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    .line 280
    .line 281
    const-string/jumbo v4, "min_height"

    .line 282
    .line 283
    .line 284
    iget v5, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 285
    .line 286
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    .line 288
    .line 289
    const-string/jumbo v4, "persist_task_version"

    .line 290
    .line 291
    .line 292
    const/4 v5, 0x1

    .line 293
    invoke-interface {v1, v3, v4, v5}, Lcom/android/modules/utils/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 294
    .line 295
    .line 296
    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 297
    .line 298
    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 299
    .line 300
    if-eqz v4, :cond_b

    .line 301
    .line 302
    const-string v5, "last_snapshot_task_size"

    .line 303
    .line 304
    invoke-virtual {v4}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    .line 305
    .line 306
    .line 307
    move-result-object v4

    .line 308
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 309
    .line 310
    .line 311
    :cond_b
    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 312
    .line 313
    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 314
    .line 315
    if-eqz v4, :cond_c

    .line 316
    .line 317
    const-string v5, "last_snapshot_content_insets"

    .line 318
    .line 319
    invoke-virtual {v4}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 324
    .line 325
    .line 326
    :cond_c
    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 327
    .line 328
    iget-object v4, v4, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 329
    .line 330
    if-eqz v4, :cond_d

    .line 331
    .line 332
    const-string v5, "last_snapshot_buffer_size"

    .line 333
    .line 334
    invoke-virtual {v4}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v4

    .line 338
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 339
    .line 340
    .line 341
    :cond_d
    sget-boolean v4, Lcom/samsung/android/rune/CoreRune;->FW_DEDICATED_MEMORY:Z

    .line 342
    .line 343
    if-eqz v4, :cond_f

    .line 344
    .line 345
    iget-object v4, p0, Lcom/android/server/wm/Task;->mHostProcessName:Ljava/lang/String;

    .line 346
    .line 347
    if-eqz v4, :cond_e

    .line 348
    .line 349
    const-string v5, "host_process_name"

    .line 350
    .line 351
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 352
    .line 353
    .line 354
    :cond_e
    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mDedicatedTask:Z

    .line 355
    .line 356
    if-eqz v4, :cond_f

    .line 357
    .line 358
    const-string v5, "dedicated_task"

    .line 359
    .line 360
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v4

    .line 364
    invoke-interface {v1, v3, v5, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 365
    .line 366
    .line 367
    :cond_f
    iget-object v4, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 368
    .line 369
    if-eqz v4, :cond_10

    .line 370
    .line 371
    const-string v4, "affinity_intent"

    .line 372
    .line 373
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 374
    .line 375
    .line 376
    iget-object v5, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 377
    .line 378
    invoke-virtual {v5, v1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 379
    .line 380
    .line 381
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 382
    .line 383
    .line 384
    :cond_10
    iget-object v4, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 385
    .line 386
    if-eqz v4, :cond_11

    .line 387
    .line 388
    const-string v4, "intent"

    .line 389
    .line 390
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 391
    .line 392
    .line 393
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 394
    .line 395
    invoke-virtual {v5, v1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 396
    .line 397
    .line 398
    invoke-interface {v1, v3, v4}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 399
    .line 400
    .line 401
    :cond_11
    sput-object v3, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 402
    .line 403
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    .line 404
    .line 405
    const/4 v5, 0x2

    .line 406
    invoke-direct {v4, v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>(I)V

    .line 407
    .line 408
    .line 409
    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 410
    .line 411
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    .line 412
    .line 413
    .line 414
    move-result-object v5

    .line 415
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    .line 416
    .line 417
    .line 418
    move-result-object v6

    .line 419
    invoke-static {v4, v5, v6, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    .line 420
    .line 421
    .line 422
    move-result-object v4

    .line 423
    invoke-virtual {p0, v4}, Lcom/android/server/wm/WindowContainer;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 424
    .line 425
    .line 426
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 427
    .line 428
    .line 429
    sget-object p0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 430
    .line 431
    if-nez p0, :cond_12

    .line 432
    .line 433
    invoke-interface {v1, v3, v2}, Lcom/android/modules/utils/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 434
    .line 435
    .line 436
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->endDocument()V

    .line 437
    .line 438
    .line 439
    invoke-interface {v1}, Lcom/android/modules/utils/TypedXmlSerializer;->flush()V

    .line 440
    .line 441
    .line 442
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    .line 443
    .line 444
    .line 445
    move-result-object p0

    .line 446
    return-object p0

    .line 447
    :cond_12
    throw p0
.end method


# virtual methods
.method public final process()V
    .locals 7

    .line 1
    const-string v0, "Failure creating tasks directory for user "

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 8
    .line 9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 10
    .line 11
    .line 12
    monitor-enter p0

    .line 13
    :try_start_0
    iget-boolean v2, v1, Lcom/android/server/wm/Task;->inRecents:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    :try_start_1
    invoke-static {v1}, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->saveToXml(Lcom/android/server/wm/Task;)[B

    .line 19
    .line 20
    .line 21
    move-result-object v2
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 22
    goto :goto_0

    .line 23
    :catchall_0
    move-exception v0

    .line 24
    goto/16 :goto_3

    .line 25
    .line 26
    :catch_0
    :cond_0
    move-object v2, v3

    .line 27
    :goto_0
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 28
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 29
    .line 30
    .line 31
    if-eqz v2, :cond_3

    .line 32
    .line 33
    :try_start_3
    iget p0, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 34
    .line 35
    new-instance v4, Ljava/io/File;

    .line 36
    .line 37
    invoke-static {p0}, Landroid/os/Environment;->getDataSystemCeDirectory(I)Ljava/io/File;

    .line 38
    .line 39
    .line 40
    move-result-object p0

    .line 41
    const-string/jumbo v5, "recent_tasks"

    .line 42
    .line 43
    .line 44
    invoke-direct {v4, p0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    if-nez p0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    .line 54
    .line 55
    .line 56
    move-result p0

    .line 57
    if-nez p0, :cond_1

    .line 58
    .line 59
    const-string p0, "TaskPersister"

    .line 60
    .line 61
    new-instance v2, Ljava/lang/StringBuilder;

    .line 62
    .line 63
    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    iget v0, v1, Lcom/android/server/wm/Task;->mUserId:I

    .line 67
    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    const-string v0, ": "

    .line 72
    .line 73
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    const-string v0, " Dropping persistence for task "

    .line 80
    .line 81
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    return-void

    .line 95
    :catch_1
    move-exception p0

    .line 96
    move-object v0, v3

    .line 97
    goto :goto_1

    .line 98
    :cond_1
    new-instance p0, Landroid/util/AtomicFile;

    .line 99
    .line 100
    new-instance v0, Ljava/io/File;

    .line 101
    .line 102
    new-instance v5, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    .line 108
    .line 109
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v1

    .line 113
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    .line 115
    .line 116
    const-string v1, "_task.xml"

    .line 117
    .line 118
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v1

    .line 125
    invoke-direct {v0, v4, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    invoke-direct {p0, v0}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 129
    .line 130
    .line 131
    :try_start_4
    invoke-virtual {p0}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 132
    .line 133
    .line 134
    move-result-object v3

    .line 135
    invoke-virtual {v3, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {p0, v3}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 139
    .line 140
    .line 141
    goto :goto_2

    .line 142
    :catch_2
    move-exception v0

    .line 143
    move-object v6, v0

    .line 144
    move-object v0, p0

    .line 145
    move-object p0, v6

    .line 146
    :goto_1
    if-eqz v3, :cond_2

    .line 147
    .line 148
    invoke-virtual {v0, v3}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V

    .line 149
    .line 150
    .line 151
    :cond_2
    const-string v1, "TaskPersister"

    .line 152
    .line 153
    new-instance v2, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    const-string v3, "Unable to open "

    .line 156
    .line 157
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string v0, " for persisting. "

    .line 164
    .line 165
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p0

    .line 175
    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    .line 177
    .line 178
    :cond_3
    :goto_2
    return-void

    .line 179
    :goto_3
    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 180
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 181
    .line 182
    .line 183
    throw v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "TaskWriteQueueItem{task="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p0, p0, Lcom/android/server/wm/TaskPersister$TaskWriteQueueItem;->mTask:Lcom/android/server/wm/Task;

    .line 9
    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string/jumbo p0, "}"

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method
