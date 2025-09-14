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

    .line 4
    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 6
    iput-object p2, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 8
    iput-object p3, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 10
    iput-object p4, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 12
    iput-object p5, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 14
    iput-object p6, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 16
    iput-object p7, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 18
    iput-object p8, p0, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 20
    return-void
.end method


# virtual methods
.method public final getNextBooleanArgRequired()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    const-string/jumbo v0, "true"

    .line 8
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    const-string/jumbo v0, "false"

    .line 17
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 26
    const-string v1, "Expected a boolean argument but was: "

    .line 28
    invoke-static {v1, p0}, Landroid/net/ConnectivityModuleConnector$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 32
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 35
    throw v0

    .line 36
    :cond_1
    :goto_0
    invoke-static {p0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 39
    move-result p0

    .line 40
    return p0
.end method

.method public final getNextIntArgRequired()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 5
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 8
    move-result p0

    .line 9
    return p0
.end method

.method public final onCommand(Ljava/lang/String;)I
    .locals 24

    .line 1
    move-object/from16 v1, p0

    .line 3
    move-object/from16 v2, p1

    .line 5
    const-string v0, " | "

    .line 7
    const-string v3, "Max ID: "

    .line 9
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getOutPrintWriter()Ljava/io/PrintWriter;

    .line 12
    move-result-object v4

    .line 13
    const/4 v5, 0x1

    .line 14
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    .line 17
    move-result v6

    .line 18
    const/4 v7, 0x0

    .line 19
    sparse-switch v6, :sswitch_data_0

    .line 22
    goto/16 :goto_0

    .line 24
    :sswitch_0
    const-string/jumbo v6, "simulate-device-appeared"

    .line 27
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v6

    .line 31
    if-eqz v6, :cond_0

    .line 33
    const/4 v6, 0x5

    .line 34
    goto/16 :goto_1

    .line 36
    :catchall_0
    move-exception v0

    .line 37
    goto/16 :goto_13

    .line 39
    :sswitch_1
    const-string/jumbo v6, "send-context-sync-call-control-message"

    .line 42
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result v6

    .line 46
    if-eqz v6, :cond_0

    .line 48
    const/16 v6, 0x13

    .line 50
    goto/16 :goto_1

    .line 52
    :sswitch_2
    const-string/jumbo v6, "simulate-device-event-device-locked"

    .line 55
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v6

    .line 59
    if-eqz v6, :cond_0

    .line 61
    const/16 v6, 0x9

    .line 63
    goto/16 :goto_1

    .line 65
    :sswitch_3
    const-string/jumbo v6, "simulate-device-uuid-event"

    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 71
    move-result v6

    .line 72
    if-eqz v6, :cond_0

    .line 74
    const/16 v6, 0x8

    .line 76
    goto/16 :goto_1

    .line 78
    :sswitch_4
    const-string v6, "associate"

    .line 80
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v6

    .line 84
    if-eqz v6, :cond_0

    .line 86
    move v6, v5

    .line 87
    goto/16 :goto_1

    .line 89
    :sswitch_5
    const-string/jumbo v6, "disable-perm-sync"

    .line 92
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    move-result v6

    .line 96
    if-eqz v6, :cond_0

    .line 98
    const/16 v6, 0x1b

    .line 100
    goto/16 :goto_1

    .line 102
    :sswitch_6
    const-string/jumbo v6, "refresh-cache"

    .line 105
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 108
    move-result v6

    .line 109
    if-eqz v6, :cond_0

    .line 111
    const/4 v6, 0x4

    .line 112
    goto/16 :goto_1

    .line 114
    :sswitch_7
    const-string/jumbo v6, "disable-context-sync"

    .line 117
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 120
    move-result v6

    .line 121
    if-eqz v6, :cond_0

    .line 123
    const/16 v6, 0x16

    .line 125
    goto/16 :goto_1

    .line 127
    :sswitch_8
    const-string/jumbo v6, "stop-observing-device-presence-uuid"

    .line 130
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 133
    move-result v6

    .line 134
    if-eqz v6, :cond_0

    .line 136
    const/16 v6, 0xc

    .line 138
    goto/16 :goto_1

    .line 140
    :sswitch_9
    const-string/jumbo v6, "disassociate"

    .line 143
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 146
    move-result v6

    .line 147
    if-eqz v6, :cond_0

    .line 149
    const/4 v6, 0x2

    .line 150
    goto/16 :goto_1

    .line 152
    :sswitch_a
    const-string/jumbo v6, "send-context-sync-empty-message"

    .line 155
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    move-result v6

    .line 159
    if-eqz v6, :cond_0

    .line 161
    const/16 v6, 0x11

    .line 163
    goto/16 :goto_1

    .line 165
    :sswitch_b
    const-string v6, "apply-restored-payload"

    .line 167
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_0

    .line 173
    const/16 v6, 0xe

    .line 175
    goto/16 :goto_1

    .line 177
    :sswitch_c
    const-string/jumbo v6, "remove-perm-sync-state"

    .line 180
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 183
    move-result v6

    .line 184
    if-eqz v6, :cond_0

    .line 186
    const/16 v6, 0x19

    .line 188
    goto/16 :goto_1

    .line 190
    :sswitch_d
    const-string/jumbo v6, "list"

    .line 193
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 196
    move-result v6

    .line 197
    if-eqz v6, :cond_0

    .line 199
    move v6, v7

    .line 200
    goto/16 :goto_1

    .line 202
    :sswitch_e
    const-string/jumbo v6, "simulate-device-disappeared"

    .line 205
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 208
    move-result v6

    .line 209
    if-eqz v6, :cond_0

    .line 211
    const/4 v6, 0x6

    .line 212
    goto/16 :goto_1

    .line 214
    :sswitch_f
    const-string/jumbo v6, "send-context-sync-call-create-message"

    .line 217
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 220
    move-result v6

    .line 221
    if-eqz v6, :cond_0

    .line 223
    const/16 v6, 0x12

    .line 225
    goto/16 :goto_1

    .line 227
    :sswitch_10
    const-string/jumbo v6, "simulate-device-event-device-unlocked"

    .line 230
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    move-result v6

    .line 234
    if-eqz v6, :cond_0

    .line 236
    const/16 v6, 0xa

    .line 238
    goto/16 :goto_1

    .line 240
    :sswitch_11
    const-string/jumbo v6, "start-observing-device-presence-uuid"

    .line 243
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 246
    move-result v6

    .line 247
    if-eqz v6, :cond_0

    .line 249
    const/16 v6, 0xb

    .line 251
    goto/16 :goto_1

    .line 253
    :sswitch_12
    const-string/jumbo v6, "disassociate-all"

    .line 256
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 259
    move-result v6

    .line 260
    if-eqz v6, :cond_0

    .line 262
    const/4 v6, 0x3

    .line 263
    goto/16 :goto_1

    .line 265
    :sswitch_13
    const-string/jumbo v6, "simulate-device-event"

    .line 268
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 271
    move-result v6

    .line 272
    if-eqz v6, :cond_0

    .line 274
    const/4 v6, 0x7

    .line 275
    goto :goto_1

    .line 276
    :sswitch_14
    const-string/jumbo v6, "get-perm-sync-state"

    .line 279
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 282
    move-result v6

    .line 283
    if-eqz v6, :cond_0

    .line 285
    const/16 v6, 0x18

    .line 287
    goto :goto_1

    .line 288
    :sswitch_15
    const-string/jumbo v6, "create-emulated-transport"

    .line 291
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 294
    move-result v6

    .line 295
    if-eqz v6, :cond_0

    .line 297
    const/16 v6, 0x10

    .line 299
    goto :goto_1

    .line 300
    :sswitch_16
    const-string/jumbo v6, "enable-context-sync"

    .line 303
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 306
    move-result v6

    .line 307
    if-eqz v6, :cond_0

    .line 309
    const/16 v6, 0x17

    .line 311
    goto :goto_1

    .line 312
    :sswitch_17
    const-string/jumbo v6, "remove-inactive-associations"

    .line 315
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 318
    move-result v6

    .line 319
    if-eqz v6, :cond_0

    .line 321
    const/16 v6, 0xf

    .line 323
    goto :goto_1

    .line 324
    :sswitch_18
    const-string/jumbo v6, "enable-perm-sync"

    .line 327
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 330
    move-result v6

    .line 331
    if-eqz v6, :cond_0

    .line 333
    const/16 v6, 0x1a

    .line 335
    goto :goto_1

    .line 336
    :sswitch_19
    const-string/jumbo v6, "get-backup-payload"

    .line 339
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    move-result v6

    .line 343
    if-eqz v6, :cond_0

    .line 345
    const/16 v6, 0xd

    .line 347
    goto :goto_1

    .line 348
    :sswitch_1a
    const-string/jumbo v6, "send-context-sync-call-facilitators-message"

    .line 351
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 354
    move-result v6

    .line 355
    if-eqz v6, :cond_0

    .line 357
    const/16 v6, 0x14

    .line 359
    goto :goto_1

    .line 360
    :sswitch_1b
    const-string/jumbo v6, "send-context-sync-call-message"

    .line 363
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 366
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 367
    if-eqz v6, :cond_0

    .line 369
    const/16 v6, 0x15

    .line 371
    goto :goto_1

    .line 372
    :cond_0
    :goto_0
    const/4 v6, -0x1

    .line 373
    :goto_1
    const-string v15, "UUID can not be null."

    .line 375
    const-string/jumbo v12, "null"

    .line 378
    const-string v8, " -> "

    .line 380
    const-wide v10, 0x10500000001L

    .line 385
    const-wide v13, 0x10900000001L

    .line 390
    packed-switch v6, :pswitch_data_0

    .line 393
    :try_start_1
    invoke-virtual/range {p0 .. p1}, Landroid/os/ShellCommand;->handleDefaultCommands(Ljava/lang/String;)I

    .line 396
    move-result v0

    .line 397
    return v0

    .line 398
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 401
    move-result v0

    .line 402
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 404
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 407
    move-result-object v3

    .line 408
    if-nez v3, :cond_1

    .line 410
    goto :goto_2

    .line 411
    :cond_1
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 414
    move-result v3

    .line 415
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 418
    move-result-object v12

    .line 419
    :goto_2
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 422
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 424
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 426
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 429
    move-result-object v6

    .line 430
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 433
    move-result v6

    .line 434
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 436
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 439
    invoke-virtual {v9, v7}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 442
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 444
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 447
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 449
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 452
    move-result-object v0

    .line 453
    new-instance v3, Ljava/lang/StringBuilder;

    .line 455
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 458
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 461
    move-result v0

    .line 462
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 465
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 468
    move-result-object v0

    .line 469
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 472
    :goto_3
    move v0, v7

    .line 473
    goto/16 :goto_12

    .line 475
    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 478
    move-result v0

    .line 479
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 481
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 484
    move-result-object v3

    .line 485
    if-nez v3, :cond_2

    .line 487
    goto :goto_4

    .line 488
    :cond_2
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 491
    move-result v3

    .line 492
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 495
    move-result-object v12

    .line 496
    :goto_4
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 499
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 501
    iget-object v6, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 503
    invoke-virtual {v6, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 506
    move-result-object v6

    .line 507
    invoke-virtual {v6}, Landroid/companion/AssociationInfo;->getUserId()I

    .line 510
    move-result v6

    .line 511
    new-instance v9, Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 513
    invoke-direct {v9, v0}, Landroid/companion/datatransfer/PermissionSyncRequest;-><init>(I)V

    .line 516
    invoke-virtual {v9, v5}, Landroid/companion/datatransfer/PermissionSyncRequest;->setUserConsented(Z)V

    .line 519
    iget-object v3, v3, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->mSystemDataTransferRequestStore:Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;

    .line 521
    invoke-virtual {v3, v6, v9}, Lcom/android/server/companion/datatransfer/SystemDataTransferRequestStore;->writeRequest(ILandroid/companion/datatransfer/SystemDataTransferRequest;)V

    .line 524
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 526
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 529
    move-result-object v0

    .line 530
    new-instance v3, Ljava/lang/StringBuilder;

    .line 532
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 535
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 538
    move-result v0

    .line 539
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 542
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 545
    move-result-object v0

    .line 546
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 549
    goto :goto_3

    .line 550
    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 553
    move-result v0

    .line 554
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 556
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 559
    move-result-object v3

    .line 560
    if-nez v3, :cond_3

    .line 562
    move-object v3, v12

    .line 563
    goto :goto_5

    .line 564
    :cond_3
    invoke-virtual {v3}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 567
    move-result v3

    .line 568
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 571
    move-result-object v3

    .line 572
    :goto_5
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 575
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 577
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 580
    new-instance v6, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;

    .line 582
    invoke-direct {v6, v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;I)V

    .line 585
    invoke-static {v6}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 588
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 590
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 593
    move-result-object v0

    .line 594
    new-instance v3, Ljava/lang/StringBuilder;

    .line 596
    invoke-direct {v3, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 599
    if-nez v0, :cond_4

    .line 601
    goto :goto_6

    .line 602
    :cond_4
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 605
    move-result v0

    .line 606
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 609
    move-result-object v12

    .line 610
    :goto_6
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 613
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 616
    move-result-object v0

    .line 617
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 620
    goto/16 :goto_3

    .line 622
    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 625
    move-result v0

    .line 626
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mSystemDataTransferProcessor:Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;

    .line 628
    invoke-virtual {v3, v0}, Lcom/android/server/companion/datatransfer/SystemDataTransferProcessor;->getPermissionSyncRequest(I)Landroid/companion/datatransfer/PermissionSyncRequest;

    .line 631
    move-result-object v0

    .line 632
    if-nez v0, :cond_5

    .line 634
    goto :goto_7

    .line 635
    :cond_5
    invoke-virtual {v0}, Landroid/companion/datatransfer/PermissionSyncRequest;->isUserConsented()Z

    .line 638
    move-result v0

    .line 639
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 642
    move-result-object v12

    .line 643
    :goto_7
    invoke-virtual {v4, v12}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 646
    goto/16 :goto_3

    .line 648
    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 651
    move-result v0

    .line 652
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 655
    move-result v3

    .line 656
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 658
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 660
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 663
    move-result-object v0

    .line 664
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 666
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 669
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 672
    move-result v0

    .line 673
    or-int/2addr v0, v3

    .line 674
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 677
    move-result-object v0

    .line 678
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 681
    move-result-object v0

    .line 682
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 685
    goto/16 :goto_3

    .line 687
    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 690
    move-result v0

    .line 691
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 694
    move-result v3

    .line 695
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

    .line 697
    iget-object v4, v4, Lcom/android/server/companion/association/AssociationRequestsProcessor;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 699
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationWithCallerChecks(I)Landroid/companion/AssociationInfo;

    .line 702
    move-result-object v0

    .line 703
    new-instance v6, Landroid/companion/AssociationInfo$Builder;

    .line 705
    invoke-direct {v6, v0}, Landroid/companion/AssociationInfo$Builder;-><init>(Landroid/companion/AssociationInfo;)V

    .line 708
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getSystemDataSyncFlags()I

    .line 711
    move-result v0

    .line 712
    not-int v3, v3

    .line 713
    and-int/2addr v0, v3

    .line 714
    invoke-virtual {v6, v0}, Landroid/companion/AssociationInfo$Builder;->setSystemDataSyncFlags(I)Landroid/companion/AssociationInfo$Builder;

    .line 717
    move-result-object v0

    .line 718
    invoke-virtual {v0}, Landroid/companion/AssociationInfo$Builder;->build()Landroid/companion/AssociationInfo;

    .line 721
    move-result-object v0

    .line 722
    invoke-virtual {v4, v0}, Lcom/android/server/companion/association/AssociationStore;->updateAssociation(Landroid/companion/AssociationInfo;)V

    .line 725
    goto/16 :goto_3

    .line 727
    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 730
    move-result v0

    .line 731
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 734
    move-result-object v3

    .line 735
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 738
    move-result-object v4

    .line 739
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 742
    move-result v6

    .line 743
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 746
    move-result v8

    .line 747
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 750
    move-result v12

    .line 751
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 754
    move-result v15

    .line 755
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 758
    move-result v18

    .line 759
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 762
    move-result v19

    .line 763
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 766
    move-result v20

    .line 767
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 770
    move-result v21

    .line 771
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextBooleanArgRequired()Z

    .line 774
    move-result v22

    .line 775
    new-instance v7, Landroid/util/proto/ProtoOutputStream;

    .line 777
    invoke-direct {v7}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 780
    invoke-virtual {v7, v10, v11, v5}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 783
    const-wide v10, 0x10b00000004L

    .line 788
    invoke-virtual {v7, v10, v11}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 791
    move-result-wide v10

    .line 792
    move-wide/from16 v16, v10

    .line 794
    const-wide v9, 0x20b00000001L

    .line 799
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 802
    move-result-wide v9

    .line 803
    invoke-virtual {v7, v13, v14, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 806
    move v3, v6

    .line 807
    const-wide v5, 0x10b00000002L

    .line 812
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 815
    move-result-wide v5

    .line 816
    const-string v11, "Caller Name"

    .line 818
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 821
    iget-object v11, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 823
    invoke-virtual {v11}, Lcom/android/server/SystemService;->getContext()Landroid/content/Context;

    .line 826
    move-result-object v11

    .line 827
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 830
    move-result-object v11

    .line 831
    invoke-virtual {v11, v4}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 834
    move-result-object v11

    .line 835
    invoke-static {v11}, Lcom/android/server/companion/datatransfer/contextsync/BitmapUtils;->renderDrawableToByteArray(Landroid/graphics/drawable/Drawable;)[B

    .line 838
    move-result-object v11

    .line 839
    const-wide v13, 0x10c00000002L

    .line 844
    invoke-virtual {v7, v13, v14, v11}, Landroid/util/proto/ProtoOutputStream;->write(J[B)V

    .line 847
    const-wide v13, 0x10b00000003L

    .line 852
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 855
    move-result-wide v13

    .line 856
    const-string v11, "Test App Name"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 858
    move/from16 v23, v0

    .line 860
    const-wide v0, 0x10900000001L

    .line 865
    :try_start_2
    invoke-virtual {v7, v0, v1, v11}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 868
    const-wide v0, 0x10900000002L

    .line 873
    invoke-virtual {v7, v0, v1, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 876
    invoke-virtual {v7, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 879
    invoke-virtual {v7, v5, v6}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 882
    const-wide v0, 0x10e00000003L

    .line 887
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 890
    const-wide v0, 0x20e00000004L

    .line 895
    if-eqz v8, :cond_6

    .line 897
    const/4 v3, 0x1

    .line 898
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 901
    goto :goto_8

    .line 902
    :catchall_1
    move-exception v0

    .line 903
    move-object/from16 v1, p0

    .line 905
    goto/16 :goto_13

    .line 907
    :cond_6
    :goto_8
    if-eqz v12, :cond_7

    .line 909
    const/4 v3, 0x2

    .line 910
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 913
    :cond_7
    if-eqz v15, :cond_8

    .line 915
    const/4 v3, 0x3

    .line 916
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 919
    :cond_8
    if-eqz v18, :cond_9

    .line 921
    const/4 v3, 0x4

    .line 922
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 925
    :cond_9
    if-eqz v19, :cond_a

    .line 927
    const/4 v3, 0x5

    .line 928
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 931
    :cond_a
    if-eqz v20, :cond_b

    .line 933
    const/4 v3, 0x6

    .line 934
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 937
    :cond_b
    if-eqz v21, :cond_c

    .line 939
    const/4 v3, 0x7

    .line 940
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 943
    :cond_c
    if-eqz v22, :cond_d

    .line 945
    const/16 v3, 0x8

    .line 947
    invoke-virtual {v7, v0, v1, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 950
    :cond_d
    invoke-virtual {v7, v9, v10}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 953
    move-wide/from16 v0, v16

    .line 955
    invoke-virtual {v7, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 958
    move-object/from16 v1, p0

    .line 960
    :try_start_3
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 962
    move/from16 v3, v23

    .line 964
    invoke-virtual {v0, v3}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 967
    move-result-object v0

    .line 968
    invoke-virtual {v7}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 971
    move-result-object v3

    .line 972
    const/4 v4, 0x0

    .line 973
    const v5, 0x63678883

    .line 976
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 979
    :cond_e
    :goto_9
    const/4 v0, 0x0

    .line 980
    goto/16 :goto_12

    .line 982
    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 985
    move-result v0

    .line 986
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 989
    move-result v3

    .line 990
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 993
    move-result-object v4

    .line 994
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 997
    move-result-object v5

    .line 998
    new-instance v6, Landroid/util/proto/ProtoOutputStream;

    .line 1000
    invoke-direct {v6}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1003
    const/4 v7, 0x1

    .line 1004
    invoke-virtual {v6, v10, v11, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1007
    const-wide v8, 0x10b00000004L

    .line 1012
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1015
    move-result-wide v8

    .line 1016
    const/4 v10, 0x0

    .line 1017
    :goto_a
    if-ge v10, v3, :cond_11

    .line 1019
    const-wide v11, 0x20b00000003L

    .line 1024
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    .line 1027
    move-result-wide v11

    .line 1028
    if-ne v3, v7, :cond_f

    .line 1030
    move-object v7, v4

    .line 1031
    :goto_b
    const-wide v13, 0x10900000001L

    .line 1036
    goto :goto_c

    .line 1037
    :cond_f
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1039
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1042
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1045
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1048
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1051
    move-result-object v7

    .line 1052
    goto :goto_b

    .line 1053
    :goto_c
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1056
    const/4 v7, 0x1

    .line 1057
    if-ne v3, v7, :cond_10

    .line 1059
    move-object v7, v5

    .line 1060
    :goto_d
    const-wide v13, 0x10900000002L

    .line 1065
    goto :goto_e

    .line 1066
    :cond_10
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1068
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 1071
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1074
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1077
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1080
    move-result-object v7

    .line 1081
    goto :goto_d

    .line 1082
    :goto_e
    invoke-virtual {v6, v13, v14, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1085
    invoke-virtual {v6, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1088
    add-int/lit8 v10, v10, 0x1

    .line 1090
    const/4 v7, 0x1

    .line 1091
    goto :goto_a

    .line 1092
    :cond_11
    invoke-virtual {v6, v8, v9}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1095
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1097
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1100
    move-result-object v0

    .line 1101
    invoke-virtual {v6}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1104
    move-result-object v3

    .line 1105
    const/4 v4, 0x0

    .line 1106
    const v5, 0x63678883

    .line 1109
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1112
    goto/16 :goto_9

    .line 1114
    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1117
    move-result v0

    .line 1118
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1121
    move-result-object v3

    .line 1122
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1125
    move-result v4

    .line 1126
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1128
    invoke-virtual {v5, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1131
    move-result-object v0

    .line 1132
    invoke-static {v4, v3}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallControlMessage(ILjava/lang/String;)[B

    .line 1135
    move-result-object v3

    .line 1136
    const/4 v4, 0x0

    .line 1137
    const v5, 0x63678883

    .line 1140
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1143
    goto/16 :goto_9

    .line 1145
    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1148
    move-result v0

    .line 1149
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1152
    move-result-object v3

    .line 1153
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1156
    move-result-object v4

    .line 1157
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1160
    move-result-object v5

    .line 1161
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1163
    invoke-virtual {v6, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1166
    move-result-object v0

    .line 1167
    invoke-static {v3, v4, v5}, Lcom/android/server/companion/datatransfer/contextsync/CrossDeviceSyncController;->createCallCreateMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    .line 1170
    move-result-object v3

    .line 1171
    const/4 v4, 0x0

    .line 1172
    const v5, 0x63678883

    .line 1175
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1178
    goto/16 :goto_9

    .line 1180
    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1183
    move-result v0

    .line 1184
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1186
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1189
    move-result-object v0

    .line 1190
    new-instance v3, Landroid/util/proto/ProtoOutputStream;

    .line 1192
    invoke-direct {v3}, Landroid/util/proto/ProtoOutputStream;-><init>()V

    .line 1195
    const/4 v4, 0x1

    .line 1196
    invoke-virtual {v3, v10, v11, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1199
    invoke-virtual {v3}, Landroid/util/proto/ProtoOutputStream;->getBytes()[B

    .line 1202
    move-result-object v3

    .line 1203
    const/4 v4, 0x0

    .line 1204
    const v5, 0x63678883

    .line 1207
    invoke-virtual {v0, v5, v4, v3}, Lcom/android/server/companion/transport/Transport;->handleMessage(II[B)V

    .line 1210
    goto/16 :goto_9

    .line 1212
    :pswitch_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1215
    move-result v0

    .line 1216
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mTransportManager:Lcom/android/server/companion/transport/CompanionTransportManager;

    .line 1218
    invoke-virtual {v3, v0}, Lcom/android/server/companion/transport/CompanionTransportManager;->createEmulatedTransport(I)Lcom/android/server/companion/transport/CompanionTransportManager$EmulatedTransport;

    .line 1221
    goto/16 :goto_9

    .line 1223
    :pswitch_c
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mService:Lcom/android/server/companion/CompanionDeviceManagerService;

    .line 1225
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    new-instance v3, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;

    .line 1230
    invoke-direct {v3, v0}, Lcom/android/server/companion/CompanionDeviceShellCommand$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    .line 1233
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1236
    goto/16 :goto_9

    .line 1238
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1241
    move-result v0

    .line 1242
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1245
    move-result-object v3

    .line 1246
    const/4 v4, 0x2

    .line 1247
    invoke-static {v3, v4}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 1250
    move-result-object v3

    .line 1251
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1253
    invoke-virtual {v4, v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->applyRestoredPayload([BI)V

    .line 1256
    goto/16 :goto_9

    .line 1258
    :pswitch_e
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1261
    move-result v0

    .line 1262
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mBackupRestoreProcessor:Lcom/android/server/companion/BackupRestoreProcessor;

    .line 1264
    invoke-virtual {v3, v0}, Lcom/android/server/companion/BackupRestoreProcessor;->getBackupPayload(I)[B

    .line 1267
    move-result-object v0

    .line 1268
    const/4 v3, 0x2

    .line 1269
    invoke-static {v0, v3}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    .line 1272
    move-result-object v0

    .line 1273
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1276
    goto/16 :goto_9

    .line 1278
    :pswitch_f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1281
    move-result v0

    .line 1282
    if-eqz v0, :cond_e

    .line 1284
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1287
    move-result v0

    .line 1288
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1291
    move-result-object v3

    .line 1292
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1295
    move-result-object v5

    .line 1296
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1299
    move-result v6

    .line 1300
    if-eqz v6, :cond_12

    .line 1302
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    goto/16 :goto_9

    .line 1307
    :cond_12
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1310
    move-result-object v4

    .line 1311
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1313
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1316
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1319
    move-result-object v4

    .line 1320
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1323
    move-result-object v4

    .line 1324
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1326
    const/4 v6, 0x0

    .line 1327
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->stopObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1330
    goto/16 :goto_9

    .line 1332
    :pswitch_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1335
    move-result v0

    .line 1336
    if-eqz v0, :cond_e

    .line 1338
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1341
    move-result v0

    .line 1342
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1345
    move-result-object v3

    .line 1346
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1349
    move-result-object v5

    .line 1350
    invoke-virtual {v12, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1353
    move-result v6

    .line 1354
    if-eqz v6, :cond_13

    .line 1356
    invoke-virtual {v4, v15}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1359
    goto/16 :goto_9

    .line 1361
    :cond_13
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1364
    move-result-object v4

    .line 1365
    new-instance v5, Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1367
    invoke-direct {v5}, Landroid/companion/ObservingDevicePresenceRequest$Builder;-><init>()V

    .line 1370
    invoke-virtual {v5, v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->setUuid(Landroid/os/ParcelUuid;)Landroid/companion/ObservingDevicePresenceRequest$Builder;

    .line 1373
    move-result-object v4

    .line 1374
    invoke-virtual {v4}, Landroid/companion/ObservingDevicePresenceRequest$Builder;->build()Landroid/companion/ObservingDevicePresenceRequest;

    .line 1377
    move-result-object v4

    .line 1378
    iget-object v5, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1380
    const/4 v6, 0x0

    .line 1381
    invoke-virtual {v5, v4, v3, v0, v6}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->startObservingDevicePresence(Landroid/companion/ObservingDevicePresenceRequest;Ljava/lang/String;IZ)V

    .line 1384
    goto/16 :goto_9

    .line 1386
    :pswitch_11
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1389
    move-result v0

    .line 1390
    if-eqz v0, :cond_e

    .line 1392
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1395
    move-result v0

    .line 1396
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1398
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1401
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1404
    invoke-virtual {v3, v0}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->sendDevicePresenceEventOnUnlocked(I)V

    .line 1407
    goto/16 :goto_9

    .line 1409
    :pswitch_12
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1412
    move-result v0

    .line 1413
    if-eqz v0, :cond_e

    .line 1415
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1418
    move-result v0

    .line 1419
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1422
    move-result v3

    .line 1423
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1426
    move-result v4

    .line 1427
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1430
    move-result-object v5

    .line 1431
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 1434
    move-result v6

    .line 1435
    if-eqz v6, :cond_14

    .line 1437
    const/4 v5, 0x0

    .line 1438
    goto :goto_f

    .line 1439
    :cond_14
    invoke-static {v5}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1442
    move-result-object v5

    .line 1443
    :goto_f
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1445
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1448
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1451
    invoke-virtual {v6, v0, v3, v4, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDeviceLocked(IIILandroid/os/ParcelUuid;)V

    .line 1454
    goto/16 :goto_9

    .line 1456
    :pswitch_13
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1459
    move-result v0

    .line 1460
    if-eqz v0, :cond_e

    .line 1462
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1465
    move-result-object v0

    .line 1466
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1469
    move-result-object v3

    .line 1470
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1473
    move-result v4

    .line 1474
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1477
    move-result v5

    .line 1478
    new-instance v6, Lcom/android/server/companion/devicepresence/ObservableUuid;

    .line 1480
    invoke-static {v0}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    .line 1483
    move-result-object v0

    .line 1484
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 1487
    move-result-wide v7

    .line 1488
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 1491
    move-result-object v7

    .line 1492
    invoke-direct {v6, v4, v0, v3, v7}, Lcom/android/server/companion/devicepresence/ObservableUuid;-><init>(ILandroid/os/ParcelUuid;Ljava/lang/String;Ljava/lang/Long;)V

    .line 1495
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1497
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1500
    invoke-static {}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->enforceCallerShellOrRoot()V

    .line 1503
    invoke-virtual {v0, v6, v5}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->onDevicePresenceEventByUuid(Lcom/android/server/companion/devicepresence/ObservableUuid;I)V

    .line 1506
    goto/16 :goto_9

    .line 1508
    :pswitch_14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 1511
    move-result v0

    .line 1512
    if-eqz v0, :cond_e

    .line 1514
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1517
    move-result v0

    .line 1518
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1521
    move-result v3

    .line 1522
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1524
    invoke-virtual {v4, v0, v3}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1527
    goto/16 :goto_9

    .line 1529
    :pswitch_15
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1532
    move-result v0

    .line 1533
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1535
    const/4 v4, 0x1

    .line 1536
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1539
    goto/16 :goto_9

    .line 1541
    :pswitch_16
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1544
    move-result v0

    .line 1545
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDevicePresenceProcessor:Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;

    .line 1547
    const/4 v4, 0x0

    .line 1548
    invoke-virtual {v3, v0, v4}, Lcom/android/server/companion/devicepresence/DevicePresenceProcessor;->simulateDeviceEvent(II)V

    .line 1551
    goto/16 :goto_9

    .line 1553
    :pswitch_17
    iget-object v0, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1555
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1558
    new-instance v3, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;

    .line 1560
    invoke-direct {v3, v0}, Lcom/android/server/companion/association/AssociationStore$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/companion/association/AssociationStore;)V

    .line 1563
    invoke-static {v3}, Landroid/os/Binder;->withCleanCallingIdentity(Lcom/android/internal/util/FunctionalUtils$ThrowingRunnable;)V

    .line 1566
    goto/16 :goto_9

    .line 1568
    :pswitch_18
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1571
    move-result v0

    .line 1572
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1574
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/AssociationStore;->getAssociationsByUser(I)Ljava/util/List;

    .line 1577
    move-result-object v0

    .line 1578
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1581
    move-result-object v0

    .line 1582
    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 1585
    move-result v3

    .line 1586
    if-eqz v3, :cond_e

    .line 1588
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1591
    move-result-object v3

    .line 1592
    check-cast v3, Landroid/companion/AssociationInfo;

    .line 1594
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1596
    invoke-virtual {v3}, Landroid/companion/AssociationInfo;->getId()I

    .line 1599
    move-result v3

    .line 1600
    invoke-virtual {v4, v3}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1603
    goto :goto_10

    .line 1604
    :pswitch_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1607
    move-result v0

    .line 1608
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1611
    move-result-object v3

    .line 1612
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1615
    move-result-object v5

    .line 1616
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1618
    invoke-virtual {v6, v0, v3, v5}, Lcom/android/server/companion/association/AssociationStore;->getFirstAssociationByAddress(ILjava/lang/String;Ljava/lang/String;)Landroid/companion/AssociationInfo;

    .line 1621
    move-result-object v0

    .line 1622
    if-nez v0, :cond_15

    .line 1624
    const-string v0, "Association doesn\'t exist."

    .line 1626
    invoke-virtual {v4, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1629
    goto/16 :goto_9

    .line 1631
    :cond_15
    iget-object v3, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mDisassociationProcessor:Lcom/android/server/companion/association/DisassociationProcessor;

    .line 1633
    invoke-virtual {v0}, Landroid/companion/AssociationInfo;->getId()I

    .line 1636
    move-result v0

    .line 1637
    invoke-virtual {v3, v0}, Lcom/android/server/companion/association/DisassociationProcessor;->disassociate(I)V

    .line 1640
    goto/16 :goto_9

    .line 1642
    :pswitch_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1645
    move-result v5

    .line 1646
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1649
    move-result-object v6

    .line 1650
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    .line 1653
    move-result-object v0

    .line 1654
    invoke-virtual/range {p0 .. p0}, Landroid/os/ShellCommand;->getNextArg()Ljava/lang/String;

    .line 1657
    move-result-object v9

    .line 1658
    invoke-static {v0}, Landroid/net/MacAddress;->fromString(Ljava/lang/String;)Landroid/net/MacAddress;

    .line 1661
    move-result-object v7

    .line 1662
    iget-object v4, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationRequestsProcessor:Lcom/android/server/companion/association/AssociationRequestsProcessor;

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

    .line 1672
    goto/16 :goto_9

    .line 1674
    :pswitch_1b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/companion/CompanionDeviceShellCommand;->getNextIntArgRequired()I

    .line 1677
    move-result v5

    .line 1678
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1680
    invoke-virtual {v6, v5}, Lcom/android/server/companion/association/AssociationStore;->getActiveAssociationsByUser(I)Ljava/util/List;

    .line 1683
    move-result-object v5

    .line 1684
    iget-object v6, v1, Lcom/android/server/companion/CompanionDeviceShellCommand;->mAssociationStore:Lcom/android/server/companion/association/AssociationStore;

    .line 1686
    iget-object v7, v6, Lcom/android/server/companion/association/AssociationStore;->mLock:Ljava/lang/Object;

    .line 1688
    monitor-enter v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1689
    :try_start_4
    iget v6, v6, Lcom/android/server/companion/association/AssociationStore;->mMaxId:I

    .line 1691
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 1692
    :try_start_5
    new-instance v7, Ljava/lang/StringBuilder;

    .line 1694
    invoke-direct {v7, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1697
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1700
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1703
    move-result-object v3

    .line 1704
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1707
    const-string v3, "Association ID | Package Name | Mac Address"

    .line 1709
    invoke-virtual {v4, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1712
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 1715
    move-result-object v3

    .line 1716
    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 1719
    move-result v5

    .line 1720
    if-eqz v5, :cond_e

    .line 1722
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 1725
    move-result-object v5

    .line 1726
    check-cast v5, Landroid/companion/AssociationInfo;

    .line 1728
    new-instance v6, Ljava/lang/StringBuilder;

    .line 1730
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 1733
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getId()I

    .line 1736
    move-result v7

    .line 1737
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1740
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1743
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getPackageName()Ljava/lang/String;

    .line 1746
    move-result-object v7

    .line 1747
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1750
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1753
    invoke-virtual {v5}, Landroid/companion/AssociationInfo;->getDeviceMacAddress()Landroid/net/MacAddress;

    .line 1756
    move-result-object v5

    .line 1757
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 1760
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1763
    move-result-object v5

    .line 1764
    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

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

    .line 1775
    move-result-object v1

    .line 1776
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 1779
    new-instance v3, Ljava/lang/StringBuilder;

    .line 1781
    const-string v4, "Exception occurred while executing \'"

    .line 1783
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1786
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1789
    const-string v2, "\':"

    .line 1791
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1794
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1797
    move-result-object v2

    .line 1798
    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1801
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

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

    .line 4
    move-result-object p0

    .line 5
    const-string v0, "Companion Device Manager (companiondevice) commands:"

    .line 7
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 10
    const-string v0, "  help"

    .line 12
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 15
    const-string v0, "      Print this help text."

    .line 17
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    const-string v0, "  list USER_ID"

    .line 22
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 25
    const-string v0, "      List all Associations for a user."

    .line 27
    const-string v1, "  associate USER_ID PACKAGE MAC_ADDRESS [DEVICE_PROFILE]"

    .line 29
    const-string v2, "      Create a new Association."

    .line 31
    const-string v3, "  disassociate USER_ID PACKAGE MAC_ADDRESS"

    .line 33
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    const-string v0, "      Remove an existing Association."

    .line 38
    const-string v1, "  disassociate-all USER_ID"

    .line 40
    const-string v2, "      Remove all Associations for a user."

    .line 42
    const-string v3, "  refresh-cache"

    .line 44
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string v0, "      Clear the in-memory association cache and reload all association "

    .line 49
    const-string v1, "      information from disk. USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 51
    const-string v2, "  simulate-device-appeared ASSOCIATION_ID"

    .line 53
    const-string v3, "      Make CDM act as if the given companion device has appeared."

    .line 55
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string v0, "      I.e. bind the associated companion application\'s"

    .line 60
    const-string v1, "      CompanionDeviceService(s) and trigger onDeviceAppeared() callback."

    .line 62
    const-string v2, "      The CDM will consider the devices as present for 60 seconds and then"

    .line 64
    const-string v4, "      will act as if device disappeared, unless \'simulate-device-disappeared\'"

    .line 66
    invoke-static {p0, v0, v1, v2, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    const-string v2, "      or \'simulate-device-appeared\' is called again before 60 seconds run out."

    .line 71
    const-string v4, "      USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 73
    const-string v5, "  simulate-device-disappeared ASSOCIATION_ID"

    .line 75
    const-string v6, "      Make CDM act as if the given companion device has disappeared."

    .line 77
    invoke-static {p0, v2, v4, v5, v6}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    const-string v2, "      I.e. unbind the associated companion application\'s"

    .line 82
    const-string v5, "      CompanionDeviceService(s) and trigger onDeviceDisappeared() callback."

    .line 84
    const-string v7, "      NOTE: This will only have effect if \'simulate-device-appeared\' was"

    .line 86
    const-string v8, "      invoked for the same device (same ASSOCIATION_ID) no longer than"

    .line 88
    invoke-static {p0, v2, v5, v7, v8}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v5, "      60 seconds ago."

    .line 93
    const-string v9, "  get-backup-payload USER_ID"

    .line 95
    const-string v10, "      Generate backup payload for the given user and print its content"

    .line 97
    const-string v11, "      encoded to a Base64 string."

    .line 99
    invoke-static {p0, v5, v9, v10, v11}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    const-string v9, "  apply-restored-payload USER_ID PAYLOAD"

    .line 107
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    const-string v9, "      Apply restored backup payload for the given user."

    .line 112
    invoke-virtual {p0, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 118
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->devicePresence()Z

    .line 121
    move-result v9

    .line 122
    if-eqz v9, :cond_0

    .line 124
    const-string v9, "  simulate-device-event ASSOCIATION_ID EVENT"

    .line 126
    const-string v10, "  Simulate the companion device event changes:"

    .line 128
    const-string v11, "    Case(0): "

    .line 130
    invoke-static {p0, v9, v10, v11, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    const-string v3, "      The CDM will consider the devices as present for60 seconds and then"

    .line 135
    const-string v9, "      will act as if device disappeared, unless\'simulate-device-disappeared\'"

    .line 137
    invoke-static {p0, v0, v1, v3, v9}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    const-string v0, "      or \'simulate-device-appeared\' is called again before 60 secondsrun out."

    .line 142
    const-string v1, "    Case(1): "

    .line 144
    invoke-static {p0, v0, v1, v6, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    const-string v0, "      CompanionDeviceService(s) and trigger onDeviceDisappeared()callback."

    .line 149
    invoke-static {p0, v0, v7, v8, v5}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    const-string v0, "    Case(2): "

    .line 154
    const-string v1, "      Make CDM act as if the given companion device is BT connected "

    .line 156
    const-string v2, "    Case(3): "

    .line 158
    const-string v3, "      Make CDM act as if the given companion device is BT disconnected "

    .line 160
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    const-string v1, "  simulate-device-uuid-event UUID PACKAGE USERID EVENT"

    .line 165
    invoke-static {p0, v4, v1, v10, v0}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    const-string v0, "      Make CDM act as if the given DEVICE is BT connected baseon the UUID"

    .line 170
    const-string v1, "      Make CDM act as if the given DEVICE is BT disconnected baseon the UUID"

    .line 172
    invoke-static {p0, v0, v2, v1, v4}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const-string v0, "  simulate-device-event-device-locked ASSOCIATION_ID USER_ID DEVICE_EVENT PARCEL_UUID"

    .line 177
    const-string v1, "  Simulate device event when the device is locked"

    .line 179
    const-string v2, "  USE FOR DEBUGGING AND/OR TESTING PURPOSES ONLY."

    .line 181
    const-string v3, "  simulate-device-event-device-unlocked USER_ID"

    .line 183
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    const-string v0, "  Simulate device unlocked for given user. This will send corresponding"

    .line 188
    const-string v1, "  callback after simulate-device-event-device-locked"

    .line 190
    const-string v3, "  command has been called."

    .line 192
    invoke-static {p0, v0, v1, v3, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v0, "  start-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 197
    const-string v1, "  Start observing device presence base on the UUID."

    .line 199
    const-string v3, "  stop-observing-device-presence-uuid USER_ID PACKAGE_NAME UUID"

    .line 201
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    const-string v0, "  Stop observing device presence base on the UUID."

    .line 206
    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 209
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 212
    :cond_0
    const-string v0, "  remove-inactive-associations"

    .line 214
    const-string v1, "      Remove self-managed associations that have not been active "

    .line 216
    const-string v2, "      for a long time (90 days or as configured via "

    .line 218
    const-string v3, "      \"debug.cdm.cdmservice.removal_time_window\" system property). "

    .line 220
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 223
    const-string v0, "  create-emulated-transport <ASSOCIATION_ID>"

    .line 225
    const-string v1, "      Create an EmulatedTransport for testing purposes only"

    .line 227
    const-string v2, "  enable-perm-sync <ASSOCIATION_ID>"

    .line 229
    invoke-static {p0, v4, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v0, "      Enable perm sync for the association."

    .line 234
    const-string v1, "  disable-perm-sync <ASSOCIATION_ID>"

    .line 236
    const-string v2, "      Disable perm sync for the association."

    .line 238
    const-string v3, "  get-perm-sync-state <ASSOCIATION_ID>"

    .line 240
    invoke-static {p0, v0, v1, v2, v3}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v0, "      Get perm sync state for the association."

    .line 245
    const-string v1, "  remove-perm-sync-state <ASSOCIATION_ID>"

    .line 247
    const-string v2, "      Remove perm sync state for the association."

    .line 249
    invoke-static {p0, v0, v1, v2}, Lcom/android/server/BatteryService$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    return-void
.end method
