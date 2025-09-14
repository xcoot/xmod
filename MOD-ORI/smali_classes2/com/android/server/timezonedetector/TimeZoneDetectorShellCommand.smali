.class public final Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x1

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 v3, -0x2

    .line 12
    const/4 v4, -0x1

    .line 13
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 14
    .line 15
    .line 16
    move-result v5

    .line 17
    sparse-switch v5, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :sswitch_0
    const-string/jumbo v5, "set_auto_detection_enabled"

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-nez v5, :cond_1

    .line 30
    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    const/16 v4, 0xd

    .line 34
    .line 35
    goto/16 :goto_0

    .line 36
    .line 37
    :sswitch_1
    const-string v5, "handle_location_algorithm_event"

    .line 38
    .line 39
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-nez v5, :cond_2

    .line 44
    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    const/16 v4, 0xc

    .line 48
    .line 49
    goto/16 :goto_0

    .line 50
    .line 51
    :sswitch_2
    const-string v5, "is_geo_detection_supported"

    .line 52
    .line 53
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    if-nez v5, :cond_3

    .line 58
    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    const/16 v4, 0xb

    .line 62
    .line 63
    goto/16 :goto_0

    .line 64
    .line 65
    :sswitch_3
    const-string v5, "enable_telephony_fallback"

    .line 66
    .line 67
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v5

    .line 71
    if-nez v5, :cond_4

    .line 72
    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_4
    const/16 v4, 0xa

    .line 76
    .line 77
    goto/16 :goto_0

    .line 78
    .line 79
    :sswitch_4
    const-string/jumbo v5, "suggest_telephony_time_zone"

    .line 80
    .line 81
    .line 82
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    if-nez v5, :cond_5

    .line 87
    .line 88
    goto/16 :goto_0

    .line 89
    .line 90
    :cond_5
    const/16 v4, 0x9

    .line 91
    .line 92
    goto/16 :goto_0

    .line 93
    .line 94
    :sswitch_5
    const-string v5, "is_geo_detection_enabled"

    .line 95
    .line 96
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v5

    .line 100
    if-nez v5, :cond_6

    .line 101
    .line 102
    goto/16 :goto_0

    .line 103
    .line 104
    :cond_6
    const/16 v4, 0x8

    .line 105
    .line 106
    goto/16 :goto_0

    .line 107
    .line 108
    :sswitch_6
    const-string v5, "confirm_time_zone"

    .line 109
    .line 110
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v5

    .line 114
    if-nez v5, :cond_7

    .line 115
    .line 116
    goto :goto_0

    .line 117
    :cond_7
    const/4 v4, 0x7

    .line 118
    goto :goto_0

    .line 119
    :sswitch_7
    const-string/jumbo v5, "set_geo_detection_enabled"

    .line 120
    .line 121
    .line 122
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v5

    .line 126
    if-nez v5, :cond_8

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_8
    const/4 v4, 0x6

    .line 130
    goto :goto_0

    .line 131
    :sswitch_8
    const-string v5, "dump_metrics"

    .line 132
    .line 133
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    .line 135
    .line 136
    move-result v5

    .line 137
    if-nez v5, :cond_9

    .line 138
    .line 139
    goto :goto_0

    .line 140
    :cond_9
    const/4 v4, 0x5

    .line 141
    goto :goto_0

    .line 142
    :sswitch_9
    const-string v5, "is_auto_detection_enabled"

    .line 143
    .line 144
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 145
    .line 146
    .line 147
    move-result v5

    .line 148
    if-nez v5, :cond_a

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_a
    const/4 v4, 0x4

    .line 152
    goto :goto_0

    .line 153
    :sswitch_a
    const-string/jumbo v5, "set_time_zone_state_for_tests"

    .line 154
    .line 155
    .line 156
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v5

    .line 160
    if-nez v5, :cond_b

    .line 161
    .line 162
    goto :goto_0

    .line 163
    :cond_b
    const/4 v4, 0x3

    .line 164
    goto :goto_0

    .line 165
    :sswitch_b
    const-string v5, "get_time_zone_state"

    .line 166
    .line 167
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v5

    .line 171
    if-nez v5, :cond_c

    .line 172
    .line 173
    goto :goto_0

    .line 174
    :cond_c
    move v4, v0

    .line 175
    goto :goto_0

    .line 176
    :sswitch_c
    const-string/jumbo v5, "suggest_manual_time_zone"

    .line 177
    .line 178
    .line 179
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 180
    .line 181
    .line 182
    move-result v5

    .line 183
    if-nez v5, :cond_d

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_d
    move v4, v2

    .line 187
    goto :goto_0

    .line 188
    :sswitch_d
    const-string v5, "is_telephony_detection_supported"

    .line 189
    .line 190
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-nez v5, :cond_e

    .line 195
    .line 196
    goto :goto_0

    .line 197
    :cond_e
    move v4, v1

    .line 198
    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 202
    .line 203
    .line 204
    move-result p0

    .line 205
    return p0

    .line 206
    :pswitch_0
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object p1

    .line 210
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 215
    .line 216
    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 217
    .line 218
    .line 219
    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 220
    .line 221
    .line 222
    move-result-object p1

    .line 223
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    .line 224
    .line 225
    .line 226
    move-result-object p1

    .line 227
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 228
    .line 229
    invoke-virtual {p0, v3, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    .line 230
    .line 231
    .line 232
    move-result p0

    .line 233
    xor-int/2addr p0, v2

    .line 234
    return p0

    .line 235
    :pswitch_1
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 236
    .line 237
    invoke-direct {p1, p0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    .line 238
    .line 239
    .line 240
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 241
    .line 242
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 246
    .line 247
    invoke-direct {v2, v0, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {p0, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 251
    .line 252
    .line 253
    move-result p0

    .line 254
    return p0

    .line 255
    :pswitch_2
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 256
    .line 257
    .line 258
    move-result-object p1

    .line 259
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 260
    .line 261
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 262
    .line 263
    .line 264
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 265
    .line 266
    move-object v0, p0

    .line 267
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 268
    .line 269
    monitor-enter v0

    .line 270
    :try_start_0
    iget-object p0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 271
    .line 272
    iget-boolean p0, p0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mGeoDetectionSupported:Z

    .line 273
    .line 274
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 275
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 276
    .line 277
    .line 278
    return v1

    .line 279
    :catchall_0
    move-exception p0

    .line 280
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 281
    throw p0

    .line 282
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 283
    .line 284
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 285
    .line 286
    .line 287
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 288
    .line 289
    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 290
    .line 291
    const-string p1, "Command line"

    .line 292
    .line 293
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->enableTelephonyTimeZoneFallback(Ljava/lang/String;)V

    .line 294
    .line 295
    .line 296
    return v1

    .line 297
    :pswitch_4
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 298
    .line 299
    invoke-direct {p1, p0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    .line 300
    .line 301
    .line 302
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 303
    .line 304
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    new-instance v1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 308
    .line 309
    invoke-direct {v1, v0, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    .line 310
    .line 311
    .line 312
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 313
    .line 314
    .line 315
    move-result p0

    .line 316
    return p0

    .line 317
    :pswitch_5
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 322
    .line 323
    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 324
    .line 325
    .line 326
    move-result-object p0

    .line 327
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    .line 328
    .line 329
    .line 330
    move-result-object p0

    .line 331
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isGeoDetectionEnabled()Z

    .line 332
    .line 333
    .line 334
    move-result p0

    .line 335
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 336
    .line 337
    .line 338
    return v1

    .line 339
    :pswitch_6
    const/4 p1, 0x0

    .line 340
    :goto_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    if-eqz v0, :cond_10

    .line 345
    .line 346
    const-string p1, "--zone_id"

    .line 347
    .line 348
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 349
    .line 350
    .line 351
    move-result p1

    .line 352
    if-eqz p1, :cond_f

    .line 353
    .line 354
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 355
    .line 356
    .line 357
    move-result-object p1

    .line 358
    goto :goto_1

    .line 359
    :cond_f
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 360
    .line 361
    const-string p1, "Unknown option: "

    .line 362
    .line 363
    invoke-virtual {p1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 364
    .line 365
    .line 366
    move-result-object p1

    .line 367
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    throw p0

    .line 371
    :cond_10
    if-eqz p1, :cond_11

    .line 372
    .line 373
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 374
    .line 375
    .line 376
    move-result-object v0

    .line 377
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 378
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->confirmTimeZone(Ljava/lang/String;)Z

    .line 380
    .line 381
    .line 382
    move-result p0

    .line 383
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 384
    .line 385
    .line 386
    return v1

    .line 387
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 388
    .line 389
    const-string p1, "No zoneId specified."

    .line 390
    .line 391
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 392
    .line 393
    .line 394
    throw p0

    .line 395
    :pswitch_7
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object p1

    .line 399
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 400
    .line 401
    .line 402
    move-result p1

    .line 403
    new-instance v0, Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 404
    .line 405
    invoke-direct {v0}, Landroid/app/time/TimeZoneConfiguration$Builder;-><init>()V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v0, p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->setGeoDetectionEnabled(Z)Landroid/app/time/TimeZoneConfiguration$Builder;

    .line 409
    .line 410
    .line 411
    move-result-object p1

    .line 412
    invoke-virtual {p1}, Landroid/app/time/TimeZoneConfiguration$Builder;->build()Landroid/app/time/TimeZoneConfiguration;

    .line 413
    .line 414
    .line 415
    move-result-object p1

    .line 416
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 417
    .line 418
    invoke-virtual {p0, v3, p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->updateConfiguration(ILandroid/app/time/TimeZoneConfiguration;)Z

    .line 419
    .line 420
    .line 421
    move-result p0

    .line 422
    xor-int/2addr p0, v2

    .line 423
    return p0

    .line 424
    :pswitch_8
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 425
    .line 426
    .line 427
    move-result-object p1

    .line 428
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 429
    .line 430
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 431
    .line 432
    .line 433
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 434
    .line 435
    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 436
    .line 437
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->generateMetricsState()Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;

    .line 438
    .line 439
    .line 440
    move-result-object p0

    .line 441
    const-string v0, "MetricsTimeZoneDetectorState:"

    .line 442
    .line 443
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    .line 445
    .line 446
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/MetricsTimeZoneDetectorState;->toString()Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object p0

    .line 450
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 451
    .line 452
    .line 453
    return v1

    .line 454
    :pswitch_9
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 455
    .line 456
    .line 457
    move-result-object p1

    .line 458
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 459
    .line 460
    invoke-virtual {p0, v3}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getCapabilitiesAndConfig(I)Landroid/app/time/TimeZoneCapabilitiesAndConfig;

    .line 461
    .line 462
    .line 463
    move-result-object p0

    .line 464
    invoke-virtual {p0}, Landroid/app/time/TimeZoneCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeZoneConfiguration;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-virtual {p0}, Landroid/app/time/TimeZoneConfiguration;->isAutoDetectionEnabled()Z

    .line 469
    .line 470
    .line 471
    move-result p0

    .line 472
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 473
    .line 474
    .line 475
    return v1

    .line 476
    :pswitch_a
    invoke-static {p0}, Landroid/app/time/TimeZoneState;->parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeZoneState;

    .line 477
    .line 478
    .line 479
    move-result-object p1

    .line 480
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 481
    .line 482
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 483
    .line 484
    .line 485
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 486
    .line 487
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 488
    .line 489
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 490
    .line 491
    .line 492
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 493
    .line 494
    .line 495
    move-result-wide v2

    .line 496
    :try_start_2
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 497
    .line 498
    check-cast v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 499
    .line 500
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 501
    .line 502
    .line 503
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 504
    .line 505
    .line 506
    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getUserShouldConfirmId()Z

    .line 507
    .line 508
    .line 509
    move-result v4

    .line 510
    if-eqz v4, :cond_12

    .line 511
    .line 512
    move v4, v1

    .line 513
    goto :goto_2

    .line 514
    :cond_12
    const/16 v4, 0x64

    .line 515
    .line 516
    :goto_2
    invoke-virtual {p1}, Landroid/app/time/TimeZoneState;->getId()Ljava/lang/String;

    .line 517
    .line 518
    .line 519
    move-result-object p1

    .line 520
    const-string/jumbo v5, "setTimeZoneState()"

    .line 521
    .line 522
    .line 523
    iget-object v0, v0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mEnvironment:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;

    .line 524
    .line 525
    invoke-interface {v0, v4, p1, v5}, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl$Environment;->setDeviceTimeZoneAndConfidence(ILjava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 526
    .line 527
    .line 528
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 529
    .line 530
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 531
    .line 532
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 533
    .line 534
    .line 535
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 536
    .line 537
    .line 538
    return v1

    .line 539
    :catchall_1
    move-exception p1

    .line 540
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 541
    .line 542
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 543
    .line 544
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 545
    .line 546
    .line 547
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 548
    .line 549
    .line 550
    throw p1

    .line 551
    :pswitch_b
    iget-object p1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 552
    .line 553
    invoke-virtual {p1}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->getTimeZoneState()Landroid/app/time/TimeZoneState;

    .line 554
    .line 555
    .line 556
    move-result-object p1

    .line 557
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 558
    .line 559
    .line 560
    move-result-object p0

    .line 561
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 562
    .line 563
    .line 564
    return v1

    .line 565
    :pswitch_c
    new-instance p1, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 566
    .line 567
    invoke-direct {p1, p0, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;I)V

    .line 568
    .line 569
    .line 570
    iget-object v1, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 571
    .line 572
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 573
    .line 574
    .line 575
    new-instance v2, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 576
    .line 577
    invoke-direct {v2, v1, v0}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timezonedetector/TimeZoneDetectorService;I)V

    .line 578
    .line 579
    .line 580
    invoke-virtual {p0, p1, v2}, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 581
    .line 582
    .line 583
    move-result p0

    .line 584
    return p0

    .line 585
    :pswitch_d
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 586
    .line 587
    .line 588
    move-result-object p1

    .line 589
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorShellCommand;->mInterface:Lcom/android/server/timezonedetector/TimeZoneDetectorService;

    .line 590
    .line 591
    invoke-virtual {p0}, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->enforceManageTimeZoneDetectorPermission()V

    .line 592
    .line 593
    .line 594
    iget-object p0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorService;->mTimeZoneDetectorStrategy:Lcom/android/server/timezonedetector/TimeZoneDetectorStrategy;

    .line 595
    .line 596
    check-cast p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;

    .line 597
    .line 598
    monitor-enter p0

    .line 599
    :try_start_3
    iget-object v0, p0, Lcom/android/server/timezonedetector/TimeZoneDetectorStrategyImpl;->mCurrentConfigurationInternal:Lcom/android/server/timezonedetector/ConfigurationInternal;

    .line 600
    .line 601
    iget-boolean v0, v0, Lcom/android/server/timezonedetector/ConfigurationInternal;->mTelephonyDetectionSupported:Z

    .line 602
    .line 603
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 604
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 605
    .line 606
    .line 607
    return v1

    .line 608
    :catchall_2
    move-exception p1

    .line 609
    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 610
    throw p1

    .line 611
    :sswitch_data_0
    .sparse-switch
        -0x71c6eb88 -> :sswitch_d
        -0x5f15f000 -> :sswitch_c
        -0x5ebe7bf9 -> :sswitch_b
        -0x51772501 -> :sswitch_a
        -0x4e7e5c54 -> :sswitch_9
        -0x4b579288 -> :sswitch_8
        -0x26840a04 -> :sswitch_7
        -0x15bd4ce1 -> :sswitch_6
        0x1d9e00c4 -> :sswitch_5
        0x2390c53c -> :sswitch_4
        0x4394f365 -> :sswitch_3
        0x5298f571 -> :sswitch_2
        0x6d140877 -> :sswitch_1
        0x71625574 -> :sswitch_0
    .end sparse-switch

    .line 612
    .line 613
    .line 614
    .line 615
    .line 616
    .line 617
    .line 618
    .line 619
    .line 620
    .line 621
    .line 622
    .line 623
    .line 624
    .line 625
    .line 626
    .line 627
    .line 628
    .line 629
    .line 630
    .line 631
    .line 632
    .line 633
    .line 634
    .line 635
    .line 636
    .line 637
    .line 638
    .line 639
    .line 640
    .line 641
    .line 642
    .line 643
    .line 644
    .line 645
    .line 646
    .line 647
    .line 648
    .line 649
    .line 650
    .line 651
    .line 652
    .line 653
    .line 654
    .line 655
    .line 656
    .line 657
    .line 658
    .line 659
    .line 660
    .line 661
    .line 662
    .line 663
    .line 664
    .line 665
    .line 666
    .line 667
    .line 668
    .line 669
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
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

.method public final onHelp()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "time_zone_detector"

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Time Zone Detector (%s) commands:\n"

    .line 13
    .line 14
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    new-array v1, v0, [Ljava/lang/Object;

    .line 19
    .line 20
    const-string v2, "  help\n"

    .line 21
    .line 22
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 23
    .line 24
    .line 25
    const-string v1, "    Print this help text.\n"

    .line 26
    .line 27
    new-array v2, v0, [Ljava/lang/Object;

    .line 28
    .line 29
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 30
    .line 31
    .line 32
    const-string v1, "is_auto_detection_enabled"

    .line 33
    .line 34
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "  %s\n"

    .line 39
    .line 40
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 41
    .line 42
    .line 43
    const-string v1, "    Prints true/false according to the automatic time zone detection setting\n"

    .line 44
    .line 45
    new-array v3, v0, [Ljava/lang/Object;

    .line 46
    .line 47
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 48
    .line 49
    .line 50
    const-string/jumbo v1, "set_auto_detection_enabled"

    .line 51
    .line 52
    .line 53
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    const-string v3, "  %s true|false\n"

    .line 58
    .line 59
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 60
    .line 61
    .line 62
    const-string v1, "    Sets the automatic time zone detection setting.\n"

    .line 63
    .line 64
    new-array v4, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    const-string v1, "is_telephony_detection_supported"

    .line 70
    .line 71
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 76
    .line 77
    .line 78
    const-string v1, "    Prints true/false according to whether telephony time zone detection is supported on this device.\n"

    .line 79
    .line 80
    new-array v4, v0, [Ljava/lang/Object;

    .line 81
    .line 82
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 83
    .line 84
    .line 85
    const-string v1, "is_geo_detection_supported"

    .line 86
    .line 87
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object v1

    .line 91
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 92
    .line 93
    .line 94
    const-string v1, "    Prints true/false according to whether geolocation time zone detection is supported on this device.\n"

    .line 95
    .line 96
    new-array v4, v0, [Ljava/lang/Object;

    .line 97
    .line 98
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 99
    .line 100
    .line 101
    const-string v1, "is_geo_detection_enabled"

    .line 102
    .line 103
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    const-string v1, "    Prints true/false according to the geolocation time zone detection setting.\n"

    .line 111
    .line 112
    new-array v4, v0, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 115
    .line 116
    .line 117
    const-string/jumbo v1, "set_geo_detection_enabled"

    .line 118
    .line 119
    .line 120
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 125
    .line 126
    .line 127
    const-string v1, "    Sets the geolocation time zone detection enabled setting.\n"

    .line 128
    .line 129
    new-array v3, v0, [Ljava/lang/Object;

    .line 130
    .line 131
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 132
    .line 133
    .line 134
    const-string v1, "enable_telephony_fallback"

    .line 135
    .line 136
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 141
    .line 142
    .line 143
    const-string v3, "    Signals that telephony time zone detection fall back can be used if geolocation detection is supported and enabled.\n)"

    .line 144
    .line 145
    new-array v4, v0, [Ljava/lang/Object;

    .line 146
    .line 147
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 148
    .line 149
    .line 150
    const-string v3, "    This is a temporary state until geolocation detection becomes \"certain\".\n"

    .line 151
    .line 152
    new-array v4, v0, [Ljava/lang/Object;

    .line 153
    .line 154
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 155
    .line 156
    .line 157
    const-string v3, "    To have an effect this requires that the telephony fallback feature is supported on the device, see below for device_config flags.\n"

    .line 158
    .line 159
    new-array v4, v0, [Ljava/lang/Object;

    .line 160
    .line 161
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 162
    .line 163
    .line 164
    const-string v3, "handle_location_algorithm_event"

    .line 165
    .line 166
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    const-string v4, "  %s <location event opts>\n"

    .line 171
    .line 172
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 173
    .line 174
    .line 175
    const-string v3, "    Simulates an event from the location time zone detection algorithm.\n"

    .line 176
    .line 177
    new-array v4, v0, [Ljava/lang/Object;

    .line 178
    .line 179
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 180
    .line 181
    .line 182
    const-string/jumbo v3, "suggest_manual_time_zone"

    .line 183
    .line 184
    .line 185
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    const-string v4, "  %s <manual suggestion opts>\n"

    .line 190
    .line 191
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 192
    .line 193
    .line 194
    const-string v3, "    Suggests a time zone as if supplied by a user manually.\n"

    .line 195
    .line 196
    new-array v4, v0, [Ljava/lang/Object;

    .line 197
    .line 198
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 199
    .line 200
    .line 201
    const-string/jumbo v3, "suggest_telephony_time_zone"

    .line 202
    .line 203
    .line 204
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v3

    .line 208
    const-string v4, "  %s <telephony suggestion opts>\n"

    .line 209
    .line 210
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    .line 212
    .line 213
    const-string v3, "    Simulates a time zone suggestion from the telephony time zone detection algorithm.\n"

    .line 214
    .line 215
    new-array v4, v0, [Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 218
    .line 219
    .line 220
    const-string v3, "get_time_zone_state"

    .line 221
    .line 222
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    .line 228
    .line 229
    const-string v3, "    Returns the current time zone setting state.\n"

    .line 230
    .line 231
    new-array v4, v0, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 234
    .line 235
    .line 236
    const-string/jumbo v3, "set_time_zone_state_for_tests"

    .line 237
    .line 238
    .line 239
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v3

    .line 243
    const-string v4, "  %s <time zone state options>\n"

    .line 244
    .line 245
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 246
    .line 247
    .line 248
    const-string v3, "    Sets the current time zone state for tests.\n"

    .line 249
    .line 250
    new-array v4, v0, [Ljava/lang/Object;

    .line 251
    .line 252
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 253
    .line 254
    .line 255
    const-string v3, "confirm_time_zone"

    .line 256
    .line 257
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    const-string v4, "  %s <--zone_id Olson ID>\n"

    .line 262
    .line 263
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 264
    .line 265
    .line 266
    const-string v3, "    Tries to confirms the time zone, raising the confidence.\n"

    .line 267
    .line 268
    new-array v4, v0, [Ljava/lang/Object;

    .line 269
    .line 270
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 271
    .line 272
    .line 273
    const-string v3, "dump_metrics"

    .line 274
    .line 275
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    move-result-object v3

    .line 279
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 280
    .line 281
    .line 282
    const-string v3, "    Dumps the service metrics to stdout for inspection.\n"

    .line 283
    .line 284
    new-array v4, v0, [Ljava/lang/Object;

    .line 285
    .line 286
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 290
    .line 291
    .line 292
    const-string v3, "Location algorithm event options:"

    .line 293
    .line 294
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 295
    .line 296
    .line 297
    const-string v3, "  --status {LocationTimeZoneAlgorithmStatus toString() format}"

    .line 298
    .line 299
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    const-string v3, "  [--suggestion {UNCERTAIN|EMPTY|<Olson ID>+}]"

    .line 303
    .line 304
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 305
    .line 306
    .line 307
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 308
    .line 309
    .line 310
    new-instance v3, Ljava/lang/StringBuilder;

    .line 311
    .line 312
    const-string v4, "See "

    .line 313
    .line 314
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 315
    .line 316
    .line 317
    const-class v4, Lcom/android/server/timezonedetector/LocationAlgorithmEvent;

    .line 318
    .line 319
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 320
    .line 321
    .line 322
    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 324
    .line 325
    .line 326
    const-string v4, " for more information"

    .line 327
    .line 328
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 329
    .line 330
    .line 331
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v3

    .line 335
    invoke-virtual {p0, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 339
    .line 340
    .line 341
    invoke-static {p0}, Landroid/app/timezonedetector/ManualTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 345
    .line 346
    .line 347
    invoke-static {p0}, Landroid/app/timezonedetector/TelephonyTimeZoneSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 348
    .line 349
    .line 350
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 351
    .line 352
    .line 353
    invoke-static {p0}, Landroid/app/time/TimeZoneState;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 354
    .line 355
    .line 356
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 357
    .line 358
    .line 359
    const-string/jumbo v3, "system_time"

    .line 360
    .line 361
    .line 362
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 363
    .line 364
    .line 365
    move-result-object v3

    .line 366
    const-string v4, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 367
    .line 368
    invoke-virtual {p0, v4, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 369
    .line 370
    .line 371
    const-string v3, "location_time_zone_detection_feature_supported"

    .line 372
    .line 373
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v3

    .line 377
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 378
    .line 379
    .line 380
    const-string v3, "    Only observed if the geolocation time zone detection feature is enabled in config.\n"

    .line 381
    .line 382
    new-array v4, v0, [Ljava/lang/Object;

    .line 383
    .line 384
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 385
    .line 386
    .line 387
    const-string v3, "    Set this to false to disable the feature.\n"

    .line 388
    .line 389
    new-array v4, v0, [Ljava/lang/Object;

    .line 390
    .line 391
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 392
    .line 393
    .line 394
    const-string v3, "location_time_zone_detection_run_in_background_enabled"

    .line 395
    .line 396
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    move-result-object v3

    .line 400
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 401
    .line 402
    .line 403
    const-string v3, "    Runs geolocation time zone detection even when it not enabled by the user. The result is not used to set the device\'s time zone [*]\n"

    .line 404
    .line 405
    new-array v4, v0, [Ljava/lang/Object;

    .line 406
    .line 407
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 408
    .line 409
    .line 410
    const-string v3, "location_time_zone_detection_setting_enabled_default"

    .line 411
    .line 412
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 413
    .line 414
    .line 415
    move-result-object v3

    .line 416
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 417
    .line 418
    .line 419
    const-string v3, "    Only used if the device does not have an explicit \'geolocation time zone detection enabled\' setting stored [*].\n"

    .line 420
    .line 421
    new-array v4, v0, [Ljava/lang/Object;

    .line 422
    .line 423
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 424
    .line 425
    .line 426
    const-string v3, "    The default is when unset is false.\n"

    .line 427
    .line 428
    new-array v4, v0, [Ljava/lang/Object;

    .line 429
    .line 430
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 431
    .line 432
    .line 433
    const-string v3, "location_time_zone_detection_setting_enabled_override"

    .line 434
    .line 435
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    move-result-object v3

    .line 439
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 440
    .line 441
    .line 442
    const-string v3, "    Used to override the device\'s \'geolocation time zone detection enabled\' setting [*].\n"

    .line 443
    .line 444
    new-array v4, v0, [Ljava/lang/Object;

    .line 445
    .line 446
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 447
    .line 448
    .line 449
    const-string/jumbo v3, "time_zone_detector_auto_detection_enabled_default"

    .line 450
    .line 451
    .line 452
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 453
    .line 454
    .line 455
    move-result-object v3

    .line 456
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 457
    .line 458
    .line 459
    const-string v3, "    Used to set the automatic time zone detection enabled default, i.e. when the device\'s automatic time zone detection enabled setting hasn\'t been set explicitly. Intended for internal testers."

    .line 460
    .line 461
    new-array v4, v0, [Ljava/lang/Object;

    .line 462
    .line 463
    invoke-virtual {p0, v3, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 464
    .line 465
    .line 466
    const-string/jumbo v3, "time_zone_detector_telephony_fallback_supported"

    .line 467
    .line 468
    .line 469
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    invoke-virtual {p0, v2, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 474
    .line 475
    .line 476
    const-string v3, "    Used to enable / disable support for telephony detection fallback. Also see the %s command.\n"

    .line 477
    .line 478
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 479
    .line 480
    .line 481
    move-result-object v1

    .line 482
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 483
    .line 484
    .line 485
    const-string v1, "enhanced_metrics_collection_enabled"

    .line 486
    .line 487
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    move-result-object v1

    .line 491
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 492
    .line 493
    .line 494
    const-string v1, "    Used to increase the detail of metrics collected / reported.\n"

    .line 495
    .line 496
    new-array v2, v0, [Ljava/lang/Object;

    .line 497
    .line 498
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 499
    .line 500
    .line 501
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 502
    .line 503
    .line 504
    const-string v1, "[*] To be enabled, the user must still have location = on / auto time zone detection = on.\n"

    .line 505
    .line 506
    new-array v2, v0, [Ljava/lang/Object;

    .line 507
    .line 508
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 512
    .line 513
    .line 514
    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 515
    .line 516
    new-array v0, v0, [Ljava/lang/Object;

    .line 517
    .line 518
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 519
    .line 520
    .line 521
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 522
    .line 523
    .line 524
    const-string v0, "location_time_zone_manager"

    .line 525
    .line 526
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    const-string v1, "Also see \"adb shell cmd %s help\" for lower-level location time zone commands / settings.\n"

    .line 531
    .line 532
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 536
    .line 537
    .line 538
    return-void
.end method

.method public final runSingleArgMethod(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .locals 2

    .line 1
    const-string v0, "Arg "

    .line 2
    .line 3
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    const/4 v1, 0x1

    .line 8
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    const-string p1, "Error: arg not specified"

    .line 15
    .line 16
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v1

    .line 20
    :catch_0
    move-exception p1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    const-string p1, " injected."

    .line 34
    .line 35
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    .line 45
    const/4 p0, 0x0

    .line 46
    return p0

    .line 47
    :goto_0
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    return v1
.end method
