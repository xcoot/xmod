.class public final Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;
.super Landroid/database/ContentObserver;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public mLastMmsTimestamp:J

.field public mLastSmsTimestamp:J

.field public final mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

.field public final mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

.field public final synthetic this$0:Lcom/android/server/people/data/DataManager;


# direct methods
.method public constructor <init>(Lcom/android/server/people/data/DataManager;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    .line 5
    .line 6
    iget-object p2, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 7
    .line 8
    iget-object v0, p1, Lcom/android/server/people/data/DataManager;->mInjector:Lcom/android/server/people/data/DataManager$Injector;

    .line 9
    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    new-instance v1, Lcom/android/server/people/data/MmsQueryHelper;

    .line 14
    .line 15
    invoke-direct {v1, p2, p0}, Lcom/android/server/people/data/MmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    .line 16
    .line 17
    .line 18
    iput-object v1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    .line 19
    .line 20
    iget-object p1, p1, Lcom/android/server/people/data/DataManager;->mContext:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 23
    .line 24
    .line 25
    new-instance p2, Lcom/android/server/people/data/SmsQueryHelper;

    .line 26
    .line 27
    invoke-direct {p2, p1, p0}, Lcom/android/server/people/data/SmsQueryHelper;-><init>(Landroid/content/Context;Ljava/util/function/BiConsumer;)V

    .line 28
    .line 29
    .line 30
    iput-object p2, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    .line 31
    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 33
    .line 34
    .line 35
    move-result-wide p1

    .line 36
    const-wide/32 v0, 0x493e0

    .line 37
    .line 38
    .line 39
    sub-long/2addr p1, v0

    .line 40
    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    .line 41
    .line 42
    iput-wide p1, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    .line 43
    .line 44
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    .line 3
    check-cast p2, Lcom/android/server/people/data/Event;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->this$0:Lcom/android/server/people/data/DataManager;

    .line 6
    .line 7
    new-instance v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p1, p2, v1}, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/android/server/people/data/Event;I)V

    .line 11
    .line 12
    .line 13
    invoke-static {p0, v0}, Lcom/android/server/people/data/DataManager;->-$$Nest$mforAllUnlockedUsers(Lcom/android/server/people/data/DataManager;Ljava/util/function/Consumer;)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public final onChange(Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    .line 4
    .line 5
    iget-wide v2, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    const-string v4, "_id"

    .line 11
    .line 12
    const-string v5, "date"

    .line 13
    .line 14
    const-string/jumbo v6, "msg_box"

    .line 15
    .line 16
    .line 17
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v9

    .line 21
    const-string v10, "date > ?"

    .line 22
    .line 23
    const-wide/16 v13, 0x3e8

    .line 24
    .line 25
    div-long/2addr v2, v13

    .line 26
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    filled-new-array {v2}, [Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v11

    .line 34
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 35
    .line 36
    .line 37
    :try_start_0
    iget-object v2, v1, Lcom/android/server/people/data/MmsQueryHelper;->mContext:Landroid/content/Context;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    sget-object v8, Landroid/provider/Telephony$Mms;->CONTENT_URI:Landroid/net/Uri;

    .line 44
    .line 45
    const/4 v12, 0x0

    .line 46
    invoke-virtual/range {v7 .. v12}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    .line 48
    .line 49
    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    const-wide/16 v7, 0x0

    .line 51
    .line 52
    if-nez v2, :cond_1

    .line 53
    .line 54
    :try_start_1
    const-string v1, "MmsQueryHelper"

    .line 55
    .line 56
    const-string v6, "Cursor is null when querying MMS table."

    .line 57
    .line 58
    invoke-static {v1, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 59
    .line 60
    .line 61
    if-eqz v2, :cond_0

    .line 62
    .line 63
    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :catchall_0
    move-exception v0

    .line 68
    goto/16 :goto_c

    .line 69
    .line 70
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 71
    .line 72
    .line 73
    const/4 v10, 0x0

    .line 74
    goto :goto_3

    .line 75
    :catchall_1
    move-exception v0

    .line 76
    move-object v1, v0

    .line 77
    goto/16 :goto_a

    .line 78
    .line 79
    :cond_1
    const/4 v10, 0x0

    .line 80
    :goto_1
    :try_start_3
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    if-eqz v11, :cond_3

    .line 85
    .line 86
    invoke-interface {v2, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 87
    .line 88
    .line 89
    move-result v11

    .line 90
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v11

    .line 94
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    move-result v12

    .line 98
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getLong(I)J

    .line 99
    .line 100
    .line 101
    move-result-wide v15

    .line 102
    move v12, v10

    .line 103
    mul-long v9, v15, v13

    .line 104
    .line 105
    invoke-interface {v2, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 106
    .line 107
    .line 108
    move-result v15

    .line 109
    invoke-interface {v2, v15}, Landroid/database/Cursor;->getInt(I)I

    .line 110
    .line 111
    .line 112
    move-result v15

    .line 113
    iget-wide v13, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 114
    .line 115
    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 116
    .line 117
    .line 118
    move-result-wide v13

    .line 119
    iput-wide v13, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 120
    .line 121
    invoke-virtual {v1, v15, v11}, Lcom/android/server/people/data/MmsQueryHelper;->getMmsAddress(ILjava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    if-eqz v11, :cond_2

    .line 126
    .line 127
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 128
    .line 129
    .line 130
    move-result v13

    .line 131
    if-nez v13, :cond_2

    .line 132
    .line 133
    cmp-long v13, v9, v7

    .line 134
    .line 135
    if-lez v13, :cond_2

    .line 136
    .line 137
    sget-object v13, Lcom/android/server/people/data/MmsQueryHelper;->MSG_BOX_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 138
    .line 139
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 140
    .line 141
    .line 142
    move-result v14

    .line 143
    if-ltz v14, :cond_2

    .line 144
    .line 145
    invoke-virtual {v13, v15}, Landroid/util/SparseIntArray;->get(I)I

    .line 146
    .line 147
    .line 148
    move-result v12

    .line 149
    iget-object v13, v1, Lcom/android/server/people/data/MmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 150
    .line 151
    new-instance v14, Lcom/android/server/people/data/Event;

    .line 152
    .line 153
    invoke-direct {v14, v9, v10, v12}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 154
    .line 155
    .line 156
    invoke-interface {v13, v11, v14}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 157
    .line 158
    .line 159
    const/4 v10, 0x1

    .line 160
    goto :goto_2

    .line 161
    :cond_2
    move v10, v12

    .line 162
    :goto_2
    const-wide/16 v13, 0x3e8

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_3
    move v12, v10

    .line 166
    :try_start_4
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 167
    .line 168
    .line 169
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 170
    .line 171
    .line 172
    move v10, v12

    .line 173
    :goto_3
    if-eqz v10, :cond_4

    .line 174
    .line 175
    iget-object v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mMmsQueryHelper:Lcom/android/server/people/data/MmsQueryHelper;

    .line 176
    .line 177
    iget-wide v1, v1, Lcom/android/server/people/data/MmsQueryHelper;->mLastMessageTimestamp:J

    .line 178
    .line 179
    iput-wide v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastMmsTimestamp:J

    .line 180
    .line 181
    :cond_4
    iget-object v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    .line 182
    .line 183
    iget-wide v9, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    .line 184
    .line 185
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 186
    .line 187
    .line 188
    const-string/jumbo v2, "type"

    .line 189
    .line 190
    .line 191
    const-string v6, "address"

    .line 192
    .line 193
    filled-new-array {v4, v5, v2, v6}, [Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v13

    .line 197
    const-string v14, "date > ?"

    .line 198
    .line 199
    invoke-static {v9, v10}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v9

    .line 203
    filled-new-array {v9}, [Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v15

    .line 207
    invoke-static {}, Landroid/os/Binder;->allowBlockingForCurrentThread()V

    .line 208
    .line 209
    .line 210
    :try_start_5
    iget-object v9, v1, Lcom/android/server/people/data/SmsQueryHelper;->mContext:Landroid/content/Context;

    .line 211
    .line 212
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 213
    .line 214
    .line 215
    move-result-object v11

    .line 216
    sget-object v12, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    .line 217
    .line 218
    const/16 v16, 0x0

    .line 219
    .line 220
    invoke-virtual/range {v11 .. v16}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 221
    .line 222
    .line 223
    move-result-object v9
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 224
    if-nez v9, :cond_6

    .line 225
    .line 226
    :try_start_6
    const-string v1, "SmsQueryHelper"

    .line 227
    .line 228
    const-string v2, "Cursor is null when querying SMS table."

    .line 229
    .line 230
    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 231
    .line 232
    .line 233
    if-eqz v9, :cond_5

    .line 234
    .line 235
    :try_start_7
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catchall_2
    move-exception v0

    .line 240
    goto/16 :goto_9

    .line 241
    .line 242
    :cond_5
    :goto_4
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 243
    .line 244
    .line 245
    const/4 v9, 0x0

    .line 246
    goto :goto_6

    .line 247
    :catchall_3
    move-exception v0

    .line 248
    move-object v1, v0

    .line 249
    goto :goto_7

    .line 250
    :cond_6
    const/4 v10, 0x0

    .line 251
    :goto_5
    :try_start_8
    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    .line 252
    .line 253
    .line 254
    move-result v11

    .line 255
    if-eqz v11, :cond_8

    .line 256
    .line 257
    invoke-interface {v9, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 258
    .line 259
    .line 260
    move-result v11

    .line 261
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 262
    .line 263
    .line 264
    invoke-interface {v9, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 265
    .line 266
    .line 267
    move-result v11

    .line 268
    invoke-interface {v9, v11}, Landroid/database/Cursor;->getLong(I)J

    .line 269
    .line 270
    .line 271
    move-result-wide v11

    .line 272
    invoke-interface {v9, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 273
    .line 274
    .line 275
    move-result v13

    .line 276
    invoke-interface {v9, v13}, Landroid/database/Cursor;->getInt(I)I

    .line 277
    .line 278
    .line 279
    move-result v13

    .line 280
    invoke-interface {v9, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 281
    .line 282
    .line 283
    move-result v14

    .line 284
    invoke-interface {v9, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v14

    .line 288
    iget-object v15, v1, Lcom/android/server/people/data/SmsQueryHelper;->mCurrentCountryIso:Ljava/lang/String;

    .line 289
    .line 290
    invoke-static {v14, v15}, Landroid/telephony/PhoneNumberUtils;->formatNumberToE164(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v14

    .line 294
    move-object/from16 p1, v4

    .line 295
    .line 296
    iget-wide v3, v1, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    .line 297
    .line 298
    invoke-static {v3, v4, v11, v12}, Ljava/lang/Math;->max(JJ)J

    .line 299
    .line 300
    .line 301
    move-result-wide v3

    .line 302
    iput-wide v3, v1, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    .line 303
    .line 304
    if-eqz v14, :cond_7

    .line 305
    .line 306
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result v3

    .line 310
    if-nez v3, :cond_7

    .line 311
    .line 312
    cmp-long v3, v11, v7

    .line 313
    .line 314
    if-lez v3, :cond_7

    .line 315
    .line 316
    sget-object v3, Lcom/android/server/people/data/SmsQueryHelper;->SMS_TYPE_TO_EVENT_TYPE:Landroid/util/SparseIntArray;

    .line 317
    .line 318
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    .line 319
    .line 320
    .line 321
    move-result v4

    .line 322
    if-ltz v4, :cond_7

    .line 323
    .line 324
    invoke-virtual {v3, v13}, Landroid/util/SparseIntArray;->get(I)I

    .line 325
    .line 326
    .line 327
    move-result v3

    .line 328
    iget-object v4, v1, Lcom/android/server/people/data/SmsQueryHelper;->mEventConsumer:Ljava/util/function/BiConsumer;

    .line 329
    .line 330
    new-instance v10, Lcom/android/server/people/data/Event;

    .line 331
    .line 332
    invoke-direct {v10, v11, v12, v3}, Lcom/android/server/people/data/Event;-><init>(JI)V

    .line 333
    .line 334
    .line 335
    invoke-interface {v4, v14, v10}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 336
    .line 337
    .line 338
    const/4 v10, 0x1

    .line 339
    :cond_7
    move-object/from16 v4, p1

    .line 340
    .line 341
    goto :goto_5

    .line 342
    :cond_8
    :try_start_9
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 343
    .line 344
    .line 345
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 346
    .line 347
    .line 348
    move v9, v10

    .line 349
    :goto_6
    if-eqz v9, :cond_9

    .line 350
    .line 351
    iget-object v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mSmsQueryHelper:Lcom/android/server/people/data/SmsQueryHelper;

    .line 352
    .line 353
    iget-wide v1, v1, Lcom/android/server/people/data/SmsQueryHelper;->mLastMessageTimestamp:J

    .line 354
    .line 355
    iput-wide v1, v0, Lcom/android/server/people/data/DataManager$MmsSmsContentObserver;->mLastSmsTimestamp:J

    .line 356
    .line 357
    :cond_9
    return-void

    .line 358
    :goto_7
    if-eqz v9, :cond_a

    .line 359
    .line 360
    :try_start_a
    invoke-interface {v9}, Landroid/database/Cursor;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 361
    .line 362
    .line 363
    goto :goto_8

    .line 364
    :catchall_4
    move-exception v0

    .line 365
    move-object v2, v0

    .line 366
    :try_start_b
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 367
    .line 368
    .line 369
    :cond_a
    :goto_8
    throw v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 370
    :goto_9
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 371
    .line 372
    .line 373
    throw v0

    .line 374
    :goto_a
    if-eqz v2, :cond_b

    .line 375
    .line 376
    :try_start_c
    invoke-interface {v2}, Landroid/database/Cursor;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    .line 377
    .line 378
    .line 379
    goto :goto_b

    .line 380
    :catchall_5
    move-exception v0

    .line 381
    move-object v2, v0

    .line 382
    :try_start_d
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 383
    .line 384
    .line 385
    :cond_b
    :goto_b
    throw v1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 386
    :goto_c
    invoke-static {}, Landroid/os/Binder;->defaultBlockingForCurrentThread()V

    .line 387
    .line 388
    .line 389
    throw v0
.end method
