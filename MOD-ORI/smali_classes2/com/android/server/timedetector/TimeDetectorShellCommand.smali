.class public final Lcom/android/server/timedetector/TimeDetectorShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mInterface:Lcom/android/server/timedetector/TimeDetectorService;


# direct methods
.method public constructor <init>(Lcom/android/server/timedetector/TimeDetectorService;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onCommand(Ljava/lang/String;)I
    .locals 9

    .line 1
    const/4 v0, 0x4

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x2

    .line 4
    const/4 v3, 0x1

    .line 5
    const/4 v4, 0x0

    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const-string/jumbo v5, "suggest network time"

    .line 14
    .line 15
    .line 16
    const-string v6, "android.permission.SET_TIME"

    .line 17
    .line 18
    const/4 v7, -0x1

    .line 19
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 20
    .line 21
    .line 22
    move-result v8

    .line 23
    sparse-switch v8, :sswitch_data_0

    .line 24
    .line 25
    .line 26
    goto/16 :goto_0

    .line 27
    .line 28
    :sswitch_0
    const-string v8, "confirm_time"

    .line 29
    .line 30
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    move-result v8

    .line 34
    if-nez v8, :cond_1

    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :cond_1
    const/16 v7, 0xd

    .line 39
    .line 40
    goto/16 :goto_0

    .line 41
    .line 42
    :sswitch_1
    const-string/jumbo v8, "set_auto_detection_enabled"

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-nez v8, :cond_2

    .line 50
    .line 51
    goto/16 :goto_0

    .line 52
    .line 53
    :cond_2
    const/16 v7, 0xc

    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :sswitch_2
    const-string/jumbo v8, "set_system_clock_network_time"

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v8

    .line 64
    if-nez v8, :cond_3

    .line 65
    .line 66
    goto/16 :goto_0

    .line 67
    .line 68
    :cond_3
    const/16 v7, 0xb

    .line 69
    .line 70
    goto/16 :goto_0

    .line 71
    .line 72
    :sswitch_3
    const-string v8, "clear_system_clock_network_time"

    .line 73
    .line 74
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-nez v8, :cond_4

    .line 79
    .line 80
    goto/16 :goto_0

    .line 81
    .line 82
    :cond_4
    const/16 v7, 0xa

    .line 83
    .line 84
    goto/16 :goto_0

    .line 85
    .line 86
    :sswitch_4
    const-string/jumbo v8, "suggest_manual_time"

    .line 87
    .line 88
    .line 89
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 90
    .line 91
    .line 92
    move-result v8

    .line 93
    if-nez v8, :cond_5

    .line 94
    .line 95
    goto/16 :goto_0

    .line 96
    .line 97
    :cond_5
    const/16 v7, 0x9

    .line 98
    .line 99
    goto/16 :goto_0

    .line 100
    .line 101
    :sswitch_5
    const-string v8, "clear_network_time"

    .line 102
    .line 103
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v8

    .line 107
    if-nez v8, :cond_6

    .line 108
    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_6
    const/16 v7, 0x8

    .line 112
    .line 113
    goto/16 :goto_0

    .line 114
    .line 115
    :sswitch_6
    const-string v8, "get_network_time"

    .line 116
    .line 117
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v8

    .line 121
    if-nez v8, :cond_7

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_7
    const/4 v7, 0x7

    .line 125
    goto :goto_0

    .line 126
    :sswitch_7
    const-string/jumbo v8, "suggest_external_time"

    .line 127
    .line 128
    .line 129
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 130
    .line 131
    .line 132
    move-result v8

    .line 133
    if-nez v8, :cond_8

    .line 134
    .line 135
    goto :goto_0

    .line 136
    :cond_8
    const/4 v7, 0x6

    .line 137
    goto :goto_0

    .line 138
    :sswitch_8
    const-string v8, "get_time_state"

    .line 139
    .line 140
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v8

    .line 144
    if-nez v8, :cond_9

    .line 145
    .line 146
    goto :goto_0

    .line 147
    :cond_9
    const/4 v7, 0x5

    .line 148
    goto :goto_0

    .line 149
    :sswitch_9
    const-string/jumbo v8, "set_time_state_for_tests"

    .line 150
    .line 151
    .line 152
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v8

    .line 156
    if-nez v8, :cond_a

    .line 157
    .line 158
    goto :goto_0

    .line 159
    :cond_a
    move v7, v0

    .line 160
    goto :goto_0

    .line 161
    :sswitch_a
    const-string/jumbo v8, "suggest_gnss_time"

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v8, :cond_b

    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_b
    move v7, v1

    .line 172
    goto :goto_0

    .line 173
    :sswitch_b
    const-string/jumbo v8, "suggest_network_time"

    .line 174
    .line 175
    .line 176
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 177
    .line 178
    .line 179
    move-result v8

    .line 180
    if-nez v8, :cond_c

    .line 181
    .line 182
    goto :goto_0

    .line 183
    :cond_c
    move v7, v2

    .line 184
    goto :goto_0

    .line 185
    :sswitch_c
    const-string v8, "is_auto_detection_enabled"

    .line 186
    .line 187
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 188
    .line 189
    .line 190
    move-result v8

    .line 191
    if-nez v8, :cond_d

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_d
    move v7, v3

    .line 195
    goto :goto_0

    .line 196
    :sswitch_d
    const-string/jumbo v8, "suggest_telephony_time"

    .line 197
    .line 198
    .line 199
    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 200
    .line 201
    .line 202
    move-result v8

    .line 203
    if-nez v8, :cond_e

    .line 204
    .line 205
    goto :goto_0

    .line 206
    :cond_e
    move v7, v4

    .line 207
    :goto_0
    packed-switch v7, :pswitch_data_0

    .line 208
    .line 209
    .line 210
    invoke-virtual {p0, p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 211
    .line 212
    .line 213
    move-result p0

    .line 214
    return p0

    .line 215
    :pswitch_0
    invoke-static {p0}, Landroid/app/time/UnixEpochTime;->parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/UnixEpochTime;

    .line 216
    .line 217
    .line 218
    move-result-object p1

    .line 219
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 220
    .line 221
    .line 222
    move-result-object v0

    .line 223
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 224
    .line 225
    invoke-virtual {p0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->confirmTime(Landroid/app/time/UnixEpochTime;)Z

    .line 226
    .line 227
    .line 228
    move-result p0

    .line 229
    invoke-virtual {v0, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 230
    .line 231
    .line 232
    return v4

    .line 233
    :pswitch_1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object p1

    .line 237
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 238
    .line 239
    .line 240
    move-result p1

    .line 241
    new-instance v0, Landroid/app/time/TimeConfiguration$Builder;

    .line 242
    .line 243
    invoke-direct {v0}, Landroid/app/time/TimeConfiguration$Builder;-><init>()V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, p1}, Landroid/app/time/TimeConfiguration$Builder;->setAutoDetectionEnabled(Z)Landroid/app/time/TimeConfiguration$Builder;

    .line 247
    .line 248
    .line 249
    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/app/time/TimeConfiguration$Builder;->build()Landroid/app/time/TimeConfiguration;

    .line 251
    .line 252
    .line 253
    move-result-object p1

    .line 254
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 255
    .line 256
    const/4 v0, -0x2

    .line 257
    invoke-virtual {p0, v0, p1}, Lcom/android/server/timedetector/TimeDetectorService;->updateConfiguration(ILandroid/app/time/TimeConfiguration;)Z

    .line 258
    .line 259
    .line 260
    move-result p0

    .line 261
    xor-int/2addr p0, v3

    .line 262
    return p0

    .line 263
    :pswitch_2
    invoke-static {p0}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->parseCommandLineArg(Landroid/os/ShellCommand;)Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 264
    .line 265
    .line 266
    move-result-object p1

    .line 267
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 268
    .line 269
    iget-object v0, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUnixEpochTime:Landroid/app/time/UnixEpochTime;

    .line 270
    .line 271
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 272
    .line 273
    invoke-virtual {v1, v6, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    sget-boolean v1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    .line 277
    .line 278
    new-instance v1, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 279
    .line 280
    iget p1, p1, Lcom/android/server/timedetector/NetworkTimeSuggestion;->mUncertaintyMillis:I

    .line 281
    .line 282
    invoke-direct {v1, v0, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;-><init>(Landroid/app/time/UnixEpochTime;I)V

    .line 283
    .line 284
    .line 285
    const-string p1, "Injected for tests"

    .line 286
    .line 287
    filled-new-array {p1}, [Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object p1

    .line 291
    invoke-virtual {v1, p1}, Lcom/android/server/timedetector/NetworkTimeSuggestion;->addDebugInfo([Ljava/lang/String;)V

    .line 292
    .line 293
    .line 294
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 295
    .line 296
    check-cast p0, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 297
    .line 298
    invoke-virtual {p0, v1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->suggestNetworkTime(Lcom/android/server/timedetector/NetworkTimeSuggestion;)V

    .line 299
    .line 300
    .line 301
    return v4

    .line 302
    :pswitch_3
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 303
    .line 304
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 305
    .line 306
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 307
    .line 308
    .line 309
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 310
    .line 311
    check-cast p1, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 312
    .line 313
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 314
    .line 315
    .line 316
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 317
    .line 318
    .line 319
    move-result-wide v0

    .line 320
    :try_start_0
    sget-boolean p1, Lcom/android/server/location/gnss/TimeDetectorNetworkTimeHelper;->DEBUG:Z

    .line 321
    .line 322
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 323
    .line 324
    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 325
    .line 326
    invoke-virtual {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->clearLatestNetworkSuggestion()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 327
    .line 328
    .line 329
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 330
    .line 331
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 332
    .line 333
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 334
    .line 335
    .line 336
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 337
    .line 338
    .line 339
    return v4

    .line 340
    :catchall_0
    move-exception p1

    .line 341
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 342
    .line 343
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 344
    .line 345
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 346
    .line 347
    .line 348
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 349
    .line 350
    .line 351
    throw p1

    .line 352
    :pswitch_4
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 353
    .line 354
    invoke-direct {p1, p0, v0}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V

    .line 355
    .line 356
    .line 357
    iget-object v1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 358
    .line 359
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 363
    .line 364
    invoke-direct {v2, v1, v0}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;I)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 368
    .line 369
    .line 370
    move-result p0

    .line 371
    return p0

    .line 372
    :pswitch_5
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 373
    .line 374
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mContext:Landroid/content/Context;

    .line 375
    .line 376
    invoke-virtual {p1, v6, v5}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 380
    .line 381
    check-cast p1, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 382
    .line 383
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 384
    .line 385
    .line 386
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 387
    .line 388
    .line 389
    move-result-wide v0

    .line 390
    :try_start_1
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 391
    .line 392
    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 393
    .line 394
    invoke-virtual {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->clearLatestNetworkSuggestion()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 395
    .line 396
    .line 397
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 398
    .line 399
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 400
    .line 401
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 402
    .line 403
    .line 404
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 405
    .line 406
    .line 407
    return v4

    .line 408
    :catchall_1
    move-exception p1

    .line 409
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 410
    .line 411
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 412
    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 414
    .line 415
    .line 416
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 417
    .line 418
    .line 419
    throw p1

    .line 420
    :pswitch_6
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 421
    .line 422
    iget-object p1, p1, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 423
    .line 424
    check-cast p1, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 425
    .line 426
    invoke-virtual {p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->getLatestNetworkSuggestion()Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 427
    .line 428
    .line 429
    move-result-object p1

    .line 430
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 431
    .line 432
    .line 433
    move-result-object p0

    .line 434
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 435
    .line 436
    .line 437
    return v4

    .line 438
    :pswitch_7
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 439
    .line 440
    invoke-direct {p1, p0, v1}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V

    .line 441
    .line 442
    .line 443
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 444
    .line 445
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    new-instance v2, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 449
    .line 450
    invoke-direct {v2, v0, v1}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {p0, p1, v2}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 454
    .line 455
    .line 456
    move-result p0

    .line 457
    return p0

    .line 458
    :pswitch_8
    iget-object p1, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 459
    .line 460
    invoke-virtual {p1}, Lcom/android/server/timedetector/TimeDetectorService;->getTimeState()Landroid/app/time/TimeState;

    .line 461
    .line 462
    .line 463
    move-result-object p1

    .line 464
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 465
    .line 466
    .line 467
    move-result-object p0

    .line 468
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 469
    .line 470
    .line 471
    return v4

    .line 472
    :pswitch_9
    invoke-static {p0}, Landroid/app/time/TimeState;->parseCommandLineArgs(Landroid/os/ShellCommand;)Landroid/app/time/TimeState;

    .line 473
    .line 474
    .line 475
    move-result-object p1

    .line 476
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 477
    .line 478
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->enforceManageTimeDetectorPermission()V

    .line 479
    .line 480
    .line 481
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 482
    .line 483
    check-cast v0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 484
    .line 485
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 486
    .line 487
    .line 488
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 489
    .line 490
    .line 491
    move-result-wide v0

    .line 492
    :try_start_2
    iget-object v2, p0, Lcom/android/server/timedetector/TimeDetectorService;->mTimeDetectorStrategy:Lcom/android/server/timedetector/TimeDetectorStrategy;

    .line 493
    .line 494
    check-cast v2, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;

    .line 495
    .line 496
    invoke-virtual {v2, p1}, Lcom/android/server/timedetector/TimeDetectorStrategyImpl;->setTimeState(Landroid/app/time/TimeState;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 497
    .line 498
    .line 499
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 500
    .line 501
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 502
    .line 503
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 504
    .line 505
    .line 506
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 507
    .line 508
    .line 509
    return v4

    .line 510
    :catchall_2
    move-exception p1

    .line 511
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorService;->mCallerIdentityInjector:Lcom/android/server/timezonedetector/CallerIdentityInjector;

    .line 512
    .line 513
    check-cast p0, Lcom/android/server/timezonedetector/CallerIdentityInjector$Real;

    .line 514
    .line 515
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 516
    .line 517
    .line 518
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 519
    .line 520
    .line 521
    throw p1

    .line 522
    :pswitch_a
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 523
    .line 524
    invoke-direct {p1, p0, v2}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V

    .line 525
    .line 526
    .line 527
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 528
    .line 529
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 530
    .line 531
    .line 532
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 533
    .line 534
    invoke-direct {v1, v0, v2}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;I)V

    .line 535
    .line 536
    .line 537
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 538
    .line 539
    .line 540
    move-result p0

    .line 541
    return p0

    .line 542
    :pswitch_b
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 543
    .line 544
    invoke-direct {p1, p0, v4}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V

    .line 545
    .line 546
    .line 547
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 548
    .line 549
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 550
    .line 551
    .line 552
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 553
    .line 554
    invoke-direct {v1, v0, v4}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;I)V

    .line 555
    .line 556
    .line 557
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 558
    .line 559
    .line 560
    move-result p0

    .line 561
    return p0

    .line 562
    :pswitch_c
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 563
    .line 564
    .line 565
    move-result-object p1

    .line 566
    iget-object p0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 567
    .line 568
    invoke-virtual {p0}, Lcom/android/server/timedetector/TimeDetectorService;->getCapabilitiesAndConfig()Landroid/app/time/TimeCapabilitiesAndConfig;

    .line 569
    .line 570
    .line 571
    move-result-object p0

    .line 572
    invoke-virtual {p0}, Landroid/app/time/TimeCapabilitiesAndConfig;->getConfiguration()Landroid/app/time/TimeConfiguration;

    .line 573
    .line 574
    .line 575
    move-result-object p0

    .line 576
    invoke-virtual {p0}, Landroid/app/time/TimeConfiguration;->isAutoDetectionEnabled()Z

    .line 577
    .line 578
    .line 579
    move-result p0

    .line 580
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Z)V

    .line 581
    .line 582
    .line 583
    return v4

    .line 584
    :pswitch_d
    new-instance p1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;

    .line 585
    .line 586
    invoke-direct {p1, p0, v3}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/timedetector/TimeDetectorShellCommand;I)V

    .line 587
    .line 588
    .line 589
    iget-object v0, p0, Lcom/android/server/timedetector/TimeDetectorShellCommand;->mInterface:Lcom/android/server/timedetector/TimeDetectorService;

    .line 590
    .line 591
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    new-instance v1, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;

    .line 595
    .line 596
    invoke-direct {v1, v0, v3}, Lcom/android/server/timedetector/TimeDetectorShellCommand$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/timedetector/TimeDetectorService;I)V

    .line 597
    .line 598
    .line 599
    invoke-virtual {p0, p1, v1}, Lcom/android/server/timedetector/TimeDetectorShellCommand;->runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I

    .line 600
    .line 601
    .line 602
    move-result p0

    .line 603
    return p0

    .line 604
    nop

    .line 605
    :sswitch_data_0
    .sparse-switch
        -0x61315351 -> :sswitch_d
        -0x4e7e5c54 -> :sswitch_c
        -0x3250d0e7 -> :sswitch_b
        -0x1fbd4076 -> :sswitch_a
        -0xd1980b8 -> :sswitch_9
        -0x4ff9ed8 -> :sswitch_8
        0xbf71946 -> :sswitch_7
        0xf36d487 -> :sswitch_6
        0x2cfdf6f0 -> :sswitch_5
        0x363ab76b -> :sswitch_4
        0x5577fb6d -> :sswitch_3
        0x6edee142 -> :sswitch_2
        0x71625574 -> :sswitch_1
        0x7d025cec -> :sswitch_0
    .end sparse-switch

    .line 606
    .line 607
    .line 608
    .line 609
    .line 610
    .line 611
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
    const-string/jumbo v0, "time_detector"

    .line 6
    .line 7
    .line 8
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "Time Detector (%s) commands:\n"

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
    const-string v1, "    Prints true/false according to the automatic time detection setting.\n"

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
    const-string v1, "    Sets the automatic time detection setting.\n"

    .line 63
    .line 64
    new-array v3, v0, [Ljava/lang/Object;

    .line 65
    .line 66
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 70
    .line 71
    .line 72
    const-string/jumbo v1, "suggest_manual_time"

    .line 73
    .line 74
    .line 75
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const-string v3, "  %s <manual suggestion opts>\n"

    .line 80
    .line 81
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 82
    .line 83
    .line 84
    const-string v1, "    Suggests a time as if via the \"manual\" origin.\n"

    .line 85
    .line 86
    new-array v3, v0, [Ljava/lang/Object;

    .line 87
    .line 88
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 89
    .line 90
    .line 91
    const-string/jumbo v1, "suggest_telephony_time"

    .line 92
    .line 93
    .line 94
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    const-string v3, "  %s <telephony suggestion opts>\n"

    .line 99
    .line 100
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 101
    .line 102
    .line 103
    const-string v1, "    Suggests a time as if via the \"telephony\" origin.\n"

    .line 104
    .line 105
    new-array v3, v0, [Ljava/lang/Object;

    .line 106
    .line 107
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 108
    .line 109
    .line 110
    const-string/jumbo v1, "suggest_network_time"

    .line 111
    .line 112
    .line 113
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    const-string v3, "  %s <network suggestion opts>\n"

    .line 118
    .line 119
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 120
    .line 121
    .line 122
    const-string v1, "    Suggests a time as if via the \"network\" origin.\n"

    .line 123
    .line 124
    new-array v4, v0, [Ljava/lang/Object;

    .line 125
    .line 126
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 127
    .line 128
    .line 129
    const-string/jumbo v1, "suggest_gnss_time"

    .line 130
    .line 131
    .line 132
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    const-string v4, "  %s <gnss suggestion opts>\n"

    .line 137
    .line 138
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 139
    .line 140
    .line 141
    const-string v1, "    Suggests a time as if via the \"gnss\" origin.\n"

    .line 142
    .line 143
    new-array v4, v0, [Ljava/lang/Object;

    .line 144
    .line 145
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 146
    .line 147
    .line 148
    const-string/jumbo v1, "suggest_external_time"

    .line 149
    .line 150
    .line 151
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    const-string v4, "  %s <external suggestion opts>\n"

    .line 156
    .line 157
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 158
    .line 159
    .line 160
    const-string v1, "    Suggests a time as if via the \"external\" origin.\n"

    .line 161
    .line 162
    new-array v4, v0, [Ljava/lang/Object;

    .line 163
    .line 164
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 165
    .line 166
    .line 167
    const-string v1, "get_time_state"

    .line 168
    .line 169
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    move-result-object v1

    .line 173
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 174
    .line 175
    .line 176
    const-string v1, "    Returns the current time setting state.\n"

    .line 177
    .line 178
    new-array v4, v0, [Ljava/lang/Object;

    .line 179
    .line 180
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 181
    .line 182
    .line 183
    const-string/jumbo v1, "set_time_state_for_tests"

    .line 184
    .line 185
    .line 186
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    move-result-object v1

    .line 190
    const-string v4, "  %s <time state options>\n"

    .line 191
    .line 192
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 193
    .line 194
    .line 195
    const-string v1, "    Sets the current time state for tests.\n"

    .line 196
    .line 197
    new-array v4, v0, [Ljava/lang/Object;

    .line 198
    .line 199
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 200
    .line 201
    .line 202
    const-string v1, "confirm_time"

    .line 203
    .line 204
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 205
    .line 206
    .line 207
    move-result-object v1

    .line 208
    const-string v4, "  %s <unix epoch time options>\n"

    .line 209
    .line 210
    invoke-virtual {p0, v4, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 211
    .line 212
    .line 213
    const-string v1, "    Tries to confirms the time, raising the confidence.\n"

    .line 214
    .line 215
    new-array v4, v0, [Ljava/lang/Object;

    .line 216
    .line 217
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 218
    .line 219
    .line 220
    const-string v1, "get_network_time"

    .line 221
    .line 222
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 227
    .line 228
    .line 229
    const-string v1, "    Prints the network time information held by the detector.\n"

    .line 230
    .line 231
    new-array v4, v0, [Ljava/lang/Object;

    .line 232
    .line 233
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 234
    .line 235
    .line 236
    const-string v1, "clear_network_time"

    .line 237
    .line 238
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 243
    .line 244
    .line 245
    const-string v1, "    Clears the network time information held by the detector.\n"

    .line 246
    .line 247
    new-array v4, v0, [Ljava/lang/Object;

    .line 248
    .line 249
    invoke-virtual {p0, v1, v4}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 250
    .line 251
    .line 252
    const-string/jumbo v1, "set_system_clock_network_time"

    .line 253
    .line 254
    .line 255
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 260
    .line 261
    .line 262
    const-string v1, "    Sets the network time information used for SystemClock.currentNetworkTimeClock().\n"

    .line 263
    .line 264
    new-array v3, v0, [Ljava/lang/Object;

    .line 265
    .line 266
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 267
    .line 268
    .line 269
    const-string v1, "clear_system_clock_network_time"

    .line 270
    .line 271
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 272
    .line 273
    .line 274
    move-result-object v1

    .line 275
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 276
    .line 277
    .line 278
    const-string v1, "    Clears the network time information used for SystemClock.currentNetworkTimeClock().\n"

    .line 279
    .line 280
    new-array v3, v0, [Ljava/lang/Object;

    .line 281
    .line 282
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 286
    .line 287
    .line 288
    invoke-static {p0}, Landroid/app/timedetector/ManualTimeSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 292
    .line 293
    .line 294
    invoke-static {p0}, Landroid/app/timedetector/TelephonyTimeSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 298
    .line 299
    .line 300
    const-string v1, "Network"

    .line 301
    .line 302
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 303
    .line 304
    .line 305
    move-result-object v1

    .line 306
    const-string v3, "%s suggestion options:\n"

    .line 307
    .line 308
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 309
    .line 310
    .line 311
    const-string v1, "  --elapsed_realtime <elapsed realtime millis> - the elapsed realtime millis when unix epoch time was read"

    .line 312
    .line 313
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 314
    .line 315
    .line 316
    const-string v1, "  --unix_epoch_time <Unix epoch time millis>"

    .line 317
    .line 318
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    const-string v1, "  --uncertainty_millis <Uncertainty millis> - a positive error bound (+/-) estimate for unix epoch time"

    .line 322
    .line 323
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 324
    .line 325
    .line 326
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 327
    .line 328
    .line 329
    new-instance v1, Ljava/lang/StringBuilder;

    .line 330
    .line 331
    const-string v3, "See "

    .line 332
    .line 333
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 334
    .line 335
    .line 336
    const-class v3, Lcom/android/server/timedetector/NetworkTimeSuggestion;

    .line 337
    .line 338
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 339
    .line 340
    .line 341
    move-result-object v3

    .line 342
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v3, " for more information"

    .line 346
    .line 347
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {p0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 355
    .line 356
    .line 357
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 358
    .line 359
    .line 360
    const-string v1, "GNSS"

    .line 361
    .line 362
    const-class v3, Lcom/android/server/timedetector/GnssTimeSuggestion;

    .line 363
    .line 364
    invoke-static {p0, v1, v3}, Landroid/app/timedetector/TimeSuggestionHelper;->handlePrintCommandLineOpts(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Class;)V

    .line 365
    .line 366
    .line 367
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 368
    .line 369
    .line 370
    invoke-static {p0}, Landroid/app/time/ExternalTimeSuggestion;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 374
    .line 375
    .line 376
    invoke-static {p0}, Landroid/app/time/TimeState;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 377
    .line 378
    .line 379
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 380
    .line 381
    .line 382
    invoke-static {p0}, Landroid/app/time/UnixEpochTime;->printCommandLineOpts(Ljava/io/PrintWriter;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 386
    .line 387
    .line 388
    const-string/jumbo v1, "system_time"

    .line 389
    .line 390
    .line 391
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    const-string v3, "This service is also affected by the following device_config flags in the %s namespace:\n"

    .line 396
    .line 397
    invoke-virtual {p0, v3, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 398
    .line 399
    .line 400
    const-string/jumbo v1, "time_detector_lower_bound_millis_override"

    .line 401
    .line 402
    .line 403
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 408
    .line 409
    .line 410
    const-string v1, "    The lower bound used to validate time suggestions when they are received.\n"

    .line 411
    .line 412
    new-array v3, v0, [Ljava/lang/Object;

    .line 413
    .line 414
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 415
    .line 416
    .line 417
    const-string v1, "    Specified in milliseconds since the start of the Unix epoch.\n"

    .line 418
    .line 419
    new-array v3, v0, [Ljava/lang/Object;

    .line 420
    .line 421
    invoke-virtual {p0, v1, v3}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 422
    .line 423
    .line 424
    const-string/jumbo v1, "time_detector_origin_priorities_override"

    .line 425
    .line 426
    .line 427
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    move-result-object v1

    .line 431
    invoke-virtual {p0, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 432
    .line 433
    .line 434
    const-string v1, "    A comma separated list of origins. See TimeDetectorStrategy for details.\n"

    .line 435
    .line 436
    new-array v2, v0, [Ljava/lang/Object;

    .line 437
    .line 438
    invoke-virtual {p0, v1, v2}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 439
    .line 440
    .line 441
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 442
    .line 443
    .line 444
    const-string v1, "See \"adb shell cmd device_config\" for more information on setting flags.\n"

    .line 445
    .line 446
    new-array v0, v0, [Ljava/lang/Object;

    .line 447
    .line 448
    invoke-virtual {p0, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 449
    .line 450
    .line 451
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 452
    .line 453
    .line 454
    return-void
.end method

.method public final runSuggestTime(Ljava/util/function/Supplier;Ljava/util/function/Consumer;)I
    .locals 2

    .line 1
    const-string v0, "Suggestion "

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
    const-string p1, "Error: suggestion not specified"

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
