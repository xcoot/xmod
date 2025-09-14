.class public final synthetic Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Landroid/provider/DeviceConfig$Properties;


# direct methods
.method public synthetic constructor <init>(Landroid/provider/DeviceConfig$Properties;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$Properties;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties$$ExternalSyntheticLambda0;->f$0:Landroid/provider/DeviceConfig$Properties;

    .line 3
    .line 4
    check-cast p1, Ljava/lang/String;

    .line 5
    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    const/4 v1, -0x1

    .line 10
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    sparse-switch v2, :sswitch_data_0

    .line 15
    .line 16
    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :sswitch_0
    const-string/jumbo v2, "session_expiry_timeout_ms"

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v2

    .line 26
    if-nez v2, :cond_0

    .line 27
    .line 28
    goto/16 :goto_0

    .line 29
    .line 30
    :cond_0
    const/16 v1, 0xc

    .line 31
    .line 32
    goto/16 :goto_0

    .line 33
    .line 34
    :sswitch_1
    const-string/jumbo v2, "idle_job_period_ms"

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    if-nez v2, :cond_1

    .line 42
    .line 43
    goto/16 :goto_0

    .line 44
    .line 45
    :cond_1
    const/16 v1, 0xb

    .line 46
    .line 47
    goto/16 :goto_0

    .line 48
    .line 49
    :sswitch_2
    const-string/jumbo v2, "delete_on_last_lease_delay_ms"

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    if-nez v2, :cond_2

    .line 57
    .line 58
    goto/16 :goto_0

    .line 59
    .line 60
    :cond_2
    const/16 v1, 0xa

    .line 61
    .line 62
    goto/16 :goto_0

    .line 63
    .line 64
    :sswitch_3
    const-string/jumbo v2, "total_bytes_per_app_limit_fraction"

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v2

    .line 71
    if-nez v2, :cond_3

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_3
    const/16 v1, 0x9

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :sswitch_4
    const-string/jumbo v2, "max_committed_blobs"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    if-nez v2, :cond_4

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_4
    const/16 v1, 0x8

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :sswitch_5
    const-string/jumbo v2, "lease_desc_char_limit"

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-nez v2, :cond_5

    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_5
    const/4 v1, 0x7

    .line 105
    goto :goto_0

    .line 106
    :sswitch_6
    const-string/jumbo v2, "total_bytes_per_app_limit_floor"

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 110
    .line 111
    .line 112
    move-result v2

    .line 113
    if-nez v2, :cond_6

    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_6
    const/4 v1, 0x6

    .line 117
    goto :goto_0

    .line 118
    :sswitch_7
    const-string/jumbo v2, "commit_cool_off_duration_ms"

    .line 119
    .line 120
    .line 121
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    if-nez v2, :cond_7

    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_7
    const/4 v1, 0x5

    .line 129
    goto :goto_0

    .line 130
    :sswitch_8
    const-string/jumbo v2, "max_permitted_pks"

    .line 131
    .line 132
    .line 133
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-nez v2, :cond_8

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_8
    const/4 v1, 0x4

    .line 141
    goto :goto_0

    .line 142
    :sswitch_9
    const-string/jumbo v2, "max_leased_blobs"

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-nez v2, :cond_9

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_9
    const/4 v1, 0x3

    .line 153
    goto :goto_0

    .line 154
    :sswitch_a
    const-string/jumbo v2, "lease_acquisition_wait_time_ms"

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v2

    .line 161
    if-nez v2, :cond_a

    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_a
    const/4 v1, 0x2

    .line 165
    goto :goto_0

    .line 166
    :sswitch_b
    const-string/jumbo v2, "use_revocable_fd_for_reads"

    .line 167
    .line 168
    .line 169
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    .line 171
    .line 172
    move-result v2

    .line 173
    if-nez v2, :cond_b

    .line 174
    .line 175
    goto :goto_0

    .line 176
    :cond_b
    const/4 v1, 0x1

    .line 177
    goto :goto_0

    .line 178
    :sswitch_c
    const-string/jumbo v2, "max_active_sessions"

    .line 179
    .line 180
    .line 181
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-nez v2, :cond_c

    .line 186
    .line 187
    goto :goto_0

    .line 188
    :cond_c
    move v1, v0

    .line 189
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 190
    .line 191
    .line 192
    const-string p0, "Unknown key in device config properties: "

    .line 193
    .line 194
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object p0

    .line 198
    const-string p1, "BlobStore"

    .line 199
    .line 200
    invoke-static {p1, p0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    .line 202
    .line 203
    goto/16 :goto_1

    .line 204
    .line 205
    :pswitch_0
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_SESSION_EXPIRY_TIMEOUT_MS:J

    .line 206
    .line 207
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 208
    .line 209
    .line 210
    move-result-wide p0

    .line 211
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->SESSION_EXPIRY_TIMEOUT_MS:J

    .line 212
    .line 213
    goto/16 :goto_1

    .line 214
    .line 215
    :pswitch_1
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_IDLE_JOB_PERIOD_MS:J

    .line 216
    .line 217
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 218
    .line 219
    .line 220
    move-result-wide p0

    .line 221
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->IDLE_JOB_PERIOD_MS:J

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :pswitch_2
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 225
    .line 226
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 227
    .line 228
    .line 229
    move-result-wide p0

    .line 230
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DELETE_ON_LAST_LEASE_DELAY_MS:J

    .line 231
    .line 232
    goto :goto_1

    .line 233
    :pswitch_3
    const v0, 0x3c23d70a    # 0.01f

    .line 234
    .line 235
    .line 236
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getFloat(Ljava/lang/String;F)F

    .line 237
    .line 238
    .line 239
    move-result p0

    .line 240
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FRACTION:F

    .line 241
    .line 242
    goto :goto_1

    .line 243
    :pswitch_4
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_COMMITTED_BLOBS:I

    .line 244
    .line 245
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 246
    .line 247
    .line 248
    move-result p0

    .line 249
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_COMMITTED_BLOBS:I

    .line 250
    .line 251
    goto :goto_1

    .line 252
    :pswitch_5
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_DESC_CHAR_LIMIT:I

    .line 253
    .line 254
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 255
    .line 256
    .line 257
    move-result p0

    .line 258
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_DESC_CHAR_LIMIT:I

    .line 259
    .line 260
    goto :goto_1

    .line 261
    :pswitch_6
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 262
    .line 263
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 264
    .line 265
    .line 266
    move-result-wide p0

    .line 267
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->TOTAL_BYTES_PER_APP_LIMIT_FLOOR:J

    .line 268
    .line 269
    goto :goto_1

    .line 270
    :pswitch_7
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_COMMIT_COOL_OFF_DURATION_MS:J

    .line 271
    .line 272
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 273
    .line 274
    .line 275
    move-result-wide p0

    .line 276
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->COMMIT_COOL_OFF_DURATION_MS:J

    .line 277
    .line 278
    goto :goto_1

    .line 279
    :pswitch_8
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 280
    .line 281
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 282
    .line 283
    .line 284
    move-result p0

    .line 285
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_BLOB_ACCESS_PERMITTED_PACKAGES:I

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :pswitch_9
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_LEASED_BLOBS:I

    .line 289
    .line 290
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 291
    .line 292
    .line 293
    move-result p0

    .line 294
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_LEASED_BLOBS:I

    .line 295
    .line 296
    goto :goto_1

    .line 297
    :pswitch_a
    sget-wide v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 298
    .line 299
    invoke-virtual {p0, p1, v0, v1}, Landroid/provider/DeviceConfig$Properties;->getLong(Ljava/lang/String;J)J

    .line 300
    .line 301
    .line 302
    move-result-wide p0

    .line 303
    sput-wide p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->LEASE_ACQUISITION_WAIT_DURATION_MS:J

    .line 304
    .line 305
    goto :goto_1

    .line 306
    :pswitch_b
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getBoolean(Ljava/lang/String;Z)Z

    .line 307
    .line 308
    .line 309
    move-result p0

    .line 310
    sput-boolean p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->USE_REVOCABLE_FD_FOR_READS:Z

    .line 311
    .line 312
    goto :goto_1

    .line 313
    :pswitch_c
    sget v0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->DEFAULT_MAX_ACTIVE_SESSIONS:I

    .line 314
    .line 315
    invoke-virtual {p0, p1, v0}, Landroid/provider/DeviceConfig$Properties;->getInt(Ljava/lang/String;I)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    sput p0, Lcom/android/server/blob/BlobStoreConfig$DeviceConfigProperties;->MAX_ACTIVE_SESSIONS:I

    .line 320
    .line 321
    :goto_1
    return-void

    .line 322
    nop

    .line 323
    :sswitch_data_0
    .sparse-switch
        -0x72bf4325 -> :sswitch_c
        -0x52e8bbf4 -> :sswitch_b
        -0x186c76bb -> :sswitch_a
        -0x10f353c4 -> :sswitch_9
        0xba4f96 -> :sswitch_8
        0x1028a673 -> :sswitch_7
        0x39770739 -> :sswitch_6
        0x538ddc1b -> :sswitch_5
        0x54964518 -> :sswitch_4
        0x674c73b5 -> :sswitch_3
        0x6d98c9a4 -> :sswitch_2
        0x717335b7 -> :sswitch_1
        0x78947a67 -> :sswitch_0
    .end sparse-switch

    .line 324
    .line 325
    .line 326
    .line 327
    .line 328
    .line 329
    .line 330
    .line 331
    .line 332
    .line 333
    .line 334
    .line 335
    .line 336
    .line 337
    .line 338
    .line 339
    .line 340
    .line 341
    .line 342
    .line 343
    .line 344
    .line 345
    .line 346
    .line 347
    .line 348
    .line 349
    .line 350
    .line 351
    .line 352
    .line 353
    .line 354
    .line 355
    .line 356
    .line 357
    .line 358
    .line 359
    .line 360
    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    .line 366
    .line 367
    .line 368
    .line 369
    .line 370
    .line 371
    .line 372
    .line 373
    .line 374
    .line 375
    .line 376
    .line 377
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
