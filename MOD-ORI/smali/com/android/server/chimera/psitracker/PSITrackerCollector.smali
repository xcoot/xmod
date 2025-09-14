.class public final Lcom/android/server/chimera/psitracker/PSITrackerCollector;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# static fields
.field public static DEBUG:Z = true

.field public static availableMemSaveCount:I = 0x0

.field public static availableMemUpdateFlag:Z = false


# instance fields
.field public final mAvailableMemRecords:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    sput-boolean v0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 6
    .line 7
    new-instance v0, Ljava/util/ArrayList;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->mAvailableMemRecords:Ljava/util/List;

    .line 13
    .line 14
    return-void
.end method

.method public static saveAvailableMemRecord2db(Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;)V
    .locals 8

    .line 1
    const-string/jumbo v0, "update one PSIAvailableMemRecord successfully!, num="

    .line 2
    .line 3
    .line 4
    invoke-static {}, Lcom/android/server/chimera/psitracker/PSIDBManager;->getInstance()Lcom/android/server/chimera/psitracker/PSIDBManager;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->isDBClosed()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    if-eqz v2, :cond_0

    .line 13
    .line 14
    const-string p0, "PSITrackerCollector"

    .line 15
    .line 16
    const-string/jumbo v0, "save PSIEntryAppRecord failed! db is closed!"

    .line 17
    .line 18
    .line 19
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    sget-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    .line 24
    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v2, :cond_3

    .line 27
    .line 28
    sget v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    .line 29
    .line 30
    const/16 v4, 0x2f80

    .line 31
    .line 32
    rem-int/2addr v2, v4

    .line 33
    if-nez v2, :cond_3

    .line 34
    .line 35
    const/4 v2, 0x0

    .line 36
    :try_start_0
    const-string/jumbo v5, "select count(*) from psi_Available_Mem"

    .line 37
    .line 38
    .line 39
    invoke-virtual {v1, v5}, Lcom/android/server/chimera/psitracker/PSIDBManager;->rawQuery(Ljava/lang/String;)Landroid/database/Cursor;

    .line 40
    .line 41
    .line 42
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 43
    :try_start_1
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 44
    .line 45
    .line 46
    invoke-interface {v5, v2}, Landroid/database/Cursor;->getInt(I)I

    .line 47
    .line 48
    .line 49
    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 50
    :try_start_2
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 51
    .line 52
    .line 53
    goto :goto_2

    .line 54
    :catch_0
    move-exception v5

    .line 55
    goto :goto_1

    .line 56
    :catchall_0
    move-exception v6

    .line 57
    if-eqz v5, :cond_1

    .line 58
    .line 59
    :try_start_3
    invoke-interface {v5}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :catchall_1
    move-exception v5

    .line 64
    :try_start_4
    invoke-virtual {v6, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :catch_1
    move-exception v5

    .line 69
    move v6, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_1
    :goto_0
    throw v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    .line 72
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_2
    if-lt v6, v4, :cond_2

    .line 76
    .line 77
    move v2, v3

    .line 78
    :cond_2
    sput-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    .line 79
    .line 80
    :cond_3
    sget-boolean v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    .line 81
    .line 82
    if-nez v2, :cond_4

    .line 83
    .line 84
    sget v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    .line 85
    .line 86
    add-int/2addr v2, v3

    .line 87
    sput v2, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemSaveCount:I

    .line 88
    .line 89
    :cond_4
    sget-object v2, Lcom/android/server/chimera/psitracker/PSIDBManager;->LOCK_DATABASE:Ljava/lang/Object;

    .line 90
    .line 91
    monitor-enter v2

    .line 92
    :try_start_5
    sget-boolean v3, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->availableMemUpdateFlag:Z

    .line 93
    .line 94
    const/4 v4, 0x0

    .line 95
    if-nez v3, :cond_8

    .line 96
    .line 97
    iget-object v0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 98
    .line 99
    if-eqz v0, :cond_5

    .line 100
    .line 101
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 102
    .line 103
    .line 104
    :cond_5
    :try_start_6
    new-instance v0, Landroid/content/ContentValues;

    .line 105
    .line 106
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v3, "availMem"

    .line 110
    .line 111
    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 112
    .line 113
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 118
    .line 119
    .line 120
    const-string/jumbo v3, "cached"

    .line 121
    .line 122
    .line 123
    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    .line 124
    .line 125
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 126
    .line 127
    .line 128
    move-result-object v5

    .line 129
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 130
    .line 131
    .line 132
    const-string/jumbo v3, "running"

    .line 133
    .line 134
    .line 135
    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    .line 136
    .line 137
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 138
    .line 139
    .line 140
    move-result-object v5

    .line 141
    invoke-virtual {v0, v3, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 142
    .line 143
    .line 144
    const-string/jumbo v3, "checkTime"

    .line 145
    .line 146
    .line 147
    iget-wide v5, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 148
    .line 149
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 150
    .line 151
    .line 152
    move-result-object p0

    .line 153
    invoke-virtual {v0, v3, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 154
    .line 155
    .line 156
    const-string/jumbo p0, "psi_Available_Mem"

    .line 157
    .line 158
    .line 159
    iget-object v3, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 160
    .line 161
    invoke-virtual {v3, p0, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 162
    .line 163
    .line 164
    iget-object p0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 165
    .line 166
    if-eqz p0, :cond_6

    .line 167
    .line 168
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 169
    .line 170
    .line 171
    :cond_6
    sget-boolean p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 172
    .line 173
    if-eqz p0, :cond_7

    .line 174
    .line 175
    const-string p0, "PSITrackerCollector"

    .line 176
    .line 177
    const-string/jumbo v0, "save one PSIAvailableMemRecord successfully!"

    .line 178
    .line 179
    .line 180
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 181
    .line 182
    .line 183
    goto :goto_3

    .line 184
    :catchall_2
    move-exception p0

    .line 185
    goto :goto_5

    .line 186
    :catch_2
    move-exception p0

    .line 187
    goto :goto_4

    .line 188
    :cond_7
    :goto_3
    :try_start_7
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 189
    .line 190
    .line 191
    goto/16 :goto_8

    .line 192
    .line 193
    :catchall_3
    move-exception p0

    .line 194
    goto/16 :goto_a

    .line 195
    .line 196
    :goto_4
    :try_start_8
    const-string v0, "PSITrackerCollector"

    .line 197
    .line 198
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object p0

    .line 202
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 203
    .line 204
    .line 205
    goto :goto_3

    .line 206
    :goto_5
    :try_start_9
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    .line 207
    .line 208
    .line 209
    throw p0

    .line 210
    :cond_8
    iget-object v3, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 211
    .line 212
    if-eqz v3, :cond_9

    .line 213
    .line 214
    invoke-virtual {v3}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 215
    .line 216
    .line 217
    :cond_9
    :try_start_a
    new-instance v3, Landroid/content/ContentValues;

    .line 218
    .line 219
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 220
    .line 221
    .line 222
    const-string v5, "availMem"

    .line 223
    .line 224
    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->availMem:J

    .line 225
    .line 226
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 227
    .line 228
    .line 229
    move-result-object v6

    .line 230
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 231
    .line 232
    .line 233
    const-string/jumbo v5, "cached"

    .line 234
    .line 235
    .line 236
    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->cached:J

    .line 237
    .line 238
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 239
    .line 240
    .line 241
    move-result-object v6

    .line 242
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 243
    .line 244
    .line 245
    const-string/jumbo v5, "running"

    .line 246
    .line 247
    .line 248
    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->running:J

    .line 249
    .line 250
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 251
    .line 252
    .line 253
    move-result-object v6

    .line 254
    invoke-virtual {v3, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 255
    .line 256
    .line 257
    const-string/jumbo v5, "checkTime"

    .line 258
    .line 259
    .line 260
    iget-wide v6, p0, Lcom/android/server/chimera/psitracker/PSIAvailableMemRecord;->checkTime:J

    .line 261
    .line 262
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 263
    .line 264
    .line 265
    move-result-object p0

    .line 266
    invoke-virtual {v3, v5, p0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 267
    .line 268
    .line 269
    const-string/jumbo p0, "psi_Available_Mem"

    .line 270
    .line 271
    .line 272
    const-string/jumbo v5, "checkTime=(select min(checkTime) from psi_Available_Mem)"

    .line 273
    .line 274
    .line 275
    iget-object v6, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 276
    .line 277
    invoke-virtual {v6, p0, v3, v5, v4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    .line 278
    .line 279
    .line 280
    move-result p0

    .line 281
    int-to-long v3, p0

    .line 282
    iget-object p0, v1, Lcom/android/server/chimera/psitracker/PSIDBManager;->mDB:Landroid/database/sqlite/SQLiteDatabase;

    .line 283
    .line 284
    if-eqz p0, :cond_a

    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V

    .line 287
    .line 288
    .line 289
    :cond_a
    sget-boolean p0, Lcom/android/server/chimera/psitracker/PSITrackerCollector;->DEBUG:Z

    .line 290
    .line 291
    if-eqz p0, :cond_b

    .line 292
    .line 293
    const-string p0, "PSITrackerCollector"

    .line 294
    .line 295
    new-instance v5, Ljava/lang/StringBuilder;

    .line 296
    .line 297
    invoke-direct {v5, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 301
    .line 302
    .line 303
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    .line 308
    .line 309
    .line 310
    goto :goto_6

    .line 311
    :catchall_4
    move-exception p0

    .line 312
    goto :goto_9

    .line 313
    :catch_3
    move-exception p0

    .line 314
    goto :goto_7

    .line 315
    :cond_b
    :goto_6
    :try_start_b
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 316
    .line 317
    .line 318
    goto :goto_8

    .line 319
    :goto_7
    :try_start_c
    const-string v0, "PSITrackerCollector"

    .line 320
    .line 321
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object p0

    .line 325
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    .line 326
    .line 327
    .line 328
    goto :goto_6

    .line 329
    :goto_8
    :try_start_d
    monitor-exit v2

    .line 330
    return-void

    .line 331
    :goto_9
    invoke-virtual {v1}, Lcom/android/server/chimera/psitracker/PSIDBManager;->endTransaction()V

    .line 332
    .line 333
    .line 334
    throw p0

    .line 335
    :goto_a
    monitor-exit v2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 336
    throw p0
.end method
