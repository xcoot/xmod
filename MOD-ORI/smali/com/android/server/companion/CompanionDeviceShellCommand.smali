.class public final Lcom/android/server/companion/CompanionDeviceShellCommand;
.super Landroid/os/ShellCommand;
.source "qb/98832498 6c6e4010375fc1772bdd4e8a88b0896735443618f27021583382e8158243fc30"


# instance fields
.field public final mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

.field public final mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

.field public final mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

.field public final mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

.field public final mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

.field public final mService:Lcom/android/server/companion/CompanionDeviceManagerService;

.field public final mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

.field public final mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;


# direct methods
.method public constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/association/AssociationStore;Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;Lcom/android/server/companion/transport/CompanionTransportManager;Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;Lcom/android/server/companion/association/AssociationRequestsProcessor;Lcom/android/server/companion/BackupRestoreProcessor;Lcom/android/server/companion/association/DisassociationProcessor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 13
    .line 14
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 15
    .line 16
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 17
    .line 18
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 19
    .line 20
    return-void
.end method


# virtual methods
.method public final getNextBooleanArgRequired()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "true"

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    const-string/jumbo v0, "false"

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 25
    .line 26
    const-string v1, "Expected a boolean argument but was: "

    .line 27
    .line 28
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v0, " | "

    .line 6
    .line 7
    const-string v3, "Max ID: "

    .line 8
    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 10
    .line 11
    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 15
    .line 16
    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x0

    .line 19
    sparse-switch v6, :sswitch_data_0

    .line 20
    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :sswitch_0
    const-string/jumbo v6, "simulate-device-appeared"

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 32
    .line 33
    const/4 v6, 0x5

    .line 34
    goto/16 :goto_1

    .line 35
    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_13

    .line 38
    .line 39
    :sswitch_1
    const-string/jumbo v6, "send-context-sync-call-control-message"

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 43
    .line 44
    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 47
    .line 48
    const/16 v6, 0x13

    .line 49
    .line 50
    goto/16 :goto_1

    .line 51
    .line 52
    :sswitch_2
    const-string/jumbo v6, "simulate-device-event-device-locked"

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 60
    .line 61
    const/16 v6, 0x9

    .line 62
    .line 63
    goto/16 :goto_1

    .line 64
    .line 65
    :sswitch_3
    const-string/jumbo v6, "simulate-device-uuid-event"

    .line 66
    .line 67
    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    .line 70
    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 73
    .line 74
    const/16 v6, 0x8

    .line 75
    .line 76
    goto/16 :goto_1

    .line 77
    .line 78
    :sswitch_4
    const-string v6, "associate"

    .line 79
    .line 80
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_0

    .line 85
    .line 86
    move v6, v5

    .line 87
    goto/16 :goto_1

    .line 88
    .line 89
    :sswitch_5
    const-string/jumbo v6, "disable-perm-sync"

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    .line 94
    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_0

    .line 97
    .line 98
    const/16 v6, 0x1b

    .line 99
    .line 100
    goto/16 :goto_1

    .line 101
    .line 102
    :sswitch_6
    const-string/jumbo v6, "refresh-cache"

    .line 103
    .line 104
    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_0

    .line 110
    .line 111
    const/4 v6, 0x4

    .line 112
    goto/16 :goto_1

    .line 113
    .line 114
    :sswitch_7
    const-string/jumbo v6, "disable-context-sync"

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 118
    .line 119
    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_0

    .line 122
    .line 123
    const/16 v6, 0x16

    .line 124
    .line 125
    goto/16 :goto_1

    .line 126
    .line 127
    :sswitch_8
    const-string/jumbo v6, "stop-observing-device-presence-uuid"

    .line 128
    .line 129
    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_0

    .line 135
    .line 136
    const/16 v6, 0xc

    .line 137
    .line 138
    goto/16 :goto_1

    .line 139
    .line 140
    :sswitch_9
    const-string/jumbo v6, "disassociate"

    .line 141
    .line 142
    .line 143
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_0

    .line 148
    .line 149
    const/4 v6, 0x2

    .line 150
    goto/16 :goto_1

    .line 151
    .line 152
    :sswitch_a
    const-string/jumbo v6, "send-context-sync-empty-message"

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 156
    .line 157
    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_0

    .line 160
    .line 161
    const/16 v6, 0x11

    .line 162
    .line 163
    goto/16 :goto_1

    .line 164
    .line 165
    :sswitch_b
    const-string v6, "apply-restored-payload"

    .line 166
    .line 167
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_0

    .line 172
    .line 173
    const/16 v6, 0xe

    .line 174
    .line 175
    goto/16 :goto_1

    .line 176
    .line 177
    :sswitch_c
    const-string/jumbo v6, "remove-perm-sync-state"

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_0

    .line 185
    .line 186
    const/16 v6, 0x19

    .line 187
    .line 188
    goto/16 :goto_1

    .line 189
    .line 190
    :sswitch_d
    const-string/jumbo v6, "list"

    .line 191
    .line 192
    .line 193
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_0

    .line 198
    .line 199
    move v6, v7

    .line 200
    goto/16 :goto_1

    .line 201
    .line 202
    :sswitch_e
    const-string/jumbo v6, "simulate-device-disappeared"

    .line 203
    .line 204
    .line 205
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_0

    .line 210
    .line 211
    const/4 v6, 0x6

    .line 212
    goto/16 :goto_1

    .line 213
    .line 214
    :sswitch_f
    const-string/jumbo v6, "send-context-sync-call-create-message"

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_0

    .line 222
    .line 223
    const/16 v6, 0x12

    .line 224
    .line 225
    goto/16 :goto_1

    .line 226
    .line 227
    :sswitch_10
    const-string/jumbo v6, "simulate-device-event-device-unlocked"

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 231
    .line 232
    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_0

    .line 235
    .line 236
    const/16 v6, 0xa

    .line 237
    .line 238
    goto/16 :goto_1

    .line 239
    .line 240
    :sswitch_11
    const-string/jumbo v6, "start-observing-device-presence-uuid"

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 244
    .line 245
    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_0

    .line 248
    .line 249
    const/16 v6, 0xb

    .line 250
    .line 251
    goto/16 :goto_1

    .line 252
    .line 253
    :sswitch_12
    const-string/jumbo v6, "disassociate-all"

    .line 254
    .line 255
    .line 256
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_0

    .line 261
    .line 262
    const/4 v6, 0x3

    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :sswitch_13
    const-string/jumbo v6, "simulate-device-event"

    .line 266
    .line 267
    .line 268
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 269
    .line 270
    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_0

    .line 273
    .line 274
    const/4 v6, 0x7

    .line 275
    goto :goto_1

    .line 276
    :sswitch_14
    const-string/jumbo v6, "get-perm-sync-state"

    .line 277
    .line 278
    .line 279
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_0

    .line 284
    .line 285
    const/16 v6, 0x18

    .line 286
    .line 287
    goto :goto_1

    .line 288
    :sswitch_15
    const-string/jumbo v6, "create-emulated-transport"

    .line 289
    .line 290
    .line 291
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 292
    .line 293
    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_0

    .line 296
    .line 297
    const/16 v6, 0x10

    .line 298
    .line 299
    goto :goto_1

    .line 300
    :sswitch_16
    const-string/jumbo v6, "enable-context-sync"

    .line 301
    .line 302
    .line 303
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 304
    .line 305
    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_0

    .line 308
    .line 309
    const/16 v6, 0x17

    .line 310
    .line 311
    goto :goto_1

    .line 312
    :sswitch_17
    const-string/jumbo v6, "remove-inactive-associations"

    .line 313
    .line 314
    .line 315
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 316
    .line 317
    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_0

    .line 320
    .line 321
    const/16 v6, 0xf

    .line 322
    .line 323
    goto :goto_1

    .line 324
    :sswitch_18
    const-string/jumbo v6, "enable-perm-sync"

    .line 325
    .line 326
    .line 327
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 328
    .line 329
    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_0

    .line 332
    .line 333
    const/16 v6, 0x1a

    .line 334
    .line 335
    goto :goto_1

    .line 336
    :sswitch_19
    const-string/jumbo v6, "get-backup-payload"

    .line 337
    .line 338
    .line 339
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 340
    .line 341
    .line 342
    move-result v6

    .line 343
    if-eqz v6, :cond_0

    .line 344
    .line 345
    const/16 v6, 0xd

    .line 346
    .line 347
    goto :goto_1

    .line 348
    :sswitch_1a
    const-string/jumbo v6, "send-context-sync-call-facilitators-message"

    .line 349
    .line 350
    .line 351
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 352
    .line 353
    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_0

    .line 356
    .line 357
    const/16 v6, 0x14

    .line 358
    .line 359
    goto :goto_1

    .line 360
    :sswitch_1b
    const-string/jumbo v6, "send-context-sync-call-message"

    .line 361
    .line 362
    .line 363
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v6, :cond_0

    .line 368
    .line 369
    const/16 v6, 0x15

    .line 370
    .line 371
    goto :goto_1

    .line 372
    :cond_0
    :goto_0
    const/4 v6, -0x1

    .line 373
    :goto_1
    const-string v15, "UUID can not be null."

    .line 374
    .line 375
    const-string/jumbo v12, "null"

    .line 376
    .line 377
    .line 378
    const-string v8, " -> "

    .line 379
    .line 380
    const-wide v10, 0x10500000001L

    .line 381
    .line 382
    .line 383
    .line 384
    .line 385
    const-wide v13, 0x10900000001L

    .line 386
    .line 387
    .line 388
    .line 389
    .line 390
    packed-switch v6, :pswitch_data_0

    .line 391
    .line 392
    .line 393
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 394
    .line 395
    .line 396
    move-result v0

    .line 397
    return v0

    .line 398
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 399
    .line 400
    .line 401
    move-result v0

    .line 402
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 403
    .line 404
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 405
    .line 406
    .line 407
    move-result-object v3

    .line 408
    if-nez v3, :cond_1

    .line 409
    .line 410
    goto :goto_2

    .line 411
    :cond_1
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 412
    .line 413
    .line 414
    move-result v3

    .line 415
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 416
    .line 417
    .line 418
    move-result-object v12

    .line 419
    :goto_2
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 420
    .line 421
    .line 422
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 423
    .line 424
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 425
    .line 426
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 427
    .line 428
    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 435
    .line 436
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 437
    .line 438
    .line 439
    invoke-virtual {v9, v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 440
    .line 441
    .line 442
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 443
    .line 444
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 445
    .line 446
    .line 447
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 448
    .line 449
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 450
    .line 451
    .line 452
    move-result-object v0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    .line 454
    .line 455
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 456
    .line 457
    .line 458
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 459
    .line 460
    .line 461
    move-result v0

    .line 462
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 463
    .line 464
    .line 465
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 470
    .line 471
    .line 472
    :goto_3
    move v0, v7

    .line 473
    goto/16 :goto_12

    .line 474
    .line 475
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 476
    .line 477
    .line 478
    move-result v0

    .line 479
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 480
    .line 481
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    if-nez v3, :cond_2

    .line 486
    .line 487
    goto :goto_4

    .line 488
    :cond_2
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 489
    .line 490
    .line 491
    move-result v3

    .line 492
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 493
    .line 494
    .line 495
    move-result-object v12

    .line 496
    :goto_4
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 497
    .line 498
    .line 499
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 500
    .line 501
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 502
    .line 503
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 504
    .line 505
    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 508
    .line 509
    .line 510
    move-result v6

    .line 511
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 512
    .line 513
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 514
    .line 515
    .line 516
    invoke-virtual {v9, v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 517
    .line 518
    .line 519
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 520
    .line 521
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 522
    .line 523
    .line 524
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 525
    .line 526
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 527
    .line 528
    .line 529
    move-result-object v0

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    .line 531
    .line 532
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 533
    .line 534
    .line 535
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 536
    .line 537
    .line 538
    move-result v0

    .line 539
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 540
    .line 541
    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 543
    .line 544
    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    goto :goto_3

    .line 550
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 551
    .line 552
    .line 553
    move-result v0

    .line 554
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 555
    .line 556
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 557
    .line 558
    .line 559
    move-result-object v3

    .line 560
    if-nez v3, :cond_3

    .line 561
    .line 562
    move-object v3, v12

    .line 563
    goto :goto_5

    .line 564
    :cond_3
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 565
    .line 566
    .line 567
    move-result v3

    .line 568
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 569
    .line 570
    .line 571
    move-result-object v3

    .line 572
    :goto_5
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 576
    .line 577
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 578
    .line 579
    .line 580
    new-instance v6, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;

    .line 581
    .line 582
    invoke-direct {v6, v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;I)V

    .line 583
    .line 584
    .line 585
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 586
    .line 587
    .line 588
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 589
    .line 590
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 591
    .line 592
    .line 593
    move-result-object v0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    .line 595
    .line 596
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 597
    .line 598
    .line 599
    if-nez v0, :cond_4

    .line 600
    .line 601
    goto :goto_6

    .line 602
    :cond_4
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 603
    .line 604
    .line 605
    move-result v0

    .line 606
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 607
    .line 608
    .line 609
    move-result-object v12

    .line 610
    :goto_6
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 611
    .line 612
    .line 613
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 614
    .line 615
    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    goto/16 :goto_3

    .line 621
    .line 622
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 623
    .line 624
    .line 625
    move-result v0

    .line 626
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 627
    .line 628
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 629
    .line 630
    .line 631
    move-result-object v0

    .line 632
    if-nez v0, :cond_5

    .line 633
    .line 634
    goto :goto_7

    .line 635
    :cond_5
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 636
    .line 637
    .line 638
    move-result v0

    .line 639
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 640
    .line 641
    .line 642
    move-result-object v12

    .line 643
    :goto_7
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_3

    .line 647
    .line 648
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 653
    .line 654
    .line 655
    move-result v3

    .line 656
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 657
    .line 658
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 659
    .line 660
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 661
    .line 662
    .line 663
    move-result-object v0

    .line 664
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 665
    .line 666
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 667
    .line 668
    .line 669
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 670
    .line 671
    .line 672
    move-result v0

    .line 673
    or-int/2addr v0, v3

    .line 674
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 675
    .line 676
    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 679
    .line 680
    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 683
    .line 684
    .line 685
    goto/16 :goto_3

    .line 686
    .line 687
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 688
    .line 689
    .line 690
    move-result v0

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 692
    .line 693
    .line 694
    move-result v3

    .line 695
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 696
    .line 697
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 698
    .line 699
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 704
    .line 705
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 706
    .line 707
    .line 708
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 709
    .line 710
    .line 711
    move-result v0

    .line 712
    not-int v3, v3

    .line 713
    and-int/2addr v0, v3

    .line 714
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 715
    .line 716
    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 719
    .line 720
    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 723
    .line 724
    .line 725
    goto/16 :goto_3

    .line 726
    .line 727
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 728
    .line 729
    .line 730
    move-result v0

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 732
    .line 733
    .line 734
    move-result-object v3

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 736
    .line 737
    .line 738
    move-result-object v4

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 740
    .line 741
    .line 742
    move-result v6

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 744
    .line 745
    .line 746
    move-result v8

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 748
    .line 749
    .line 750
    move-result v12

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 752
    .line 753
    .line 754
    move-result v15

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 756
    .line 757
    .line 758
    move-result v18

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 760
    .line 761
    .line 762
    move-result v19

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 764
    .line 765
    .line 766
    move-result v20

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 768
    .line 769
    .line 770
    move-result v21

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 772
    .line 773
    .line 774
    move-result v22

    .line 775
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    .line 776
    .line 777
    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 778
    .line 779
    .line 780
    invoke-virtual {v7, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 781
    .line 782
    .line 783
    const-wide v10, 0x10b00000004L

    .line 784
    .line 785
    .line 786
    .line 787
    .line 788
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 789
    .line 790
    .line 791
    move-result-wide v10

    .line 792
    move-wide/from16 v16, v10

    .line 793
    .line 794
    const-wide v9, 0x20b00000001L

    .line 795
    .line 796
    .line 797
    .line 798
    .line 799
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 800
    .line 801
    .line 802
    move-result-wide v9

    .line 803
    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 804
    .line 805
    .line 806
    move v3, v6

    .line 807
    const-wide v5, 0x10b00000002L

    .line 808
    .line 809
    .line 810
    .line 811
    .line 812
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 813
    .line 814
    .line 815
    move-result-wide v5

    .line 816
    const-string v11, "Caller Name"

    .line 817
    .line 818
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 819
    .line 820
    .line 821
    iget-object v11, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 822
    .line 823
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 824
    .line 825
    .line 826
    move-result-object v11

    .line 827
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 828
    .line 829
    .line 830
    move-result-object v11

    .line 831
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 832
    .line 833
    .line 834
    move-result-object v11

    .line 835
    invoke-static {v11}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    .line 836
    .line 837
    .line 838
    move-result-object v11

    .line 839
    const-wide v13, 0x10c00000002L

    .line 840
    .line 841
    .line 842
    .line 843
    .line 844
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 845
    .line 846
    .line 847
    const-wide v13, 0x10b00000003L

    .line 848
    .line 849
    .line 850
    .line 851
    .line 852
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 853
    .line 854
    .line 855
    move-result-wide v13

    .line 856
    const-string v11, "Test App Name"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 857
    .line 858
    move/from16 v23, v0

    .line 859
    .line 860
    const-wide v0, 0x10900000001L

    .line 861
    .line 862
    .line 863
    .line 864
    .line 865
    :try_start_2
    invoke-virtual {v7, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 866
    .line 867
    .line 868
    const-wide v0, 0x10900000002L

    .line 869
    .line 870
    .line 871
    .line 872
    .line 873
    invoke-virtual {v7, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 874
    .line 875
    .line 876
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 880
    .line 881
    .line 882
    const-wide v0, 0x10e00000003L

    .line 883
    .line 884
    .line 885
    .line 886
    .line 887
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 888
    .line 889
    .line 890
    const-wide v0, 0x20e00000004L

    .line 891
    .line 892
    .line 893
    .line 894
    .line 895
    if-eqz v8, :cond_6

    .line 896
    .line 897
    const/4 v3, 0x1

    .line 898
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 899
    .line 900
    .line 901
    goto :goto_8

    .line 902
    :catchall_1
    move-exception v0

    .line 903
    move-object/from16 v1, p0

    .line 904
    .line 905
    goto/16 :goto_13

    .line 906
    .line 907
    :cond_6
    :goto_8
    if-eqz v12, :cond_7

    .line 908
    .line 909
    const/4 v3, 0x2

    .line 910
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 911
    .line 912
    .line 913
    :cond_7
    if-eqz v15, :cond_8

    .line 914
    .line 915
    const/4 v3, 0x3

    .line 916
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 917
    .line 918
    .line 919
    :cond_8
    if-eqz v18, :cond_9

    .line 920
    .line 921
    const/4 v3, 0x4

    .line 922
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 923
    .line 924
    .line 925
    :cond_9
    if-eqz v19, :cond_a

    .line 926
    .line 927
    const/4 v3, 0x5

    .line 928
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 929
    .line 930
    .line 931
    :cond_a
    if-eqz v20, :cond_b

    .line 932
    .line 933
    const/4 v3, 0x6

    .line 934
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 935
    .line 936
    .line 937
    :cond_b
    if-eqz v21, :cond_c

    .line 938
    .line 939
    const/4 v3, 0x7

    .line 940
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 941
    .line 942
    .line 943
    :cond_c
    if-eqz v22, :cond_d

    .line 944
    .line 945
    const/16 v3, 0x8

    .line 946
    .line 947
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 948
    .line 949
    .line 950
    :cond_d
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 951
    .line 952
    .line 953
    move-wide/from16 v0, v16

    .line 954
    .line 955
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 956
    .line 957
    .line 958
    move-object/from16 v1, p0

    .line 959
    .line 960
    :try_start_3
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 961
    .line 962
    move/from16 v3, v23

    .line 963
    .line 964
    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 965
    .line 966
    .line 967
    move-result-object v0

    .line 968
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 969
    .line 970
    .line 971
    move-result-object v3

    .line 972
    const/4 v4, 0x0

    .line 973
    const v5, 0x63678883

    .line 974
    .line 975
    .line 976
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 977
    .line 978
    .line 979
    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 980
    goto/16 :goto_12

    .line 981
    .line 982
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 983
    .line 984
    .line 985
    move-result v0

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 987
    .line 988
    .line 989
    move-result v3

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 991
    .line 992
    .line 993
    move-result-object v4

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 995
    .line 996
    .line 997
    move-result-object v5

    .line 998
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    .line 999
    .line 1000
    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1001
    .line 1002
    .line 1003
    const/4 v7, 0x1

    .line 1004
    invoke-virtual {v6, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1005
    .line 1006
    .line 1007
    const-wide v8, 0x10b00000004L

    .line 1008
    .line 1009
    .line 1010
    .line 1011
    .line 1012
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1013
    .line 1014
    .line 1015
    move-result-wide v8

    .line 1016
    const/4 v10, 0x0

    .line 1017
    :goto_a
    if-ge v10, v3, :cond_11

    .line 1018
    .line 1019
    const-wide v11, 0x20b00000003L

    .line 1020
    .line 1021
    .line 1022
    .line 1023
    .line 1024
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1025
    .line 1026
    .line 1027
    move-result-wide v11

    .line 1028
    if-ne v3, v7, :cond_f

    .line 1029
    .line 1030
    move-object v7, v4

    .line 1031
    :goto_b
    const-wide v13, 0x10900000001L

    .line 1032
    .line 1033
    .line 1034
    .line 1035
    .line 1036
    goto :goto_c

    .line 1037
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1040
    .line 1041
    .line 1042
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1043
    .line 1044
    .line 1045
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1046
    .line 1047
    .line 1048
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1049
    .line 1050
    .line 1051
    move-result-object v7

    .line 1052
    goto :goto_b

    .line 1053
    :goto_c
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1054
    .line 1055
    .line 1056
    const/4 v7, 0x1

    .line 1057
    if-ne v3, v7, :cond_10

    .line 1058
    .line 1059
    move-object v7, v5

    .line 1060
    :goto_d
    const-wide v13, 0x10900000002L

    .line 1061
    .line 1062
    .line 1063
    .line 1064
    .line 1065
    goto :goto_e

    .line 1066
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1067
    .line 1068
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1069
    .line 1070
    .line 1071
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1072
    .line 1073
    .line 1074
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1075
    .line 1076
    .line 1077
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v7

    .line 1081
    goto :goto_d

    .line 1082
    :goto_e
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1083
    .line 1084
    .line 1085
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1086
    .line 1087
    .line 1088
    add-int/lit8 v10, v10, 0x1

    .line 1089
    .line 1090
    const/4 v7, 0x1

    .line 1091
    goto :goto_a

    .line 1092
    :cond_11
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1093
    .line 1094
    .line 1095
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1096
    .line 1097
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1098
    .line 1099
    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1102
    .line 1103
    .line 1104
    move-result-object v3

    .line 1105
    const/4 v4, 0x0

    .line 1106
    const v5, 0x63678883

    .line 1107
    .line 1108
    .line 1109
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1110
    .line 1111
    .line 1112
    goto/16 :goto_9

    .line 1113
    .line 1114
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1115
    .line 1116
    .line 1117
    move-result v0

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1119
    .line 1120
    .line 1121
    move-result-object v3

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1123
    .line 1124
    .line 1125
    move-result v4

    .line 1126
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1127
    .line 1128
    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1129
    .line 1130
    .line 1131
    move-result-object v0

    .line 1132
    invoke-static {v4, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 1133
    .line 1134
    .line 1135
    move-result-object v3

    .line 1136
    const/4 v4, 0x0

    .line 1137
    const v5, 0x63678883

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1141
    .line 1142
    .line 1143
    goto/16 :goto_9

    .line 1144
    .line 1145
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1146
    .line 1147
    .line 1148
    move-result v0

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1150
    .line 1151
    .line 1152
    move-result-object v3

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v4

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1158
    .line 1159
    .line 1160
    move-result-object v5

    .line 1161
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1162
    .line 1163
    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1164
    .line 1165
    .line 1166
    move-result-object v0

    .line 1167
    invoke-static {v3, v4, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 1168
    .line 1169
    .line 1170
    move-result-object v3

    .line 1171
    const/4 v4, 0x0

    .line 1172
    const v5, 0x63678883

    .line 1173
    .line 1174
    .line 1175
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1176
    .line 1177
    .line 1178
    goto/16 :goto_9

    .line 1179
    .line 1180
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1181
    .line 1182
    .line 1183
    move-result v0

    .line 1184
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1185
    .line 1186
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1187
    .line 1188
    .line 1189
    move-result-object v0

    .line 1190
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 1191
    .line 1192
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1193
    .line 1194
    .line 1195
    const/4 v4, 0x1

    .line 1196
    invoke-virtual {v3, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1197
    .line 1198
    .line 1199
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1200
    .line 1201
    .line 1202
    move-result-object v3

    .line 1203
    const/4 v4, 0x0

    .line 1204
    const v5, 0x63678883

    .line 1205
    .line 1206
    .line 1207
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1208
    .line 1209
    .line 1210
    goto/16 :goto_9

    .line 1211
    .line 1212
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1213
    .line 1214
    .line 1215
    move-result v0

    .line 1216
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1217
    .line 1218
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1219
    .line 1220
    .line 1221
    goto/16 :goto_9

    .line 1222
    .line 1223
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1224
    .line 1225
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    .line 1227
    .line 1228
    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    .line 1229
    .line 1230
    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 1231
    .line 1232
    .line 1233
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1234
    .line 1235
    .line 1236
    goto/16 :goto_9

    .line 1237
    .line 1238
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1239
    .line 1240
    .line 1241
    move-result v0

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1243
    .line 1244
    .line 1245
    move-result-object v3

    .line 1246
    const/4 v4, 0x2

    .line 1247
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 1248
    .line 1249
    .line 1250
    move-result-object v3

    .line 1251
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1252
    .line 1253
    invoke-virtual {v4, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    .line 1254
    .line 1255
    .line 1256
    goto/16 :goto_9

    .line 1257
    .line 1258
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1259
    .line 1260
    .line 1261
    move-result v0

    .line 1262
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1263
    .line 1264
    invoke-virtual {v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    .line 1265
    .line 1266
    .line 1267
    move-result-object v0

    .line 1268
    const/4 v3, 0x2

    .line 1269
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1270
    .line 1271
    .line 1272
    move-result-object v0

    .line 1273
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1274
    .line 1275
    .line 1276
    goto/16 :goto_9

    .line 1277
    .line 1278
    :pswitch_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1279
    .line 1280
    .line 1281
    move-result v0

    .line 1282
    if-eqz v0, :cond_e

    .line 1283
    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1285
    .line 1286
    .line 1287
    move-result v0

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1289
    .line 1290
    .line 1291
    move-result-object v3

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1293
    .line 1294
    .line 1295
    move-result-object v5

    .line 1296
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1297
    .line 1298
    .line 1299
    move-result v6

    .line 1300
    if-eqz v6, :cond_12

    .line 1301
    .line 1302
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1303
    .line 1304
    .line 1305
    goto/16 :goto_9

    .line 1306
    .line 1307
    :cond_12
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1308
    .line 1309
    .line 1310
    move-result-object v4

    .line 1311
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1312
    .line 1313
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1314
    .line 1315
    .line 1316
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1317
    .line 1318
    .line 1319
    move-result-object v4

    .line 1320
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1321
    .line 1322
    .line 1323
    move-result-object v4

    .line 1324
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1325
    .line 1326
    const/4 v6, 0x0

    .line 1327
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1328
    .line 1329
    .line 1330
    goto/16 :goto_9

    .line 1331
    .line 1332
    :pswitch_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1333
    .line 1334
    .line 1335
    move-result v0

    .line 1336
    if-eqz v0, :cond_e

    .line 1337
    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1339
    .line 1340
    .line 1341
    move-result v0

    .line 1342
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1343
    .line 1344
    .line 1345
    move-result-object v3

    .line 1346
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1347
    .line 1348
    .line 1349
    move-result-object v5

    .line 1350
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1351
    .line 1352
    .line 1353
    move-result v6

    .line 1354
    if-eqz v6, :cond_13

    .line 1355
    .line 1356
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1357
    .line 1358
    .line 1359
    goto/16 :goto_9

    .line 1360
    .line 1361
    :cond_13
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v4

    .line 1365
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1366
    .line 1367
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1368
    .line 1369
    .line 1370
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1371
    .line 1372
    .line 1373
    move-result-object v4

    .line 1374
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v4

    .line 1378
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1379
    .line 1380
    const/4 v6, 0x0

    .line 1381
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1382
    .line 1383
    .line 1384
    goto/16 :goto_9

    .line 1385
    .line 1386
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1387
    .line 1388
    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_e

    .line 1391
    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1393
    .line 1394
    .line 1395
    move-result v0

    .line 1396
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1397
    .line 1398
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1399
    .line 1400
    .line 1401
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1402
    .line 1403
    .line 1404
    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    .line 1405
    .line 1406
    .line 1407
    goto/16 :goto_9

    .line 1408
    .line 1409
    :pswitch_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1410
    .line 1411
    .line 1412
    move-result v0

    .line 1413
    if-eqz v0, :cond_e

    .line 1414
    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1416
    .line 1417
    .line 1418
    move-result v0

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1420
    .line 1421
    .line 1422
    move-result v3

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1424
    .line 1425
    .line 1426
    move-result v4

    .line 1427
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1428
    .line 1429
    .line 1430
    move-result-object v5

    .line 1431
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1432
    .line 1433
    .line 1434
    move-result v6

    .line 1435
    if-eqz v6, :cond_14

    .line 1436
    .line 1437
    const/4 v5, 0x0

    .line 1438
    goto :goto_f

    .line 1439
    :cond_14
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v5

    .line 1443
    :goto_f
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1444
    .line 1445
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1446
    .line 1447
    .line 1448
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1449
    .line 1450
    .line 1451
    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 1452
    .line 1453
    .line 1454
    goto/16 :goto_9

    .line 1455
    .line 1456
    :pswitch_13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1457
    .line 1458
    .line 1459
    move-result v0

    .line 1460
    if-eqz v0, :cond_e

    .line 1461
    .line 1462
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1463
    .line 1464
    .line 1465
    move-result-object v0

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1467
    .line 1468
    .line 1469
    move-result-object v3

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1471
    .line 1472
    .line 1473
    move-result v4

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1475
    .line 1476
    .line 1477
    move-result v5

    .line 1478
    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 1479
    .line 1480
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1481
    .line 1482
    .line 1483
    move-result-object v0

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1485
    .line 1486
    .line 1487
    move-result-wide v7

    .line 1488
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1489
    .line 1490
    .line 1491
    move-result-object v7

    .line 1492
    invoke-direct {v6, v4, v0, v3, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1493
    .line 1494
    .line 1495
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1496
    .line 1497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1498
    .line 1499
    .line 1500
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1501
    .line 1502
    .line 1503
    invoke-virtual {v0, v6, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 1504
    .line 1505
    .line 1506
    goto/16 :goto_9

    .line 1507
    .line 1508
    :pswitch_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1509
    .line 1510
    .line 1511
    move-result v0

    .line 1512
    if-eqz v0, :cond_e

    .line 1513
    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1515
    .line 1516
    .line 1517
    move-result v0

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1519
    .line 1520
    .line 1521
    move-result v3

    .line 1522
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1523
    .line 1524
    invoke-virtual {v4, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1525
    .line 1526
    .line 1527
    goto/16 :goto_9

    .line 1528
    .line 1529
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1530
    .line 1531
    .line 1532
    move-result v0

    .line 1533
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1534
    .line 1535
    const/4 v4, 0x1

    .line 1536
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1537
    .line 1538
    .line 1539
    goto/16 :goto_9

    .line 1540
    .line 1541
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1542
    .line 1543
    .line 1544
    move-result v0

    .line 1545
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1546
    .line 1547
    const/4 v4, 0x0

    .line 1548
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1549
    .line 1550
    .line 1551
    goto/16 :goto_9

    .line 1552
    .line 1553
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1554
    .line 1555
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1556
    .line 1557
    .line 1558
    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    .line 1559
    .line 1560
    invoke-direct {v3, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    .line 1561
    .line 1562
    .line 1563
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1564
    .line 1565
    .line 1566
    goto/16 :goto_9

    .line 1567
    .line 1568
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1569
    .line 1570
    .line 1571
    move-result v0

    .line 1572
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1573
    .line 1574
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    .line 1575
    .line 1576
    .line 1577
    move-result-object v0

    .line 1578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1579
    .line 1580
    .line 1581
    move-result-object v0

    .line 1582
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1583
    .line 1584
    .line 1585
    move-result v3

    .line 1586
    if-eqz v3, :cond_e

    .line 1587
    .line 1588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1589
    .line 1590
    .line 1591
    move-result-object v3

    .line 1592
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 1593
    .line 1594
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1595
    .line 1596
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    .line 1597
    .line 1598
    .line 1599
    move-result v3

    .line 1600
    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1601
    .line 1602
    .line 1603
    goto :goto_10

    .line 1604
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1605
    .line 1606
    .line 1607
    move-result v0

    .line 1608
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1609
    .line 1610
    .line 1611
    move-result-object v3

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1613
    .line 1614
    .line 1615
    move-result-object v5

    .line 1616
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1617
    .line 1618
    invoke-virtual {v6, v0, v3, v5}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 1619
    .line 1620
    .line 1621
    move-result-object v0

    .line 1622
    if-nez v0, :cond_15

    .line 1623
    .line 1624
    const-string v0, "Association doesn\'t exist."

    .line 1625
    .line 1626
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1627
    .line 1628
    .line 1629
    goto/16 :goto_9

    .line 1630
    .line 1631
    :cond_15
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1632
    .line 1633
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 1634
    .line 1635
    .line 1636
    move-result v0

    .line 1637
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1638
    .line 1639
    .line 1640
    goto/16 :goto_9

    .line 1641
    .line 1642
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1643
    .line 1644
    .line 1645
    move-result v5

    .line 1646
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1647
    .line 1648
    .line 1649
    move-result-object v6

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1651
    .line 1652
    .line 1653
    move-result-object v0

    .line 1654
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1655
    .line 1656
    .line 1657
    move-result-object v9

    .line 1658
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 1659
    .line 1660
    .line 1661
    move-result-object v7

    .line 1662
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 1663
    .line 1664
    const/4 v10, 0x0

    .line 1665
    const/4 v11, 0x0

    .line 1666
    const/4 v12, 0x0

    .line 1667
    const/4 v13, 0x0

    .line 1668
    move-object v8, v9

    .line 1669
    invoke-virtual/range {v4 .. v13}, Lcom/android/server/companion/association/AssociationRequestsProcessor;->createAssociation(ILjava/lang/String;Landroid/net/MacAddress;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/companion/AssociatedDevice;ZLandroid/companion/IAssociationRequestCallback;Landroid/os/ResultReceiver;)V

    .line 1670
    .line 1671
    .line 1672
    goto/16 :goto_9

    .line 1673
    .line 1674
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1675
    .line 1676
    .line 1677
    move-result v5

    .line 1678
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1679
    .line 1680
    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 1681
    .line 1682
    .line 1683
    move-result-object v5

    .line 1684
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1685
    .line 1686
    iget-object v7, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 1687
    .line 1688
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1689
    :try_start_4
    iget v6, v6, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 1690
    .line 1691
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1692
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1693
    .line 1694
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1695
    .line 1696
    .line 1697
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1698
    .line 1699
    .line 1700
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1701
    .line 1702
    .line 1703
    move-result-object v3

    .line 1704
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1705
    .line 1706
    .line 1707
    const-string v3, "Association ID | Package Name | Mac Address"

    .line 1708
    .line 1709
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1710
    .line 1711
    .line 1712
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1713
    .line 1714
    .line 1715
    move-result-object v3

    .line 1716
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1717
    .line 1718
    .line 1719
    move-result v5

    .line 1720
    if-eqz v5, :cond_e

    .line 1721
    .line 1722
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1723
    .line 1724
    .line 1725
    move-result-object v5

    .line 1726
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 1727
    .line 1728
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1729
    .line 1730
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1731
    .line 1732
    .line 1733
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 1734
    .line 1735
    .line 1736
    move-result v7

    .line 1737
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1738
    .line 1739
    .line 1740
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1741
    .line 1742
    .line 1743
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 1744
    .line 1745
    .line 1746
    move-result-object v7

    .line 1747
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1748
    .line 1749
    .line 1750
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1751
    .line 1752
    .line 1753
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 1754
    .line 1755
    .line 1756
    move-result-object v5

    .line 1757
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1758
    .line 1759
    .line 1760
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1761
    .line 1762
    .line 1763
    move-result-object v5

    .line 1764
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1765
    .line 1766
    .line 1767
    goto :goto_11

    .line 1768
    :goto_12
    return v0

    .line 1769
    :catchall_2
    move-exception v0

    .line 1770
    :try_start_6
    monitor-exit v7
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 1771
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 1772
    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getErrPrintWriter()Ljava/io/PrintWriter;

    .line 1773
    .line 1774
    .line 1775
    move-result-object v1

    .line 1776
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1777
    .line 1778
    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1780
    .line 1781
    const-string v4, "Exception occurred while executing \'"

    .line 1782
    .line 1783
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1784
    .line 1785
    .line 1786
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1787
    .line 1788
    .line 1789
    const-string v2, "\':"

    .line 1790
    .line 1791
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1792
    .line 1793
    .line 1794
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1795
    .line 1796
    .line 1797
    move-result-object v2

    .line 1798
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1799
    .line 1800
    .line 1801
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    .line 1802
    .line 1803
    .line 1804
    const/4 v1, 0x1

    .line 1805
    return v1

    .line 1806
    nop

    .line 1807
    :sswitch_data_0
    .sparse-switch
        -0x78de6919 -> :sswitch_1b
        -0x76d9e39f -> :sswitch_1a
        -0x7196e026 -> :sswitch_19
        -0x6ee6a072 -> :sswitch_18
        -0x6e9ef255 -> :sswitch_17
        -0x48f877fd -> :sswitch_16
        -0x3aaa3162 -> :sswitch_15
        -0x2d23c69b -> :sswitch_14
        -0x25c83694 -> :sswitch_13
        -0x25b7ef5c -> :sswitch_12
        -0x20ae7cab -> :sswitch_11
        -0x1ed53de7 -> :sswitch_10
        -0x13014aaa -> :sswitch_f
        -0xb6faf2c -> :sswitch_e
        0x32b09e -> :sswitch_d
        0x13b98693 -> :sswitch_c
        0x20e05ad6 -> :sswitch_b
        0x27a53e18 -> :sswitch_a
        0x2ebfca50 -> :sswitch_9
        0x2f25cbb5 -> :sswitch_8
        0x3fc236be -> :sswitch_7
        0x545c8610 -> :sswitch_6
        0x5b04a2b3 -> :sswitch_5
        0x5e900f1e -> :sswitch_4
        0x72009e76 -> :sswitch_3
        0x761c1fc0 -> :sswitch_2
        0x77005277 -> :sswitch_1
        0x774e28e2 -> :sswitch_0
    .end sparse-switch

    .line 1808
    .line 1809
    .line 1810
    .line 1811
    .line 1812
    .line 1813
    .line 1814
    .line 1815
    .line 1816
    .line 1817
    .line 1818
    .line 1819
    .line 1820
    .line 1821
    .line 1822
    .line 1823
    .line 1824
    .line 1825
    .line 1826
    .line 1827
    .line 1828
    .line 1829
    .line 1830
    .line 1831
    .line 1832
    .line 1833
    .line 1834
    .line 1835
    .line 1836
    .line 1837
    .line 1838
    .line 1839
    .line 1840
    .line 1841
    .line 1842
    .line 1843
    .line 1844
    .line 1845
    .line 1846
    .line 1847
    .line 1848
    .line 1849
    .line 1850
    .line 1851
    .line 1852
    .line 1853
    .line 1854
    .line 1855
    .line 1856
    .line 1857
    .line 1858
    .line 1859
    .line 1860
    .line 1861
    .line 1862
    .line 1863
    .line 1864
    .line 1865
    .line 1866
    .line 1867
    .line 1868
    .line 1869
    .line 1870
    .line 1871
    .line 1872
    .line 1873
    .line 1874
    .line 1875
    .line 1876
    .line 1877
    .line 1878
    .line 1879
    .line 1880
    .line 1881
    .line 1882
    .line 1883
    .line 1884
    .line 1885
    .line 1886
    .line 1887
    .line 1888
    .line 1889
    .line 1890
    .line 1891
    .line 1892
    .line 1893
    .line 1894
    .line 1895
    .line 1896
    .line 1897
    .line 1898
    .line 1899
    .line 1900
    .line 1901
    .line 1902
    .line 1903
    .line 1904
    .line 1905
    .line 1906
    .line 1907
    .line 1908
    .line 1909
    .line 1910
    .line 1911
    .line 1912
    .line 1913
    .line 1914
    .line 1915
    .line 1916
    .line 1917
    .line 1918
    .line 1919
    .line 1920
    .line 1921
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
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
    .locals 12

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Companion Device Manager (companiondevice) commands:"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const-string v0, "  help"

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "      Print this help text."

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    const-string v0, "  list USER_ID"

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    const-string v0, "      List all Associations for a user."

    .line 26
    .line 27
    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE]"

    .line 28
    .line 29
    const-string v2, "      Create a new Association."

    .line 30
    .line 31
    const-string v3, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    .line 32
    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "      Remove an existing Association."

    .line 37
    .line 38
    const-string v1, "  disassociate-all USER_ID"

    .line 39
    .line 40
    const-string v2, "      Remove all Associations for a user."

    .line 41
    .line 42
    const-string v3, "  refresh-cache"

    .line 43
    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    const-string v0, "      Clear the in-memory association cache and reload all association "

    .line 48
    .line 49
    const-string v1, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 50
    .line 51
    const-string v2, "  simulate-device-appeared ASSOCIATION_ID"

    .line 52
    .line 53
    const-string v3, "      Make CDM act as if the given companion device has appeared."

    .line 54
    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    const-string v0, "      I.e. bind the associated companion application\'s"

    .line 59
    .line 60
    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    .line 61
    .line 62
    const-string v2, "      The CDM will consider the devices as present for 60 seconds and then"

    .line 63
    .line 64
    const-string v4, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    .line 65
    .line 66
    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    const-string v2, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    .line 70
    .line 71
    const-string v4, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 72
    .line 73
    const-string v5, "  simulate-device-disappeared ASSOCIATION_ID"

    .line 74
    .line 75
    const-string v6, "      Make CDM act as if the given companion device has disappeared."

    .line 76
    .line 77
    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    const-string v2, "      I.e. unbind the associated companion application\'s"

    .line 81
    .line 82
    const-string v5, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    .line 83
    .line 84
    const-string v7, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    .line 85
    .line 86
    const-string v8, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    .line 87
    .line 88
    invoke-static {p0, v2, v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v5, "      60 seconds ago."

    .line 92
    .line 93
    const-string v9, "  get-backup-payload USER_ID"

    .line 94
    .line 95
    const-string v10, "      Generate backup payload for the given user and print its content"

    .line 96
    .line 97
    const-string v11, "      encoded to a Base64 string."

    .line 98
    .line 99
    invoke-static {p0, v5, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    .line 106
    .line 107
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    const-string v9, "      Apply restored backup payload for the given user."

    .line 111
    .line 112
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 119
    .line 120
    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_0

    .line 123
    .line 124
    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    .line 125
    .line 126
    const-string v10, "  Simulate the companion device event changes:"

    .line 127
    .line 128
    const-string v11, "    Case(0): "

    .line 129
    .line 130
    invoke-static {p0, v9, v10, v11, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    const-string v3, "      The CDM will consider the devices as present for60 seconds and then"

    .line 134
    .line 135
    const-string v9, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    .line 136
    .line 137
    invoke-static {p0, v0, v1, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    .line 141
    .line 142
    const-string v1, "    Case(1): "

    .line 143
    .line 144
    invoke-static {p0, v0, v1, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    .line 148
    .line 149
    invoke-static {p0, v0, v7, v8, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const-string v0, "    Case(2): "

    .line 153
    .line 154
    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    .line 155
    .line 156
    const-string v2, "    Case(3): "

    .line 157
    .line 158
    const-string v3, "      Make CDM act as if the given companion device is BT disconnected "

    .line 159
    .line 160
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    .line 162
    .line 163
    const-string v1, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    .line 164
    .line 165
    invoke-static {p0, v4, v1, v10, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    .line 169
    .line 170
    const-string v1, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    .line 171
    .line 172
    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    .line 176
    .line 177
    const-string v1, "  Simulate device event when the device is locked"

    .line 178
    .line 179
    const-string v2, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 180
    .line 181
    const-string v3, "  simulate-device-event-device-unlocked USER_ID"

    .line 182
    .line 183
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    const-string v0, "  Simulate device unlocked for given user. This will send corresponding"

    .line 187
    .line 188
    const-string v1, "  callback after simulate-device-event-device-locked"

    .line 189
    .line 190
    const-string v3, "  command has been called."

    .line 191
    .line 192
    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v0, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 196
    .line 197
    const-string v1, "  Start observing device presence base on the UUID."

    .line 198
    .line 199
    const-string v3, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 200
    .line 201
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    const-string v0, "  Stop observing device presence base on the UUID."

    .line 205
    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    :cond_0
    const-string v0, "  remove-inactive-associations"

    .line 213
    .line 214
    const-string v1, "      Remove self-managed associations that have not been active "

    .line 215
    .line 216
    const-string v2, "      for a long time (90 days or as configured via "

    .line 217
    .line 218
    const-string v3, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    .line 219
    .line 220
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    .line 222
    .line 223
    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    .line 224
    .line 225
    const-string v1, "      Create an EmulatedTransport for testing purposes only"

    .line 226
    .line 227
    const-string v2, "  enable-perm-sync <ASSOCIATION_ID>"

    .line 228
    .line 229
    invoke-static {p0, v4, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    .line 231
    .line 232
    const-string v0, "      Enable perm sync for the association."

    .line 233
    .line 234
    const-string v1, "  disable-perm-sync <ASSOCIATION_ID>"

    .line 235
    .line 236
    const-string v2, "      Disable perm sync for the association."

    .line 237
    .line 238
    const-string v3, "  get-perm-sync-state <ASSOCIATION_ID>"

    .line 239
    .line 240
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const-string v0, "      Get perm sync state for the association."

    .line 244
    .line 245
    const-string v1, "  remove-perm-sync-state <ASSOCIATION_ID>"

    .line 246
    .line 247
    const-string v2, "      Remove perm sync state for the association."

    .line 248
    .line 249
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    return-void
.end method
