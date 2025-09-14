.class public final Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 5
    .line 6
    return-void
.end method

.method public static writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;

    .line 16
    .line 17
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 18
    .line 19
    .line 20
    move-result-wide v1

    .line 21
    iget v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneProvider$ProviderState;->stateEnum:I

    .line 22
    .line 23
    packed-switch v0, :pswitch_data_0

    .line 24
    .line 25
    .line 26
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 27
    .line 28
    const-string p1, "Unknown stateEnum="

    .line 29
    .line 30
    invoke-static {v0, p1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw p0

    .line 38
    :pswitch_0
    const/4 v0, 0x6

    .line 39
    goto :goto_1

    .line 40
    :pswitch_1
    const/4 v0, 0x5

    .line 41
    goto :goto_1

    .line 42
    :pswitch_2
    const/4 v0, 0x4

    .line 43
    goto :goto_1

    .line 44
    :pswitch_3
    const/4 v0, 0x3

    .line 45
    goto :goto_1

    .line 46
    :pswitch_4
    const/4 v0, 0x2

    .line 47
    goto :goto_1

    .line 48
    :pswitch_5
    const/4 v0, 0x1

    .line 49
    goto :goto_1

    .line 50
    :pswitch_6
    const/4 v0, 0x0

    .line 51
    :goto_1
    const-string/jumbo v3, "state"

    .line 52
    .line 53
    .line 54
    const-wide v4, 0x10e00000001L

    .line 55
    .line 56
    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v3, v4, v5, v0}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0, v1, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    return-void

    .line 67
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 15

    .line 1
    move-object v1, p0

    .line 2
    move-object/from16 v0, p1

    .line 3
    .line 4
    const/4 v3, 0x3

    .line 5
    const/4 v6, 0x1

    .line 6
    const/4 v7, 0x2

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const-string/jumbo v8, "manage time and time zone detection"

    .line 15
    .line 16
    .line 17
    const-string v9, "android.permission.MANAGE_TIME_AND_ZONE_DETECTION"

    .line 18
    .line 19
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v10

    .line 23
    sparse-switch v10, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    :goto_0
    const/4 v10, -0x1

    .line 27
    goto :goto_1

    .line 28
    :sswitch_0
    const-string v10, "dump_state"

    .line 29
    .line 30
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v10

    .line 34
    if-nez v10, :cond_1

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const/4 v10, 0x4

    .line 38
    goto :goto_1

    .line 39
    :sswitch_1
    const-string v10, "clear_recorded_provider_states"

    .line 40
    .line 41
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    .line 43
    .line 44
    move-result v10

    .line 45
    if-nez v10, :cond_2

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    move v10, v3

    .line 49
    goto :goto_1

    .line 50
    :sswitch_2
    const-string/jumbo v10, "start"

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v10

    .line 57
    if-nez v10, :cond_3

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_3
    move v10, v7

    .line 61
    goto :goto_1

    .line 62
    :sswitch_3
    const-string/jumbo v10, "stop"

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-nez v10, :cond_4

    .line 70
    .line 71
    goto :goto_0

    .line 72
    :cond_4
    move v10, v6

    .line 73
    goto :goto_1

    .line 74
    :sswitch_4
    const-string/jumbo v10, "start_with_test_providers"

    .line 75
    .line 76
    .line 77
    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    .line 79
    .line 80
    move-result v10

    .line 81
    if-nez v10, :cond_5

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_5
    const/4 v10, 0x0

    .line 85
    :goto_1
    packed-switch v10, :pswitch_data_0

    .line 86
    .line 87
    .line 88
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    return v0

    .line 93
    :pswitch_0
    :try_start_0
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 94
    .line 95
    iget-object v10, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 96
    .line 97
    invoke-virtual {v10, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1

    .line 98
    .line 99
    .line 100
    :try_start_1
    iget-object v8, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 101
    .line 102
    new-instance v9, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;

    .line 103
    .line 104
    invoke-direct {v9, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;)V

    .line 105
    .line 106
    .line 107
    sget-wide v10, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 108
    .line 109
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/util/concurrent/Callable;J)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    check-cast v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 114
    .line 115
    if-nez v0, :cond_6

    .line 116
    .line 117
    :goto_2
    const/4 v5, 0x0

    .line 118
    goto/16 :goto_c

    .line 119
    .line 120
    :cond_6
    const-string v8, "--proto"

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 127
    .line 128
    .line 129
    move-result v8

    .line 130
    if-eqz v8, :cond_7

    .line 131
    .line 132
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutFileDescriptor()Ljava/io/FileDescriptor;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 137
    .line 138
    new-instance v9, Landroid/util/proto/ProtoOutputStream;

    .line 139
    .line 140
    invoke-direct {v9, v1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 141
    .line 142
    .line 143
    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/proto/ProtoOutputStream;)V

    .line 144
    .line 145
    .line 146
    goto :goto_3

    .line 147
    :cond_7
    new-instance v8, Lcom/android/internal/util/dump/DualDumpOutputStream;

    .line 148
    .line 149
    new-instance v9, Landroid/util/IndentingPrintWriter;

    .line 150
    .line 151
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v10, "  "

    .line 156
    .line 157
    invoke-direct {v9, v1, v10}, Landroid/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 158
    .line 159
    .line 160
    invoke-direct {v8, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;-><init>(Landroid/util/IndentingPrintWriter;)V

    .line 161
    .line 162
    .line 163
    :goto_3
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mLastEvent:Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 164
    .line 165
    if-eqz v1, :cond_10

    .line 166
    .line 167
    const-string v9, "last_event"

    .line 168
    .line 169
    const-wide v10, 0x10b00000001L

    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    invoke-virtual {v8, v9, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 175
    .line 176
    .line 177
    move-result-wide v12

    .line 178
    iget-object v9, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mAlgorithmStatus:Landroid/app/time/LocationTimeZoneAlgorithmStatus;

    .line 179
    .line 180
    const-string v14, "algorithm_status"

    .line 181
    .line 182
    const-wide v4, 0x10b00000003L

    .line 183
    .line 184
    .line 185
    .line 186
    .line 187
    invoke-virtual {v8, v14, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 188
    .line 189
    .line 190
    move-result-wide v4

    .line 191
    invoke-virtual {v9}, Landroid/app/time/LocationTimeZoneAlgorithmStatus;->getStatus()I

    .line 192
    .line 193
    .line 194
    move-result v9

    .line 195
    if-eqz v9, :cond_b

    .line 196
    .line 197
    if-eq v9, v6, :cond_a

    .line 198
    .line 199
    if-eq v9, v7, :cond_9

    .line 200
    .line 201
    if-ne v9, v3, :cond_8

    .line 202
    .line 203
    move v9, v3

    .line 204
    goto :goto_4

    .line 205
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 206
    .line 207
    const-string v1, "Unknown statusEnum="

    .line 208
    .line 209
    invoke-static {v9, v1}, Landroid/frameworks/vibrator/VibrationParam$1$$ExternalSyntheticOutline0;->m(ILjava/lang/String;)Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    throw v0

    .line 217
    :cond_9
    move v9, v7

    .line 218
    goto :goto_4

    .line 219
    :cond_a
    move v9, v6

    .line 220
    goto :goto_4

    .line 221
    :cond_b
    const/4 v9, 0x0

    .line 222
    :goto_4
    const-string/jumbo v14, "status"

    .line 223
    .line 224
    .line 225
    const-wide v2, 0x10e00000001L

    .line 226
    .line 227
    .line 228
    .line 229
    .line 230
    invoke-virtual {v8, v14, v2, v3, v9}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 231
    .line 232
    .line 233
    invoke-virtual {v8, v4, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 234
    .line 235
    .line 236
    iget-object v2, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mSuggestion:Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;

    .line 237
    .line 238
    if-eqz v2, :cond_d

    .line 239
    .line 240
    const-string/jumbo v3, "suggestion"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v8, v3, v10, v11}, Lcom/android/internal/util/dump/DualDumpOutputStream;->start(Ljava/lang/String;J)J

    .line 244
    .line 245
    .line 246
    move-result-wide v3

    .line 247
    iget-object v2, v2, Lcom/android/server/timezonedetector/GeolocationTimeZoneSuggestion;->mZoneIds:Ljava/util/List;

    .line 248
    .line 249
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 250
    .line 251
    .line 252
    move-result-object v2

    .line 253
    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 254
    .line 255
    .line 256
    move-result v5

    .line 257
    if-eqz v5, :cond_c

    .line 258
    .line 259
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v5

    .line 263
    check-cast v5, Ljava/lang/String;

    .line 264
    .line 265
    const-string/jumbo v9, "zone_ids"

    .line 266
    .line 267
    .line 268
    const-wide v10, 0x20900000001L

    .line 269
    .line 270
    .line 271
    .line 272
    .line 273
    invoke-virtual {v8, v9, v10, v11, v5}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 274
    .line 275
    .line 276
    goto :goto_5

    .line 277
    :cond_c
    invoke-virtual {v8, v3, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 278
    .line 279
    .line 280
    :cond_d
    iget-object v1, v1, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;->mDebugInfo:Ljava/util/ArrayList;

    .line 281
    .line 282
    if-nez v1, :cond_e

    .line 283
    .line 284
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 285
    .line 286
    .line 287
    move-result-object v1

    .line 288
    goto :goto_6

    .line 289
    :cond_e
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 290
    .line 291
    .line 292
    move-result-object v1

    .line 293
    :goto_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 294
    .line 295
    .line 296
    move-result-object v1

    .line 297
    :goto_7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    .line 299
    .line 300
    move-result v2

    .line 301
    if-eqz v2, :cond_f

    .line 302
    .line 303
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    check-cast v2, Ljava/lang/String;

    .line 308
    .line 309
    const-string v3, "debug_info"

    .line 310
    .line 311
    const-wide v4, 0x20900000002L

    .line 312
    .line 313
    .line 314
    .line 315
    .line 316
    invoke-virtual {v8, v3, v4, v5, v2}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JLjava/lang/String;)V

    .line 317
    .line 318
    .line 319
    goto :goto_7

    .line 320
    :cond_f
    invoke-virtual {v8, v12, v13}, Lcom/android/internal/util/dump/DualDumpOutputStream;->end(J)V

    .line 321
    .line 322
    .line 323
    :cond_10
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mControllerStates:Ljava/util/List;

    .line 324
    .line 325
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 326
    .line 327
    .line 328
    move-result-object v1

    .line 329
    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 330
    .line 331
    .line 332
    move-result v2

    .line 333
    if-eqz v2, :cond_12

    .line 334
    .line 335
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object v2

    .line 339
    check-cast v2, Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    .line 342
    .line 343
    .line 344
    move-result v3

    .line 345
    const/4 v4, 0x7

    .line 346
    const/4 v5, 0x6

    .line 347
    const/4 v9, 0x5

    .line 348
    sparse-switch v3, :sswitch_data_1

    .line 349
    .line 350
    .line 351
    goto :goto_9

    .line 352
    :sswitch_5
    const-string v3, "FAILED"

    .line 353
    .line 354
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 355
    .line 356
    .line 357
    move-result v2

    .line 358
    if-eqz v2, :cond_11

    .line 359
    .line 360
    move v2, v9

    .line 361
    goto :goto_a

    .line 362
    :sswitch_6
    const-string v3, "INITIALIZING"

    .line 363
    .line 364
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 365
    .line 366
    .line 367
    move-result v2

    .line 368
    if-eqz v2, :cond_11

    .line 369
    .line 370
    move v2, v7

    .line 371
    goto :goto_a

    .line 372
    :sswitch_7
    const-string v3, "CERTAIN"

    .line 373
    .line 374
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 375
    .line 376
    .line 377
    move-result v2

    .line 378
    if-eqz v2, :cond_11

    .line 379
    .line 380
    const/4 v2, 0x4

    .line 381
    goto :goto_a

    .line 382
    :sswitch_8
    const-string v3, "UNCERTAIN"

    .line 383
    .line 384
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 385
    .line 386
    .line 387
    move-result v2

    .line 388
    if-eqz v2, :cond_11

    .line 389
    .line 390
    const/4 v2, 0x3

    .line 391
    goto :goto_a

    .line 392
    :sswitch_9
    const-string v3, "DESTROYED"

    .line 393
    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 395
    .line 396
    .line 397
    move-result v2

    .line 398
    if-eqz v2, :cond_11

    .line 399
    .line 400
    move v2, v5

    .line 401
    goto :goto_a

    .line 402
    :sswitch_a
    const-string v3, "UNKNOWN"

    .line 403
    .line 404
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 405
    .line 406
    .line 407
    move-result v2

    .line 408
    if-eqz v2, :cond_11

    .line 409
    .line 410
    move v2, v4

    .line 411
    goto :goto_a

    .line 412
    :sswitch_b
    const-string v3, "PROVIDERS_INITIALIZING"

    .line 413
    .line 414
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 415
    .line 416
    .line 417
    move-result v2

    .line 418
    if-eqz v2, :cond_11

    .line 419
    .line 420
    const/4 v2, 0x0

    .line 421
    goto :goto_a

    .line 422
    :sswitch_c
    const-string v3, "STOPPED"

    .line 423
    .line 424
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 425
    .line 426
    .line 427
    move-result v2

    .line 428
    if-eqz v2, :cond_11

    .line 429
    .line 430
    move v2, v6

    .line 431
    goto :goto_a

    .line 432
    :cond_11
    :goto_9
    const/4 v2, -0x1

    .line 433
    :goto_a
    packed-switch v2, :pswitch_data_1

    .line 434
    .line 435
    .line 436
    const/4 v4, 0x0

    .line 437
    goto :goto_b

    .line 438
    :pswitch_1
    move v4, v5

    .line 439
    goto :goto_b

    .line 440
    :pswitch_2
    move v4, v9

    .line 441
    goto :goto_b

    .line 442
    :pswitch_3
    const/4 v4, 0x4

    .line 443
    goto :goto_b

    .line 444
    :pswitch_4
    const/4 v4, 0x3

    .line 445
    goto :goto_b

    .line 446
    :pswitch_5
    move v4, v7

    .line 447
    goto :goto_b

    .line 448
    :pswitch_6
    move v4, v6

    .line 449
    :goto_b
    :pswitch_7
    const-string v2, "controller_states"

    .line 450
    .line 451
    const-wide v9, 0x20e00000004L

    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    invoke-virtual {v8, v2, v9, v10, v4}, Lcom/android/internal/util/dump/DualDumpOutputStream;->write(Ljava/lang/String;JI)V

    .line 457
    .line 458
    .line 459
    goto/16 :goto_8

    .line 460
    .line 461
    :cond_12
    iget-object v1, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mPrimaryProviderStates:Ljava/util/List;

    .line 462
    .line 463
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 464
    .line 465
    .line 466
    move-result-object v1

    .line 467
    const-string/jumbo v2, "primary_provider_states"

    .line 468
    .line 469
    .line 470
    const-wide v3, 0x20b00000002L

    .line 471
    .line 472
    .line 473
    .line 474
    .line 475
    invoke-static {v8, v1, v2, v3, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 476
    .line 477
    .line 478
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerServiceState;->mSecondaryProviderStates:Ljava/util/List;

    .line 479
    .line 480
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 481
    .line 482
    .line 483
    move-result-object v0

    .line 484
    const-string/jumbo v1, "secondary_provider_states"

    .line 485
    .line 486
    .line 487
    const-wide v2, 0x20b00000003L

    .line 488
    .line 489
    .line 490
    .line 491
    .line 492
    invoke-static {v8, v0, v1, v2, v3}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->writeProviderStates(Lcom/android/internal/util/dump/DualDumpOutputStream;Ljava/util/List;Ljava/lang/String;J)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v8}, Lcom/android/internal/util/dump/DualDumpOutputStream;->flush()V

    .line 496
    .line 497
    .line 498
    goto/16 :goto_2

    .line 499
    .line 500
    :catch_0
    move-exception v0

    .line 501
    :try_start_2
    new-instance v2, Ljava/lang/RuntimeException;

    .line 502
    .line 503
    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 504
    .line 505
    .line 506
    throw v2
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 507
    :catch_1
    move-exception v0

    .line 508
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 509
    .line 510
    .line 511
    move v5, v6

    .line 512
    :goto_c
    return v5

    .line 513
    :pswitch_8
    :try_start_3
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 514
    .line 515
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 516
    .line 517
    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 518
    .line 519
    .line 520
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 521
    .line 522
    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    .line 523
    .line 524
    invoke-direct {v3, v0, v7}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    .line 525
    .line 526
    .line 527
    sget-wide v4, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 528
    .line 529
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_2

    .line 530
    .line 531
    .line 532
    const/4 v5, 0x0

    .line 533
    goto :goto_d

    .line 534
    :catch_2
    move-exception v0

    .line 535
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 536
    .line 537
    .line 538
    move v5, v7

    .line 539
    :goto_d
    return v5

    .line 540
    :pswitch_9
    :try_start_4
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 541
    .line 542
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 543
    .line 544
    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    .line 546
    .line 547
    new-instance v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    .line 548
    .line 549
    invoke-direct {v2, v0, v6}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    .line 550
    .line 551
    .line 552
    iget-object v0, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 553
    .line 554
    sget-wide v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 555
    .line 556
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_3

    .line 557
    .line 558
    .line 559
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 560
    .line 561
    .line 562
    move-result-object v0

    .line 563
    const-string v1, "Service started"

    .line 564
    .line 565
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 566
    .line 567
    .line 568
    const/4 v5, 0x0

    .line 569
    goto :goto_e

    .line 570
    :catch_3
    move-exception v0

    .line 571
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 572
    .line 573
    .line 574
    move v5, v6

    .line 575
    :goto_e
    return v5

    .line 576
    :pswitch_a
    :try_start_5
    iget-object v0, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 577
    .line 578
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 579
    .line 580
    invoke-virtual {v2, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 581
    .line 582
    .line 583
    iget-object v2, v0, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 584
    .line 585
    new-instance v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;

    .line 586
    .line 587
    const/4 v4, 0x0

    .line 588
    invoke-direct {v3, v0, v4}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;I)V

    .line 589
    .line 590
    .line 591
    sget-wide v7, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 592
    .line 593
    invoke-virtual {v2, v3, v7, v8}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_4

    .line 594
    .line 595
    .line 596
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 597
    .line 598
    .line 599
    move-result-object v0

    .line 600
    const-string v1, "Service stopped"

    .line 601
    .line 602
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 603
    .line 604
    .line 605
    move v5, v4

    .line 606
    goto :goto_f

    .line 607
    :catch_4
    move-exception v0

    .line 608
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 609
    .line 610
    .line 611
    move v5, v6

    .line 612
    :goto_f
    return v5

    .line 613
    :pswitch_b
    const/4 v4, 0x0

    .line 614
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 615
    .line 616
    .line 617
    move-result-object v0

    .line 618
    const-string v2, "@null"

    .line 619
    .line 620
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 621
    .line 622
    .line 623
    move-result v3

    .line 624
    const/4 v5, 0x0

    .line 625
    if-eqz v3, :cond_13

    .line 626
    .line 627
    move-object v0, v5

    .line 628
    :cond_13
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 629
    .line 630
    .line 631
    move-result-object v3

    .line 632
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 633
    .line 634
    .line 635
    move-result v2

    .line 636
    if-eqz v2, :cond_14

    .line 637
    .line 638
    goto :goto_10

    .line 639
    :cond_14
    move-object v5, v3

    .line 640
    :goto_10
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 641
    .line 642
    .line 643
    move-result-object v2

    .line 644
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 645
    .line 646
    .line 647
    move-result v2

    .line 648
    :try_start_6
    iget-object v3, v1, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->mService:Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;

    .line 649
    .line 650
    iget-object v7, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mContext:Landroid/content/Context;

    .line 651
    .line 652
    invoke-virtual {v7, v9, v8}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 653
    .line 654
    .line 655
    if-nez v0, :cond_16

    .line 656
    .line 657
    if-eqz v5, :cond_15

    .line 658
    .line 659
    goto :goto_11

    .line 660
    :cond_15
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 661
    .line 662
    const-string v2, "One or both test package names must be provided."

    .line 663
    .line 664
    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 665
    .line 666
    .line 667
    throw v0

    .line 668
    :cond_16
    :goto_11
    iget-object v7, v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->mThreadingDomain:Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;

    .line 669
    .line 670
    new-instance v8, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;

    .line 671
    .line 672
    invoke-direct {v8, v3, v0, v5, v2}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 673
    .line 674
    .line 675
    sget-wide v2, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService;->BLOCKING_OP_WAIT_DURATION_MILLIS:J

    .line 676
    .line 677
    invoke-virtual {v7, v8, v2, v3}, Lcom/android/server/timezonedetector/location/HandlerThreadingDomain;->postAndWait(Ljava/lang/Runnable;J)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_5

    .line 678
    .line 679
    .line 680
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 681
    .line 682
    .line 683
    move-result-object v0

    .line 684
    const-string v1, "Service started (test mode)"

    .line 685
    .line 686
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 687
    .line 688
    .line 689
    move v5, v4

    .line 690
    goto :goto_12

    .line 691
    :catch_5
    move-exception v0

    .line 692
    invoke-virtual {p0, v0}, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerShellCommand;->reportError(Ljava/lang/Throwable;)V

    .line 693
    .line 694
    .line 695
    move v5, v6

    .line 696
    :goto_12
    return v5

    .line 697
    :sswitch_data_0
    .sparse-switch
        -0x16f5718f -> :sswitch_4
        0x360802 -> :sswitch_3
        0x68ac462 -> :sswitch_2
        0xec9a033 -> :sswitch_1
        0x38381a86 -> :sswitch_0
    .end sparse-switch

    .line 698
    .line 699
    .line 700
    .line 701
    .line 702
    .line 703
    .line 704
    .line 705
    .line 706
    .line 707
    .line 708
    .line 709
    .line 710
    .line 711
    .line 712
    .line 713
    .line 714
    .line 715
    .line 716
    .line 717
    .line 718
    .line 719
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    .line 720
    .line 721
    .line 722
    .line 723
    .line 724
    .line 725
    .line 726
    .line 727
    .line 728
    .line 729
    .line 730
    .line 731
    .line 732
    .line 733
    :sswitch_data_1
    .sparse-switch
        -0x4584e253 -> :sswitch_c
        -0x1be9cf16 -> :sswitch_b
        0x19d1382a -> :sswitch_a
        0x1c83a5f9 -> :sswitch_9
        0x33ff1fc9 -> :sswitch_8
        0x52aa9882 -> :sswitch_7
        0x72462c4d -> :sswitch_6
        0x7b29883d -> :sswitch_5
    .end sparse-switch

    .line 734
    .line 735
    .line 736
    .line 737
    .line 738
    .line 739
    .line 740
    .line 741
    .line 742
    .line 743
    .line 744
    .line 745
    .line 746
    .line 747
    .line 748
    .line 749
    .line 750
    .line 751
    .line 752
    .line 753
    .line 754
    .line 755
    .line 756
    .line 757
    .line 758
    .line 759
    .line 760
    .line 761
    .line 762
    .line 763
    .line 764
    .line 765
    .line 766
    .line 767
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_7
    .end packed-switch
.end method

.method public final onHelp()V
    .locals 9

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "location_time_zone_manager"

    .line 6
    .line 7
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string v1, "Location Time Zone Manager (%s) commands for tests:\n"

    .line 12
    .line 13
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 14
    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    new-array v1, v0, [Ljava/lang/Object;

    .line 18
    .line 19
    const-string v2, "  help\n"

    .line 20
    .line 21
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 22
    .line 23
    .line 24
    const-string v1, "    Print this help text.\n"

    .line 25
    .line 26
    new-array v2, v0, [Ljava/lang/Object;

    .line 27
    .line 28
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 29
    .line 30
    .line 31
    const-string/jumbo v1, "start"

    .line 32
    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    const-string v3, "  %s\n"

    .line 39
    .line 40
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    const-string v2, "    Starts the service, creating location time zone providers.\n"

    .line 44
    .line 45
    new-array v4, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    const-string v2, "@null"

    .line 51
    .line 52
    const-string/jumbo v4, "start_with_test_providers"

    .line 53
    .line 54
    .line 55
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    const-string v5, "  %s <primary package name|%2$s> <secondary package name|%2$s> <record states>\n"

    .line 60
    .line 61
    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 62
    .line 63
    .line 64
    const-string v2, "    Starts the service with test provider packages configured / provider permission checks disabled.\n"

    .line 65
    .line 66
    new-array v5, v0, [Ljava/lang/Object;

    .line 67
    .line 68
    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 69
    .line 70
    .line 71
    const-string v2, "    <record states> - true|false, determines whether state recording is enabled.\n"

    .line 72
    .line 73
    new-array v5, v0, [Ljava/lang/Object;

    .line 74
    .line 75
    invoke-virtual {p0, v2, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    const-string v2, "dump_state"

    .line 79
    .line 80
    const-string v5, "clear_recorded_provider_states"

    .line 81
    .line 82
    filled-new-array {v2, v5}, [Ljava/lang/Object;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    const-string v7, "    See %s and %s.\n"

    .line 87
    .line 88
    invoke-virtual {p0, v7, v6}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 89
    .line 90
    .line 91
    const-string/jumbo v6, "stop"

    .line 92
    .line 93
    .line 94
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v7

    .line 98
    invoke-virtual {p0, v3, v7}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 99
    .line 100
    .line 101
    const-string v7, "    Stops the service, destroying location time zone providers.\n"

    .line 102
    .line 103
    new-array v8, v0, [Ljava/lang/Object;

    .line 104
    .line 105
    invoke-virtual {p0, v7, v8}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 106
    .line 107
    .line 108
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 113
    .line 114
    .line 115
    const-string v5, "    Clears recorded provider state. See also %s and %s.\n"

    .line 116
    .line 117
    filled-new-array {v4, v2}, [Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    invoke-virtual {p0, v5, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 122
    .line 123
    .line 124
    const-string v4, "    Note: This is only intended for use during testing.\n"

    .line 125
    .line 126
    new-array v5, v0, [Ljava/lang/Object;

    .line 127
    .line 128
    invoke-virtual {p0, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 129
    .line 130
    .line 131
    const-string v4, "--proto"

    .line 132
    .line 133
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v2

    .line 137
    const-string v4, "  %s [%s]\n"

    .line 138
    .line 139
    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 140
    .line 141
    .line 142
    const-string v2, "    Dumps service state for tests as text or binary proto form.\n"

    .line 143
    .line 144
    new-array v4, v0, [Ljava/lang/Object;

    .line 145
    .line 146
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 147
    .line 148
    .line 149
    const-string v2, "    See the LocationTimeZoneManagerServiceStateProto definition for details.\n"

    .line 150
    .line 151
    new-array v4, v0, [Ljava/lang/Object;

    .line 152
    .line 153
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 157
    .line 158
    .line 159
    const-string/jumbo v2, "system_time"

    .line 160
    .line 161
    .line 162
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v2

    .line 166
    const-string v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 167
    .line 168
    invoke-virtual {p0, v4, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 169
    .line 170
    .line 171
    const-string/jumbo v2, "primary_location_time_zone_provider_mode_override"

    .line 172
    .line 173
    .line 174
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 179
    .line 180
    .line 181
    const-string v2, "disabled"

    .line 182
    .line 183
    const-string v4, "enabled"

    .line 184
    .line 185
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v5

    .line 189
    const-string v7, "    Overrides the mode of the primary provider. Values=%s|%s\n"

    .line 190
    .line 191
    invoke-virtual {p0, v7, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 192
    .line 193
    .line 194
    const-string/jumbo v5, "secondary_location_time_zone_provider_mode_override"

    .line 195
    .line 196
    .line 197
    filled-new-array {v5}, [Ljava/lang/Object;

    .line 198
    .line 199
    .line 200
    move-result-object v5

    .line 201
    invoke-virtual {p0, v3, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 202
    .line 203
    .line 204
    const-string v5, "    Overrides the mode of the secondary provider. Values=%s|%s\n"

    .line 205
    .line 206
    filled-new-array {v2, v4}, [Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    invoke-virtual {p0, v5, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    .line 212
    .line 213
    const-string v2, "location_time_zone_detection_uncertainty_delay_millis"

    .line 214
    .line 215
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    move-result-object v2

    .line 219
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 220
    .line 221
    .line 222
    const-string v2, "    Sets the amount of time the service waits when uncertain before making an \'uncertain\' suggestion to the time zone detector.\n"

    .line 223
    .line 224
    new-array v4, v0, [Ljava/lang/Object;

    .line 225
    .line 226
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    .line 228
    .line 229
    const-string v2, "ltzp_init_timeout_millis"

    .line 230
    .line 231
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v2

    .line 235
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 236
    .line 237
    .line 238
    const-string v2, "    Sets the initialization time passed to the providers.\n"

    .line 239
    .line 240
    new-array v4, v0, [Ljava/lang/Object;

    .line 241
    .line 242
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 243
    .line 244
    .line 245
    const-string v2, "ltzp_init_timeout_fuzz_millis"

    .line 246
    .line 247
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 252
    .line 253
    .line 254
    const-string v2, "    Sets the amount of extra time added to the providers\' initialization time.\n"

    .line 255
    .line 256
    new-array v4, v0, [Ljava/lang/Object;

    .line 257
    .line 258
    invoke-virtual {p0, v2, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 259
    .line 260
    .line 261
    const-string v2, "ltzp_event_filtering_age_threshold_millis"

    .line 262
    .line 263
    filled-new-array {v2}, [Ljava/lang/Object;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    invoke-virtual {p0, v3, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 268
    .line 269
    .line 270
    const-string v2, "    Sets the amount of time that must pass between equivalent LTZP events before they will be reported to the system server.\n"

    .line 271
    .line 272
    new-array v3, v0, [Ljava/lang/Object;

    .line 273
    .line 274
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 278
    .line 279
    .line 280
    const-string v2, "Typically, use \'%s\' to stop the service before setting individual flags and \'%s\' after to restart it.\n"

    .line 281
    .line 282
    filled-new-array {v6, v1}, [Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 290
    .line 291
    .line 292
    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 293
    .line 294
    new-array v0, v0, [Ljava/lang/Object;

    .line 295
    .line 296
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 297
    .line 298
    .line 299
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 300
    .line 301
    .line 302
    const-string/jumbo v0, "time_zone_detector"

    .line 303
    .line 304
    .line 305
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    const-string v1, "Also see \"adb shell cmd %s help\" for higher-level location time zone commands / settings.\n"

    .line 310
    .line 311
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 312
    .line 313
    .line 314
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 315
    .line 316
    .line 317
    return-void
.end method

.method public final reportError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Error: "

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, p0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
